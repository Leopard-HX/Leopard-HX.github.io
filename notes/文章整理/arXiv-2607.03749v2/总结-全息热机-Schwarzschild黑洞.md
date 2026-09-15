---
title: "总结：Schwarzschild 黑洞的全息热机"
folder: "文章整理/arXiv-2607.03749v2"
---

**arXiv:2607.03749v2 [hep-th]**

> **引用体例说明**：本文档中每一句总结都紧跟着对应的**原文英文摘录**（引号内为 arXiv LaTeX 源码原文，未做改写），并在括号中标注出处（章节 / 式号 / 图号）。公式处仅逐字转录源码中可无歧义辨认者。
>
> **原文来源**：https://arxiv.org/abs/2607.03749 ｜ 本地源文件：`v14.tex`、`v14.bbl`（同目录）

---

## 一、元信息

| 项 | 内容 | 原文引用 |
| --- | --- | --- |
| 标题 | Holographic heat engines for Schwarzschild black holes | > "\title{Holographic heat engines for Schwarzschild black holes}" |
| 作者 1 | Ripunjay Dwivedi（印度理工学院孟买分校物理系） | > "\author{Ripunjay Dwivedi}"；"\affiliation{Department of Physics, Indian Institute of Technology Bombay, Mumbai, Maharashtra 400076, India}" |
| 作者 2 | Manus R. Visser（Radboud 大学数学、天体物理与粒子物理研究所 / 自然哲学中心） | > "\author{Manus R. Visser}"；"\affiliation{Institute for Mathematics, Astrophysics and Particle Physics, and Radboud Center for Natural Philosophy, Radboud University, 6525 AJ Nijmegen, The Netherlands}" |
| 期刊格式 | APS / PRD，双栏 | > "\documentclass[aps,prd, twocolumn, 10pt, ...]{revtex4-2}" |
| 基金/致谢 | NWO Spinoza Grant（授予 Klaas Landsman） | > "This work is supported in part by the NWO Spinoza Grant awarded to Klaas Landsman." |

> 注：本地目录另有 `备注-全息热机.md`（既有笔记），本文档为独立的全篇总结。

---

## 二、摘要（Abstract）

1. **总目标**：用准局部引力热力学在**渐近平坦时空**中构造可逆黑洞热机。
   > 原文："We construct reversible black hole heat engines in asymptotically flat spacetime using quasi-local gravitational thermodynamics."

2. **构造方式**：把 Schwarzschild 黑洞包在有限球形腔中，并把**工作物质**识别为腔边界上**全息对偶的热系统**。
   > 原文："We enclose a Schwarzschild black hole in a finite spherical cavity and identify the working substance with the holographically dual thermal system on the cavity boundary."

3. **压强-体积对**：表面压力与边界面积定义一个热力学压强-体积对，而引力理论的所有耦合常数保持固定。
   > 原文："The surface pressure and the boundary area define a thermodynamic pressure-volume pair, while all coupling constants of the gravitational theory remain fixed."

4. **主要结果**：导出 Carnot、Otto、Diesel、Brayton、Stirling 五种热机的精确效率并做数值比较。
   > 原文："We derive exact efficiencies for the Carnot, Otto, Diesel, Brayton, and Stirling engines and compare them numerically."

5. **非 Carnot 效率的意义**：它们可探测 Schwarzschild 黑洞的准局部物态方程。
   > 原文："The non-Carnot efficiencies probe the quasi-local equations of state of the Schwarzschild black hole."

6. **Stirling 循环的高温行为**：在大黑洞分支上，再生式与非再生式 Stirling 效率在高温极限下都趋于 Carnot 值，且再生过程减小了偏离 Carnot 界的领头阶偏差。
   > 原文："Both the regenerative and non-regenerative Stirling efficiencies on the large black hole branch approach the Carnot value in the high-temperature limit, with regeneration reducing the leading deviation from the Carnot bound."

---

## 三、引言（Sec. I Introduction）

7. **前提**：黑洞是热力学客体，具备温度与熵，并遵循与热力学四定律直接类比的黑洞力学定律。
   > 原文："Black holes are thermodynamic objects. They possess a temperature and entropy, and obey laws directly analogous to the four laws of thermodynamics [Bardeen1973,Bekenstein1973,Hawking1975]."

8. **引出问题**：由此引出一个简单但影响深远的问题——黑洞能否作为热机的工作物质？
   > 原文："This suggests a simple but far-reaching question: can a black hole be used as the working substance of a heat engine?"

9. **早期思想实验**：早期循环热机实验通常把黑洞当作**热沉**而非工作物质。
   > 原文："Early thought experiments considered cyclic engine processes involving black holes, but typically with the black hole acting as a heat sink rather than as the working substance itself [Geroch1971,Bekenstein1973,SCIAMA1976385,Unruh:1982ic]."

10. **系统化框架**：把"黑洞本身作为热机工作物质"系统化，是在**扩展黑洞热力学**中实现的——宇宙学常数被提升为热力学压强，其共轭被解释为热力学体积。
    > 原文："The problem of using the black hole itself as the working substance of a heat engine was put on a systematic footing in extended black hole thermodynamics, where the cosmological constant is promoted to a thermodynamic pressure and its conjugate is interpreted as a thermodynamic volume [Kastor2009,Dolan2011,Cvetic2011,Kubiznak2012]."

11. **由此产生的方向**：该框架催生了渐近 AdS 时空中的全息黑洞热机，后续工作计算了各类黑洞与循环的效率。
    > 原文："This framework led to holographic black hole heat engines in asymptotically anti-de Sitter (AdS) spacetime [Johnson2014], with subsequent work computing efficiencies for a variety of black holes and cycles [Johnson2016,Chakraborty:2016ssb,Hennigar2015,Wei2014,Johnson:2019olt]."

12. **概念困难**：扩展黑洞热力学中的压强有微妙之处——由于 $P\propto-\Lambda$，循环中改变压强就是改变宇宙学常数。
    > 原文："However, the pressure in extended black hole thermodynamics carries a conceptual subtlety. Since $P\propto-\Lambda$ [Kastor2009,Dolan2011], varying the pressure during a cycle means varying the cosmological constant."

13. **全息含义与后果**：在全息中这会改变中心荷、即对偶 CFT 的场论自由度数目；因此这样的循环不是在**一个固定理论**的热力学状态空间中行进，而是穿过**一族理论**的轨迹。
    > 原文："In holography this changes the central charge, or equivalently the number of field theory degrees of freedom, of the dual conformal field theory (CFT) [Karch2015,Visser2022]. Such a cycle therefore does not describe a path through the thermodynamic state space of one fixed theory, but rather a trajectory through a family of theories [Johnson2016,Mancilla:2024spp]."

14. **近期替代方案**：有近期构造把工作物质取为与 AdS 黑洞对偶的热 CFT 态；那里压强与体积直接在边界理论中定义，宇宙学常数与自由度数目保持固定，但该构造本质上依赖 AdS/CFT 对应，因而局限于渐近 AdS。
    > 原文："A recent construction avoids this issue by taking the working substance to be a thermal CFT state dual to an AdS black hole [LilaniVisser2025]. In that setting, pressure and volume are defined directly in the boundary theory, so that the cosmological constant and number of degrees of freedom remain fixed. However, this construction is intrinsically tied to the AdS/CFT correspondence and is therefore restricted to asymptotically AdS spacetimes."

15. **本文路线**：本文发展**渐近平坦时空**中黑洞热机的构造，关键一步是把黑洞置于有限的类时边界内，并使用 York 开创的准局部引力形式。
    > 原文："In this work, we develop a construction of heat engines for black holes in asymptotically flat spacetime. The key step is to place the black hole inside a finite timelike boundary and use the quasi-local gravitational formalism pioneered by York [York1990]."

16. **准局部量**：该框架在有限腔的边界上赋予热力学量，由 Brown–York 应力能量张量提供准局部能量与表面压力；工作物质被识别为该类时边界上的热系统，并把它全息地解释为由腔内的黑洞编码。
    > 原文："In this framework, thermodynamic quantities are assigned at the boundary of the finite cavity, with the Brown-York stress-energy tensor providing the quasi-local energy and surface pressure [Brown1993]. We identify the working substance with the thermal system on this timelike boundary, which we interpret holographically as being encoded by the black hole inside the cavity."

17. **与扩展热力学的根本区别**：表面压力与边界面积给出压强-体积对；与扩展黑洞热力学不同，该压强**不是**通过改变宇宙学常数得到的，因此热机循环在**单一引力理论**的热力学状态空间内进行，所有耦合常数保持固定。
    > 原文："The surface pressure and boundary area then provide a thermodynamic pressure-volume pair for the boundary system [Borsboom:2026ash]. Unlike in extended black hole thermodynamics, this pressure is not obtained by varying the cosmological constant. The heat engine cycle therefore takes place within the thermodynamic state space of a single gravitational theory, with all coupling constants held fixed."

18. **具体模型**：以四维 Schwarzschild 黑洞置于球形腔为例，这是热平衡可良定义、且热力学状态空间可显式参数化的最简单渐近平坦例子。
    > 原文："We illustrate the construction with a four-dimensional Schwarzschild black hole enclosed in a spherical cavity. This is the simplest asymptotically flat example in which thermal equilibrium is well-defined, and the thermodynamic state space can be parametrized explicitly."

19. **逻辑的普适性**：同样的逻辑不限于渐近平坦时空，只要存在合适的类时边界与准局部热力学描述即可应用，包括其他渐近行为的黑洞。
    > 原文："The same logic is not restricted to asymptotically flat spacetimes, but can be applied whenever a suitable timelike boundary and quasi-local thermodynamic description are available, including black holes with other asymptotics."

20. **本文给出什么**：构造 Carnot、Otto、Diesel、Brayton、Stirling（再生与非再生）循环的 Schwarzschild-腔版本，给出精确效率、数值比较，并展示其在 $P$–$V$ 与 $T$–$S$ 平面上的路径。
    > 原文："Within this framework, we construct the Schwarzschild-cavity analogues of the standard reversible heat engines. We derive exact efficiencies for the Carnot, Otto, Diesel, Brayton, and Stirling cycles (regenerative and non-regenerative), compare them numerically, and display their paths in the $P$-$V$ and $T$-$S$ planes."

21. **热机作为诊断工具**：与 [LilaniVisser2025] 的 CFT 热机（其效率常由普适的标度不变物态方程固定）不同，这里的非 Carnot 效率探测的是 Schwarzschild 黑洞在腔中的**具体准局部物态方程**；在这个意义上，这些热机成为准局部引力热力学的诊断工具——其非 Carnot 效率编码了黑洞物态方程与普通物质的差别。
    > 原文："Unlike the CFT engines of~\cite{LilaniVisser2025}, whose efficiencies are often fixed by the universal scale-invariant equation of state, the non-Carnot efficiencies found here probe the specific quasi-local equations of state of the Schwarzschild black hole in a cavity. In this sense, these heat engines become a diagnostic of quasi-local gravitational thermodynamics: their non-Carnot efficiencies encode how the black hole equation of state differs from that of ordinary matter."

---

## 四、腔中 Schwarzschild 黑洞的全息热力学（Sec. II）

22. **度规**：四维渐近平坦 Schwarzschild 置于有限球形腔中，$f(r)=1-r_h/r$，腔位于 $r_B>r_h$。
    > 原文："We consider a four-dimensional, asymptotically flat Schwarzschild black hole enclosed in a finite spherical cavity. The spacetime metric is given by"（其后为

    $$
    ds^2 = - f(r)dt^2 + f^{-1}(r)dr^2 + r^2 d\Omega_{2}^2,
    $$

    $f(r) = 1 - r_h/r$）；"where $r_h$ is the horizon radius. The spherical cavity is located at the radius $r_B>r_h$."

23. **全息解释**：假设类时边界 $r=r_B$ 上的准局部热系统具有全息解释，即边界热态由腔内 Schwarzschild 几何编码；在这个意义上，类时边界充当**全息屏**。
    > 原文："We assume that the quasi-local thermodynamic system defined on the timelike boundary at $r=r_B$ admits a holographic interpretation: the boundary thermal state is encoded by the Schwarzschild geometry inside the cavity. In this sense, the timelike boundary acts as a holographic screen [Bousso1999]."

24. **膜范式极限**：在膜范式中，当边界取近视界极限 $r_B\to r_h$ 时，该屏趋近**拉伸视界**。
    > 原文："In the membrane paradigm [Damour1978,Thorne1986], in which the boundary is taken toward the near-horizon limit $r_B\to r_h$, this screen approaches the stretched horizon."

25. **平衡假设**：只考虑热平衡构型而非蒸发黑洞；黑洞由入射热流平衡出射 Hawking 流（Hartle–Hawking 构造）而维持平衡；所用态函数在欧氏引力路径积分的 Schwarzschild 鞍点上取领头半经典阶。
    > 原文："We restrict attention to thermal equilibrium configurations rather than evaporating black holes. The Schwarzschild black hole is maintained in equilibrium by an incoming thermal flux that balances the outgoing Hawking flux, as in the Hartle-Hawking construction [Hartle:1976tp]. The thermodynamic state functions used below are evaluated at leading semiclassical order on the Schwarzschild black hole saddle of the Euclidean gravitational path integral."

26. **状态变量与维度**：边界系统的平衡热力学由 $(E,T,S,P,V)$ 描述，即准局部内能、边界温度、熵、全息压强、与腔壁相关的热力学体积；这些量**不独立**——Schwarzschild 腔平衡族是**二维**的（已由几何参数 $r_h,r_B$ 两个量显现）。选定两个独立热力学变量即确定一个热力学表示，每个表示中对应的热力学势（作为所选变量的函数）是基本关系，物态方程由其一次导数给出。
    > 原文："The equilibrium thermodynamics of the boundary system can be described in terms of the thermodynamic state variables $(E,T,S,P,V)$. These comprise the quasi-local internal energy~$E$, the boundary temperature~$T$, the entropy~$S$, the holographic pressure~$P$, and the thermodynamic volume~$V$ associated with the cavity wall. These quantities are not independent: the Schwarzschild cavity equilibrium family is two-dimensional, as is already apparent from the two geometric parameters $r_h$ and $r_B$. A choice of two independent thermodynamic variables specifies a thermodynamic representation [callen1985thermodynamics]. In each representation, the corresponding thermodynamic potential expressed as a function of the chosen variables is the fundamental relation; the equations of state are then obtained from its first derivatives [Borsboom:2026sex]."

### 4.1 能量表示 $(S,V)$

27. **基本关系**：以熵 $S$ 与体积 $V$ 为独立变量，热力学势为内能 $E(S,V)$（能量表示），其微分为

    $$
    dE = T\,dS - P\,dV \qquad \text{(式 (1))}
    $$

    > 原文："Taking the entropy~$S$ and volume~$V$ as independent variables, the thermodynamic potential is the internal energy~$E(S, V)$, known as the \emph{energy representation}. Its differential yields"；原文式 (1)："d E = T d S - P d V"

28. **熵与体积的具体形式**：熵由 Bekenstein–Hawking 公式给出，热力学体积取球形腔的面积

    $$
    S = \frac{\pi r_h^{2}}{G}\,,\qquad V = 4\pi r_B^{2} \qquad \text{(式 (2))}
    $$

    > 原文："In the present spherically symmetric setup, the entropy and volume are determined solely by the horizon radius $r_h$ and the cavity radius $r_B$, respectively. The entropy is given by the Bekenstein-Hawking formula and the thermodynamic volume is identified with the area of the spherical cavity"

29. **"边界体积"的命名理由**：虽然从体（bulk）视角 $V$ 几何上是腔壁面积，但它是边界热力学系统的空间体积，而该系统是二维的；因此称 $V$ 为**边界体积**，其共轭 $P$ 是表面压力，于是 $PdV$ 具有机械功的量纲与解释。
    > 原文："Although $V$ is geometrically the area of the cavity wall from the bulk perspective, it is the spatial volume of the boundary thermodynamic system, which has two spatial dimensions. We therefore refer to $V$ as the boundary volume. Its conjugate $P$ is a surface pressure, so that $PdV$ has the dimensions and interpretation of mechanical work."

30. **内能 = 准局部 Brown–York 能量**，作为 $(S,V)$ 的函数为

    $$
    E(S,V) = \frac{1}{2G}\sqrt{\frac{V}{\pi}}\left[\,1 - \sqrt{1 - \sqrt{\tfrac{4GS}{V}}}\,\right] \qquad \text{(式 (3))}
    $$

    > 原文："The internal energy $E$ is equal to the quasi-local Brown-York energy [York1990,Brown1993], which can be written in terms of the state variables $(S,V)$ as"

31. **边界温度 = Tolman 温度**（$r=r_B$ 处观者看到的红移 Hawking 温度），作为 $(S,V)$ 的函数为

    $$
    T(S,V) = \frac{1}{4\sqrt{\pi G S}\,\sqrt{1 - \sqrt{4GS/V}}} \qquad \text{(式 (4))}
    $$

    > 原文："Similarly, the local temperature at the boundary is the redshifted Hawking temperature seen by an observer at $r=r_B$, also known as the Tolman temperature, which as a function of $(S,V)$ is"

32. **全息压强 = Brown–York 表面压力**，作为 $(S,V)$ 的函数为

    $$
    P(S,V) = \frac{1}{4G\sqrt{\pi V}}\left[ \frac{1 - \tfrac{1}{2}\sqrt{4GS/V}}{\sqrt{1 - \sqrt{4GS/V}}} - 1 \right] \qquad \text{(式 (5))}
    $$

    > 原文："According to \cite{Banihashemi:2024yye,Borsboom:2026ash}, the holographic pressure $P$ is the Brown-York surface pressure [York1990,Brown1993] on the cavity wall"

33. **背景减除**：对 $E$ 与 $P$ 都做了平直空间背景减除，使它们在 Minkowski 时空（$r_h=0$）中恒为零。
    > 原文："A flat-space background subtraction is applied to both $E$ and $P$, so that they vanish identically in Minkowski spacetime, for which $r_h = 0$."

34. **无限体积极限**：固定熵下 $r_B\to\infty$（$r_h$ 固定）时，能量变为 ADM 质量 $E\to M$、边界温度退化为 Hawking 温度 $T\to T_{\rm H}$、压强消失 $P\to 0$；于是式 (1) 中的功项 $PdV$ 消失，微分基本关系退化为 $dM = T_{\rm H}dS$。
    > 原文："In the infinite-volume limit at fixed entropy ($r_B \to \infty$, $r_h$ fixed), the energy becomes the ADM mass $E \to M$, the boundary temperature reduces to the Hawking temperature $T \to T_{\rm H}$, and the pressure vanishes, $P \to 0$. Consequently, the work term $P dV$ in~\eqref{eq:firstlaw} vanishes, and the differential fundamental relation reduces to $d M = T_{\rm H} d S$."

### 4.2 Helmholtz（正则）表示 $(T,V)$

35. **定义**：独立变量为温度 $T$ 与体积 $V$，热力学势为 Helmholtz 自由能 $F=E-TS$，其变分为 $dF=-S\,dT-P\,dV$；要把量表示为 $(T,V)$ 的函数，必须反解 Tolman 温度方程得到熵的物态方程 $S(T,V)$，这也是参数化 Carnot 与 Stirling 循环中等温过程所必需的。
    > 原文："Two further thermodynamic representations are relevant for the cycle calculations below. In the \emph{Helmholtz (canonical) representation}, the independent variables are the temperature $T$ and the volume $V$, and the thermodynamic potential is the Helmholtz free energy"；"and its variation yields"；"To express thermodynamic quantities in terms of $(T,V)$, we must invert the Tolman temperature equation \eqref{eq:T} to obtain the entropy equation of state $S(T,V)$. This inversion is also required to parametrize the isothermal processes that appear in the Carnot and Stirling cycles."

36. **反解得到三次方程**：在四维时空中 Tolman 温度方程可整理为关于视界半径的三次方程

    $$
    r_h^3 - r_B\, r_h^2 + \frac{r_B}{(4\pi T)^2} = 0 \qquad \text{(式 (6))}
    $$

    > 原文："In four spacetime dimensions, the Tolman temperature equation \eqref{eq:T} can be rearranged into a cubic equation for the horizon radius"

37. **两支解的存在条件**：York 证明，当 $r_BT>\sqrt{27}/(8\pi)$ 时，该三次方程在物理区间 $0<r_h<r_B$ 内有两个不同的正实根；引入 $x\equiv r_h/r_B=\sqrt{4GS/V}$ 后，这两根对应**小黑洞分支** $0<x<2/3$ 与**大黑洞分支** $2/3<x<1$。
    > 原文："York \cite{York1985a,York1990} showed that this cubic equation admits two distinct positive, real roots in the physical range $0<r_h<r_B$ when $r_B T>\sqrt{27}/(8\pi)$. Introducing $x\equiv r_h/r_B=\sqrt{4GS/V}$, these roots correspond to the small black hole branch $0<x<2/3$ and the large black hole branch $2/3<x<1$."

38. **只取大黑洞分支的原因**：形式上循环可以画在任一支上，但对本文考虑的热库驱动的可逆循环，限制在大黑洞分支；因为 $2/3<x<1$ 时定容热容为正，该分支在固定边界体积下做准静态热交换是**局部稳定**的；相反小黑洞分支 $C_V<0$，热交换引起的温度涨落被放大而非衰减，不适合作被动稳定的工作物质。
    > 原文："Formally, thermodynamic cycles can be drawn on either branch. For the reservoir driven reversible cycles considered here, however, we restrict to the large black hole branch. The fixed volume heat capacity is positive for $2/3<x<1$, so this branch is locally stable under quasi-static heat exchange at fixed boundary volume. By contrast, the small black hole branch has $C_V<0$: a temperature fluctuation induced by heat exchange is amplified rather than damped, making this branch unsuitable as a passively stable working substance."

39. **大黑洞分支的视界半径闭式解**：

    $$
    r_h(T,V) = \frac{r_B}{3}\left[1+2\cos\left(\frac{\alpha(T,V)}{3}\right)\right]
    $$

    （式 (7)），其中

    $$
    \alpha(T,V)=\arccos\left[1-\frac{27}{8\pi VT^2}\right],
    $$

    $0\le\alpha\le\pi$（式 (8)）；小黑洞分支形式相同，只是余弦幅角平移 $4\pi/3$，即 $\cos[(\alpha+4\pi)/3]$。
    > 原文："In closed form, the horizon radius for the large black hole is given by"；"where the auxiliary angle $\alpha$ is defined by"；"The horizon radius for the small black hole branch takes the same form, except that the cosine argument in \eqref{eq:rh_large} is shifted by $4\pi/3$, i.e. $\cos [(\alpha + 4\pi)/3]$."

### 4.3 焓表示 $(S,P)$

40. **定义**：独立变量为熵 $S$ 与压强 $P$，热力学势为焓 $H=E+PV$（式 (9)），其微分为 $dH=T\,dS+V\,dP$（式 (10)）；焓对 Brayton 与 Diesel 循环特别有用，因为在可逆等压过程中交换的热量等于端点之间的焓差。
    > 原文："In the \emph{enthalpy representation}, the two independent variables are the entropy $S$ and the pressure $P$, and the thermodynamic potential is the enthalpy"；"Its differential satisfies"；"The enthalpy is particularly useful for the Brayton and Diesel cycles because, along a reversible isobaric stroke, the heat exchanged is equal to the change in enthalpy between the endpoints."

41. **引入红移参数**：为把量表示成 $(S,P)$ 的函数需反解压强方程求体积；引入无量纲红移参数 $y\equiv\sqrt{1-r_h/r_B}$（$0<y<1$，式 (11)），它度量视界与腔壁之间的引力红移；此时压强方程可改写为 $(1-y)^3(1+y)=16\,GP\sqrt{\pi GS}\;y$（式 (12)）。
    > 原文："To express the thermodynamic quantities in terms of $(S,P)$, the pressure equation \eqref{eq:P} must be inverted for the volume. Following \cite{Borsboom:2026sex}, we introduce the dimensionless redshift parameter"；"which measures the gravitational redshift between the horizon and the cavity wall. In terms of $y$, the pressure equation can be rewritten as"

42. **唯一物理根**：当 $S>0$、$P>0$ 时式 (12) 有唯一物理根 $y(S,P)\in(0,1)$，可用 Ferrari 方法以闭式给出（式 (13)），其中 $w=w(S,P)$ 由无量纲组合 $Z\equiv GP\sqrt{\pi GS}$ 表达（式 (14)）。
    > 原文："For $S>0$ and $P>0$ this admits a unique physical root $y(S,P)\in(0,1)$, which can be obtained in closed form via Ferrari's method as \cite{Borsboom:2026sex}"；"In terms of the dimensionless combination $Z \equiv GP\sqrt{\pi GS}$, the function $w(S,P)$ is"

43. **物态方程与焓的紧凑形式**：

    $$
    T(S,P)=\frac{1}{4\sqrt{\pi GS}\,y(S,P)},
    $$

    $V(S,P)=\frac{4GS}{[1-y(S,P)^2]^2}$（式 (15)），焓

    $$
    H(S,P)=\sqrt{\frac{S}{\pi G}}\frac{1+3y(S,P)}{4y(S,P)[1+y(S,P)]}
    $$

    （式 (16)）；这些闭式表达是计算 Brayton 与 Diesel 循环等压冲程所需的全部内容。
    > 原文："The equations of state then take the compact form"；"and the enthalpy is"；"These closed-form expressions for the enthalpy and equations of state in this representation are all that is required to evaluate the isobaric strokes of the Brayton and Diesel cycles below."

---

## 五、Schwarzschild 黑洞的可逆热机（Sec. III）

44. **效率定义**：热机在闭合循环中工作，从热源吸热、部分转化为机械功、其余放给热沉；记 $Q_{\rm in}$ 为总吸热、$Q_{\rm out}$ 为总放热、$W$ 为一个完整循环中工作物质所做的净功，效率为

    $$
    \eta=\frac{W}{Q_{\rm in}}=1-\frac{Q_{\rm out}}{Q_{\rm in}} \qquad \text{(式 (17))}
    $$

    其中 $Q_{\rm in}$ 与 $Q_{\rm out}$ 取正值。
    > 原文："A heat engine is a device that operates in a closed thermodynamic cycle, absorbs heat from a source, converts part of this heat into mechanical work, and releases the remaining heat to a sink. We denote by $Q_{\mathrm{in}}$ the total heat absorbed from the source, by $Q_{\mathrm{out}}$ the total heat released to the sink, and by $W$ the net work performed by the working substance (system) during one complete cycle. The efficiency is defined as"；"where $Q_{\mathrm{in}}$ and $Q_{\mathrm{out}}$ are taken to be positive quantities."

45. **理想化假设**：考虑理想可逆热机——工作物质准静态地经过平衡态，不产生熵；热源与热沉建模为一个或多个热库，其温度在热交换过程中不变；等温冲程与固定温度热库交换热量；更一般地，可逆非等温冲程中的热交换应理解为与温度始终匹配工作物质瞬时温度的一族辅助热库做准静态交换。
    > 原文："We consider idealized reversible heat engines: the working substance evolves quasi-statically through equilibrium states, and no entropy is produced. The heat source and heat sink are modelled as one or more thermal reservoirs, large enough that their temperatures remain unchanged during heat exchange. Isothermal strokes involve heat exchange with reservoirs at a fixed temperature. More generally, when heat is exchanged along a reversible non-isothermal stroke, it should be understood as quasi-static exchange with a continuous family of auxiliary reservoirs whose temperatures match the instantaneous temperature of the working substance."

46. **工作物质的重新界定**：本文的工作物质不是气缸中的理想气体，而是球形腔壁上的热系统，全息地由腔内的 Schwarzschild 黑洞描述；热力学体积 $V$ 是腔壁面积，压强 $P$ 是相应的表面压力。
    > 原文："In this paper, the working substance is not an ideal gas in a cylinder, but the thermal system on the spherical cavity wall, described holographically by a Schwarzschild black hole inside the cavity. The thermodynamic volume $V$ is the area of the cavity wall, and the pressure $P$ is the corresponding surface pressure."

47. **热与功的表达**：沿可逆冲程，热交换为 $\delta Q=T\,dS$，工作物质做的机械功为 $\delta W=P\,dV$；准局部能量 $E$ 记录了热与功贡献的平衡。
    > 原文："Along a reversible stroke, heat exchange is given by $\delta Q = T dS$, while the mechanical work performed by the working substance is $\delta W = P dV$. The quasi-local energy $E$ accounts for the balance between these heat and work contributions."

48. **循环的几何解读**：热交换改变黑洞熵从而改变视界大小——吸热时 $S$ 增大、黑洞长大；放热时 $S$ 减小、黑洞缩小；物理上放热可视为通过到达腔壁的 Hawking 辐射对能量做受控准静态抽取，被冷热库吸收，而非不受控的蒸发。机械功则与腔壁的重新标度有关：膨胀增大 $V$ 对应工作物质对外做功，压缩则对应外界对其做功；热流与腔运动的关系取决于冲程类型。
    > 原文："This gives a direct geometric interpretation of the cycle. Heat exchange changes the black hole entropy and hence the horizon size: when heat is absorbed, $S$ increases and the black hole grows; when heat is rejected, $S$ decreases and the black hole shrinks. Physically, heat rejection can be viewed as a controlled quasi-static extraction of energy through the Hawking radiation reaching the cavity wall, which is absorbed by the cold reservoir, rather than as uncontrolled black hole evaporation. Mechanical work, on the other hand, is associated with rescaling the cavity wall. An expansion increases $V$ and corresponds to work performed by the working substance, whereas a compression corresponds to work performed on it. The relation between heat flow and cavity motion depends on the type of stroke."

49. **四种基本冲程**：可逆循环由等温、绝热、等容、等压四种基本冲程构成。
    > 原文："The reversible cycles considered below are built from four elementary strokes: isothermal, adiabatic, isochoric, and isobaric processes."

50. **等容冲程**：$dV=0$，腔壁固定，不做机械功，热交换只改变熵；等容吸热使黑洞长大，等容放热使其缩小；温度变化依分支而定，因为

    $$
    \left(\frac{\partial T}{\partial S}\right)_V=\frac{T(3x-2)}{4S(1-x)} \qquad \text{(式 (18) 附近)}
    $$

    因此在定容下吸热会提高大黑洞分支（$x>2/3$）的边界温度，但降低小黑洞分支（$x<2/3$）的温度；反之放热降低大分支温度而提高小分支温度。该符号变化与定容热容 $C_V$ 在 $x=2/3$ 处变号是同一次变号。
    > 原文："In an \emph{isochoric} stroke, $dV=0$, the cavity wall is held fixed. No mechanical work is performed, and heat exchange changes only the entropy. Isochoric heat input grows the black hole, while isochoric heat rejection shrinks it. The associated temperature change is branch-dependent. At fixed $V$, one finds"；"Thus, heat input at fixed volume raises the boundary temperature on the large black hole branch ($x>2/3$), but lowers it on the small black hole branch ($x<2/3$). Conversely, heat rejection lowers the temperature on the large branch but raises it on the small branch. The sign change in

    $$
    \left(\partial T/\partial S\right)_V
    $$

    is the same sign change as that of the fixed-volume heat capacity $C_V$ at $x=2/3$ [York1990]."

51. **绝热冲程**：不交换热量；由于可逆故 $dS=0$，视界大小保持不变，唯一的几何变化是腔壁的重新标度，准局部能量的变化完全来自机械功；这一点与大小分支之分无关。
    > 原文："In an \emph{adiabatic} stroke, no heat is exchanged. Since the process is reversible, $dS=0$, so the horizon size remains fixed. The only geometric change is the rescaling of the cavity wall, and the corresponding change in quasi-local energy is entirely due to mechanical work. This is independent of the large/small branch distinction."

52. **等压冲程**：$dP=0$，全息压强固定；视界与腔壁必须相关联地变化——热交换改变 $S$ 时体积 $V$ 随之调整以保持态在等压曲线 $P(S,V)=P_0$ 上；在正压下该响应在大小分支间不变号，吸热使熵增大并伴随 $V$ 增大。
    > 原文："In an \emph{isobaric} stroke, $dP=0$, the holographic pressure is held fixed. The horizon and cavity wall must then vary in a correlated way: as heat exchange changes~$S$, the volume~$V$ adjusts so that the state remains on the isobaric curve $P(S,V)=P_0$. At positive pressure this response does not change sign between the small and large black hole branches: heat input increases the entropy and is accompanied by an increase in $V$."

53. **等压过程的温度下降与负 $C_P$**：但边界温度沿该冲程下降，反映定压热容 $C_P$ 为负；因此等压路径不应解释为在无约束压强与温度涨落下的被动稳定平衡；在下文的 Diesel 与 Brayton 循环中，等压线被当作**主动控制**的准静态路径：连续调节腔壁与热交换，使 Brown–York 压强保持固定而系统经过平衡态。
    > 原文："However, the boundary temperature decreases along such a stroke, reflecting the negative fixed-pressure heat capacity $C_P$ [Comer:1992pc,Borsboom:2026sex]. Consequently, the isobaric path should not be interpreted as a passively stable equilibrium under unconstrained pressure and temperature fluctuations. In the Diesel and Brayton cycles below, an isobar is instead treated as an actively controlled quasi-static path: the cavity wall and the heat exchange are adjusted continuously so that the Brown-York pressure remains fixed while the system passes through equilibrium states."

54. **等温冲程**：$dT=0$，腔壁处边界温度固定；腔壁膨胀或收缩，同时工作物质与同边界温度的热库保持热接触，故 $S$ 与 $V$ 都沿等温曲线 $T(S,V)=T_0$ 变化；这里热流与腔运动的关系依分支而定，因为

    $$
    \left(\frac{\partial V}{\partial S}\right)_T=\frac{4G(3x-2)}{x^3} \qquad \text{(式 (19) 附近)}
    $$

    因此在**大黑洞分支** $(\partial V/\partial S)_T>0$，在**小黑洞分支** $(\partial V/\partial S)_T<0$。
    > 原文："In an \emph{isothermal} stroke, $dT=0$, the boundary temperature at the cavity wall is held fixed. The cavity wall expands or contracts while the working substance remains in thermal contact with a reservoir at the same boundary temperature, so both $S$ and $V$ vary along the isothermal curve $T(S,V)=T_0$. Here the relation between heat flow and cavity motion is branch-dependent. Along an isotherm one finds"；"Thus

    $$
    \left(\partial V/\partial S\right)_T>0
    $$

    on the large black hole branch, while

    $$
    \left(\partial V/\partial S\right)_T<0
    $$

    on the small black hole branch."

55. **等温冲程的物理细节**：等温吸热在**两支**上都增熵并使视界变大；在大分支伴随腔的膨胀，在小分支伴随压缩；反之等温放热在**两支**上都减熵并使视界缩小，大分支上腔被压缩而小分支上腔被膨胀。
    > 原文："Isothermal heat input increases the entropy and grows the horizon on both branches. On the large branch, this is accompanied by expansion of the cavity, whereas on the small branch, it is accompanied by compression. Conversely, isothermal heat rejection decreases the entropy and shrinks the horizon on both branches; the cavity is compressed on the large branch but expanded on the small branch."

56. **等温过程的力学不稳定性与处理方式**：在固定边界温度下，大黑洞分支具有**负的等温体积模量**，因此在腔体积无约束涨落时力学不稳定；Carnot 与 Stirling 循环中的等温冲程被当作**外部约束**的准静态路径：按预设协议缓慢改变腔半径，同时与热库交换热量以保持边界温度固定。
    > 原文："At fixed boundary temperature, the large black hole branch has negative isothermal bulk modulus and is therefore mechanically unstable under unconstrained fluctuations of the cavity volume [Borsboom:2026sex]. The isothermal strokes in the Carnot and Stirling cycles are instead treated as externally constrained quasi-static paths: the cavity radius is varied slowly according to a prescribed protocol, while heat is exchanged with a reservoir to keep the boundary temperature fixed."

---

## 六、标准全息热机的效率（Sec. IV）

57. **本节范围与约定**：给出 Carnot、Otto、Diesel、Brayton、Stirling 五种理想循环的效率；详细推导见附录；每个循环经过状态 $1\to2\to3\to4\to1$。
    > 原文："We now state the efficiencies of the following idealized cycles: the Carnot, Otto, Diesel, Brayton, and Stirling cycles. Detailed derivations are given in Appendix~\ref{app:efficiency_derivations}. We take each cycle to run through the states $1\to2\to3\to4\to1$."

58. **分支限制**：正文中所有效率与循环图都限制在**大黑洞分支** $x=r_h/r_B>2/3$；对每个进入效率计算的状态都检验分支条件，且曲线只画在其所有状态都留在该分支的范围内；由于 $x$ 在四种冲程上都是单调的，只需检验每个循环的四个角态。
    > 原文："All efficiencies and cycle diagrams in the main text are restricted to the large black hole branch, $x=r_h/r_B>2/3$. The branch condition is tested at every state entering an efficiency, and a curve is drawn only over the range for which all of its states remain on that branch. Since $x$ varies monotonically along each of the four stroke types used here, it suffices to test the four corner states of each cycle."

59. **大分支上 Otto 循环的可行条件**：大分支上每个态满足 $4GS<V<9GS$，因此限于该分支的 Otto 循环必须满足 $V_{\min}>4GS_{\max}$ 且 $V_{\max}<9GS_{\min}$（式 (20)）；第一个条件保证态 $(S_{\max},V_{\min})$ 在 $x=1$ 以下，第二个保证 $(S_{\min},V_{\max})$ 在 $x=2/3$ 以上。小分支 $x<2/3$ 的相应效率图与循环图在补充材料中给出；所有数值图中取 $G=1$。
    > 原文："On the large branch, every state obeys $4GS<V<9GS$, so an Otto cycle confined to it must satisfy"；"where the first condition keeps the state $(S_{\max},V_{\min})$ below $x=1$, while the second keeps $(S_{\min},V_{\max})$ above $x=2/3$. For completeness, corresponding efficiency plots and cycle diagrams for the small black hole branch, $x<2/3$, are presented and discussed in the Supplemental Material. In all numerical plots we work in units in which $G=1$."

### 6.1 Carnot 热机

60. **循环构成**：Carnot 循环由温度为 $T_{\rm h}$ 与 $T_{\rm c}<T_{\rm h}$ 的两条等温冲程与两条绝热冲程连接而成。
    > 原文："The Carnot cycle consists of two isothermal strokes at temperatures $T_{\rm h}$ and $T_{\rm c}<T_{\rm h}$, connected by two adiabatic strokes."

61. **热等温段 $1\to2$**：工作物质在固定边界温度 $T_{\rm h}$ 下从热库吸热（等温吸热），熵增大、视界长大；在大黑洞分支该冲程对应腔的膨胀，故 $dV>0$，工作物质做正功。
    > 原文："Along the hot isotherm $1\to2$, the working substance absorbs heat from the hot reservoir at fixed boundary temperature $T_{\rm h}$: \emph{isothermal heat input}. The entropy increases and the horizon grows. On the large black hole branch this stroke is an expansion of the cavity, so $dV>0$ and the working substance performs positive work."

62. **绝热膨胀 $2\to3$**：腔被热隔离，无热交换，视界大小不变；腔壁外移，工作物质做正功，系统温度从 $T_{\rm h}$ 降到 $T_{\rm c}$。
    > 原文："The stroke $2\to3$ is an \emph{adiabatic expansion}. The cavity is thermally isolated, so no heat is exchanged and the horizon size remains fixed. The cavity wall moves outward, so the working substance performs positive work. The temperature of the system decreases from $T_{\rm h}$ to $T_{\rm c}$."

63. **冷等温段 $3\to4$**：在固定边界温度 $T_{\rm c}$ 下向冷库放热（等温放热），熵减小、视界缩小；在大黑洞分支该冲程是腔的压缩，$dV<0$，外界对工作物质做功。
    > 原文："Along the cold isotherm $3\to4$, the working substance rejects heat to the cold reservoir at fixed boundary temperature $T_{\rm c}$: \emph{isothermal heat output}. The entropy decreases and the horizon shrinks. On the large black hole branch this stroke is a compression of the cavity, so $dV<0$ and work is done on the working substance."

64. **绝热压缩 $4\to1$**：熵与视界不变，腔壁内移，外界做功，工作物质温度回升到 $T_{\rm h}$。
    > 原文："Finally, $4\to1$ is an \emph{adiabatic compression}. The entropy and horizon size remain fixed, the cavity wall moves inward, work is done on the system, and the temperature of the working substance rises back to $T_{\rm h}$."

65. **Carnot 效率**：对工作在温度 $T_{\rm h}$、$T_{\rm c}$ 两热库之间的可逆热机，Carnot 定理固定了效率、与工作物质无关，故

    $$
    \eta_{\rm Carnot}=1-\frac{T_{\rm c}}{T_{\rm h}} \qquad \text{(式 (21))}
    $$

    因此非平凡的信息不在效率数值，而在 $P$–$V$ 平面上循环的形状（与理想气体不同）。
    > 原文："For a reversible engine operating between two reservoirs at temperatures $T_{\rm h}$ and $T_{\rm c}$, Carnot's theorem fixes the efficiency independently of the working substance. Hence the Schwarzschild-cavity Carnot cycle has"；"The nontrivial information is therefore not in the value of the efficiency, but in the shape of the cycle in the $P$-$V$ plane, which differs from that of an ideal gas."

### 6.2 Otto 热机

66. **循环构成**：Otto 循环由两条绝热与两条等容冲程组成，由两个体积 $V_1>V_2$ 与绝热线决定的两个熵水平指定，$S_1=S_2$、$S_3=S_4$、$S_3>S_1$。
    > 原文："The Otto cycle consists of two adiabatic strokes and two isochoric strokes. It is specified by two volumes $V_1>V_2$ and two entropy levels fixed by the adiabats, with $S_1=S_2$, $S_3=S_4$, and $S_3>S_1$."

67. **$1\to2$ 绝热压缩**：无热交换、视界不变，腔壁从 $V_1$ 内移到 $V_2$；$dV<0$，外界对工作物质做功，温度升高。
    > 原文："The stroke $1\to2$ is an \emph{adiabatic compression}. No heat is exchanged, so the horizon size remains fixed, while the cavity wall moves inward from $V_1$ to $V_2$. Since $dV<0$, work is done on the working substance, and the temperature of the working substance increases."

68. **$2\to3$ 等容吸热**：腔壁固定在 $V_2$，工作物质吸热；因 $dV=0$ 不做机械功；吸热使熵从 $S_1$ 增至 $S_3$、黑洞长大；在大分支上伴随边界温度升高。
    > 原文："Along $2\to3$, the cavity wall is held fixed at $V_2$ and the working substance absorbs heat: \emph{isochoric heat input}. Since $dV=0$, no mechanical work is performed. As heat is absorbed, the entropy increases from $S_1$ to $S_3$, and the black hole grows. On the large black hole branch, this is accompanied by an increase in the boundary temperature."

69. **$3\to4$ 绝热膨胀**：视界不变，腔壁从 $V_2$ 外移回 $V_1$；$dV>0$，工作物质做正功，温度降低。
    > 原文："The stroke $3\to4$ is an \emph{adiabatic expansion}. The horizon size remains fixed, while the cavity wall moves outward from $V_2$ back to $V_1$. Hence $dV>0$, the working substance performs positive work, and the temperature decreases."

70. **$4\to1$ 等容放热**：腔壁固定在 $V_1$，工作物质放热；不做机械功；放热使熵从 $S_3$ 减到 $S_1$、黑洞缩小，系统回到初态；在大分支上伴随边界温度下降。
    > 原文："Finally, along $4\to1$, the cavity wall is held fixed at $V_1$, and the working substance rejects heat: \emph{isochoric heat rejection}. No mechanical work is performed. As heat is rejected, the entropy decreases from $S_3$ to $S_1$ and the black hole shrinks, returning the system to its initial state. On the large black hole branch this is accompanied by a decrease in the boundary temperature."

71. **Otto 效率**：热交换只发生在两条等容冲程上，因 $dV=0$，交换的热量等于内能变化，故精确效率为

    $$
    \eta_{\rm Otto}=1-\frac{E(S_3,V_1)-E(S_1,V_1)}{E(S_3,V_2)-E(S_1,V_2)} \qquad \text{(式 (22))}
    $$

    其中 $E(S,V)$ 由式 (3) 给出。
    > 原文："The heat exchange takes place only along the two isochoric strokes. Since $dV=0$ there, the heat exchanged is equal to the change in the internal energy. The exact efficiency is therefore"；"where the function $E(S,V)$ is given in~\eqref{eq:U}."

72. **与理想气体的关键差别**：对理想气体，相应表达式只依赖于压缩比 $V_1/V_2$；而对 Schwarzschild-腔系统这种抵消**不发生**，效率依赖于四个端点数据 $(S_1,S_3,V_1,V_2)$。
    > 原文："For an ideal gas the corresponding expression reduces to a function of the compression ratio $V_1/V_2$ alone. For the Schwarzschild-cavity system this cancellation does not occur, so the efficiency depends on the four endpoint data $(S_1,S_3,V_1,V_2)$."

### 6.3 Diesel 热机

73. **与 Otto 的区别**：Diesel 循环把 Otto 的等容吸热冲程换成等压冲程，由 $S_1=S_2$、$S_3=S_4$、$P_2=P_3$、$V_4=V_1$ 指定。
    > 原文："The Diesel cycle differs from the Otto cycle by replacing the isochoric heat input stroke with an isobaric one. It is specified by $S_1=S_2$, $S_3=S_4$, $P_2=P_3$, and $V_4=V_1$."

74. **$1\to2$ 绝热压缩**：视界不变，腔壁从 $V_1$ 内移到 $V_2$，外界做功，边界温度升高。
    > 原文："The stroke $1\to2$ is an \emph{adiabatic compression}. The horizon size remains fixed, while the cavity wall moves inward from $V_1$ to $V_2$. Work is done on the working substance, and the boundary temperature increases."

75. **$2\to3$ 等压吸热**：压强固定 $P_2=P_3$，工作物质吸热；熵从 $S_1$ 增至 $S_3$，黑洞长大；边界体积沿等压线调整，故该冲程伴随膨胀；与 Otto 的等容吸热不同，沿该等压冲程**边界温度下降**，这与定压热容为负有关。
    > 原文："Along $2\to3$, the pressure is held fixed, $P_2=P_3$, and the working substance absorbs heat: \emph{isobaric heat input}. The entropy increases from $S_1$ to $S_3$, so the black hole grows. The boundary volume adjusts along the isobar, so this stroke is accompanied by an expansion. Unlike the isochoric heat input stroke of the Otto cycle, the boundary temperature decreases along this isobaric stroke, which is related to the negative fixed-pressure heat capacity."

76. **$3\to4$ 绝热膨胀**：视界不变，腔壁外移直到体积回到 $V_1$，工作物质做正功，边界温度下降。
    > 原文："The stroke $3\to4$ is an \emph{adiabatic expansion}. The horizon size remains fixed, while the cavity wall moves outward until the volume reaches $V_1$. The working substance performs positive work, and the boundary temperature decreases."

77. **$4\to1$ 等容放热**：腔壁固定在 $V_1$，工作物质放热；熵从 $S_3$ 减到 $S_1$，黑洞缩小并回到初态；在大分支上伴随温度下降。
    > 原文："Finally, along $4\to1$, the cavity wall is held fixed at $V_1$, and the working substance rejects heat: \emph{isochoric heat rejection}. As heat is rejected, the entropy decreases from $S_3$ to $S_1$, and the black hole shrinks, returning the system to its initial state. On the large black hole branch, this is accompanied by a decrease in the temperature."

78. **热交换来源于热力学势**：沿等压线 $dH=T\,dS$，沿等容线 $dE=T\,dS$；故吸热为 $H(S_3,P_2)-H(S_1,P_2)$，放热为 $E(S_3,V_1)-E(S_1,V_1)$，精确效率为

    $$
    \eta_{\rm Diesel}=1-\frac{E(S_3,V_1)-E(S_1,V_1)}{H(S_3,P_2)-H(S_1,P_2)} \qquad \text{(式 (23))}
    $$

    > 原文："The relevant heat exchanges follow directly from the thermodynamic potentials: along the isobar $dH=T\,dS$, while along the isochore $dE=T\,dS$. Hence the heat absorbed is $H(S_3,P_2)-H(S_1,P_2)$, while the heat rejected is $E(S_3,V_1)-E(S_1,V_1)$. The exact efficiency is therefore"

79. **中间体积与端点条件**：$V_2=V(S_1,P_2)$、$V_3=V(S_3,P_2)$，其中 $V(S,P)$ 由式 (15) 决定；端点数据须满足 $V_1>V_3>V_2$，以保证绝热冲程 $3\to4$ 是膨胀到 $V_1$。
    > 原文："The intermediate volumes are fixed by $V_2=V(S_1,P_2)$ and $V_3=V(S_3,P_2)$, with $V(S,P)$ determined by \eqref{eq:TVofSP}. The endpoint data must be chosen so that $V_1>V_3>V_2$, ensuring that the adiabatic stroke $3\to4$ is an expansion to $V_1$."

### 6.4 Brayton 热机

80. **循环构成**：Brayton 循环由两条绝热与两条等压冲程组成，由 $S_1=S_2$、$S_3=S_4$、$P_2=P_3$、$P_4=P_1$，且 $S_3>S_1$、$P_2>P_1$ 指定；本文考虑**不含回热器**的 Brayton 循环，即不计两条等压冲程之间任何内部热量回收。
    > 原文："The Brayton cycle consists of two adiabatic strokes and two isobaric strokes. It is specified by $S_1=S_2$, $S_3=S_4$, $P_2=P_3$, and $P_4=P_1$, with $S_3>S_1$ and $P_2>P_1$. We consider the Brayton cycle without a regenerator: any internal recovery of heat between the two isobaric strokes is not included in the heat balance below."

81. **$1\to2$ 绝热压缩**：视界不变，腔壁内移、压强从 $P_1$ 升到 $P_2$，外界做功，温度升高。
    > 原文："The stroke $1\to2$ is an \emph{adiabatic compression}. The horizon size remains fixed, while the cavity wall moves inward and the pressure rises from $P_1$ to $P_2$. Work is done on the system, and the temperature increases."

82. **$2\to3$ 等压吸热**：压强固定 $P_2=P_3$，工作物质吸热；熵从 $S_1$ 增至 $S_3$，黑洞长大；腔壁外移以保持 Brown–York 压强固定；与 Diesel 一样，该等压吸热冲程中温度下降，反映负的 $C_P$。
    > 原文："Along $2\to3$, the pressure is held fixed, $P_2=P_3$, and the working substance absorbs heat: \emph{isobaric heat input}. The entropy increases from $S_1$ to $S_3$, so the black hole grows. The cavity wall moves outward so as to keep the Brown-York pressure fixed. As for the Diesel cycle, the temperature decreases along this isobaric heat input stroke, reflecting the negative $C_P$."

83. **$3\to4$ 绝热膨胀**：视界不变，腔壁外移、压强从 $P_2$ 降回 $P_1$，系统做功，温度降低。
    > 原文："The stroke $3\to4$ is an \emph{adiabatic expansion}. The horizon size remains fixed, while the cavity wall moves outward and the pressure decreases from $P_2$ back to $P_1$. The system does work, and the temperature decreases."

84. **$4\to1$ 等压放热**：压强固定 $P_4=P_1$，工作物质放热；熵从 $S_3$ 减到 $S_1$，黑洞缩小；边界体积沿等压线减小使系统回到初态，温度升高。
    > 原文："Finally, along $4\to1$, the pressure is held fixed, $P_4=P_1$, and the working substance rejects heat: \emph{isobaric heat output}. The entropy decreases from $S_3$ to $S_1$, and the black hole shrinks. The boundary volume decreases along the isobar, returning the system to its initial state, and the temperature increases."

85. **Brayton 效率**：热交换只发生在两条等压线上，因 $dP=0$，交换热量等于焓变；吸热为 $H(S_3,P_2)-H(S_1,P_2)$，放热为 $H(S_3,P_1)-H(S_1,P_1)$，故

    $$
    \eta_{\rm Brayton}=1-\frac{H(S_3,P_1)-H(S_1,P_1)}{H(S_3,P_2)-H(S_1,P_2)} \qquad \text{(式 (24))}
    $$

    其中 $H(S,P)$ 由式 (16) 给出；四个顶点的体积由 $V_1=V(S_1,P_1)$、$V_2=V(S_1,P_2)$、$V_3=V(S_3,P_2)$、$V_4=V(S_3,P_1)$ 确定。
    > 原文："The heat exchange takes place only along the two isobars. Since $dP=0$, the heat exchanged is equal to the change in enthalpy. Hence the heat absorbed is $H(S_3,P_2)-H(S_1,P_2)$, while the heat rejected is $H(S_3,P_1)-H(S_1,P_1)$. The exact efficiency is therefore"；"The volumes at the four vertices are determined by $V_1=V(S_1,P_1)$, $V_2=V(S_1,P_2)$, $V_3=V(S_3,P_2)$, and $V_4=V(S_3,P_1)$, with $V(S,P)$ given in \eqref{eq:TVofSP}."

### 6.5 非再生式 Stirling 热机

86. **循环构成**：Stirling 循环由两条等温与两条等容冲程组成，由两个温度 $T_{\rm h}>T_{\rm c}$ 与两个体积 $V_1<V_2$ 指定，$T_1=T_2=T_{\rm h}$、$T_3=T_4=T_{\rm c}$、$V_1=V_4$、$V_2=V_3$；这样的体积排序使热等温段 $1\to2$ 在大黑洞分支上是吸热冲程。
    > 原文："The Stirling cycle consists of two isothermal strokes and two isochoric strokes. It is specified by two temperatures $T_{\rm h}>T_{\rm c}$ and two volumes $V_1<V_2$, with $T_1=T_2=T_{\rm h}$, $T_3=T_4=T_{\rm c}$, $V_1=V_4$, and $V_2=V_3$. This volume ordering makes the hot isotherm $1\to2$ a heat input stroke on the large black hole branch."

87. **$1\to2$ 等温吸热**：在固定边界温度 $T_{\rm h}$ 下吸热；在大分支上是等温膨胀——腔壁从 $V_1$ 外移到 $V_2$，熵增大，黑洞长大。
    > 原文："Along $1\to2$, the working substance absorbs heat from the hot reservoir at fixed boundary temperature~$T_{\rm h}$: \emph{isothermal heat input}. On the large black hole branch, this is an isothermal expansion: the cavity wall moves outward from $V_1$ to $V_2$, the entropy increases, and the black hole grows."

88. **$2\to3$ 等容放热**：腔壁固定在 $V_2$，工作物质放热；因 $dV=0$ 不做机械功；在大分支上伴随温度从 $T_{\rm h}$ 降到 $T_{\rm c}$，熵减小、黑洞缩小。
    > 原文："Along $2\to3$, the cavity wall is held fixed at $V_2$, and the working substance rejects heat: \emph{isochoric heat output}. Since $dV=0$, no mechanical work is performed. On the large black hole branch, this heat rejection is accompanied by a decrease in temperature from $T_{\rm h}$ to $T_{\rm c}$. The entropy decreases, and the black hole shrinks."

89. **$3\to4$ 等温放热**：在固定边界温度 $T_{\rm c}$ 下向冷库放热；在大分支上是等温压缩——腔壁从 $V_2$ 内移到 $V_1$，熵减小，黑洞继续缩小。
    > 原文："Along $3\to4$, the working substance rejects heat to the cold reservoir at fixed boundary temperature $T_{\rm c}$: \emph{isothermal heat output}. On the large black hole branch, this is an isothermal compression: the cavity wall moves inward from $V_2$ to $V_1$, the entropy decreases, and the black hole shrinks further."

90. **$4\to1$ 等容吸热**：腔壁固定在 $V_1$，工作物质吸热；在大分支上伴随温度从 $T_{\rm c}$ 升到 $T_{\rm h}$，熵增大，黑洞长回初态。
    > 原文："Finally, along $4\to1$, the cavity wall is held fixed at $V_1$, and the working substance absorbs heat: \emph{isochoric heat input}. On the large black hole branch, this heat input is accompanied by an increase in temperature from $T_{\rm c}$ to~$T_{\rm h}$. The entropy increases, and the black hole grows back to its initial state."

91. **热平衡构成**：等温热交换正比于 $T\Delta S$，等容热交换是定容下的能量差；**无再生**时，两个等容贡献都进入外部热平衡。定义 $\Delta S|_T\equiv S(T,V_2)-S(T,V_1)$（式 (25)），则精确效率为

    $$
    \eta_{\mathrm{Stirling}}^{\mathrm{nonreg}}=1-\frac{T_{\rm c}\,\Delta S|_{T_{\rm c}}+E(T_{\rm h},V_2)-E(T_{\rm c},V_2)}{T_{\rm h}\,\Delta S|_{T_{\rm h}}+E(T_{\rm h},V_1)-E(T_{\rm c},V_1)} \qquad \text{(式 (26))}
    $$

    > 原文："The isothermal heat exchanges are proportional to $T\Delta S$, while the isochoric heat exchanges are energy differences at fixed volume. Without regeneration, both isochoric contributions enter the external heat balance. Defining"；"the exact efficiency is"

92. **量的来源**：$S(T,V)$ 是大黑洞分支上的熵（由式 (7)–(8) 得到），$E(T,V)\equiv E(S(T,V),V)$ 是同一分支上由式 (3) 计算的能量。
    > 原文："Here $S(T,V)$ is the entropy on the large black hole branch, obtained from \eqref{eq:rh_large}-\eqref{eq:alpha}, and $E(T,V)\equiv E(S(T,V),V)$ is the energy \eqref{eq:U} evaluated on the same branch."

93. **小黑洞分支的形式处理**：小分支可形式地处理，但热流分配不同：由于小分支 $(\partial S/\partial V)_T<0$ 且 $C_V<0$，顺时针循环要在热等温线上吸热就需相反的体积序 $V_2<V_1$；此时 $1\to2$ 与 $2\to3$ 是吸热冲程，而 $3\to4$ 与 $4\to1$ 是放热冲程，效率在附录中推导。
    > 原文："The small black hole branch can be treated formally, but its heat flow assignments differ. Since $(\partial S/\partial V)_T<0$ and $C_V<0$ on the small branch, a clockwise cycle with heat input along the hot isotherm requires the opposite volume ordering, $V_2<V_1$. Then $1\to2$ and $2\to3$ are heat input strokes, while $3\to4$ and $4\to1$ are heat output strokes. We derive the efficiency in this case in Appendix \ref{app:efficiency_derivations}."

### 6.6 再生式 Stirling 热机

94. **引入理想回热器**：现引入单位效度的理想回热器——一个内部热交换器，把一条等容冲程中放出的热储存起来，在另一条等容冲程中还给工作物质；单位效度意味着所有提供给回热器的热量都被回收，但**并不**意味着两条等容线上放出与需要吸收的热量本身相等。
    > 原文："We now include an ideal regenerator with unit effectiveness. The regenerator is an internal heat exchanger that stores heat rejected during one isochoric stroke and returns it to the working substance during the other. Unit effectiveness means that all heat made available to the regenerator is recovered; it does not imply that the heat rejected and required along the two isochores are intrinsically equal."

95. **局部等容热失配的定义**：在大分支上，热在等容冲程 $2\to3$（体积 $V_2$）被放出，在等容冲程 $4\to1$（体积 $V_1$）被需要；仿照文献 [LilaniVisser2026]，把"等容冷却时放出的热减去等容加热时需要的热"定义为带符号的局部等容热失配

    $$
    dQ_{\mathrm{loc}}(T)\equiv\left[C_V(T,V_2)-C_V(T,V_1)\right]dT \qquad \text{(式 (27))}
    $$

    对共同的温度正增量 $dT>0$；于是 $dQ_{\rm loc}(T)>0$ 表示局部热盈余，$dQ_{\rm loc}(T)<0$ 表示局部热亏缺。
    > 原文："On the large black hole branch, heat is rejected during the isochoric stroke $2\to3$ at volume $V_2$ and is required during the isochoric stroke $4\to1$ at volume $V_1$. Following \cite{LilaniVisser2026}, we define the signed local isochoric heat mismatch as the heat released during isochoric cooling minus the heat required during isochoric heating"；"for a common positive temperature increment $dT>0.$ Thus, $dQ_{\mathrm{loc}}(T)>0$ denotes a local heat surplus, whereas $dQ_{\mathrm{loc}}(T)<0$ denotes a local heat deficit."

96. **积分失配**：非负的积分失配定义为

    $$
    Q_{\mathrm{mis}}\equiv\left|Q_{\mathrm{out}}^{2\to3}-Q_{\mathrm{in}}^{4\to1}\right|=\left|\int_{T_{\rm c}}^{T_{\rm h}}dQ_{\mathrm{loc}}(T)\right| \qquad \text{(式 (28))}
    $$

    > 原文："The non-negative integrated mismatch is"

97. **固定亏缺符号**：如附录所示，大分支上固定 $T$ 时 $C_V(T,V)$ 随 $V$ 减小；由于 $V_2>V_1$，在 $T_{\rm c}\le T\le T_{\rm h}$ 上有 $C_V(T,V_1)>C_V(T,V_2)$（式 (29)），因此 $dQ_{\rm loc}(T)<0$ 且 $Q_{\rm mis}>0$（式 (30)）——局部失配在整个温度区间上符号固定为亏缺。
    > 原文："As shown in Appendix~\ref{app:efficiency_derivations}, $C_V(T,V)$ decreases with $V$ at fixed $T$ on the large black hole branch. Since $V_2>V_1$, one has"；"and therefore"；"The local mismatch consequently has a fixed deficit sign throughout the temperature interval."

98. **失配的显式结果**：此时式 (28) 的绝对值可显式计算，

    $$
    Q_{\mathrm{mis}}=\int_{T_{\rm c}}^{T_{\rm h}}\left[C_V(T,V_1)-C_V(T,V_2)\right]dT=\left[E(T_{\rm h},V_1)-E(T_{\rm c},V_1)\right]-\left[E(T_{\rm h},V_2)-E(T_{\rm c},V_2)\right]
    $$

    > 原文："In this case the absolute value in Eq.~\eqref{eq:regenerator-mismatch} may be evaluated explicitly, giving"

99. **亏缺的物理后果**：由于整个循环中 $dQ_{\rm loc}(T)<0$，$Q_{\rm mis}$ 是回热器**无法提供**的总热亏缺，而不仅仅是一个净积分差；因此可逆实现需要在相应瞬时温度下从外部补充热量 $-dQ_{\rm loc}(T)>0$。也就是说，回热器**减小**但并未**完全消除**等容加热冲程的外部供热。
    > 原文："Because $dQ_{\mathrm{loc}}(T)<0$ throughout the cycle, $Q_{\mathrm{mis}}$ is the total heat deficit that cannot be supplied by the regenerator, rather than merely a net integrated difference. A reversible implementation therefore requires an external heat supply $-dQ_{\mathrm{loc}}(T)>0$ at the corresponding instantaneous temperatures. Thus, the regenerator reduces, but does not completely remove, the external heat input along the isochoric heating stroke."

100. **小黑洞分支的再生式情形**：小分支可形式处理，但等容冲程的角色反转：在依分支而定的体积序 $V_2<V_1$ 下，热在 $4\to1$ 放出、在 $2\to3$ 被需要；用同样的符号约定，$dQ_{\rm loc,s}(T)<0$ 在整个温度区间成立，循环同样处于亏缺情形。
     > 原文："The small black hole branch can be treated formally, but the roles of the isochores are reversed. With the branch-dependent ordering $V_2<V_1$, heat is rejected during $4\to1$ and required during $2\to3$. Using the same signed convention, $dQ_{\mathrm{loc},\mathrm{s}}(T)<0$ throughout the temperature interval, so the cycle is again in the deficit regime."

101. **净功不变**：回热器不改变净功，因为再生只是在内部重新分配热量而不改变 $P$–$V$ 平面上的路径。
     > 原文："The net work is unchanged by the regenerator, because regeneration redistributes heat internally without changing the path in the $P$-$V$ plane."

102. **再生式 Stirling 效率**：对 Schwarzschild-腔热机，局部失配为亏缺符号，故回热器留下必须由外部提供的热缺口 $Q_{\rm mis}$；外部吸热为

     $$
     Q_{\mathrm{in}}^{\mathrm{reg}}=Q_{\mathrm{in}}^{1\to2}+Q_{\mathrm{mis}}
     $$

     （式 (31)），外部放热为冷等温线上的放热

     $$
     Q_{\mathrm{out}}^{\mathrm{reg}}=Q_{\mathrm{out}}^{3\to4}
     $$

     （式 (32)），于是再生式 Stirling 效率为

     $$
     \eta_{\mathrm{Stirling}}^{\mathrm{reg}}=1-\frac{Q_{\mathrm{out}}^{3\to4}}{Q_{\mathrm{in}}^{1\to2}+Q_{\mathrm{mis}}}=1-\frac{T_{\rm c}\Delta S|_{T_{\rm c}}}{T_{\rm h}\Delta S|_{T_{\rm h}}+Q_{\mathrm{mis}}} \qquad \text{(式 (33))}
     $$

     > 原文："For the Schwarzschild-cavity engine, the local mismatch has the deficit sign, so the regenerator leaves a heat shortfall $Q_{\mathrm{mis}}$ that must be supplied externally. The external heat input is therefore"；"whereas its external heat output is the heat rejected along the cold isotherm"；"Using the notation in equation~\eqref{notationdeltas}, the regenerative Stirling efficiency is thus"

103. **该公式的定位**：这是理想再生式 Stirling 热机的固定符号亏缺公式；具体的 Schwarzschild 腔热力学通过态函数 $S(T,V)$ 与 $E(T,V)$ 进入，从而决定 $\Delta S|_T$ 与 $Q_{\rm mis}$。
     > 原文："This is the fixed-sign deficit formula for an ideal regenerative Stirling engine \cite{LilaniVisser2026}. The specific Schwarzschild cavity thermodynamics enters through the state functions $S(T,V)$ and $E(T,V)$, which determine $\Delta S|_T$ and $Q_{\mathrm{mis}}$."

### 6.7 达到 Carnot 效率的充分条件、亚 Carnot 性与效率层级

104. **充分条件**：理想再生式 Stirling 热机达到 Carnot 效率的一个充分条件是定容热容与体积无关，即 $C_V(T,V)=C_V(T)$（式 (34)）；该条件保证等容热交换逐点匹配——$2\to3$ 中每个温度放出的热恰好等于 $4\to1$ 中同一温度所需的热，于是回热器回到初态的能量与熵，两条等容线上都不需要外部热交换。
     > 原文："A sufficient condition for an ideal regenerative Stirling engine to attain the Carnot efficiency is that the fixed-volume heat capacity be independent of volume \cite{LilaniVisser2026}"；"This condition ensures pointwise matching of the isochoric heat exchanges: the heat released at each temperature during $2\to3$ is exactly equal to the heat required at the same temperature during $4\to1$. Consequently, the regenerator returns to its initial energy and entropy, and no external heat exchange is required along either isochore."

105. **由该条件推出 Carnot 效率**：在条件 (34) 下 $Q_{\mathrm{mis}}=0$；又因 $C_V=T(\partial S/\partial T)_V$，得

     $$
     \frac{\partial}{\partial T}\Delta S|_T=\frac{1}{T}\left[C_V(T,V_2)-C_V(T,V_1)\right]=0,
     $$

     故 $\Delta S|_{T_{\rm h}}=\Delta S|_{T_{\rm c}},$式 (33) 退化为

     $$
     \eta_{\mathrm{Stirling}}^{\mathrm{reg}}=1-\frac{T_{\rm c}}{T_{\rm h}}=\eta_{\rm Carnot}.
     $$

     > 原文："Indeed, under condition~\eqref{eq:volume-independent-cv}, $ Q_{\mathrm{mis}}=0.$"；"Moreover, since"；"one obtains"；"Hence

     $$
     \Delta S|_{T_{\rm h}}=\Delta S|_{T_{\rm c}}
     $$

     , and equation~\eqref{eq:eta_stirling_reg} reduces to"

106. **条件性质的辨析**：$C_V$ 与体积无关是逐点匹配的**充分但非必要**条件；反过来，较弱的 $Q_{\rm mis}=0$ 本身只保证等容能量的**积分**相等，并不保证热量在其被储存的同一温度上被归还，因此本身并不保证可逆再生。
     > 原文："The volume independence of $C_V$ is a sufficient, but not necessary, condition for pointwise matching on a particular cycle. Conversely, the weaker condition $Q_{\mathrm{mis}}=0$ by itself guarantees only equality of the integrated isochoric energies. It does not ensure that heat is returned at the same temperatures at which it was stored, and therefore does not by itself guarantee reversible regeneration."

107. **与理想气体的对比**：对经典理想气体，$C_V$ 与体积无关，故等容热交换逐点匹配，理想再生式 Stirling 热机精确达到 Carnot 效率。
     > 原文："For a classical ideal gas, $C_V$ is independent of volume, so the isochoric heat exchanges match pointwise and an ideal regenerative Stirling engine attains the Carnot efficiency exactly."

108. **Schwarzschild 腔的关键差别**：而对 Schwarzschild 腔工作物质，$C_V$ 依赖边界体积；更具体地说，在大黑洞分支上固定 $T$ 时 $C_V(T,V)$ 随 $V$ 单调减小。
     > 原文："For the Schwarzschild cavity working substance, however, $C_V$ depends on the boundary volume. More specifically, on the large black hole branch $C_V(T,V)$ decreases monotonically with $V$ at fixed $T$."

109. **严格亚 Carnot 定理**：因此当 $V_2>V_1$ 时局部失配符号固定为亏缺 $dQ_{\rm loc}(T)<0$；对每个满足 $T_{\rm h}>T_{\rm c}$ 且 $V_2>V_1$ 的大分支循环，再生式 Schwarzschild Stirling 循环都**严格亚 Carnot**：

     $$
     \eta_{\mathrm{Stirling}}^{\mathrm{reg}}<\eta_{\rm Carnot} \qquad \text{(式 (35))}
     $$

     > 原文："Consequently, for $V_2>V_1$ the local mismatch has the fixed deficit sign $dQ_{\mathrm{loc}}(T)<0$, as shown in Eq.~\eqref{eq:positive-mismatch}. The regenerative Schwarzschild Stirling cycle therefore remains strictly sub-Carnot for every large branch cycle with $T_{\rm h}>T_{\rm c}$ and $V_2>V_1$,"

110. **高温渐近行为（大分支）**：如附录所示，固定 $T_{\rm c}$、$V_1$、$V_2$ 时，再生式效率与 Carnot 界的差距在 $T_{\rm h}$ 很大时被压低，

     $$
     \eta_{\rm Carnot}-\eta_{\mathrm{Stirling}}^{\mathrm{reg}}=\mathcal{O}(1/T_{\rm h})
     $$

     （$T_{\rm h}\to\infty$）；因此大分支再生式效率从**下方**趋近 Carnot 界。
     > 原文："As shown in Appendix~\ref{app:stirling_limit}, at fixed $T_{\rm c}$, $V_1$, and $V_2$, the gap between the regenerative efficiency and the Carnot bound is suppressed at large $T_{\rm h}$,"；"The large branch regenerative efficiency therefore approaches the Carnot bound from below."

111. **小分支的差别**：小分支循环同样是亚 Carnot，但与大分支不同，$T_{\rm h}$ 增大时视界是**缩小**而非趋近腔壁，因此当 $T_{\rm h}\to\infty$ 时效率与 Carnot 界保持有限距离；该极限间距在附录中显式导出。
     > 原文："The small branch cycle is likewise sub-Carnot. However, unlike on the large branch, the horizon shrinks as $T_{\rm h}$ increases rather than approaching the cavity wall, so the efficiency remains a finite distance below the Carnot bound as $T_{\rm h}\to\infty$. This limiting separation is derived explicitly in Appendix~\ref{app:stirling_limit}."

112. **再生 vs. 非再生**：与非再生 Stirling 的比较直接来自外部热平衡——两循环在 $P$–$V$ 平面上路径相同，因而净功相同；无再生时，全部等容吸热

     $$
     Q_{\mathrm{in}}^{4\to1}=Q_{\mathrm{out}}^{2\to3}+Q_{\mathrm{mis}}
     $$

     都须外部提供；有再生时 $Q_{\mathrm{out}}^{2\to3}$ 被内部回收，只需补足剩下的亏缺 $Q_{\rm mis}$。因此

     $$
     Q_{\mathrm{in}}^{\mathrm{reg}}=Q_{\mathrm{in}}^{1\to2}+Q_{\mathrm{mis}}
     $$

     小于 $Q_{\mathrm{in}}^{\mathrm{nonreg}}=Q_{\mathrm{in}}^{1\to2}+Q_{\mathrm{in}}^{4\to1}$（因 $Q_{\mathrm{out}}^{2\to3}>0$）；净功相同故再生提高效率。
     > 原文："The comparison with the non-regenerative Stirling cycle follows directly from the external heat balance. Both cycles follow the same path in the $P$-$V$ plane and therefore perform the same net work. Without regeneration, the full isochoric heat input"；"must be supplied externally. With regeneration, $Q_{\mathrm{out}}^{2\to3}$ is recycled internally, so only the remaining deficit $Q_{\mathrm{mis}}$ must be supplied externally. Hence

     $$
     Q_{\mathrm{in}}^{\mathrm{reg}}=Q_{\mathrm{in}}^{1\to2}+Q_{\mathrm{mis}}
     $$

     is smaller than

     $$
     Q_{\mathrm{in}}^{\mathrm{nonreg}}=Q_{\mathrm{in}}^{1\to2}+Q_{\mathrm{in}}^{4\to1}
     $$

     , since $Q_{\mathrm{out}}^{2\to3}>0$. Because the net work is the same, regeneration therefore increases the efficiency."

113. **Stirling 效率层级**：结合亚 Carnot 结果，对每个满足 $T_{\rm h}>T_{\rm c}$、$V_2>V_1$ 的大分支循环

     $$
     \eta_{\mathrm{Stirling}}^{\mathrm{nonreg}}<\eta_{\mathrm{Stirling}}^{\mathrm{reg}}<\eta_{\rm Carnot} \qquad \text{(式 (36))}
     $$

     > 原文："Combining this with the sub-Carnot result \eqref{inequalitysubcarnot} gives"；"for every large branch cycle with $T_{\rm h}>T_{\rm c}$ and $V_2>V_1$."

114. **高温极限**：固定 $T_{\rm c}$、$V_1$、$V_2$ 时，两个 Stirling 效率都从下方趋近 Carnot 效率，

     $$
     \lim_{T_{\rm h}\to\infty}\eta_{\rm Stirling}^{\rm nonreg}=\lim_{T_{\rm h}\to\infty}\eta_{\rm Stirling}^{\rm reg}=\lim_{T_{\rm h}\to\infty}\eta_{\rm Carnot}=1;
     $$

     式 (36) 的不等式在每个有限 $T_{\rm h}$ 下都保持严格。
     > 原文："At fixed $T_{\rm c}$, $V_1$, and $V_2$, both Stirling efficiencies approach the Carnot efficiency from below as $T_{\rm h}\to\infty$,"；"The inequalities in \eqref{eq:stirling-hierarchy} remain strict at every finite $T_{\rm h}$."

115. **图 3、图 4 中的表现**：层级关系在图 3、图 4 中可见——再生曲线位于非再生曲线之上，并在整个展示参数范围内都靠近 Carnot 界；在图 3 中，固定 $T_{\rm c}$ 增大 $T_{\rm h}$ 使两个 Stirling 效率从下方趋近 Carnot 界，而循环不塌缩、功输出不消失；在图 4 中，三条曲线在 $T_{\rm c}\to T_{\rm h}^{-}$ 时都趋于零——当 $T_{\rm c}=T_{\rm h}$ 两热库温度相同、Stirling 循环退化，净功与吸热都消失。
     > 原文："The hierarchy \eqref{eq:stirling-hierarchy} is visible in Figures~\ref{fig:eff_th} and~\ref{fig:eff_tc}. The regenerative curve lies above the non-regenerative one and remains close to the Carnot bound throughout the displayed parameter range. In Figure~\ref{fig:eff_th}, increasing $T_{\rm h}$ at fixed $T_{\rm c}$ causes both Stirling efficiencies to approach the Carnot bound from below, without the cycle collapsing or its work output vanishing. In Figure~\ref{fig:eff_tc}, all three plotted curves approach zero as $T_{\rm c}\to T_{\rm h}^{-}$. At $T_{\rm c}=T_{\rm h}$ the two reservoir temperatures coincide and the Stirling cycles are degenerate, with both the net work and heat input vanishing."

---

## 七、结论（Sec. Conclusion）

116. **工作总结**：构造了工作物质为有限球形屏上热系统的可逆热机，该系统全息地由腔中四维 Schwarzschild 黑洞描述；用准局部引力热力学，Brown–York 表面压力与腔面积提供了自然的压强-体积对。
     > 原文："We have constructed reversible heat engines whose working substance is the thermal system on a finite spherical screen, described holographically by a four-dimensional Schwarzschild black hole in a cavity. Using quasi-local gravitational thermodynamics, the Brown-York surface pressure and the cavity area provide a natural pressure-volume pair."

117. **意义**：这给出了渐近平坦时空中黑洞热机的**固定理论**实现。
     > 原文："This gives a fixed-theory realization of black hole heat engines in asymptotically flat spacetime."

118. **非 Carnot 效率的定位**：对 Otto、Diesel、Brayton、Stirling 循环，导出了用 Schwarzschild 腔物态方程表示的精确效率公式；因此这些非 Carnot 效率不是普适数值，而是对黑洞具体准局部热力学的探测；相比之下 Carnot 效率保持其普适形式 $1-T_{\rm c}/T_{\rm h}$。
     > 原文："For the Otto, Diesel, Brayton, and Stirling cycles, we derived exact efficiency formulae in terms of the Schwarzschild-cavity equations of state. These non-Carnot efficiencies are therefore not universal numbers, but probes of the specific quasi-local thermodynamics of the black hole. The Carnot efficiency, by contrast, retains its universal form $1-T_{\rm c}/T_{\rm h}$."

119. **Stirling 的两种分支行为**：Stirling 热机的大、小两分支在高温行为上定性不同——大分支上再生与非再生效率都趋近 Carnot 值，且再生减小了领头阶偏差；小分支上热等温吸热在高温时反而消失，再生式效率与 Carnot 界保持有限距离。
     > 原文："For the Stirling engine, the two branches (large and small black hole) have qualitatively different high-temperature behavior. On the large branch, both the regenerative and non-regenerative efficiencies approach the Carnot value, with regeneration reducing the leading deviation. On the small branch, the hot-isothermal heat input instead vanishes at high temperature, and the regenerative efficiency remains a finite distance below the Carnot bound."

120. **关于效率排序的谨慎结论**：在按体积比较的图（$V_{\max}$、$V_{\min}$）中，展示的各效率在全参数范围内并不呈现固定层级；相反，在固定熵端点与固定控制参数的图中，效率在其公共定义域上满足

     $$
     \eta_{\rm Otto}>\eta_{\rm Diesel}>\eta_{\rm Brayton}.
     $$

     由于各循环使用的体积与压强约束不同，这些排序是所选循环族的特征，而非普适排名。
     > 原文："The volume-dependent comparisons in Figures~\ref{fig:eff_vmax} and~\ref{fig:eff_vmin} do not exhibit a fixed hierarchy among the displayed efficiencies over their full parameter ranges. By contrast, for the common entropy endpoints and fixed control parameters used in Figures~\ref{fig:eff_smax} and~\ref{fig:eff_smin}, the efficiencies satisfy

     $$
     \eta_{\rm Otto}>\eta_{\rm Diesel}>\eta_{\rm Brayton}
     $$

     throughout their common domain. Since the cycles use different volume and pressure constraints, these orderings are features of the chosen cycle families rather than universal rankings."

121. **可推广的方向**：同样的准局部构造可用于带电或转动黑洞、带有限类时边界的 de Sitter / anti-de Sitter 背景中的黑洞、高维解，以及高阶曲率理论中的黑洞。
     > 原文："Several extensions are natural. The same quasi-local construction can be applied to charged or rotating black holes, black holes in de Sitter or anti-de Sitter backgrounds with a finite timelike boundary, higher-dimensional solutions, and black holes in higher-curvature theories."

122. **特别有趣的问题**：确定局域与全局稳定性如何约束这些例子中容许的循环区域，以及局部回热器失配能否在热力学相变处变号。
     > 原文："It would be particularly interesting to determine how local and global stability constrain the admissible cycle domain in these examples, and whether the local regenerator mismatch can change sign across a thermodynamic phase transition."

123. **其他延拓**：还可考虑有限回热器效度、其他热力学循环，以及有限时间或不可逆过程；这些延拓将检验本文结果在平衡 Schwarzschild 腔系统之外的普适性。
     > 原文："One may also consider finite regenerator effectiveness, additional thermodynamic cycles, and finite-time or irreversible processes. These extensions would test the generality of the present results beyond the equilibrium Schwarzschild cavity system."

---

## 八、致谢（Acknowledgments）

124. **致谢对象**：MRV 感谢 S. Borsboom、G. Elaçmaz、N. Koppen、N. Lilani、S.E. Özkan、F. Tuncer 在相关课题上的讨论与合作；也感谢 Peyresq Spacetime Meeting 2026 的听众与组织者；工作部分由授予 Klaas Landsman 的 NWO Spinoza Grant 资助。
     > 原文："MRV is grateful to S. Borsboom, G. Ela\c{c}maz, N. Koppen, N. Lilani, S.E. \"{O}zkan, and F. Tuncer for discussions and collaborations on related topics. He also thanks the audience and organizers of the Peyresq Spacetime Meeting~2026, where this work was presented. This work is supported in part by the NWO Spinoza Grant awarded to Klaas Landsman."

---

## 九、关键方程汇总（均逐字取自源码）

| 式号 | 内容 | 源码原文 |
| --- | --- | --- |
| (1) | 第一定律（能量表示） | `d E = T d S - P d V` |
| (2) | 熵与边界体积 | `S = \frac{\pi r_h^{2}}{G}\,, \qquad V = 4\pi r_B^{2}` |
| (3) | Brown–York 内能 | `E(S,V) = \frac{1}{2G}\sqrt{\frac{V}{\pi}}\left[\,1 - \sqrt{1 - \sqrt{\tfrac{4GS}{V}}}\,\right]` |
| (4) | Tolman 温度 | `T(S,V) = \frac{1}{4\sqrt{\pi G S}\,\sqrt{1 - \sqrt{4GS/V}}}` |
| (5) | Brown–York 表面压力 | `P(S,V) = \frac{1}{4G\sqrt{\pi V}}\left[ \frac{1 - \tfrac{1}{2}\sqrt{4GS/V}}{\sqrt{1 - \sqrt{4GS/V}}} - 1 \right]` |
| (6) | 反解三次方程 | `r_h^3 - r_B\, r_h^2 + \frac{r_B}{(4\pi T)^2} = 0` |
| (7)(8) | 大黑洞分支 $r_h(T,V)$ 与 $\alpha$ | `r_h(T, V) = \frac{r_B}{3} \left[ 1 + 2\cos\!\left(\frac{\alpha(T,V)}{3}\right) \right]`；`\alpha(T, V) = \arccos\!\left[1 - \frac{27}{8\pi V T^2}\right]` |
| (9)(10) | 焓与其微分 | `H = E + PV`；`d H = T d S + V d P` |
| (11)(12) | 红移参数与约束 | `y \equiv \sqrt{1 - \frac{r_h}{r_B}}`；`(1-y)^3(1+y) = 16\,G P \sqrt{\pi G S}\; y` |
| (17) | 效率定义 | `\eta = \frac{W}{Q_{\mathrm{in}}} = 1-\frac{Q_{\mathrm{out}}}{Q_{\mathrm{in}}}` |
| — | 定容 $(\partial T/\partial S)_V$ | `\left(\frac{\partial T}{\partial S}\right)_V = \frac{T(3x-2)}{4S(1-x)}` |
| — | 等温 $(\partial V/\partial S)_T$ | `\left(\frac{\partial V}{\partial S}\right)_T =\frac{4G(3x-2)}{x^3}` |
| (22) | Otto 效率 | `\eta_{\rm Otto} = 1 - \frac{E(S_3,V_1)-E(S_1,V_1)}{E(S_3,V_2)-E(S_1,V_2)}` |
| (23) | Diesel 效率 | `\eta_{\rm Diesel} = 1 - \frac{E(S_3,V_1)-E(S_1,V_1)}{H(S_3,P_2)-H(S_1,P_2)}` |
| (24) | Brayton 效率 | `\eta_{\rm Brayton} = 1 - \frac{H(S_3,P_1)-H(S_1,P_1)}{H(S_3,P_2)-H(S_1,P_2)}` |
| (27) | 局部等容热失配 | `dQ_{\mathrm{loc}}(T) \equiv \left[ C_V(T,V_2)-C_V(T,V_1) \right]dT` |
| (28) | 积分失配 | `Q_{\mathrm{mis}} \equiv \left| Q_{\mathrm{out}}^{2\to3} - Q_{\mathrm{in}}^{4\to1} \right| = \left| \int_{T_{\rm c}}^{T_{\rm h}} dQ_{\mathrm{loc}}(T) \right|` |
| (33) | 再生式 Stirling 效率 | `\eta_{\mathrm{Stirling}}^{\mathrm{reg}} = 1- \frac{T_{\rm c}\Delta S|_{T_{\rm c}}} {T_{\rm h}\Delta S|_{T_{\rm h}}+Q_{\mathrm{mis}}}` |
| (35)(36) | 亚 Carnot 与层级 | `\eta_{\mathrm{Stirling}}^{\mathrm{reg}} < \eta_{\rm Carnot}`；`\eta_{\mathrm{Stirling}}^{\mathrm{nonreg}} < \eta_{\mathrm{Stirling}}^{\mathrm{reg}} < \eta_{\rm Carnot}` |

---

## 十、一句话结论（皆对应上文引文）

- 在**渐近平坦**时空中，用腔壁上的准局部/全息热系统作工作物质，可构造**耦合常数固定**的可逆黑洞热机（第 15–17、116–117 条）。
- Carnot 效率仍是普适的 $1-T_{\rm c}/T_{\rm h}$；其余四种循环的精确效率由 Schwarzschild 腔的具体物态方程决定，因而可用作准局部引力热力学的诊断量（第 65、118 条）。
- Stirling：因大分支上 $C_V$ 随 $V$ 单调减小，回热器存在固定符号的热亏缺，故

  $$
  \eta^{\rm nonreg}_{\rm Stirling}<\eta^{\rm reg}_{\rm Stirling}<\eta_{\rm Carnot},
  $$

  且固定 $T_{\rm c},V_1,V_2$ 时二者随 $T_{\rm h}\to\infty$ 从下方趋于 Carnot（第 97–98、109–114 条）。

