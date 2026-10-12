---
title: "备注：对称性与黑洞 QNM 谱的等谱性"
folder: "文章整理/准正规模QNM/arXiv-2609.18105v1"
---

## 基本信息

- 标题：**Symmetry preservation in black hole quasinormal mode spectra**
- arXiv：`2609.18105v1`（2026-09）
- 资助标注：NSFC No. 12475067、No. 12235019；C. Lan 另获烟台大学 No. WL22B224
- 体裁：Letter（正文无编号小节，"Spectral Symmetry.–"/"Axial Perturbation and Conformal Mapping.–"/"Conclusion and Discussion.–" 为分节标记）；附录 A（线性化 Bach 方程推导）、附录 B（QNM 频率的数值验证）、Supplemental Material

## 文件清单

- [`2609.18105v1.pdf`](/notes/文章整理/准正规模QNM/arXiv-2609.18105v1/2609.18105v1.pdf)（arXiv 官方 PDF，约 411 KB）
- `2609.18105v1.html`（LaTeXML 全文；图形与静态资源已指向 arXiv 绝对地址）
- `备注-对称性与QNM等谱性.md`（本文件）

## 一、主定理（Theorem 1）

设同一引力理论中两个黑洞解由**对称变换** $s$ 相联系。则：

> 若该变换诱导的**完整物理扰动映射**（含约束与规范部分，取商掉纯规范后的物理空间）是两个 QNM **边值问题定义域之间的双射**，且该变换**保持时间平移及其归一化**，则两个黑洞具有**相同的 QNM 谱**。
> 若该映射及其逆在考虑的频率域内**解析**，则对应**推迟格林函数的极点位置与阶数也相同**。

> 三个术语的逐字展开见「问答记录 Q2」：**对称变换 $s$** = Q2 第 1 节；**完整物理扰动映射** = Q2 第 2 节；**QNM 边值问题定义域** = Q2 第 3 节。三者分别是这条定理的「前提 / 桥梁 / 判据」。

## 二、证明骨架

1. 场方程记作 $\mathscr{F}_A[\varphi]\equiv\delta S/\delta\varphi^A=0$，对称变换满足 $S[s[\varphi]]=S[\varphi]$；把逆变换的线性变分写成 $\delta\varphi^B=K^{B}{}_{A}\delta\tilde{\varphi}^{A}+K^{B\mu}{}_{A}\partial_\mu\delta\tilde{\varphi}^{A}+\cdots$（式 (1)）。
2. 在同坐标下对变换前后变分并分部积分 → （式 (2)）


$$
\mathscr{F}_A[\tilde{\varphi}]=K^{B}{}_{A}\mathscr{F}_B-\partial_\mu\!\left(K^{B\mu}{}_{A}\mathscr{F}_B\right)+\cdots\equiv\left(\mathcal{W}_s[\varphi]\,\mathscr{F}[\varphi]\right)_A
$$


3. 对背景加微扰 $\epsilon h$、定义线性化算子 $\mathcal{L}_0,\mathcal{L}_s$ 与 $\mathcal{U}_s$，一阶比较得 $\mathcal{L}_s\mathcal{U}_s=\mathcal{W}_s[\bar{\varphi}]\mathcal{L}_0$；频率域中（式 (4)）


$$
\mathcal{L}_s(\omega)\,\mathcal{T}_s(\omega)=\mathcal{W}_s(\omega)\,\mathcal{L}_0(\omega)
$$


→ 物理 QNM 一一对应（式 (5)）：$\operatorname{Spec}_{\rm QNM}(\mathcal{L}_s)=\operatorname{Spec}_{\rm QNM}(\mathcal{L}_0)$。
4. Green 函数变换（式 (6)）：$\mathcal{G}_s(\omega)=\mathcal{T}_s(\omega)\,\mathcal{G}_0(\omega)\,\mathcal{W}_s^{-1}(\omega)$；若 $\mathcal{T}_s,\mathcal{W}_s$ 及其逆解析，则**不产生新极点、也不消除最高阶极点系数** → 极点位置与阶数不变。

## 三、应用到纯 Weyl 引力

- 作用量与真空场方程（式 (7)）：


$$
S_{\rm W}=\int \mathrm{d}^4x\sqrt{-g}\,C_{\mu\nu\rho\sigma}C^{\mu\nu\rho\sigma},\qquad \mathcal{B}_{\mu\nu}=0\ (\text{Bach 张量})
$$


- **Mannheim–Kazanas** 静态球对称 Bach 真空解**局部共形于** Schwarzschild–(A)dS Einstein 度规 → 同一作用量内存在一族由**局域共形变换**相联系的黑洞解。
- **约化方案**：以**线性化 Einstein 张量为中间变量**，把 Bach 扰动方程化为**两个耦合的二阶径向方程**（附录 A 给出推导）。
- 结果：得到 Schwarzschild 背景上**完整的轴向(axial)谱**，包含
  - **Regge–Wheeler 支**，以及
  - **spin-1 支**（⇒ 单个 Regge–Wheeler 方程**不能**给出纯 Weyl 引力完整的轴向扰动谱）；
  - 重复的 spin-2 自由度使 Regge–Wheeler 频率成为**二阶极点**。
- 共形因子 $\mathcal{T}_C$ 及其逆在视界外部与边界处非奇异、且与 $\omega$ 无关 → 极点位置与阶数在共形变换下不变（附录 B 另有直接数值核对）。**Einstein 引力与纯 Weyl 引力在 Schwarzschild 背景上共享同一条 Regge–Wheeler 支**（线性化 Einstein 方程的解也是 Bach 扰动）。

## 四、矛盾的澄清与边界

- 已有文献报告"共形相关黑洞的 QNM 谱**有的依赖共形因子、有的不依赖**"——本文指出这是一些工作**扰动动力学不同**、另一些**边界条件不同**造成的，不是同一谱问题的分歧。
- **反例（定理条件不满足）**：Mannheim–Kazanas ↔ Schwarzschild 的共形变换**不保证等谱**。原因：$\hat{\Lambda}=0$ 时共形因子 $C=(1-a\rho)^{-1}$ 在 $\rho_b=1/a$ **发散**，把 Mannheim–Kazanas 的空间无穷远映射到 Schwarzschild 外部的**有限点** → 两个 QNM 边值问题的**定义域不同**，局部映射不足以保证等谱。
- 量子层面：Weyl 反常可能改变线性化场方程，此时定理要求的映射需重新考虑。

## 五、可套用定理的其它对称性例子

- Einstein–Maxwell 的局域 $U(1)$：同一带电黑洞的不同规范代表，去掉纯规范后物理扰动空间相同。
- Einstein–Maxwell 离散对称 $A_\mu\to-A_\mu$：把电荷 $Q$ 的 Kerr–Newman 映到 $-Q$，并翻转电磁扰动符号。
- 复标量毛发的 Kerr：全局 $U(1)$ 相位旋转 → 扰动映射只差常数相位。
- 线性 scalar–Gauss–Bonnet 耦合：平移 $\varphi\to\varphi+c$ 只改变作用量一个 Gauss–Bonnet 拓扑项 → 联系渐近标量值相差 $c$ 的带毛黑洞。
- 二次耦合的 $\mathbb{Z}_2$：$\varphi\to-\varphi$ → 联系标量荷相反的标量化黑洞，线性化层面诱导 $\delta\varphi\to-\delta\varphi$。

## 六、约化方案的推广（展望）

- 可推广到**极向(polar)**扰动。
- 其它高阶导数理论：$f(R)$ 在 Schwarzschild 背景可选中间变量 $X=\delta R$，$(\bar{\nabla}^2-m_0^2)X=0$ 给出 massive spin-0 支；重构度规扰动时还须保留**无质量 spin-2 齐次解**，谱 = 两支并集。更一般的 $\mathcal{L}_{\rm quad}=R+\alpha R^2+\beta R_{\mu\nu}R^{\mu\nu}$ 还需引入无迹 Ricci 变量 $Y_{\mu\nu}$（$(\bar{\Delta}_L+m_2^2)Y_{\mu\nu}=0$）→ 再加 massive spin-2 支。

## 七、与本工作区的关系

- 与 `arXiv-2609.20382v1` 互为对照：那篇说明**改变近视界边界条件**会让谱剧烈变化（谱不稳定性），本篇给出**什么条件下**谱可以被对称性**保护**（等谱性）。两篇合读可把"谱稳定性"的判据补全：**要么有完整的边值问题双射（等谱），要么谱对边界条件敏感**。
- 工作区`sensitivity_checks.json` / `symbolic_checks.txt` 关心的"结论对参数/边界的稳健性"是同一类问题，但对象不同（那边是逃逸率的数值稳健性，这边是算子的谱稳定性）。

## 出处索引

- Theorem 1 与证明：Sec. "Spectral Symmetry.–"，式 (1)–(6)
- Weyl 引力与 Bach 方程：式 (7)，附录 A
- 轴向谱与二阶极点：Sec. "Axial Perturbation and Conformal Mapping.–"、结论段
- 反例与边界条件作用：Sec. "Conclusion and Discussion.–"
- 数值核对：Appendix B

---

## 问答记录

**问答索引**

| 编号 | 主题 | 在展开谁 |
|---|---|---|
| Q1 | QNM 是什么？与这批四篇论文的关系 | —（外置于 2609.20382 笔记，本条只做指引） |
| Q2 | Theorem 1 三个术语：对称变换 $s$、完整物理扰动映射、QNM 边值问题定义域 | 展开 Q1 第 5 节 ② |

### Q1. 见 `arXiv-2609.20382v1/备注-近视界反射面Schwarzschild-AdS的QNM.md` 的「问答记录 Q1」

**问题**：QNM 是什么？和这批四篇文章是什么关系？（2026-09-29）
**解答**：该条为工作区主线转向 QNM 的**入门条目**（QNM 定义、边界条件、计算方法、与四篇论文的关系），内容较多，统一记在最相关的 2609.20382 笔记里。
**本条定位**：该条**第 5 节 ②** 讨论本篇与 QNM 计算的关系——对称性 ⇒ 等谱性、高阶导数理论的**额外分支**（谱完整性）、以及 Mannheim–Kazanas ↔ Schwarzschild 不保证等谱的反例。

### Q2. Theorem 1 里的三个术语：对称变换 $s$、完整物理扰动映射、QNM 边值问题定义域

**问题**：我看不懂这篇文章的内容。你能详细解释一下吗？什么叫"同一引力理论中两个黑洞解由对称变换 $s$ 相联系"？什么叫"变换诱导的完整物理扰动映射"？什么叫"QNM 边值问题定义域"？（2026-10-10）

**本条定位**：工作区主线转向 QNM 的**入门条目**是 `arXiv-2609.20382v1/备注-近视界反射面Schwarzschild-AdS的QNM.md` 的「问答记录 Q1」（QNM 定义、边界条件、计算方法、方法菜单）。本条**不重复**那部分，只把 **Q1 第 5 节 ②** 里点到但没展开的三个术语**逐字展开**。QNM 本身是什么，先读那条。

#### 0. 全景：Theorem 1 是一条"三段式"的定理

三个术语分别对应定理的**前提 / 桥梁 / 判据**：


$$
\underbrace{\text{对称性 }s}_{\text{前提}}\;\Longrightarrow\;\underbrace{\text{完整物理扰动映射 }(\mathcal{U}_s,\mathcal{T}_s,\mathcal{W}_s)}_{\text{桥梁}}\;\xrightarrow[\text{定义域相同}]{\text{必须是双射}}\;\underbrace{\operatorname{Spec}_{\rm QNM}(\mathcal{L}_s)=\operatorname{Spec}_{\rm QNM}(\mathcal{L}_0)}_{\text{结论}}
$$


论文的全部力量在于：**光有桥梁（局部映射）不够，还要检查定义域**——这正是 Mannheim–Kazanas ↔ Schwarzschild 反例失败之处（第 3.(c) 节）。

#### 1. "同一引力理论中两个黑洞解由对称变换 $s$ 相联系"

**一个引力理论** = 一个**固定不变的作用量** $S[\varphi]$，$\varphi^A$ 是所有动力学场（度规 + 规范场 + 标量……）。场方程 $\mathscr{F}_A[\varphi]\equiv\delta S/\delta\varphi^A=0$（证明开头）。

**对称变换 $s$**：把场构型映到另一构型的映射 $\tilde{\varphi}=s[\varphi]$，满足 $S[s[\varphi]]=S[\varphi]$（允许差一个不影响场方程的边界项）。

关键：$s$ 必须是**同一个作用量自己的对称性**，不是"换一套理论"。由式(2)，$\mathscr{F}[\bar{\varphi}_s]=0$ 只要 $\mathscr{F}[\bar{\varphi}]=0$，其中 $\bar{\varphi}_s\equiv s[\bar{\varphi}]$。所以 $s$ 把**一个黑洞解变成同一理论里另一个黑洞解**——这就是"相联系"：两个背景在**同一作用量同一条对称轨道**上。

具体例子（Sec. "Conclusion and Discussion.–"，p22.1 / p23.1）：

| 理论 | 对称变换 $s$ | 把什么解映到什么解 |
|---|---|---|
| 纯 Weyl 引力 | 局域共形变换 $g_{\mu\nu}\to\Omega^{2}g_{\mu\nu}$ | Schwarzschild–(A)dS ↔ Mannheim–Kazanas |
| Einstein–Maxwell | 局域 $U(1)$ 规范变换 | **同一个**带电黑洞的不同规范代表 |
| Einstein–Maxwell | 离散 $A_\mu\to-A_\mu$ | 电荷 $Q$ 的 Kerr–Newman → 电荷 $-Q$（电磁扰动变号） |
| 带复标量毛发的 Kerr | 全局 $U(1)$ 相位旋转 | 相差常数相位的同一黑洞（扰动映射只差常数相位） |
| 线性 scalar–Gauss–Bonnet | 平移 $\varphi\to\varphi+c$ | 渐近标量值相差 $c$ 的带毛黑洞 |
| 二次耦合 | $\mathbb{Z}_2$：$\varphi\to-\varphi$ | 标量荷相反的标量化黑洞（$\delta\varphi\to-\delta\varphi$） |

注意两个极端：$A_\mu\to-A_\mu$ 给出**真正不同的时空**（$Q\to-Q$）；而 $U(1)$ 规范变换给出的其实是**同一时空的不同描述**（去掉纯规范后物理扰动空间相同）。定理对两者都适用——它只问"谱该不该相等"。

> 一句话：**"由对称变换 $s$ 相联系" = 两个黑洞解在同一作用量的同一条对称轨道上，$s$ 是连接它们的那一步变换。**

#### 2. "变换诱导的完整物理扰动映射"

##### (a) 扰动

背景上加小扰动 $\bar{\varphi}+\epsilon h$，线性化场方程 $\mathcal{L}_0 h=0$，$\mathcal{L}_0$ 为背景 $\bar{\varphi}$ 上的**完整线性化算子**。

##### (b) 映射怎么"诱导"出来

把 $s$ **作用在扰动后的构型上**并对 $\epsilon$ 展开（式(3)）：


$$
s[\bar{\varphi}+\epsilon h]\equiv\bar{\varphi}_s+\epsilon\,\mathcal{U}_s h+O(\epsilon^{2}).
$$


$\mathcal{U}_s$ 就是**诱导的扰动映射**：把背景 $\bar{\varphi}$ 上的扰动 $h$ 搬到背景 $\bar{\varphi}_s$ 上的扰动 $\mathcal{U}_s h$。它不是人为挑的，而是被 $s$ 在背景附近线性化**唯一确定**。

- 共形变换 $g\to\Omega^{2}g$：作用到扰动上即 $\delta g_{\mu\nu}\to\Omega^{2}\delta g_{\mu\nu}$（论文里的 $\mathcal{T}_C$）。
- $A_\mu\to-A_\mu$：度规扰动**不动**，电磁扰动**变号**。

##### (c) "完整"包含三件事（缺一不可）

论文证明中那句 "The perturbation spaces retain all linearized constraints, and solutions differing only by allowed pure gauge perturbations are identified as the same physical solution" 说的就是这三条：

1. **所有自由度支都要在**。高阶导数理论的解空间比 Einstein 引力多：纯 Weyl 引力 = 无质量 spin-2（Regge–Wheeler）**+ spin-1 支**；$f(R)$ 再加 massive spin-0 支（$X=\delta R$）；$R+\alpha R^{2}+\beta R_{\mu\nu}R^{\mu\nu}$ 再加 massive spin-2 支（$Y_{\mu\nu}$）。若映射只搬 RW 支而漏掉 spin-1，就**不是**完整映射，定理前提不满足——这正是论文批评"用一个 Regge–Wheeler 方程算纯 Weyl 轴向谱"之处。
2. **线性化约束要保留**。
3. **商掉纯规范**：只差纯规范变换的解算同一个物理解。

##### (d) 映射其实是一个"三元组"

在频率域（写 $h=e^{-\mathrm{i}\omega t}\Phi$，此步要求 $s$ **保持时间平移及其归一化**，故 $\omega$ 不变）：$\mathcal{U}_s(e^{-\mathrm{i}\omega t}\Phi)=e^{-\mathrm{i}\omega t}\mathcal{T}_s(\omega)\Phi$。论文证明核心（式(4)）：


$$
\mathcal{L}_s(\omega)\,\mathcal{T}_s(\omega)=\mathcal{W}_s(\omega)\,\mathcal{L}_0(\omega).
$$


它同时用到三个映射：**扰动映射** $\mathcal{T}_s$、**方程映射** $\mathcal{W}_s$（由式(2) 诱导）、**背景映射** $\bar{\varphi}\to\bar{\varphi}_s$。

于是：若 $\Phi$ 满足 $\mathcal{L}_0(\omega)\Phi=0$ 且满足背景 0 的 QNM 边界条件，则 $\mathcal{T}_s(\omega)\Phi$ 自动满足 $\mathcal{L}_s(\omega)\tilde{\Phi}=0$ 及背景 $s$ 的边界条件；用逆变换 $s^{-1}$ 反向同理 ⇒ **物理 QNM 一一对应**（式(5)）：


$$
\operatorname{Spec}_{\rm QNM}(\mathcal{L}_s)=\operatorname{Spec}_{\rm QNM}(\mathcal{L}_0).
$$


式(6) 进一步给 Green 函数关系 $\mathcal{G}_s(\omega)=\mathcal{T}_s(\omega)\,\mathcal{G}_0(\omega)\,\mathcal{W}_s^{-1}(\omega)$：若 $\mathcal{T}_s,\mathcal{W}_s$ 及其逆在考虑频域内**解析**，它们既不产生新极点、也消不掉最高阶极点系数 ⇒ **极点位置与阶数都不变**（故论文能说 Regge–Wheeler 的**二阶极点**在共形变换下不被改变）。

> **一句话**：完整物理扰动映射 = 对称变换 $s$ 在两个黑洞背景附近线性化后，在"保留全部约束、含全部自由度支、商掉纯规范"的物理扰动空间之间建立的、保持频率 $\omega$ 的线性同构。

#### 3. "QNM 边值问题定义域"

##### (a) QNM 本身就是一个边值问题（BVP）

径向主变量满足类 Schrödinger 方程 $\dfrac{\mathrm{d}^2\Psi}{\mathrm{d}r_*^2}+[\omega^2-V(r)]\Psi=0$，$\dfrac{\mathrm{d}r_*}{\mathrm{d}r}=\dfrac{1}{f(r)}$，加两端边界条件（视界纯入射；渐近平直纯出射 / AdS 正则 Dirichlet）。只在**离散复频率** $\omega$ 上有非零解 ⇒ 这些 $\omega$ 就是 QNM。（定义细节见 2609.20382 笔记 Q1。）

##### (b) "定义域"包括什么

数学上，微分算子 $\mathcal{L}$ 的"定义域"是它**作用的那族函数**；对 BVP 来说由四点共同刻死：

| 组成 | 具体指 |
|---|---|
| **区域** | 径向坐标从视界（或反射面）到渐近边界的区间 |
| **端点** | 两端**在哪里**（$r_h$？无穷远？AdS 边界？有限点？） |
| **边界条件** | 每端对解的要求（纯入射 / 纯出射 / 正则 / 部分反射……），含允许的渐近主导支 |
| **函数空间** | 区域内正则、满足线性化约束、商掉纯规范的"物理解"集合 |

**核心事实：同一个微分表达式配上不同的定义域 = 不同的谱问题，谱就不同。** 定理要求的正是：$\mathcal{T}_s$ 必须是两个**定义域之间**的双射，而不只是两个方程之间的。

##### (c) 为什么这条是"杀手条件"——论文的反例

Mannheim–Kazanas ↔ Schwarzschild 的共形变换（$\hat{\Lambda}=0$ 时共形因子 $C=(1-a\rho)^{-1}$，p23.1）：

- $C$ 在 $\rho_b=1/a$ **发散**；
- 它把 Mannheim–Kazanas 的**空间无穷远**映到 Schwarzschild 外部的**有限点** $\rho_b$；
- 于是**一边的边界是"无穷远"，另一边对应的边界变成"有限点 $\rho_b$"**，而 $\rho_b$ 处的渐近行为完全不是无穷远处的行为。

⇒ 两个 BVP **定义域不同** ⇒ 局部方程映射（桥梁）不足以建立等谱 ⇒ **不保证等谱**。

反过来，论文里成功的例子（Schwarzschild–(A)dS 内部的共形变换，p20.3）：共形因子 $\mathcal{T}_C$ 及其逆在**视界外部与边界处都非奇异、且与 $\omega$ 无关** ⇒ **保持住边界条件** ⇒ 定理条件满足 ⇒ 等谱（连极点阶数都不变）。

这也澄清了论文要解决的矛盾："共形相关黑洞的 QNM 谱有的依赖共形因子、有的不依赖"**不是同一谱问题的分歧**，而是不同工作算的是**不同的扰动动力学**（漏支）或**不同的边界条件**（定义域不同）。

#### 4. 三词串联

> 取**同一作用量**的两个黑洞解，相差一个**对称变换 $s$**（第 1 节）。把 $s$ 在两背景附近线性化得扰动空间之间的**完整物理扰动映射** $\mathcal{T}_s$（第 2 节）。**只有当**它是两端 **QNM 边值问题定义域**（区域端点 + 边界条件 + 物理解空间）之间的**双射**、且保持时间归一化时（第 3 节），两黑洞才**同谱**；映射及其逆解析时连**极点位置与阶数**也相同。少任一条件，局部方程映射就只是"局部"的，谱可完全不同。
