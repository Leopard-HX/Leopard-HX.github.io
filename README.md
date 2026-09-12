# leopard-hx.github.io

Personal homepage of Hengxin Lu, built with Jekyll + [Academic Pages](https://github.com/academicpages/academicpages.github.io)
and served by GitHub Pages from the `master` branch.

## 结构速查

| 位置 | 作用 |
| --- | --- |
| `_config.yml` | 站点配置。**`url` 必须是 `https://leopard-hx.github.io`** —— 全站 CSS/JS/图片/导航的绝对地址都由它拼出来（见 `_includes/base_path`），填错会让整个页面没有样式 |
| `_data/navigation.yml` | 顶栏导航 |
| `_pages/` | 独立页面：首页 `about.md`、`cv.md`、`notes.html`（笔记索引）等 |
| `_publications/`、`_talks/` | 论文与报告，PDF 放 `files/` |
| `notes/` | **自动生成**，由 obsidian-vault 同步而来，不要手改 |
| `scripts/convert-wikilinks.sh` | 笔记语法转换脚本（bash + awk，无额外依赖） |
| `assets/js/pdf-notes.js`、`_sass/layout/_pdf.scss` | 笔记里的 PDF 支持（内嵌阅读器 + 下载按钮），只对笔记页和笔记索引页生效 |
| `.github/workflows/sync-notes.yml` | 定时同步工作流 |

## 笔记同步（Obsidian → 本站）

笔记源是私有仓库 `Leopard-HX/obsidian-vault`，本地由 Obsidian Git 插件每 10 分钟自动提交推送。
**只有 vault 里的 `Notes/` 文件夹会被发布**，其它内容（日记、私密笔记……）不会进入这个仓库。

### 为什么不是「vault 一 push 就构建」

obsidian-git 每 10 分钟就可能推一次。如果让 vault 的 push 直接触发站点构建：

1. 站点重建次数 = 你的提交次数，一天最多上百次，绝大多数是无效重建；
2. vault 是**私有**仓库，Actions 分钟数要计费（免费额度 2000 分钟/月），很容易烧掉。

### 实际方案：站点仓库定时去拉

站点仓库是**公开**仓库，Actions 分钟数免费，所以让**它**来拉数据：

- 触发：每 6 小时一次（UTC 03:17 / 09:17 / 15:17 / 21:17），也可以到
  `Actions → Sync Obsidian notes → Run workflow` 手动触发
- 认证：站点仓库的 Secret `VAULT_DEPLOY_KEY`，是一把**只读**部署密钥，只有 vault 的读取权限
- 流程：`git clone` vault → `rsync` 只拷 `Notes/` → 跑转换脚本 → 有变化才 commit + push

重建频率与你的编辑频率完全解耦：**改笔记不会触发任何构建**，只有定时任务把内容提交上来时才会重建一次。

### 不需要写 front matter

GitHub Pages 默认启用了（且无法关闭）这几个插件：

- `jekyll-optional-front-matter` —— 没有 front matter 的 `.md` 也会被渲染成页面
- `jekyll-default-layout` —— 自动补 layout
- `jekyll-titles-from-headings` —— 用第一个标题当 title
- `jekyll-relative-links` —— 自动把相对 `.md` 链接改写掉

所以笔记原样丢进 `notes/` 就能渲染，`_config.yml` 里只给 `notes` 目录配了一组 `defaults`
（`layout: single` / 关掉侧栏 / 打上 `is_note: true` 标签供索引页筛选）。

`scripts/convert-wikilinks.sh` 只负责 Jekyll 不会做的三件事：

1. `[[双向链接]]` / `[[目标|别名]]` / `[[目标#标题]]` / `![[附件]]` → 标准 Markdown 链接
   （笔记写成绝对路径 `/notes/名字/`，附件写成 `/notes/文件名`）
2. PDF 相关的写法（见下面「笔记里的 PDF」）
3. 正文开头的第一个 `# H1` → front matter 的 `title`（并从正文里删掉，避免和版面标题重复显示）；
   完全没有标题的笔记就用文件名当 `title`

找不到目标的链接会退化成纯文本，并在 Actions 日志里列出来。
围栏代码块（``` / ~~~）内部一律不改写，所以写示例很安全。

### 笔记里的 PDF

只有 `Notes/` 下的 **`.md` 和 `.pdf`** 会同步过来（`.tex`/`.eps`/`.png`/`source.tar.gz`/`00README.json`/`agent*.md`
都只留在 vault 里），PDF 直接丢在笔记旁边就行，然后在笔记里按下面的写法引用：

| 笔记里写 | 站点上显示 |
| --- | --- |
| `![[论文.pdf]]` | **内嵌 PDF 阅读器**（页面里直接翻页读）+「新标签打开 / 下载 / 收起」 |
| `![[论文.pdf\|900]]` | 同上，阅读器高 900px（数字别名当高度） |
| `![[论文.pdf#page=5]]` | 打开时直接翻到第 5 页 |
| `[[论文.pdf]]` 或 `` `论文.pdf` `` | 普通链接（新标签打开）+ 后面跟一个下载按钮 |

- 行内代码里的 PDF 文件名会自动变成链接（链接文字仍套一层行内代码，保留原来的代码外观），
  前提是文件真在 `Notes/` 下；带目录的 `Figs/x.pdf` 也认（先按全路径匹配、再退回按文件名匹配）。
- 实现：脚本把 `![[论文.pdf]]` 写成 `<a class="pdf-embed" data-pdf-height="620" href="…">`（行内 HTML，
  kramdown 的 GFM 解析器会原样透传），再由 `assets/js/pdf-notes.js` 在浏览器里升级成 `.pdf-card` 卡片，
  样式在 `_sass/layout/_pdf.scss`。脚本是渐进增强的，没加载时链接照样能点。
- `/notes/` 索引页（`_pages/notes.html`，靠 front matter 的 `pdf_links: true` 也加载同一个脚本）
  会把 PDF 和同目录的笔记列在一起，条目末尾带一个「PDF」小徽标；只放 PDF、没有笔记的文件夹
  （例如 `参考论文/`）同样会出现，文件夹徽标里的数字也是「笔记 + PDF」的总数。

### 索引页的分组

`/notes/` 会按 `Notes/` 里的子文件夹分组显示（文件夹标题 + 里面的笔记，根目录的笔记直接列在最上面）。
分组依据是 front matter 里的 `folder`，由脚本自动写入（根目录的笔记是空串）；你可以在笔记里
自己写 `folder: "自定义分组名"` 覆盖它，脚本不会动用户自己写的值。

不同文件夹里的**同名笔记**会触发 `::warning::`，因为 `[[链接]]` 只能解析到按路径排序最靠前的那个。

### 几个注意点

- 笔记文件名**别用** `README.md`、`CONTRIBUTING.md`、`LICENSE` 这类名字 —— `jekyll-optional-front-matter` 对它们不生效
- 重名笔记（不同子目录下同名）按路径排序取第一个来解析链接
- 图片（`.png`/`.jpg`/`.svg`…）**不会**发布到站点：rsync 白名单只放行 `*.md` 和 `*.pdf`。
  笔记里引用的插图在站点上是死链，要发布的话得同时改 `.github/workflows/sync-notes.yml`
  的 include 白名单和站点 `.gitignore` 的 `notes/**` 规则
- 想改同步频率，改 `.github/workflows/sync-notes.yml` 里的 `cron`
- 想彻底停掉笔记同步，直接删 `.github/workflows/sync-notes.yml`

## 添加论文 / 报告

在 `_publications/`（或 `_talks/`）新建 Markdown 文件，复制现有文件的 front matter 结构填字段，
把 PDF 放进 `files/`，front matter 里用绝对 URL 引用（`https://leopard-hx.github.io/files/xxx.pdf`）。

## 本地预览（可选）

需要 Ruby + Bundler：

```bash
bundle install
bundle exec jekyll serve
```

注意 `_config.yml` 里的 `url` 会让本地预览的资源地址指向线上域名，想在本地看样式得临时把 `url` 改成 `""`。
