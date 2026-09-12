---
title: "总结：Bardeen-AdS 类黑洞相变的平均首通时间与 Kramers 逃逸率"
folder: "文章整理/arXiv-2604.25791v1"
---

**arXiv:2604.25791v1 [gr-qc]**

> **引用体例说明**：本文档中每一句总结都紧跟着对应的**原文英文摘录**（引号内为 arXiv 原文，未做改写），并在括号中标注出处（章节 / 式号 / 图号）。凡属原文公式者，仅逐字转录在 arXiv HTML 中可无歧义辨认的式子；无法确证的排版歧义公式一律只做文字复述，不臆造。
>
> **原文来源**：https://arxiv.org/abs/2604.25791 ｜ 全文：https://arxiv.org/html/2604.25791v1 ｜ 本目录 PDF：[`2604.25791v1.pdf`](/notes/文章整理/arXiv-2604.25791v1/2604.25791v1.pdf)

---

## 一、元信息

| 项 | 内容 | 原文引用 |
| --- | --- | --- |
| 标题 | Mean first passage time and the Kramers escape rate of phase transitions for the Bardeen-AdS-class black hole | 原文标题即为 "Mean first passage time and the Kramers escape rate of phase transitions for the Bardeen-AdS-class black hole" |
| 作者 | Chen Ma, Bin Wu, Zhen-Ming Xu | > "Chen Ma, Bin Wu, and Zhen-Ming Xu" |
| 通讯作者 | Bin Wu | > "E-mail: binwu@nwu.edu.cn (Corresponding author)" |
| 单位 | 西北大学物理学院等 5 个单位 | > "1School of Physics, Northwest University, Xi'an 710127, China 2Institute of Modern Physics, Northwest University, Xi'an 710127, China 3Peng Huanwu Center for Fundamental Theory, Xi'an 710127, China 4Shaanxi Key Laboratory for Theoretical Physics Frontiers, Xi'an 710127, China 5Fundamental Discipline Research Center for Quantum Science and technology of Shaanxi Province, Xi'an 710127, China" |
| 提交时间 | 2026-04-28 | > "[Submitted on 28 Apr 2026]" |
| 篇幅 | 13 页 6 图 | > "13 pages, 6 figures. To be published in Chinese Physics C" |
| 分类 | gr-qc | > "Subjects: General Relativity and Quantum Cosmology (gr-qc)" |
| 关键词 | Kramers 逃逸率；Bardeen-AdS；黑洞热力学 | > "Keywords: kramers escape rate; bardeen-AdS; black hole thermodynamics" |
| DOI / BibTeX | 可通过 arXiv 导出 | > "https://doi.org/10.48550/arXiv.2604.25791"；"Cite as: arXiv:2604.25791 [gr-qc]" |

---

## 二、摘要（Abstract）

1. **方法总述**：本文用构造出的广义自由能，配合随机动力学中的平均首通时间（MFPT）与 Kramers 逃逸率，得到 Bardeen-AdS 类黑洞相变的完整图景。
   > 原文："In this study, by utilizing the constructed generalized free energy alongside the Mean First-Passage Time and the Kramers escape rate from stochastic dynamics, we have obtained a comprehensive landscape of the phase transitions for the Bardeen-AdS-class black hole."

2. **该模型有两类解**。
   > 原文："This black hole model admits two distinct categories of solutions."

3. **Type I 黑洞具有正则黑洞解，Type II 黑洞具有真空态解**。
   > 原文："Type I black holes feature a regular black hole solution, and Type II black holes possess a vacuum state solution."

4. **Type I 的小黑洞—大黑洞相变，中间可能经过稳定、亚稳或不稳定的正则黑洞态**。
   > 原文："In the phase transition between the small black hole and the large black hole for Type I, the process may pass through a stable, metastable, or unstable regular black hole as an intermediate state."

5. **Type II 的相变只发生在真空态与小黑洞之间，不涉及任何正则黑洞中间态**。
   > 原文："In contrast, for Type II black holes, the phase transition occurs exclusively between the vacuum state and the small black hole, and the transition process does not involve any regular black hole intermediate states."

---

## 三、引言（Sec. I Introduction）

6. **问题动机：奇点**。一般黑洞解中心存在引力奇点，时空曲率发散，已知物理定律失效；量子理论也不允许出现无穷曲率。
   > 原文："The center of a general black hole solution harbors a gravitational singularity, a point where spacetime curvature diverges and all known physical laws cease to be valid. This constitutes a major theoretical flaw, and quantum theory also prohibits the appearance of infinite curvature."

7. **Hawking–Penrose 奇点定理预言恒星坍缩形成的黑洞在某些条件下必然带奇点**。
   > 原文："However, the singularity theorems proposed by Hawking and Penrose predict that, under certain conditions, a black hole formed from stellar collapse must possess a singularity [1]."

8. **通过引入耦合物质场有可能避免奇点**。
   > 原文："Nevertheless, we can potentially avert the singularity by introducing a coupled matter field [2, 3, 4, 5, 6]."

9. **Bardeen 黑洞是爱因斯坦引力耦合非线性电磁场得到的例子，这类无奇点黑洞被称为正则黑洞；也可由某些修改引力理论得到**。
   > 原文："One such example is the Bardeen black hole, which is obtained by coupling Einstein gravity to a nonlinear electromagnetic field. Such black holes without a singularity are termed regular black holes. Furthermore, regular black holes can also be obtained through certain modified theories of gravity [7, 8, 9, 10, 11, 12, 13]."

10. **既有困难**：第一定律的要求导致熵—面积律与 Hawking 温度冲突，电磁势也需要重新定义。
    > 原文："However, several issues arose at this point. For instance, the requirements of the First Law led to a conflict between the entropy-area law and the Hawking temperature [17, 18]. Simultaneously, the electromagnetic potential also required redefinition [19]."

11. **冲突根源**：正则黑洞的能量与磁荷一般依赖于物质场的耦合系数，因此其积分常数无法与耦合常数分离。
    > 原文："This conflict primarily stems from the fact that the energy and magnetic charge of regular black holes are generally dependent on the coupling coefficients of the matter field. Consequently, their relevant integration constants cannot deviate from the coupling constants."

12. **由此的后果**：热力学中必须同时考虑能量的变化与其他耦合常数的变化，最终导致热力学量与第一定律不一致。
    > 原文："Crucially, in thermodynamics, the variation of energy must be considered simultaneously with the variation of other coupling constants. This requirement ultimately leads to an inconsistency between the thermodynamic quantities and the First Law."

13. **文献 [20] 的解法**：把能量、电荷等积分常数不当作耦合参数处理，从而探索更广义的黑洞解。
    > 原文："In the literature [20], the authors proposed a solution where they treat the integration constants, such as energy and charge, not as coupling parameters, thereby exploring a more generalized black hole solution [14, 17, 21, 22]."

14. **核心问题**：在这类解中正则黑洞只在能量与电荷取特定值时存在，因此要问——正则黑洞在相变过程中究竟是（亚）稳定的中间态，还是不稳定的过渡态？
    > 原文："In these solutions, regular black holes exist only when the energy and charge adopt specific values. Therefore, our central question is: Is the regular black hole characterized as a stable (or metastable) intermediate or an unstable transition state during the phase transition process?"

15. **研究手段**：用非平衡统计方法探讨该问题，以期更深入理解正则黑洞的形成机制。
    > 原文："We aim to explore this question using non-equilibrium statistical methods, hoping to gain a deeper understanding of the formation mechanism of regular black holes."

16. **背景：黑洞相变未必是准静态过程，因此已有若干研究尝试刻画其动力学**。
    > 原文："Given that black hole phase transitions are not necessarily quasi-static processes, researchers have made several attempts to study the dynamics of black hole thermodynamic phase transitions. These efforts seek to uncover the underlying structure of the phase transition by establishing a framework of relativistic stochastic statistical physics [23]."

17. **两条既有路线**：一是用随机运动框架下的 MFPT 获取相变动力学信息；二是用广义自由能确定相变的速率行为。
    > 原文："Specifically, some studies attempt to obtain dynamic information about the phase transition by utilizing the mean first passage time (MFPT) within the context of stochastic motion [24, 25, 26, 27, 28]. Other works focus on employing generalized free energy to determine the rate behavior of the phase transition [29, 30, 31, 32, 33, 34, 35]."

18. **本文做法**：针对 Bardeen-AdS 类黑洞，同时使用 MFPT 与 Kramers 逃逸率分析相变。
    > 原文："In this paper, Our discussion centers on the case of a Bardeen-AdS-class black hole, simultaneously utilizing the MFPT and the Kramers escape rate to analyze the black hole phase transition."

19. **文章结构**：Sec. II 给出 Bardeen-AdS 类黑洞的度规与热力学；Sec. III 建立广义自由能定义，并由 Fokker–Planck 方程导出 MFPT 与 Kramers 逃逸率；Sec. IV 用该框架分析相变行为；Sec. V 讨论结果。
    > 原文："The paper is organized as follows. In Sec. II, we present the metric and thermodynamics of the Bardeen-AdS-class black holes. In Sec. III, the definition of the generalized free energy is established, and the MFPT and the Kramers escape rate are derived via the Fokker-Planck equation. These theoretical frameworks are then employed in Sec. IV to analyze the phase transition behaviors of the Bardeen-AdS-class black holes. Finally, Sec. V is devoted to the discussion of our results."

---

## 四、Bardeen-AdS 类黑洞的度规与热力学（Sec. II）

20. **修正的非线性电磁拉氏量**：为绕开"耦合常数问题"，作者引入修改后的非线性电磁拉氏量（原文式 (1)），再由最小耦合得到作用量（原文式 (2)）。
    > 原文："To circumvent the 'coupling constant issues' where the mass and charge of regular black holes are intrinsically linked to the matter field's coupling parameters, the authors introduced a modified non-linear electromagnetic Lagrangian [20]"（其后紧接式 (1) 与式 (2)）

21. **$m_0$ 与 $q_0$ 的双重身份**：在原 Bardeen-AdS 解中，它们既是相互作用耦合常数，又代表黑洞质量与磁荷。
    > 原文："In the original Bardeen-AdS black hole solution, the parameters m0 and q0 possess a dual identity. On one hand, they function as coupling constants of the interaction; on the other hand, they represent the black hole's mass and magnetic charge."

22. **后果**：改变黑洞质量或磁荷等于改变整个底层理论，这自然引发前述各种热力学不一致。
    > 原文："This implies that altering the black hole's mass or magnetic charge would effectively change the entire underlying theory, which naturally gives rise to the various thermodynamic inconsistencies mentioned previously."

23. **解耦方案**：把 $m_0, q_0$ 固定为纯耦合常数，而用 $m, q_m$ 重新定义真正的黑洞参数。
    > 原文："To resolve this issue, it is necessary to decouple these roles. Here the parameters m0 and q0 are fixed as constants purely associated with the coupling, while the actual black hole parameters are redefined in terms of m and qm."

24. **所得解**：解场方程可得度规函数（原文式 (3)）与规范场（原文式 (4)），黑洞能量与磁荷为 $M=\tfrac12 m,\; Q_m=q_m$（原文式 (5)）。
    > 原文："Solving the field equation corresponding to the action (2), the Bardeen-AdS-class black hole solution can be obtained"（其后为式 (3)、(4)）；"The energy and magnetic charge of black hole are given by"（其后为式 (5)）

25. **退化为 Bardeen-AdS 的条件**：当黑洞参数等于模型参数，即 $m=m_0,\; q_m=q_0$ 时，Bardeen-AdS 类黑洞退化为 Bardeen-AdS 黑洞。
    > 原文："When the black hole parameters are equal to the model parameters, i.e., m=m0, qm=q0, the Bardeen-AdS-class black hole reduces to the Bardeen-AdS black hole."

26. **视界位置与 Hawking 温度**：事件视界位于 $f(r_+)=0$ 的最大根，Hawking 温度可由 $r_+$ 表示（原文式 (6)）；对应质量见原文式 (7)。
    > 原文："The event horizon of the black hole is located at the largest root of f(r+)=0, then the Hawking temperature in terms of event horizon radius r+ is given by"（其后为式 (6)）；"The corresponding mass is given by"（其后为式 (7)）

27. **重要限制：$r_+$ 不能连续取值**。由于黑洞可能拥有多个视界，例如当 $f(r)$ 曲线有两个极值点时，$r_+$ 不可能落在其单调递减区间内；这一点影响热力学势的取值范围。
    > 原文："It should be noted that, since this black hole may possess multiple horizons, r+ cannot always take on a continuous range of values. For example, when the curve of f(r) has two extreme points, it is impossible for r+ to fall within its monotonically decreasing interval. This point affects the range of the thermodynamic potential."

28. **其余热力学量**：熵 $S=\pi r_+^2$（式 (8)）、体积 $V=\tfrac43\pi r_+^3$（式 (9)）以及共轭势 $\Phi_m,\phi_m,\phi_q$（式 (10)–(12)）。
    > 原文："And the other thermodynamical quantities for the Bardeen-AdS-class black holes are described by [20]"（其后为式 (8)–(12)）

29. **推广的第一定律成立**：
    $$dM = T_h\,dS + V\,dP + \Phi_m\,dQ_m + \phi_m\,dm_0 + \phi_q\,dq_0 \qquad \text{(原文式 (13))}$$
    > 原文："They satisfy the extended first law of black hole thermodynamics"
    > 原文式 (13)："d M = Th dS + V dP + Φm dQm + φm dm0 + φq dq0"

30. **三个共轭势的含义与一个注意事项**：$\Phi_m,\phi_m,\phi_q$ 分别是 $M$ 对 $Q_m$、$m_0$、$q_0$ 变分的共轭势；但若把 $Q_m$ 与 $q_0$ 视为同一量，黑洞的磁势将变成 $\Phi_m+\phi_q$，偏离常规定义。
    > 原文："Where Φm, φm, and φq are the conjugate potentials arising from the variations of the mass M with respect to the magnetic charge Qm and the coupling parameters m0 and q0, respectively. However, it should be pointed out that if Qm and q0 are treated as identical, the magnetic potential of the black hole would become Φm+φq, which deviates from the conventional definition."

31. **量纲分析与 Smarr 关系**：由标度分析（原文式 (14)）可得 Smarr 关系
    $$M = 2T_hS - 2VP + \Phi_mQ_m + \phi_m m_0 + \phi_q q_0 \qquad \text{(原文式 (15))}$$
    > 原文："We can derive the Smarr relation using the method of scaling analysis."
    > 原文式 (15)："M = 2 Th S − 2 V P + Φm Qm + φm m0 + φq q0"

32. **自洽性已验证**：把热力学量的显式表达式代入 Smarr 关系可得到一致的检验，说明"把积分常数与耦合参数分离"的热力学构造是自洽的。
    > 原文："Substituting the explicit expressions of thermodynamic variables into the Smarr relation leads to its consistent verification. It follows that this thermodynamic construction, which separates the integration constants from the coupling parameters, is self-consistent."

---

## 五、广义自由能、MFPT 与 Kramers 逃逸率（Sec. III）

### 5.1 广义自由能（热势）

33. **出发点**：在扩展相空间中，黑洞相变可由 Maxwell 等面积律判定；黑洞物态方程即 $T_h=T_h(S,P)$。等面积律在 $T_h$–$S$ 平面上可写为
    $$\int_{S_1}^{S_2} T_h\,dS = T\cdot(S_2-S_1) \;\Rightarrow\; \int_{S_1}^{S_2}(T_h-T)\,dS = 0 \qquad \text{(原文式 (16))}$$
    > 原文："In the extended phase space of black hole thermodynamics, the phase transition of black hole can be determined by the Maxwell equal area law."；"The Maxwell equal area law states that there exists an isotherm T such that AreaA=AreaB, as shown in Fig 1."
    > 原文式 (16)："∫S1S2 Th dS = T·(S2−S1) ⇒ ∫S1S2 (Th−T) dS = 0"

34. **本文定义**：放开等面积律约束，引入广义自由能 $\mathcal{U}$（又称热势）
    $$\mathcal{U} = \int (T_h - T)\,dS \qquad \text{(原文式 (17))}$$
    > 原文："Now, based on the definition of generalized free energy in reference [29, 30, 31, 32], we release the Maxwell equal area law mentioned above, and introduce generalized free energy 𝒰 (or called the thermal potential) as"

35. **自由能图景的核心思想**：放松物态方程带来的约束，让内部变量独立变化，从而构造出极值对应平衡态的能量超曲面。
    > 原文："The central idea of a free energy landscape is to relax the constraints imposed by the equation of state, allowing internal variables to vary independently, thereby creating an energy hypersurface whose extrema correspond to equilibrium states."

36. **记号约定**：花体字母（如 $\mathcal{F},\mathcal{G}$）表示离壳（off-shell）广义自由能，对任意内部变量取值都有定义、可描述非平衡体系；罗马字母（如 $F,G$）表示真正平衡态的在壳（on-shell）自由能。
    > 原文："To clarify the notation, we use calligraphic symbols (e.g., ℱ,𝒢) for the off-shell generalized free energy functions, which are defined for arbitrary values of internal variables and describe the system even when it is not in equilibrium. The standard on-shell free energies, which represent true equilibrium states, are denoted by roman letters (e.g., F,G)."

37. **积分常数 $C$ 的处理**：$C$ 只把整个自由能图景上下平移，不改变极小值位置与势垒高度；通常取 $C=0$，这样广义自由能在平衡态自然退化为标准 Gibbs 自由能。
    > 原文："The choice of the integration constant C, which shifts the entire free energy landscape vertically, does not alter the location of the minima (stable states), and the height of the potential barriers. We typically set C=0. This choice is made not only for the sake of convenience, more importantly, because it ensures that the generalized free energy naturally reduces to the standard Gibbs free energy at the equilibrium state."

38. **两个温度的物理含义**：Hawking 温度 $T_h$ 是黑洞内部的温度、是熵 $S$ 的函数；等温线温度 $T$ 是离壳温度，代表环境温度，可取任意正值且独立于黑洞状态。
    > 原文："The Hawking temperature Th represents the internal temperature of the black hole, which is a function of the thermodynamic entropy S. In contrast, the isotherm T acts as the off-shell temperature, representing the ambient environment temperature. This T can be arbitrarily assigned any positive value, independent of the black hole's state."

39. **极值条件**：$\dfrac{d\mathcal{U}}{dS}=0 \Rightarrow T = T_h$（原文式 (18)）。
    > 原文："For generalized free energy (17), we can understand it is constructed under isobaric conditions, starting from the T−S diagram, by relaxing the equilibrium constraint and allowing the relevant parameters to vary independently. This yields an off-shell generalized free energy (i.e., a free energy landscape), whose extremum recovers the physical equilibrium state."
    > 原文式 (18)："d𝒰/dS = d/dS (∫(Th−T)dS) = 0 ⇒ T = Th"

40. **极值的物理意义**：广义自由能图景的极小值对应热稳定黑洞态，极大值对应热不稳定态；稳定解中还可进一步区分亚稳态（局部极小）与全局最稳定态（全局极小）。
    > 原文："The minima of the generalized free energy landscape correspond to thermally stable black hole states, whereas the maxima signify thermally unstable ones. Among these stable solutions, we further distinguish between metastable states (local minima) and the globally stable state (the global minimum)."

41. **与 $\mathcal{G}=M-TS$ 的关系**：取 $\mathcal{G}=M-TS$，其中 $T$ 不是系统平衡温度而是任意外部（系综）温度，该构造把 Gibbs 自由能中的约束 $T=T_h$ 解除，只在 $\mathcal{G}$ 取极值时恢复在壳条件。
    > 原文："Furthermore, there is another form of off-shell free energy defined as 𝒢=M−TS [24], where T is not the system's equilibrium temperature but an arbitrary external (ensemble) temperature. This construction generalizes the Gibbs free energy G by lifting the constraint T=Th, so that the on-shell equilibrium condition T=Th is recovered only when 𝒢 attains its extremum."

42. **两者的等价性**：在固定压强 $P$ 下
    $$\mathcal{U}=\int(T_h-T)dS = E+PV-TS = M-TS = \mathcal{G} \qquad \text{(原文式 (19))}$$
    即 $P$ 固定时 $\mathcal{U}$ 与 $\mathcal{G}$ 数学上完全相同，$\mathcal{U}$ 可看作离壳 Gibbs 自由能 $\mathcal{G}$ 的一个具体实现。
    > 原文式 (19)："𝒰=∫(Th−T)dS = E+PV−TS = M−TS = 𝒢"
    > 原文："Thus, when P is fixed, 𝒰 and 𝒢 are mathematically identical. In this sense, 𝒰 can be viewed as a specific realization of the off-shell Gibbs free energy 𝒢, with the integration path chosen as the deviation from equilibrium."

43. **第三种离壳势（Landau 势）**：$\mathcal{L}=\int F(X,T,P)\,dX$（原文式 (20)），其中 $X$ 是解释为非平衡热力学体积的辅助变量，$F(X,T,P)=P-f(X,T)$，$P=f(V,T)$ 为物态方程；$\mathcal{L}$ 的极值出现在 $X$ 满足物态方程处，即平衡体积 $X=V_{\text{eq}}$。
    > 原文："Regarding the Landau potential [38]"；"where X is an auxiliary variable interpreted as the non-equilibrium thermodynamic volume, and F(X,T,P)=P−f(X,T) with P=f(V,T) the equation of state. The extremum of ℒ occurs when X satisfies the equation of state, i.e., at the equilibrium volume X=Veq."

44. **三种离壳势的区别**：$\mathcal{U}$（$T$–$S$ 平面）以环境温度作为离壳变量；$\mathcal{G}$（$G$–$T$ 或 $G$–$P$ 平面）通过解除 $T=T_h$ 约束推广 Gibbs 自由能；$\mathcal{L}$（$P$–$V$ 平面）以非平衡体积 $X$ 作为离壳变量。
    > 原文："The three off-shell potentials differ in which variable is taken off-shell and which thermodynamic plane they naturally belong to. 𝒰 (on the T-S plane) takes the ambient temperature as the off-shell variable; 𝒢 (on the G-T or G-P plane) generalizes the Gibbs free energy by lifting the constraint T=Th; ℒ (on the P-V plane) uses the non‑equilibrium volume X as the off-shell variable."

45. **三者共同的物理本质与本文选择**：三者的本质相同，都是构造极值即真实平衡态的自由能图景，选择取决于哪个热力学平面最能展示所研究过程；本文因聚焦 $T$–$S$ 平面而采用 $\mathcal{U}$，物理结论与选择无关。
    > 原文："Despite these differences, all three share the same physical essence: they construct a free energy landscape whose extremum recovers the true equilibrium state. The choice is therefore a matter of convenience, dictated by which thermodynamic plane best illustrates the process under study. In this work we adopt 𝒰 because our analysis focuses on the T-S plane; for G-T/G-P or P-V analyses, 𝒢 or ℒ would be more natural. The physical conclusions are equivalent regardless of the choice."

### 5.2 随机动力学：Fokker–Planck 方程与边界条件

46. **随机过程视角**：热涨落使黑洞在该广义自由能框架下展现不同的相变行为，可视为随机过程；黑洞态（含在壳与离壳态）的时间演化与概率分布由 Fokker–Planck 方程描述。
    > 原文："Due to thermodynamic fluctuations, black holes exhibit distinct phase transition behaviors within this generalized free energy framework, which can be regarded as a stochastic process. The temporal evolution and probability distribution of these black hole states (encompassing both on-shell and off-shell states) can be described by the Fokker-Planck equation."

47. **过阻尼极限与势垒穿越的图像**：若黑洞温度远低于势垒高度（如双阱势），态处于某个势阱最低点的概率远大于到达垒顶的概率；即使越过垒顶也通常对称地落向两侧；而一旦落在阱底，经过一段驻留时间后仍有有限概率越过势垒到达另一阱的最低点。
    > 原文："If the black hole temperature is significantly lower than the potential barrier height (e.g., in a double-well potential), the probability of the state residing at the lowest point of one potential well largely exceeds the probability of it reaching the top of the barrier. Even if the state does surmount the barrier peak, it will typically fall symmetrically to either side. However, if the state settles into the lowest point of one potential well, thermodynamic fluctuations imply that, after a period of residence, there is a finite probability for it to cross the potential barrier and eventually reach the minimum point of the other potential well."

48. **起手方程**：由于关注态之间的跃迁而非单一态内的扰动，从过阻尼 Fokker–Planck 方程出发
    $$\frac{\partial \rho(r,t)}{\partial t} = D\frac{\partial}{\partial r}\left(e^{-\beta\mathcal{U}(r)}\frac{\partial}{\partial r}\left(e^{\beta\mathcal{U}(r)}\rho(r,t)\right)\right) \qquad \text{(原文式 (21))}$$
    > 原文："Since we focus on the transitions between states rather than the perturbations within a specific state, we start with the overdamped Fokker-Planck equation [36, 37]"

49. **量的含义**：$\rho(r,t)$ 是黑洞态的概率分布，$\beta=1/T$ 是逆温度，$\mathcal{U}(r)$ 是本文的广义自由能，$D$ 是扩散系数；事件视界半径 $r$ 被当作系统的序参量。
    > 原文："where the ρ(r,t) is the probability distribution of black hole states, β=1/T denotes the inverse temperature, 𝒰(r) is the generalized free energy in our work, and D is the diffusion coefficient. The radius of the black hole event horizon r is regarded as a order parameter of the system."

50. **两类边界条件**（原文式 (22)、(23)）：在 $r_A$ 处取**反射**边界条件（概率流为零），在 $r_m$ 处取**吸收**边界条件（概率密度为零）。
    > 原文式 (22)、(23)："j(rA,t) = −D( e^{−β𝒰(r)} ∂/∂r ( e^{β𝒰(r)} ρ(r,t) ) )|_{r=rA} = 0"；"ρ(rm,t)=0"
    > 原文："To render the Fokker-Planck equation more tractable, we prescribe the following boundary conditions"

51. **反射边界的意义**：$r_A$ 处概率流 $j$ 为零，表示没有态流出系统；$r_A$ 通常选为相变动力学的初始态。
    > 原文："Applying a reflecting boundary condition at rA means that the probability flux j at rA is zero, indicating a reflective boundary where no states flow out of the system. rA is typically chosen as the initial state for the phase transition dynamics."

52. **吸收边界的意义**：$\rho$ 在 $r_m$ 处为零，意味着态被边界完全吸收，可认为相变已经完成；$r_m$ 通常取刚越过热势极大的点。
    > 原文："Applying an absorbing boundary condition at rm implies that the probability density ρ at the boundary rm is zero. This signifies that states are completely absorbed by the boundary, thus the phase transition can be considered complete. And rm is usually chosen as the point that just crosses the maximum of the thermal potential."

53. **与文献 [24] 的差别**：文献 [24] 把初始小黑洞取 $r_A=0$、初始大黑洞取 $r_A=\infty$；本文主要关注稳定热力学态之间的跃迁动力学，因此把初始条件设在势的局部极小处（对应宏观的小黑洞或大黑洞态），因为它们是相变的物理起点。
    > 原文："This choice of rA differs from the one adopted in Ref. [24]. In Ref. [24], rA is set to zero for an initial small black hole and to infinity for an initial large black hole. In our study, we focus primarily on the transition dynamics between stable thermodynamic states. Therefore, we set the initial conditions at the local minima of the potential (corresponding to the macroscopic Small Black Hole or Large Black Hole states), as these represent the physical starting points of the phase transition."

54. **该选择对数值结果无实质影响**：即使把初始态设为 $0$ 或 $\infty$，系统也会迅速演化到最近的稳定盆地，因此两种选择下 MFPT 的数值差异可以忽略；文献 [24] 更关心从非平衡到平衡的一般演化，故采用极端非平衡构型作为起点。
    > 原文："It is worth noting that even if the initial state were set to 0 or ∞, the system would rapidly evolve toward the nearest stable basin. Consequently, the numerical discrepancy in the MFPT results between these two choices is negligible. In contrast, the Ref. [24] were more concerned with the general evolution from non-equilibrium to equilibrium states; thus, they adopted extreme non-equilibrium configurations as their starting points."

### 5.3 MFPT 与 Kramers 逃逸率

55. **MFPT 的定义逻辑**：态在区间 $(r_A,r_m)$ 内被找到的概率为 $\int_{r_A}^{r_m}dr\,\rho(r,t)$；态不在该区间时，可认为它已越过势垒到达另一态。于是该积分可视为"黑洞到时刻 $t$ 尚未发生首次相变"的概率，由此得 MFPT 的分布
    $$F_p(t) = -\frac{d\left(\int_{r_A}^{r_m}dr\,\rho\right)}{dt} \qquad \text{(原文式 (24))}$$
    > 原文："Considering that the probability of finding the state within the interval (rA,rm) is given by ∫rArm dr ρ(r,t), when the state is not in this interval, we can assume that it has crossed the potential barrier and reached the other state. Therefore, we can regard this integral expression as the probability that the black hole has not undergone the first phase transition by time t. This leads directly to the distribution of the MFPT"

56. **MFPT 的定义式**：$\langle t\rangle = \int_0^\infty dt\, t\, F_p(t)$（原文式 (25)）。
    > 原文："Based on the defining expression of the MFPT"
    > 原文式 (25)："⟨t⟩=∫0∞ dt t Fp(t)"

57. **MFPT 的显式积分表示**：把式 (21) 与边界条件式 (22)、(23) 代入式 (24) 并做式 (25) 的计算，得
    $$\langle t\rangle = \frac{1}{D}\int_{r_A}^{r_m}dr\int_{r_A}^{r}dr'\, e^{\beta(\mathcal{U}(r)-\mathcal{U}(r'))} \qquad \text{(原文式 (26))}$$
    > 原文："the MFPT ⟨t⟩ can be correlated with the probability density ρ(r,t). By substituting the Fokker-Planck equation (21) and the boundary conditions (22) and (23) into the expression for Fp(t) (24) and performing the calculation (25), we obtain"

58. **Kramers 逃逸率的推导起点**：定义流
    $$J(r,t) = \frac{D\,e^{\mathcal{U}(r_{\min})/D}\rho(r_{\min},t)}{\int_{r_{\min}}^{A}e^{\mathcal{U}(r)/D}dr} \qquad \text{(原文式 (27))}$$
    其中 $\mathcal{U}(r)$ 是本文的势/广义自由能，$D$ 为扩散系数（系统达到热平衡时可视为常数），并假设在 $r=A$（$A$ 为大于 $r_{\max}$ 的任意位置）概率分布为零。
    > 原文："In the derivation of the Kramers escape rate, the current J(r,t) is defined as"
    > 原文："where 𝒰(r) is the potential or the generalized free energy in our work, and D is the diffusion coefficient, which can be considered constant when the system reaches thermal equilibrium, and we assume that at r=A (A is any position greater than rmax), the probability distribution is zero."

59. **阱内概率与逃逸率的关系**：若 $p$ 为态位于阱内/近 $r_{\min}$ 的概率，则 $p = \rho(r_{\min},t)e^{\mathcal{U}(r_{\min})/D}\int_{(r_{\min})}e^{-\mathcal{U}(r)/D}dr$（原文式 (28)）；$p$ 乘以 Kramers 逃逸率 $r_k$ 即为流 $J(r,t)$。
    > 原文："If we define p as the probability of the state being inside the well or near rmin, then we can find"
    > 原文："The probability p times the Kramers escape rate rk is just the current J(r,t), hence we can obtain the escape rate [36, 37]"

60. **逃逸率的表达式**：
    $$\frac{1}{r_k} = \frac{p}{J} = \frac{1}{D}\int_{r_{\min}}^{A}e^{\mathcal{U}(r)/D}dr\int_{(r_{\min})}e^{-\mathcal{U}(r)/D}dr \qquad \text{(原文式 (29))}$$
    > 原文式 (29)："1/rk = p/J = (1/D) ∫rminA e^{𝒰(r)/D} dr ∫(rmin) e^{−𝒰(r)/D} dr"

61. **两个量的物理区别与近似互逆**：Kramers 逃逸率表示单位时间内成功翻越势垒的态所占比例，而 MFPT 表示单个态越过势垒到达目标态所需的平均时间；因此两者近似互为倒数，比较式 (26) 与式 (29) 即可验证。
    > 原文："Physically, the Kramers escape rate represents the fraction of states that successfully surmount the potential barrier per unit time, whereas the MFPT denotes the average time a single state requires to cross the barrier and reach the target state. Consequently, they are approximately reciprocals of each other, as can be readily verified by comparing Eqs. (26) and (29)."

62. **鞍点/极值附近的 Taylor 展开**：第一个积分的主要贡献来自 $r_{\max}$ 附近，第二个积分的主要贡献来自 $r_{\min}$ 附近；势函数在极值点二阶展开为
    $$\mathcal{U}(r)\approx\mathcal{U}(r_{\max})-\tfrac12|\mathcal{U}''(r_{\max})|(r-r_{\max})^2,\quad \mathcal{U}(r)\approx\mathcal{U}(r_{\min})+\tfrac12\mathcal{U}''(r_{\min})(r-r_{\min})^2$$
    （原文式 (30)、(31)）
    > 原文："For above two integrals, we can clearly see that the main contribution of the first integral comes from the regions around rmax, while the main contribution of the second integral comes from the regions around rmin. The Taylor expansions approximation to second order of the potential function U(r) near two extreme points are"

63. **Kramers 逃逸率的解析式**：把积分上限延拓到 $\pm\infty$ 后
    $$r_k = \frac{\sqrt{|\mathcal{U}''(r_{\min})\mathcal{U}''(r_{\max})|}}{2\pi}\,e^{-\frac{\mathcal{U}(r_{\max})-\mathcal{U}(r_{\min})}{D}} \qquad \text{(原文式 (32))}$$
    > 原文："and we may extend the above two integrations boundaries to ±∞, thus the Kramers escape rate can be taken as [36, 37]"

64. **数值策略**：MFPT 采用精确积分形式以保证整个图景上的数值精度；Kramers 逃逸率则使用近似解析形式，因为它是高垒极限下的领头阶近似。
    > 原文："We adopt the exact integral formulation for the MFPT to ensure numerical accuracy across the whole landscape. In contrast, for the Kramers escape rate, we use the approximate analytical form, as it represents a leading-order approximation in the high-barrier limit."

---

## 六、结果：相变过程中的平均首通时间（Sec. IV）

65. **代入后得到的广义自由能**：把 Bardeen-AdS 类黑洞的热力学量代入广义自由能定义式 (17)，得 $\mathcal{U}(r_+)$（原文式 (33)）；为把热力学量无量纲化，取 $q_0=1$、$q_m=q_0$，并改变参数 $L$ 与 $m_0$；为方便，用 $\mathcal{U}(r)$ 记 $\mathcal{U}(r_+)$，此时广义自由能简化（原文式 (34)）。
    > 原文："Substituting thermodynamic quantities of the Bardeen-AdS-class black hole into the definition of the generalized free energy (17), the generalized free energy 𝒰(r+) be given"
    > 原文："We set q0=1 to nondimensionalize the thermodynamic quantities. To simplify the ensemble, we set qm=q0 and varying the parameters L and m0. For convenience, we use 𝒰(r) to denote 𝒰(r+). At this point, the generalized free energy U(r) simplifies to"

66. **序参量的物理性要求**：由于构造广义自由能图景时序参量 $r$（或 $r_+$）必须对应物理上存在的黑洞，必须严格满足 $T_h(r)\ge 0$；不满足该要求的区域在图 2 中用虚线表示。
    > 原文："We emphasize once again that r+ cannot always take on a continuous range of values. Since the order parameter r (or r+) must correspond to a physically existing black hole when constructing the generalized free energy landscape, the condition Th(r)≥0 must be strictly satisfied. Accordingly, the regions that do not fulfill this requirement are represented by dashed lines in Fig. 2."

67. **虚线的含义**：这些虚线是用**内视界半径**导出的"温度"计算得到的广义自由能，因此其热力学行为在物理上没有意义。
    > 原文："In fact, these dashed lines represent the generalized free energy calculated using the 'temperature' derived from the inner horizon radius. Consequently, their thermodynamic behavior is physically meaningless."

68. **图 2 的参数**：(a) $L=15,m_0=10,T=0.017854$；(b) $L=15,m_0=6.5,T=0.018759$；(c) $L=15,m_0=3,T=0.019729$；(d) $L=10,m_0=2.05,T=0.027750$；(e) $L=7.67,m_0=1.39,T=0.03550$；(a)–(c) 为 Type I，(d)(e) 为 Type II。
    > 原文（图 2 题注）："(a)L=15,m0=10,T=0.017854. (b)L=15,m0=6.5,T=0.018759. (c)L=15,m0=3,T=0.019729. (d)L=10,m0=2.05,T=0.027750. (e)L=7.67,m0=1.39,T=0.03550."；"Panels (a)–(c) correspond to Type I black holes, while (d) and (e) represent Type II black holes. The solid lines depict the relationship between the generalized free energy 𝒰 and the event horizon r+. In contrast, dashed lines denote non-physical, unattainable regions."

69. **广义自由能行为分三类**：Case 1 只在曲线后半段有定义，对应文献 [20] 的 Type I 黑洞；Case 2 在某个中间区域无定义；Case 3 在整个区间可定义。Case 2 与 Case 3 对应文献 [20] 的 Type II 黑洞。
    > 原文："It is readily apparent that the behavior of the generalized free energy is classified into three cases. Case 1 is defined only in the latter half of the curve and corresponds to the Type I black holes in [20]. Case 2 is undefined in some intermediate region. Case 3 is definable across the entire interval. Both case 2 and case 3 curves correspond to the Type II black holes discussed in reference [20]."

70. **分析焦点的选择理由**：因为主要关心"以正则黑洞为中间态"的相变，而 Type II 黑洞无法形成正则黑洞，所以分析集中在 Case 1 曲线。
    > 原文："Since we are primarily concerned with phase transitions that feature an intermediate state of a regular black hole, and Type II black holes are unable to form a regular black hole, we will focus our analysis on the case 1 curves."

71. **方法的局限**：由于 Case 2 曲线某些区域无定义，当前方法无法分析该情形下**真空态到黑洞态**的相变行为，只能依赖传统黑洞热力学分析，详见文献 [20]。
    > 原文："It should be noted that as certain regions of the Case 2 curves are not well-defined, our current approach is unable to analyze the phase transition behavior from the vacuum state to the black hole state in this specific case. Consequently, we must rely on traditional black hole thermodynamic analysis for these scenarios; for a detailed discussion, please refer to the work of Ref. [20]."

72. **三个 Type I 案例中正则黑洞所处的位置**：图 2(a) 的视界半径位于对应小黑洞态的势阱处；图 2(b) 的视界半径位于对应中间不稳定黑洞态的势垒处；图 2(c) 的视界半径位于对应大黑洞态的势阱处。
    > 原文："The event horizon radius in Fig. 2(a) is located at the potential well corresponding to the Small Black Hole state. The event horizon radius in Fig. 2(b) is located at the potential barrier corresponding to the intermediate unstable black hole state. The event horizon radius in Fig. 2(c) is located at the potential well corresponding to the Large Black Hole state."

73. **图 3 曲线约定**（Type I 的 MFPT）：蓝线代表小黑洞态到大黑洞态的转变，橙线代表反向过程，两线在单点相交。
    > 原文（图 3 题注）："The blue curve represents the transition process from the small black hole state to the large black hole state, while the orange curve depicts the reverse process from the large black hole state to the small black hole state; the two curves intersect at a single point."

74. **MFPT 随温度的变化**：三种情形下，小→大黑洞态的 MFPT 随温度 $T$ 升高而逐渐下降，大→小黑洞态的 MFPT 逐渐上升。
    > 原文："As shown in Fig. 3, in all three cases, the MFPT for the small-to-large black hole state transition gradually decreases as the temperature T increases, and the MFPT for the large-to-small black hole state transition gradually increases."

75. **交点即动力学平衡**：两曲线交点代表正反过程相消的动力学平衡，二者 MFPT 恰好相等。
    > 原文："The intersection point of the two curves represents the dynamic equilibrium where the forward and reverse processes balance, and their MFPTs are exactly equal."

76. **Kramers 逃逸率的温度行为**：三种情形的逃逸率行为一致，均先增后减；低温时小→大的逃逸率更高，高温时相反；交点同样代表动力学平衡态。
    > 原文："The behavior of the Kramers escape rate is consistent across the three cases, all exhibiting an initial increase followed by a decrease. At lower temperatures, the escape rate from small to large black holes is higher, while at higher temperatures, the opposite situation occurs. The intersection point represents the state of dynamic equilibrium."

77. **三种情形的本质区别在于正则黑洞态的性质**：在图 3(a)/图 4(a) 中正则黑洞态位于小黑洞位置，在图 3(c) 中位于大黑洞位置，这两种情形（图 3(a)(c) 或图 4(a)(c)）的相变过程都经过**稳定（或亚稳）**的正则黑洞态；而在图 3(b)/图 4(b) 中正则黑洞态位于小、大黑洞之间的不稳定势垒处，因此该情形的相变过程**经历不稳定的正则黑洞态**。
    > 原文："However, the three cases differ in the presence of a regular black hole state: In Fig. 3(a) (or Fig. 4(a)), the regular black hole state exists at the small black hole position. In Figure 3-c, the regular black hole state exists at the large black hole position. In both of these cases (Fig. 3(a)(c) or Fig. 4(a)(c)), the phase transition process involves a stable (or metastable) regular black hole state. In Fig. 3(b) (or Fig. 4(b)), the regular black hole state is situated at the unstable potential barrier between the small and large black hole states. Consequently, the phase transition process in this case traverses an unstable regular black hole state."

78. **图 4 曲线约定**（Type I 的 Kramers 逃逸率）：与图 3 相同的蓝/橙线含义，两线在单点相交。
    > 原文（图 4 题注）："The blue curve represents the transition process from the small black hole state to the large black hole state, while the orange curve depicts the reverse process from the large black hole state to the small black hole state; the two curves intersect at a single point."

79. **Type II 情形也做了研究**：作者还研究了 Type II 黑洞与真空态之间的相变，结果绘于图 5、图 6；注意此情形中不存在正则黑洞。
    > 原文："Additionally, we also investigated the phase transition between Type II black holes and the vacuum state. The resulting data is plotted in Fig. 5 and Fig. 6. It is worth noting that regular black holes are absent in this case."

80. **低温时的 Type II 组成**：低温下系统由大黑洞态与真空态构成。
    > 原文："At low temperatures, the system consists of a large black hole state and a vacuum state."

81. **真空—大黑洞之间不发生相变**：图 5(b)（或图 6(b)）显示真空与大黑洞之间的 MFPT 与 Kramers 逃逸率曲线不相交，表明二者之间不发生相变。
    > 原文："As shown in Fig. 5(b) (or Fig. 6(b)), the curves for the MFPT and the Kramers escape rate between the vacuum and the large black hole do not intersect, indicating that no phase transition occurs between them."

82. **温度升高后小黑洞态出现**：随着温度 $T$ 升高，小黑洞态出现；此时真空与大黑洞之间的动力学过程终止，小黑洞开始参与随机动力学。
    > 原文："As the temperature T increases, the small black hole state emerges. At this point, the dynamic process between the vacuum and the large black hole terminates, and the small black hole begins to participate in the stochastic dynamics."

83. **小—大黑洞也存在动力学平衡，但唯一真正的相变在真空—小黑洞之间**：当小、大黑洞达到动力学平衡时，小黑洞到真空态的转变更容易发生，因此小、大黑洞之间的平衡并不构成相变；整个过程中唯一真实的相变存在于真空态与小黑洞态之间。
    > 原文："According to Fig. 5(a) (or Fig. 6(a)), as T continues to rise, the MFPT from the small black hole to the large black hole gradually decreases, while the MFPT from the large black hole to the small black hole increases; their intersection signifies a state of dynamic equilibrium. A similar process occurs between the vacuum and the small black hole, as illustrated in Fig. 5(b) (or Fig. 6(c)). However, because the transition from the small black hole to the vacuum state occurs more readily when the small black hole and the large black hole reach dynamic equilibrium, the equilibrium between the small black hole and the large black hole does not constitute a phase transition. Consequently, the only authentic phase transition in the entire process exists between the vacuum state and the small black hole state."

84. **图 5 题注要点**：图 5(b) 中橙线存在一个突变点（mutation point）。
    > 原文（图 5 题注）："The orange curve exhibits a mutation point."

85. **图 6 的三种图**：Type II 的 Kramers 逃逸率分别对应 (a) 小↔大黑洞、(b) 真空↔大黑洞、(c) 真空↔小黑洞的正反过程。
    > 原文（图 6 题注）："(a)The blue curve represents the transition process from the small black hole state to the large black hole state, while the orange curve depicts the reverse process. (b)The blue curve represents the transition process from the vacuum state to the large black hole state, while the orange curve depicts the reverse process. (c)The blue curve represents the transition process from the vacuum state to the small black hole state, while the orange curve depicts the reverse process."

86. **为何数值上 MFPT 与逃逸率不严格成反比**：理论上若无计算误差，Kramers 速率与 MFPT 应成反比，但本文数值结果中该关系不严格成立。
    > 原文："Theoretically, the Kramers rate and the MFPT should be inversely proportional in the absence of calculation errors. However, this relationship does not strictly hold in our numerical results for the following reasons."

87. **原因**：MFPT 用精确积分公式，而 Kramers 速率是用势 $\mathcal{U}$ 在局部极大/极小处的二阶 Taylor 展开得到的近似代数式；因此反比关系只在势阱与势垒接近二次函数时成立。
    > 原文："While we employ an exact integral formula for the MFPT, the Kramers rate is derived using a second-order Taylor expansion at the local maxima and minima of the potential 𝒰 to obtain an approximate algebraic expression. Consequently, the inverse proportionality holds only when the potential wells and barriers deviate minimally from a quadratic function."

88. **所需条件（深阱条件）**：一般要求热势满足 $\Delta\mathcal{U}=\mathcal{U}(r_{\max})-\mathcal{U}(r_{\min})\gg D$；在此区间内即使势整体非线性，由于指数因子 $e^{-\Delta\mathcal{U}/D}$ 的快速衰减，积分也只对极值附近的二阶轮廓敏感。
    > 原文："In general, this requires the thermal potential to satisfy the deep well condition, namely Δ𝒰=𝒰(rmax)−𝒰(rmin)≫D. In this regime, even if the potential is globally non-linear, the integral remains sensitive only to the second-order profile near the extrema due to the rapid decay of the exponential factor e−Δ𝒰/D."

89. **本文不满足该条件**：如图 2 所示，本文所选的势 $\mathcal{U}$ 不满足深阱条件，故出现上述偏差。
    > 原文："However, as shown in Fig. 2, our chosen potential 𝒰 does not satisfy this condition, leading to the observed discrepancy."

90. **两种工具的定位**：Kramers 速率是纯代数式，计算远快于 MFPT，适合定性讨论；要做精确的定量计算，MFPT 方法仍不可替代。
    > 原文："Nevertheless, since the Kramers rate is purely algebraic, it is significantly faster to compute than the MFPT, making it a convenient tool for qualitative discussions. For precise quantitative calculations, the MFPT method remains indispensable."

---

## 七、总结与展望（Sec. V Summary）

91. **承认的既有困难**：正则黑洞的能量与磁荷一般与物质场耦合系数相关联，因此其积分常数无法与耦合参数分离。
    > 原文："We acknowledge the established challenge, the energy and magnetic charge of regular black holes are generally correlated with the matter field's coupling coefficients. Consequently, their associated integration constants cannot be decoupled from these coupling parameters."

92. **热力学中的后果**：必须同时考虑能量变化与其他耦合常数的变化，导致热力学量与第一定律不一致。
    > 原文："In thermodynamics, this necessitates that the variation of energy and other coupling constants be considered simultaneously, which leads to an inconsistency between the thermodynamic quantities and the First Law."

93. **本文的绕行方案**：把积分常数（如能量与电荷）当作独立变量而非耦合参数，从而探索更广义的黑洞解。
    > 原文："To circumvent this, the integration constants (such as energy and charge) are treated not as coupling parameters but as independent variables, thereby exploring a more generalized black hole solution."

94. **本文的技术路线回顾**：用广义自由能图景确定热势，并据此分析 MFPT 与 Kramers 逃逸率以量化相变动力学。
    > 原文："Using the generalized free energy landscape, we determine the thermal potential. Based on this potential, we analyzed the MFPT and the Kramers escape rate to quantify the dynamics of the black hole phase transition."

95. **Type I 的稳定性反转**：结果表明大黑洞态在低温下更稳定，而小黑洞态在高温下更稳定；由于二者之间存在动力学平衡，随 $T$ 增大会发生大黑洞→小黑洞的相变。
    > 原文："For Type I black holes, the results indicate that the large black hole state is more stable at lower temperatures, while the small black hole state becomes more stable at higher temperatures. Since a dynamic equilibrium exists between them, a phase transition from the large black hole to the small black hole occurs as T increases."

96. **正则黑洞带来的三分情形**：正则黑洞的存在依其"身份"（等同大黑洞态、等同小黑洞态、还是中间不稳定态）给出三种不同情景。
    > 原文："However, the presence of the regular black hole gives rise to three distinct scenarios, depending on whether it identifies with the large black hole state, the small black hole state, or the intermediate unstable state."

97. **两种情形经过稳定/亚稳正则黑洞，第三种经过不稳定正则黑洞**。
    > 原文："In the first two cases, the black hole phase transition process passes through a stable (or metastable) regular black hole state. In the third case, the phase transition process involves an unstable regular black hole state as an intermediate stage."

98. **Type II 的低温组成与稳定性**：低温下系统由大黑洞态与真空态构成，二者动力学相互作用中真空态更稳定。
    > 原文："For Type II black holes, the results indicate that at low temperatures T, the system comprises a large black hole state and a vacuum state, with the latter being more stable during their dynamic interaction."

99. **温度升高后小黑洞出现并终止真空—大黑洞转变**：随 $T$ 增大，小黑洞态出现，使真空与大黑洞之间的转变停止，转由真空态与小黑洞态进行动力学相互作用。
    > 原文："As T increases, a small black hole state emerges, causing the transition between the vacuum and large black hole states to cease; instead, the vacuum state begins to interact dynamically with the small black hole state."

100. **稳定性的次序变化**：小黑洞态出现后，大黑洞态比小黑洞态更稳定但不如真空态稳定；随 $T$ 继续升高，小黑洞态的稳定性先超过大黑洞态，继而超过真空态；也就是说，在极高温度下真空态变得最稳定。
     > 原文："Upon the emergence of the small black hole state, the large black hole state is more stable than the small black hole state but less so than the vacuum state. As T continues to increase, the stability of the small black hole state first surpasses that of the large black hole state and subsequently exceeds that of the vacuum state. In other words, the vacuum state becomes the most stable at very high temperatures."

101. **因此唯一真实相变是真空—小黑洞**：尽管小、大黑洞态之间存在动力学平衡，该过程并不构成相变；相变只发生在真空态与小黑洞态之间。
     > 原文："Consequently, despite the dynamic equilibrium between small black hole and large black hole states, this process does not constitute a phase transition; rather, the phase transition occurs exclusively between the vacuum and small black hole states."

102. **意义**：这一详细的过程描述给出了 Bardeen-AdS 类黑洞热力学相变的整体图景，加深了对黑洞随机热力学行为的理解。
     > 原文："This detailed process description provides an overall picture of the thermodynamic phase transition of the Bardeen-AdS-class black hole, which deepens our understanding of the stochastic thermodynamic behavior of black holes."

103. **可推广性**：该研究方法可推广到具有更丰富复杂相变行为的高阶引力模型，从而获得黑洞热力学相变的动力学信息。
     > 原文："Moreover, this research approach can be extended to higher order gravity models, which exhibit a rich variety of complex phase transition behaviors, thereby enabling us to obtain dynamic information on the thermodynamic phase transitions of black holes."

---

## 八、致谢（Acknowledgments）

104. **致谢审稿人与基金**：感谢匿名审稿人的建议；受国家自然科学基金（12275216、12575064、12247103）与陕西省自然科学基础研究计划（2025JC-YBQN-029）部分资助。
     > 原文："We sincerely thank the anonymous reviewers for their insightful suggestions, which have significantly enhanced this work. This research was supported in part by the National Natural Science Foundation of China (Grant Nos. 12275216, 12575064, 12247103), by the Natural Science Basic Research Plan in Shaanxi Province of China (Grant No. 2025JC-YBQN-029)."

---

## 九、主要引用的关键文献（据原文 References）

| 编号 | 文献 | 原文引用 |
| --- | --- | --- |
| [20] | S.-P. Wu, S.-W. Wei, "Thermodynamics and phase transition of Bardeen–AdS–class black holes", Class. Quantum Grav. **42** (7): 075015 (2025) | > "[20] S.-P. Wu and S.-W. Wei, 'Thermodynamics and phase transition of Bardeen–AdS–class black holes,' Class. Quantum Grav., 42 (7): 075015 (2025)." |
| [24] | R. Li, J. Wang, "Thermodynamics and kinetics of Hawking-Page phase transition", Phys. Rev. D **102** (2): 024085 (2020) | > "[24] R. Li and J. Wang, 'Thermodynamics and kinetics of Hawking-Page phase transition,' Phys. Rev. D, 102 (2): 024085 (2020)." |
| [29] | Z.-M. Xu, B. Wu, W.-L. Yang, "Rate of the phase transition for a charged anti-de Sitter black hole", Sci. China Phys. Mech. Astron. **66** (4): 240411 (2023) | > "[29] Z.-M. Xu, B. Wu, and W.-L. Yang, 'Rate of the phase transition for a charged anti-de Sitter black hole,' Sci. China Phys. Mech. Astron., 66 (4): 240411 (2023)." |
| [30] | C. Ma, P.-P. Zhang, B. Wu et al., "The kramers escape rate of phase transitions for the 6-dimensional Gauss-Bonnet AdS black hole with triple phases", Phys. Lett. B **861**: 139282 (2025) | > "[30] C. Ma, P.-P. Zhang, B. Wu et al., 'The kramers escape rate of phase transitions for the 6-dimensional Gauss-Bonnet AdS black hole with triple phases,' Phys. Lett. B, 861: 139282 (2025)." |
| [36] | H. Risken, The Fokker-Planck Equation (Springer, 1989) | > "[36] H. Risken, 'Fokker-planck equation,' in The Fokker-Planck Equation: Methods of Solution and Applications. Springer: 63–95 (1989)." |
| [37] | R. Zwanzig, Nonequilibrium statistical mechanics (Oxford University Press, 2001) | > "[37] R. Zwanzig, Nonequilibrium statistical mechanics, Oxford University Press (2001)." |
| [38] | Z.-M. Xu, B. Wu, W.-L. Yang, "van der Waals fluid and charged AdS black hole in the Landau theory", Class. Quantum Grav. **38** (20): 205008 (2021) | > "[38] Z.-M. Xu, B. Wu, and W.-L. Yang, 'van der Waals fluid and charged AdS black hole in the Landau theory,' Class. Quantum Grav., 38 (20): 205008 (2021)." |

---

## 十、一句话结论（皆对应上文引文）

- Type I：小↔大黑洞相变中，正则黑洞依其所在位置扮演**稳定/亚稳中间态**或**不稳定过渡态**（第 72、77、95–97 条）。
- Type II：真空态与小黑洞态之间发生**唯一真实相变**，过程不涉及正则黑洞（第 79、83、98–101 条）。
- 方法学要点：MFPT 用精确积分、Kramers 速率用二阶展开解析式，二者只在深阱条件下近似互逆，本文势场不满足该条件（第 64、86–90 条）。

---

## 十一、问答（补充调查）

> 本节专题回答一个问题：第 10 条引文里"第一定律的要求导致熵—面积律与 Hawking 温度冲突，电磁势也需要重新定义"到底指什么。依据为原文 [17][18][19] 三条引用，以及本文档对 [17] 关键公式的独立复算。

### Q1. 这句话的原文与三条引用分别是什么

- 待解释的原句：> 原文："However, several issues arose at this point. For instance, the requirements of the First Law led to a conflict between the entropy-area law and the Hawking temperature [17, 18]. Simultaneously, the electromagnetic potential also required redefinition [19]."（[25791] §I）
  [引·25791 §I（即本总结第 10 条）]

- [17] 对应：M.-S. Ma, R. Zhao, *Corrected form of the first law of thermodynamics for regular black holes*, Class. Quantum Grav. **31**(24): 245014 (2014)，arXiv:1411.0833。
  [引·25791 References 条目 [17]："[17] M.-S. Ma and R. Zhao, 'Corrected form of the first law of thermodynamics for regular black holes,' Class. Quantum Grav., 31 (24): 245014 (2014)."；arXiv 记录显示作者单位为山西大同大学物理系（"a Department of Physics, Shanxi Datong University, Datong 037009, China"）]

- [18] 对应：C. Lan, Y.-G. Miao, *Entropy and Topology of Regular Black Holes*, arXiv:2105.00218（2021-05-01 提交）。
  [引·25791 References 条目 [18]："[18] C. Lan and Y.-G. Miao, 'Entropy and topology of regular black holes,' arXiv:2105.00218 (2021)."]

- [19] 对应：C. Lan, Y.-G. Miao, *Entropy of Regular Black Holes in Einstein's Gravity*, Chin. Phys. Lett. **40**(12): 120401 (2023)，DOI 10.1088/0256-307X/40/12/120401。
  [引·25791 References 条目 [19]："[19] C. Lan and Y.-G. Miao, 'Entropy of regular black holes in Einstein's gravity,' Chin. Phys. Lett., 40 (12): 120401 (2023)."；DOI 经 Crossref 记录核验：`"DOI":"10.1088/0256-307x/40/12/120401"`、"volume":"40"、"page":"120401"、"container-title":["Chinese Physics Letters"]]

### Q2. "冲突"的具体内容（出自 [17]）

- [17] 指出存在两条算温度的路：一条由度规给出
  $$T_h=\frac{\kappa}{2\pi}=-\frac{1}{4\pi}\frac{\partial_rg_{tt}}{\sqrt{-g_{tt}g_{rr}}}\Big|_{r=r_h}=\frac{1}{4\pi}f'(r)\Big|_{r=r_h}\qquad\text{（原文式 (5)）}$$
  另一条由第一定律与熵给出
  $$T_H=\frac{\partial M}{\partial S}\Big|_{J,\dots}\qquad\text{（原文式 (6)）}$$
  并指出"如果黑洞热力学第一定律总是成立，两个温度 $T_h$ 与 $T_H$ 就应当相同"。
  [引·[17] §II："the temperature of the above black hole can be expressed as"（式(5)）；"From Eq.(1), it seems that the temperature of a black hole can also be derived according to the entropy"（式(6)）；"If the first law of black hole thermodynamics is always satisfied, the two temperatures $T_h$ and $T_H$ should be the same."]

- 该文随即用三个例子演示矛盾，第一个就是 Bardeen 黑洞：$f(r)=1-\frac{2Mr^2}{(r^2+g^2)^{3/2}}$，$M=\frac{(g^2+r_h^2)^{3/2}}{2r_h^2}=\frac{\pi(S/\pi+g^2)^{3/2}}{2S}$（$S=\pi r_h^2$）。
  [引·[17] §II 式(8)(9)："Bardeen black hole. For this black hole, the function $f(r)$ is"（式(8)）；式(9)]

- 两种算法给出
  $$T_H=\frac{(S-2\pi g^2)\sqrt{g^2+S/\pi}}{4S^2}=\frac{(r_h^2-2g^2)\sqrt{g^2+r_h^2}}{4\pi r_h^4}\qquad\text{（原文式 (10)）}$$
  $$T_h=\frac{M(r_h^3-2g^2r_h)}{2\pi(g^2+r_h^2)^{5/2}}=\frac{r_h^2-2g^2}{4\pi g^2r_h+4\pi r_h^3}\qquad\text{（原文式 (11)）}$$
  [引·[17] §II 式(10)(11)]

- [17] 对这两式的判词：> 原文："Obviously, the two temperatures are different generally, which means the inconsistency between the area law and the first law of black hole thermodynamics. When $g=0$, they will coincide and agree with the temperature of Schwarzschild black hole."
  [引·[17] §II 式(11) 之后]

- **本文独立复算（[算·Q1–Q6]，脚本见本节末）**：由 $f(r)=1-2Mr^2/(r^2+g^2)^{3/2}$ 与视界条件解出 $M=\frac{(g^2+r_h^2)^{3/2}}{2r_h^2}$（与式(9) 之差为 0）；由 $T_H=\frac{1}{2\pi r_h}\frac{dM}{dr_h}$ 得 $T_H=\frac{(r_h^2-2g^2)\sqrt{g^2+r_h^2}}{4\pi r_h^4}$（与式(10) 之差为 0）；由 $T_h=\frac{f'(r_h)}{4\pi}$ 得 $T_h=\frac{r_h^2-2g^2}{4\pi r_h(g^2+r_h^2)}$（与式(11) 之差为 0）。取 $g\to0$，两者同时趋于 $1/(4\pi r_h)$；取 $g=0.3,\ r_h=1$ 得 $T_h=0.0598656$、$T_H=0.0681267$，比值 $0.87874$。
  [算·Q1–Q6]

- [17] 指出这导致二者只能取其一：> 原文："If choosing to believe in the Bekenstein-Hawking area law, we have to abandon the first law of black hole thermodynamics due to the wrong temperature derive from Eq.(6). On the other hand, if we require that the first law is satisfied with the regular black holes, the entropy is no longer the Bekenstein-Hawking one."
  [引·[17] §II："One can see from the above examples that there are two temperatures or two entropies."及其后]

- 已有作者选择了"保第一定律、弃面积律"这条路：从式(11) 的 Hawking 温度出发、用 $S=\int dM/T_H$ 反解熵，得到 $$S=\pi r_h\frac{r_h^2-2g^2}{\sqrt{r_h^2+g^2}}+3\pi g^2\ln\!\left(r_h+\sqrt{r_h^2+g^2}\right)\qquad\text{（原文式 (12)）}$$
  [引·[17] §II 式(12)："Some authors choose to start with the Hawking temperature, Eq.(11), and employ Eq.(7) to derive the entropy [Cheng; Sharif]. The result is"]

- [17] 对那个熵的评价是：> 原文："Although this entropy fulfills the firs law, it lacks a reasonable explanation. In fact, the result does not only violate Wald's formula, Eq.(3), but also Visser's result."
  [引·[17] §II 式(12) 之后]

- [17] 给出的根源与修正：关键在于物质场的能量—动量张量里含有黑洞质量 $M$ 本身。设 $f(r)=1-2m(r)/r$，由爱因斯坦方程得 $m(r)=M+4\pi\int_r^\infty r^2T^0{}_0\,dr$，取变分后有
  $$\left(1+4\pi\int_{r_h}^{\infty}r^2\frac{\partial T^0{}_0}{\partial M}dr\right)\delta M=\left(\frac{1}{4\pi r_h}+2r_hT^0{}_0\right)\frac{\delta A}{4},\qquad\text{即}\qquad C(M,r_h)\,\delta M=T_h\,\frac{\delta A}{4}\qquad\text{（原文式 (32)）}$$
  [引·[17] §III 式(28)(30)(31)(32)：式(32) 后紧接 "In fact, this should be the first law of black hole mechanics. Due to the above equation, if the Bekenstein-Hawking area law, namely $S=A/4$, is satisfied, the conventional first law of thermodynamics must be violated for the regular black holes we studied."]

- 于是两个温度的关系是 $T_h=C(M,r_h)\,\partial M/\partial S=C(M,r_h)\,T_H$（原文式 (33)）。
  [引·[17] §III："Therefore, if the entropy of the regular black holes satisfy the area law, the temperature should be $T_h=\left(1+4\pi\int_{r_h}^\infty r^2\frac{\partial T^0{}_0}{\partial M}dr\right)\frac{\partial M}{\partial S}=C(M,r_h)\frac{\partial M}{\partial S}=C(M,r_h)T_H$"（式(33)）]

- 由此产生两种"记账方式"：> 原文："We have two choices to connect Eq.(32) with the first law of thermodynamics, $\delta E=T\delta S$. The first one is $E\leftrightarrow M,\ \delta S\leftrightarrow\delta A/4/C(M,r_h),\ T\leftrightarrow T_h$; The second one is $S\leftrightarrow A/4,\ \delta E\leftrightarrow C(M,r_h)\delta M,\ T\leftrightarrow T_h$. We tend to believe the latter one."
  [引·[17] §III 式(32) 之后]
- 其直接结论是：> 原文："Thus the black hole mass $M$ cannot be considered as the internal energy $E$ of the black hole system generally."
  [引·[17] §III；同文摘要亦云："In this case, the black hole mass $M$ can no longer be considered as the internal energy of the regular black holes."]

- Bardeen 黑洞的修正因子有闭式：$C(M,g,r_h)=1-3g^2\int_{r_h}^{\infty}\frac{r^2}{(r^2+g^2)^{5/2}}dr=\frac{m(r_h)}{M}$（原文式 (37)）。
  [引·[17] §III 式(37)；其中 $m(r_h)=r_h/2$（由 $f(r_h)=0$、$f=1-2m(r)/r$）]

- **本文独立复算**：$T_h/T_H$ 的符号化简结果恰好等于 $\dfrac{r_h^3}{(r_h^2+g^2)^{3/2}}=\dfrac{m(r_h)}{M}$，与式(37) 完全一致（差为 0）。
  [算·Q3']

### Q3. [18][19] 的意见：不应放弃面积律

- [18] 的结论是熵严格正比于面积：> 原文："We calculate the entropy of spherically symmetric regular black holes by the path integral and Noether-charge method. Both methods provide an evidence that the entropy of regular black holes should be proportional to quarter of area, and there is no violation of entropy/area law at all."
  [引·arXiv:2105.00218 摘要]

- [19] 用路径积分法得到同样结论：> 原文："We calculate the entropy of spherically symmetric regular black holes by the path-integral method in Einstein's gravity. This method provides evidence that the entropy of spherically symmetric regular black holes is proportional to a quarter of horizon area, indicating no violation of the entropy-area law."
  [引·Chin. Phys. Lett. 40, 120401 (2023) 摘要，经 Crossref 元数据 `"abstract"` 字段取得]

- 因此 [18][19] 与 Q2 末段那条"保第一定律、弃面积律"的路**立场相反**：面积律是对的，冲突必须靠第一定律侧的额外修正来化解。
  [推·由上述两条摘要与 Q2 中 [17] 对式(12) 的批评合并得出]

- 同一条路线的另一篇 Lan–Miao 工作把这件事说得更具体：> 原文："In the view of the Gliner vacuum, we remove the deformations in the first law of mechanics for regular black holes, where one part of deformations associated with black hole mass will be absorbed into enthalpy or internal energy, and the other part associated with parameters rather than mass will constitute a natural $V$-$P$ term. … In particular, the linear relation between the entropy and horizon area remains unchanged for regular black holes."
  [引·C. Lan, Y.-G. Miao, *Gliner Vacuum, Self-consistent Theory of Ruppeiner Geometry for Regular Black Holes*, arXiv:2103.14413 = Eur. Phys. J. C 82, 1152 (2022)，摘要]

### Q4. "电磁势也需要重新定义"指什么

- [17] 把结论推广到带电情形：$$C(M,Q,r_h)\,\delta M=T_h\,\delta S+\Phi_h\,\delta Q\qquad\text{（原文式 (34)）}$$ 其中 $C(M,Q,r_h)=1+4\pi\int_{r_h}^{\infty}r^2\frac{\partial T^0{}_0}{\partial M}\big|_Q dr$。
  [引·[17] §III 式(34) 及其后]

- 关键是电荷的共轭势要由电场重新算出，而不是照搬朴素的 $Q/r_h$：> 原文："the electric potential on the horizon can be calculated according to electric field, $\Phi_h=\int_{r_h}^{\infty}E\,dr$."
  [引·[17] §III 式(34) 之后]

- [17] 还强调这个问题的触发条件正是 $T^\mu{}_\nu$ 含 $M$：> 原文："When this is applied to the case of linear or nonlinear electrodynamics, even with scalar fields, the first law also holds true and the first term on the right hand side will be replaced with $\Phi\delta Q+\dots$ [Rasheed; Gibbons]. But, if the energy-momentum tensor $T_{\mu\nu}$ includes the black hole mass $M$, the situation will be very different."
  [引·[17] §III]

- 综合起来：正则黑洞的引力源是非线性电磁场，且其 $T^\mu{}_\nu$ 显含 $M$；因此电荷的共轭势不能再取标准形式 $Q/r_h$，而必须按"电场积分 + 修正因子 $C$"重新定义。这就是"电磁势也需要重新定义"的物理内容。
  [推·合并 [17] 式(34) 与其后两段引文]

- **未验证项**：[25791] 把"电磁势需要重新定义"这一条归给 [19]；本文档只取得 [19] 的标题与摘要（摘要仅陈述熵—面积律），其全文未能获取，故"重新定义"在 [19] 中的确切措辞与公式**未经验证**，上一条的解释是依据 [17] 的同类论述给出的。
  [算·无；引·[19] 摘要（见 Q3）]

- 一个同构的旁证（属本文档独立计算，非 [19] 内容）：在"RN 黑洞 + 腔壁"的情形，电荷共轭势同样不等于朴素的 $Q/r_h$——本工作区另一份笔记算出 $\Phi=\dfrac{q(1-x)}{Gxy}$，即标准电势差 $q(1-x)/x$ 再除以红移因子 $y$。
  [引·本工作区 `RN腔版-从RN-AdS移植的完整计算.md` 第 36 条："标准的视界—腔壁电势差为 $Q/r_h-Q/r_B=q(1-x)/x$；本条结果等于它再除以红移因子 $y$，即腔壁上实测的红移电势。"]

### Q5. 这与 [25791] 自己的做法是什么关系

- [25791] 走的是**第三条路**：把 $m_0,q_0$ 固定为纯耦合常数、把 $m,q_m$ 当作独立积分常数（第 23 条），代价是第一定律与 Smarr 关系多出物质/耦合项：$dM=T_hdS+VdP+\Phi_mdQ_m+\phi_mdm_0+\phi_qdq_0$ 与 $M=2T_hS-2VP+\Phi_mQ_m+\phi_mm_0+\phi_qq_0$（第 29、31 条）。
  [引·[25791] 式(13)(15)（第 29、31 条已引）]

- 它与 [17] 的 $\big(C\delta M=T_h\delta S+\Phi_h\delta Q\big)$ 是同一物理问题的两种记账方式：要么在左端乘修正因子 $C$ 并承认 $M$ 不等于内能（[17] 的选择），要么保留 $M$ 而把修正挪到右端成为额外的共轭势项（[25791] 的选择）。
  [推·对照 [17] 式(34) 与 [25791] 式(13)]

- 这也解释了 [25791] 为何要专门强调 Smarr 关系被"一致验证"（第 32 条）：> 原文："Substituting the explicit expressions of thermodynamic variables into the Smarr relation leads to its consistent verification. It follows that this thermodynamic construction, which separates the integration constants from the coupling parameters, is self-consistent."
  [引·[25791] §II 式(15) 之后]

- 对本总结正文的影响：第 10–12 条只是**问题的陈述**，其确切含义即本节 Q2–Q4；第 29–32 条的推广第一定律与 Smarr 关系正是同一技术路线下的产物，两者不矛盾。
  [推·由本节 Q2–Q4 与第 29–32 条合并]

### Q6. 补充：本节用到的复算脚本

```wolfram
fB[r_, gg_, MM_] := 1 - 2 MM r^2/(r^2 + gg^2)^(3/2);
Mh = (g^2 + rh^2)^(3/2)/(2 rh^2);
(* Q2: T_h = f'(rh)/4Pi ，与 [17] 式(11) 比较 *)
Th = Simplify[Derivative[1, 0, 0][fB][rh, g, Mh]/(4 Pi)];
Simplify[Th - (rh^2 - 2 g^2)/(4 Pi rh (g^2 + rh^2))]        (* 0 *)
(* Q3: T_H = dM/dS ，与 [17] 式(10) 比较 *)
TH = Simplify[(1/(2 Pi rh)) D[Mh, rh]];
Simplify[TH - (rh^2 - 2 g^2) Sqrt[g^2 + rh^2]/(4 Pi rh^4)]  (* 0 *)
(* Q4/Q3': 修正因子 C = m(rh)/M = T_h/T_H ，与 [17] 式(37) 比较 *)
Simplify[Th/TH - (rh/2)/Mh]                                  (* 0 *)
(* Q5: Schwarzschild 极限 *)
{Limit[Th, g -> 0], Limit[TH, g -> 0]}                       (* {1/(4 Pi rh), 1/(4 Pi rh)} *)
(* Q6: 数值 *)
{Th, TH, Th/TH} /. {g -> 0.3, rh -> 1}                        (* 0.0598656, 0.0681267, 0.87874 *)
```

- 输出摘要：`T_h` 与 [17] 式(11) 之差为 `0`；`T_H` 与 [17] 式(10) 之差为 `0`；`T_h/T_H = m(r_h)/M`（差为 `0`，对应 [17] 式(37)）；$g\to0$ 时两者同为 $1/(4\pi r_h)$；$g=0.3,\ r_h=1$ 时 $T_h=0.0598656$、$T_H=0.0681267$、比值 $0.87874$。
  [算·Q1–Q6]

### Q7. 本节一句话结论

- [25791] 那句话的含义是：对非线性电磁场引力源的正则黑洞，若坚持 $S=A/4$，则 $T_h=f'(r_h)/4\pi$ 与 $T_H=\partial M/\partial S$ 不一致（[17]），该矛盾源于 $T^\mu{}_\nu$ 含 $M$、需引入修正因子 $C$ 与额外共轭项（[17]），而 [18][19] 主张面积律无误、矛盾应在第一定律一侧化解（[18][19]），因此电荷共轭势也须按电场重新定义而非取 $Q/r_h$（[17]）。

---

## 十二、文件清单

- [`2604.25791v1.pdf`](/notes/文章整理/arXiv-2604.25791v1/2604.25791v1.pdf)：本文 PDF（arXiv 官方版，2026-09-12 下载）
- `2604.25791v1.html`：本文 HTML 全文（arXiv LaTeXML，2026-09-12 下载；论文内图形与 `/static` 样式已改写为绝对地址，图形需联网显示）
- `总结-平均首通时间与Kramers逃逸率.md`：本文件
- 本目录从未保存 LaTeX 源（原本只有 PDF 与笔记），无需清理
  [引·本节 Q2–Q4；[25791] §I 与 References 条目 [17][18][19]]
