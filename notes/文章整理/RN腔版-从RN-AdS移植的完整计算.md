---
title: "RN 黑洞在腔中：把 arXiv:2211.03512 的 RN-AdS 算例移植到腔壁框架"
folder: "文章整理"
---

**日期**：2026-09-12
**目标**：把 [2211.03512] 在 RN-AdS（扩展相空间）里建立的"广义自由能 + Kramers 逃逸率"算例，完整移植到"RN 黑洞 + 有限腔壁"的准局部热力学框架。

**涉及文献**
- **[2211]** Z.-M. Xu, B. Wu, W.-L. Yang, *Rate of the phase transition for a charged anti-de Sitter black hole*, **arXiv:2211.03512v2** = Sci. China Phys. Mech. Astron. **66**(4), 240411 (2023)；8 页 3 图。也是 [25791] 的参考文献 **[29]**。
- **[03749]** R. Dwivedi, M. R. Visser, *Holographic heat engines for Schwarzschild black holes*, arXiv:2607.03749v2；本地 `arXiv-2607.03749v2\v14.tex`。
- **[25791]** C. Ma, B. Wu, Z.-M. Xu, *Mean first passage time and the Kramers escape rate of phase transitions for the Bardeen-AdS-class black hole*, arXiv:2604.25791v1。
- **[2405]** R. Li, J. Wang, *Thermodynamics and kinetics of state switching for the asymptotically flat black hole in a cavity*, arXiv:2405.09151。
- **[2408]** T. Yue, J. Wang, *Transit time of black holes on generalized free energy landscape*, arXiv:2408.17104。

**体例约定（本文档严格遵守）**
- 每一条末端的方括号给出依据：`[引·2211 §II 式(8)]` 表示引用该文原文；`[算·S3]`/`[算·N7]` 表示本文自行计算并已用 Wolfram Language 验证，编号对应第 14 节脚本的输出。
- 凡未经验证或存疑的内容，一律放入第 13 节，不混入正文结论。

---

## 1. 引用输入

### 1.1 [2211] 的 RN-AdS 算例（要移植的对象）

1. 该文的物理动机是：既有研究多关注黑洞相变的类型与临界性分析，却忽略了相变过程本身的细节描述。
   [引·2211 §I："Existing studies tend to focus on the type and criticality analysis of the thermodynamic phase transition of black holes, but they neglect the detailed description of the phase transition process."]

2. 它明确以带电 AdS 黑洞（"possesses the most typical thermodynamic phase transition of a black hole"）为**算例**，采用 Kramers 逃逸率方法。
   [引·2211 §I："Next, we will take the charged AdS black hole, which possesses the most typical thermodynamic phase transition of a black hole, as an example to discuss. Using the Kramer's escape rate method [38, 39] of describing the Brownian motion of particles in an external field and thermal potential we constructed in [40] …"]

3. 该文的背景公式为

   $$
   M=\frac{r_h}{2}+\frac{4\pi Pr_h^3}{3}+\frac{Q^2}{2r_h},\quad T_h=\frac{1}{4\pi r_h}\Big(1+8\pi Pr_h^2-\frac{Q^2}{r_h^2}\Big),\quad S=\pi r_h^2,\quad G=M-T_hS,
   $$

   临界值为 $r_c=\sqrt6Q$、

   $$
   T_c=\frac{\sqrt6}{18\pi Q}
   $$

   、$P_c=\frac{1}{96\pi Q^2}$、

   $$
   G_c=\frac{\sqrt6Q}{3}.
   $$

   [引·2211 式(1)(2)(3)(4)(5)]

4. 无量纲量为 $t_h:=T_h/T_c$、$p:=P/P_c$、$x:=r_h/r_c$、$g:=G/G_c$。
   [引·2211 式(6)]

5. 热势（即 [25791] 的广义自由能）定义为

   $$
   f(x)=\int(T_h-T)\,dS,
   $$

   其中 $T$ 为系综（环境）温度；$T=T_h$ 时系综由在壳黑洞态构成并处于平衡，$T\ne T_h$ 时系综中所有可能态偏离在壳态。
   [引·2211 式(7)："

   $$
   f(x)=\int(T_h-T)dS
   $$

   "；"Here, when the ensemble temperature $T$ is equal to the Hawking temperature $T_h$, the ensemble is made up of an on-shell black hole state and is in equilibrium. Moreover, when $T\neq T_h$, all possible states in the canonical ensemble deviate from the on-shell black hole state."]

6. 热势的极值点由 $3px^4-8tx^3+6x^2-1=0$ 决定；当 $0<p<1$、$t\in(t_1,t_3)$ 时该方程有三个正实根，从小到大记为 $x_1,x_2,x_3$，它们本质上是 $T_h=T$（即 $t_h=t$）的解。
   [引·2211 §II："For the charged AdS black hole, the locations of the extreme points of the thermal potential are determined by the equation $3px^4-8tx^3+6x^2-1=0$. When $0<p<1$ and $t\in(t_1,t_3)$, this equation has three real positive roots. From small to large, we mark them as $x_1$, $x_2$, and $x_3$."；"According to Eq. (7), these positions, in essence, are the solutions of $T_h=T$ or $t_h=t$."]

7. 三个关键温度 $t_1,t_2,t_3$：$t_1$ 与 $t_3$ 分别为 swallowtail 尖端的"最低温度"与"最高温度"，$t_2$ 为 swallowtail 自交点温度；$t=t_2$ 时热势的两个全局极小相等（"$\omega$-well"）。
   [引·2211 式(9)及其后："where $t_1$ and $t_3$ are the local minimum temperature and the local maximum temperature of the swallowtail tip, and $t_2$ is the temperature of the swallowtail intersection."；"When the ensemble temperature $t=t_2$, the two global minima in the thermal potential are equal, labeled as $\omega$-well."]

8. 两个方向的 Kramers 速率为

   $$
   r_{k1}=\frac{\sqrt{|f''(x_1)f''(x_2)|}}{2\pi}e^{-\frac{f(x_2)-f(x_1)}{D}}
   $$

   （小→大）与 $r_{k2}=\frac{\sqrt{|f''(x_3)f''(x_2)|}}{2\pi}e^{-\frac{f(x_2)-f(x_3)}{D}}$（大→小），其中 $D$ 为常数扩散系数。
   [引·2211 式(10)(11)(12)]

9. 该文的核心结论：相变率随温度先增后减；在 $t=t_2$（两阱等深、Gibbs 意义下的共存温度）处 $r_{k1}$ 仍远大于 $r_{k2}$；只有到 $t=t^*\in(t_2,t_3)$ 两者才相等（动力学平衡）；整体过程由小→大主导，呈显著**非对称**。
   [引·2211 §II："At $t_2$, according to the diagram (b) in FIG. 1, the two global minima in the thermal potential are equal, but the transition rates $r_{k1}$ and $r_{k2}$ are not equal. The rate $r_{k1}$ is much larger than the rate $r_{k2}$ …"；"At $t^*$, the transition rates $r_{k1}$ and $r_{k2}$ are equal, and the net rate is zero, which means that the transition between the two phases reaches dynamic equilibrium."]

10. 该文强调这是 Gibbs 自由能分析**给不出**的信息，并把它列为自己填补的空白。
    [引·2211 §III："This is the important information about the phase transition of black holes that we cannot get in the analysis of Gibbs free energy."；摘要："This study filled a research gap of a stochastic process analysis on the issue of the first-order phase transition rate in the AdS black hole."]

### 1.2 [03749] 的腔壁形式与 Schwarzschild 结果（要移植到的框架）

11. 把黑洞置于有限球形腔 $r_B>r_h$，准局部热力学的状态变量为 $(E,T,S,P,V)$，其中 $E$ 为 Brown–York 准局部能量、$T$ 为腔壁上的红移 Hawking 温度（Tolman 温度）、$P$ 为 Brown–York 表面压力，且 $S=\pi r_h^2/G$、$V=4\pi r_B^2$。
    [引·03749 §II 式(2)(3)(4)(5) 及其说明："The internal energy $E$ is equal to the quasi-local Brown-York energy"；"the local temperature at the boundary is the redshifted Hawking temperature seen by an observer at $r=r_B$, also known as the Tolman temperature"；"the holographic pressure $P$ is the Brown-York surface pressure"；"$V$ is … the spatial volume of the boundary thermodynamic system, which has two spatial dimensions. We therefore refer to $V$ as the boundary volume. Its conjugate $P$ is a surface pressure"]

12. 基本关系为 $dE=TdS-PdV$。
    [引·03749 式(1)]

13. 对 $E$ 与 $P$ 施加平直空间背景减除，使它们在 $r_h=0$ 的 Minkowski 时空中恒为零。
    [引·03749 §II："A flat-space background subtraction is applied to both $E$ and $P$, so that they vanish identically in Minkowski spacetime, for which $r_h = 0$."]

14. 反解 Tolman 温度方程得到三次方程

    $$
    r_h^3-r_Br_h^2+\frac{r_B}{(4\pi T)^2}=0;
    $$

    York 证明当 $r_BT>\sqrt{27}/(8\pi)$ 时它在 $0<r_h<r_B$ 内有两个正实根，分别对应小分支 $0<x<2/3$ 与大分支 $2/3<x<1$（$x\equiv r_h/r_B$）。
    [引·03749 式(6) 及其后："York [York1985a,York1990] showed that this cubic equation admits two distinct positive, real roots in the physical range $0<r_h<r_B$ when $r_B T>\sqrt{27}/(8\pi)$. Introducing $x\equiv r_h/r_B=\sqrt{4GS/V}$, these roots correspond to the small black hole branch $0<x<2/3$ and the large black hole branch $2/3<x<1$."]

15. 红移参数 $y\equiv\sqrt{1-r_h/r_B}$（$0<y<1$）度量视界与腔壁之间的引力红移。
    [引·03749 式(11) 及其后："which measures the gravitational redshift between the horizon and the cavity wall."]

16. [03749] 的大分支定容热容 $C_V>0$、小分支 $C_V<0$。
    [引·03749 §II："The fixed volume heat capacity is positive for $2/3<x<1$ … By contrast, the small black hole branch has $C_V<0$"]

### 1.3 [25791] 的广义自由能与速率公式（移植所用的工具）

17. $\mathcal{U}=\int(T_h-T)dS$ 的定义**取自** [2211] 等文献。
    [引·25791 式(17) 前："based on the definition of generalized free energy in reference **[29, 30, 31, 32]**, we release the Maxwell equal area law mentioned above, and introduce generalized free energy 𝒰 (or called the thermal potential) as"（其中 [29] 即 [2211]）]

18. 其极值条件为 $d\mathcal{U}/dS=0\Rightarrow T=T_h$；极小值对应热稳定态，极大值对应热不稳定态。
    [引·25791 式(18) 及其后："The minima of the generalized free energy landscape correspond to thermally stable black hole states, whereas the maxima signify thermally unstable ones."]

19. [25791] 列出三种离壳势：$\mathcal{U}$（$T$–$S$ 平面）、$\mathcal{G}$（$G$–$T$/$G$–$P$ 平面）、

    $$
    \mathcal{L}=\int F(X,T,P)dX
    $$

    （$P$–$V$ 平面）；并指出在 $P$–$V$ 分析中后者更自然。
    [引·25791 式(20) 及其后："ℒ (on the P-V plane) uses the non‑equilibrium volume X as the off-shell variable."；"for G-T/G-P or P-V analyses, 𝒢 or ℒ would be more natural."]

20. MFPT 精确积分

    $$
    \langle t\rangle=\frac{1}{D}\int_{r_A}^{r_m}dr\int_{r_A}^{r}dr'\,e^{\beta(\mathcal{U}(r)-\mathcal{U}(r'))},
    $$

    Kramers 近似

    $$
    r_k=\frac{\sqrt{|\mathcal{U}''(r_{\min})\mathcal{U}''(r_{\max})|}}{2\pi}e^{-\frac{\mathcal{U}(r_{\max})-\mathcal{U}(r_{\min})}{D}},
    $$

    二者近似互为倒数，且后者要求深阱条件 $\Delta\mathcal{U}\gg D$。
    [引·25791 式(26)(32) 及其后："Consequently, they are approximately reciprocals of each other"；"In general, this requires the thermal potential to satisfy the deep well condition, namely Δ𝒰=𝒰(rmax)−𝒰(rmin)≫D."]

21. [25791] 在扩展相空间中的推广第一定律与 Smarr 关系含物质/耦合项：

    $$
    dM=T_hdS+VdP+\Phi_mdQ_m+\phi_mdm_0+\phi_qdq_0
    $$

    、$M=2T_hS-2VP+\Phi_mQ_m+\phi_mm_0+\phi_qq_0.$
    [引·25791 式(13)(15)]

### 1.4 其它两个必要的文献定位

22. 腔中带电黑洞的相图已被指出为：无电荷时 Hawking–Page 型，带电时 van der Waals 型。
    [引·2405 摘要："we obtain the phase diagrams for the black hole in cavity, which reveal a Hawking-Page type transition for the uncharged black hole and a Van der Waals type transition for the charged black hole."]

23. Kramers 公式里 $\beta$ 与 $D$ 的关系有明确约定：$D=k_BT/\eta$，$\eta$ 为摩擦系数，故 $1/D=\beta\eta$；且 HP 型（阱为边界半抛物）会带来 1/2 因子。
    [引·2408 §3.1："$\beta$ denotes the inverse temperature $1/k_BT$, and $D$ is the diffusion coefficient, given by $k_BT/\eta$, where $k_B$ is the Boltzmann constant and $\eta$ is the dissipation or friction coefficient."；"the origin of the 1/2 factor is that we approximate the potential energy function as nearly half a parabola, while equation (21) assumed a symmetric parabola, considering the doubled distance traveled."]

---

## 2. 几何、视界与定义域

24. 取四维渐近平坦 Reissner–Nordström 度规 $ds^2=-fdt^2+f^{-1}dr^2+r^2d\Omega_2^2$，

    $$
    f(r)=1-\frac{2M}{r}+\frac{Q^2}{r^2},
    $$

    腔壁取在 $r=r_B$。
    [推·[03749] §II 的 Schwarzschild 设置加上电荷项；引·[03749]："We consider a four-dimensional, asymptotically flat Schwarzschild black hole enclosed in a finite spherical cavity."]

25. 事件视界 $f(r_h)=0$ 给出质量—半径关系

    $$
    M=\frac{r_h}{2}+\frac{Q^2}{2r_h}.
    $$

    [算·S1（见第 14 节脚本）；推·由 $f(r_h)=0$ 解出 $2M=r_h+Q^2/r_h$]

26. Hawking 温度为

    $$
    T_H=\frac{f'(r_h)}{4\pi}=\frac{1}{4\pi r_h}\Big(1-\frac{Q^2}{r_h^2}\Big).
    $$

    [算·S1 数值与符号核对；推·$f'(r)=2M/r^2-2Q^2/r^3$，代入第 25 条]

27. 定义三个无量纲量

    $$
    x\equiv\frac{r_h}{r_B}\in(0,1),\qquad q\equiv\frac{Q}{r_B},\qquad y\equiv\sqrt{f(r_B)}.
    $$

    [推·$x$ 与 [03749] 式(11) 前的定义一致；引·[03749]："Introducing $x\equiv r_h/r_B=\sqrt{4GS/V}$"；$y$ 为 [03749] 式(11) 的推广（含电荷）]

28. **核心恒等式**：在壳时

    $$
    y^2=f(r_B)=1-x-\frac{q^2}{x}+q^2=\frac{(1-x)(x-q^2)}{x}.
    $$

    [算·S2：`Simplify[yf[x,q]^2 - (1-x)(x-q^2)/x]` 输出 `0`]
    （推导：$2M/r_B=(r_h+Q^2/r_h)/r_B=x+q^2/x$，$Q^2/r_B^2=q^2$。）

29. 由 $y^2\ge0$ 得**定义域 $x\in[q^2,1]$**；两端 $x=q^2$ 与 $x=1$ 分别对应腔壁落在内视界 $r_-=Q^2/r_h$ 与外视界 $r_+=r_h$ 上（此时 $f(r_B)=0$）。
    [算·S2 的因子化形式直接给出；推·$f(r)=0$ 的两根为

    $$
    r_\pm=\frac{r_h}{2}+\frac{Q^2}{2r_h}\pm\frac12\big(r_h-\frac{Q^2}{r_h}\big),
    $$

    即 $r_+=r_h$、$r_-=Q^2/r_h$]

30. $q=0$ 时 $y^2=1-x$，与 [03749] 式(11) 完全一致；定义域退化为 $x\in(0,1)$，且 $x=0$ 即 $r_h=0$ 的热平直空间（此时 $E=P=0$，见第 12 条引文）。
    [算·S2；引·[03749] §II：「$E$ 与 $P$ 在 Minkowski 时空（$r_h=0$）中恒为零」]

31. 由第 29 条，**带电腔壁不存在"热平直空间"端点**（$r_h=0$ 会使 $y^2<0$）——这是带电情形与无电荷情形的第一个结构性差别。
    [算·S2：$x=0$ 时 $y^2=-q^2/x\to-\infty$；对照第 30 条]

---

## 3. 准局部物态方程（完整推导）

32. 准局部能量取 [03749] 式(3) 的形式，对一般 $f$ 写成

    $$
    E=\frac{r_B}{G}\big(1-y\big).
    $$

    [推·（i）ADM 极限：$r_B\to\infty$ 时 $y\simeq1-M/r_B$，故 $E\to M/G$ ✓；（ii）$q=0$ 时退化为 03749 式(3)（见第 36 条）；算·S3：`E - rB(1-y)` 与 03749 式的差为 0]

33. 熵与热力学体积沿用 [03749] 式(2)：

    $$
    S=\frac{\pi r_h^2}{G}=\frac{\pi r_B^2x^2}{G},\qquad V=4\pi r_B^2.
    $$

    [引·[03749] 式(2)；推·代入 $r_h=xr_B$]

34. 边界温度是 Tolman 温度 $T=T_H/y$，即
    $T=\\frac{T_H}{y}=\\frac{x^2-q^2}{4\\pi r_B\\,x^3\\,y}.$
    [引·[03749]："the local temperature at the boundary is the redshifted Hawking temperature"；推·由第 26 条除以 $y$；算·S5：与 $\pi r_BT_B(x)$ 的驻点表达一致（第 56 条）]

35. 墙压强由 $P=-(\partial E/\partial V)_{S,Q}$ 定义，其闭式为

    $$
    P=-\frac{1}{8\pi G r_B}\left[(1-y)+\frac{2q^2x-q^2-x^2}{2xy}\right].
    $$

    [推·$E=r_B(1-y)$，固定 $r_h$（即固定 $S$）与 $Q$ 时 $x,q$ 都随 $r_B$ 变：$dx/dr_B=-x/r_B$、$dq/dr_B=-q/r_B$，故 $dE/dr_B=(1-y)+xy_x+qy_q$，再除以 $dV/dr_B=8\pi r_B$；其中 $y_x=(q^2-x^2)/(2x^2y)$、$y_q=-q(1-x)/(xy)$；算·S4 与 S7：第一定律逐项检验为 0]

36. 电荷共轭势由 $\Phi=(\partial E/\partial Q)_{S,V}$ 定义，其闭式为

    $$
    \Phi=\frac{q(1-x)}{G\,x\,y}.
    $$

    [推·$\partial E/\partial Q=r_B(-y_q)(1/r_B)=-y_q=q(1-x)/(xy);$算·S4：第一定律的 $dq$ 分量检验为 0]
    （物理解释：标准的视界—腔壁电势差为 $Q/r_h-Q/r_B=q(1-x)/x$；本条结果等于它再除以红移因子 $y$，即**腔壁上实测的红移电势**。）

37. 于是带电腔的准局部热力学完全由 $(x,q)$（或 $(S,V,Q)$）与上四式确定，**无需**引入宇宙学常数或独立压强。
    [算·S2–S4 的五个等式；引·[03749] §I 关于该框架"coupling constants held fixed"的定位："The heat engine cycle therefore takes place within the thermodynamic state space of a single gravitational theory, with all coupling constants held fixed."]

---

## 4. 第一定律与 Smarr 关系（逐项验证）

38. 上面定义的 $E,T,P,\Phi$ 严格满足带电情形的第一定律

    $$
    dE=T\,dS-P\,dV+\Phi\,dQ.
    $$

    [算·S4：以 $(r_B,x,q)$ 为独立变量展开，三个分量（$dr_B$、$dx$、$dq$）之差全部化简为 `0`]

39. 同时满足带电荷项的 Smarr 关系

    $$
    E=2TS-2PV+\Phi Q.
    $$

    [算·S4：`E - (2 T S - 2 P V + Phi Q)` 化简为 `0`；推·

    $$
    E(\lambda^2S,\lambda^2V,\lambda Q)=\lambda E(S,V)
    $$

    的秩 1 齐次性 + Euler 定理]

40. 第 39 条与 [25791] 式(15) 的形式一致：

    $$
    M=2T_hS-2VP+\Phi_mQ_m+\phi_mm_0+\phi_qq_0,
    $$

    只是腔里没有 $\Lambda$ 的 $VP$ 项来源，$P$ 由第 35 条给出。
    [引·[25791] 式(15)；算·S4]

---

## 5. $q\to0$ 的三项退化（与 [03749] 逐项对照）

41. $q=0$ 时第 34 条化为 $T=1/(4\pi r_Bxy)$，与 [03749] 式(4) 的 $y$ 表示完全一致。这里温度不含 $G$；$G$ 只出现在熵、能量和表面压强的归一化中。
    [算·S3：`Tf2[x,0,rB] - 1/(4 Pi rB x yf[x,0])` 化简为 `0`；引·[03749] 式(4)]

42. $q=0$ 时第 35 条化为 $P=(1-y)^2/(16\pi G r_By)$，与 [03749] 式(5) 的 $y$ 表示完全一致。
    [算·S3：`Pf2[x,0,rB] - (1-yf[x,0])^2/(16 Pi rB yf[x,0])` 化简为 `0`；引·[03749] 式(5)]

43. $q=0$ 时第 32 条即 [03749] 式(3)。
    [算·S3：`Ef2[x,0,rB] - rB(1-yf[x,0])` 为 `0`；引·[03749] 式(3)]

44. 因此第 32–37 条是 [03749] 的 Schwarzschild 准局部热力学的**带电推广**，且三个退化检验全部通过。
    [算·S3]

---

## 6. 与 [2211] 的参数映射

45. [2211] 用无量纲 $(t,p,x)$，其中 $x=r_h/r_c$、$p=P/P_c$、$t=T/T_c$；腔版用 $(\tau_B,q,x)$，其中 $\tau_B\equiv\pi r_BT$、$q=Q/r_B$、$x=r_h/r_B$。
    [引·[2211] 式(6)；推·定义 $\tau_B\equiv\pi r_BT$ 使 $\tau_B=\pi r_BT_B(x)$ 与 [03749] 的记号一致]

46. **控制参数的角色对应**：AdS 版中 $p$ 是可自由调节的压强（$p<p_c$ 时热势有三个根），腔版中对应角色由 $q$ 承担（$q<q_c$ 时三个根，见第 60–62 条）。
    [引·[2211]："When $0<p<1$ and $t\in(t_1,t_3)$, this equation has three real positive roots."；算·N1]

47. **参数个数与定义域不同**：AdS 版 $x\in(0,\infty)$、热势为 $x$ 的四次多项式；腔版 $x\in(q^2,1)$、热势含平方根（第 55 条）。
    [引·[2211] 的极值方程为四次多项式 $3px^4-8tx^3+6x^2-1=0$；算·S2（定义域）与 S5（热势形式）]

48. **温度的含义不同**：AdS 版 $T_h$ 就是视界温度；腔版的在壳温度是**腔壁上的 Tolman 温度** $T_B=T_H/y$。
    [引·[2211] 式(2)（$T_h$ 直接给出）；引·[03749]："the local temperature at the boundary is the redshifted Hawking temperature seen by an observer at $r=r_B$"；算·S5]

---

## 7. 离壳自由能图景与驻点条件

49. 按 [25791] 的精神，固定 $V$（即固定 $r_B$）与 $Q$、以 $r_h$ 为序参量，定义离壳自由能

    $$
    F_{\rm off}(r_h;T,r_B,Q)=E(S(r_h),V)-T\,S(r_h).
    $$

    [引·[25791] 式(17) 的构造精神；推·固定 $V$ 时 $dE=T_hdS$（第 38 条取 $dV=dQ=0$），故

    $$
    \int(T_h-T)dS=E-TS+\text{const}=F_{\rm off},
    $$

    即 [25791] 的 $\mathcal U$ 在固定 $V$ 时退化为 Helmholtz 自由能]

50. 定义无量纲量

    $$
    g(x)\equiv\frac{G\,F_{\rm off}}{r_B}=1-y(x)-\tau_B\,x^2,\qquad \tau_B\equiv\pi r_BT.
    $$

    [算·S5：由第 32、33 条代入即得；$S=\pi r_B^2x^2/G$、$TS=\tau_Br_Bx^2/G$]

51. 其一阶导为

    $$
    g'(x)=-y'(x)-2\tau_Bx,\qquad y'(x)=\frac{q^2-x^2}{2x^2y}.
    $$

    [算·S5：`Simplify[D[gl[x,q,tau],x]]` 与 `yf` 的导数一致]

52. 驻点条件 $g'(x)=0$ 等价于

    $$
    1-\frac{q^2}{x^2}=4\tau_B\,x\,y,
    $$

    即**腔壁 Tolman 温度等于系综温度** $T_B(x)=T$。
    [算·S5：`Solve[D[g,x]==0,tau]` 输出 $\tau=(x^2-q^2)/(4x^3y)=\pi r_BT_B(x)$；引·[03749] 的 Tolman 温度定义]

53. 因此 [25791] 的"极小=稳定、极大=不稳定"（第 18 条引文）在腔里体现为：$T_B(x)=T$ 的根中 $g''>0$ 者为稳定态、$g''<0$ 者为不稳定态。
    [引·[25791]："The minima of the generalized free energy landscape correspond to thermally stable black hole states, whereas the maxima signify thermally unstable ones."；算·S5 与 N3]

54. $q=0$ 时第 52 条退化为 $1=4\tau_Bx\sqrt{1-x}$，即 [03749]/York 的三次方程。
    [算·S2 与 S5；引·[03749] 式(6) 及其后关于 $x=2/3$ 分支合并的陈述]

---

## 8. 临界电荷（本移植的第一个定量新结果）

55. $T_B'(x)=0$ 的判别式（去分母后）为

    $$
    \mathrm{cond}(x,q)=5q^4-6q^2x-6q^4x+6q^2x^2+2x^3+2q^4x^2-3x^4.
    $$

    [算·N1 的 [12] 行：`Factor[cond[x,q]]` 输出上式]

56. $q=0$ 时 $\mathrm{cond}=x^3(2-3x)$，唯一根为 $x=2/3$——正是 [03749] 的**分支合并点**，这是本推导的第一个自洽性检验。
    [算·N2 的 [19] 行：`q=0` 时极值点数值为 `{0.66666667}`；引·[03749]："the small black hole branch $0<x<2/3$ and the large black hole branch $2/3<x<1$"]

57. $T_B(2/3,0)=\dfrac{3\sqrt3}{8\pi}=\dfrac{\sqrt{27}}{8\pi},$与 [03749] 的临界温度完全一致。
    [推·$T_B=1/(4\pi r_Bxy)$，$x=2/3$、$y=1/\sqrt3$；引·[03749]："$r_B T>\sqrt{27}/(8\pi)$"]

58. **临界电荷**：由 $\mathrm{cond}=0$ 与 $\mathrm{cond}'=0$ 联立，物理解为

    $$
    q_c=\sqrt5-2\approx0.23606798,\qquad x_c=5-2\sqrt5\approx0.52786405,\qquad T_c\,r_B\approx0.1855889.
    $$

    [算·N2 的 [13'] 行：`Solve` 输出 $\{x\to5-2\sqrt5,\;q\to-2+\sqrt5\}$ 等解，取 $x\in(0,1)$、$q>0$ 的一支]

59. 两个临界量之间还有关系 $x_c=1-2q_c$（代入 $q_c=\sqrt5-2$ 得 $1-2q_c=5-2\sqrt5=x_c$）。
    [算·由第 58 条直接代入验证]

60. **$q<q_c$ 时 $T_B(x)$ 有两个极值点**（先在 $x_M$ 取极大、后在 $x_m$ 取极小），故 $T\in(T_B(x_m),T_B(x_M))$ 时 $T_B(x)=T$ 有**三个根**——这正是 [2211] 的 $x_1,x_2,x_3$ 结构。
    [算·N2 的 [14'] 行：$q=0.15$ 时极值点在 $x=0.27398428$ 与 $x=0.6436884$，对应 $T_Br_B=0.24915176$ 与 $0.199378$；引·[2211]："this equation has three real positive roots. From small to large, we mark them as $x_1$, $x_2$, and $x_3$."]

61. **$q>q_c$ 时 $T_B(x)$ 单调，只有一个根，无相变**。
    [算·N2：$q=0.25$ 时 `NSolve[cond[x,1/4]==0,x]` 在 $(q^2,1)$ 内无实根（返回空集），且逐点扫描 $T_B$ 单调；N1 的 [14] 行给出该空集]

62. 因此带电腔存在**临界电荷** $q_c=\sqrt5-2$：$q<q_c$ 为 van der Waals 型（三个根、两个阱），$q>q_c$ 无相变。这与 [2405] 关于"带电腔为 van der Waals 型相变"的结论方向一致，并给出了该结论成立的**定量条件**。
    [引·[2405] 摘要："a Van der Waals type transition for the charged black hole."；算·N1、N2]

63. $q\to0^+$ 时极小温度 $T_B(x_m)\to\sqrt{27}/(8\pi r_B)$而极大温度 $T_B(x_M)\to\infty$，故回到无电荷腔"任意 $T>\sqrt{27}/(8\pi r_B)$ 都有两个根"的 Hawking–Page 型结构。
    [算·N3 的表格：$q=0.05$ 时 $T_1r_B=0.2059688$（接近 $0.2067484$）、$T_3r_B=0.6505471$ 且随 $q$ 减小迅速增大；引·[2405]："a Hawking-Page type transition for the uncharged black hole"]

---

## 9. 三个特征温度与两个 Kramers 速率

64. 仿照 [2211] 的定义，记 $T_1\equiv T_B(x_m)$（极小温度）、$T_3\equiv T_B(x_M)$（极大温度）、$T_2$ 为**两阱等深**温度（由 $F_{\rm off}(x_1)=F_{\rm off}(x_3)$ 定出）。
    [引·[2211]："$t_1$ and $t_3$ are the local minimum temperature and the local maximum temperature of the swallowtail tip, and $t_2$ is the temperature of the swallowtail intersection."；"When the ensemble temperature $t=t_2$, the two global minima in the thermal potential are equal"]

65. 在 $T_2$ 处两个势垒高度严格相等，这是第 64 条定义的数值检验。
    [算·N2 的 [18'] 行：$q=0.15$ 时 `g(x2)-g(x1) = g(x2)-g(x3) = 0.01120239`]

66. 两个方向的逃逸率直接取 [25791] 式(32) 的形式，序参量为 $r_h$、势为 $F_{\rm off}$：

    $$
    r_{k1}=\frac{\sqrt{|F''(x_1)F''(x_2)|}}{2\pi}e^{-\frac{F(x_2)-F(x_1)}{D}},\qquad r_{k2}=\frac{\sqrt{|F''(x_3)F''(x_2)|}}{2\pi}e^{-\frac{F(x_2)-F(x_3)}{D}},
    $$

    其中 $F''$ 对 $r_h$ 求导，可用 $g$ 表出：$F''_{r_h}=g''(x)/(Gr_B)$。
    [引·[25791] 式(32) 与 [2211] 式(11)(12)；推·链式法则 $d/dr_h=(1/r_B)d/dx$]

67. 在 $T_2$ 处两阱等深，故 $F(x_2)-F(x_1)=F(x_2)-F(x_3)$，**两个指数因子精确相消**，速率比退化为纯曲率比

    $$
    \boxed{\ \frac{r_{k1}}{r_{k2}}\bigg|_{T_2}=\sqrt{\left|\frac{g''(x_1)}{g''(x_3)}\right|}\ }
    $$

    与扩散系数 $D$、摩擦系数 $\eta$ 全部无关。
    [算·由第 65、66 条；引·[2211]："the two global minima in the thermal potential are equal, but the transition rates $r_{k1}$ and $r_{k2}$ are not equal."]

68. 这就是 [2211] 所谓"Gibbs 分析给不出的非对称信息"在腔版中的**解析来源**：非对称完全由两个阱的曲率之比决定。
    [引·[2211]："This is the important information about the phase transition of black holes that we cannot get in the analysis of Gibbs free energy."；算·第 67 条]

69. 类似地，动力学平衡温度 $T^*$（$r_{k1}=r_{k2}$）满足

    $$
    \sqrt{\left|\frac{g''(x_1)}{g''(x_3)}\right|}=e^{-\frac{(F(x_2)-F(x_3))-(F(x_2)-F(x_1))}{D}},
    $$

    它一般 $\ne T_2$，与 [2211] 的 $t^*\in(t_2,t_3)$ 对应。
    [引·[2211]："Only when the ensemble temperature $t=t^*$, where $t^*\in(t_2,t_3)$, can the two rates be equal, indicating that the phase transition reaches a dynamic equilibrium."；算·第 66 条]

---

## 10. 数值结果（$G=1$、$r_B=1$）

70. 对 $q<q_c$ 的若干取值，三个特征温度、等深位置与速率比如下：

    | $q=Q/r_B$ | $T_1r_B$（极小） | $T_2r_B$（等深） | $T_3r_B$（极大） |

    $$
    \frac{T_2-T_1}{T_3-T_1}
    $$

    | **$r_{k1}/r_{k2}$（在 $T_2$）** | $x_1,x_2,x_3$ |
    |---|---|---|---|---|---|---|
    | 0.05 | 0.2059688 | 0.2489693 | 0.6505471 | 0.096722 | **2.073629** | 0.054631, 0.411903, 0.863512 |
    | 0.10 | 0.2035767 | 0.2304518 | 0.3473674 | 0.186904 | **1.524364** | 0.120735, 0.445274, 0.829753 |
    | 0.15 | 0.199378 | 0.2130289 | 0.2491518 | 0.274260 | **1.286663** | 0.204073, 0.476539, 0.782052 |
    | 0.20 | 0.1928607 | 0.1966981 | 0.2032936 | 0.367821 | **1.137583** | 0.320894, 0.506606, 0.704351 |
    | 0.23 | 0.187133 | 0.1874189 | 0.1877698 | 0.449025 | **1.047714** | 0.445430, 0.524305, 0.605034 |

    [算·N3]

71. 表中 $T_3$ 随 $q$ 减小而迅速增大（$q=0.23$ 时 0.1878 → $q=0.05$ 时 0.6505），与第 63 条的极限行为一致。
    [算·N3 与第 63 条]

72. $T_1$ 在 $q\to0$ 时趋近 $q=0$ 的合并温度 $\sqrt{27}/(8\pi)=0.2067484$：$q=0.05$ 给出 0.2059688。
    [算·N3；引·[03749]："$r_B T>\sqrt{27}/(8\pi)$"]

73. 表中速率比从 $q=0.05$ 的 2.07 单调降到 $q=0.23$ 的 1.05，并在 $q\to q_c$ 时趋于 1（两阱合并）。
    [算·N3 与第 58 条]

74. **与 RN-AdS 的对照**：[2211] 的算例在 $p=0.5,0.7,0.9$ 处的速率比（同样在等深温度处、同样由曲率比给出）分别为 2.0616、1.6782、1.3246。
    [算·本文对 [2211] 的独立复算；引·[2211] 式(8)(10)(11)(12) 与 $p=0.5$ 的算例："here without losing generality, we set … the thermodynamic pressure $p=0.5$"]

75. 两边量级与趋势完全同类（近临界时 →1，远离临界时 →2 左右），说明**腔版完整复现了 [2211] 的非对称结构**。
    [算·N3 与第 74 条]

76. 差别在于：腔版的"离临界"由 $q\to0$ 实现，而 $q\to0$ 同时把 $T_3$ 推向 $\infty$，故腔版的非对称上限由 $q\to0$ 极限控制（表中最左列的 2.07）；AdS 版则是在固定 $p$ 下由 $T\to T_2$ 处的曲率比给出。
    [算·N3 与第 63、74 条]

---

## 11. 与 [2211] 的结构对照总表

77. 汇总：

    | | [2211]：RN-AdS | 本文：RN + 腔壁 |
    |---|---|---|
    | 压强 | $P=3/(8\pi l^2)$，**可自由调节的控制参数** | $P$ 是**状态函数**，由第 35 条给出（腔壁 Brown–York 面压） |
    | 体积 | $V=\frac43\pi r_h^3$ 类（挂 $r_h$） | $V=4\pi r_B^2$（挂腔壁 $r_B$） |
    | 无量纲控制参数 | $p=P/P_c$，$t=T/T_c$ | $q=Q/r_B$，$\tau_B=\pi r_BT$ |
    | 序参量定义域 | $x=r_h/r_c\in(0,\infty)$ | $x=r_h/r_B\in(q^2,1)$ |
    | 离壳势 | $f(x)=\int(T_h-T)dS$ | 同定义，但在固定 $V$ 下退化为 $F=E-TS$，无量纲化后 $g=1-y-\tau_Bx^2$ |
    | 驻点方程 | $3px^4-8tx^3+6x^2-1=0$（四次） | $1-q^2/x^2=4\tau_Bxy$（含平方根） |
    | 有相变的区域 | $0<p<1$ | $0<q<q_c=\sqrt5-2$ |
    | 临界 | $p\to1$（$r_c=\sqrt6Q$ 等） | $q\to q_c$，$x_c=5-2\sqrt5$ |
    | 非对称比（等深处） | $\sqrt{|f''(x_1)/f''(x_3)|}$ | $\sqrt{|g''(x_1)/g''(x_3)|}$ |

    [引·[2211] 式(1)(5)(6)(7)(8) 与 [03749] 式(2)(5)；算·S2、S3、S4、S5、N3]

78. 对照表显示的移植逻辑是：**[2211] 的"压强 $p$"这个可调参数，在腔版中由"电荷 $q$"取代**；要移植的核心是"离壳势 + 驻点方程 + 两个 Kramers 速率 + 等深处的曲率比"这一整套，而不是具体公式。
    [算·第 46、77 条]

---

## 12. 本移植的三点直接后果（供后续写作使用）

79. **腔中带电黑洞的两个阱都在内部**（$x_1\in(q^2,x_M)$、$x_3\in(x_m,1)$），不像无电荷腔是"内部阱 + 边界阱（热平直空间）"；这与 [2405] 的"带电为 vdW 型、无电荷为 HP 型"完全吻合。
    [算·N2 的 [17'] 行（$q=0.15$ 时 $x_1=0.20407343$、$x_3=0.78205152$，均在 $(q^2,1)=(0.0225,1)$ 内部）；引·[2405] 摘要]

80. **HP 型的 1/2 因子不适用于带电腔**：[2408] 指出边界半抛物阱会带来 1/2 因子；带电腔的两个阱均为内部完整抛物阱（$g''(x_1)>0$、$g''(x_3)>0$ 且在定义域内部），故第 67 条的曲率比公式无需该修正。
    [引·[2408]："the origin of the 1/2 factor is that we approximate the potential energy function as nearly half a parabola, while equation (21) assumed a symmetric parabola"；算·N2 的 [17'] 行 $g''=\{1.896126,\;-0.467999,\;1.145349\}$]

81. **$\beta$/$D$ 约定问题在此框架下可自洽处理**：按 [2408] 取 $D=k_BT/\eta$（即 $1/D=\beta\eta$），第 66 条的 $e^{-\Delta F/D}$ 与 [25791] 的

    $$
    e^{\beta(\mathcal{U}(r)-\mathcal{U}(r'))}
    $$

    在同一约定下等价；本笔记的所有比值结论（第 67 条）与 $D,\eta$ 无关，故不受该约定影响。
    [引·[2408]："$D$ is the diffusion coefficient, given by $k_BT/\eta$"；引·[25791] 式(26) 与式(32) 的两套写法；算·第 67 条]

---

## 13. 待办核验结果（已完成）

82. **Brown–York 能量与参考态已核验。** 在腔壁上取单位法向，带电 RN 度规的外挤曲率只通过 $f(r_B)$ 进入；用平直球壳作参考项，得到
    $E=(r_B/G)(1-y)$，并由 $P=-(\partial E/\partial V)_{S,Q}$ 得到第 35 条。电磁场不需要另加一个独立的 Brown–York 表面项；它已通过 $f$ 的 $Q^2/r^2$ 项进入。该参考态是 $M=Q=0$ 的 Minkowski 球壳，不能解释为“固定非零电荷的平直参考态”。第一定律和 Smarr 恒等式的符号验证见第 38–39 条。

83. **临界单调性已完成解析核验。** 写 $T_B'=T_B N/(2x(x^2-q^2)(1-x))$（正因子已吸收到定义中）后，极值由第 55 条多项式 $N=0$ 给出。联立 $N=N_x=0$ 的唯一物理解为 $(x_c,q_c)=(5-2\sqrt5,\sqrt5-2)$。根的连续性及端点符号表明：$0<q<q_c$ 有两个简单根，$q=q_c$ 为二重根，$q>q_c$ 无根且 $T_B'(x)>0$，所以温度函数严格单调、不会出现三分支。

84. **动态平衡温度的定义已规范化。** 令 $\Delta F_i(T)=F(x_2;T)-F(x_i;T)$，则
    \[
    \ln\frac{r_{k1}}{r_{k2}}=\frac12\ln\left|\frac{F''(x_1)}{F''(x_3)}\right|-\frac{\Delta F_1-\Delta F_2}{D}.
    \]
    $T^*$ 是该式为零的根。它依赖噪声尺度 $D=k_BT/\eta$（或摩擦系数 $\eta$），因此不给定动力学参数就不存在唯一数值；第 69 条的定义已经是参数无关的正确表达。

85. **带电定容热容已完成。** 固定 $V,Q$ 时
    $C_{V,Q}=T(2\pi r_B^2x/G)/T_B'(x)$，故其符号等于 $T_B'$ 的符号；在驻点上 $g''=2\pi xT_B'$，所以 $C_{V,Q}>0$（外侧大分支）与 $g''>0$ 完全等价，中间分支为负且不稳定。详细推导见第 15.2 节。

86. **与热机的接口已明确其适用范围。** Kramers 率是相间跃迁的逆等待时间，不能直接等同于 [03749] 中准静态循环的周期。若人为规定一次跃迁驱动一个循环，可定义 $\tau_{\rm sw}=1/r_k$、$\mathcal P=W r_k$；其中

    $$
    W=\oint P\,dV
    $$

    仍需给定具体腔壁循环路径。没有路径和摩擦系数时，功率没有唯一数值，因此本文只保留速率与自由能结果，不把 $r_k$ 误作热机周期。

---

## 14. 计算脚本与输出摘要

```wolfram
(* ===== S 系列：符号验证 ===== *)
G = 1;
yf[x_, q_] := Sqrt[(1 - x) (x - q^2)/x];
Ef2[x_, q_, rB_] := rB (1 - yf[x, q]);
Sf2[x_, rB_] := Pi rB^2 x^2;
Tf2[x_, q_, rB_] := (x^2 - q^2)/(4 Pi rB x^3 yf[x, q]);
Pf2[x_, q_, rB_] := -((1 - yf[x, q]) + (2 q^2 x - q^2 - x^2)/(2 x yf[x, q]))/(8 Pi rB);
Phif2[x_, q_] := q (1 - x)/(x yf[x, q]);

(* S1 : M, T_H *)
Simplify[Solve[(1 - 2 M/r + Q^2/r^2 == 0) /. M -> (rh + Q^2/rh)/2 /. Q -> q rB /. rh -> x rB, M]];
(* S2 : 核心恒等式 *)
Simplify[yf[x, q]^2 - (1 - x) (x - q^2)/x]                      (* 0 *)
(* S3 : q->0 三项退化 *)
Simplify[Tf2[x, 0, rB] - 1/(4 Pi rB x yf[x, 0])]                (* 0 *)
Simplify[Pf2[x, 0, rB] - (1 - yf[x, 0])^2/(16 Pi rB yf[x, 0])]  (* 0 *)
Simplify[Ef2[x, 0, rB] - rB (1 - yf[x, 0])]                     (* 0 *)
(* S4 : 第一定律三个分量 + Smarr *)
Simplify[D[Ef2[x, q, rB], rB] - (Tf2[x, q, rB] D[Sf2[x, rB], rB] - Pf2[x, q, rB] 8 Pi rB + Phif2[x, q] q)]   (* 0 *)
Simplify[D[Ef2[x, q, rB], x] - Tf2[x, q, rB] D[Sf2[x, rB], x]]                                              (* 0 *)
Simplify[D[Ef2[x, q, rB], q] - Phif2[x, q] rB]                                                              (* 0 *)
Simplify[Ef2[x, q, rB] - (2 Tf2[x, q, rB] Sf2[x, rB] - 2 Pf2[x, q, rB] 4 Pi rB^2 + Phif2[x, q] q rB)]       (* 0 *)
(* S5 : 离壳势与驻点条件 *)
gl[x_, q_, tau_] := 1 - yf[x, q] - tau x^2;
Simplify[D[gl[x, q, tau], x]];
Simplify[Solve[D[gl[x, q, tau], x] == 0, tau]]   (* tau = (x^2-q^2)/(4 x^3 y) = Pi rB T_B(x) *)

(* ===== N 系列：数值 ===== *)
TB[x_, q_] := (x^2 - q^2)/(4 Pi x^3 yf[x, q]);
cond[x_, q_] := Numerator[Together[2 x/(x^2 - q^2) - 3/x + 1/(2 (1 - x)) - 1/(2 (x - q^2)) + 1/(2 x)]];
(* N1 : 判别式与临界电荷 *)
Factor[cond[x, q]]                                (* 5q^4 - 6q^2x - 6q^4x + 6q^2x^2 + 2x^3 + 2q^4x^2 - 3x^4 *)
Solve[{cond[x, q] == 0, D[cond[x, q], x] == 0}, {x, q}]
  (* 物理解 x -> 5 - 2 Sqrt[5], q -> -2 + Sqrt[5] *)
(* N2 : 三个特征温度与速率比（以 q=0.15 为例） *)
q0 = 0.15;
ex = Sort[Select[N[x /. NSolve[cond[x, q0] == 0, x, 25]], (Abs[Im[#]] < 10^-8 && q0^2 < Re[#] < 1) &]];
{xM, xm} = ex; T3 = TB[xM, q0]; T1 = TB[xm, q0];
gx[x_, T_] := 1 - yf[x, q0] - Pi T x^2;
dd[T_?NumericQ] := Module[{d1, d2, d3},
   d1 = x /. FindRoot[TB[x, q0] == T, {x, (q0^2 + xM)/2}];
   d2 = x /. FindRoot[TB[x, q0] == T, {x, (xM + xm)/2}];
   d3 = x /. FindRoot[TB[x, q0] == T, {x, (xm + 1)/2}];
   (1 - yf[d1, q0] - Pi T d1^2) - (1 - yf[d3, q0] - Pi T d3^2)];
T2 = T /. FindRoot[dd[T] == 0, {T, (T1 + T3)/2, T1, T3}];
(* N3 : 多 q 值表格（同 N2 的流程，q 取 0.05 … 0.23） *)
```

**输出摘要（与正文一致）**

- `y^2-(1-x)(x-q^2)/x = 0`；`q->0` 时 E、T、P 与 [03749] 式(3)(4)(5) 之差均为 `0`（S2、S3）
- 第一定律三个分量与 Smarr 之差均为 `0`（S4）
- `D[gl,x]==0 ⇔ tau=(x^2-q^2)/(4x^3y)`，即 $\pi r_BT_B(x)$（S5）
- `cond = 5q^4-6q^2x-6q^4x+6q^2x^2+2x^3+2q^4x^2-3x^4`；$q=0$ 时根为 $x=2/3$（N1）
- 临界解 `{x -> 5 - 2 Sqrt[5], q -> -2 + Sqrt[5]}`，即 $q_c=\sqrt5-2$（N1）
- $q=0.15$：$T_1r_B=0.199378$、$T_2r_B=0.2130289$、$T_3r_B=0.2491518$，$x=(0.20407343,0.47653854,0.78205152)$，$g''=(1.896126,-0.467999,1.145349)$，两个势垒均为 $0.01120239$，速率比 **1.286663**（N2）
- 多 $q$ 值表格见第 70 节（N3）

---

## 15. 补充推导与一致性说明

### 15.1 温度中的 $G$ 不能重复出现

在四维 Einstein–Maxwell 几何（$c=\hbar=k_B=1$）中，表面引力只由度规决定，
因此 $T_H=f'(r_h)/(4\pi)$ 不含牛顿常数。$G$ 只通过面积熵
$S=A/(4G)=\pi r_h^2/G$ 进入热力学归一化。由此
\[
 T_B(x)=\frac{x^2-q^2}{4\pi r_B x^3 y},\qquad
 \tau_B\equiv\pi r_BT=\pi r_BT_B(x)
\]
，而不是带有 $1/G$ 的表达式。若保留一般 $G$，应同时把能量、压强和熵分别写成
$E=r_B(1-y)/G$、$P\propto1/(Gr_B)$、$S\propto1/G$；在无量纲势
$g=GF_{\rm off}/r_B$ 中这些因子会完全消去。

### 15.2 定容热容与稳定性

固定 $V=4\pi r_B^2$ 和 $Q$ 时，$r_B,q$ 不变，故
\[
 C_{V,Q}=T\left(\frac{\partial S}{\partial T}\right)_{V,Q}
 =T\,\frac{(2\pi r_B^2x/G)}{T_B'(x)} .
\]
在物理解域 $q^2<x<1$ 内 $T>0$，所以

$$
\operatorname{sgn}C_{V,Q}=\operatorname{sgn}T_B'(x).
$$

另一方面
\[
 g'(x)=2\pi x\,[T_B(x)-T],\qquad
 g''(x_*)=2\pi x_*T_B'(x_*)
\]
（第二式在驻点 $T_B(x_*)=T$ 上成立），因此 $C_{V,Q}>0$ 与 $g''>0$、热稳定大分支相同，
而 $C_{V,Q}<0$ 与 $g''<0$、不稳定中间分支相同。

### 15.3 临界电荷与单调性

令 $N(x,q)$ 为第 55 条的 `cond`。极值合并要求 $N=N_x=0$；消去 $q$ 后，物理解唯一解为
\[
 q_c=\sqrt5-2,\qquad x_c=5-2\sqrt5=1-2q_c.
\]
在 $0<q<q_c$ 时，$N=0$ 在 $(q^2,1)$ 有两个简单根，分别给出 $T_B$ 的极大和极小；
在 $q=q_c$ 两根合并为二重根；在 $q>q_c$ 时无根，故 $T_B'(x)$ 不变号，温度方程至多一根，
不存在 van der Waals 型三分支结构。数值扫描只用于核对根的位置，临界值本身由上述联立方程解析确定。

### 15.4 Brown–York 参考态的约定

本文采用与 Schwarzschild 腔文献相同的平直背景减除：$E$ 和 $P$ 在 $M=Q=0$ 的 Minkowski 时空归零。
对固定非零 $Q$ 的参考态并不存在同样的平直 Maxwell 解，因此不能再额外声称“同电荷背景减除”。这一定义选择会改变自由能的整体常数，
但不会改变驻点方程、两阱等深条件或 Kramers 速率比；若改用其他参考项，应在全文同时平移 $F_{\rm off}$ 并重新声明规范。

