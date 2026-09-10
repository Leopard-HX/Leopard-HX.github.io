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

`scripts/convert-wikilinks.sh` 只负责两件 Jekyll 不会做的事：

1. `[[双向链接]]` / `[[目标|别名]]` / `[[目标#标题]]` / `![[附件.png]]` → 标准 Markdown 链接
   （笔记写成绝对路径 `/notes/名字/`，附件写成 `/notes/文件名`）
2. 正文开头的第一个 `# H1` → front matter 的 `title`（并从正文里删掉，避免和版面标题重复显示）；
   完全没有标题的笔记就用文件名当 `title`

找不到目标的链接会退化成纯文本，并在 Actions 日志里列出来。

### 几个注意点

- 笔记文件名**别用** `README.md`、`CONTRIBUTING.md`、`LICENSE` 这类名字 —— `jekyll-optional-front-matter` 对它们不生效
- 重名笔记（不同子目录下同名）按路径排序取第一个来解析链接
- 笔记里的图片放 `Notes/` 里就行，会一起同步过去，路径自动变成 `/notes/xxx.png`
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
