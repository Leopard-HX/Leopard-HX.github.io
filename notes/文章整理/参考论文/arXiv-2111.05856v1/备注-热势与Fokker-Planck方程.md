---
title: "备注：黑洞热势与 Fokker–Planck 方程"
folder: "文章整理/参考论文/arXiv-2111.05856v1"
---

**arXiv:2111.05856v1 [gr-qc]**

> **引用体例说明**：本文档中每一句总结都紧跟着对应的**原文英文摘录**（引号内为 arXiv 原文，未做改写），并在括号中标注出处（章节 / 式号 / 表号）。
>
> **原文来源**：https://arxiv.org/abs/2111.05856 ｜ 全文：https://arxiv.org/html/2111.05856v1 ｜ 本目录 PDF：[`2111.05856v1.pdf`](/notes/文章整理/参考论文/arXiv-2111.05856v1/2111.05856v1.pdf)
>
> **与其它笔记的关系**：本篇是 `arXiv-2211.03512v2/总结-电荷AdS黑洞相变速率.md` 参考文献 **[40]** 的原文；2211 的 (7) 式

$$
f(x)=\int(T_h-T)\,\mathrm{d}S
$$

即取自本文 (1) 式。

---

## 一、元信息

| 项 | 内容 | 原文引用 |
| --- | --- | --- |
| 标题 | Fokker-Planck equation for black holes in thermal potential | > 原文标题即为 "Fokker-Planck equation for black holes in thermal potential" |
| 作者 | Zhen-Ming Xu（徐振明） | > "Zhen-Ming Xu" |
| 单位 | 西北大学现代物理研究所、物理学院、陕西省理论物理前沿重点实验室、彭桓武理论物理中心 | > "1Institute of Modern Physics, Northwest University, Xi'an 710127, China 2School of Physics, Northwest University, Xi'an 710127, China 3Shaanxi Key Laboratory for Theoretical Physics Frontiers, Xi'an 710127, China 4Peng Huanwu Center for Fundamental Theory, Xi'an 710127, China" |
| 期刊 | Phys. Rev. D **104**, 104022 (2021) | > arXiv 记录："Journal ref: Phys. Rev. D 104 (2021) 104022"；DOI "10.1103/PhysRevD.104.104022" |
| 篇幅 | 10 页 | > arXiv 记录："10 pages, published in Phys. Rev. D" |
| 投稿 | 2021-11-10 | > arXiv 记录："Submitted 10 November, 2021" |
| 分类 | gr-qc；hep-th | > arXiv 记录："Subjects: General Relativity and Quantum Cosmology (gr-qc); High Energy Physics - Theory (hep-th)" |

---

## 二、摘要（Abstract）

1. **核心构造**：构造一种热势，并把黑洞热力学系统置于其中。
   > 原文："We construct a kind of thermal potential and then put the black hole thermodynamic system in it."

2. **几何对应**：黑洞的一些热力学性质与热势的几何特征相关联。
   > 原文："In this regard, some thermodynamic properties of the black hole are related to the geometric characteristics of the thermal potential."

3. **随机性**：在内在热力学涨落驱动下，黑洞在热势中的行为是随机的。
   > 原文："Driven by the intrinsic thermodynamic fluctuations, the behavior of the black hole in the thermal potential is stochastic."

4. **方法**：通过解析求解 Fokker–Planck 方程，得到 Schwarzschild 与 BTZ 黑洞在热势中的离散能谱。
   > 原文："With the help of solving the Fokker-Planck equation analytically, we obtain the discrete energy spectrum of Schwarzschild and Banados–Teitelboim–Zanelli (BTZ) black holes in the thermal potential."

5. **Schwarzschild 结果**：能谱正比于系综温度（外部参数），基态非零。
   > 原文："For Schwarzschild black hole, the energy spectrum is proportional to the temperature of the ensemble, which is an external parameter, and the ground state is non-zero."

6. **BTZ 结果**：能谱只依赖 AdS 半径（内禀参数），基态为零。
   > 原文："For BTZ black hole, the energy spectrum only depends on the AdS radius, which is the intrinsic parameter. Moreover, the ground state of BTZ black hole in thermal potential is zero."

7. **意义**：这反映了三维引力与四维引力的差异。
   > 原文："This also reflects the difference between three-dimensional gravity and four-dimensional gravity."

---

## 三、热势的构造（Sec. II Thermal potential）

8. **系综设定**：考虑温度为 $T$ 的正则系综，由大量态组成，其中一个或一组态代表真实黑洞。
   > 原文："Consider a canonical ensemble at temperature $T$ composed of a large number of states in which one or a group of them can represent a real black hole."

9. **on-shell / off-shell**：真实黑洞态（on-shell）是 Einstein 场方程的解，其它态（off-shell）不是。
   > 原文："The real black hole state (on-shell) is the solution of the Einstein field equation while others (off-shell) are not."

10. **平衡条件**：当系综温度 $T$ 等于 Hawking 温度 $T_h$ 时，系综由真实黑洞态组成，处于平衡。
    > 原文："When the ensemble temperature $T$ is equal to the Hawking temperature $T_h$, the ensemble is made up of real black hole states, which is in equilibrium."

11. **热势定义（本文式 (1)，即 2211 的 (7) 式）**：

    $$
    U=\int(T_h-T)\,\mathrm{d}S\qquad\text{(原文式 (1))}
    $$

    > 原文："For a specific black hole thermodynamic system, we can construct the thermal potential"；"

    $$
    U=\int(T_h-T)\,\mathrm{d}S
    $$

    "

12. **积分变量与状态方程**：熵 $S$ 视为变量；$T_h=t(S,Y)$ 是熵与其它参数（AdS 半径 $l$、电荷 $Q$、角动量 $J$ 等）满足的关系；系综温度 $T$ 是独立常数，可取任意正值。
    > 原文："where the thermodynamic entropy $S$ of the black hole is seen as a variable. For black holes, we know $T_h=t(S,Y)$, where the function $t(S,Y)$ is the relation satisfied by thermodynamic entropy $S$ and other parameters $Y$ of the black hole, like the AdS radius $l$, charge $Q$, angular momentum $J$, etc. The ensemble temperature $T$ now here is treated as an independent constant, which can take any positive value in any way."

13. **物理含义**：被积函数 $(T_h-T)$ 可理解为系综中所有可能态偏离真实黑洞态（平衡态）的程度。
    > 原文："The integrand in the above definition (1) of thermal potential can be understood as the deviation of all possible states in the canonical ensemble from the real black hole state (or the equilibrium state)."

14. **极值条件**：平衡态对应热势的极值，即

    $$
    \mathrm{d}U/\mathrm{d}S=0\Rightarrow T=T_h.
    $$

    > 原文："in the equilibrium state, the thermal potential will show extreme behavior, i.e.,"；"

    $$
    \mathrm{d}U/\mathrm{d}S=0\Rightarrow T=T_h
    $$

    "（原文式 (2)）

15. **稳定性判据**：极值点的凹凸性与热力学稳定性相关；$\partial t(S,Y)/\partial S>0$ 稳定，$<0$ 不稳定。
    > 原文："the concavity and convexity at the extreme point are related to the stability of the thermodynamic system"；"When $\partial t(S,Y)/\partial S>0$, the thermodynamic system is in a stable state, while $\partial t(S,Y)/\partial S<0$ corresponds to an unstable state."（原文式 (3) 后）

16. **与第一定律的关系**：由

    $$
    \mathrm{d}E=T_h\,\mathrm{d}S-P\,\mathrm{d}V
    $$

    可得热势等于 $E+PV-TS$。
    > 原文："according to the first law of thermodynamics

    $$
    \mathrm{d}E=T_h\,\mathrm{d}S-P\,\mathrm{d}V
    $$

    , where $E$ is the internal energy, $P$ is the pressure, and $V$ is the thermodynamic volume of the system, we have"；"

    $$
    U=\int(T_h-T)\,\mathrm{d}S=E+PV-TS
    $$

    "（原文式 (4)）

17. **与自由能图景的关系**：形式上，本文构造的热势等价于自由能图景中的 off-shell 自由能。
    > 原文："Formally, we can see that the thermal potential constructed in this paper is equivalent to the off-shell free energy in the free energy landscape [Li2020]."

---

## 四、Fokker–Planck 方程（Sec. III）

18. **随机过程描述**：黑洞态在热涨落下的概率分布 $W(x,t)$ 由 Fokker–Planck 方程描述。
    > 原文："The probability distribution $W(x,t)$ of these black hole states (including on shell states and off-shell states) evolving in time under the thermal fluctuation should be described by the probabilistic Fokker-Planck equation"

19. **方程形式**：一维 Fokker–Planck 方程（漂移系数 $D^{(1)}(x)$、常数扩散系数 $D$）：

    $$
    \frac{\partial W}{\partial t}=\left[\frac{\partial}{\partial x}f'(x)+D\frac{\partial^2}{\partial x^2}\right]W=L_{\rm FP}W=-\frac{\partial}{\partial x}S(x,t)\qquad\text{(原文式 (5))}
    $$

    > 原文："One-variable Fokker-Planck equation with time-independent drift coefficient $D^{(1)}(x)$ and constant diffusion coefficient $D$ is"

20. **本征值问题**：分离变量 $W=\varphi(x)e^{-\varepsilon t}$ 得 $L_{\rm FP}\varphi=-\varepsilon\varphi$（原文式 (6)）。
    > 原文："A separation ansatz for probability density $W(x,t)=\varphi(x)e^{-\varepsilon t}$ leads to the eigenvalue equation for the Fokker-Planck equation with appropriate boundary conditions"

21. **Hermitian 化**：引入 $\Phi(x)=f(x)/D$，

    $$
    L_{\rm FP}=\partial_x D e^{-\Phi}\partial_x e^{\Phi}
    $$

    （原文式 (7)），并构造 Hermitian 算子 $L=-e^{\Phi/2}L_{\rm FP}e^{-\Phi/2}$，本征方程 $L\psi=\varepsilon\psi$（原文式 (8)）。
    > 原文："For convenience, we introduce $\Phi(x)=f(x)/D$ resulting that the Fokker-Planck operator $L_{\rm FP}$ can be written as"；"Easily, we can obtain an Hermitian operator

    $$
    L:=-e^{\Phi(x)/2}L_{\rm FP}e^{-\Phi(x)/2}
    $$

    and the eigenvalue equation (6) becomes"

22. **等效量子力学形式**：$L=-D\partial_x^2+V_s(x)$，其中

    $$
    V_s(x)=\frac{1}{4D}[f'(x)]^2-\frac{1}{2}f''(x)
    $$

    （原文式 (9)）。
    > 原文："the Hermitian operator $L$ has the same form as the single-particle Hamilton operator in quantum mechanics,"；"

    $$
    L=-D\partial_x^2+V_s(x),\;V_s(x)=\frac{1}{4D}[f'(x)]^2-\frac{1}{2}f''(x)
    $$

    "

23. **边界条件**：反射边界（RBC）、吸收边界（ABC）、自然边界（NBC）三种。
    > 原文："Reflecting boundary condition (RBC): in the region $x>x_{\max}$ or $x<x_{\min}$, the potential $\Phi(x)$ tends to an infinite high positive value, which requires $S=0$."；"Absorbing boundary condition (ABC): ... which requires $e^{\Phi}W=0$."；"Natural boundary condition (NBC): for $x_{\max}\to+\infty$ and $x_{\min}\to-\infty$, we have $S=0$ or $e^{\Phi}W=0$."

---

## 五、两个算例

24. **Schwarzschild 黑洞**：

    $$
    T_h=\frac{1}{4\pi r_h}
    $$

    、$S=\pi r_h^2$（原文式 (11)），热势

    $$
    U=\frac{1}{2}r_h-\pi T r_h^2
    $$

    （原文式 (12)），为倒谐振子势（inverted harmonic oscillator potential）。
    > 原文："$T_h=\frac{1}{4\pi r_h},\;S=\pi r_h^2$"；"In the light of Eq. (1), we can obtain the thermal potential of the Schwarzschild black hole easily"；"

    $$
    U=\frac{1}{2}r_h-\pi T r_h^2
    $$

    "；"It is the inverted harmonic oscillator potential or parabolic potential barrier"

25. **Schwarzschild 能谱**：$\varepsilon_n=2\pi T(n+1)$，$n=0,1,2,\cdots$（原文式 (15)），基态 $\varepsilon_0=2\pi T$（原文式 (17)）；当 $T=T_h=1/(8\pi M)$ 时

    $$
    \varepsilon_n=\frac{n+1}{4M}
    $$

    （原文式 (21)）。
    > 原文："$\varepsilon_n=2\pi T(n+1),\;n=0,1,2,\cdots$"；"$\varepsilon_0=2\pi T$"；"

    $$
    \varepsilon_n=\frac{n+1}{4M},\;n=0,1,2,\cdots
    $$

    "

26. **BTZ 黑洞**：

    $$
    T_h=\frac{r_h}{2\pi l^2}
    $$

    、$S=\frac{1}{2}\pi r_h$（原文式 (23)），热势

    $$
    U=\frac{r_h^2}{8l^2}-\frac{\pi T}{2}r_h
    $$

    （原文式 (24)），为谐振子势（harmonic oscillator potential）。
    > 原文："$T_h=\frac{r_h}{2\pi l^2},\;S=\frac{1}{2}\pi r_h$"；"With the help of Eq. (1), we can obtain the thermal potential of the BTZ black hole"；"

    $$
    U=\frac{r_h^2}{8l^2}-\frac{\pi T}{2}r_h
    $$

    "；"Obviously, BTZ black hole is in harmonic oscillator potential"

27. **BTZ 能谱**：

    $$
    \varepsilon_n=\frac{n}{4l^2},
    $$

    $n=0,1,2,\cdots$（原文式 (27)），基态 $\varepsilon_0=0$。
    > 原文："$\varepsilon_n=\frac{n}{4l^2},\;n=0,1,2,\cdots$"；"the ground state is zero, i.e., $\varepsilon_0=0$."

28. **Table 1**：列出若干简单黑洞的热势表达式，含 Schwarzschild-AdS、Reissner–Nordström、**Charged AdS**、Charged BTZ、Rotating BTZ。
    > 原文 Table 1 标题："The expressions of thermal potential of several simple black holes."；表内条目："Schwarzschild-AdS black hole / Reissner-Nordström black hole / Charged AdS black hole / Charged BTZ black hole / Rotating BTZ black hole"

---

## 六、文件清单

本目录实际存在的文件：

- [`2111.05856v1.pdf`](/notes/文章整理/参考论文/arXiv-2111.05856v1/2111.05856v1.pdf)：arXiv 官方 PDF（正文与公式的依据）
- `2111.05856v1.html`：arXiv LaTeXML HTML 全文（图形为 arXiv 绝对地址，需联网显示）
- `备注-热势与Fokker-Planck方程.md`：本笔记

---

## 问答记录

> **问答索引**（交叉跳转用；正文相关处也标了"见 Qx"，便于单条独立阅读）
>
> | 编号 | 主题 | 它在展开谁 |
> | --- | --- | --- |
> | **Q1** | 2211.03512 的 (7) 式来源 = 本文 (1) 式 | —（独立） |
> | **Q2** | 倒谐振子势是什么意思（热势 $f$ / $V_s$ 的形状） | —（独立） |
> | **Q3** | Q2 中反复出现的 Fokker–Planck 方程是什么 | Q2 |

---

### Q1. (7) 式怎么来的？拉取参考文献并给出摘要，每一句话都要有引用等证据（2026-09-14）

**问题**：`arXiv-2211.03512v2` 的 (7) 式怎么来的？拉取参考文献并给出摘要，每一句话都要有引用等证据。

**解答**：

#### 1. 文献定位

2211.03512 的参考文献 [40] 是：

> **Zhen-Ming Xu, "Fokker-Planck equation for black holes in thermal potential", Phys. Rev. D 104, 104022 (2021); arXiv:2111.05856 [gr-qc].**

证据：arXiv 检索页显示该文 `Authors: Zhen-Ming Xu`，`Journal ref: Phys. Rev. D 104 (2021) 104022`，`Submitted 10 November, 2021`。而 2211.03512 正文写的是 "the thermal potential we constructed in [40]"（Sec. I 末段），且 [40] 条目正是 "Z.-M. Xu, Fokker-Planck equation for black holes in thermal potential, Phys. Rev. D 104, 104022 (2021)"。

#### 2. 摘要（每句附原文证据）

见本笔记第二至五节，逐句对应原文摘录。

#### 3. (7) 式的来源

**结论：2211.03512 的 (7) 式就是本文 (1) 式，原样搬用，只把符号 $U$ 改成了 $f$。**

| 2211.03512 | 本文（arXiv:2111.05856） |
|---|---|
| (7) $f(x)=\int(T_h-T)\,\mathrm{d}S$ | (1)

$$
U=\int(T_h-T)\,\mathrm{d}S
$$

|

证据链：

1. 2211.03512 Sec. II 明确说这是"我们之前工作中构造的热势"：
   > "In our previous work [40], we consider a canonical ensemble composed of a large number of states (on-shell black hole states and off-shell other unknown states) and construct the thermal potential:" 紧接着就是 (7) 式。

2. 这段话与本文 Sec. II 开头几乎逐字相同（见本笔记第 8、9 条）。

3. 2211.03512 对 (7) 式的解释——"当 $T=T_h$ 时系综由 on-shell 黑洞态组成并处于平衡；当 $T\neq T_h$ 时所有态偏离 on-shell 态"——也与本文 Sec. II 的表述一致（第 10、12、13 条）。

4. 2211.03512 说"the ensemble temperature $T$ can take any positive value in any way"，同样对应本文的 "The ensemble temperature $T$ now here is treated as an independent constant, which can take any positive value in any way"（第 12 条）。

#### 4. 从 (7) 到 (8) 的积分验证

把 2211 的 (2)(3)(5)(6) 代入 (7) 并积分，确实得到 (8) 式：

**第一步：$\int T_h\,\mathrm{d}S=M.$** 由

$$
S=\pi r_h^2\Rightarrow \mathrm{d}S=2\pi r_h\,\mathrm{d}r_h,
$$

以及 $T_h=\frac{1}{4\pi r_h}\left(1+8\pi P r_h^2-\frac{Q^2}{r_h^2}\right)$：


$$
\int T_h\,\mathrm{d}S=\int\frac{1}{4\pi r_h}\left(1+8\pi P r_h^2-\frac{Q^2}{r_h^2}\right)2\pi r_h\,\mathrm{d}r_h=\frac{1}{2}\left(r_h+\frac{8\pi P}{3}r_h^3+\frac{Q^2}{r_h}\right)=M
$$


最后一步正是 2211 的 (1) 式，即第一定律 $\mathrm{d}M=T_h\,\mathrm{d}S$。

**第二步：$\int T\,\mathrm{d}S=TS.$** 因为系综温度 $T$ 是独立常数（第 12 条），可提出积分号：

$$
\int T\,\mathrm{d}S=TS=T\pi r_h^2.
$$


**第三步：合起来即 off-shell 自由能。**

$$
f=\int(T_h-T)\,\mathrm{d}S=M-TS,
$$

与本文 (4) 式 $U=E+PV-TS$ 一致（对带电 AdS 黑洞 $E+PV=M$，即焓），也与 2211 的 (4) 式 $G=M-T_hS$ 在 $T\to T_h$ 时吻合。

**第四步：无量纲化得 (8) 式。** 用 $r_h=x\sqrt6 Q$、$P=p/(96\pi Q^2)$、$T=t\sqrt6/(18\pi Q)$：


$$
M=\frac{\sqrt6 Q x}{2}+\frac{\sqrt6 Q x^3}{12}+\frac{\sqrt6 Q}{12x},\qquad TS=\frac{\sqrt6 Q}{3}t x^2
$$



$$
f=M-TS=\frac{\sqrt6 Q}{3}\left(\frac{1}{4x}+\frac{3x}{2}+\frac{px^3}{4}-tx^2\right)=\frac{\sqrt6 Q}{3}\psi(x)
$$


与 2211 的 (8) 式完全一致。✓

#### 5. 小结

- (7) 式**不是** 2211.03512 原创，而是直接引用其前作 [40]（本文）的 (1) 式；
- 该式的物理动机是"用系综温度 $T$ 与 Hawking 温度 $T_h$ 之差对熵积分，度量偏离平衡态的程度"；
- 它等价于 off-shell 自由能 $M-TS$，其极值点给出平衡条件 $T=T_h$，凹凸性给出稳定性判据；
- 对带电 AdS 黑洞积分后即得 (8) 式的 $\psi(x)$。

---

### Q2. 倒谐振子势是什么意思（2026-09-14）

**问题**：倒谐振子势是什么意思？

**解答**：

#### 1. 定义

**倒谐振子势（inverted harmonic oscillator potential）= 把谐振子势的符号翻转**，即开口向下的抛物线，也叫**抛物势垒**（parabolic barrier）。

| | 势 | 形状 | 顶点 |
| --- | --- | --- | --- |
| 谐振子 | $V=\tfrac12 m\omega^2x^2$ | 开口向上 | 极小（稳定） |
| **倒谐振子** |

$$
V=-\tfrac12 m\omega^2x^2
$$

| **开口向下** | **极大（不稳定）** |

#### 2. 物理含义

**经典力学**：回复力 $F=-V'=-m\omega^2x$ 变成"反回复力" $F=+m\omega^2x$——离顶点越远，力越大且方向朝外。解为

$$
x(t)=x_0\cosh(\omega t)+\frac{v_0}{\omega}\sinh(\omega t),
$$

任何扰动都**指数发散**，$\omega$ 即 Lyapunov 指数。普通谐振子是稳定振荡，倒谐振子是"越偏越跑"。

**量子力学**：抛物势垒没有束缚态、只有连续谱的散射态；它是量子隧穿、量子混沌（Maldacena 混沌界）、视界附近不稳定性的标准玩具模型。

#### 3. 在本文语境中的确切含义

论文说的"倒谐振子"指**热势 $f$ 本身**（布朗粒子所感受到的势）。原文紧接式 (12) 写道：

> "It is the inverted harmonic oscillator potential or parabolic potential barrier"（Sec. III.1，式 (12) 之后；对应本笔记第 24 条）

**Wolfram 核验（3 条）**：

1. **$f''<0$ → 开口向下**：

   $$
   f=\frac{r_h}{2}-\pi Tr_h^2,
   $$

   $f''=-2\pi T<0$ ✓
2. **顶点恰是平衡点**：

   $$
   f'=0\Rightarrow r_h=\frac{1}{4\pi T},
   $$

   代回 $T_h=\frac{1}{4\pi r_h}=T$ ✓ 正是式 (2) 的极值条件 $T=T_h$
3. **顶点是极大 → 不稳定**，与第 15 条判据 $\partial T_h/\partial S<0\Rightarrow$ unstable 一致

**与 BTZ 对比（式 (24)，本笔记第 26 条）**：

$$
U=\frac{r_h^2}{8l^2}-\frac{\pi T}{2}r_h,
$$

二次项系数 $+\frac{1}{8l^2}>0$ → 开口向上 → 谐振子势 → 稳定。顶点 $r_h=2\pi Tl^2$ 同样给出 $T_h=T$ ✓

**判据**：看 $f''$ 的符号。$f''<0$ → 倒谐振子 → 不稳定（Schwarzschild，负比热）；$f''>0$ → 谐振子 → 稳定（BTZ）。摘要那句 "reflects the difference between three-dimensional gravity and four-dimensional gravity" 讲的就是这件事（本笔记第 7 条）。

#### 4. 一个容易混淆的点（重要）

**热势 $f$ 是倒谐振子（开口向下），但 Hermitian 化后的有效势 $V_s$ 是开口向上的谐振子井**（Hermitian 化这一步来自 Fokker–Planck 方程，**该方程是什么？见 Q3**），两者不矛盾：


$$
V_s=\frac{1}{4D}(f')^2-\frac{1}{2}f''
$$


抛物情形下 $(f')^2\propto z^2$ 永远压过

$$
-\frac{f''}{2}
$$

（常数）。Wolfram 核验得


$$
V_s=\pi T+\frac{\pi^2T^2}{D}z^2,\qquad z=r_h-\frac{1}{4\pi T}
$$


——**开口向上**。所以"势垒"体现在 $f$ 上，"势阱"体现在 $V_s$ 上。

顺带：井底被抬高

$$
\pi T=-\frac{f''}{2},
$$

正因为 $f''<0$（倒谐振子），这个抬升才为正，于是

> "The system has non-zero ground state, which is the characteristic of the inverted harmonic oscillator potential."（Sec. III.1 bullet）

——**基态非零正是倒谐振子形状的印记**（本笔记第 25 条：$\varepsilon_0=2\pi T\neq0$）。

#### 5. 技术后果（原文式 (13)–(18)）

用辅助变量 $\xi=\sqrt{\pi T/D}\,z$ 把本征方程化为式 (14)：


$$
\frac{\partial^2}{\partial\xi^2}\psi+\left(\frac{\varepsilon}{\pi T}-1-\xi^2\right)\psi=0
$$


给出离散谱（Wolfram 核验 $\varepsilon=2\pi T(n+1)$ ✓）：


$$
\varepsilon_n=2\pi T(n+1),\qquad \varepsilon_0=2\pi T\neq 0
$$


论文还指出 $\varepsilon_n\propto\lambda^2$，$\lambda=2\pi T$ 正是该倒谐振子的 Lyapunov 指数（本笔记第 25 条）。

#### 6. 诚实的 caveat

倒谐振子通常**没有稳态、只有连续谱**。本文得到离散谱是特定边界条件（ABC + NBC）的产物，论文自己也承认（**这里出现的 Fokker–Planck 方程是什么？见 Q3**）：

> "we have known that for the inverted harmonic oscillator potential, no stationary exists for the Fokker-Planck equation. However, when we consider ABC and NBC at $x\to x_{\max},x_{\min}\to\pm\infty$, eigenfunctions can do exist (the probability current $S$ for these eigenfunctions is finite), and they can be used to calculate the transition probability."（Sec. III.1 bullet）

#### 7. 小结

- 倒谐振子势 = 开口向下的抛物线（抛物势垒），顶点为极大、不稳定；
- 本文里它指热势 $f$（式 (12)）的形状：$f''=-2\pi T<0$，极大点

  $$
  r_h=\frac{1}{4\pi T}
  $$

  恰给出 $T_h=T$；
- 与 BTZ 的谐振子势（式 (24)，$f''>0$）形成对比，对应四维黑洞不稳定、三维黑洞稳定；
- Hermitian 化后的 $V_s$ 反而是谐振子井，但井底被抬高

  $$
  -\frac{f''}{2}>0,
  $$

  导致基态非零。

---

### Q3. Fokker–Planck 方程是什么（2026-09-14）

**问题**：Fokker–Planck 方程是什么？

> **本条定位**：这是 **Q2 第 4、6 节**中反复出现但未展开的对象的说明（Q2 相关处已补「见 Q3」）。

**解答**：

#### 1. 定义

**Fokker–Planck 方程是描述"带噪声的确定性运动"中概率密度如何随时间演化的偏微分方程**，是随机微分方程（Langevin 方程）在概率层面的等价物，又称**前向 Kolmogorov 方程**。名字来自 Adriaan Fokker（1914）与 Max Planck（1917）。

本文原文 Sec. III 的表述：

> "The probability distribution $W(x,t)$ of these black hole states (including on shell states and off-shell states) evolving in time under the thermal fluctuation should be described by the probabilistic Fokker-Planck equation (or in the mathematical literature, it is also called a forward Kolmogorov equation)."

#### 2. 一般形式

一维：


$$
\frac{\partial W(x,t)}{\partial t}=-\frac{\partial}{\partial x}\Big[A(x)W\Big]+\frac{\partial^2}{\partial x^2}\Big[B(x)W\Big]
$$


物理上常写成"力 + 噪声"形式：


$$
\frac{\partial W}{\partial t}=-\frac{\partial}{\partial x}\Big[\frac{F(x)}{\gamma}W\Big]+D\,\frac{\partial^2 W}{\partial x^2}
$$


- **漂移项**：确定性力 $F$ 把概率密度推向势能低处（$v=F/\gamma$，$\gamma$ 为摩擦系数）
- **扩散项**：随机噪声把分布抹平（$D$ 为扩散系数）

#### 3. 从 Langevin 方程来

微观方程为 Langevin 方程


$$
\gamma\frac{\mathrm{d}x}{\mathrm{d}t}=F(x)+\eta(t),\qquad \langle\eta(t)\eta(t')\rangle=2\gamma^2D\,\delta(t-t')
$$


即"确定性力 + 白噪声"。**对随机轨迹做系综平均，得到的概率密度演化方程即 Fokker–Planck 方程**。前提：马尔可夫性 + Gaussian 白噪声。

#### 4. 本文的写法（式 (5)）

论文取势 $f$，令 $f'(x)$ 为力的负值，原文式 (5)：


$$
\frac{\partial W}{\partial t}=\left[\frac{\partial}{\partial x}f'(x)+D\frac{\partial^2}{\partial x^2}\right]W=L_{\rm FP}W=-\frac{\partial}{\partial x}S(x,t)
$$


对照一般形式可知 **$f$ 就是布朗粒子感受到的势**（$v=-f'$），$S(x,t)$ 为概率流。原文："where $S(x,t)$ is the probability current, the potential

$$
f(x)=-\int^x D^{(1)}(y)dy
$$

and $f'(x):=\mathrm{d}f(x)/\mathrm{d}x$."

**Wolfram 核验**：式 (7) 的算子恒等式

$$
L_{\rm FP}=\partial_x D e^{-\Phi}\partial_x e^{\Phi}
$$

（其中 $\Phi=f/D$）残差为 **0** ✓（即与 $D\partial_x^2+\partial_x f'$ 完全等价）。

#### 5. 稳态解 = Boltzmann 分布

令 $\partial_tW=0$ 且反射边界（净流为零）：

$$
f'W+DW'=0\Rightarrow W_{\rm eq}\propto e^{-f(x)/D}=e^{-\Phi(x)}.
$$


**Wolfram 核验**：`DSolve` 通解为

$$
W(x)=\big(C_2+\int e^{f(\xi)/D}C_1\,\mathrm{d}\xi\big)\big/e^{f(x)/D},
$$

确实含 $e^{-f/D}$ 这一支 ✓。

物理含义：这正是 **Boltzmann 分布**，$D$ 扮演 $k_BT$ 的角色（Einstein 关系 $D=k_BT/\gamma$），于是 $e^{-\Delta f/D}$ 就是 Arrhenius/Boltzmann 因子。

#### 6. 本文的关键技巧：转成本征值问题（式 (6)–(9)）

**第一步**：分离变量 $W=\varphi(x)e^{-\varepsilon t}$，得 $L_{\rm FP}\varphi=-\varepsilon\varphi$（式 (6)）。原文："A separation ansatz for probability density $W(x,t)=\varphi(x)e^{-\varepsilon t}$ leads to the eigenvalue equation for the Fokker-Planck equation with appropriate boundary conditions"。

**第二步（Hermitian 化）**：引入 $\Phi=f/D$，原文式 (7)："For convenience, we introduce $\Phi(x)=f(x)/D$ resulting that the Fokker-Planck operator $L_{\rm FP}$ can be written as"；再做相似变换 $L:=-e^{\Phi/2}L_{\rm FP}e^{-\Phi/2}$、$\psi=e^{\Phi/2}\varphi$，得自伴算子本征方程 $L\psi=\varepsilon\psi$（式 (8)）。

**第三步**：原文式 (9)："the Hermitian operator $L$ has the same form as the single-particle Hamilton operator in quantum mechanics,"


$$
L=-D\frac{\partial^2}{\partial x^2}+V_s(x),\qquad V_s(x)=\frac{1}{4D}\big[f'(x)\big]^2-\frac{1}{2}f''(x)
$$


**Wolfram 核验**：式 (9) 恒等式残差为 **0** ✓。于是"解 FP 方程"变成"解一维定态薛定谔方程"。

**对 Schwarzschild**：

$$
f=\frac{x}{2}-\pi Tx^2,
$$

核验得 $V_s=\pi T+\frac{\pi^2T^2}{D}z^2$（

$$
z=x-\frac{1}{4\pi T}
$$

），是开口向上的谐振子井，故有离散谱 $\varepsilon_n=2\pi T(n+1)$。井底抬高 $\pi T$ 即

$$
-\frac{f''}{2}>0,
$$

与 Q2 第 4 点的讨论一致。

#### 7. 边界条件（式 (5) 后）

原文：

> "Reflecting boundary condition (RBC): ... which requires $S=0$."；"Absorbing boundary condition (ABC): ... which requires $e^{\Phi}W=0$."；"Natural boundary condition (NBC): for $x_{\max}\to+\infty$ and $x_{\min}\to-\infty$, we have $S=0$ or $e^{\Phi}W=0$."

#### 8. 与 2211.03512（Kramers 逃逸率）的关系

**FP 方程在"高势垒/低噪声"极限下的越垒通量就是 Kramers 逃逸率**：


$$
r_k=\frac{\sqrt{\lvert f''(x_{\min})f''(x_{\max})\rvert}}{2\pi}e^{-\frac{f(x_{\max})-f(x_{\min})}{D}}
$$


即 2211.03512 的式 (10)，也是那篇论文全篇的计算基础。

逻辑链：正则系综 → 热势 $f$（2111 式 (1) = 2211 式 (7)）→ Fokker–Planck 方程（2111 式 (5)）→ Hermitian 化/薛定谔算子（2111 式 (6)–(9)）→ 解本征值/求越垒通量 → Kramers 逃逸率（2211 式 (10)–(12)）。两篇用**同一个 $f$**：2111 做"本征值/能谱"，2211 做"逃逸率/相变速率"。

#### 9. 适用条件与局限

- 只对**马尔可夫扩散过程**成立；有记忆效应或非 Gaussian 噪声时需用广义 Kolmogorov 方程或 Kramers–Moyal 展开；
- **倒谐振子没有稳态、只有连续谱**；本文得到离散谱是 ABC + NBC 的产物（原文："we have known that for the inverted harmonic oscillator potential, no stationary exists for the Fokker-Planck equation. However, when we consider ABC and NBC ..., eigenfunctions can do exist"）。

#### 10. 小结

- FP 方程 = 概率密度的"输运方程"，漂移（确定性力）与扩散（噪声）两项竞争；
- 本文式 (5) $L_{\rm FP}=\partial_x f'+D\partial_x^2$，$f$ 即热势；稳态解 $W\propto e^{-f/D}$ 为 Boltzmann 分布，$D$ 相当于 $k_BT$；
- 解析求解的核心技巧是 Hermitian 化 → 薛定谔算子 $-D\partial_x^2+V_s$（式 (6)–(9)，均经 Wolfram 验证）；
- 其高势垒极限给出 Kramers 逃逸率（2211 式 (10)），是 2211 全篇的基础。

