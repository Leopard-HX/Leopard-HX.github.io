---
title: "总结：带电 AdS 黑洞相变的速率（Kramers 逃逸率）"
folder: "文章整理/arXiv-2211.03512v2"
---

**arXiv:2211.03512v2 [gr-qc]**

> **引用体例说明**：本文档中每一句总结都紧跟着对应的**原文英文摘录**（引号内为 arXiv 原文，未做改写），并在括号中标注出处（章节 / 式号 / 图号）。凡属原文公式者，仅逐字转录在 arXiv HTML 中可无歧义辨认的式子；无法确证的排版歧义公式一律只做文字复述或另行复算，并在第十节集中标注；Kramers 段（正文第 42–75 条）的逐句计算核验集中在**第十二节**（2026-09-15 补写：正文那几条每句下面都加了一行 `> **算·…**`）。
>
> **原文来源**：https://arxiv.org/abs/2211.03512 ｜ 全文：https://arxiv.org/html/2211.03512v2 ｜ 本目录 PDF：[`2211.03512v2.pdf`](/notes/文章整理/arXiv-2211.03512v2/2211.03512v2.pdf)
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

    $$
    M=\frac{r_h}{2}+\frac{4\pi Pr_h^3}{3}+\frac{Q^2}{2r_h}\qquad\text{(原文式 (1))}
    $$

    其中 $Q$ 为总电荷，$P$ 为由 $P=3/(8\pi l^2)$ 定义的热力学压强，$l$ 为 AdS 半径。
    > 原文："We briefly review the thermodynamic behavior of the charged AdS black hole [12]. The mass of the black hole in terms of the radius of the event horizon $r_h$ is, where $Q$ is the total charge of the black hole, $P$ is the thermodynamic pressure defined by $P=3/(8\pi l^2)$, and $l$ is the AdS radius."

25. **温度**：

    $$
    T_h=\frac{1}{4\pi r_h}\left(1+8\pi Pr_h^2-\frac{Q^2}{r_h^2}\right)
    $$

    （原文式 (2)）。
    > 原文："The temperature of the charged AdS black hole is"

26. **熵**：$S=\pi r_h^2$（原文式 (3)）。
    > 原文："and the entropy conjugated with the temperature is"

27. **Gibbs 自由能**：

    $$
    G\equiv M-T_hS=\frac{1}{4}\left(r_h-\frac{8\pi}{3}Pr_h^3+\frac{3Q^2}{r_h}\right)
    $$

    （原文式 (4)）。
    > 原文："Gibbs free energy plays a key role in the phase transition of a thermodynamic system. For the charged AdS black hole, it is"

28. **与 vdW 流体的类比**：多项研究表明带电 AdS 黑洞的热力学行为类似于 van der Waals 流体；vdW 流体经历气—液相变，而带电 AdS 黑洞对应的是大—小黑洞相变。
    > 原文："Several studies have shown that the thermodynamic behavior of a charged AdS black hole is similar to that of van der Waals fluid. For van der Waals fluid, it undergoes the gas–liquid phase transition, and for the charged AdS black hole, it is called the large–small black hole phase transition."

29. **临界值**：$r_c=\sqrt6Q$、

    $$
    T_c=\frac{\sqrt6}{18\pi Q}
    $$

    、$P_c=\frac{1}{96\pi Q^2}$、

    $$
    G_c=\frac{\sqrt6Q}{3}
    $$

    （原文式 (5)）。
    > 原文："The critical values for the black hole are [12]"

30. **无量纲量**：$t_h:=T_h/T_c$、$p:=P/P_c$、$x:=r_h/r_c$、$g:=G/G_c$（原文式 (6)）。（$x$ 到底代表什么量？它同时是半径/熵开方/体积立方根的三种等价读法，见 Q5）
    > 原文："For the convenience of discussion, we now introduce dimensionless thermodynamic quantities, which are respectively defined as follows:"

31. **热势的定义**：

    $$
    f(x)=\int(T_h-T)\,dS
    $$

    （原文式 (7)）。
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

    $$
    f(x)=\frac{\sqrt6Q}{3}\psi(x)=\frac{\sqrt6Q}{3}\left(\frac{1}{4x}+\frac{3x}{2}+\frac{px^3}{4}-tx^2\right)\qquad\text{(原文式 (8))}
    $$

    其中用 $t:=T/T_c$ 把系综温度 $T$ 替换为无量纲版本（**为什么要做这个替换？见 Q6**）。（2026-09-14 修正：原抄为 $\sqrt6Q^3$ 与 $3x^2$，已按官方 PDF 与独立复算更正为

    $$
    \frac{\sqrt6Q}{3}
    $$

    、$\frac{3x}{2}.$）
    > 原文："Substituting Eqs. (2), (3), (5) and (6) into Eq. (7) and completing the integration, we can obtain the expression of the thermal potential for the charged AdS black hole:, where we replace the ensemble temperature $T$ with its dimensionless version $t$ via $t:=T/T_c$."
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

    > **算·双阱结构**：$p=0.5$、$t=t_2=0.7571151$ 时极值方程的三个正根为

    $$
    x_1,x_2,x_3=0.5768511,\;1.3568998,\;2.4516094,
    $$

    对应 $\psi=1.0707225,\;1.1378968,\;1.0707225$、$\psi''=+1.52323,\;-0.29642,\;+0.35841$——正是"两极小 + 一极大"，即图 1(c) 的两个阱底 $A,C$ 与垒顶 $B$（第十二节 12.1 给全部记号与归一化）。

43. **高垒假设**：假设系综温度（乘 Boltzmann 因子）远低于势垒高度。
    > 原文："We assume that the ensemble temperature (multiplied by the Boltzmann factor) is much lower than the barrier height."

    > **算·量级核对**：按图 3 参数（$p=0.5$、$Q=\sqrt{10/6}$）有 $T_c=0.0335528$、$t_2T_c=0.0254033$，而 $\Delta\psi=0.0671744$、

    $$
    \Delta f=\frac{\sqrt6Q}{3}\Delta\psi=0.0708080,
    $$

    故 $t_2T_c/\Delta f=0.3588$——只是"同量级"，并非 $\ll1$。而 Kramers 高垒近似真正需要的是 $\Delta f\gg D$：按 $D=10$ 只有 $\Delta f/D=7.08\times10^{-3}$（$e^{-\Delta f/D}=0.9929$）。见 12.2、12.5。

44. **过垒过程**：分子会在势极小（点 $A$）附近停留很久，只有极少情况下 Brownian 运动把它们带到垒顶（点 $B$）；一旦到达垒顶，它们可能等概率地落向两侧；若落向右侧，会迅速落到另一个极小（点 $C$）、停留一段时间，之后再可能穿回原来的极小（点 $A$）。
    > 原文："Molecules will spend a lot of time near the potential minimum (point $A$), and only rarely will Brownian motion take them to the top of the barrier (point $B$). Once the molecule reaches the top of the barrier, it is likely to fall equally to either side of the barrier. If it moves to the right-hand side, it will rapidly fall to the other minimum (point $C$), stay there for a while, and then perhaps cross back to the original minimum (point $A$)."

    > **算·Boltzmann 权重**：垒顶相对阱底的权重就是 $e^{-\Delta f/D}$。$D=10$（图 3 取值）时 $e^{-\Delta f/D}=0.9929$——垒顶与阱底几乎等概率，"停留很久、极少到达垒顶"在该参数下并不成立；只有把 $D$ 取到热能量级（$D=t_2T_c=0.0254$）才有 $e^{-\Delta f/D}=0.0616$（$Q=10/6$ 读法为 $0.0274$），势垒才起抑制作用。数值见 12.5。

45. **动力学方程**：这里运动是纯扩散的，由 Smoluchowski 方程支配，且势垒高（或温度低），因此很容易求出穿越率，即 Kramers 率。
    > 原文："Here, the motion is purely diffusive, governed by a Smoluchowski equation, and the barrier is high (or the temperature is low). Hence, it is quite easy to find a crossing rate, which is the Kramer's rate [38, 39]."

    > **算·公式复现**：对 Smoluchowski 方程

    $$
    \partial_t\rho=\partial_x\!\left[D\,\partial_x\rho+\rho\,\partial_x f\right],
    $$

    静止通量与阱内布居之比给出

    $$
    r_k=\frac{1}{2\pi}\sqrt{\lvert f''(x_{\min})f''(x_{\max})\rvert}\,e^{-\Delta f/D},
    $$

    即原文 (10) 式。本文用两条独立途径复核（12.2）：① Laplace 近似链逐项相乘；② 直接数值积分静止 Fokker–Planck 通量——数值值/公式值随 $D\to0$ 趋于 $1$（$D=1/50,1/200,1/1000$ → $0.823,\,0.964,\,0.993$）。

46. **Kramers 率公式**：

    $$
    r_k=\frac{\sqrt{\lvert f''(x_{\min})f''(x_{\max})\rvert}}{2\pi}\,e^{-\frac{f(x_{\max})-f(x_{\min})}{D}}\qquad\text{(原文式 (10))}
    $$

    其中 $D$ 为常数扩散系数，$x_{\max,\min}$ 为热势极值点的位置，两撇号表示热势函数 $f$ 对参数 $x$ 的二阶导数。
    > 原文："where $D$ is the constant diffusion coefficient, $x_{\max,\min}$ are the locations of the extreme points of the thermal potential, and the two prime represents the second derivative of the potential function $f$ with respect to the parameter $x$."

    > **算·绝对值**：$p=0.5$、$t_2$、$Q=\sqrt{10/6}$、$D=10$ 时 $r_{k1}=0.1119335$、$r_{k2}=0.0542958$（比值 $2.06155$）。前因子的验证见第 45 条与 12.2。

47. **极值方程**：带电 AdS 黑洞热势的极值点位置由方程 $3px^4-8tx^3+6x^2-1=0$ 决定。**注意此式在原文中没有公式编号**（它是 (10) 式之后段落里的行内公式；详见第十节第 88 条的编号对照表）。
    > 原文："For the charged AdS black hole, the locations of the extreme points of the thermal potential are determined by the equation $3px^4-8tx^3+6x^2-1=0$."

    > **算·恒等式**（Wolfram 残差 $0$）：

    $$
    3px^4-8tx^3+6x^2-1=4x^2\psi'(x)=8x^3\left[t_h(x)-t\right],
    $$

    故"极值点"$\iff$"在壳温度等于系综温度"（$t_h(x)=t$），与第 48 条原文一致。

48. **三根条件**：当 $0<p<1$ 且 $t\in(t_1,t_3)$ 时，该方程有三个实的正根，从小到大记为 $x_1$、$x_2$、$x_3$；按式(7)，这些位置本质上是 $T_h=T$（即 $t_h=t$）的解。
    > 原文："When $0<p<1$ and $t\in(t_1,t_3)$, this equation has three real positive roots. From small to large, we mark them as $x_1$, $x_2$, and $x_3$. According to Eq. (7), these positions, in essence, are the solutions of $T_h=T$ or $t_h=t$."

    > **算·根数扫描**（$p=0.5$）：$t=0.70\to1$ 个正根、$0.7326\to3$、$0.75\to3$、$0.8446\to3$、$0.8447\to1$、$0.9\to1$、$1.0\to1$——与"$0<p<1$ 且 $t\in(t_1,t_3)$ 恰有三个实正根"一致（$t_1=0.7325378$、$t_3=0.8446232$）。

49. **图 2**：以图示给出 $p=0.5$ 时方程 $t_h=t$ 的三个实根 $x_1,x_2,x_3$，可以清楚看到三个位置之间的间隔。
    > 原文（图 2 题注）："Graphic representation of three real roots ($x_1$, $x_2$, and $x_3$) of an equation $t_h=t$ at the pressure $p=0.5$ for the charged AdS black hole.. With the dimensionless quantities (6), we present a plot to illustrate this point in FIG. 2, in which we can easily see the separations between the three positions."

    > **算·三根间距**：$0.5768511,\;1.3568998,\;2.4516094$，间距 $0.78005$ 与 $1.09471$（比值 $1.403$）；且 $x_1x_3=1/\sqrt p=1.41421$（推导见 Q1 第 3 节）。

50. **两个方向的速率**：从 $A$ 到 $C$ 的穿越率记为 $r_{k1}$，从 $C$ 到 $A$ 的记为 $r_{k2}$：

    $$
    r_{k1}=\frac{\sqrt{\lvert f''(x_1)f''(x_2)\rvert}}{2\pi}e^{-\frac{f(x_2)-f(x_1)}{D}},\qquad r_{k2}=\frac{\sqrt{\lvert f''(x_3)f''(x_2)\rvert}}{2\pi}e^{-\frac{f(x_2)-f(x_3)}{D}}\qquad\text{(原文式 (11)(12))}
    $$

    > 原文："Hence, the rate of crossing from $A$ to $C$ is labeled as $r_{k1}$, and the rate of crossing from $C$ to $A$ is labeled as $r_{k2}$, which can be read as"

    > **算·指数指认**：$r_{k1}$ 的指数是"阱 $x_1$ → 垒 $x_2$"的 $\Delta f_1=f(x_2)-f(x_1)$，$r_{k2}$ 的指数是"阱 $x_3$ → 垒 $x_2$"的 $\Delta f_2=f(x_2)-f(x_3)$；在 $t_2$ 处两者严格相等（$\Delta\psi=0.0671744$，$Q=\sqrt{10/6}$ 时 $\Delta f=0.0708080$）。

51. **速率的物理指认**：图 3 给出不同态之间的转变速率，即从小黑洞态到大黑洞态的速率 $r_{k1}$ 与从大黑洞态到小黑洞态的速率 $r_{k2}$。
    > 原文："We plot the transition rate between different states of the charged AdS black hole in FIG. 3, that is, the transition rate $r_{k1}$ from the small black hole state to the large black hole state and the transition rate $r_{k2}$ from the large black hole state to the small black hole state."

    > **算·谁是小黑洞**：$x=r_h/r_c$，故 $x_1=0.5769<1<x_3=2.4516$：$x_1$ 是小黑洞、$x_3$ 是黑洞，$r_{k1}$（自 $x_1$ 阱逃出）正是"小→大"✓。热力学偏好也可核验（$\mathrm{d}g/\mathrm{d}t=-x_i^2$）：$t=0.74<t_2$ 时 $g(x_1)=1.07630<1.16291=g(x_3)$，$t=0.80>t_2$ 时 $1.05550>0.75662$——低温偏好小黑洞 ✓。

52. **式(10) 的适用条件（深阱条件）**：使用式(10) 分析转变速率时，假设系综温度远低于势垒高度，$tT_c\ll\Delta f$，其中 $\Delta f$ 为势垒高度，即

    $$
    \frac{\sqrt6}{18\pi Q}t\ll\frac{\sqrt6Q}{3}\Delta\psi
    $$

    （原文式 (13)）。
    > 原文："Here, when using Eq. (10) to analyze the transition rate, we assume that the ensemble temperature is much lower than the barrier height, $tT_c\ll\Delta f$, where $\Delta f$ is the barrier height, i.e.,"（式(13)）

    > **算·(13) 式的两个因子**：

    $$
    tT_c=\frac{\sqrt6}{18\pi Q}t
    $$

    （由 (5)(6) 式）、

    $$
    \Delta f=\frac{\sqrt6Q}{3}\Delta\psi
    $$

    （由 (8) 式）都是直接读出；在 $t_2$、$Q=\sqrt{10/6}$ 下 $t_2T_c/\Delta f=0.3588$。
    > ⚠️ **本条早先把 (13) 式右端抄作 $\sqrt6Q^3\Delta\psi$，系误读**（HTML 正文渲染丢根号；其 TeX 源为 `\frac{\sqrt{6}Q}{3}\Delta\psi`），2026-09-15 已更正。

53. **条件的可实现性**：因此总能找到合适的 $Q$ 值使上述条件成立。
    > 原文："Therefore, we can always find the appropriate value of $Q$ to make the above condition meet."

    > **算·单调性与阈值**：

    $$
    tT_c/\Delta f=\frac{t}{6\pi Q^2\Delta\psi}\propto Q^{-2}
    $$

    严格单调递减，故"总能找到合适的 $Q$"成立；解 $t_2T_c/\Delta f<0.1$ 得 $Q>2.445$，解 $\Delta f/D=1$（$D=10$）得 $Q=182.3$。

54. **数值参数**：图 3 中取 $p=0.5$、电荷 $Q=10/6$、常数扩散系数 $D=10$。
    > 原文（图 3 题注）："Transition rate $r_k$ with respect to the ensemble temperature $t$ at the pressure $p=0.5$ for the charged AdS black hole. Here without losing generality, we set the charge $Q=10/6$ and constant diffusion coefficient $D=10$."
    > ⚠️ $Q$ 的写法在 HTML 中为 "10/6"；考虑到同文多处 $\sqrt{\ }$ 符号在渲染中丢失（例如 $r_c=\sqrt6Q$ 渲染为 "6𝑄"），该处**可能**原为 $Q=\sqrt{10/6}$。此点未经验证，见第十节第 78 条。
    > **算·两种读法的差别**：$Q=\sqrt{10/6}$ → $\Delta f/D=7.08\times10^{-3}$；$Q=10/6$ → $9.14\times10^{-3}$——都 $\ll1$。而 $t_2$ 处的速率比与 $Q,D$ **完全无关**（恒为 $2.06155$），故第 87 条的写法存疑不影响任何定性结论。

---

## 六、结果：速率的行为（Sec. II 续）

55. **两个端点**：在 $t_1$ 与 $t_3$ 处转变速率为零，意味着不发生相变。
    > 原文："At $t_1$ and $t_3$, the transition rate is zero, which means that no phase transition occurs."

    > **算·端点为零的机理与幂律**：$t=t_1$ 时 $x_2,x_3$ 合并于 spinodal 点，而在壳恒等式

    $$
    \psi''=\frac{3(px^4-2x^2+1)}{4x^3}
    $$

    的零点条件恰是合并条件 $px^4-2x^2+1=0$，故 $\psi''\to0$ ⇒ 前因子 $\to0$；$t_3$ 端 $x_1,x_2$ 合并同理。数值（$D=10$）：

    $$
    r_{k1}(t_1+\varepsilon)=0.03247,\;0.01030,\;0.003256,\;0.001030
    $$

    （$\varepsilon=10^{-4},10^{-6},10^{-8},10^{-10}$）⇒ $r_{k1}\propto(t-t_1)^{1/4}$；同端 $r_{k2}\propto(t-t_1)^{1/2}$；$t_3$ 端两者对调。两个速率在两端都 $\to0$ ✓（12.3）。

56. **整体趋势**：当系综温度 $t$ 从 $t_1$ 升高到 $t_3$ 时，两个速率都呈先增后减的趋势。
    > 原文："As the ensemble temperature $t$ increases from $t_1$ to $t_3$, the two rates show a trend of increasing first and then decreasing."

    > **算·逐点数值**（$p=0.5,D=10$）：$t=0.735\to0.795$ 时

    $$
    r_{k1}=0.07102,\;0.10092,\;0.11076,\;0.11448,\;0.11457,\;0.11190,\;0.10677,
    $$

    峰在 $0.7702$；同段

    $$
    r_{k2}=0.01779,\;0.03948,\;0.05212,\;0.06139,\;0.06852,\;0.07397,\;0.07788,
    $$

    峰在 $0.8121$——都先增后减 ✓（全表见 12.4）。

57. **核心结果（非对称）**：在 $t_2$ 处，热势的两个全局极小相等，但两个速率并不相等；$r_{k1}$ 远大于 $r_{k2}$，说明"小→大"的过程与"大→小"的过程相差甚远。
    > 原文："At $t_2$, according to the diagram (b) in FIG. 1, the two global minima in the thermal potential are equal, but the transition rates $r_{k1}$ and $r_{k2}$ are not equal. The rate $r_{k1}$ is much larger than the rate $r_{k2}$, indicating that the transition process from the small black hole to the large black hole is far from that of the transition from the large black hole to the small black hole."

    > **算·比值与数值**：$r_{k1}(t_2)=0.1119335$、$r_{k2}(t_2)=0.0542958$，比值 $2.06155$，且与 $D,Q$ 无关（$t_2$ 处两个指数因子严格相消）：
    > $$\frac{r_{k1}}{r_{k2}}\bigg\rvert_{t_2}=\sqrt{\left\lvert\frac{\psi''(x_1)}{\psi''(x_3)}\right\rvert}=\sqrt{\frac{x_1t_h'(x_1)}{x_3t_h'(x_3)}}=2.06155 .$$
    > 故 "much larger" 的具体倍数是**约 2 倍**，不是数量级差（$\psi''$ 的正确表达式与更正见第 84 条、12.6）。

58. **极大值的次序**：在 $t_2$ 与 $t^*$ 之间两个速率各自达到极大值：$r_{k1}$ 先达到，$r_{k2}$ 后达到。
    > 原文："Between $t_2$ and $t^*$, the two rates will reach a maximum value: $r_{k1}$ will reach first, and $r_{k2}$ will reach later."

    > **算·峰位次序**（$D=10$）：$t_{\max}(r_{k1})=0.770179$、$t_{\max}(r_{k2})=0.812083$，两者都落在 $(t_2,t^*)=(0.7571151,\,0.821792)$ 内，且前者在先 ✓（该次序对 $D$ 敏感，见 12.4）。

59. **净速率**：在 $t^*$ 之前，两相之间的净转变速率 $\Delta r_k=r_{k1}-r_{k2}$ 呈先增后减，且"小→大"的速率占主导；同时净速率在 $t_1$ 与 $t_2$ 之间达到极大值。
    > 原文："Before $t^*$, the net rate of the transition ($\Delta r_k=r_{k1}-r_{k2}$) between the two phases shows a trend of increasing first and then decreasing, and the rate of the transition $r_{k1}$ from the small black hole to the large black hole is dominant. At the same time, the net rate reaches the maximum value between $t_1$ and $t_2$."

    > **算·净速率**：

    $$
    t_{\max}(\Delta r_k)=0.744583\in(t_1,t_2)=(0.7325378,0.7571151)
    $$

    ✓；$t<t^*$ 段 $\Delta r_k>0$（$t=0.755$ 为 $0.05865$、$t=0.815$ 为 $0.00804$）✓。

60. **动力学平衡温度 $t^*$**：在 $t^*$ 处两个速率相等、净速率为零，即两相之间的转变达到动态平衡。
    > 原文："At $t^*$, the transition rates $r_{k1}$ and $r_{k2}$ are equal, and the net rate is zero, which means that the transition between the two phases reaches dynamic equilibrium."

    > **算·$t^*$**：数值解 $t^*=0.821792$（落在 $(t_2,t_3)$ 内），此时 $r_{k1}=r_{k2}=0.0794813$；且 $(t^*-t_1)/(t_3-t_1)=0.796$。

61. **温度过高后的反转**：一旦系综温度 $t$ 超过 $t^*$ 就发生反转——此时"大→小"的过程占主导，并且同样先增后减。
    > 原文："Once the ensemble temperature $t$ exceeds $t^*$, there will be a reversal. That is, at this time, the process of the transition from the large black hole to the small black hole will dominate, and it also shows a trend of first increasing and then decreasing."

    > **算·反转**：$t=0.825$ 时

    $$
    \Delta r_k=0.074373-0.078369=-0.003996<0;
    $$

    $t=0.835$ 时 $-0.017310$；同时 $r_{k2}$ 已过峰（峰值 $0.08074$ 在 $t=0.8121$，$t=0.835$ 时 $0.07082$），即"大→小"同样先增后减 ✓。

62. **上端点**：当系综温度达到 $t_3$ 时两个速率都为零，表明不发生相变。
    > 原文："When the ensemble temperature reaches $t_3$, both rates are zero, indicating that there is no phase transition."

    > **算·**：同第 55 条：$t_3$ 端 $x_1,x_2$ 合并 ⇒ $\psi''\to0$ ⇒ $r_{k1}\propto(t_3-t)^{1/2}$、$r_{k2}\propto(t_3-t)^{1/4}$，两者都 $\to0$ ✓。数值：

    $$
    r_{k1}(t_3-\varepsilon)=0.0055846,\;0.00055859,\;0.000055859
    $$

    、$r_{k2}(t_3-\varepsilon)=0.025330,\;0.0080822,\;0.0025580$（$\varepsilon=10^{-4},10^{-6},10^{-8}$，相邻比 $10$ 与 $3.13$）✓。

63. **小结**：总之，小/大黑洞之间的相变呈现非常明显的非对称特征，整体过程由"小→大"主导。
    > 原文："In short, the phase transition between small and large black holes presents very asymmetric features, and the overall process is dominated by the transition from a small black hole to a large black hole."

    > **算·定量版（2026-09-15 补）**：$t<t^*$ 全程 $r_{k1}>r_{k2}$；峰位 $0.7702<0.8121$；峰值 $0.114906$ vs $0.0807374$；净速率峰 $0.744583<t_2=0.7571151<t^*=0.821792$ ✓（详见第十二节 12.4）。

---

## 七、总结（Sec. III Summary）

64. **工作回顾**：本文利用黑洞在热势中的几何行为，采用描述外场中粒子 Brownian 运动的 Kramers 逃逸率方法，研究了带电 AdS 黑洞一级相变的动力学过程。
    > 原文："In this study, we used the geometric behavior of a black hole in the thermal potential and adopted the Kramer's escape rate method of describing the Brownian motion of particles in an external field to study the dynamic process of the first-order phase transition for a charged AdS black hole."

    > **算·方法链**：

    $$
    f=\frac{\sqrt6Q}{3}\psi
    $$

    （由 (2)(3)(5)(6) 式直接积分，残差 $0$，见 12.1）→ 极值方程恒等式（第 47 条）→ (10) 式（第 45、46 条 / 12.2），链条每一环都做过独立核验。

65. **与 Gibbs 分析的对比**：此前用 Gibbs 自由能分析黑洞相变行为时，无法提取从一个态到另一个态的转变强度信息；借助随机过程，现在得到了带电 AdS 黑洞小/大黑洞相变的速率行为。
    > 原文："In the previous process of analyzing the phase transition behavior of black holes using Gibbs free energy, we cannot extract information on the transition intensity from one state to another. By means of a stochastic process, at present, we have obtained the rate behavior of the phase transition between small and large black holes for the charged AdS black hole."

    > **算·$g$ 图能给什么**：$g$–$t$ 平面只提供"三分支在此相交"（$\mathrm{d}g_i/\mathrm{d}t=-x_i^2$，Q2），交点是**位置**信息（$t_2$、$x_{1,3}$）；速率必须另算——前因子之比 $2.06155$ 正是 $g$ 图上读不出的量 ✓。

66. **总体结论**：整体上 AdS 黑洞的一级相变速率呈先增后减的趋势，且在很宽的系综温度范围内，"小→大"的转变速率远大于"大→小"。
    > 原文："On the whole, the first-order phase transition rate of the AdS black hole shows a trend of increasing first and then decreasing, and the transition rate from a small black hole to a large black hole is much greater than that from a large black hole to a small black hole within a wide range of ensemble temperatures."

    > **算·"很宽范围"的具名化**（$p=0.5,D=10$）：$r_{k1}>r_{k2}$ 的区间为 $t\in(t_1,t^*)=(0.7325,0.8218)$，占整个相变窗口 $(t_1,t_3)$ 的 $79.6\%$；两个峰值 $0.114906$（$t=0.7702$）与 $0.0807374$（$t=0.8121$）。

67. **相变发生的温度窗口**：与 Gibbs 自由能分析一致，存在三个关键温度 $t_1,t_2,t_3$（见图 1(a)）；只有当系综温度位于 $t_1$ 与 $t_3$ 之间时才可能发生相变。
    > 原文："As in the analysis of Gibbs free energy, there are three key temperatures $t_1$, $t_2$, and $t_3$ (see diagram (a) in FIG. 1). Only when the ensemble temperature is between $t_1$ and $t_3$ can the phase transition occur."

    > **算·窗口**：多根扫描给出 $t\in(t_1,t_3)=(0.7325378,0.8446232)$（第 48 条）；窗口外只有 1 个正根 ⇒ 无共存态 ⇒ 无相变 ✓。

68. **$t_2$ 的含义与反直觉之处**：系综温度 $t=t_2$ 是 Gibbs 自由能 swallowtail 的交点，对应热势的两个全局极小相等（图 1(b)）；直觉上既然两个极小相等，两处的分子应当同时到达垒顶、相变速率应当相等。
    > 原文："When the ensemble temperature $t=t_2$, it is at the swallow tail intersection of Gibbs free energy, which corresponds to the case where the two global minima in the thermal potential are equal (see diagram (b) in FIG. 1). Intuitively, as the two minima are equal, the molecules at the two positions should simultaneously reach the top of the barrier, and the phase transition rate will be equal."

    > **算·直觉为何失败**：$t_2$ 处两阱严格等深（$\psi=1.0707224708$，两个方向的势垒同为 $\Delta\psi=0.0671744$），但逃逸率还正比于**阱宽因子** $\sqrt{\lvert\psi''\rvert}$：$\sqrt{1.5232348/0.3584093}=2.06155\ne1$——直觉只用了"高度"，漏了"宽度"（12.6）。

69. **实际情形**：但事实上在该温度（$t=t_2$）下，"小→大"的转变速率远快于"大→小"（见图 3）。
    > 原文："In fact, at this temperature ($t=t_2$), the transition rate from a small black hole to a large black hole is much faster than that of a large black hole to a small black hole (see FIG. 3)."

    > **算·**：同第 57 条：$0.1119335$ vs $0.0542958$，比值 $2.06155$（$D=10$）。

70. **这正是本文的价值所在**：这是从 Gibbs 自由能分析中无法获得的重要信息。
    > 原文："This is the important information about the phase transition of black holes that we cannot get in the analysis of Gibbs free energy."

    > **算·"给不出的信息"具体是什么**：就是前因子之比

    $$
    \sqrt{\lvert\psi''(x_1)/\psi''(x_3)\rvert}
    $$

    （第 84 条）——它既不在 $g$ 的水平（数值）里，也不在 $g$ 的斜率（$=-x_i^2$）里 ✓。

71. **真正的动力学平衡温度**：只有当系综温度 $t=t^*$（$t^*\in(t_2,t_3)$）时两个速率才相等，表明相变达到动态平衡。
    > 原文："Only when the ensemble temperature $t=t^*$, where $t^*\in(t_2,t_3)$, can the two rates be equal, indicating that the phase transition reaches a dynamic equilibrium."

    > **算·**：$t^*=0.821792\in(0.7571151,0.8446232)$ ✓，与 $t_2$ 相差 $0.06468$；此处两速率同为 $0.0794813$。

72. **对热势本身的约束**：此外，热势不能任意取，它应当满足一些要求——热势的极值对应平衡态，即系综温度 $T$ 等于 Hawking 温度 $T_h$ 的态；热势的凹凸性可与热力学系统的稳定性相关联。
    > 原文："In addition, the thermal potential cannot be arbitrary, and it should meet some requirements. The extreme value of the thermal potential corresponds to the equilibrium state, i.e., the state with the ensemble temperature $T$ equating to the Hawking temperature $T_h$. The concavity and convexity of the thermal potential can be related to the stability of the thermodynamic system."

    > **算·两条约束都可核验**：① 极值 $\iff t_h=t$——由恒等式 $\mathcal P=8x^3(t_h-t)$（第 47 条）直接得到 ✓；② 凹凸性 $\iff$ 稳定性——在壳时有 $\psi''=2x\,t_h'(x)$（Wolfram 残差 $0$），而对数热容 $\propto1/t_h'$，故 $\psi''>0\iff$ 局域稳定；数值（小/中/大）

    $$
    (\psi'',t_h')=(+1.5232,+1.3203),(-0.2964,-0.1092),(+0.3584,+0.0731),
    $$

    符号一一对应 ✓。

73. **热势形式的不唯一性**：在两种条件下的热势，其表达式可能与本工作中构造的不同；同时，对相变速率的分析而言，定性行为是一致的，但数值上存在差异。
    > 原文："For the thermal potential under the two conditions, the expression may not be the same as that constructed in this study. Meanwhile, for the analysis of the phase transition rate, the qualitative behaviors are consistent, but there are differences in the numerical values."

    > **算·两种自由度可显式验证**（残差均为 $0$）：(i) $\psi\to\lambda\psi$（$\lambda>0$）——极值位置不变，$\Delta f\to\lambda\Delta f$、$\psi''\to\lambda\psi''$，速率数值变而 $t_2$ 处比值不变；(ii) $\psi\to\psi+cx^2$ 与 $\psi(x,t-c,p)$ 恒等，相当于温度轴平移，几何性质全不变 ✓。与原文"定性一致、数值有别"吻合。

74. **遗留问题**：还有一些问题需要进一步解释——带电 AdS 黑洞小/大黑洞相变速率中的**非对称机制**是什么？为什么在 Gibbs 自由能 swallowtail 交点处的相变速率不相等？这些都是很有意义的研究内容。
    > 原文："However, some problems still need to be further explained. What is the asymmetry mechanism in the phase transition rate between small and large black holes for a charged AdS black hole? Why is the phase transition rate between small and large black holes at the swallow tail intersection of Gibbs free energy not equal? These are very meaningful research contents."

    > **算·模型内的机制（本文补充，非原文结论）**：$t_2$ 处指数因子精确相消 ⇒ "为何不等"完全由前因子决定，而该比值是纯几何量
    > $$\frac{r_{k1}}{r_{k2}}\bigg\rvert_{t_2}=\sqrt{\frac{x_1t_h'(x_1)}{x_3t_h'(x_3)}}=\sqrt{\frac{0.5769\times1.3203}{2.4516\times0.0731}}=2.06155 .$$
    > 读法：小黑洞支的 $T_h$–$x$ 曲线更陡（$t_h'(x_1)=1.3203$ vs $t_h'(x_3)=0.0731$）⇒ 阱更窄 ⇒ 尝试频率更高 ⇒ 逃逸更快。故非对称 = **阱宽（曲率）不对称**（$t\ne t_2$ 时再叠加**阱深**不对称）。三档压强的数值表见 12.6。

75. **可推广性**：当前方法可推广到其他类型的相变，尤其是黑洞热力学相变中三相点附近的行为，这将进一步加深对黑洞相变微观机制的理解。
    > 原文："In addition, the current method can be extended to other types of phase transitions, especially the behavior near the triple points among black hole thermodynamic phase transitions, which will further understand the microscopic mechanism of black hole phase transitions."

    > **算·可搬用的部分**：本方法 = 一维热势 + (10) 式；只要目标体系的自由能图景仍是双阱（三相点附近为"三阱两垒"），第 45、58、60 条那套流程（求根 → 算 $\psi'',\Delta\psi$ → 代 (10) 式）可原样复用。原文未做该推广，本笔记亦不做数值推广。

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

79. **独立推导的热势**：由

    $$
    f(x)=\int(T_h-T)dS
    $$

    、$T_h$ 取式(2)、并利用式(5)(6) 的无量纲量，可得（差一个整体常系数）

    $$
    \psi(x)\ \propto\ \frac{3x}{4}+\frac{px^3}{8}+\frac{1}{8x}-\frac{tx^2}{2}.
    $$

    [算·推导；算·校验：$8x^2\psi'(x)$ 与原文的 $3px^4-8tx^3+6x^2-1$ 之差化简为 $0$]

80. **$t_1$ 与 $t_3$ 的闭式**：令 $\psi'(x)=0$（即上述四次式的判别式为零）可得两个端点温度

    $$
    t_1=\frac12\sqrt{1+3p-(1-p)^{3/2}},\qquad t_3=\frac12\sqrt{1+3p+(1-p)^{3/2}}.
    $$

    [算·推导：判别式为

    $$
    \text{const}\times[16t^4-8(1+3p)t^2+p(3+p)^2],
    $$

    解得 $t^2=\frac14[(1+3p)\pm(1-p)^{3/2}]$]

81. **与原文式(9) 的另一种写法一致**：$t_3$ 亦可写成

    $$
    \frac{(2-\sqrt{1-p})\sqrt{1+\sqrt{1-p}}}{2},
    $$

    两者平方之差化简为 $0$（即恒等）。
    [算·符号验证：`Simplify[t3f[p]^2 - t3a[p]^2]` 输出 `0`]

82. **$t_1,t_3$ 的数值**：$p=0.5$ 时 $t_1=0.73253782$、$t_3=0.84462320$；$p=0.7$ 时 $0.856692$ 与 $0.903371$；$p=0.9$ 时 $0.957650$ 与 $0.965870$。（$p\to1$ 时两者同时趋于 $1$，与临界点一致。）
    [算·数值]

83. **$t_2$ 的正确解析式已确认**（2026-09-14 更新）：HTML 渲染把 (9) 式的 $t_2$ 显示成 $p(3-p)/2$（$p=0.5$ 时给 $0.625$），与"两阱等深"的数值解 $0.75711512$ 不符，说明该处渲染不可信。经独立推导（见文末问答记录 Q1 第 3 节）确认 (9) 式的正确形式为 $t_2=\sqrt{p(3-\sqrt p)/2}$，在 $p=0.5$ 时给 $0.75711512$，**与数值解完全一致** ✓。
    [算·数值：$t_2$ 由 $f(x_1)=f(x_3)$ 求得，$p=0.5$ 时 $t_2=0.75711512$；解析式 $\sqrt{p(3-\sqrt p)/2}$ 同值；可核验性：此时两个势垒高度严格相等（均为 $\Delta\psi=0.0671744$；2026-09-15 更正：原写 $0.033587$，那是第 79 条半归一化势的值，见 12.1；"两方向势垒相等"这一结论不变）]

84. **等深处的速率比是纯几何量**：在 $t_2$ 处两阱等深，故式(11)(12) 的两个指数因子精确相消，

    $$
    \frac{r_{k1}}{r_{k2}}\bigg\rvert_{t_2}=\sqrt{\left\lvert\frac{\psi''(x_1)}{\psi''(x_3)}\right\rvert},\qquad \psi''(x)=\frac{1}{2x^3}+\frac{3p}{2}x-2t\;\xrightarrow[\;t=t_h(x)\;]{}\;\frac{3(px^4-2x^2+1)}{4x^3}=2x\,t_h'(x).
    $$

    这与扩散系数 $D$ 无关。
    > ⚠️ **2026-09-15 更正**：$\psi''$ 原写作

    $$
    \frac{3px}{4}+\frac{1}{4x^3}-t,
    $$

    那是 $\psi''/2$。因为本式只用到比值，$2$ 是整体因子，原有数值（$2.0616$ 等）**不受影响**；单点数值 $\psi''(x_1)=1.5232348$、$\psi''(x_2)=-0.2964187$、$\psi''(x_3)=0.3584093$ 见 12.6。
    [算·推导与数值；对应原文的观察"the two global minima in the thermal potential are equal, but the transition rates $r_{k1}$ and $r_{k2}$ are not equal."]

85. **数值结果汇总**（$t_2$ 处的速率比、"直接差"与"闭式"两种算法给出的势垒高度一致）：

    | $p$ | $t_1$ | $t_2$（数值） | $t_3$ | $x_1,x_2,x_3$ | **$r_{k1}/r_{k2}$（在 $t_2$）** |
    |---|---|---|---|---|---|
    | 0.5 | 0.732538 | 0.75711512 | 0.844623 | 0.57685, 1.35690, 2.45161 | **2.0616** |
    | 0.7 | 0.856692 | 0.87015458 | 0.903371 | 0.65146, 1.16941, 1.83470 | **1.6782** |
    | 0.9 | 0.957650 | 0.96077704 | 0.965870 | 0.77508, 1.04721, 1.35998 | **1.3246** |

    [算·数值；其中 $x_1<x_2<x_3$ 对应原文的"From small to large, we mark them as $x_1$, $x_2$, and $x_3$."]

    > **势垒高度（$t_2$ 处，$\psi$ 归一化）**：$\Delta\psi=0.06717436$（两个方向相等，$p=0.5$）；换算到原文热势单位

    $$
    \Delta f=\frac{\sqrt6Q}{3}\Delta\psi,
    $$

    $Q=\sqrt{10/6}$ 时 $0.0708080$。$\psi''$ 与 $t_h'$ 的三组数值见表 12.6。

86. **与原文结论的一致性**：上表显示在 $t_2$ 处 $r_{k1}/r_{k2}$ 显著大于 $1$ 且随 $p\to1$（趋近临界）而趋于 $1$，与原文"$r_{k1}$ is much larger than the rate $r_{k2}$"以及"At $t_1$ and $t_3$, the transition rate is zero"的定性描述一致。
    [算·数值；引·原文第 55、57 条引文]

    > **算·补充（2026-09-15）**：第 55、62 条的"端点速率为零"在本复算里是**非解析**趋零——$r_{k1}\propto(t-t_1)^{1/4}$、$r_{k2}\propto(t_3-t)^{1/4}$（幂律来自两个极值点合并处的 $\psi''\to0$，见 12.3）；原文只写作 "is zero"。

87. **$Q$ 的数值存疑**：图 3 题注的 $Q=10/6$ 在 HTML 中即为如此；考虑到同文根号丢失的系统性问题，此处**可能**原为 $Q=\sqrt{10/6}$，但本笔记无法从 HTML 或摘要页确证，故如实记录为未验证。
    [算·无；引·图 3 题注原文："we set the charge $Q=10/6$ and constant diffusion coefficient $D=10$."]

88. **公式编号对照（2026-09-14 复核，供引用时避免混淆）**：核对 arXiv HTML 的 `ltx_tag_equation` 标签，本文共 13 条**编号**公式：

    | 编号 | 内容 |
    | --- | --- |
    | (1) | 质量 $M$ |
    | (2) | 温度 $T_h$ |
    | (3) | 熵 $S$ |
    | (4) | Gibbs 自由能 $G$ |
    | (5) | 临界值 $r_c,T_c,P_c,G_c$ |
    | (6) | 无量纲量 $t_h,p,x,g$ |
    | (7) | 热势定义

    $$
    f=\int(T_h-T)\mathrm{d}S
    $$

    |
    | (8) | 热势显式

    $$
    f=\frac{\sqrt6Q}{3}\psi(x)
    $$

    |
    | (9) | 三个关键温度 $t_1,t_2,t_3$ |
    | **(10)** | **Kramers 速率** $r_k$ |
    | (11)(12) | 两个方向的速率 $r_{k1},r_{k2}$ |
    | (13) | 深阱条件 $tT_c\ll\Delta f$ |

    ⚠️ **极值方程 $3px^4-8tx^3+6x^2-1=0$ 不在上表内——原文未给它编号**（它是 (10) 式之后段落里的行内公式）。本笔记问答记录中统一称其为"极值方程"，左端记作 $\mathcal P(x)$；早先误称其为"(10) 式"的表述已全部改正。
    [算·无；核·HTML 中 `ltx_tag_equation` 共 13 处，极值方程为 `<math>` 行内元素，无 `ltx_tag_equation` 包裹]

---

## 十一、一句话结论（皆对应上文引文）

- 本文把"带电 AdS 黑洞的小/大黑洞一级相变"翻译成一个一维热势中的 Kramers 逃逸问题，热势为

  $$
  f(x)=\int(T_h-T)dS
  $$

  、极值方程为 $3px^4-8tx^3+6x^2-1=0$（第 31、37、47 条）。
- 核心发现是**非对称**：在 Gibbs 意义下的共存温度 $t_2$ 处两阱等深，但"小→大"的速率远大于"大→小"；只有到 $t^*\in(t_2,t_3)$ 才达到动力学平衡（第 57、60、67–71 条）。
- 这一信息是 Gibbs 自由能分析给不出的，也是本文自称填补的空白（第 20、65、70 条）。
- 本文留下的问题——非对称的**机制**、以及为何 $t_2$ 处速率不等——原文列为公开问题（第 74 条）；本笔记复算给出了**模型内**的答案（见下条与 12.6）。
- 本笔记的复算（第十二节，2026-09-15）把第 42–75 条每一句都落到数值上：$t_2$ 处 $r_{k1}/r_{k2}=2.06155$（纯几何量、与 $D$ 无关）、$t^*=0.821792$、峰位 $0.7702<0.8121$、净速率峰 $0.744583<t_2$、两端速率以 $1/4$ 幂律非解析趋零；并给出问题一的**模型内**答案：$t_2$ 处的非对称纯由阱宽（曲率）不对称造成（12.6）。
- 本文与 [25791] 的关系：[25791] 的广义自由能定义直接取自本文等文献（[25791] 式(17) 前："based on the definition of generalized free energy in reference [29, 30, 31, 32]"），[25791] 的 Sec. IV 是它的 Bardeen-AdS 类推广。
  [引·[25791] 式(17) 前的说明（其中 [29] 即本文）；本工作区 `arXiv-2604.25791v1\总结-平均首通时间与Kramers逃逸率.md` 第一节]

---

## 十二、Kramers 段的逐项复算（2026-09-15）

> 本节与第十节同性质：**全部为本文自行计算并验证的结果**，用于支撑正文第 42–75 条的每一句（哪句对应哪项计算，正文里已逐条标了"算·"）。
> 参数：$p=0.5$（图 2、图 3 的取值）、$Q=\sqrt{10/6}$、$D=10$（图 3 的取值；$Q$ 写法存疑见第 87 条，两种读法的差别见 12.5）。

### 12.1 记号、归一化与恒等式

- 无量纲热势（原文 (8) 式括号内）：

  $$
  \psi(x)=\frac{1}{4x}+\frac{3x}{2}+\frac{px^3}{4}-tx^2,
  $$

  原文的热势是 $f=\frac{\sqrt6Q}{3}\psi.$
- 由 (2)(3)(5)(6) 式直接积分

  $$
  \int(T_h-T)\,\mathrm dS
  $$

  得 $\frac{\sqrt6Q}{3}\psi$（Wolfram 残差 $0$）；积分常数取 $0$ 的依据是"在壳时热势 = Gibbs 自由能"：

  $$
  \psi\big(x,t_h(x),p\big)=g(x)=\frac{3x}{4}-\frac{px^3}{8}+\frac{3}{8x}
  $$

  （残差 $0$）。
- ⚠️ **归一化警告**：第 79 条写过一个差常系数的形式

  $$
  \frac{3x}{4}+\frac{px^3}{8}+\frac{1}{8x}-\frac{tx^2}{2}=\psi/2.
  $$

  **比较两阱等深、根的位置、比值时无所谓，但报绝对势垒高度时必须用 $\psi$**（第 83 条旧值 $0.033587$ 就是把半归一化势当成了 $\psi$）。
- 极值方程与三条恒等式（Wolfram 残差均为 $0$）：


$$
\mathcal P(x)\equiv 3px^4-8tx^3+6x^2-1=4x^2\psi'(x)=8x^3\big[t_h(x)-t\big],\qquad t_h(x)=\frac{3px^4+6x^2-1}{8x^3},
$$



$$
\psi''(x)=\frac{1}{2x^3}+\frac{3p}{2}x-2t\;\xrightarrow[\;t=t_h(x)\;]{}\;\frac{3(px^4-2x^2+1)}{4x^3}=2x\,t_h'(x),
$$



$$
\frac{\mathrm dg}{\mathrm dt}=-x^2\quad(\text{沿固定分支隐函数微分}).
$$


第三条即 Q2 的三条证法之一；它与第二条合起来给出"凹凸性 $\iff$ 热容符号"（第 72 条）。

### 12.2 Kramers 公式 (10) 的两条独立验证

**（1）Laplace 近似链**。对 Smoluchowski 方程

$$
\partial_t\rho=\partial_x[D\rho'+\rho f'],
$$

静止解给出


$$
\rho(x)=\frac{J}{D}e^{-f(x)/D}\int_x^{x_b}e^{f(x')/D}\,\mathrm dx',\qquad N_a=\rho(x_a)\sqrt{\frac{2\pi D}{\lvert f''(x_a)\rvert}},
$$



$$
\int_{x_a}^{x_c}e^{(f-f_b)/D}\,\mathrm dx\simeq\sqrt{\frac{2\pi D}{\lvert f''(x_b)\rvert}}\quad\Longrightarrow\quad r_k=\frac{J}{N_a}=\frac{1}{2\pi}\sqrt{\big\lvert f''(x_a)f''(x_b)\big\rvert}\;e^{-\Delta f/D},
$$


即原文 (10) 式 ✓。**关键细节**：第三个积分必须**跨过垒顶延伸到另一阱**（上限取 $x_c$ 而非 $x_b$）；若只积到垒顶，就只剩半个 Gauss 峰，结果会差整整 2 倍——这是本文第一次复核时踩到的坑（见下表后两行）。

**（2）数值静止通量**。用求积法直接算上面两个积分，与 (10) 式之比：

| 情形 | $D=1/10$ | $D=1/50$ | $D=1/100$ | $D=1/200$ | $D=1/1000$ |
|---|---|---|---|---|---|
| 教科书双阱 $f=\frac{x^4}{4}-\frac{x^2}{2}$（阱 $\pm1$、垒 $0$） | $0.910$ | $0.968$ | $0.984$ | — | — |
| 本文 $t_2$ 处（$x_1\to x_2$ 垒） | — | $0.823$ | — | $0.964$ | $0.993$ |
| 教科书双阱，但通量积分**只算到垒顶** | $1.82$ | $1.94$ | $1.97$ | — | — |
| 本文 $t_2$ 处，但通量积分**只算到垒顶** | — | $1.90$ | — | $2.00$ | $2.02$ |

比值随 $D\to0$ 趋于 $1$ ✓；若把通量积分截在垒顶（只剩半个 Gauss 峰），比值则趋于 $2$ ✓。

### 12.3 端点行为：两个速率如何趋零（第 55、62 条）

在 $t_1$ 处 $x_2,x_3$ 合并于 spinodal 点（$t_3$ 处 $x_1,x_2$ 合并）；合并条件 $px^4-2x^2+1=0$ 恰是 $\psi''=0$ 的条件，且靠近合并点

$$
\psi''\propto\sqrt{\lvert t-t_{1,3}\rvert}.
$$

于是前因子 $\sqrt{\lvert\psi''\psi''\rvert}$ 给出不同的幂律：

| | $r_{k1}$ | $r_{k2}$ |
|---|---|---|
| $t\to t_1^+$ | $(t-t_1)^{1/4}$ | $(t-t_1)^{1/2}$ |
| $t\to t_3^-$ | $(t_3-t)^{1/2}$ | $(t_3-t)^{1/4}$ |

数值（$D=10$）：

| $\varepsilon$ | $r_{k1}(t_1+\varepsilon)$ | $r_{k2}(t_1+\varepsilon)$ | $r_{k1}(t_3-\varepsilon)$ | $r_{k2}(t_3-\varepsilon)$ |
|---|---|---|---|---|
| $10^{-4}$ | $0.032470$ | $0.0035947$ | $0.0055846$ | $0.025330$ |
| $10^{-6}$ | $0.010295$ | $0.00035951$ | $0.00055859$ | $0.0080822$ |
| $10^{-8}$ | $0.0032564$ | $0.000035951$ | $0.000055859$ | $0.0025580$ |
| $10^{-10}$ | $0.0010298$ | — | — | — |

（列内相邻比值：$3.16\approx100^{1/4}$、$10=100^{1/2}$，幂律吻合 ✓。）所以"端点速率为零"成立，但是**非解析**趋零；原文只写 "is zero"。

### 12.4 速率曲线的整体特征（第 56–63、66 条）

| 量 | 数值 |
|---|---|
| $t_1,\;t_2,\;t_3$ | $0.7325378,\;0.7571151,\;0.8446232$ |
| $x_1,x_2,x_3$（$t_2$） | $0.5768511,\;1.3568998,\;2.4516094$ |
| $r_{k1},r_{k2}$ 峰值 | $0.114906$（$t=0.770179$）、$0.0807374$（$t=0.812083$） |
| $t^*$：$r_{k1}=r_{k2}$ | $0.821792$，两者 $=0.0794813$ |
| 净速率峰 $\Delta r_k$ | $t=0.744583\in(t_1,t_2)$ |
| $r_{k1}(t_2)/r_{k2}(t_2)$ | $2.06155$ |
| $r_{k1}>r_{k2}$ 的区间 | $t\in(t_1,t^*)$，占窗口 $(t_1,t_3)$ 的 $79.6\%$ |

采样表（$D=10$，$\Delta t=0.01$）：

| $t$ | $r_{k1}$ | $r_{k2}$ | $\Delta r_k$ |
|---|---|---|---|
| 0.735 | 0.071022 | 0.017790 | $+0.053232$ |
| 0.745 | 0.100915 | 0.039481 | $+0.061435$ |
| 0.755 | 0.110764 | 0.052115 | $+0.058649$ |
| 0.765 | 0.114481 | 0.061389 | $+0.053092$ |
| 0.775 | 0.114568 | 0.068524 | $+0.046045$ |
| 0.785 | 0.111897 | 0.073971 | $+0.037926$ |
| 0.795 | 0.106769 | 0.077883 | $+0.028887$ |
| 0.805 | 0.099151 | 0.080204 | $+0.018947$ |
| 0.815 | 0.088674 | 0.080636 | $+0.008038$ |
| 0.825 | 0.074373 | 0.078369 | $-0.003996$ |
| 0.835 | 0.053513 | 0.070822 | $-0.017310$ |

**参数敏感性（本文补充）**：以上所有"次序/位置"结论都在 $D=10$ 下成立。作为对照，若把 $D$ 取成热能量级 $D=t_2T_c=0.0254$，指数抑制会把 $r_{k2}$ 压到 $10^{-6}$ 以下（$t=0.80$ 时 $r_{k1}/r_{k2}\approx3\times10^{5}$），$t^*$ 也就不在 $(t_2,t_3)$ 内——即这些定性特征依赖 $D$ 的取值；而 $t_2$ 处的比值 $2.06155$ 与 $D$ 完全无关。

### 12.5 (13) 式的量级（第 43、52–54 条）

| 量 | $Q=\sqrt{10/6}$ | $Q=10/6$ |
|---|---|---|
| $T_c$ | $0.0335528$ | $0.0259899$ |
| $t_2T_c$ | $0.0254033$ | $0.0196773$ |
| $\Delta\psi$（$t_2$ 处） | $0.0671744$ | $0.0671744$ |
| $\Delta f=\frac{\sqrt6Q}{3}\Delta\psi$ | $0.0708080$ | $0.0914127$ |
| $t_2T_c/\Delta f$ | $0.3588$ | $0.2153$ |
| $\Delta f/D$（$D=10$） | $7.08\times10^{-3}$ | $9.14\times10^{-3}$ |
| $e^{-\Delta f/D}$ | $0.99294$ | $0.99090$ |

结论：① (13) 式的 $tT_c\ll\Delta f$ 在 $t\sim t_2$ 只算"同量级"，严格成立需 $Q>2.445$（解 $t_2T_c/\Delta f<0.1$）；② Kramers 高垒近似的真条件是 $\Delta f\gg D$，按 $D=10$ 需 $Q=182.3$ 才到 $\Delta f/D=1$——**故图 3 的参数下指数因子近乎不参与（$e^{-\Delta f/D}=0.9929$），曲线形状基本由前因子（曲率乘积的平方根）决定**；③ 两种 $Q$ 读法不改变上面任何定性结论。

### 12.6 $t_2$ 处速率比的闭式与几何解释（第 57、68–70、74 条）

在 $t_2$ 处 $\Delta f_1=\Delta f_2$，指数因子精确相消，于是（用到 $\psi''=2x\,t_h'$）


$$
\frac{r_{k1}}{r_{k2}}\bigg\rvert_{t_2}=\sqrt{\left\lvert\frac{\psi''(x_1)}{\psi''(x_3)}\right\rvert}=\sqrt{\frac{x_1\,t_h'(x_1)}{x_3\,\lvert t_h'(x_3)\rvert}} .
$$


| $p$ | $t_2$ | $x_1,x_2,x_3$ | $\psi''(x_1),\psi''(x_2),\psi''(x_3)$ | $t_h'(x_1),t_h'(x_2),t_h'(x_3)$ | $r_{k1}/r_{k2}$ |
|---|---|---|---|---|---|
| 0.5 | 0.7571151 | 0.5768511, 1.3568998, 2.4516094 | $1.523235,\,-0.296419,\,0.358409$ | $1.320302,\,-0.109226,\,0.073097$ | **2.0616** |
| 0.7 | 0.8701546 | 0.6514580, 1.1694111, 1.8346980 | $0.752190,\,-0.199770,\,0.267085$ | $0.577312,\,-0.085415,\,0.072787$ | **1.6782** |
| 0.9 | 0.9607770 | 0.7750786, 1.0472106, 1.3599815 | $0.198625,\,-0.072440,\,0.113200$ | $0.128132,\,-0.034587,\,0.041618$ | **1.3246** |

物理读法：小黑洞支的 $T_h$–$x$ 曲线更陡 ⇒ 阱更窄 ⇒ 尝试频率更高 ⇒ 逃逸更快；$p\to1$（趋近临界）时两支趋于对称，比值 $\to1$。这同时**在模型内**回答了原文第 74 条列为公开问题的"非对称机制"：$t_2$ 处纯由阱宽（曲率）不对称造成，$t\ne t_2$ 时再叠加阱深不对称（此解释为本文补算，非原文结论）。

### 12.7 热势不唯一性（第 73 条）

| 变换 | 极值位置 | $\Delta f$ | $\psi''$ | 速率数值 | $t_2$ 处比值 | Wolfram 残差 |
|---|---|---|---|---|---|---|
| $\psi\to\lambda\psi$（$\lambda>0$） | 不变 | $\times\lambda$ | $\times\lambda$ | 变 | 不变 | $0$ ✓ |
| $\psi\to\psi+cx^2$ | 不变 | 不变 | 不变 | 不变 | 不变 | $0$（等价于 $\psi(x,t-c,p)$：温度轴平移）✓ |

即"定性行为一致、数值有别"，与原文第 73 条吻合。

---

## 十三、文件清单

- [`2211.03512v2.pdf`](/notes/文章整理/arXiv-2211.03512v2/2211.03512v2.pdf)：本文 PDF（arXiv 官方版，2026-09-12 下载）——**正文与公式以它为准**
- `2211.03512v2.html`：本文 HTML 全文（arXiv LaTeXML，2026-09-12 下载；论文内图形与 `/static` 样式已改写为绝对地址，图形需联网显示）
  - ⚠️ 这一版的公式渲染不可靠（见上文第十节的缺陷清单：根号系统性丢失），引用公式务必回到 PDF 核对
- 本文的 LaTeX 源（`00README.json`、`source.tar.gz`、`Shadow_1.eps`、`F12a/F12b`、`Expalpha/Expeta`、`Argn_2`、`Efa5/Efb6/Efc7/Efd8` 等 `.eps`）已于 2026-09-12 按要求删除

---

## 问答记录

> **问答索引**（交叉跳转用；正文相关处也标了"见 Qx"，便于单条独立阅读）
>
> | 编号 | 主题 | 它在展开谁 |
> | --- | --- | --- |
> | **Q1** | (9) 式的来历：$t_1,t_3$ 由重根条件、$t_2$ 由两阱等深 | —（独立） |
> | **Q2** | Q1 中的细节：$\mathrm{d}g_i/\mathrm{d}t=-x_i^2$ 的三种证法、$A,B$ 的来历（韦达） | Q1 |
> | **Q3** | Q2 中的记号：$\mathcal P(x)$ 是什么、怎么用 | Q2 |
> | **Q4** | 从"黑洞分子假设"起的逐句计算核验（Kramers 段）：(10) 式的双向验证、端点幂律、峰位与 $t^*$、深阱量级、$t_2$ 处比值的闭式 | 正文第 42–75 条 → 第十二节 |
> | **Q5** | 文章里的 $x$ 是什么量（第 30 条那个 $x$） | 正文第 30 条（式(6)） |
> | **Q6** | 为什么要把系综温度换成 $t:=T/T_c$（式(8) 的那句 "replace … with its dimensionless version $t$"） | 正文第 37 条（式(8)）、第 30 条（式(6)） |
> | **Q7** | 积分时的 $\mathrm dS=12\pi Q^2x\,\mathrm dx$ 是怎么来的、为什么没有 $\mathrm dQ$ 项 | 正文第 31、37 条（式(7)(8)）；触发自推导稿第 1 节 |

---

### Q1. (9) 式是怎么来的（2026-09-14）

**问题**：这篇文章的 (9) 式是怎么来的？

**解答**：

#### 0. 结论

(9) 式**不是积分出来的**，而是由 (8) 式的热势 / **(10) 式之后那条未编号的极值方程**，用**两种不同判据**解出来的：

| 温度 | 判据 | 几何含义 |
| --- | --- | --- |
| $t_1,\;t_3$ | 极值方程出现**重根**（$dt_h/dx=0$） | swallowtail 的两个**尖端**（spinodal 端点） |
| $t_2$ | 两阱**等深**（$\psi(x_1)=\psi(x_3)$） | **Maxwell 共存点**（swallowtail 自交点） |

> ⚠️ **编号更正（2026-09-14）**：本条问答早先版本把极值方程误标为"(10) 式"。核对 arXiv HTML 的公式编号标签后确认：**原文 (10) 式是 Kramers 速率** $r_k$，极值方程 $3px^4-8tx^3+6x^2-1=0$ 在原文中是 (10) 式**之后段落里的行内公式、未编号**。下文统一改称"极值方程"，并记其左端为 $\mathcal P(x)$。

出处：原文 Sec. II "Here, we notice three key values of the temperature [35]:" 紧接着就是 (9) 式；即该结果**引自参考文献 [35]**（Z.-M. Xu, B. Wu, W.-L. Yang, *van der Waals fluid and charged AdS black hole in the Landau theory*, Class. Quant. Grav. **38**, 205008 (2021)）。但推导本身**自足**，只需 (2)(6)(8) 式与那条极值方程。

#### 1. 预备：无量纲温度–半径关系

由 (2)(6)（$r_h=xr_c=x\sqrt6Q$，$P=pP_c=p/(96\pi Q^2)$，$T_c=\sqrt6/(18\pi Q)$）：


$$
t_h=\frac{3}{4x}+\frac{3px}{8}-\frac{1}{8x^3}=\frac{3px^4+6x^2-1}{8x^3}
$$


核验：$p=1,x=1\Rightarrow t_h=(6+3-1)/8=1$ ✓（临界点）。而极值方程 $3px^4-8tx^3+6x^2-1=0$ 正是 $t_h(x)=t$ ✓（与原文第 48 条"这些位置本质上是 $t_h=t$ 的解"一致）。

#### 2. $t_1,t_3$：swallowtail 尖端 ⇒ 重根条件

**尖端**的数学含义：记极值方程左端为 $\mathcal P(x)\equiv 3px^4-8tx^3+6x^2-1$（**原文中未编号**；**这个记号是什么、为什么这么设？见 Q3**），则"尖端"指 $\mathcal P(x)=0$ 的两个根**合并**，即 $\mathcal P$ 与 $\mathcal P'$ 有公共根：


$$
\mathcal P'(x)=12x(px^2-2tx+1)=0\;\Rightarrow\;t=\frac{px^2+1}{2x}
$$


代回 $\mathcal P$：$3px^4-4(px^2+1)x^2+6x^2-1=-px^4+2x^2-1$，故


$$
px^4-2x^2+1=0
$$


（**Wolfram 核验**：$dt_h/dx\propto px^4-2x^2+1$，两者恒等 ✓）

解出 $x^2=\dfrac{1\pm\sqrt{1-p}}{p}.$用 $px^4=2x^2-1$ 化简：


$$
t_h=\frac{3(2x^2-1)+6x^2-1}{8x^3}=\frac{3x^2-1}{2x^3}
$$


令 $u\equiv\sqrt{1-p}$（$p=1-u^2$），两个根化为

$$
x^2=\frac{1+u}{p}=\frac{1}{1-u}
$$

与 $x^2=\frac{1-u}{p}=\frac{1}{1+u},$于是


$$
t=\frac{(2+u)\sqrt{1-u}}{2}\quad\text{与}\quad t=\frac{(2-u)\sqrt{1+u}}{2}
$$


**第二个即 (9) 式的 $t_3$**：


$$
t_3=\frac{(2-\sqrt{1-p})\sqrt{1+\sqrt{1-p}}}{2}\quad\checkmark
$$


**第一个与 (9) 式的 $t_1$ 代数等价**（Wolfram 核验差为 0 ✓）：把 $p=1-u^2$ 代入论文写法，


$$
\frac{3-p+3u}{2p\left(\frac{u+1}{p}\right)^{3/2}}=\frac{(2+u)(1+u)(1-u)^{3/2}}{2(1-u)(1+u)}=\frac{(2+u)\sqrt{1-u}}{2}\quad\checkmark
$$


**分支对应**（$p=0.5$ 实测）：

| | $x^2$ | $x$ | $t_h(x)$ | 性质 |
| --- | --- | --- | --- | --- |
| $t_1=0.7325$ |

$$
\frac{1+\sqrt{1-p}}{p}=3.414
$$

| 1.848 | 极小 | 三根窗口**下界** |
| $t_3=0.8446$ |

$$
\frac{1-\sqrt{1-p}}{p}=0.586
$$

| 0.765 | 极大 | 三根窗口**上界** |

即 **$t_1,t_3$ 就是 $t_h(x)$ 在 $x>0$ 上的局部极小值与局部极大值**，正好对应原文第 38 条所说的"swallowtail 尖端的局部最小/最大温度"。三实根存在的条件 $t\in(t_1,t_3)$（原文第 48 条）由此自动得出：因 $t_h(0^+)=-\infty$、$t_h(+\infty)=+\infty$，水平线 $t_h=t$ 与曲线有三个交点当且仅当 $t$ 落在极值之间。

#### 3. $t_2$：Maxwell 共存 ⇒ 两阱等深

共存点由 $g_1=g_3$ 决定，即无量纲热势两阱等深 $\psi(x_1)=\psi(x_3)$（取 $t=t_2$）；因 $\mathrm{d}g_i/\mathrm{d}t=-x_i^2$（**这一恒等式怎么来的？三种证法见 Q2 第 1 节**），这与燕尾自交点是同一条件。

设 $A=x_1+x_3$、$B=x_1x_3$（**$A,B$ 为什么这么设？见 Q2 第 2 节**），把四次式按 $(x^2-Ax+B)$ 分解：


$$
3px^4-8tx^3+6x^2-1=(x^2-Ax+B)(3px^2+cx+d)
$$


比较系数得 $d=-\frac1B$、

$$
c=-\frac{A}{B^2}
$$

、$8t=3pA+\frac{A}{B^2},$以及


$$
A^2=B+6B^2-3pB^3
$$


再把 $\psi(x_1)-\psi(x_3)=0$ 除以 $(x_1-x_3)$：


$$
-\frac{1}{4B}+\frac32+\frac p4\left(A^2-B\right)-tA=0
$$


代入 $t=\frac A8\left(3p+\frac{1}{B^2}\right)$ 与 $A^2$ 的表达式，整理得


$$
3B\left[p^2B^4-2pB^3+2B-1\right]=0\;\Longrightarrow\;p^2B^4-2pB^3+2B-1=0
$$


该四次式**整除** $(B-p^{-1/2})$（多项式除法核验 ✓），物理根为


$$
x_1x_3=B=\frac{1}{\sqrt p}
$$


故


$$
A^2=p^{-1/2}+6p^{-1}-3p^{-1/2}=\frac{2(3-\sqrt p)}{p}\;\Longrightarrow\;A=\sqrt{\frac{2(3-\sqrt p)}{p}}
$$



$$
t_2=\frac A8\left(3p+\frac{1}{B^2}\right)=\frac A8(3p+p)=\frac{Ap}{2}=\sqrt{\frac{p(3-\sqrt p)}{2}}\quad\checkmark
$$


**正好是 (9) 式的 $t_2$。**

**数值核验（$p=0.5$）**：$B=\sqrt2$、$A=3.02846$、$t_2=0.757115$；极值方程的三个正根为 $x_1=0.57685$、$x_2=1.35690$、$x_3=2.45161$，确有 $x_1x_3=1.41421=\sqrt2$ ✓，且由 $A,B$ 反解的

$$
x_{1,3}=\frac{A\mp\sqrt{A^2-4B}}{2}
$$

与之一致 ✓。

顺带：这正是带电 AdS 黑洞扩展相空间的**著名共存曲线** $t_2=\sqrt{p(3-\sqrt p)/2}$（Kubiznak–Mann, JHEP 07 (2012) 033，即本文 [12]），所以 $t_2$ 与文献 [12] 独立已知的结果一致。

#### 4. 三者的关系

- (8) 式热势 $\psi(x)$ → 极值方程 $\mathcal P(x)=0$；
- **重根条件** $\Rightarrow$

  $$
  t_1=\frac{(2+\sqrt{1-p})\sqrt{1-\sqrt{1-p}}}{2}
  $$

  （$t_h$ 极小）、

  $$
  t_3=\frac{(2-\sqrt{1-p})\sqrt{1+\sqrt{1-p}}}{2}
  $$

  （$t_h$ 极大）；
- **两阱等深** $\Rightarrow$ $x_1x_3=1/\sqrt p$ $\Rightarrow$ $t_2=\sqrt{p(3-\sqrt p)/2}$；
- 且 $t_1<t_2<t_3$（$p=0.5$：$0.7325<0.7571<0.8446$ ✓）。

#### 5. Wolfram 核验清单（全部通过）

1. $dt_h/dx=0\;\Leftrightarrow\;px^4-2x^2+1=0$ ✓
2. $\frac{3x^2-1}{2x^3}\big\rvert_{x^2=(1+\sqrt{1-p})/p}$ 减去论文 $t_1$ 表达式 $=0$ ✓
3. $\frac{3x^2-1}{2x^3}\big\rvert_{x^2=(1-\sqrt{1-p})/p}$ 减去论文 $t_3$ 表达式 $=0$ ✓
4. $A^2=B+6B^2-3pB^3$ 在 $B=p^{-1/2}$、$A=\sqrt{2(3-\sqrt p)/p}$ 下 $=0$ ✓
5. $p^2B^4-2pB^3+2B-1$ 在 $B=p^{-1/2}$ 下 $=0$ ✓
6. 化简条件 $-\frac{1}{B}+\frac{A^2}{B^2}+3pB-6=0$ ✓
7. $\frac A8(3p+1/B^2)-\sqrt{p(3-\sqrt p)/2}=0$ ✓

#### 6. 附：本篇 (8) 式的抄写更正

原笔记第 37 条把 (8) 式抄作

$$
\sqrt6Q^3(\frac{1}{4x}+3x^2+\frac{px^3}{4}-tx^2),
$$

**有误**（曾疑为 HTML 渲染缺陷）。按官方 PDF 与独立复算，应为


$$
f(x)=\frac{\sqrt6Q}{3}\psi(x)=\frac{\sqrt6Q}{3}\left(\frac{1}{4x}+\frac{3x}{2}+\frac{px^3}{4}-tx^2\right)
$$


已于本条问答同日更正第 37 条。独立复算依据：

$$
\frac{3}{\sqrt6Q}(M-T\pi r_h^2)=\frac{1}{4x}+\frac{3x}{2}+\frac{px^3}{4}-tx^2,
$$

且在 $p=1,x=1$ 处 $\psi=1/4+3/2+1/4-1=1$ ✓。

---

### Q2. $t_2$ 推导中的细节：$\mathrm{d}g_i/\mathrm{d}t=-x_i^2$ 与 $A,B$ 的来历（2026-09-14）

**问题**：$t_1,t_3$ 我懂了，$t_2$ 这个没看懂——比如说 $\mathrm{d}g_i/\mathrm{d}t=-x_i^2$，还有 $A,B$ 哪来的？

> **本条定位**：这是 **Q1 第 3 节**（$t_2$ 的推导）的细节展开，回答其中两个"没讲透"的步骤。

**解答**：

#### 0. 两个基础量

**(a) 无量纲温度–半径关系**（由 (2)(6) 式）


$$
t_h(x)=\frac{3}{4x}+\frac{3px}{8}-\frac{1}{8x^3}=\frac{3px^4+6x^2-1}{8x^3}
$$


**(b) 无量纲 Gibbs 自由能**（由 (4)(5)(6) 式，$r_h=x\sqrt6Q$、$S=\pi r_h^2$、$S_c=\pi r_c^2=6\pi Q^2$）


$$
g(x)=\frac{G}{G_c}=\frac{3x}{4}-\frac{px^3}{8}+\frac{3}{8x}
$$


**关键恒等式**（Wolfram 核验残差为 0 ✓）：把 $t_h(x)$ 代进 (8) 式的 $\psi$，热势**恰好等于 Gibbs 自由能**


$$
g(x)=\psi\bigl(x,\,t_h(x)\bigr)
$$


直觉：$\psi=\frac{\sqrt6Q}{3}\int(T_h-T)\mathrm{d}S$ 在 $T=T_h$ 时退化成

$$
\frac{\sqrt6Q}{3}(M-T_hS)=g.
$$

所以**燕尾图（$g$–$t$ 平面）就是热势在壳取值随温度变化的轨迹**。

#### 1. $\mathrm{d}g_i/\mathrm{d}t=-x_i^2$ 的三种证法

**路子 A（热力学，最本质）**：第一定律

$$
\mathrm{d}G=V\mathrm{d}P-S\mathrm{d}T_h+\Phi\mathrm{d}Q,
$$

固定 $P,Q$ 得


$$
\mathrm{d}G=-S\,\mathrm{d}T_h\;\Longrightarrow\;\frac{\mathrm{d}g_i}{\mathrm{d}t}=-s_i=-x_i^2
$$


因为 $s=S/S_c=r_h^2/r_c^2=x_i^2$。

物理含义：**$g$–$t$ 图上每条分支（小/中/大黑洞）斜率的负值就是该黑洞的熵 $x_i^2$**。三条分支斜率不同，故必交叉，交叉即共存。

**路子 B（链式法则，用于验算）**：


$$
\frac{\mathrm{d}g}{\mathrm{d}t}=\frac{\mathrm{d}g/\mathrm{d}x}{\mathrm{d}t/\mathrm{d}x}=\frac{\frac38\left(2-x^{-2}-px^2\right)}{\frac{3}{8x^4}\left(1-2x^2+px^4\right)}=\frac{\frac{3}{8x^2}(2x^2-1-px^4)}{-\frac{3}{8x^4}(2x^2-1-px^4)}=-x^2
$$


（Wolfram 核验 $\mathrm{d}g/\mathrm{d}t=-x^2$，且 $\mathrm{d}g+x^2\mathrm{d}t=0$ ✓）

**路子 C（等面积律）**：沿分支从 $t_1$ 积到 $t_2$，令 $g_1(t_2)=g_3(t_2)$（$t_1$ 处 $x_1=x_3$、$g_1=g_3$），得


$$
\int_{t_1}^{t_2}\left(x_3^2-x_1^2\right)\mathrm{d}t=0
$$


即 **Maxwell 等面积律**在 $g$–$t$ 图上的形式。它与"两阱等深"等价（本节用等深形式，因更好算）。

#### 2. $A,B$ 的来历：韦达定理

**关键观察**：在共存温度 $t_2$，$x_1$ 与 $x_3$ **同时满足同一个四次方程**（即极值方程 $\mathcal P(x)=0$ 取 $t=t_2$）


$$
\mathcal P(x)\equiv 3px^4-8t_2x^3+6x^2-1=0
$$


> **$\mathcal P(x)$ 是什么？见 Q3**——那里给出该记号的定义、三种等价写法、零点结构，以及为什么要引入它。

它共 4 个根：三个正根 $x_1<x_2<x_3$ 加一个负根。既然 $x_1,x_3$ 是其中两根，$\mathcal P$ 必被二次式 $(x-x_1)(x-x_3)$ 整除：


$$
\mathcal P(x)=\underbrace{(x-x_1)(x-x_3)}_{=\,x^2-(x_1+x_3)x+x_1x_3}\left(3px^2+\beta x+\gamma\right)
$$


**把两个未知根换成两个初等对称多项式**——这就是 $A,B$ 的全部来历：


$$
A:=x_1+x_3,\qquad B:=x_1x_3
$$


好处：系数比较（韦达定理）**不需解四次方程**，就能锁住 $t_2,A,B$ 的关系。

**系数比较**（展开

$$
\mathcal P=(x^2-Ax+B)(3px^2+\beta x+\gamma)
$$

）：

| 次数 | 系数 | 等于 |
| --- | --- | --- |
| $x^4$ | $3p$ | $3p$ ✓（自动） |
| $x^3$ | $-3pA+\beta$ | $-8t_2$ |
| $x^2$ | $3pB-A\beta+\gamma$ | $6$ |
| $x^1$ | $A\gamma-B\beta$ | $0$ |
| $x^0$ | $B\gamma$ | $-1$ |

由 $x^0$：

$$
\gamma=-\frac1B;
$$

由 $x^1$：

$$
\beta=\frac{A\gamma}{B}=-\frac{A}{B^2}.
$$

代入 $x^3$、$x^2$ 得两条关系：


$$
\boxed{t_2=\frac{A}{8}\left(3p+\frac{1}{B^2}\right)}\quad\text{（I）},\qquad \boxed{A^2=B+6B^2-3pB^3}\quad\text{（II）}
$$


#### 3. 第三条关系（两阱等深）与求解

等深条件 $g_1=g_3$，即 $\psi(x_1,t_2)-\psi(x_3,t_2)=0$。代入 $\psi$ 后**除以 $(x_1-x_3)\ne0$**（降一次的技巧）：

- $\frac{1}{x_1}-\frac{1}{x_3}=-\frac{x_1-x_3}{B}$
- $x_1^3-x_3^3=(x_1-x_3)(A^2-B)$
- $x_1^2-x_3^2=(x_1-x_3)A$


$$
\boxed{-\frac{1}{4B}+\frac32+\frac p4\left(A^2-B\right)-t_2A=0}\quad\text{（III）}
$$


代入 (I)（即

$$
t_2A=\frac{A^2}{8}(3p+\frac{1}{B^2})
$$

），注意 $\frac{pA^2}{4}-\frac{3pA^2}{8}=-\frac{pA^2}{8},$得


$$
-\frac{1}{4B}+\frac32-\frac{pB}{4}-\frac{A^2}{8}\left(p+\frac{1}{B^2}\right)=0\;\xrightarrow{\times 8}\;\Rightarrow\;A^2=\frac{12-\frac2B-2pB}{p+\frac{1}{B^2}}\quad\text{（IV）}
$$


令 (II)=(IV)，两边乘

$$
(p+\frac{1}{B^2}),
$$

左边展开为 $pB+\frac1B+6pB^2+6-3p^2B^3-3pB,$$-2pB$ 两边相消，整理得


$$
\frac{3}{B}+6pB^2-3p^2B^3-6=0\;\Longrightarrow\;\boxed{p^2B^4-2pB^3+2B-1=0}
$$


该四次式**整除**

$$
\left(B-\frac{1}{\sqrt p}\right)
$$

（余式为 0 ✓），故


$$
\boxed{B=x_1x_3=\frac{1}{\sqrt p}}\;\Longrightarrow\;A^2=\frac{2(3-\sqrt p)}{p}\;\Longrightarrow\;\boxed{A=\sqrt{\frac{2(3-\sqrt p)}{p}}}
$$


代回 (I)：


$$
t_2=\frac{A}{8}(3p+p)=\frac{Ap}{2}=\boxed{\sqrt{\frac{p(3-\sqrt p)}{2}}}\quad\checkmark
$$


#### 4. 收尾：$t_2$ 处的完整因式分解

把 $A,B$ 代入后，四次方程完全分解（Wolfram 核验差为 0 ✓）：


$$
3px^4-8t_2x^3+6x^2-1=\left(x^2-Ax+B\right)\left(3px^2-Apx-\sqrt p\right)
$$


$x^3$ 系数给出 $-Ap-3pA=-4pA=-8t_2$，**自动成立**，原因正是

$$
t_2=\frac{Ap}{2}
$$

——即 $t_2$ 的表达式就是从这个因式分解里"读"出来的。另一个二次式 $3px^2-Apx-\sqrt p=0$ 的**正根即 $x_2$**（$p=0.5$：

$$
1.5x^2-1.5142x-0.70711=0\Rightarrow x_2=1.35690
$$

✓），负根为非物理根。

#### 5. 数值总核验（$p=0.5$）

| 量 | 解析式 | 数值 |
| --- | --- | --- |
| $B=x_1x_3$ | $1/\sqrt p=\sqrt2$ | $0.57685\times2.45161=1.41421$ ✓ |
| $A=x_1+x_3$ | $\sqrt{2(3-\sqrt p)/p}$ | $0.57685+2.45161=3.02846$ ✓ |
| $t_2$ | $\sqrt{p(3-\sqrt p)/2}$ | $0.757115$ ✓（与"等深"数值解一致） |

#### 6. 一句话总结

- $\mathrm{d}g_i/\mathrm{d}t=-x_i^2$ 是热力学恒等式 $\mathrm{d}G=-S\mathrm{d}T_h$ 的无量纲形式（斜率 $=-$ 熵）；三种证法（热力学 / 链式法则 / 等面积律）等价。
- $A,B$ 是把"两个未知根 $x_1,x_3$"**换成韦达对称多项式** $x_1+x_3,\;x_1x_3$，从而把"解四次方程"变成"系数比较"；再由等深条件补第三式，最终 $B=1/\sqrt p$、$A=\sqrt{2(3-\sqrt p)/p}$、$t_2=Ap/2$。

---

### Q3. $\mathcal P(x)$ 是什么、怎么来的（2026-09-14）

**问题**：你的

$$
\mathcal P(x)\equiv 3px^4-8t_2x^3+6x^2-1=0
$$

怎么来的？$\mathcal P(x)$ 是什么？

> **本条定位**：这是 **Q2 第 2 节**中 $\mathcal P(x)$ 记号的展开（该记号在 Q2 里首次使用但未展开；Q1、Q2 相关处已补「见 Q3」）。

**解答**：

#### 0. 一句话

**$\mathcal P(x)$ 不是新东西**——它就是把**极值方程**（原文中位于 (10) 式 Kramers 速率**之后、未编号**的那条行内公式）里的温度固定成 $t=t_2$，然后给这个多项式起了一个短名字，便于后文引用。


$$
\underbrace{\mathcal P(x)}_{\text{人为引入的记号}}\ \equiv\ \underbrace{3px^4-8t_2x^3+6x^2-1}_{\text{极值方程取}\ t=t_2}
$$


符号 $\equiv$（而非 $=$）表示"**定义为**"，即这是我引入的记号，不是新推出的结果。

> **与 (10) 式的区分**：原文 (10) 式是 Kramers 速率

$$
r_k=\frac{\sqrt{\lvert f''(x_{\min})f''(x_{\max})\rvert}}{2\pi}e^{-\frac{f(x_{\max})-f(x_{\min})}{D}}
$$

（见第 46 条），与极值方程是**两条不同的式子**；极值方程在原文中**没有公式编号**（第 47 条已如实记录）。

#### 1. 三种完全等价的定义（Wolfram 残差均为 0 ✓）

| 写法 | 表达式 | 视角 |
| --- | --- | --- |
| 显式（定义式） | $3px^4-8t_2x^3+6x^2-1$ | 从极值方程抄（原文未编号） |
| 热势导数 | $4x^2\,\psi'(x)$ |

$$
\psi'=-\frac{1}{4x^2}+\frac32+\frac{3px^2}{4}-2t_2x,
$$

两边乘 $4x^2$ 消分母 |
| 温度差 | $8x^3\left[t_h(x)-t_2\right]$ | 因

$$
t_h(x)=\frac{3px^4+6x^2-1}{8x^3}
$$

|

最直观的读法是第三种：


$$
\mathcal P(x)=8x^3\underbrace{\left[t_h(x)-t_2\right]}_{\text{Hawking 温度} - \text{系综温度}}
$$


即"在壳温度偏离系综温度的程度"按 $8x^3$ 加权——这正是热势定义

$$
\psi=\frac{\sqrt6Q}{3}\int(T_h-T)\mathrm{d}S
$$

的导数在起作用。

**关键等价性**：$\psi'(x)=0\iff\mathcal P(x)=0$（因 $4x^2>0$ 恒成立），故两者零点相同。这就是该方程能当"极值方程"用的原因。

#### 2. 它的零点

$\mathcal P(x)=0$ 的根 = $\psi$ 在 $t=t_2$ 的极值点 = 极值方程的根。$p=0.5$、$t_2=0.757115$ 时（Wolfram 数值）：


$$
\{-0.34741,\;\underbrace{0.57685}_{x_1},\;\underbrace{1.35690}_{x_2},\;\underbrace{2.45161}_{x_3}\}
$$


- $x_1,x_3$：两个**极小**（双阱的底，即小/大黑洞态）
- $x_2$：**极大**（势垒顶）
- $-0.34741$：**负伪根**，非物理，但代数上必须保留

⚠️ **"三次极值"与"四次多项式"并不矛盾**：$\psi$ 含 $1/x$ 项，$\psi'$ 乘上 $x^2$ 后升一次，于是从三次变四次，多出的负根是 $x^2$ 因子带来的伪根。

#### 3. 为什么要引入它：为了"因式分解 + 韦达"

$x_1$ 与 $x_3$ 都是 $\mathcal P$ 的根（都是极值点），故 $\mathcal P$ **必被 $(x-x_1)(x-x_3)$ 整除**：


$$
\mathcal P(x)=\underbrace{(x-x_1)(x-x_3)}_{x^2-Ax+B}\left(3px^2+cx+d\right),\qquad A:=x_1+x_3,\;B:=x_1x_3
$$


这一步的价值：**把"求两个未知数 $x_1,x_3$（需解四次方程）"换成"求两个对称多项式 $A,B$（只需比较系数）"**。这就是 $A,B$ 的来历，也是引入 $\mathcal P$ 记号的唯一目的——让"$x_1,x_3$ 是 $\mathcal P$ 的根"这句话有个紧凑写法。

（比较系数得 $d=-1/B$、$c=-A/B^2$、

$$
t_2=\frac A8(3p+\frac1{B^2})
$$

、$A^2=B+6B^2-3pB^3$；再用等深条件补第三式，解得 $B=1/\sqrt p$，详见 Q2。）

#### 4. 完整因式分解（自洽性检验）

代入 $B=1/\sqrt p$、$A=\sqrt{2(3-\sqrt p)/p}$ 后 $\mathcal P$ 彻底分解（残差 0 ✓）：


$$
\mathcal P(x)=\left(x^2-Ax+B\right)\left(3px^2-Apx-\sqrt p\right)
$$


| 因子 | 根 | 含义 |
| --- | --- | --- |
| $x^2-Ax+B$ | $x_1,\;x_3$ | 双阱的两个底（**特意分出来的**） |
| $3px^2-Apx-\sqrt p$ | $x_2$ 与负根 | 垒顶 + 伪根 |

**自洽性**：展开后 $x^3$ 系数为 $-4pA$，必须等于 $-8t_2$，恰好给出

$$
t_2=\frac{Ap}{2}
$$

——说明 $t_2$ 的解析式与该因式分解互相印证；常数项 $-B\sqrt p=-1$ 给出 $B=1/\sqrt p$，同样互相印证。

#### 5. 小结

- $\mathcal P(x)$ = 极值方程在 $t=t_2$ 处的**别名**，$\equiv$ 表示"定义为"（原文 (10) 式是 Kramers 速率，两者不同）；
- 等价形式：$\mathcal P=4x^2\psi'=8x^3(t_h-t_2)$；
- 零点 = $\psi$ 的极值点 = $\{x_1,x_2,x_3\}$ + 一个负伪根；
- 引入动机 = 用"$x_1,x_3$ 是 $\mathcal P$ 的根"导出**韦达分解** $\mathcal P=(x^2-Ax+B)(\cdots)$，把求根问题变成系数比较。

#### 6. Wolfram 核验

1. $\mathcal P(x)-4x^2\psi'(x)=0$ ✓
2. $\mathcal P(x)-8x^3\left[t_h(x)-t_2\right]=0$ ✓
3. $\mathcal P(x)=0$ 的根与 $\psi'(x)=0$ 的根**完全相同** ✓
4. 各根处 $\mathcal P\approx0$（$10^{-17}\sim10^{-19}$）✓

---

### Q4. 从"黑洞分子假设"起的逐句计算核验（2026-09-15）

**问题**：从原文 "Based on the black hole molecular hypothesis" 开始你就没分析总结了啊？补充完整，每句话都要有依据和计算。

> **本条定位**：这是对正文**第 42–75 条**的补全（此前那一段只有"原文摘录 + 出处"，没有配套计算）。全部公式与数值也汇总在**第十二节**。

**解答**：

#### 0. 补了什么

- 正文第 42–75 条**每一条下面**都插入了一行 `> **算·…**`，给出该句的可核验判据与数值；
- 新增**第十二节**，给出推导、公式、与全部表格（与第十节同性质：全部为本文自行计算）；
- 三处旧错同步更正（见第 3 节）。

#### 1. 主数表（$p=0.5$、$Q=\sqrt{10/6}$、$D=10$，与图 2/图 3 同参数）

| 量 | 数值 |
|---|---|
| $t_1,t_2,t_3$ | $0.7325378,\;0.7571151,\;0.8446232$ |
| $x_1,x_2,x_3$（$t_2$） | $0.5768511,\;1.3568998,\;2.4516094$ |
| $\psi$（三个极值） | $1.0707225,\;1.1378968,\;1.0707225$（两阱等深 ✓） |
| $\psi''$（三个极值） | $+1.5232348,\;-0.2964187,\;+0.3584093$（极小/极大/极小 ✓） |
| 势垒 | $\Delta\psi=0.0671744$（两方向相等），$\Delta f=0.0708080$ |
| $r_{k1},r_{k2}$ 峰值 | $0.114906$（$t=0.770179$）、$0.0807374$（$t=0.812083$） |
| $t^*$ | $0.821792$，两速率同为 $0.0794813$ |
| $r_{k1}(t_2)/r_{k2}(t_2)$ | $2.06155$（与 $D,Q$ 无关） |

#### 2. (10) 式是怎么验的

静止 Smoluchowski 方程的解给出

$$
r_k=\frac{J}{N_a};
$$

Laplace 近似下

$$
N_a=\rho(x_a)\sqrt{2\pi D/\lvert f''(x_a)\rvert},
$$

而通量积分 **

$$
\int_{x_a}^{x_c}e^{(f-f_b)/D}\mathrm dx
$$

必须跨过垒顶到另一阱**（只积到垒顶会差 2 倍），于是

$$
r_k=\frac{1}{2\pi}\sqrt{\lvert f''(x_a)f''(x_b)\rvert}e^{-\Delta f/D}
$$

——正是 (10) 式。数值静止通量与公式之比：$D=1/50\to0.823$、$1/200\to0.964$、$1/1000\to0.993$（趋于 $1$ ✓）；教科书双阱

$$
\frac{x^4}{4}-\frac{x^2}{2}
$$

上同检验 $1/10\to0.910$、$1/50\to0.968$、$1/100\to0.984$ ✓。

#### 3. 三处更正（旧值 → 新值）

| 条 | 旧 | 新 | 影响 |
|---|---|---|---|
| 52 | (13) 式右端 $\sqrt6Q^3\Delta\psi$ |

$$
\frac{\sqrt6Q}{3}\Delta\psi
$$

| 只是抄写误读 |
| 83 | 势垒 $0.033587$ | $\Delta\psi=0.0671744$ | 旧值是半归一化势的值；"两方向相等"结论不变 |
| 84 | $\psi''=\frac{3px}{4}+\frac{1}{4x^3}-t$ |

$$
\psi''=\frac{1}{2x^3}+\frac{3p}{2}x-2t
$$

| 旧式是 $\psi''/2$；比值不受影响 |

#### 4. 顺带得到的两个新结果（本文复算，非原文）

- **端点速率是幂律趋零**：$r_{k1}\propto(t-t_1)^{1/4}$、$r_{k2}\propto(t_3-t)^{1/4}$（另一端两者对调），来源是两个极值点合并处 $\psi''\to0$；
- **图 3 参数下指数因子几乎不参与**：$e^{-\Delta f/D}=0.9929$（$\Delta f/D=7.1\times10^{-3}$），所以曲线形状基本由前因子决定；若把 $D$ 换成热能量级 $t_2T_c$，$r_{k2}$ 会被指数压低到 $10^{-6}$ 以下、$t^*$ 也随之消失——即"峰位/次序"那类结论对 $D$ 敏感，而 $t_2$ 处的 $2.06155$ 不敏感。

#### 5. 一句话

从"黑洞分子假设"往后（分子重排 → Smoluchowski/Kramers → 两方向速率 → 非对称 → $t^*$ → Summary 的五条评价），现在每一句都有对应的判据与数值；其中"为何 $t_2$ 处速率不等"在模型内的答案是：**指数因子在同深处精确相消，剩下的纯粹是阱宽（曲率）之比**

$$
\sqrt{x_1t_h'(x_1)/x_3t_h'(x_3)}=2.06155.
$$


---

### Q5. 文章里的 $x$ 是什么量（2026-09-15）

**问题**：文章里的 x 是什么量？

> **本条定位**：这是在展开**正文第 30 条**（式(6) 的无量纲量）里那个 $x$；后文第 37、48、51、84 条与第十二节都在用它。

**解答**：

#### 0. 一句话

$x$ 是**事件视界半径的无量纲化**：$x:=r_h/r_c$，即"视界半径 ÷ 临界视界半径"（原文式 (6)）。它是本文的相变"反应坐标"——热势 $\psi(x)$、极值方程、三个根 $x_1<x_2<x_3$、两个 Kramers 率 $r_{k1},r_{k2}$ 全是它的函数。

> 出处：式(6) 前的 "For the convenience of discussion, we now introduce dimensionless thermodynamic quantities, which are respectively defined as follows:"，其中 $x:=r_h/r_c$（本笔记第 30 条）；$r_c=\sqrt6Q$ 来自式(5)。

#### 1. 定义与换算

| 关系 | 式子 | 依据（及核验） |
|---|---|---|
| 定义 | $x=r_h/r_c$ | 式(6) |
| 半径 | $r_c=\sqrt6Q\Rightarrow r_h=\sqrt6Q\,x$ | 式(5)；Wolfram 核验 $r_h/x=\sqrt6Q$ ✓ |
| 无量纲熵 | $S=\pi r_h^2$、$S_c=\pi r_c^2=6\pi Q^2$ ⇒ $x^2=S/S_c$ | 式(3)(5)；残差 $0$ ✓ |
| 无量纲体积 |

$$
V=\frac{4\pi}{3}r_h^3
$$

⇒ $x^3=V/V_c$ | 由 $V$ 的定义；残差 $0$ ✓ |
| 无量纲温度 |

$$
t_h(x)=\frac{T_h(x)}{T_c}=\frac{3px^4+6x^2-1}{8x^3}
$$

| 式(2)(5)(6)；残差 $0$ ✓ |
| Gibbs 斜率 | $\mathrm{d}g_i/\mathrm{d}t=-x_i^2$ | Q2 第 1 节（三种证法） |

所以"$x$"不是一个新变量，而是同一件事的三种等价读法：**半径 / 熵的平方根 / 体积的立方根**（各自除以临界值），且随 $r_h$ 单调增。

#### 2. 为什么用 $x$ 而不是 $r_h$ 或 $S$

- **临界点归一一致**：$x=1$ 同时意味着 $r_h=r_c$、$S=S_c$、$V=V_c$，且 $p=1$ 时 $t_h(1)=1$（核验 ✓）——于是 $(t_h,p,x,g)$ 是一套自洽的无量纲坐标（式(6)）。
- **热势写得最干净**：

  $$
  f(x)=\frac{\sqrt6Q}{3}\psi(x),
  $$

  $\psi=\frac{1}{4x}+\frac{3x}{2}+\frac{px^3}{4}-tx^2;$极值方程 $3px^4-8tx^3+6x^2-1=0$（式(8) 与其后那条未编号式子，第 47 条）。
- **三个根就是三个相**：$x_1$（小黑洞，$x_1<1$）、$x_2$（中间不稳定支）、$x_3$（大黑洞，$x_3>1$）；$p=0.5,t=t_2$ 时 $0.5768511<1.3568998<2.4516094$（第 48、51 条）。

#### 3. 它在文中的四处角色

1. **相变的反应坐标/序参量**：黑洞分子在热势 $\psi(x)$ 中沿 $x$ 做 Brownian 运动，小黑洞 ↔ 大黑洞的重排就是 $x_1\to x_3$ 的跃迁（第 42、44 条）；故 Kramers 率（式(11)(12)）里的极值点就是这个 $x$ 轴上的阱底与垒顶。
2. **在壳条件**：极值点满足 $t_h(x)=t$，即"在壳 Hawking 温度 = 系综温度"（第 47、48 条）。
3. **稳定性判据**：在壳时 $\psi''=2x\,t_h'(x)$，故 $\psi''>0$（$x_1,x_3$）是局域稳定支、$\psi''<0$（$x_2$）是不稳定支（第 72 条、12.6）。
4. **速率比里的纯几何量**：$t_2$ 处

   $$
   \frac{r_{k1}}{r_{k2}}\big\rvert_{t_2}=\sqrt{\left\lvert\frac{\psi''(x_1)}{\psi''(x_3)}\right\rvert}=\sqrt{\frac{x_1t_h'(x_1)}{x_3\lvert t_h'(x_3)\rvert}}=2.06155
   $$

   （第 84 条、12.6）。

#### 4. 两个容易混淆的点

1. **式(10) 里的 $x_{\max,\min}$ 不是新变量**：它就是同一个 $x$，下标只表示"$\psi$ 的极大点/极小点位置"（第 46 条原文："$x_{\max,\min}$ are the locations of the extreme points"）。
2. **$x$ 与 $t$ 是两回事**：$t:=T/T_c$ 是**系综**温度（可任取），$t_h(x)$ 是**在壳** Hawking 温度（由 $x$ 决定）；相变窗口是 $t\in(t_1,t_3)$，而"三个态"是 $x_1,x_2,x_3$（式(6) 后正文："$T=T_h$ is just one of the ways to derive the value of the ensemble temperature $T$"）。（**$t$ 这一支为什么要引入？见 Q6**）

#### 5. Wolfram 核验清单

1. $S/S_c-x^2=0$ ✓
2. $V/V_c-x^3=0$ ✓
3. $r_h/x=\sqrt6Q$ ✓
4. $T_h(x)/T_c-\frac{3px^4+6x^2-1}{8x^3}=0$ ✓
5. $t_h(1)\big\rvert_{p=1}=1$ ✓（临界点自洽）

---

### Q6. 为什么要把系综温度换成 $t:=T/T_c$（2026-09-19）

**问题**：文章里面 "replace the ensemble temperature $T$ with its dimensionless version $t$" 的动机是什么？

> **本条定位**：这是在展开**正文第 37 条**里那句 "where we replace the ensemble temperature $T$ with its dimensionless version $t$ via $t:=T/T_c$"，并补足**第 30 条**（式(6) 的无量纲量）中 $t$ 这一支的来历——与 Q5 讲的 $x$ 是并列的另一支。

**解答**：

#### 0. 一句话

$T$ 是热势里**唯一一个"外加旋钮"式的维度量**（可任取，与黑洞状态无关）；把它除以体系自带的 $T_c\propto1/Q$ 后，热势的形状只由两个纯数 $(t,p)$ 决定——$Q$ 从所有方程里彻底消失（对应态原理），$t$ 也才能与无量纲化的在壳温度 $t_h$ 放在同一把尺子上比较。

#### 1. 原文自己只说了"方便"

> 式(6) 前："For the convenience of discussion, we now introduce dimensionless thermodynamic quantities, which are respectively defined as follows"
> 式(8) 后："where we replace the ensemble temperature $T$ with its dimensionless version $t$ via $t:=T/T_c$"

文章没有展开论证。下面四条是这一手真正的结构性作用（第 2–5 节）。

#### 2. 动机一：$T$ 是自由参数，不脱钩就画不出图

- 系综温度 $T$ 是**独立常数**，"can take any positive value in any way"（第 35 条），与黑洞状态无关；而 $T_h$ 由 $(r_h,Q,P)$ 决定。
- 若把 $T$ 原样留着，热势就是 $f=f(r_h;Q,P,T)$，**四个**维度参数的函数——画一条 $f$–$x$ 曲线须先钉住 $(Q,P,T)$ 三个，换一个 $Q$ 图就变。
- 引入 $(t,p,x)$ 后形状只依赖 $(t,p)$，**同一张图对所有 $Q$ 通用**：图 1、图 2、图 3 因此只标 $p=0.5$ 而从不标 $Q$。

#### 3. 动机二：$Q$ 完全消掉 = 对应态原理（最硬的证据）

用 $r_h=x\sqrt6Q$、$P=p/(96\pi Q^2)$、$T=t\sqrt6/(18\pi Q)$（式(5)(6)）代入后：

| 对象 | 是否含 $Q$ | 出处 |
| --- | --- | --- |
| 极值方程 $3px^4-8tx^3+6x^2-1=0$ | **不含** | 式(8) 后那条未编号式子 |
| $t_1,t_2,t_3$ | **只含 $p$** | 式(9) |
| 三根关系 $x_1x_3=1/\sqrt p$ | **不含** | Q1 第 3 节 |
| $t_2$ 处速率比 $2.06155$ | **不含** | 12.6 |

- 不做这个替换，相变窗口就是 $[t_1T_c,\,t_3T_c]\propto1/Q$——$Q$ 一变窗口整体缩放，"所有带电 AdS 黑洞的相变都发生在各自 $T_c$ 的 $0.73\sim0.84$ 倍之间"这句话根本说不出来。
- 同一套路即 van der Waals 用 $T/T_c,P/P_c$ 写普适状态方程（第 28 条：带电 AdS 黑洞 ↔ vdW 流体）。
- 数值示例（$p=0.5$，Wolfram 核验）：$t_1=0.732538$、$t_2=0.757115$、$t_3=0.844623$，且 $x_1x_3=1.41421=1/\sqrt2$ ✓。

#### 4. 动机三：两个温度必须放在同一把尺子上

- 热势的极值 = 平衡态，判据是 $T=T_h$（第 32 条）；无量纲化后这条判据变成两个纯数的相等 $t=t_h(x)$，其中

  $$
  t_h(x)=\frac{T_h(x)}{T_c}=\frac{3px^4+6x^2-1}{8x^3}
  $$

  （Q5 第 1 节）。
- 于是"相变只在 $t\in(t_1,t_3)$ 发生""速率随 $t$ 先增后减""在 $t^*\in(t_2,t_3)$ 处两速率相等（动态平衡）"（第 56、61、71 条）都能只用一个变量 $t$ 说清；用维度温度 $T$ 表述时，所有阈值都随 $Q$ 漂移。
- 注意 $t$ 与 $t_h$ 是**两个不同的量**：$t$ 是系综温度（旋钮），$t_h(x)$ 是在壳 Hawking 温度（状态量）；式(6) 把两支都除以同一个 $T_c$，正是为了让 $T=T_h$ 变成 "$t=t_h$"（Q5 第 4 节第 2 点）。

#### 5. 动机四（技术）：把能标提出来，$f=G_c\,\psi(x)$

$$
\int(T_h-T)\,\mathrm{d}S=M-TS=\frac{\sqrt6Q}{3}\left(\frac1{4x}+\frac{3x}2+\frac{px^3}4-tx^2\right)=G_c\,\psi(x)
$$

- 前置因子 $\frac{\sqrt6Q}{3}$ **恰是式(5) 的临界 Gibbs 自由能 $G_c$**：$t$ 把 $f$ 的整体能标剥出去，只留"形状函数" $\psi$。（**$Q$ 为什么能只留在前置因子里——即积分时 $\mathrm dQ$ 为何为零？见 Q7**）
- 这与图 1 把 $g=G/G_c$ 与 $\psi$ 并排画是同一约定——两者都以 $G_c$ 为单位，纵轴可直接比较。
- 量纲信息没丢，只是搬到了前置因子上：深阱条件 $tT_c\ll\Delta f$ 写成式(13) 就是

  $$
  \underbrace{\frac{\sqrt6}{18\pi Q}}_{T_c}\,t\ \ll\ \underbrace{\frac{\sqrt6Q}{3}}_{G_c}\Delta\psi
  \quad\Longleftrightarrow\quad
  t\ll6\pi Q^2\Delta\psi,
  $$

  这正是式(13) 后说"总能找到合适的 $Q$ 让该条件满足"的原因：**$t$ 只负责形状，能标由 $Q$ 承担**。
- Kramers 率里是同一分工：$r_k\propto\sqrt{\lvert f''f''\rvert}\,e^{-\Delta f/D}$，无量纲化后 $\sqrt{\lvert\psi''\psi''\rvert}$ 与 $e^{-G_c\Delta\psi/D}$ 分家，图 3 的横轴才可以只是 $t$（第 55 条）。

#### 6. 一句话回答

> 因为 $T$ 是热势里唯一"任取"的维度量，只有把它除以体系自带的 $T_c\propto1/Q$，热势才变成只依赖 $(t,p)$ 的普适形状（$Q$ 消掉），$t$ 也才能与在壳的 $t_h(x)$ 同尺比较，并让 $t_1,t_2,t_3,t^*$ 这些相变温度成为与 $Q$ 无关的纯数。

#### 7. 延伸：本工作区的 RN 腔版怎么归一化

- "除以谁"取决于体系里哪个维度参数是独立旋钮：纯 AdS 情形 $T_c\propto1/Q$ 是天然的；**加了腔壁之后**，本工作区改用 $\tau_B\equiv\pi r_BT$（配 $q=Q/r_B$、$x=r_h/r_B$，见 `RN腔版-从RN-AdS移植的完整计算.md` 第 45 条），因为此时 $r_B$ 才是那个固定背景尺度。
- 对应关系没变：腔版的"在壳条件"同样是两个无量纲温度相等——腔壁 Tolman 温度 = 系综温度（该文件第 50 条），与这里的 $t=t_h(x)$ 是同一逻辑。

---

### Q7. 积分时的 $\mathrm dS=12\pi Q^2x\,\mathrm dx$ 是怎么来的、为什么没有 $\mathrm dQ$ 项（2026-09-19）

**问题**：推导稿 `带腔壁黑洞替换RN-AdS背景-可核验推导.md` 第 1 节写"由于 $\mathrm dS=12\pi Q^2x\,\mathrm dx$"，这是怎么来的？不应该有 $\mathrm dQ$ 吗？

> **本条定位**：这是在回答**正文第 37 条**（式(7)→(8) 的积分）里的微分约定；与 **Q6 第 5 节**（$Q$ 只出现在前置因子 $G_c$ 里）互为表里。

**解答**：

#### 0. 一句话

$12\pi Q^2x\,\mathrm dx$ 就是 $\dfrac{\partial S}{\partial x}$（$S=\pi r_h^2=6\pi Q^2x^2$）；$\mathrm dQ$ 项**确实存在**——

$$
\mathrm dS=12\pi Q^2x\,\mathrm dx+12\pi Qx^2\,\mathrm dQ,
$$

只是本文的系综把 $Q$ 当**参数**（固定电荷的正则系综），故 $\mathrm dQ=0$。

#### 1. 算式：两项都在，只是系数不同

由 $r_c=\sqrt6Q$、$x:=r_h/r_c$（式(5)(6)）得 $r_h=\sqrt6Q\,x$，于是

$$
S=\pi r_h^2=6\pi Q^2x^2
\quad\Longrightarrow\quad
\frac{\partial S}{\partial x}=12\pi Q^2x,\qquad \frac{\partial S}{\partial Q}=12\pi Qx^2 .
$$

- 直接对 $r_h$ 做也行：$\mathrm dS=2\pi r_h\,\mathrm dr_h=2\pi(\sqrt6Qx)(\sqrt6Q\,\mathrm dx)=12\pi Q^2x\,\mathrm dx$。
- Wolfram 核验：`Dt[Pi (Sqrt[6] Q x)^2]` $=$ `12πQ²x Dt[x] + 12πQx² Dt[Q]` ✓（后一项就是被丢掉的那个）。

#### 2. 为什么可以丢掉 $\mathrm dQ$：$Q$ 是这个系综的固定参数

1. **系综设定**：原文出发点是 "a canonical ensemble composed of a large number of states (on-shell black hole states and off-shell other unknown states)"（第 31 条）——正则系综即**固定 $Q$、固定 $P$**，离壳自由度只有 $r_h$（等价地 $S$、$x$）一个。
2. **积分是单参数族**：$f=\int(T_h-T)\,\mathrm dS$（式(7)）沿 $r_h$ 积分，$Q,P$ 全程取定值，$T$ 也是常数（第 35 条），所以才能拆成 $\int T_h\,\mathrm dS-\int T\,\mathrm dS=M-TS$（积分过程见 `参考论文/arXiv-2111.05856v1/备注-热势与Fokker-Planck方程.md` 第 4 节）。
3. **$\int T_h\,\mathrm dS=M$ 本身也要求固定 $Q,P$**：$M(S,Q,P)=\frac{r_h}{2}+\frac{4\pi P r_h^3}{3}+\frac{Q^2}{2r_h}$ 的全微分是

   $$
   \mathrm dM=T_h\,\mathrm dS+\underbrace{\frac{Q}{r_h}}_{\Phi}\,\mathrm dQ+\underbrace{\frac{4\pi r_h^3}{3}}_{V}\,\mathrm dP
   $$

   （Wolfram 核验：三个残差均为 $0$ ✓）。只有 $\mathrm dQ=\mathrm dP=0$ 时它才退化为 $\mathrm dM=T_h\,\mathrm dS$，$\int T_h\,\mathrm dS=M$ 才成立。
4. **物理图像**：小↔大黑洞相变是在**同一个 $Q$** 下发生的（如同 vdW 在固定粒子数下的气液相变），$Q$ 只是"哪个黑洞族"的标签，不是反应坐标；反应坐标自始至终是 $x$（Q5）。

#### 3. 什么时候 $\mathrm dQ$ 项不能丢

- **巨正则/含化学势**、**限制相空间（变 $G$）**、**腔版变电荷**等场景：离壳势是 $(r_h,Q)$ 的**二元**函数，第一定律须写成 $\mathrm dM=T\,\mathrm dS+\Phi\,\mathrm dQ+V\,\mathrm dP$，此时若沿用 $\mathrm dS=12\pi Q^2x\,\mathrm dx$ 就会漏掉 $\Phi\,\mathrm dQ$，"积分得 $M-TS$"这一步也不再干净。
- **判别口诀**：变量进积分/进微分，参数只进前置因子。2211 里 $Q$ 恰恰只出现在整体前置因子 $G_c=\sqrt6Q/3$ 中（Q6 第 5 节），这就是"$Q$ 是参数"的直接体现。

#### 4. 本工作区推导稿里的同一件事

- 推导稿 1 节用它做 $\int(T_h-T)\,\mathrm dS$；2.2 节换到腔框架后用 $x=r_h/R$（$R$ 固定）得 $\mathrm dS=2\pi R^2x\,\mathrm dx/G$；3 节 RN 腔里明确写了"固定 $Q,R$ 微分可得 $\mathrm dE_{BY}=T_B\,\mathrm dS$"——三处都是同一个"固定电荷 + 固定外参"约定。
- 推论：一旦做腔版的**变电荷/变腔壁面积**推广，这三处的 $\mathrm dS$ 都要补 $\mathrm dQ$（或 $\mathrm dR$）项，热势相应地变成多元函数，Kramers 那套一元双阱图像需要重做。

