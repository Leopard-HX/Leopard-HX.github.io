---
title: "Obsidian 多设备 Git 同步：从建仓到「插件开关互相覆盖」"
folder: "vibecoding经验"
---

用 Git 同步 Obsidian 笔记本身不难，难的是**分清哪些文件属于「笔记内容」，哪些属于「设备本地状态」**。这篇记录我踩到的一个坑：电脑端用 Obsidian 的 Git 插件自动备份，手机端用独立 App（GitSync）拉同一个仓库，结果在手机上关掉 Git 插件，**电脑上的插件也被一起关掉了**——因为「启用了哪些插件」这个列表被当成笔记内容同步了。

## 背景

| 设备 | 同步方案 |
| --- | --- |
| 电脑（Windows） | Obsidian Git 插件（obsidian-git / Vinzent03），定时自动 commit + push |
| 手机（Android） | GitSync —— 独立 App，直接把 GitHub 仓库同步到本地文件夹，不经过 Obsidian 插件系统 |

两台设备指向同一个仓库、同一个分支。下面先给搭建过程，再讲那个坑的成因和解法。

## 一、给 vault 建一个私有仓库

**核心约定：仓库根目录 = vault 根目录。** 不要用「仓库里再套一层 vault 子目录」的结构，否则 Obsidian 的 Git 插件每次都要额外配路径，手机上更容易搞错。

在 vault 根目录执行：

```bash
git init -b main
git add -A
git commit -m "Initial commit: Obsidian vault"
```

然后在 GitHub 上建仓库并推送。用 `gh` CLI 一条命令就够，`--source .` 会把当前目录设成仓库来源、加上 remote 并直接推上去：

```bash
gh repo create <仓库名> --private --source . --remote origin --push
```

**建议用私有仓库。** 笔记里难免有草稿、临时密码、私人日程；公开仓库一旦推上去就很难彻底清除（fork 和第三方缓存不会跟着删）。

**认证推荐 SSH。** 密钥配好之后插件的 push/pull 全程免交互，比 HTTPS + PAT 省心，也没有 token 过期的问题。

## 二、电脑端：让 Git 插件自动备份

插件市场搜索并安装 **Git**（作者 Vinzent03），然后在设置里调整几项：

| 设置项 | 建议值 | 作用 |
| --- | --- | --- |
| Auto backup interval | `10`（分钟） | 定时自动提交；设为 0 则关闭定时 |
| Different interval for commit and push | 关 | 提交和推送共用上面的间隔 |
| Disable push | 关 | 允许推送，否则只提交到本地 |
| Pull before push | 开 | 推送前先拉取，挡掉大部分「非快进」冲突 |
| Auto pull on boot | 开 | 启动时先同步，避免用旧内容覆盖 |
| Merge strategy | `merge` | 冲突处理策略，默认就够用 |
| Commit message | `vault backup: {{date}}` | 自动提交的说明，`{{date}}` 会替换成时间 |
| Auto backup after file change | 关 | 想改成「编辑后延迟备份」再打开 |

这些值保存在 `.obsidian/plugins/obsidian-git/data.json`，改设置文件同样生效（**改之前要先退出 Obsidian**，否则退出时会被内存里的旧值覆盖）。

一个容易忽略的点：**桌面端的 Git 插件是通过调用系统 `git` 命令工作的**（它自己会设置 `SSH_ASKPASS`），所以只要系统 git 和 SSH 密钥配好了，插件里不需要再填任何 token 或账号密码。

## 三、手机端：为什么用独立 App 而不是插件

手机 Obsidian 上装同一个 Git 插件也能跑，但不划算：移动端要么走 `isomorphic-git` 需要 PAT，要么依赖系统 git 环境，后台定时任务还容易被系统杀掉。

更省事的做法是用**独立的同步 App**（Android 上的 GitSync 这类），它把「远程仓库 → 本地文件夹」当成普通文件同步来做，完全不碰 Obsidian 的插件系统。手机上只需要用 Obsidian 打开那个文件夹即可。

**但这样一来，「哪些插件被启用」这个状态就变成了两台设备各说各话的东西** —— 坑就从这里开始。

## 四、坑：在手机上禁用插件，会把电脑上的插件一起关掉

### 现象

1. 插件文件夹 `.obsidian/plugins/obsidian-git/` 跟着仓库同步到了手机，于是手机上 Obsidian 里**也出现了 Git 插件，而且默认是启用状态**；
2. 手机上插件被启用后，它也会开始定时 commit + push，和 GitSync 抢同一个 `.git` 目录，于是出现 `index.lock` 报错、提交分叉、push 被拒；
3. 为了止损，在手机上**关掉** Git 插件；
4. 这个「关掉」被写进了配置文件，而那个文件是**被 git 跟踪**的 —— 同步回电脑后，电脑上的 Git 插件也没了。

### 根因

`.obsidian/community-plugins.json` 记录的是「**这台设备**启用了哪些插件」，它是**设备本地状态**，却被当成共享内容提交进了仓库：

```text
手机：禁用 Git 插件
        │
        ▼
  .obsidian/community-plugins.json  →  []
        │
        │  同步（git push / pull）
        ▼
电脑：启用列表变成空  →  Git 插件被关闭，自动备份静默停摆
```

反过来也一样：电脑上新启用一个插件，同步到手机后会被强行打开。

### 为什么不能在插件设置里解决

我翻过 obsidian-git 的源码，它**只有单一一份 `data.json`，没有按设备区分设置的机制**（源码里只有 `isMobile` 这种「运行时判断」，没有读取 `data-mobile.json` 之类的分支）。

也就是说，「每 10 分钟自动备份」这个配置本身也是全局共享的：只要手机端启用了这个插件，它就会按同一份配置开始自动提交。所以**「手机端关掉插件」这个操作本身没有替代方案**，能改的只有一件事 —— 让这个开关不要被同步。

## 五、解法：把设备本地状态从仓库里摘出去

判断一个文件该不该同步，只需要问一句：

> **这个文件换一台设备，语义会不会变？**

- 不会变 → 可以同步：笔记正文、附件、主题、插件二进制文件
- 会变 → 必须排除：窗口布局、启用的插件列表、设备专属设置

操作只有三步，关键是 `--cached` 参数 —— 它只解除跟踪，**本地文件原样保留**：

```bash
# 1. 停止跟踪（不要漏掉 --cached，否则连本地文件一起删了）
git rm --cached .obsidian/community-plugins.json

# 2. 写进 .gitignore，防止以后又被加回来
echo ".obsidian/community-plugins.json" >> .gitignore

# 3. 提交推送
git add .gitignore
git commit -m "chore: stop tracking .obsidian/community-plugins.json"
git push
```

一份可以直接抄的 `.gitignore` 模板：

```gitignore
# OS 垃圾文件
.DS_Store
Thumbs.db
desktop.ini

# 窗口 / 面板布局：每次开关 Obsidian 都会变，纯噪声提交
.obsidian/workspace.json
.obsidian/workspace-mobile.json

# 启用了哪些插件：设备相关，手机和电脑需要各自独立
.obsidian/community-plugins.json

# 核心插件开关（可选）：如果发现手机端改动了它，取消下面这行注释
# .obsidian/core-plugins.json

# 同步工具的凭据，永远不要提交
.git_credentials_input
.obsidian-git-credentials
```

> 注意 gitignore 的坑：**注释必须独占一行**。git 只把行首的 `#` 当注释，写在模式后面会被当成模式的一部分。

## 六、收尾：另一台设备会被「删一次」

因为这次提交里包含了「删除该文件」这个变更，另一台设备下一次同步时，git 会把工作区里的 `community-plugins.json` 一起删掉 —— **这是预期行为，只需要处理一次**：

1. 在手机上同步一次（旧文件被删掉）；
2. 打开手机 Obsidian → 设置 → 第三方插件 → 按需重新启用手机要用的插件（**不要再启用 Git 插件**）；
3. 此后该文件在手机上重新生成，但已经被 gitignore，永远不会再被覆盖。

同理，**任何新设备接入后都要手动启用一次插件**。这是这个方案唯一的代价，通常也就点几下的事。

## 七、验证

```bash
# 忽略规则生效了吗？应该输出 .gitignore 的行号和文件路径
git check-ignore -v .obsidian/community-plugins.json

# 已经不在跟踪列表里了吗？输出中不应再出现 community-plugins.json
git ls-files .obsidian/

# 本地文件还在吗？--cached 的意义就在这里
cat .obsidian/community-plugins.json

# 工作区干净、与远端同步
git status -sb
```

## 八、其他注意点

1. **不要让两台设备都主动自动推送。** 两边各自定时 commit + push 时，迟早会分叉，push 被拒（`non-fast-forward`）。推荐「一边自动推送，另一边只拉取」；真冲突了，以自动推送的那台为准处理。
2. **提交历史被自动备份刷屏是正常的。** 每 10 分钟一条 `vault backup: <时间>` 看起来很吵，但换来的是「再也不用记得手动保存」。觉得吵就把间隔调到 30 分钟，或者改成「文件变化后延迟备份」模式。
3. **Windows 上别被控制台乱码骗了。** PowerShell 5.1 里 `git ls-files` 输出中文文件名会显示成乱码，这是终端编码问题，仓库里的文件名其实是好的 —— 去 GitHub 网页上看一眼就能确认。
4. **插件的设置文件（`data.json`）是全局共享的。** 如果你有「同一插件在不同设备要不同配置」的需求，同样要按上面的思路把它从仓库里摘出去。

## 小结

一句话：**笔记内容值得同步，设备状态不值得同步。**

判断标准是「这个文件换一台设备，语义会不会变」—— 会变的一律加进 `.gitignore`，已经跟踪过的用 `git rm --cached` 摘掉（本地文件保留），然后每台设备各自维护自己的那份状态。
