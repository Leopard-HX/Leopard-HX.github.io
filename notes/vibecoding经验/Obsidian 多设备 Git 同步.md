---
title: "Obsidian 多设备 Git 同步"
folder: "vibecoding经验"
---

目标：让**同一份 Obsidian 笔记**在 PC（Windows / macOS / Linux）和 Android / iOS 之间用 Git 同步，并且自带完整的**版本管理**（历史、diff、回滚、标签、分支）。

整套方案只依赖一样东西：**一个私有 Git 仓库**。所有设备都是它的客户端，Obsidian 本身不参与同步逻辑。

## 结论速览

| 设备 | 角色 | 用什么工具 | 认证方式 |
| --- | --- | --- | --- |
| PC | **唯一自动推送方** | Obsidian Git 插件（作者 Vinzent03） | SSH 密钥（免交互） |
| Android | 以拉取为主 | GitSync（独立 App，不走 Obsidian 插件系统） | HTTPS + PAT，或 SSH 密钥 |
| iOS | 以拉取为主 | Working Copy（独立 App），或 Obsidian Git 插件 | HTTPS + PAT |

四条关键结论，后面每一节都会展开：

1. **仓库必须是私有的**，笔记里难免有草稿和私人信息，公开仓库推上去就收不回来了。
2. **认证优先用 SSH**：配好之后插件全程免密码、无 token 过期问题。
3. **只让一台设备自动推送**，其它设备以拉取为主，可以从根上避免「非快进」冲突。
4. **「设备本地状态」绝不能进仓库**：窗口布局、启用了哪些插件这类文件换设备后语义不同，必须写进 `.gitignore`（这是本文最容易踩的坑，见第七节）。

## 一、安装 Obsidian，创建 vault

### 1.1 安装

- Windows / macOS / Linux：官网 <https://obsidian.md> 下载安装
- Android：Google Play 或 F-Droid 搜 `Obsidian`
- iOS：App Store 搜 `Obsidian`

三端装**同一个笔记库**，但每端都可以（也建议）装不同的同步工具。

### 1.2 创建 vault

打开 Obsidian，选择 **Create new vault**（创建新仓库），填一个名字和本地目录。

**名字随便起，真的不重要。** 它只影响本地文件夹名和 Obsidian 标题栏显示，对同步、对 Git 都没有任何影响。常见选择：`vault`、`notes`、`my-vault`、`1` 都行。别在这个环节纠结——**这个目录就是后面 Git 仓库的根目录**，这一点才重要。

创建完，目录里大致是这样：

```text
<vault>/                        ← 这就是 Git 仓库的根目录
├── .obsidian/                  ← Obsidian 的配置（插件、主题、布局）
└── 欢迎.md                     ← 第一篇笔记
```

### 1.3 让 vault 成为 Git 仓库根目录

**核心约定：`git init` 就在 vault 根目录执行，让仓库根目录 = vault 根目录。**

不要用「仓库里再套一层子目录」的结构（例如 `repo/vault/笔记.md`），原因是：

- Obsidian Git 插件默认就用 vault 根目录作为 Git 工作区，套一层反而要额外配置项目路径；
- 手机上用独立同步 App 时，同步目标文件夹必须是 Obsidian 打开的那个文件夹，套一层很容易配错；
- 少一层路径，`.gitignore` 的写法也更直观。

## 二、准备 Git 与 SSH 认证

### 2.1 安装 Git

```bash
# 检查是否已安装
git --version

# Windows（有 winget 的话）
winget install --id Git.Git -e --source winget
```

没有 `winget`（很多企业版 Windows 没有）就去 <https://git-scm.com/download/win> 下载安装包，默认选项一路下一步即可。

macOS 用 `xcode-select --install` 或 `brew install git`；Linux 用包管理器（`apt install git` / `dnf install git`）。

### 2.2 全局配置

```bash
git config --global user.name  "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main

# ---- 以下三行对 Windows 尤其重要 ----
git config --global core.autocrlf true     # 提交时 CRLF → LF，检出时 LF → CRLF，避免「每行都改了」
git config --global core.longpaths true    # 解除 Windows 260 字符路径限制，深层目录必备
git config --global core.quotepath false   # 中文文件名不再显示成 \346\254\...

# 可选：需要写提交信息时用 VS Code 当编辑器
git config --global core.editor "code --wait"
```

逐条说明：

| 配置项 | 为什么 |
| --- | --- |
| `user.name` / `user.email` | 提交记录的作者信息，**必须设置**，否则第一次 commit 会直接报错 |
| `init.defaultBranch main` | 新仓库默认分支叫 `main`，避免 `master` / `main` 两边不一致 |
| `core.autocrlf true` | Windows 换行符是 CRLF，仓库里统一存 LF；不设的话跨设备会出现整文件 diff |
| `core.longpaths true` | Obsidian 深层目录嵌套 + 中文文件名很容易超过 260 字符 |
| `core.quotepath false` | 否则 `git status` 里中文文件名会显示成八进制转义 |

验证：

```bash
git config --global --list
```

### 2.3 生成 SSH 密钥

**macOS / Linux / Git Bash（推荐，最简单）：**

```bash
ssh-keygen -t ed25519 -C "you@example.com" -f ~/.ssh/id_ed25519 -N ""
```

- `-t ed25519`：现代算法，短且快，GitHub 完全支持
- `-f`：私钥输出路径，公钥自动生成在同名 `.pub` 文件
- `-N ""`：空口令（本机自用方便；要更安全就去掉这个参数，交互式输入口令，再配合 `ssh-agent`）

**Windows PowerShell 5.1 的坑。** PowerShell 会把 `-N ""` 里的空参数吞掉，结果口令被设成**字面量两个引号**，之后每次拉取都会要求输入这个诡异口令。绕过办法是用 `ProcessStartInfo` 直接拼命令行字符串：

```powershell
$psi = New-Object System.Diagnostics.ProcessStartInfo
$psi.FileName  = "ssh-keygen.exe"
$psi.Arguments = '-t ed25519 -C "you@example.com" -f "C:\Users\<你的用户名>\.ssh\id_ed25519" -N ""'
$psi.UseShellExecute = $false
$psi.CreateNoWindow = $true
$p = [System.Diagnostics.Process]::Start($psi)
$p.WaitForExit()
```

执行完检查结果：

```bash
# 公钥内容（就是要贴到 GitHub 的那串）
cat ~/.ssh/id_ed25519.pub
# Windows: Get-Content "$env:USERPROFILE\.ssh\id_ed25519.pub"

# 验证私钥确实没有口令（能直接打印出公钥就说明没有口令）
ssh-keygen -y -P "" -f ~/.ssh/id_ed25519
```

> 关于 `ssh-agent`：无口令私钥**不需要** agent。Windows 上 `ssh-agent` 服务默认是 `Stopped` + `Disabled`，启动它需要管理员权限，本方案完全用不到。

### 2.4 把公钥加到 GitHub

**方式一：网页（最稳）**

1. 打开 <https://github.com/settings/keys>
2. 点 **New SSH key**，Title 随便填（例如 `My PC`），Key type 选 `Authentication Key`
3. 把 `id_ed25519.pub` 的**全部内容**粘进去（注意是 `.pub` 那个文件，不是私钥）
4. 保存

**方式二：命令行**

```bash
# 需要 admin:public_key 权限；权限不够先执行 gh auth refresh -s admin:public_key
gh ssh-key add ~/.ssh/id_ed25519.pub --title "My PC"
```

### 2.5 首次连接与 known_hosts

直接连一次，交互式接受主机指纹：

```bash
ssh -T git@github.com
# 第一次会问：Are you sure you want to continue connecting (yes/no/[fingerprint])?
# 输入 yes
```

**非交互场景**（脚本、CI）需要预先写 `known_hosts`：

```bash
mkdir -p ~/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts
```

**Windows 上的坑：** 系统自带的 `C:\Windows\System32\OpenSSH\ssh-keyscan.exe`（OpenSSH 9.5）对 GitHub 的 `sntrup761x25519-sha512@openssh.com` 密钥交换算法报 `choose_kex: unsupported KEX method`，**扫描结果是空的**。改用 Git for Windows 自带的那个（OpenSSH 10.x）：

```powershell
& "C:\Program Files\Git\usr\bin\ssh-keyscan.exe" -t rsa,ecdsa,ed25519 github.com |
  Add-Content "$env:USERPROFILE\.ssh\known_hosts"
```

GitHub 的 ED25519 主机键指纹（可以人工核对）：

```text
SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU
```

### 2.6 验证 SSH

```bash
ssh -T git@github.com
```

成功输出：

```text
Hi <你的用户名>! You've successfully authenticated, but GitHub does not provide shell access.
```

- 出现这行就是**成功**了，即使退出码是 `1` 也正常（GitHub 不提供 shell，所以返回非 0）。
- 报 `Permission denied (publickey)` → 公钥没加到 GitHub，或者加了但用错了密钥文件。
- 报 `Host key verification failed` → 回头做 2.5。

**补充说明：** Git 实际调用的是 PATH 里找到的第一个 `ssh.exe`。在 Windows 上这通常是系统自带的 `C:\Windows\System32\OpenSSH\ssh.exe`（功能完全够用），而不是 Git 自带的那个。想强制指定可以设配置：

```bash
git config --global core.sshCommand "C:/Program Files/Git/usr/bin/ssh.exe"
```

## 三、（推荐）安装 gh CLI

`gh` 能让「创建远端仓库 + 关联 + 推送」一行命令搞定，非常值得装。**它是可选的**，第 4.4 节给了不用 `gh` 的等价做法。

### 3.1 安装

```bash
# 有 winget
winget install --id GitHub.cli -e --source winget

# macOS
brew install gh

# Linux（Debian/Ubuntu）
sudo apt install gh
```

**没有 winget 时的免安装方案**（解压即用，不需要管理员权限）：

```powershell
$ver = "2.100.0"
$zip = "$env:TEMP\gh.zip"
Invoke-WebRequest "https://github.com/cli/cli/releases/download/v$ver/gh_${ver}_windows_amd64.zip" -OutFile $zip
Expand-Archive $zip -DestinationPath "$env:TEMP\gh" -Force

$dest = "$env:LOCALAPPDATA\Programs\GitHubCLI"
New-Item -ItemType Directory -Force -Path "$dest\bin" | Out-Null
Copy-Item "$env:TEMP\gh\bin\*" "$dest\bin" -Recurse -Force

# 永久加入用户级 PATH
$old = [Environment]::GetEnvironmentVariable("Path", "User")
[Environment]::SetEnvironmentVariable("Path", "$old;$dest\bin", "User")
```

> **坑：** 改完 PATH 必须**重启终端**（VS Code 的话要整个重启，不只是新开一个终端）才认得到 `gh`。

### 3.2 登录

```bash
gh auth login --hostname github.com --git-protocol ssh
```

交互选项依次选：`GitHub.com` → `SSH` → `Login with a web browser` → 复制页面上的 one-time code → 浏览器里粘贴授权。

> **坑：** 必须在**真实交互终端**里运行。在非交互 shell（CI 环境、某些编辑器内嵌终端）里 `--web` 会因为 stdin 不是终端而直接退出。

用 token 登录（适合无人值守）：

```bash
echo "<你的PAT>" > token.txt
gh auth login --with-token < token.txt
rm token.txt
```

验证：

```bash
gh auth status
# 期望看到：Logged in to github.com account <用户名>，Git operations protocol: ssh
```

## 四、创建私有仓库并首次推送

### 4.1 先写 `.gitignore`

在 vault 根目录下创建 `.gitignore`，**在第一次 commit 之前就写好**，否则这些文件会被提交进去，之后要额外用 `git rm --cached` 摘出来：

```gitignore
# OS 垃圾文件
.DS_Store
Thumbs.db
desktop.ini

# 窗口 / 面板布局：每次开关 Obsidian 都会变，纯噪声提交
.obsidian/workspace.json
.obsidian/workspace-mobile.json

# 启用了哪些插件：设备相关，PC 和手机必须各自独立
.obsidian/community-plugins.json

# 核心插件开关（可选）：如果发现手机端改动了它，取消这行注释
# .obsidian/core-plugins.json

# 同步工具的凭据，永远不要提交
.git_credentials_input
.obsidian-git-credentials

# Obsidian 回收站
.trash/
```

> gitignore 的语法坑：**注释必须独占一行**。Git 只把行首的 `#` 当作注释，写在模式后面的 `# ...` 会被当成模式的一部分。

### 4.2 初始化本地仓库

```bash
cd /path/to/<你的 vault>
git init -b main
git add -A
git commit -m "Initial commit: Obsidian vault"
```

检查一下要提交的内容：

```bash
git status --short
git ls-files          # 列出入库文件，确认 workspace.json 之类不在里面
git log --oneline
```

### 4.3 创建远端私有仓库（一行命令）

```bash
gh repo create obsidian-vault --private --source . --remote origin --push
```

参数逐个说明：

| 参数 | 作用 |
| --- | --- |
| `obsidian-vault` | 仓库名（同样**随便起**） |
| `--private` | 创建为私有仓库，**强烈建议** |
| `--source .` | 把当前目录当作仓库来源（要求当前目录已经是 git 仓库） |
| `--remote origin` | 远端名字叫 `origin`（约定俗成） |
| `--push` | 创建完立刻推送 |

成功输出类似：

```text
✓ Created repository <用户名>/obsidian-vault on github.com
  https://github.com/<用户名>/obsidian-vault
✓ Added remote git@github.com:<用户名>/obsidian-vault.git
```

> 想让脚本「已存在就跳过、不存在才创建」，可以这么写：
> `gh repo view <用户名>/obsidian-vault >/dev/null 2>&1 || gh repo create obsidian-vault --private --source . --remote origin --push`

### 4.4 不用 gh 的等价做法

先在网页上建好空仓库（<https://github.com/new>，选 **Private**，**不要**勾选初始化 README），然后：

```bash
cd /path/to/<你的 vault>
git init -b main
git add -A
git commit -m "Initial commit: Obsidian vault"

git remote add origin git@github.com:<用户名>/<仓库名>.git
git branch -M main
git push -u origin main
```

- `git branch -M main`：把当前分支强制改名为 `main`
- `git push -u origin main`：推送并设置上游，之后直接 `git push` / `git pull` 即可

### 4.5 验证

```bash
git remote -v                 # 应显示 fetch/push 两条 SSH 地址
git status -sb                # 应显示 ## main...origin/main（没有 ahead/behind 就是同步的）
git log --oneline -3

gh repo view --json name,visibility,url,sshUrl
```

`git status -sb` 里 `## main...origin/main` 后面**没有** `[ahead 1]` 之类的标记，就说明本地和远端完全一致。

## 五、PC 端：用 Obsidian Git 插件自动备份

### 5.1 安装并启用插件

1. Obsidian → 设置 → **第三方插件（Community plugins）**
2. 点 **Turn off restricted mode**（关闭受限模式）
3. 点 **Browse**，搜索 `Git`，选作者为 **Vinzent03** 的那个（插件 id 是 `obsidian-git`）
4. **Install** → **Enable**

装好后会在 vault 里出现：

```text
.obsidian/plugins/obsidian-git/
├── main.js
├── manifest.json
└── styles.css
```

「启用了哪些插件」记录在 `.obsidian/community-plugins.json`，内容长这样就等于启用了它（**改之前必须先退出 Obsidian**，否则退出时会被内存里的旧值覆盖）：

```json
[
  "obsidian-git"
]
```

### 5.2 关键设置

设置 → Git，按下面调：

| 设置项 | 建议值 | 作用 |
| --- | --- | --- |
| Auto backup interval | `10`（分钟） | 定时自动提交；设 0 表示关闭定时 |
| Different interval for commit and push | 关 | 提交和推送共用上面那个间隔 |
| Disable push | 关 | 关掉才允许推送，否则只提交到本地 |
| Pull before push | **开** | 推送前先拉取，挡掉大部分「非快进」冲突 |
| Auto pull on boot | **开** | 启动时先同步，避免用旧内容覆盖远端 |
| Merge strategy | `merge` | 冲突处理策略，默认就够用 |
| Commit message | `vault backup: {{date}}` | `{{date}}` 会被替换成时间 |
| Auto backup after file change | 关 | 想改成「编辑后延迟备份」再打开 |

### 5.3 设置文件完整示例

设置项也可以直接写文件：`.obsidian/plugins/obsidian-git/data.json`

```json
{
  "commitMessage": "vault backup: {{date}}",
  "autoCommitMessage": "vault backup: {{date}}",
  "commitMessageScript": "",
  "commitDateFormat": "YYYY-MM-DD HH:mm:ss",
  "autoSaveInterval": 10,
  "autoPushInterval": 0,
  "autoPullInterval": 0,
  "autoPullOnBoot": true,
  "autoCommitOnlyStaged": false,
  "disablePush": false,
  "pullBeforePush": true,
  "squashCommitsBeforePush": false,
  "disablePopups": false,
  "showErrorNotices": true,
  "disablePopupsForNoChanges": false,
  "showStatusBar": true,
  "updateSubmodules": false,
  "syncMethod": "merge",
  "mergeStrategy": "none",
  "customMessageOnAutoBackup": false,
  "autoBackupAfterFileChange": false,
  "treeStructure": false,
  "differentIntervalCommitAndPush": false,
  "changedFilesInStatusBar": false,
  "refreshSourceControlTimer": 7000,
  "showBranchStatusBar": true,
  "setLastSaveToLastCommit": false,
  "submoduleRecurseCheckout": false,
  "gitDir": "",
  "showFileMenu": true,
  "authorInHistoryView": "hide",
  "dateInHistoryView": false,
  "diffStyle": "split",
  "ignoreWhitespace": false
}
```

> **改 `data.json` 之前必须先退出 Obsidian**，否则关闭时内存里的设置会覆盖文件。
> 插件用「默认值 + 文件里的值」合并，所以只写你想改的那几项也是合法的。

### 5.4 手动触发同步

`Ctrl/Cmd + P` 打开命令面板，常用命令：

| 命令 | 作用 |
| --- | --- |
| `Git: Commit-and-sync` | 提交 + 拉取 + 推送，一步到位 |
| `Git: Create backup` | 只提交并推送 |
| `Git: Pull` | 只拉取 |
| `Git: Open source control view` | 打开侧边栏源码管理面板 |

**一个重要的实现细节：桌面端的插件是通过调用系统 `git` 命令工作的**（它会自己设置 `SSH_ASKPASS` 指向插件目录里的 `obsidian_askpass.sh`）。所以只要系统 `git` 和 SSH 密钥配好了，**插件里不需要填任何 token 或账号密码**——这正是推荐 SSH 的原因。

## 六、手机端：Android 与 iOS 怎么接

手机上**不建议**用 Obsidian Git 插件当主力：移动端插件走的是 `isomorphic-git`（纯 JS 实现），只支持 HTTPS + PAT，不支持 SSH，而且后台定时任务容易被系统杀掉。更省事的做法是用**独立的同步 App**。

### 6.1 Android：GitSync

1. 安装 GitSync 这类「把 Git 仓库同步到本地文件夹」的独立 App
2. 配置：
   - **Repository**：填 HTTPS 地址 `https://github.com/<用户名>/<仓库名>.git`
   - **Local folder**：填 Obsidian 打开的那个 vault 文件夹（必须是同一个）
   - **Authentication**：GitHub 用户名 + PAT（PAT 创建步骤见 6.3）
3. 触发一次同步，然后用 Obsidian 打开该文件夹

这种方案下 **Obsidian 端不需要装任何 git 插件**，同步完全由 App 负责。

> 更安全的做法：给仓库加一把**只读部署密钥（Deploy Key）**，手机端只拉取、不能推送，即使设备丢失也不会污染仓库。GitHub 路径：仓库 → Settings → Deploy keys → Add deploy key，**不要**勾 Allow write access。

### 6.2 iOS：Working Copy

iOS 上等价角色是 **Working Copy**（App Store 下载）：

1. 用 Working Copy 克隆私有仓库（认证用 PAT）
2. 在 vault 文件夹里用 Obsidian 打开（Working Copy 提供「分享到 Obsidian」的入口）
3. 需要同步时在 Working Copy 里 Pull / Push

注意：Working Copy 的**推送**功能需要内购 Pro，只拉取的话免费版够用。

### 6.3 手机端直接用 Obsidian Git 插件（PAT 方式）

如果不想装额外 App，也可以在手机 Obsidian 里装同一个 Git 插件（它的 `manifest.json` 里 `isDesktopOnly: false`，移动端可用），认证走 HTTPS + PAT：

**创建 PAT：**

1. 打开 <https://github.com/settings/tokens>
2. 选 **Fine-grained tokens** → Generate new token
3. **Repository access** → Only select repositories → 勾选 vault 那个仓库
4. **Permissions** → `Contents` 设为 **Read and write**（`Metadata` 会自动带上 Read）
5. 生成后**立刻复制**，页面关掉就再也看不到了

**在插件里授权：** 手机 Obsidian 里第一次执行 `Git: Pull` / `Commit-and-sync` 时会弹出输入框 —— 用户名填 GitHub 用户名，密码填 **PAT**（不是登录密码）。

### 6.4 多端协作规则

1. **只让一台设备（PC）自动定时推送。** 手机端要么手动同步，要么只拉取。
2. **开工前先 pull，收工后 push。** 尤其在手机上改过笔记之后，回到 PC 先拉一次。
3. **冲突时以自动推送的那台为准。** 真出问题就 `git fetch` 看一眼，或者直接接受某一侧，别硬合。
4. **手机端不要启用 Git 插件**（如果用的是独立同步 App），否则两个 git 进程会抢同一个 `.git` 目录。

## 七、最容易踩的坑：插件开关被同步到另一台设备

这一节是全文最重要的一段，因为它**静默失败**——插件被关掉了，你甚至不会收到任何提示。

### 7.1 现象

1. 插件文件夹 `.obsidian/plugins/obsidian-git/` 跟着仓库同步到了手机，于是手机上 Obsidian 里**也出现了 Git 插件，而且默认是启用状态**；
2. 手机上插件被启用后，它也开始定时 commit + push，和手机上的独立同步 App 抢同一个 `.git` 目录，于是出现 `index.lock` 报错、提交分叉、push 被拒；
3. 为了止损，在手机上**关掉** Git 插件；
4. 这个「关掉」被写进了配置文件，而那个文件是**被 Git 跟踪**的 —— 同步回 PC 后，**PC 上的 Git 插件也没了，自动备份静默停摆**。

### 7.2 根因

`.obsidian/community-plugins.json` 记录的是「**这台设备**启用了哪些插件」，它属于**设备本地状态**，却被当成共享内容提交进了仓库：

```text
手机：禁用 Git 插件
        │
        ▼
  .obsidian/community-plugins.json  →  []
        │
        │  同步（git push / pull）
        ▼
PC：启用列表变成空  →  Git 插件被关闭，自动备份静默停摆
```

反过来也一样：PC 上新启用一个插件，同步到手机后会被强行打开。

### 7.3 为什么不能在插件设置里绕开

Obsidian Git 插件**只有单一一份 `data.json`，没有按设备区分设置的机制**（源码里只有 `isMobile` 这种运行时判断，没有读取 `data-mobile.json` 之类的分支）。

也就是说，「每 10 分钟自动备份」这个配置本身也是全局共享的：只要手机端启用了插件，它就会按同一份配置开始自动提交。所以**「手机端关掉插件」这个操作没有替代方案**，能改的只有一件事 —— 让这个开关不要被同步。

### 7.4 解法：把设备本地状态从仓库里摘出去

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

回到第 4.1 节，如果你**一开始**就把这些写进 `.gitignore`，这一步就完全不需要做。

### 7.5 收尾：另一台设备会被「删一次」

因为这次提交里包含了「删除该文件」这个变更，另一台设备下一次同步时，Git 会把工作区里的 `community-plugins.json` 一起删掉 —— **这是预期行为，只需要处理一次**：

1. 在手机上同步一次（旧文件被删掉）；
2. 打开手机 Obsidian → 设置 → 第三方插件 → 按需重新启用手机要用的插件（**不要再启用 Git 插件**）；
3. 此后该文件在手机上重新生成，但已经被 gitignore，永远不会再被覆盖。

同理，**任何新设备接入后都要手动启用一次插件**。这是这个方案唯一的代价，通常也就点几下。

## 八、版本管理：日常怎么用

Git 让笔记库自带「时间机器」。以下都是只读操作，可以放心试。

### 8.1 看历史

```bash
git log --oneline -20                      # 最近 20 次提交
git log --oneline --stat                   # 带文件改动统计
git log -p -- "Notes/某篇笔记.md"           # 单篇笔记的完整历史（含内容 diff）
git log --since="2 weeks ago" --oneline    # 按时间过滤
git shortlog -sn                           # 按作者统计
```

GitHub 网页端更直观：仓库 → Commits → 点进某次提交看 diff，或打开某个文件后点 **History** / **Blame**。

### 8.2 对比改动

```bash
git status                                 # 看工作区哪些文件变了
git diff                                   # 未暂存的改动
git diff --staged                          # 已暂存的改动
git diff HEAD~1 -- "Notes/某篇笔记.md"       # 和上一次提交比某篇笔记
git diff main~5 main --stat                # 近 5 次提交的总览
```

### 8.3 回滚

```bash
# 只把某一个文件恢复到上一次提交的状态（不动其它文件，最常用）
git restore -- "Notes/某篇笔记.md"

# 恢复到更早的某个提交
git restore --source=HEAD~3 -- "Notes/某篇笔记.md"

# 安全地「撤销某次提交」：生成一个反向提交，历史完整保留
git revert <commit-sha>

# 危险操作：把整库硬回退到某个提交（会丢弃之后的提交和未提交的改动）
git reset --hard <commit-sha>
```

> 记不住 sha 的时候：`git log --oneline` 复制前 7 位即可。

### 8.4 标签与分支（可选）

```bash
# 给重要节点打标签，例如「论文初稿完成」
git tag -a v1.0-paper-draft -m "论文初稿"
git push --tags

# 实验性的改法开个分支，不污染主线
git switch -c draft/rewrite
git push -u origin draft/rewrite
```

### 8.5 自动备份的提交历史怎么读

开启自动备份后，历史里会混着大量自动提交：

```text
4e6dc27 vault backup: 2026-09-10 22:54:27
b5cffb1 vault backup: 2026-09-10 22:13:30
7212831 Configure obsidian-git plugin (10-min auto backup, SSH remote)
```

人工提交和自动提交靠提交信息区分。如果觉得太吵，把 `autoSaveInterval` 调到 30，或者改用 `autoBackupAfterFileChange`（编辑后延迟备份）。

## 九、验证清单与故障排查

### 9.1 一键验证脚本

```bash
echo "--- git ---"          ; git --version
echo "--- ssh ---"          ; ssh -T git@github.com
echo "--- gh ---"           ; gh auth status
echo "--- remote ---"       ; git -C /path/to/<vault> remote -v
echo "--- sync state ---"   ; git -C /path/to/<vault> status -sb
echo "--- last commits ---" ; git -C /path/to/<vault> log --oneline -5
echo "--- ignored? ---"     ; git -C /path/to/<vault> check-ignore -v .obsidian/community-plugins.json
echo "--- tracked ---"      ; git -C /path/to/<vault> ls-files .obsidian/
```

`git check-ignore -v` 会打印命中的 `.gitignore` 行号，例如：

```text
.gitignore:18:.obsidian/community-plugins.json	.obsidian/community-plugins.json
```

### 9.2 故障对照表

| 现象 | 原因 | 解决 |
| --- | --- | --- |
| `Permission denied (publickey)` | 公钥没加到 GitHub，或用了别的密钥 | 重做 2.4；用 `ssh -i <私钥> -T git@github.com` 定位是哪把密钥 |
| `Host key verification failed` | `known_hosts` 里没有 github.com | 重做 2.5 |
| `Repository not found` | 地址错 / 没权限 / 密钥对应的账号不是仓库所有者 | 用 `git remote -v` 核对地址；`ssh -T` 看登录的是哪个账号 |
| `updates were rejected ... non-fast-forward` | 多台设备都推送，历史分叉了 | `git pull --rebase` 再 `git push`；根治办法是只留一台自动推送 |
| `Unable to create '.git/index.lock'` | 两个 git 进程同时操作 | 关掉 Obsidian / 同步 App，确认无 git 进程后删除 `.git/index.lock` |
| `fatal: pathspec ... did not match` | 路径里有空格没加引号 | 路径**始终加引号**：`git add "Notes/我的 笔记.md"` |
| 中文文件名显示成 `\346\254\...` | `core.quotepath` | `git config --global core.quotepath false` |
| 控制台里中文文件名乱码，但 GitHub 网页正常 | PowerShell 5.1 终端编码问题 | 文件本身没问题，忽略即可；想看正常输出先 `chcp 65001` |
| `warning: LF will be replaced by CRLF` | `core.autocrlf=true` 的正常提示 | 可忽略；想彻底统一就加 `.gitattributes`（见下） |
| 每次打开 Obsidian 都产生一次提交 | `workspace.json` 每次退出都变 | 加进 `.gitignore` + `git rm --cached .obsidian/workspace.json` |
| Obsidian 里找不到 git 图标 | 插件没启用 / 受限模式没关 | 设置 → 第三方插件 → 关闭受限模式并启用插件 |
| 插件自动备份突然不工作了 | 启用开关被另一台设备覆写 | 见第七节 |

**可选的 `.gitattributes`**（想让三端换行符彻底一致时用）：

```gitattributes
* text=auto eol=lf
*.png binary
*.jpg binary
*.pdf binary
```

## 十、关键事实速查

给需要快速复现场景的人（或 LLM）用：

| 项目 | 值 |
| --- | --- |
| 仓库根目录 | **就是** vault 根目录 |
| 远端地址（SSH） | `git@github.com:<用户名>/<仓库名>.git` |
| 远端地址（HTTPS） | `https://github.com/<用户名>/<仓库名>.git` |
| 默认分支 | `main` |
| SSH 私钥 / 公钥 | `~/.ssh/id_ed25519` / `~/.ssh/id_ed25519.pub` |
| 插件安装目录 | `.obsidian/plugins/obsidian-git/` |
| 插件设置文件 | `.obsidian/plugins/obsidian-git/data.json` |
| 启用插件清单 | `.obsidian/community-plugins.json` |
| 一行建私有仓库 | `gh repo create <名字> --private --source . --remote origin --push` |
| 摘掉已跟踪的文件 | `git rm --cached <路径>`（本地文件保留） |
| 创建 PAT | <https://github.com/settings/tokens> → Fine-grained → `Contents: Read and write` |

**哪些 `.obsidian/` 文件该提交、哪些不该：**

| 文件 | 是否提交 | 原因 |
| --- | --- | --- |
| `.obsidian/plugins/<插件>/main.js` `manifest.json` `styles.css` | 提交 | 插件本体，同步过去省得每台设备重装 |
| `.obsidian/plugins/<插件>/data.json` | 提交 | 插件设置；想让各设备不同则改为忽略 |
| `.obsidian/app.json` `.obsidian/appearance.json` | 提交 | 主题、外观，各设备一致更好 |
| `.obsidian/core-plugins.json` | 视情况 | 手机端可能改写它，出问题就忽略 |
| `.obsidian/community-plugins.json` | **忽略** | **设备相关**：启用了哪些插件 |
| `.obsidian/workspace.json` | **忽略** | **设备相关**：桌面窗口布局，每次退出都变 |
| `.obsidian/workspace-mobile.json` | **忽略** | **设备相关**：手机窗口布局 |
| 笔记、附件、图片 | 提交 | 这才是要同步的内容 |

一句话总结：**笔记内容值得同步，设备状态不值得同步。** 判断标准是「这个文件换一台设备，语义会不会变」—— 会变的一律加进 `.gitignore`，已经被跟踪过的用 `git rm --cached` 摘掉（本地文件保留），然后每台设备各自维护自己的那份状态。
