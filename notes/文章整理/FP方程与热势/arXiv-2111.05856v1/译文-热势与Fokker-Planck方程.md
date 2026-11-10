---
title: "Fokker-Planck 方程用于热势中的黑洞"
folder: "文章整理/FP方程与热势/arXiv-2111.05856v1"
---

> **原文**：Zhen-Ming Xu（徐振明），*Fokker-Planck equation for black holes in thermal potential*，Phys. Rev. D **104**, 104022 (2021)；arXiv:2111.05856v1 [gr-qc]，2021-11-10。
> **作者单位**：西北大学现代物理研究所／物理学院，陕西省理论物理前沿重点实验室，彭桓武理论物理中心（西安 710127）。
> **本文件**：该文的中文译文。公式编号、参考文献编号与原文一一对应，便于回原文核对；专有名词、模型名、方程名与惯用术语（Fokker-Planck、on-shell/off-shell、Schwarzschild、BTZ、Hawking、Hermite、Lyapunov、RBC/ABC/NBC 等）保留英文。原文 PDF 与 HTML 同在本目录。

---

## 摘要

我们构造一类热势，并把黑洞热力学系统置于其中。这样一来，黑洞的某些热力学性质就与热势的几何特征联系了起来。在内在热力学涨落的驱动下，黑洞在这一热势中的行为是随机的。借助解析求解 Fokker-Planck 方程，我们得到了 Schwarzschild 黑洞与 Banados–Teitelboim–Zanelli（BTZ）黑洞在热势中的离散能谱。对 Schwarzschild 黑洞，能谱正比于系综温度——那是一个外部参数——且基态不为零。对 BTZ 黑洞，能谱只依赖于 AdS 半径，那是黑洞的内禀参数；并且，BTZ 黑洞在热势中的基态为零。这一点也反映了三维引力与四维引力之间的差别。

---

## I 引言

作为广义相对论与量子力学之间的重要桥梁，黑洞一直因其相关的物理性质而备受关注。半经典层面对黑洞温度与熵的描述 [1, 2] 是一个引人注目的发现：它揭示了黑洞的热性质，并在引力与热力学之间建立起深刻的联系。于是，黑洞被映射为一个热力学系统，而热力学或统计物理有可能为黑洞物理提供一种互补的描述，甚至为引力的量子本质带来一些原创性的洞见。此后，黑洞的许多性质得到了研究 [3, 4, 5]。

Bekenstein 有一个重要观察：非极端黑洞的视界面积表现为经典绝热不变量。据此他猜想，非极端量子黑洞的视界面积应当具有离散的本征谱 [6]。此后，在准正规模与 Bohr 对应原理的讨论框架内，一些工作 [7, 8] 表明黑洞的质量与视界面积具有离散谱。再往后，许多研究提示黑洞表现出某种量子行为，使黑洞与引力量子化之间的联系更加紧密 [9, 10, 11, 12, 13]。

如今，随着这方面研究的发展，黑洞这样一个独特的热力学系统展现出许多带有量子特征的、奇异的热力学性质，例如：与规范场论中禁闭—解禁闭相变相对应的 Hawking-Page 相变 [14]（后者借助 AdS/CFT 对应 [15] 建立）；类似气—液相变的大、小黑洞相变 [16, 17, 18, 19, 20, 21]；黑洞信息丢失 [22]；混沌效应 [23, 24, 25, 26, 27, 28, 29]；等等。为分析黑洞的热力学性质，人们提出了一些唯象方案。基于热力学几何 [31] 的黑洞分子假设 [30] 被用来分析黑洞可能的微观行为 [32, 33, 34, 35, 36, 37]。而在随机过程的思想 [38] 之下，黑洞相变的动力学过程也得到了讨论 [39, 40, 41, 42]：其做法是把 Hawking 温度替换为系综温度，从而将 on-shell 的 Gibbs 自由能推广为 off-shell 的 Gibbs 自由能。此外，在我们此前的工作 [43] 中，我们引入了一般的 Landau 势，用来分析黑洞相变的动力学过程。

本文的主要动机如下。

- 基于自由能景观的思想 [39]，我们希望找到一种更直观的方式来分析黑洞的某些动力学行为。为此，我们用系综温度构造一类热势，并把黑洞系统置于这一独特的热势之中。热势的某些几何特征可以直接反映黑洞的热力学性质；而在热涨落的驱动下，黑洞系统就在这样的热势中运动。我们还发现，以当前方式构造的热势在形式上等同于自由能景观中的 off-shell 自由能，但两者在物理内涵上存在某些差异。

- 我们也关心黑洞在热势中的动力学图像，但更在意能否得到解析结果。幸运的是，在热涨落的随机效应中，通过解析求解 Fokker-Planck 方程，我们得到了 Schwarzschild 与 BTZ 黑洞的解析动力学描述。

- 我们的结果还提示了三维引力与四维引力之间的一种本质差别。四维 Schwarzschild 黑洞处在倒谐振子（inverted harmonic oscillator）势中，故其热力学稳定性如何，一看便知。倒谐振子势中 Schwarzschild 黑洞的本征谱正比于系综温度，同时系统具有非零基态；一旦系综温度与 Schwarzschild 黑洞的温度表达式完全一致，即热势取到极大值，本征值便正比于 Schwarzschild 黑洞质量的倒数。而三维 BTZ 黑洞处在谐振子（harmonic oscillator）势中，其能谱只依赖于 AdS 半径；并且，谐振子势中 BTZ 黑洞的基态为零。

全文安排如下：第 II 节通过引入正则系综来构造黑洞的热势；第 III 节简要介绍 Fokker-Planck 方程及其向本征值问题的转化，并以两个具体黑洞（Schwarzschild 与 BTZ）为例解析求解各自的 Fokker-Planck 方程，给出相应的能谱与相关讨论；第 IV 节作总结并展望。全文采用单位 $\hbar=c=k_{{}_{B}}=G=1$。

---

## II 热势

考虑一个温度为 $T$ 的正则系综，它由大量态组成，其中一个或一组态可以代表真实的黑洞。真实的黑洞态（on-shell）是 Einstein 场方程的解，其它态（off-shell）则不是。当系综温度 $T$ 等于 Hawking 温度 $T_{h}$ 时，系综由真实黑洞态构成，体系处于平衡。对一个给定的黑洞热力学系统，我们可以构造如下的热势


$$
U=\int (T_{h}-T)\,\text{d}S, \tag{1}
$$


其中黑洞的热力学熵 $S$ 被视为变量。对黑洞而言，$T_{h}=t(S,Y)$，这里的函数 $t(S,Y)$ 是热力学熵 $S$ 与黑洞其它参数 $Y$（例如 AdS 半径 $l$、电荷 $Q$、角动量 $J$ 等）所满足的关系。而系综温度 $T$ 在这里被当作独立的常数，可以任意取任何正值。注意，本文中提到的 $T=T_{h}$ 只是取得系综温度 $T$ 的一种方式而已。

热势定义 (1) 中的被积函数，可以理解为正则系综中所有可能的态偏离真实黑洞态（即平衡态）的程度。换言之，在平衡态下热势将呈现极值行为，即


$$
\frac{\text{d}U}{\text{d}S}=0\quad\Rightarrow\quad T=T_{h}. \tag{2}
$$


从物理上看，通过构造 (1) 这样的热势，我们把黑洞热力学系统放在了势场 $U$ 之中。由于热力学涨落，黑洞在此势场中的随机行为可以反映黑洞的某些热力学特征。

此外，热势 (1) 还有一个优点：极值点处的凹凸性与热力学系统的稳定性直接相关，


$$
\delta\left(\left.\frac{\text{d}U}{\text{d}S}\right|_{T=T_{h}}\right)=\left.\frac{\partial t(S,Y)}{\partial S}\right|_{Y}\delta S. \tag{3}
$$


当 $\partial t(S,Y)/\partial S>0$ 时，热力学系统处于稳定态；而 $\partial t(S,Y)/\partial S<0$ 对应不稳定态。

对简单热力学系统，由热力学第一定律 $\text{d}E=T_{h}\text{d}S-P\text{d}V$（$E$ 为内能，$P$ 为压强，$V$ 为系统的热力学体积），可得


$$
U=\int (T_{h}-T)\,\text{d}S=E+PV-TS. \tag{4}
$$


形式上可以看出，本文构造的热势等同于自由能景观 [39] 中的 off-shell 自由能。

---

## III Fokker-Planck 方程

由于热涨落，黑洞在热势中运动，从而表现出不同的相变特征。事实上，这是一种随机过程。黑洞各态（包括 on-shell 态与 off-shell 态）在热涨落下随时间演化的概率分布 $W(x,t)$，应当由概率性的 Fokker-Planck 方程来描述（数学文献中它也被称为前向 Kolmogorov 方程）。Fokker-Planck 方程提供了强有力的工具，足以恰当处理转变点附近的涨落效应；它并不局限于近热平衡系统，同样可用于远离热平衡的系统（例如激光）。

漂移系数 $D^{(1)}(x)$ 与时间无关、扩散系数 $D$ 为常数的一维 Fokker-Planck 方程是 [38, 44]


$$
\frac{\partial W(x,t)}{\partial t}=\left[\frac{\partial}{\partial x}f'(x)+D\frac{\partial^{2}}{\partial x^{2}}\right]W(x,t)=L_{{}_{\text{FP}}}W(x,t)=-\frac{\partial}{\partial x}S(x,t), \tag{5}
$$


其中 $S(x,t)$ 是概率流，势为 $f(x)=-\int^{x}D^{(1)}(y)\,\text{d}y$，并记 $f'(x):=\text{d}f(x)/\text{d}x$。对概率密度取分离变量 ansatz $W(x,t)=\varphi(x)e^{-\varepsilon t}$，便得到 Fokker-Planck 方程在适当边界条件下的本征值方程


$$
L_{{}_{\text{FP}}}\varphi(x)=-\varepsilon\varphi(x). \tag{6}
$$


为方便起见，引入 $\Phi(x)=f(x)/D$，于是 Fokker-Planck 算符可以写成


$$
L_{{}_{\text{FP}}}=\frac{\partial}{\partial x}De^{-\Phi(x)}\frac{\partial}{\partial x}e^{\Phi(x)}. \tag{7}
$$


容易构造出一个 Hermite 算符 $L:=-e^{\Phi(x)/2}L_{{}_{\text{FP}}}e^{-\Phi(x)/2}$，本征值方程 (6) 随之化为 [44]


$$
L\psi(x)=\varepsilon\psi(x), \tag{8}
$$


其中 $\psi(x)=e^{\Phi(x)/2}\varphi(x)$，而 Hermite 算符 $L$ 与量子力学中单粒子的 Hamilton 算符同形：


$$
L=-D\frac{\partial^{2}}{\partial x^{2}}+V_{s}(x),\qquad V_{s}(x)=\frac{1}{4D}\left[f'(x)\right]^{2}-\frac{1}{2}f''(x). \tag{9}
$$


下面讨论上述 Fokker-Planck 本征值问题的边界条件。需要说明的是：本文研究的是正则系综中所有可能的态在热势中的运动行为，而这个热势是由黑洞背景构造出来的。一旦热势确定，问题就变成一个通常的量子力学问题，因此下面这些边界条件是自然的。对系综中所有可能的态而言，真实的黑洞态只是其中的特例。

- **反射边界条件（RBC, reflecting boundary condition）**：在 $x>x_{\text{max}}$ 或 $x<x_{\text{min}}$ 的区域，势 $\Phi(x)$ 趋于无限大的正值，这要求 $S=0$。

- **吸收边界条件（ABC, absorbing boundary condition）**：在 $x>x_{\text{max}}$ 或 $x<x_{\text{min}}$ 的区域，势 $\Phi(x)$ 趋于无限大的负值，这要求 $e^{\Phi}W=0$。

- **自然边界条件（NBC, natural boundary condition）**：当 $x_{\text{max}}\rightarrow+\infty$、$x_{\text{min}}\rightarrow-\infty$ 时，取 $S=0$ 或 $e^{\Phi}W=0$。

在接下来的讨论中，我们将看到两个不同黑洞（四维 Schwarzschild 与三维 BTZ）在不同热势中的随机行为；通过求解 Fokker-Planck 方程，也会看到上述边界条件如何被使用。

---

### III.1 应用一：Schwarzschild 黑洞

四维 Schwarzschild 黑洞的度规为 [3]


$$
\text{d}s^{2}=-\left(1-\frac{2M}{r}\right)\text{d}t^{2}+\frac{\text{d}r^{2}}{1-2M/r}+r^{2}\left(\text{d}\theta^{2}+\sin^{2}\theta\,\text{d}\varphi^{2}\right), \tag{10}
$$


其中 $M$ 是黑洞的 ADM 质量。相应地，以事件视界半径 $r_{h}$ 表示时，Schwarzschild 黑洞（平衡态下）的 Hawking 温度与 Bekenstein-Hawking 熵为 [3]


$$
T_{h}=\frac{1}{4\pi r_{h}},\qquad S=\pi r_{h}^{2}. \tag{11}
$$


代入式 (1)，很容易得到 Schwarzschild 黑洞的热势


$$
U=\frac{1}{2}r_{h}-\pi Tr_{h}^{2}. \tag{12}
$$


它就是倒谐振子势（inverted harmonic oscillator potential），亦称抛物势垒（parabolic potential barrier）<sup>1</sup>。

> **原注 1**：对式 (12) 可作改写
> $$U=-\pi T\tilde{r}_{h}^{2}+\frac{1}{16\pi T},\qquad \tilde{r}_{h}=r_{h}-\frac{1}{4\pi T}.$$
> 因此，只要把上式中的常数项 $\dfrac{1}{16\pi T}$ 吸收进 $U$，就可以称之为倒谐振子（IHO）势。

倒谐振子势在物理中扮演着不可或缺的角色，尤其在不稳定系统中。如果系综温度 $T$ 恰好与 Schwarzschild 黑洞的温度表达式 (11) 一致，即 $T=T_{h}$，那么可以清楚地看到热势取到极大值。

现在 Schwarzschild 黑洞就处在势场 (12) 之中。接下来，为了分析黑洞的某些动力学行为，我们取势 $f(x)=x/2-\pi Tx^{2}$，于是有效势为


$$
V_{s}(x)=\frac{\pi^{2}T^{2}}{D}z^{2}+\pi T,\qquad z=x-\frac{1}{4\pi T}. \tag{13}
$$


借助辅助变量 $\xi=\sqrt{\pi T/D}\,z$，Fokker-Planck 方程 (8) 化为如下简单形式


$$
\frac{\partial^{2}}{\partial\xi^{2}}\psi(x)+\left(\frac{\varepsilon}{\pi T}-1-\xi^{2}\right)\psi(x)=0. \tag{14}
$$


由此得到相应的本征值与本征函数


$$
\varepsilon_{n}=2\pi T(n+1),\qquad n=0,1,2,\cdots \tag{15}
$$



$$
\psi_{n}(x)=\left(\frac{T}{D}\right)^{1/4}\frac{1}{\sqrt{2^{n}n!}}H_{n}(\xi)e^{-\xi^{2}/2}, \tag{16}
$$


其中 $H_{n}(\xi)$ 是 Hermite 多项式。下面我们就上述结果作几点讨论。

- 我们发现：Schwarzschild 黑洞处在该势场中时，由于热涨落，其本征值是离散的；并且在 $x\rightarrow x_{\text{max}}$、$x_{\text{min}}\rightarrow\pm\infty$ 处采用 ABC 与 NBC 时，本征值正比于系综温度。系综温度越高，本征值越大。

- 系统具有非零基态，这正是倒谐振子势的特征。Schwarzschild 黑洞在热势中的基态为


  $$
  \varepsilon_{0}=2\pi T. \tag{17}
  $$


  系综温度越高，相应的基态也越大。

- 系统的两个能级之差同样正比于系综温度，


  $$
  \varepsilon_{n+1}-\varepsilon_{n}=2\pi T. \tag{18}
  $$


  也就是说，相邻两能级之差恒等于系统的基态能量。

- 若把式 (12) 描述的对象放到一维量子力学中看，它是一个倒谐振子，其经典与量子的 Lyapunov 指数都是 $\lambda=\sqrt{2\pi T}$ [23, 45, 46]。因此，Schwarzschild 黑洞在热势中的本征值正比于该倒谐振子 Lyapunov 指数的平方<sup>2</sup>，


  $$
  \varepsilon_{n}\propto\lambda^{2}, \tag{19}
  $$


  这是一个很有意义的结果，有助于我们理解黑洞系统的某些混沌效应。

  > **原注 2**：需要指出，本文研究的是正则系综中所有可能的态在热势中的运动行为，而真实的黑洞态只是所有这些态中的特例，即系综温度 $T$ 等于 Hawking 温度 $T_{h}$ 的情形。在这个框架下，我们得到的 Lyapunov 指数为 $\lambda=\sqrt{2\pi T}$，其中 $T$ 是系综温度（一个外部参数）。

- 我们知道，对倒谐振子势而言，Fokker-Planck 方程不存在稳态。然而，在 $x\rightarrow x_{\text{max}}$、$x_{\text{min}}\rightarrow\pm\infty$ 处采用 ABC 与 NBC 时，本征函数确实存在（这些本征函数对应的概率流 $S$ 是有限的），并且可以用它们来计算转移概率。于是立即得到转入各本征函数的转移概率（$t\geq t'$）


  $$
  P\left(z,t|z',t'\right)=\sqrt{\frac{T}{D\left[1-e^{-4\pi T(t-t')}\right]}}\exp\left(-\frac{\pi T\left[z-e^{-2\pi T(t-t')}z'\right]^{2}}{D\left[1-e^{-4\pi T(t-t')}\right]}\right)e^{-2\pi T(t-t')}. \tag{20}
  $$


- 如果系综温度恰与 Schwarzschild 黑洞的温度表达式一致，即 $T=T_{h}=1/(8\pi M)$，则可以看到 Schwarzschild 黑洞在热势中的本征值正比于质量的倒数


  $$
  \varepsilon_{n}=\frac{n+1}{4M},\qquad n=0,1,2,\cdots, \tag{21}
  $$


  这表明黑洞质量越大，它在热势中的本征值越小。

---

### III.2 应用二：BTZ 黑洞

接下来我们看一个三维黑洞。作为简单的例子，考虑中性的、非旋转的 Banados–Teitelboim–Zanelli（BTZ）黑洞，其度规为 [47, 48]


$$
\text{d}s^{2}=-\left(-2m+\frac{r^{2}}{l^{2}}\right)\text{d}t^{2}+\frac{\text{d}r^{2}}{-2m+r^{2}/l^{2}}+r^{2}\text{d}\varphi^{2}, \tag{22}
$$


其中 $m$ 与黑洞质量有关，$l$ 是 AdS 半径，它与负宇宙学常数 $\Lambda$ 通过 $\Lambda=-1/l^{2}$ 相联系。自然地，以事件视界半径 $r_{h}$ 表示时，BTZ 黑洞的一些基本热力学性质为


$$
T_{h}=\frac{r_{h}}{2\pi l^{2}},\qquad S=\frac{1}{2}\pi r_{h}. \tag{23}
$$


借助式 (1)，可得 BTZ 黑洞的热势


$$
U=\frac{r_{h}^{2}}{8l^{2}}-\frac{\pi T}{2}r_{h}. \tag{24}
$$


显然，BTZ 黑洞处在谐振子势中<sup>3</sup>，并且它总是热力学稳定的。

> **原注 3**：对式 (24) 可作改写
> $$U=\frac{\tilde{r}_{h}^{2}}{8l^{2}}-\frac{\pi^{2}T^{2}}{2l^{2}},\qquad \tilde{r}_{h}=r_{h}-2\pi Tl^{2}.$$
> 因此，只要把上式中的常数项 $-\dfrac{\pi^{2}T^{2}}{2l^{2}}$ 吸收进 $U$，就可以称之为谐振子势。

形式上取 $f(x)=x^{2}/(8l^{2})-\pi Tx/2$，则有效势为


$$
V_{s}(x)=\frac{z^{2}}{64Dl^{4}}-\frac{1}{8l^{2}},\qquad z=x-2\pi Tl^{2}. \tag{25}
$$


把辅助变量 $\xi=\sqrt{1/(8Dl^{2})}\,z$ 代入，BTZ 黑洞的热力学演化方程 (8) 便可写成如下简单形式


$$
\frac{\partial^{2}}{\partial\xi^{2}}\psi(x)+\left(8l^{2}\varepsilon+1-\xi^{2}\right)\psi(x)=0. \tag{26}
$$


由此得到 BTZ 黑洞在热势中热力学演化的本征值与本征函数


$$
\varepsilon_{n}=\frac{n}{4l^{2}},\qquad n=0,1,2,\cdots \tag{27}
$$



$$
\psi_{n}(x)=\left(\frac{1}{8\pi Dl^{2}}\right)^{1/4}\frac{1}{\sqrt{2^{n}n!}}H_{n}(\xi)e^{-\xi^{2}/2}. \tag{28}
$$


- 得到上述本征值时，我们在 $x\rightarrow x_{\text{max}}$、$x_{\text{min}}\rightarrow\pm\infty$ 处采用了 RBC 与 NBC。由于 BTZ 黑洞处在谐振子势中，我们得到的是稳态解。

- BTZ 黑洞的能谱只依赖于黑洞自身的参数，即 AdS 半径 $l$。这一点与 Schwarzschild 黑洞不同——后者的能谱与系综温度有关。此外，BTZ 的能谱同样是离散的。

- 尽管 BTZ 黑洞处在谐振子势中，它的行为却不同于量子谐振子。最突出的一点是基态为零，即 $\varepsilon_{0}=0$。

- 相邻两能级之差恒为 $1/(4l^{2})$。

---

## IV 总结

我们考虑一个正则系综：在相同的宏观条件（即相同的温度 $T$）下，它由大量结构相同的态组成，其中一个或一组态可以代表真实的黑洞系统，其温度可标记为 Hawking 温度 $T_{h}$。真实的黑洞态（on-shell 态）是 Einstein 场方程的解，其它态（off-shell 态）则不是。当系综温度 $T$ 等于 Hawking 温度 $T_{h}$ 时，系综由真实黑洞态构成，处于平衡。当系综温度 $T$ 不等于 Hawking 温度 $T_{h}$ 时，我们可以说，正则系综中所有可能的态都偏离了真实黑洞态（即平衡态）。注意，系综温度 $T$ 可以任意取任何正值，而 $T=T_{h}$ 只是取得该值的一种方式。

在通常的热力学中，自由能里热运动的程度是由温度与熵的乘积来度量的。因此，我们直接引入热势 (1)，用它粗略地反映偏离的程度。在平衡态下，热势呈现极值行为；同时，势的凹凸性可以与热力学系统的稳定性相联系。这样，我们就能观察正则系综中各态在热涨落作用下于这一热势中的热运动行为。

借助在这样的热势中解析求解 Fokker-Planck 方程，我们研究了正则系综中所有可能的态在热势中的运动行为。这一问题在量子力学中相应地成为势垒穿透问题（对 Schwarzschild 黑洞的热势），或势阱中的运动问题（对 BTZ 黑洞的热势）。因此，计算势垒或势阱中诸态的本征值与转移概率，就是一件自然的事情。

对 Schwarzschild 黑洞，它处在倒谐振子势中。我们采用吸收边界条件与自然边界条件求本征值。计算表明：我们所考虑的正则系综中的态，在 Schwarzschild 热势 (12) 中的运动行为是离散的，其本征值依赖于正则系综的温度 $T$；系综温度越高，本征值越大。同时，系统具有非零基态。当系综温度 $T$ 与 Schwarzschild 黑洞的温度 $T_{h}$ 完全一致时——即正则系综中的态处在该势垒的最高点（或热势 (12) 取到极大值）——系综由真实黑洞态构成，此时 Schwarzschild 黑洞态在这种热势中的本征值正比于质量的倒数，即式 (21)。也就是说，黑洞质量越大，本征值越小，基态的能量值也越小。

对 BTZ 黑洞，它处在谐振子势中。我们采用反射边界条件与自然边界条件求本征值。与 Schwarzschild 黑洞和量子谐振子相比，BTZ 黑洞呈现出两个主要差别：其一，能谱只依赖于黑洞的内禀参数——AdS 半径；其二，基态为零。这进一步反映了三维引力的独特性质。

自然，当前方法可以推广到其它黑洞模型，例如表 1 中列出的若干简单黑洞的热势。虽然其它模型的热势表达式或多或少有些复杂，但我们可以用微扰方法计算系统的本征值与本征函数，进而得到由热涨落导致的热力学系统的一些量子性质。此外，我们相信，这一思路也可以推广到各种统计物理模型，以获取系统的许多性质。

**表 1**：若干简单黑洞的热势表达式。

| 黑洞 | 热势 $f(x)=$ |
| --- | --- |
| Schwarzschild-AdS black hole | $\dfrac{1}{2}x+\dfrac{4\pi P}{3}x^{3}-\pi Tx^{2}$ |
| Reissner-Nordström black hole | $\dfrac{1}{2}x+\dfrac{Q^{2}}{2x}-\pi Tx^{2}$ |
| Charged AdS black hole | $\dfrac{1}{2}x+\dfrac{4\pi P}{3}x^{3}+\dfrac{Q^{2}}{2x}-\pi Tx^{2}$ |
| Charged BTZ black hole | $\dfrac{1}{8l^{2}}x^{2}-\dfrac{\pi T}{2}x-\dfrac{Q^{2}}{16}\ln x$ |
| Rotating BTZ black hole | $\dfrac{1}{8l^{2}}x^{2}-\dfrac{\pi T}{2}x+\dfrac{J^{2}}{32x^{2}}$ |

---

## 致谢

ZMX 感谢魏少文（Shao-Wen Wei）教授富有意义的讨论。本项目由国家自然科学基金（批准号 12105222、12047502、11947208）与中国博士后科学基金（批准号 2020M673460）资助；本研究得到西北大学"双一流"大学建设项目支持。作者感谢匿名审稿人的有益意见，它们使本文质量得到很大提高。

---

## 参考文献

1. J.D. Bekenstein, *Black holes and entropy*, Phys. Rev. D **7**, 2333 (1973).
2. J.M. Bardeen, B. Carter, and S. Hawking, *The four laws of black hole mechanics*, Commun. Math. Phys. **31**, 161 (1973).
3. D. Kastor, S. Ray, and J. Traschen, *Enthalpy and the mechanics of AdS black holes*, Class. Quant. Grav. **26**, 195011 (2009).
4. B.P. Dolan, *The cosmological constant and black-hole thermodynamic potentials*, Class. Quant. Grav. **28**, 125020 (2011).
5. D. Kubiznak, R.B. Mann, and M. Teo, *Black hole chemistry: thermodynamics with Lambda*, Class. Quant. Grav. **34**, 063001 (2017).
6. J.D. Bekenstein, *The Quantum Mass Spectrum of the Kerr Black Hole*, Lett. Nuovo Cimento **11**, 467 (1974).
7. S. Hod, *Bohr's Correspondence Principle and the Area Spectrum of Quantum Black Holes*, Phys. Rev. Lett. **81**, 4293 (1998).
8. M. Maggiore, *Physical Interpretation of the Spectrum of Black Hole Quasinormal Modes*, Phys. Rev. Lett. **100**, 141301 (2008).
9. R. Banerjee, B.R. Majhi, E.C. Vagenas, *Quantum tunneling and black hole spectroscopy*, Phys. Lett. B **686**, 279 (2010).
10. B.R. Majhi, *Hawking radiation and black hole spectroscopy in Horava-Lifshitz gravity*, Phys. Lett. B **686**, 49 (2010).
11. R. Banerjee, C. Kiefer, B.R. Majhi, *Quantum gravitational correction to the Hawking temperature from the Lemaitre-Tolman-Bondi model*, Phys. Rev. D **82**, 044013 (2010).
12. B.R. Majhi, E.C. Vagenas, *Black hole spectroscopy via adiabatic invariance*, Phys. Lett. B **701**, 623 (2011).
13. A. Bakshi, B.R. Majhi, S. Samanta, *Gravitational surface Hamiltonian and entropy quantization*, Phys. Lett. B **765**, 334 (2017).
14. S. Hawking and D.N. Page, *Thermodynamics of black holes in anti-de Sitter space*, Commun. Math. Phys. **87**, 577 (1983).
15. E. Witten, *Anti-de Sitter space, thermal phase transition, and confinement in gauge theories*, Adv. Theor. Math. Phys. **2**, 505 (1998).
16. D. Kubiznak and R.B. Mann, *P-V criticality of charged AdS black holes*, JHEP **07**, 033 (2012).
17. K. Bhattacharya, B.R. Majhi, *Thermogeometric study of van der Waals like phase transition in black holes: an alternative approach*, Phys. Lett. B **802**, 135224 (2020).
18. A. Dehyadegari, B.R. Majhi, A. Sheykhi, A. Montakhab, *Universality class of alternative phase space and Van der Waals criticality*, Phys. Lett. B **791**, 30 (2019).
19. K. Bhattacharya, B.R. Majhi, S. Samanta, *Van der Waals criticality in AdS black holes: a phenomenological study*, Phys. Rev. D **96**, 084037 (2017).
20. K. Bhattacharya, B.R. Majhi, *Thermogeometric description of the van der Waals like phase transition in AdS black holes*, Phys. Rev. D **95**, 104024 (2017).
21. B.R. Majhi, S. Samanta, *P-V criticality of AdS black holes in a general framework*, Phys. Lett. B **773**, 203 (2017).
22. S. Raju, *Lessons from the Information Paradox*, arXiv:2012.05770 [hep-th].
23. J. Maldacena, S.H. Shenker and D. Stanford, *A bound on chaos*, JHEP **08**, 106 (2016).
24. S. Dalui, B.R. Majhi, P. Mishra, *Presence of horizon makes particle motion chaotic*, Phys. Lett. B **788**, 486 (2019).
25. S. Dalui, B.R. Majhi, P. Mishra, *Induction of chaotic fluctuations in particle dynamics in a uniformly accelerated frame*, Int. J. Mod. Phys. A **35**, 2050081 (2020).
26. S. Dalui, B.R. Majhi, P. Mishra, *Horizon induces instability locally and creates quantum thermality*, Phys. Rev. D **102**, 044006 (2020).
27. S. Dalui, B.R. Majhi, *Near horizon local instability and quantum thermality*, Phys. Rev. D **102**, 124047 (2020).
28. B.R. Majhi, *Is randomness near a black hole key for thermalization of its horizon?*, arXiv:2101.04458 [gr-qc].
29. S. Dalui, B.R. Majhi, *Horizon thermalization of Kerr black hole through local instability*, arXiv:2103.11613 [gr-qc].
30. S.-W. Wei and Y.-X. Liu, *Insight into the microscopic structure of an AdS black hole from a thermodynamical phase transition*, Phys. Rev. Lett. **115**, 111302 (2015); Erratum ibid. **116**, 169903 (2016).
31. G. Ruppeiner, *Thermodynamic curvature and black holes*, in *Breaking of Supersymmetry and Ultraviolet Divergences in Extended Supergravity*, edited by S. Bellucci, Springer Proceedings in Physics Vol. 153, Springer, New York (2014).
32. Y.-G. Miao and Z.-M. Xu, *Thermal molecular potential among micromolecules in charged AdS black holes*, Phys. Rev. D **98**, 044001 (2018).
33. S.-W. Wei, Y.-X. Liu, and R.B. Mann, *Repulsive interactions and universal properties of charged anti-de Sitter black hole microstructures*, Phys. Rev. Lett. **123**, 071103 (2019).
34. X.-Y. Guo, H.-F. Li, L.-C. Zhang and R. Zhao, *Microstructure and continuous phase transition of a Reissner-Nordstrom-AdS black hole*, Phys. Rev. D **100**, 064036 (2019).
35. Z.-M. Xu, B. Wu, and W.-L. Yang, *Ruppeiner thermodynamic geometry for the Schwarzschild AdS black hole*, Phys. Rev. D **101**, 024018 (2020).
36. S.-W. Wei, Y.-X. Liu, and R.B. Mann, *Novel dual relation and constant in Hawking-Page phase transition*, Phys. Rev. D **102**, 104011 (2020).
37. Z.-M. Xu, *The correspondence between thermodynamic curvature and isoperimetric theorem from ultraspinning black hole*, Phys. Lett. B **807**, 135529 (2020).
38. R. Zwanzig, *Nonequilibrium statistical mechanics*, Oxford University Press (2001).
39. R. Li and J. Wang, *Thermodynamics and kinetics of Hawking-Page phase transition*, Phys. Rev. D **102**, 024085 (2020).
40. R. Li, K. Zhang and J. Wang, *Thermal dynamic phase transition of Reissner-Nordström Anti-de Sitter black holes on free energy landscape*, JHEP **10**, 090 (2020).
41. S.-W. Wei, Y.-Q. Wang, Y.-X. Liu, and R.B. Mann, *Observing dynamic oscillatory behavior of triple points among black hole thermodynamic phase transitions*, Sci. China-Phys. Mech. Astron. **64**, 270411 (2021).
42. R.-G. Cai, *Oscillatory behaviors near a black hole triple point*, Sci. China-Phys. Mech. Astron. **64**, 290432 (2021).
43. Z.-M. Xu, B. Wu, and W.-L. Yang, *van der Waals fluid and charged AdS black hole in the Landau theory*, Class. Quant. Grav. **38**, 205008 (2021).
44. H. Risken, *The Fokker-Planck equation: methods of solution and applications*, Second Edition, Springer (1988).
45. K. Hashimoto, K.-B. Huh, K.-Y. Kim, and R. Watanabe, *Exponential growth of out-of-time-order correlator without chaos: inverted harmonic oscillator*, JHEP **11**, 068 (2020).
46. T. Morita, *Extracting Classical Lyapunov Exponent from One-Dimensional Quantum Mechanics*, arXiv:2105.09603 [hep-th].
47. M. Banados, C. Teitelboim and J. Zanelli, *The Black hole in three-dimensional space-time*, Phys. Rev. Lett. **69**, 1849 (1992).
48. A.M. Frassino, R.B. Mann and J.R. Mureika, *Lower-dimensional black hole chemistry*, Phys. Rev. D **92**, 124069 (2015).

---

## 译者说明

1. **术语**：模型名与方程名（Schwarzschild、BTZ、Reissner-Nordström、AdS、Fokker-Planck、Hermite、Lyapunov、Landau、Gibbs、Hawking、Bekenstein、Ruppeiner）、状态标签（on-shell / off-shell）以及三类边界条件的缩写（RBC / ABC / NBC）均保留原文。其余名词按通行中文译法（热势、正则系综、概率流、漂移系数、扩散系数、本征值、本征函数、倒谐振子、自由能景观等）。
2. **公式编号**：与原文 (1)–(28) 完全一致，`\tag{}` 编号即为原文编号。原文表 1 保留为文中的表格。
3. **脚注**：原文有 3 处脚注（分别在式 (12)、§III.1 的 Lyapunov 讨论、式 (24) 附近）。译文就地以下标 <sup>n</sup> 标出，并在紧邻处用「原注 n」的引用块给出全文；为避免与正文编号混淆，本次统一重新编号为 1–3（原文编号为 1、2、3，顺序一致）。
4. **符号与原文一致**：$\Phi=f/D$、$V_s=\frac{1}{4D}(f')^2-\frac12f''$、$z$ 与 $\xi$ 的定义均照抄。原文在式 (14)、(26) 中把波函数写作 $\psi(x)$，但该处的自变量实际是 $\xi$；译文按原文保留，不作改写。
5. **原文笔误**：§III.1 中 "no stationary exists" 应为 "no stationary state exists"（不存在稳态），译文按此理解翻译；其余文字性笔误（如 "we can called it as"、"i.e.,." ）已按文意顺写，不另标注。
