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

    function site_url(name,   key, u) {
      key = tolower(name)
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
    }

    {
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
        if (alias ~ /^[0-9]+$/ && embed) alias = ""      # ![[img.png|300]] 的宽度参数
        label = alias != "" ? alias : target
        if (alias == "" && label ~ /\.md$/) sub(/\.md$/, "", label)
        if (heading != "") label = label " - " heading
        out = out (embed && is_file ? "!" : "") "[" label "](" u ")"
      }
      converted[NR] = out line
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
  mv "$file.tmp" "$file"
done

echo "转换完成:$root"
