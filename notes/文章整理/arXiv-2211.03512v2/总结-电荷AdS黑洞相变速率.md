---
title: "总结：带电 AdS 黑洞相变的速率（Kramers 逃逸率）"
folder: "文章整理/arXiv-2211.03512v2"
---

**arXiv:2211.03512v2 [gr-qc]**

> **引用体例说明**：本文档中每一句总结都紧跟着对应的**原文英文摘录**（引号内为 arXiv 原文，未做改写），并在括号中标注出处（章节 / 式号 / 图号）。凡属原文公式者，仅逐字转录在 arXiv HTML 中可无歧义辨认的式子；无法确证的排版歧义公式一律只做文字复述或另行复算，并在第十节集中标注。
>
> **原文来源**：https://arxiv.org/abs/2211.03512 ｜ 全文：https://arxiv.org/html/2211.03512v2 ｜ 本目录 PDF：[2211.03512v2.pdf](/notes/文章整理/arXiv-2211.03512v2/2211.03512v2.pdf)
>
> **与其它笔记的关系**：本篇是 `arXiv-2604.25791v1\总结-平均首通时间与Kramers逃逸率.md`（下称 [25791]）参考文献 **[29]** 的原文总结；[25791] 式(17) 的广义自由能定义即取自本文等文献。

---

## 一、元信息

| 项 | 内容 | 原文引用 |
| --- | --- | --- |
| 标题 | Rate of the phase transition for a charged anti-de Sitter black hole | > 原文标题即为 "Rate of the phase transition for a charged anti-de Sitter black hole" |
| 作者 | Zhen-Ming Xu、Bin Wu、Wen-Li Yang | > "Zhen-Ming Xu, Bin Wu, and Wen-Li Yang" |
| 通讯邮箱 | zmxu@nwu.edu.cn；binwu@nwu.edu.cn；wlyang@nwu.edu.cn | > "E-mail: zmxu@nwu.edu.cn E-mail: binwu@nwu.edu.cn E-mail: wlyang@nwu.edu.cn" |
| 单位 | 西北大学物理学院、西北大学现代物理研究所、陕西省理论物理前沿重点实验室、彭桓武理论物理中心 | > "1School of Physics, Northwest University, Xi'an 710127, China 2Institute of Modern Physics, Northwest University, Xi'an 710127, China 3Shaanxi Key Laboratory for Theoretical Physics Frontiers, Xi'an 710127, China 4Peng Huanwu Center for Fundamental Theory, Xi'an 710127, China" |
| 期刊 | SCIENCE CHINA Physics, Mechanics & Astronomy **66**(4), 240411 (2023) | > arXiv 记录："SCIENCE CHINA Physics, Mechanics & Astronomy, 66(4), 240411 (2023)"；DOI "10.1007/s11433-022-2022-6" |
| 篇幅 | 8 页 3 图 | > arXiv 记录："8 pages, 3 figures, match the published version" |
| 关键词 | black hole thermodynamics；phase transition；thermal potential；Kramer's escape rate | > "Keywords: black hole thermodynamics, phase transition, thermal potential, Kramer's escape rate" |
| PACS | 04.70.Dy、05.70.Ce、68.35.Rh、02.50.-r | > "PACS: 04.70.Dy, 05.70.Ce, 68.35.Rh, 02.50.-r" |
| 版本 | v2，2023-03-06 | > arXiv 页脚 "arXiv:2211.03512v2 [gr-qc] 06 Mar 2023" |

---

## 二、摘要（Abstract）

1. **主题定位**：相变是黑洞热力学的核心内容之一。
   > 原文："Phase transition is a core content of black hole thermodynamics."

2. **方法**：本文采用描述外场中粒子 Brownian 运动的 Kramers 逃逸率方法，研究小/大黑洞态之间相变的强度。
   > 原文："This study adopted the Kramer's escape rate method for describing the Brownian motion of particles in an external field to investigate the intensity of the phase transition between small and large black hole states."

3. **动机**：既有研究多关注黑洞相变的形式分析，却忽略了相变过程的细节描述。
   > 原文："Some existing studies mostly focused on the formal analysis of the thermodynamic phase transition of black holes, but they neglected the detailed description of the phase transition process."

4. **结果**：带电 AdS 黑洞的小/大黑洞相变呈现严重的**非对称**特征，整体过程由"小黑洞 → 大黑洞"主导。
   > 原文："Our results show that the phase transition between small and large black holes for charged anti-de Sitter (AdS) black holes presents serious asymmetric features, and the overall process is dominated by the transition from a small black hole to a large black hole."

5. **定位**：本文填补了"AdS 黑洞一级相变速率的随机过程分析"这一研究空白。
   > 原文："This study filled a research gap of a stochastic process analysis on the issue of the first-order phase transition rate in the AdS black hole."

---

## 三、引言（Sec. I Introduction）

6. **背景**：黑洞热力学被视为检验黑洞量子性质的平台之一，其中正比于事件视界面积的热熵引起了广泛讨论。
   > 原文："At present, black hole thermodynamics is considered one of the platforms for testing the quantum properties of black holes. In particular, the thermal entropy of a black hole, which is proportional to its area of event horizon [1], has attracted extensive discussion and interest."

7. **现状**：经过数十年发展，黑洞的热物理已有相对完整的理论框架；尽管许多问题仍待解释，黑洞热力学可视为探索量子引力的有效窗口。
   > 原文："After decades of development, the thermal physics of black holes began to have a relatively complete theoretical framework. Although many issues still need to be further explained, black hole thermodynamics can be regarded as an effective window to explore quantum gravity."

8. **焦点**：特别引人关注的是 AdS 时空中黑洞的相变，它把统计力学、量子力学与广义相对论紧密联系起来。
   > 原文："Of particular interest is the phase transition of black holes in the anti-de Sitter (AdS) spacetime, which closely links statistical mechanics, quantum mechanics, and general relativity."

9. **最代表性的相变**：热辐射与大 AdS 黑洞之间的 Hawking–Page 相变，在对偶规范场论中被表述为 confinement/deconfinement 相变。
   > 原文："The most representative is the Hawking–Page phase transition between thermal radiation and the large AdS black hole [2], which is elaborated as the confinement/deconfinement phase transition in a gauge field [3]."

10. **扩展相空间**：扩展相空间的引入为黑洞热力学研究注入了极大活力。
    > 原文："The introduction of an extended phase space has injected extremely high vitality into the study of black hole thermodynamics [4, 5, 6, 7, 8, 9, 10, 11, 12, 13]."

11. **微观结构**：通过与 van der Waals 流体的类比分析，人们相信（理论的）黑洞具有一定的微观结构。
    > 原文："Through the analogy analysis with van der Waals fluid, people believe that the (theoretical) black hole has a certain microstructure [14, 15, 16, 17, 18, 19, 20]."

12. **全息角度**：一些近期工作致力于用 AdS/CFT 对应来探索黑洞热力学在场论中的物理解释，使相关概念更合理可靠。
    > 原文："Meanwhile, some recent works [21, 22, 23, 24, 25, 26, 27, 28, 29] are devoted to using the anti-de Sitter/conformal field theory correspondence to explore the physical explanation of black hole thermodynamics in the field theory and make the relevant concepts of black hole thermodynamics reasonably and reliably."

13. **问题所在（本文动机）**：既有研究偏重相变的类型与临界性分析，却忽略了相变过程的细节描述。
    > 原文："Existing studies tend to focus on the type and criticality analysis of the thermodynamic phase transition of black holes, but they neglect the detailed description of the phase transition process."

14. **既有相关工具**：近期自由能图景被提出，用于在非平衡统计物理背景下探索黑洞相变的演化过程；通过计算平均首通时间，这些研究初步考察了相变动力学；此外 Landau 自由能的观点也被用于同样的分析。
    > 原文："Recently, the free energy landscape has been proposed to explore some related evolution processes of the black hole phase transition under the background of the non-equilibrium statistical physics [30, 31, 32, 33, 34]. By calculating the mean first passage time, these studies have preliminarily investigated some kinetics of the phase transition. In addition, the point of view of Landau free energy was used for the same analysis [35]."

15. **方法论理由**：由于热力学系统的一些过程由随机涨落驱动，使用非平衡统计物理中随机过程的分析方法来获取关于热力学过程发生的重要信息也是合理的。
    > 原文："Because some thermodynamic processes in a thermodynamic system are driven by stochastic fluctuations, the use of the analysis method of relevant stochastic processes in non-equilibrium statistical physics to obtain important information about the occurrence of thermodynamic processes is also reasonable."

16. **本文研究的对象**：本文研究黑洞相变速率；这里所说的相变指 AdS 黑洞中大/小黑洞之间的相变，它类似于 van der Waals 流体的气—液相变。
    > 原文："In this study, we investigated the black hole phase transition rate. The black hole phase transition we mentioned here refers to the large and small black hole phase transitions in the AdS black hole, which is similar to the gas–liquid phase transition in van der Waals fluid [12]."

17. **动态性**：大/小黑洞的相变是动态的——大→小的转变必然伴随小→大的转变，反之亦然。
    > 原文："The phase transition of large and small black holes is dynamic. That is, the transition from a large black hole to a small black hole will be accompanied by the one from a small black hole to a large black hole, and vice versa."

18. **两个待澄清的关键问题**：（i）在 AdS 黑洞相变中哪个过程占主导？（ii）在什么情况下两个过程达到动态平衡？
    > 原文："Naturally, two key issues need to be clarified: • Which of the two processes dominates in the phase transition of the AdS black hole? • Under what circumstances will the two processes achieve dynamic balance?"

19. **平衡态视角的局限**：在平衡统计物理中，依据 Gibbs 自由能的行为可以判断系统倾向于处于哪个态，Gibbs 自由能 swallow tail 结构的交点是判断的转折点。
    > 原文："In equilibrium statistical physics, based on the behavior of Gibbs free energy, we can determine the state that the system tends to be in with the change in the temperature in the thermodynamics process, and the intersection of a swallow tail structure in Gibbs free energy is the turning point of which preferred state the system is in [36, 37]."

20. **局限的具体含义**：但这些都只是对结果的描述，期间的过程需要更深入的分析，这正是本文的主要动机。
    > 原文："However, these are all result descriptions, and the process during the period needs further in-depth analysis. This case is the main motivation for this study."

21. **算例选择**：本文取"具有最典型黑洞热力学相变"的带电 AdS 黑洞为例。
    > 原文："Next, we will take the charged AdS black hole, which possesses the most typical thermodynamic phase transition of a black hole, as an example to discuss."

22. **工具来源**：使用描述外场中粒子 Brownian 运动的 Kramers 逃逸率方法，以及他们在文献 [40] 中构造的热势，考察黑洞一级相变的一些过程特征。
    > 原文："Using the Kramer's escape rate method [38, 39] of describing the Brownian motion of particles in an external field and thermal potential we constructed in [40], we examine some process characteristics in the first-order phase transition of the black hole."

23. **主要结论（引言版）**：一级相变速率呈先增后减的趋势；在很宽的系综温度范围内，小→大的转变速率远大于大→小；两个过程呈严重非对称特征，整体由小→大主导。
    > 原文："The results indicate that the rate of the first-order phase transition of the black hole shows a trend of increasing first and then decreasing, and the rate of transition from a small black hole to a large black hole is much greater than that from a large black hole to a small black hole within a wide range of ensemble temperatures. Two processes (the transition from a large black hole to a small black hole and the one from a small black hole to a large black hole) present serious asymmetric features, and the overall process is dominated by the transition from a small black hole to a large black hole."

---

## 四、带电 AdS 黑洞的热力学（Sec. II）

24. **质量**：以事件视界半径 $r_h$ 表示，带电 AdS 黑洞的质量为
    $$M=\frac{r_h}{2}+\frac{4\pi Pr_h^3}{3}+\frac{Q^2}{2r_h}\qquad\text{(原文式 (1))}$$
    其中 $Q$ 为总电荷，$P$ 为由 $P=3/(8\pi l^2)$ 定义的热力学压强，$l$ 为 AdS 半径。
    > 原文："We briefly review the thermodynamic behavior of the charged AdS black hole [12]. The mass of the black hole in terms of the radius of the event horizon $r_h$ is"；"where $Q$ is the total charge of the black hole, $P$ is the thermodynamic pressure defined by $P=3/(8\pi l^2)$, and $l$ is the AdS radius."

25. **温度**：$T_h=\frac{1}{4\pi r_h}\left(1+8\pi Pr_h^2-\frac{Q^2}{r_h^2}\right)$（原文式 (2)）。
    > 原文："The temperature of the charged AdS black hole is"

26. **熵**：$S=\pi r_h^2$（原文式 (3)）。
    > 原文："and the entropy conjugated with the temperature is"

27. **Gibbs 自由能**：$G\equiv M-T_hS=\frac{1}{4}\left(r_h-\frac{8\pi}{3}Pr_h^3+\frac{3Q^2}{r_h}\right)$（原文式 (4)）。
    > 原文："Gibbs free energy plays a key role in the phase transition of a thermodynamic system. For the charged AdS black hole, it is"

28. **与 vdW 流体的类比**：多项研究表明带电 AdS 黑洞的热力学行为类似于 van der Waals 流体；vdW 流体经历气—液相变，而带电 AdS 黑洞对应的是大—小黑洞相变。
    > 原文："Several studies have shown that the thermodynamic behavior of a charged AdS black hole is similar to that of van der Waals fluid. For van der Waals fluid, it undergoes the gas–liquid phase transition, and for the charged AdS black hole, it is called the large–small black hole phase transition."

29. **临界值**：$r_c=\sqrt6Q$、$T_c=\frac{\sqrt6}{18\pi Q}$、$P_c=\frac{1}{96\pi Q^2}$、$G_c=\frac{\sqrt6Q}{3}$（原文式 (5)）。
    > 原文："The critical values for the black hole are [12]"

30. **无量纲量**：$t_h:=T_h/T_c$、$p:=P/P_c$、$x:=r_h/r_c$、$g:=G/G_c$（原文式 (6)）。
    > 原文："For the convenience of discussion, we now introduce dimensionless thermodynamic quantities, which are respectively defined as follows:"

31. **热势的定义**：$f(x)=\int(T_h-T)\,dS$（原文式 (7)）。
    > 原文："In our previous work [40], we consider a canonical ensemble composed of a large number of states (on-shell black hole states and off-shell other unknown states) and construct the thermal potential:"

32. **系综图像**：当系综温度 $T$ 等于 Hawking 温度 $T_h$ 时，系综由在壳黑洞态构成并处于平衡；当 $T\neq T_h$ 时，正则系综中所有可能态都偏离在壳黑洞态。
    > 原文："Here, when the ensemble temperature $T$ is equal to the Hawking temperature $T_h$, the ensemble is made up of an on-shell black hole state and is in equilibrium. Moreover, when $T\neq T_h$, all possible states in the canonical ensemble deviate from the on-shell black hole state."

33. **热势的物理含义**：通常热力学中热运动程度由温度与熵的乘积衡量，因此上述热势大致反映了偏离的程度。
    > 原文："In usual thermodynamics, the degree of thermal motion is measured by the product of the temperature and entropy. Hence, the above thermal potential roughly reflects the degree of deviation."

34. **用几何特征重构相变行为**：他们用这种外部势的几何特征重构了黑洞的相变行为。
    > 原文："Moreover, we reconstructed the phase transition behavior of black holes using the geometric characteristics of such an external potential."

35. **两个温度的独立性**：系综温度 $T$ 可以任意取正值，而在壳黑洞态的温度 $T_h$ 也可以依式(2) 任意取正值；因此 $T=T_h$ 只是确定 $T$ 的方式之一。
    > 原文："The ensemble temperature $T$ can take any positive value in any way, whereas the temperature $T_h$ of the on-shell black hole states can also take any positive value based on Eq. (2). Therefore, $T=T_h$ is just one of the ways to derive the value of the ensemble temperature $T$."

36. **动力学图像**：在热涨落驱动下，黑洞态在该热势中运动；黑洞在热势中的动力学行为能反映其一些热力学相变特征，且与 Gibbs 自由能给出的分析一致。
    > 原文："Driven by thermal fluctuations, black hole states move in such a thermal potential. The dynamic behavior of black holes in the thermal potential can reflect some thermodynamic phase transition characteristics of black holes, which is consistent with the analysis given by Gibbs free energy."

37. **热势的显式表达式**：代入式(2)(3)(5)(6) 到式(7) 并完成积分，得带电 AdS 黑洞的热势
    $$f(x)=\sqrt6Q^3\psi(x)=\sqrt6Q^3\!\left(\frac{1}{4x}+3x^2+\frac{px^3}{4}-tx^2\right)\qquad\text{(原文式 (8))}$$
    其中用 $t:=T/T_c$ 把系综温度 $T$ 替换为无量纲版本。
    > 原文："Substituting Eqs. (2), (3), (5) and (6) into Eq. (7) and completing the integration, we can obtain the expression of the thermal potential for the charged AdS black hole:"；"where we replace the ensemble temperature $T$ with its dimensionless version $t$ via $t:=T/T_c$."
    > ⚠️ **该式在 arXiv HTML 中的渲染有损**（根号丢失、分母丢失），本文档第十节给出了独立复算的等价形式与验证方法。

38. **三个关键温度**：$t_1$ 与 $t_3$ 分别是 swallowtail 尖端的局部最小温度与局部最大温度，$t_2$ 是 swallowtail 交点温度。
    > 原文："where $t_1$ and $t_3$ are the local minimum temperature and the local maximum temperature of the swallowtail tip, and $t_2$ is the temperature of the swallowtail intersection."

39. **三种状态**：热力学系统总倾向处于 Gibbs 自由能最低的态；当温度位于 $t_1$ 与 $t_3$ 之间时，系统有三种可能状态，标记为 $A$、$B$、$C$。
    > 原文："A thermodynamic system is always inclined to be in the state with the lowest Gibbs free energy. When the temperature is between $t_1$ and $t_3$, the system is in three possible states, marked as $A$, $B$, and $C$."

40. **$\omega$-well 与双阱**：当系综温度 $t=t_2$ 时热势的两个全局极小相等，称为 $\omega$-well；当 $t\in(t_1,t_3)$（不含 $t_2$）时热势表现为一般双阱势的特征。
    > 原文："When the ensemble temperature $t=t_2$, the two global minima in the thermal potential are equal, labeled as $\omega$-well. When the ensemble temperature $t\in(t_1,t_3)$ (excluding $t_2$), the thermal potential presents the characteristics of a general double-well potential."

41. **图 1 的三种形态**：(a) swallow tail；(b) $\omega$-well potential；(c) double-well potential；图中给出压强 $p=\text{constant}<1$ 时无量纲 Gibbs 自由能 $g(t_h,p)$ 与无量纲热势 $\psi(x)$ 的行为。
    > 原文（图 1 题注）："Behaviors of the dimensionless Gibbs free energy $g(t_h,p)$ and dimensionless thermal potential $\psi(x)$ for the charged AdS black hole when the thermodynamic pressure $p=constant<1$."

---

## 五、Kramers 逃逸率的构造（Sec. II 续）

42. **分子图像**：基于黑洞分子假设，大—小黑洞相变是热势中黑洞分子因热涨落而发生的重排；图 1(c) 可以描述这种分子重排。
    > 原文："Based on the black hole molecular hypothesis [14], the large–small black hole phase transition is the rearrangement of black hole molecules due to thermal fluctuations in the thermal potential. Diagram (c) in FIG. 1 might describe a molecular rearrangement."

43. **高垒假设**：假设系综温度（乘 Boltzmann 因子）远低于势垒高度。
    > 原文："We assume that the ensemble temperature (multiplied by the Boltzmann factor) is much lower than the barrier height."

44. **过垒过程**：分子会在势极小（点 $A$）附近停留很久，只有极少情况下 Brownian 运动把它们带到垒顶（点 $B$）；一旦到达垒顶，它们可能等概率地落向两侧；若落向右侧，会迅速落到另一个极小（点 $C$）、停留一段时间，之后再可能穿回原来的极小（点 $A$）。
    > 原文："Molecules will spend a lot of time near the potential minimum (point $A$), and only rarely will Brownian motion take them to the top of the barrier (point $B$). Once the molecule reaches the top of the barrier, it is likely to fall equally to either side of the barrier. If it moves to the right-hand side, it will rapidly fall to the other minimum (point $C$), stay there for a while, and then perhaps cross back to the original minimum (point $A$)."

45. **动力学方程**：这里运动是纯扩散的，由 Smoluchowski 方程支配，且势垒高（或温度低），因此很容易求出穿越率，即 Kramers 率。
    > 原文："Here, the motion is purely diffusive, governed by a Smoluchowski equation, and the barrier is high (or the temperature is low). Hence, it is quite easy to find a crossing rate, which is the Kramer's rate [38, 39]."

46. **Kramers 率公式**：
    $$r_k=\frac{\sqrt{|f''(x_{\min})f''(x_{\max})|}}{2\pi}\,e^{-\frac{f(x_{\max})-f(x_{\min})}{D}}\qquad\text{(原文式 (10))}$$
    其中 $D$ 为常数扩散系数，$x_{\max,\min}$ 为热势极值点的位置，两撇号表示热势函数 $f$ 对参数 $x$ 的二阶导数。
    > 原文："where $D$ is the constant diffusion coefficient, $x_{\max,\min}$ are the locations of the extreme points of the thermal potential, and the two prime represents the second derivative of the potential function $f$ with respect to the parameter $x$."

47. **极值方程**：带电 AdS 黑洞热势的极值点位置由方程 $3px^4-8tx^3+6x^2-1=0$ 决定。
    > 原文："For the charged AdS black hole, the locations of the extreme points of the thermal potential are determined by the equation $3px^4-8tx^3+6x^2-1=0$."

48. **三根条件**：当 $0<p<1$ 且 $t\in(t_1,t_3)$ 时，该方程有三个实的正根，从小到大记为 $x_1$、$x_2$、$x_3$；按式(7)，这些位置本质上是 $T_h=T$（即 $t_h=t$）的解。
    > 原文："When $0<p<1$ and $t\in(t_1,t_3)$, this equation has three real positive roots. From small to large, we mark them as $x_1$, $x_2$, and $x_3$. According to Eq. (7), these positions, in essence, are the solutions of $T_h=T$ or $t_h=t$."

49. **图 2**：以图示给出 $p=0.5$ 时方程 $t_h=t$ 的三个实根 $x_1,x_2,x_3$，可以清楚看到三个位置之间的间隔。
    > 原文（图 2 题注）："Graphic representation of three real roots ($x_1$, $x_2$, and $x_3$) of an equation $t_h=t$ at the pressure $p=0.5$ for the charged AdS black hole."；"With the dimensionless quantities (6), we present a plot to illustrate this point in FIG. 2, in which we can easily see the separations between the three positions."

50. **两个方向的速率**：从 $A$ 到 $C$ 的穿越率记为 $r_{k1}$，从 $C$ 到 $A$ 的记为 $r_{k2}$：
    $$r_{k1}=\frac{\sqrt{|f''(x_1)f''(x_2)|}}{2\pi}e^{-\frac{f(x_2)-f(x_1)}{D}},\qquad r_{k2}=\frac{\sqrt{|f''(x_3)f''(x_2)|}}{2\pi}e^{-\frac{f(x_2)-f(x_3)}{D}}\qquad\text{(原文式 (11)(12))}$$
    > 原文："Hence, the rate of crossing from $A$ to $C$ is labeled as $r_{k1}$, and the rate of crossing from $C$ to $A$ is labeled as $r_{k2}$, which can be read as"

51. **速率的物理指认**：图 3 给出不同态之间的转变速率，即从小黑洞态到大黑洞态的速率 $r_{k1}$ 与从大黑洞态到小黑洞态的速率 $r_{k2}$。
    > 原文："We plot the transition rate between different states of the charged AdS black hole in FIG. 3, that is, the transition rate $r_{k1}$ from the small black hole state to the large black hole state and the transition rate $r_{k2}$ from the large black hole state to the small black hole state."

52. **式(10) 的适用条件（深阱条件）**：使用式(10) 分析转变速率时，假设系综温度远低于势垒高度，$tT_c\ll\Delta f$，其中 $\Delta f$ 为势垒高度，即 $\frac{\sqrt6}{18\pi Q}t\ll\sqrt6Q^3\Delta\psi$（原文式 (13)）。
    > 原文："Here, when using Eq. (10) to analyze the transition rate, we assume that the ensemble temperature is much lower than the barrier height, $tT_c\ll\Delta f$, where $\Delta f$ is the barrier height, i.e.,"（式(13)）

53. **条件的可实现性**：因此总能找到合适的 $Q$ 值使上述条件成立。
    > 原文："Therefore, we can always find the appropriate value of $Q$ to make the above condition meet."

54. **数值参数**：图 3 中取 $p=0.5$、电荷 $Q=10/6$、常数扩散系数 $D=10$。
    > 原文（图 3 题注）："Transition rate $r_k$ with respect to the ensemble temperature $t$ at the pressure $p=0.5$ for the charged AdS black hole. Here without losing generality, we set the charge $Q=10/6$ and constant diffusion coefficient $D=10$."
    > ⚠️ $Q$ 的写法在 HTML 中为 "10/6"；考虑到同文多处 $\sqrt{\ }$ 符号在渲染中丢失（例如 $r_c=\sqrt6Q$ 渲染为 "6𝑄"），该处**可能**原为 $Q=\sqrt{10/6}$。此点未经验证，见第十节第 78 条。

---

## 六、结果：速率的行为（Sec. II 续）

55. **两个端点**：在 $t_1$ 与 $t_3$ 处转变速率为零，意味着不发生相变。
    > 原文："At $t_1$ and $t_3$, the transition rate is zero, which means that no phase transition occurs."

56. **整体趋势**：当系综温度 $t$ 从 $t_1$ 升高到 $t_3$ 时，两个速率都呈先增后减的趋势。
    > 原文："As the ensemble temperature $t$ increases from $t_1$ to $t_3$, the two rates show a trend of increasing first and then decreasing."

57. **核心结果（非对称）**：在 $t_2$ 处，热势的两个全局极小相等，但两个速率并不相等；$r_{k1}$ 远大于 $r_{k2}$，说明"小→大"的过程与"大→小"的过程相差甚远。
    > 原文："At $t_2$, according to the diagram (b) in FIG. 1, the two global minima in the thermal potential are equal, but the transition rates $r_{k1}$ and $r_{k2}$ are not equal. The rate $r_{k1}$ is much larger than the rate $r_{k2}$, indicating that the transition process from the small black hole to the large black hole is far from that of the transition from the large black hole to the small black hole."

58. **极大值的次序**：在 $t_2$ 与 $t^*$ 之间两个速率各自达到极大值：$r_{k1}$ 先达到，$r_{k2}$ 后达到。
    > 原文："Between $t_2$ and $t^*$, the two rates will reach a maximum value: $r_{k1}$ will reach first, and $r_{k2}$ will reach later."

59. **净速率**：在 $t^*$ 之前，两相之间的净转变速率 $\Delta r_k=r_{k1}-r_{k2}$ 呈先增后减，且"小→大"的速率占主导；同时净速率在 $t_1$ 与 $t_2$ 之间达到极大值。
    > 原文："Before $t^*$, the net rate of the transition ($\Delta r_k=r_{k1}-r_{k2}$) between the two phases shows a trend of increasing first and then decreasing, and the rate of the transition $r_{k1}$ from the small black hole to the large black hole is dominant. At the same time, the net rate reaches the maximum value between $t_1$ and $t_2$."

60. **动力学平衡温度 $t^*$**：在 $t^*$ 处两个速率相等、净速率为零，即两相之间的转变达到动态平衡。
    > 原文："At $t^*$, the transition rates $r_{k1}$ and $r_{k2}$ are equal, and the net rate is zero, which means that the transition between the two phases reaches dynamic equilibrium."

61. **温度过高后的反转**：一旦系综温度 $t$ 超过 $t^*$ 就发生反转——此时"大→小"的过程占主导，并且同样先增后减。
    > 原文："Once the ensemble temperature $t$ exceeds $t^*$, there will be a reversal. That is, at this time, the process of the transition from the large black hole to the small black hole will dominate, and it also shows a trend of first increasing and then decreasing."

62. **上端点**：当系综温度达到 $t_3$ 时两个速率都为零，表明不发生相变。
    > 原文："When the ensemble temperature reaches $t_3$, both rates are zero, indicating that there is no phase transition."

63. **小结**：总之，小/大黑洞之间的相变呈现非常明显的非对称特征，整体过程由"小→大"主导。
    > 原文："In short, the phase transition between small and large black holes presents very asymmetric features, and the overall process is dominated by the transition from a small black hole to a large black hole."

---

## 七、总结（Sec. III Summary）

64. **工作回顾**：本文利用黑洞在热势中的几何行为，采用描述外场中粒子 Brownian 运动的 Kramers 逃逸率方法，研究了带电 AdS 黑洞一级相变的动力学过程。
    > 原文："In this study, we used the geometric behavior of a black hole in the thermal potential and adopted the Kramer's escape rate method of describing the Brownian motion of particles in an external field to study the dynamic process of the first-order phase transition for a charged AdS black hole."

65. **与 Gibbs 分析的对比**：此前用 Gibbs 自由能分析黑洞相变行为时，无法提取从一个态到另一个态的转变强度信息；借助随机过程，现在得到了带电 AdS 黑洞小/大黑洞相变的速率行为。
    > 原文："In the previous process of analyzing the phase transition behavior of black holes using Gibbs free energy, we cannot extract information on the transition intensity from one state to another. By means of a stochastic process, at present, we have obtained the rate behavior of the phase transition between small and large black holes for the charged AdS black hole."

66. **总体结论**：整体上 AdS 黑洞的一级相变速率呈先增后减的趋势，且在很宽的系综温度范围内，"小→大"的转变速率远大于"大→小"。
    > 原文："On the whole, the first-order phase transition rate of the AdS black hole shows a trend of increasing first and then decreasing, and the transition rate from a small black hole to a large black hole is much greater than that from a large black hole to a small black hole within a wide range of ensemble temperatures."

67. **相变发生的温度窗口**：与 Gibbs 自由能分析一致，存在三个关键温度 $t_1,t_2,t_3$（见图 1(a)）；只有当系综温度位于 $t_1$ 与 $t_3$ 之间时才可能发生相变。
    > 原文："As in the analysis of Gibbs free energy, there are three key temperatures $t_1$, $t_2$, and $t_3$ (see diagram (a) in FIG. 1). Only when the ensemble temperature is between $t_1$ and $t_3$ can the phase transition occur."

68. **$t_2$ 的含义与反直觉之处**：系综温度 $t=t_2$ 是 Gibbs 自由能 swallowtail 的交点，对应热势的两个全局极小相等（图 1(b)）；直觉上既然两个极小相等，两处的分子应当同时到达垒顶、相变速率应当相等。
    > 原文："When the ensemble temperature $t=t_2$, it is at the swallow tail intersection of Gibbs free energy, which corresponds to the case where the two global minima in the thermal potential are equal (see diagram (b) in FIG. 1). Intuitively, as the two minima are equal, the molecules at the two positions should simultaneously reach the top of the barrier, and the phase transition rate will be equal."

69. **实际情形**：但事实上在该温度（$t=t_2$）下，"小→大"的转变速率远快于"大→小"（见图 3）。
    > 原文："In fact, at this temperature ($t=t_2$), the transition rate from a small black hole to a large black hole is much faster than that of a large black hole to a small black hole (see FIG. 3)."

70. **这正是本文的价值所在**：这是从 Gibbs 自由能分析中无法获得的重要信息。
    > 原文："This is the important information about the phase transition of black holes that we cannot get in the analysis of Gibbs free energy."

71. **真正的动力学平衡温度**：只有当系综温度 $t=t^*$（$t^*\in(t_2,t_3)$）时两个速率才相等，表明相变达到动态平衡。
    > 原文："Only when the ensemble temperature $t=t^*$, where $t^*\in(t_2,t_3)$, can the two rates be equal, indicating that the phase transition reaches a dynamic equilibrium."

72. **对热势本身的约束**：此外，热势不能任意取，它应当满足一些要求——热势的极值对应平衡态，即系综温度 $T$ 等于 Hawking 温度 $T_h$ 的态；热势的凹凸性可与热力学系统的稳定性相关联。
    > 原文："In addition, the thermal potential cannot be arbitrary, and it should meet some requirements. The extreme value of the thermal potential corresponds to the equilibrium state, i.e., the state with the ensemble temperature $T$ equating to the Hawking temperature $T_h$. The concavity and convexity of the thermal potential can be related to the stability of the thermodynamic system."

73. **热势形式的不唯一性**：在两种条件下的热势，其表达式可能与本工作中构造的不同；同时，对相变速率的分析而言，定性行为是一致的，但数值上存在差异。
    > 原文："For the thermal potential under the two conditions, the expression may not be the same as that constructed in this study. Meanwhile, for the analysis of the phase transition rate, the qualitative behaviors are consistent, but there are differences in the numerical values."

74. **遗留问题**：还有一些问题需要进一步解释——带电 AdS 黑洞小/大黑洞相变速率中的**非对称机制**是什么？为什么在 Gibbs 自由能 swallowtail 交点处的相变速率不相等？这些都是很有意义的研究内容。
    > 原文："However, some problems still need to be further explained. What is the asymmetry mechanism in the phase transition rate between small and large black holes for a charged AdS black hole? Why is the phase transition rate between small and large black holes at the swallow tail intersection of Gibbs free energy not equal? These are very meaningful research contents."

75. **可推广性**：当前方法可推广到其他类型的相变，尤其是黑洞热力学相变中三相点附近的行为，这将进一步加深对黑洞相变微观机制的理解。
    > 原文："In addition, the current method can be extended to other types of phase transitions, especially the behavior near the triple points among black hole thermodynamic phase transitions, which will further understand the microscopic mechanism of black hole phase transitions."

---

## 八、致谢（Acknowledgments）

76. **资助与致谢**：本研究受国家自然科学基金（12105222、12275216、12247103）与西北大学"双一流"建设项目的支持；作者感谢匿名审稿人的有益意见。
    > 原文："This research is supported by National Natural Science Foundation of China (Grant No. 12105222, No. 12275216, and No. 12247103), and also supported by The Double First-class University Construction Project of Northwest University. The author would like to thank the anonymous referee for the helpful comments that improve this work greatly."

---

## 九、主要引用的关键文献（据原文 References）

| 编号 | 文献 | 原文引用 |
| --- | --- | --- |
| [12] | D. Kubiznak, R. B. Mann, "$P$–$V$ criticality of charged AdS black holes", JHEP **07**, 033 (2012) | > 原文："[12] D. Kubiznak and R.B. Mann, $P-V$ criticality of charged AdS black holes, JHEP 07, 033 (2012)." |
| [30] | R. Li, J. Wang, "Thermodynamics and kinetics of Hawking-Page phase transition", PRD **102**, 024085 (2020) | > 原文："[30] R. Li and J. Wang, Thermodynamics and kinetics of Hawking-Page phase transition, Phys. Rev. D 102, 024085 (2020)." |
| [31] | R. Li, K. Zhang, J. Wang, "Thermal dynamic phase transition of Reissner-Nordström Anti-de Sitter black holes on free energy landscape", JHEP **10**, 090 (2020) | > 原文："[31] R. Li, K. Zhang and J. Wang, Thermal dynamic phase transition of Reissner-Nordström Anti-de Sitter black holes on free energy landscape, JHEP 10, 090 (2020)." |
| [32] | R. Li, K. Zhang, J. Wang, "Probing black hole microstructure with the kinetic turnover of phase transition", PRD **104**, 084076 (2021) | > 原文："[32] R. Li, K. Zhang and J. Wang, Probing black hole microstructure with the kinetic turnover of phase transition, Phys. Rev. D 104, 084076 (2021)." |
| [35] | Z.-M. Xu, B. Wu, W.-L. Yang, "van der Waals fluid and charged AdS black hole in the Landau theory", CQG **38**, 205008 (2021) | > 原文："[35] Z.-M. Xu, B. Wu, and W.-L. Yang, van der Waals fluid and charged AdS black hole in the Landau theory, Class. Quant. Grav. 38, 205008 (2021)." |
| [38] | H. Risken, *The Fokker-Planck equation*（Springer） | > 原文："[38] H. Risken, The Fokker-Planck equation: methods of solution and applications, 2nd ed. (Springer, Berlin, Heidelberg, 1988)." |
| [39] | R. Zwanzig, *Nonequilibrium Statistical Mechanics*（Oxford University Press, 2001） | > 原文："[39] R. Zwanzig, Nonequilibrium Statistical Mechanics (Oxford University Press, Oxford, 2001)." |
| [40] | Z.-M. Xu, "Fokker-Planck equation for black holes in thermal potential", PRD **104**, 104022 (2021) | > 原文："[40] Z.-M. Xu, Fokker-Planck equation for black holes in thermal potential, Phys. Rev. D 104, 104022 (2021)." |

---

## 十、arXiv HTML 渲染缺陷与本文的独立复算

> 本节内容不属于原文陈述，全部为**本文自行计算并验证**的结果。之所以需要它，是因为 arXiv HTML（LaTeXML）版在式(8) 与式(9) 处丢失了根号与分母，无法直接引用。

77. **缺陷清单**：式(8) 的 $\psi(x)$ 与式(9) 的 $t_1,t_2,t_3$ 在 HTML 版中均不可直接辨认（例如 $r_c=\sqrt6Q$ 被渲染为 "6𝑄"、$T_c=\sqrt6/(18\pi Q)$ 被渲染为 "618𝜋𝑄"，可见根号符号系统性丢失）。
    [算·本文对 `https://arxiv.org/html/2211.03512v2` 与原文摘要页的比对]

78. **可核验的抓手**：原文明确给出极值方程为 $3px^4-8tx^3+6x^2-1=0$，这条式子不含根号、无歧义，可作为反推热势的判据。
    [引·原文："the locations of the extreme points of the thermal potential are determined by the equation $3px^4-8tx^3+6x^2-1=0$"]

79. **独立推导的热势**：由 $f(x)=\int(T_h-T)dS$、$T_h$ 取式(2)、并利用式(5)(6) 的无量纲量，可得（差一个整体常系数）
    $$\psi(x)\ \propto\ \frac{3x}{4}+\frac{px^3}{8}+\frac{1}{8x}-\frac{tx^2}{2}.$$
    [算·推导；算·校验：$8x^2\psi'(x)$ 与原文的 $3px^4-8tx^3+6x^2-1$ 之差化简为 $0$]

80. **$t_1$ 与 $t_3$ 的闭式**：令 $\psi'(x)=0$（即上述四次式的判别式为零）可得两个端点温度
    $$t_1=\frac12\sqrt{1+3p-(1-p)^{3/2}},\qquad t_3=\frac12\sqrt{1+3p+(1-p)^{3/2}}.$$
    [算·推导：判别式为 $\text{const}\times[16t^4-8(1+3p)t^2+p(3+p)^2]$，解得 $t^2=\frac14[(1+3p)\pm(1-p)^{3/2}]$]

81. **与原文式(9) 的另一种写法一致**：$t_3$ 亦可写成 $\frac{(2-\sqrt{1-p})\sqrt{1+\sqrt{1-p}}}{2}$，两者平方之差化简为 $0$（即恒等）。
    [算·符号验证：`Simplify[t3f[p]^2 - t3a[p]^2]` 输出 `0`]

82. **$t_1,t_3$ 的数值**：$p=0.5$ 时 $t_1=0.73253782$、$t_3=0.84462320$；$p=0.7$ 时 $0.856692$ 与 $0.903371$；$p=0.9$ 时 $0.957650$ 与 $0.965870$。（$p\to1$ 时两者同时趋于 $1$，与临界点一致。）
    [算·数值]

83. **$t_2$ 无法用原文式(9) 的渲染形式核对**：按 HTML 渲染猜读的 $t_2=p(3-p)/2$ 在 $p=0.5$ 时给 $0.625$，而按"两阱等深"定义数值求解得 $t_2=0.75711512$，二者不符，说明该处渲染不可信；本笔记采用数值解 $t_2$。
    [算·数值：$t_2$ 由 $f(x_1)=f(x_3)$ 求得，$p=0.5$ 时 $t_2=0.75711512$；可核验性：此时两个势垒高度严格相等（均为 $0.033587$）]

84. **等深处的速率比是纯几何量**：在 $t_2$ 处两阱等深，故式(11)(12) 的两个指数因子精确相消，
    $$\frac{r_{k1}}{r_{k2}}\bigg|_{t_2}=\sqrt{\left|\frac{\psi''(x_1)}{\psi''(x_3)}\right|},\qquad \psi''(x)=\frac{3px}{4}+\frac{1}{4x^3}-t .$$
    这与扩散系数 $D$ 无关。
    [算·推导与数值；对应原文的观察"the two global minima in the thermal potential are equal, but the transition rates $r_{k1}$ and $r_{k2}$ are not equal."]

85. **数值结果汇总**（$t_2$ 处的速率比、"直接差"与"闭式"两种算法给出的势垒高度一致）：

    | $p$ | $t_1$ | $t_2$（数值） | $t_3$ | $x_1,x_2,x_3$ | **$r_{k1}/r_{k2}$（在 $t_2$）** |
    |---|---|---|---|---|---|
    | 0.5 | 0.732538 | 0.75711512 | 0.844623 | 0.57685, 1.35690, 2.45161 | **2.0616** |
    | 0.7 | 0.856692 | 0.87015458 | 0.903371 | 0.65146, 1.16941, 1.83470 | **1.6782** |
    | 0.9 | 0.957650 | 0.96077704 | 0.965870 | 0.77508, 1.04721, 1.35998 | **1.3246** |

    [算·数值；其中 $x_1<x_2<x_3$ 对应原文的"From small to large, we mark them as $x_1$, $x_2$, and $x_3$."]

86. **与原文结论的一致性**：上表显示在 $t_2$ 处 $r_{k1}/r_{k2}$ 显著大于 $1$ 且随 $p\to1$（趋近临界）而趋于 $1$，与原文"$r_{k1}$ is much larger than the rate $r_{k2}$"以及"At $t_1$ and $t_3$, the transition rate is zero"的定性描述一致。
    [算·数值；引·原文第 55、57 条引文]

87. **$Q$ 的数值存疑**：图 3 题注的 $Q=10/6$ 在 HTML 中即为如此；考虑到同文根号丢失的系统性问题，此处**可能**原为 $Q=\sqrt{10/6}$，但本笔记无法从 HTML 或摘要页确证，故如实记录为未验证。
    [算·无；引·图 3 题注原文："we set the charge $Q=10/6$ and constant diffusion coefficient $D=10$."]

---

## 十一、一句话结论（皆对应上文引文）

- 本文把"带电 AdS 黑洞的小/大黑洞一级相变"翻译成一个一维热势中的 Kramers 逃逸问题，热势为 $f(x)=\int(T_h-T)dS$、极值方程为 $3px^4-8tx^3+6x^2-1=0$（第 31、37、47 条）。
- 核心发现是**非对称**：在 Gibbs 意义下的共存温度 $t_2$ 处两阱等深，但"小→大"的速率远大于"大→小"；只有到 $t^*\in(t_2,t_3)$ 才达到动力学平衡（第 57、60、67–71 条）。
- 这一信息是 Gibbs 自由能分析给不出的，也是本文自称填补的空白（第 20、65、70 条）。
- 本文留下的问题——非对称的**机制**、以及为何 $t_2$ 处速率不等——至今仍是公开问题（第 74 条）。
- 本文与 [25791] 的关系：[25791] 的广义自由能定义直接取自本文等文献（[25791] 式(17) 前："based on the definition of generalized free energy in reference [29, 30, 31, 32]"），[25791] 的 Sec. IV 是它的 Bardeen-AdS 类推广。
  [引·[25791] 式(17) 前的说明（其中 [29] 即本文）；本工作区 `arXiv-2604.25791v1\总结-平均首通时间与Kramers逃逸率.md` 第一节]
