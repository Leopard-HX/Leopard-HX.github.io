#!/usr/bin/env bash
#
# 把 Obsidian 笔记转换成 Jekyll 能直接渲染的形式。
#
# GitHub Pages 自带 jekyll-optional-front-matter / jekyll-default-layout /
# jekyll-titles-from-headings，所以没有 front matter 的 .md 也会被渲染成页面 ——
# 不需要生成 front matter。这个脚本只处理 Jekyll 管不了的两件事：
#
#   1. [[双向链接]]、[[目标|别名]]、[[目标#标题]]、![[附件]]  →  标准 Markdown 链接
#   2. 正文开头的第一个 H1  →  front matter 的 title（否则会和版面标题重复显示）；
#      完全没有标题的笔记就用文件名当 title
#   3. PDF 相关：
#        ![[论文.pdf]]        →  <a class="pdf-embed">…</a>，笔记页会把它渲染成内嵌阅读器
#        ![[论文.pdf|900]]    →  同上，阅读器高 900px（数字别名当高度）
#        ![[论文.pdf#page=5]] →  链接/阅读器直接翻到第 5 页
#        `论文.pdf`           →  行内代码里的 PDF 文件名自动变成链接（解析得到才变）
#      围栏代码块（``` / ~~~）内部一律不改写。
#   4. 数学：kramdown 只在 $$ 行与相邻正文之间有空行时才按「块级数学」处理（输出 \[...\]）；
#      紧贴正文的写法（单行 $$X$$、以及 $$ 块前后紧邻文字或另一个 $$ 块）会被降级
#      成行内 \(...\)，MathJax 便按 inline 渲染，公式就和正文挤在同一行。
#      所以这里做两步：单行 $$X$$ 展开成三行；成对 $$ 块的外侧补空行（内侧不能动）。
#
# 用法:  scripts/convert-wikilinks.sh notes
# 说明:  原地修改 notes/ 下的 .md；笔记内链写成绝对路径 /notes/名字/
#        （_config.yml 的 permalink 以 / 结尾，页面 URL 也就带结尾斜杠），
#        附件写成 /notes/文件名。解析不了的链接会退化成纯文本并在日志里列出。
#
set -euo pipefail

root="${1:-notes}"
root="${root%/}"

if [ ! -d "$root" ]; then
  echo "跳过:找不到 $root 目录（vault 里还没有这个文件夹？）"
  exit 0
fi

map_file="$(mktemp)"
trap 'rm -f "$map_file"' EXIT

# ---- 1. 建映射表:小写的「文件名」和「相对路径」-> 相对路径
#         Obsidian 的 [[链接]] 优先按文件名匹配，且可以带也可以不带 .md 扩展名，
#         所以每个文件要同时登记「带扩展名」和「去掉 .md」两种键；
#         同名文件按排序先出现的胜出。
(cd "$root" && find . -type f -printf '%P\n') | LC_ALL=C sort | awk '
  {
    rel  = $0
    base = rel
    sub(/.*\//, "", base)

    # 重名检测：不同文件夹里的同名笔记，[[链接]] 只能解析到其中一个
    if (rel ~ /\.md$/) {
      dupkey = tolower(base)
      dupcount[dupkey]++
      dupname[dupkey] = base
      dups[dupkey] = (dupkey in dups ? dups[dupkey] ", " : "") rel
    }

    n = 0
    keys[++n] = tolower(rel)
    keys[++n] = tolower(base)
    if (rel ~ /\.md$/) {
      head = rel;  sub(/\.md$/, "", head)
      tail = base; sub(/\.md$/, "", tail)
      keys[++n] = tolower(head)
      keys[++n] = tolower(tail)
    }
    for (i = 1; i <= n; i++) print keys[i] "\t" rel
  }
  END {
    for (dupkey in dupcount) {
      if (dupcount[dupkey] > 1) {
        label = dupname[dupkey]
        sub(/\.md$/, "", label)
        printf "::warning::笔记重名「%s」：%s —— [[%s]] 只会解析到按路径排序最靠前的那个\n", label, dups[dupkey], label > "/dev/stderr"
      }
    }
  }
' > "$map_file"

# ---- 2. 逐篇改写
find "$root" -type f -name '*.md' -print0 | while IFS= read -r -d '' file; do
  stem="${file##*/}"
  stem="${stem%.md}"
  # 相对 Notes/ 的目录路径（空串 = 直接放在 Notes/ 下），写进 front matter 供索引页分组
  rel_path="${file#"$root"/}"
  case "$rel_path" in
    */*) folder="${rel_path%/*}" ;;
    *)   folder="" ;;
  esac
  awk -v map_file="$map_file" -v prefix="/$root/" -v self="$stem" -v folder="$folder" '
    function encode(s) { gsub(/ /, "%20", s); return s }
    function yaml_escape(s) { gsub(/\\/, "\\\\", s); gsub(/"/, "\\\"", s); return s }

    # 属性/文本里要转义的 HTML 特殊字符（& 在 gsub 的替换串里要写成 \&）
    function html_escape(s) {
      gsub(/&/, "\\&amp;", s)
      gsub(/</, "\\&lt;", s)
      gsub(/>/, "\\&gt;", s)
      gsub(/"/, "\\&quot;", s)
      return s
    }

    # 行内代码里的 PDF 文件名（Obsidian 笔记里常写成「本目录 PDF：`xxx.pdf`」）
    # 只要能解析到 notes/ 下的文件，就顺手变成可点的链接。链接文字仍然套一层
    # 行内代码（[`x.pdf`](url)），这样保留原来「代码样式」的外观 —— 站点里
    # a>code 会沿用代码块那套安全配色，深色皮肤下也不会掉对比度。
    function link_pdf_codes(line,   out, code, u) {
      out = ""
      while (match(line, /`[^`]+`/)) {
        out  = out substr(line, 1, RSTART - 1)
        code = substr(line, RSTART + 1, RLENGTH - 2)
        u = site_url(code)
        if (tolower(u) ~ /\.pdf$/) {
          out = out "[`" code "`](" u ")"
        } else {
          out = out substr(line, RSTART, RLENGTH)
        }
        line = substr(line, RSTART + RLENGTH)
      }
      return out line
    }

    # 把「整行就是一个 $$...$$」展开成 kramdown 的块级数学写法：
    #     $$公式$$
    #  →
    #     $$
    #     公式
    #     $$
    # 并前后各补一个空行（块级元素得有自己的段落）。kramdown 对块级数学输出
    # \[...\]，MathJax 配置里 displayMath 含 \[ \] ，于是渲染成独立成行的 display 公式。
    # 只有「整行、且中间没有其它 $」的才动；行内混排的保持原样。
    function math_block(line,   indent, body) {
      if (line ~ /\$\$\$/) return line                    # 连续的 $$$ 别乱动
      if (line !~ /^[ \t]*\$\$[^$]*\$\$[ \t]*$/) return line
      indent = line
      sub(/[^ \t].*$/, "", indent)
      body = line
      sub(/^[ \t]*\$\$/, "", body)
      sub(/\$\$[ \t]*$/, "", body)
      if (body ~ /^[ \t]*$/) return line
      return "\n" indent "$$\n" indent body "\n" indent "$$\n"
    }

    function site_url(name,   key, base, u) {
      key = tolower(name)
      # `Figs/x.pdf`、`../a/b.md` 这类带目录的写法在映射表里查不到时，
      # 退回按文件名匹配（和 Obsidian 的行为一致：优先全路径，其次文件名）
      if (key != "" && !(key in url)) {
        base = key
        sub(/.*\//, "", base)
        if (base != key && (base in url)) key = base
      }
      if (key == "" || !(key in url)) return ""
      u = url[key]
      if (u ~ /\.md$/) {                     # 笔记：页面 URL 是 /notes/名字/
        sub(/\.md$/, "", u)
        return prefix encode(u) "/"
      }
      return prefix encode(u)                # 附件：原样路径
    }

    BEGIN {
      while ((getline line < map_file) > 0) {
        split(line, kv, "\t")
        if (!(kv[1] in url)) url[kv[1]] = kv[2]
      }
      close(map_file)
      missing = 0
      infence = 0
      default_pdf_height = 620
    }

    {
      # 围栏代码块内部一个字都不改（笔记里有 ``` 包起来的 shell / gitattributes 片段，
      # 里面出现 *[[...]]* 或 x.pdf 都是示例代码，改了会把示例改坏）
      if ($0 ~ /^[ \t]*(```|~~~)/) {
        infence = !infence
        converted[NR] = $0
        next
      }
      if (infence) {
        converted[NR] = $0
        next
      }

      line = $0
      out = ""
      while (match(line, /!?\[\[[^][]+\]\]/)) {
        out  = out substr(line, 1, RSTART - 1)
        token = substr(line, RSTART, RLENGTH)
        line = substr(line, RSTART + RLENGTH)

        embed = (substr(token, 1, 1) == "!")
        if (embed) token = substr(token, 2)
        inner = substr(token, 3, length(token) - 4)      # 去掉 [[ 和 ]]

        target = inner
        alias  = ""
        if (index(inner, "|") > 0) {
          split(inner, p, "|")
          target = p[1]
          alias  = p[2]
        }
        heading = ""
        if (index(target, "#") > 0) {
          split(target, q, "#")
          target  = q[1]
          heading = q[2]
        }
        gsub(/^[ \t]+|[ \t]+$/, "", target)
        gsub(/^[ \t]+|[ \t]+$/, "", alias)
        gsub(/^[ \t]+|[ \t]+$/, "", heading)

        u = site_url(target)
        if (u == "") {
          missing++
          out = out (alias != "" ? alias : target)
          continue
        }

        is_file = (u !~ /\/$/)                           # 笔记链接以 / 结尾，附件不是
        numeric = ""
        if (alias ~ /^[0-9]+$/) {                        # ![[img.png|300]] 的宽度参数
          numeric = alias
          if (embed) alias = ""
        }
        # 附件的 #page=5 之类「查看参数」保留在 URL 上（浏览器自带的 PDF 阅读器认这个）
        if (is_file && tolower(u) ~ /\.pdf$/ && heading ~ /^page=/) {
          u = u "#" heading
          heading = ""
        }
        label = alias != "" ? alias : target
        if (alias == "" && label ~ /\.md$/) sub(/\.md$/, "", label)
        if (heading != "") label = label " - " heading

        if (embed && is_file && tolower(u) ~ /\.pdf($|[?#])/) {
          # 内嵌 PDF：这里输出一个「行内 HTML 的 span 级 <a>」—— kramdown（GFM）会
          # 原样透传行内 HTML，而 notes 页的 assets/js/pdf-notes.js 再把它升级成
          # 内嵌阅读器（含「新标签打开 / 下载 / 收起」）。
          # 之所以不在这里直接写 <div>/<iframe>：嵌入点常常在段落或引用块中间，
          # 块级 HTML 会把 Markdown 段落截断。数字别名当阅读器高度用：
          #   ![[论文.pdf]]        → 默认 620px 高
          #   ![[论文.pdf|900]]    → 900px 高
          height = (numeric != "") ? numeric : default_pdf_height
          out = out "<a class=\"pdf-embed\" data-pdf-height=\"" height "\"" \
                    " href=\"" html_escape(u) "\">" html_escape(label) "</a>"
        } else {
          out = out (embed && is_file ? "!" : "") "[" label "](" u ")"
        }
      }
      converted[NR] = math_block(link_pdf_codes(out line))
      next
    }

    END {
      start = 0
      for (i = 1; i <= NR; i++) {
        if (converted[i] ~ /[^ \t]/) { start = i; break }
      }

      has_fm = (NR > 0 && converted[1] == "---")
      folder_line = "folder: \"" yaml_escape(folder) "\""
      strip_h1 = 0
      if (!has_fm) {
        if (start > 0 && converted[start] ~ /^#[ \t]+/) {
          # 开头的 H1 提成 title，并从正文里删掉，避免和版面标题重复
          title = converted[start]
          sub(/^#[ \t]+/, "", title)
          sub(/[ \t]+$/, "", title)
          strip_h1 = 1
        } else {
          title = self                                 # 没有标题就用文件名
        }
        print "---"
        print "title: \"" yaml_escape(title) "\""
        print folder_line
        print "---"
      } else {
        # 已经有 front matter：只在缺 folder 键时往里面补一行，其余原样保留
        close_fm = 0
        has_folder_key = 0
        for (i = 2; i <= NR; i++) {
          if (converted[i] == "---") { close_fm = i; break }
          if (converted[i] ~ /^[ \t]*folder[ \t]*:/) has_folder_key = 1
        }
        if (close_fm > 0 && !has_folder_key) insert_at = close_fm
      }

      for (i = 1; i <= NR; i++) {
        if (strip_h1 && i == start) continue
        if (strip_h1 && i < start && converted[i] ~ /^[ \t]*$/) continue
        if (insert_at > 0 && i == insert_at) print folder_line
        print converted[i]
      }

      if (missing > 0) {
        printf "  ! %s: %d 个链接找不到目标,已退化成纯文本\n", FILENAME, missing > "/dev/stderr"
      }
    }
  ' "$file" > "$file.tmp"

  # ---- 3. 第二遍：给「独立的 $$ 行」在成对块的外侧补空行。
  # 笔记里常见「正文紧接着 $$、甚至两个 $$ 块背靠背」的写法，kramdown 会把它
  # 降级成行内数学。只在成对块的外侧补（内侧插空行会把式子截断），已经空着的
  # 不会重复插；围栏代码块里的 $$ 不参与配对。
  awk '
    { line[NR] = $0 }
    END {
      infence = 0
      n = 0
      for (i = 1; i <= NR; i++) {
        if (line[i] ~ /^[ \t]*(```|~~~)/) infence = !infence
        if (!infence && line[i] ~ /^[ \t]*\$\$[ \t]*$/) { n++; d[n] = i }
      }
      for (k = 1; k + 1 <= n; k += 2) {
        a = d[k]
        b = d[k+1]
        if (a > 1 && line[a-1] ~ /[^ \t]/) before[a] = 1
        if (b < NR && line[b+1] ~ /[^ \t]/) after[b] = 1
      }
      for (i = 1; i <= NR; i++) {
        if (before[i]) print ""
        print line[i]
        if (after[i]) print ""
      }
    }
  ' "$file.tmp" > "$file.tmp2"
  mv "$file.tmp2" "$file"
done

echo "转换完成:$root"
