---
title: "备注：「听得见奇点的缺席吗？」——正规黑洞的渐近 QNM 谱"
folder: "文章整理/准正规模QNM/arXiv-2610.37028v1"
---

## 基本信息

- 标题：**Can One Hear the Absence of a Singularity?**
- arXiv：`2610.37028v1`（gr-qc，交叉 hep-th；投稿/更新 2026-10-27，CC BY 4.0）
- 作者：Matteo Della Rocca（Sapienza Università di Roma & INFN Roma）、Paolo Pani（同）、Andrea P. Sanna（INFN Roma）
- 体裁：Letter，**6 + 10 页，4 张图**（图 1–2 在正文，图 3–4 在 Supplemental Material）
- 资助：MUR FIS2 Advanced Grant ET-NOW（CUP B53C25001080001）、INFN TEONGRAV
- 结构：正文无编号小节，分节标记为 `Introduction.–` / `Highly damped modes combining monodromy and WKB methods.–` / `Regular BHs.–` / `Singular BHs.–` / `Connection to the BH spectral instability.–` / `Discussion.–`；附录为 `Supplemental Material` 的 **SM.1–SM.5**

## 文件清单

- [`2610.37028v1.pdf`](/notes/文章整理/准正规模QNM/arXiv-2610.37028v1/2610.37028v1.pdf)（arXiv 官方 PDF，约 830 KB）
- `2610.37028v1.html`（LaTeXML 全文；图形与静态资源已指向 arXiv 绝对地址）
- `备注-奇点缺失与渐近QNM谱.md`（本文件）

---

## 一、一句话结论

对**很广的一类静态球对称渐近平直正规黑洞**（度规函数在 $r_0\neq0$ 处以 $H\equiv FB$ 的极点作解析延拓），**高阶 overtone 极限下 $\mathrm{Re}[\omega_n]\to 0$**，而 Schwarzschild 是 $\mathrm{Re}[\omega_n]\to T_H\ln 3$。这个差别在正规化参数 $q\to0$ 时**不连续地**保留：$q\to0$ 与 $n\to\infty$ 的极限**不可交换**（$q$ 的物理含义、不可交换的确切含义见 **Q2**）。作者把它解读为**黑洞谱不稳定性**（任意小的几何改动在高 overtone 处被指数放大）的一个最干净的实例，并据此提出「$q$ 的 UV 修正只有真的**解掉奇点**才会给出式 (2)」。

> 注意标题的呼应：Berks 的 "can one hear the shape of a drum"（见文中 **Hod** 用 $\mathrm{Re}[\omega]$ 作跃迁频率、**Maggiore** 用 $\sqrt{\mathrm{Re}^2+\mathrm{Im}^2}$ 定面积量子，引言段）。这里是「**听得见'没有奇点'**」，但作者在 Discussion 里明确说**观测上做不到**。

---

## 二、问题设定与出场人物（引言段）

- 奇点由 Penrose–Hawking 定理普遍预言（Refs. [69],[39],[71]），其消解被普遍期待来自量子引力。
- 唯象路线：用**有效几何**把 Schwarzschild 奇点换成正则核（综述 Ref. [21]），**视界外**偏差可以任意小、自然被 $\ell_P/M$ 压低。
- 于是核心问题：**当外部几何任意接近 Schwarzschild 时，"没有奇点"还能在谱上留下印记吗？**（「任意接近」的准确定义、以及它**不是**什么意思，见 **Q1**）
- 已有的动机链条：Schwarzschild 的渐近谱 $\omega_n\sim T_H\ln 3-2\pi i T_H n$（式 (1)，Refs. [63]=Motl–Neitzke、[2]=Andersson–Howls）→ **Hod** 用 Bohr 对应原理得面积量子 $\propto\ln3$（Ref. [41]）→ **Maggiore** 改用 $\sqrt{\mathrm{Re}^2+\mathrm{Im}^2}$，得 $\Delta A=8\pi\ell_P^2$（Ref. [55]）。
- 作者立场：高阶模与常规 ringdown 关心的低阶模**定性不同**（Ref. [13]），其复 $r$ 平面的解析结构由 **monodromy 法**刻画（Refs. [63],[2],[32],[64]），而该方法近年被重新用来「从渐近谱读出黑洞内部与量子修正」（Refs. [37],[27],[28]）。
- 表面上的张力：「若改动只局限在奇点周围任意小的区域，其谱印记难道不该随区域收缩而连续消失？」——答案：**不会**。

## 三、框架：monodromy + WKB（`Highly damped modes…` 段，SM.1–SM.3）

### 3.1 主方程

线元（式 (3)）


$$
\mathrm{d}s^2=-F(r)\,\mathrm{d}t^2+B(r)^{-1}\mathrm{d}r^2+r^2\,\mathrm{d}\Omega^2
$$


无质量标量场按 $\Phi=r^{-1}\sum_{\ell m}e^{-i\omega t}Y_{\ell m}(FB)^{-1/4}\Psi$ 展开，径向方程为类 Schrödinger 形式（式 (4)–(5)）

$$\frac{\mathrm{d}^2\Psi}{\mathrm{d}r^2}+R(r)\Psi=0,\qquad
R=\frac{\omega^2}{H}-\frac{\ell(\ell+1)}{r^2B}+\frac{3H'^2}{16H^2}-\frac{(r^2H')'}{4r^2H},\quad H\equiv BF .$$

### 3.2 极点的局部结构（式 (7)）

若 $H$ 在 $r_0\in\mathbb{C}$ 处有 $2N$ 阶极点，


$$
B\sim(r-r_0)^{-z},\qquad F\sim(r-r_0)^{-2N+z},
$$


- **奇异黑洞**：$r_0=0$（$N>0$ 无穷大处，$z$ 由 $F\sim1-2M/r$ 的修正决定）；
- **正规黑洞**：$r_0\neq0$（$q^p+r^p=0$ 的复根；这里的 $q$ 就是式 (14) 的**正则化尺度**，含义见 **Q2**）。

### 3.3 必须用 Langer 型修改（式 (25)–(26)，SM.1）

标准 WKB 取 $Q^2=R$ **不能**复现 $r_0$ 附近的局部解（转折点在 $|\omega|\to\infty$ 时向极点堆积，Refs. [50],[2]）。正确的局部形式是


$$
Q^2=R-\frac{1}{4(r-r_0)^2},
$$


适用条件：**$r_0\neq0$ 时 $z>-2$；$r_0=0$ 时 $z>0$ 且 $N\neq2$**。这些特殊情形在 SM.1 里逐个讨论（见 §七）。

### 3.4 关键量：相邻转折点之间的相位积分 $\gamma$（式 (11)、SM.1 式 (28)）


$$
\gamma=\begin{cases}\dfrac{\pi}{2}, & r_0\neq0\\[2mm] \dfrac{|N-1|}{N+1}\dfrac{\pi}{2}, & r_0=0\end{cases}
$$


推导骨架：把式 (19) 代入式 (5) 保留领头项得 $R\sim\omega^2 b f (r-r_0)^{2N}-\frac{N(N\pm2)}{4(r-r_0)^2}+\cdots$（式 (20)，$+$ 对应 $r_0\neq0$、$-$ 对应 $r_0=0$），故 $Q^2\sim-\frac{1+4\alpha}{4(r-r_0)^2}$（$\alpha=N(N\pm2)/4$）；与「$\omega^2$ 主导区」的 $Q^2\sim\mathcal{P}^2\omega^2(r-r_0)^{2N}$（式 (23)–(24)）对比，取插值式 (25)，令 $y\equiv 2\omega\mathcal{P}(r-r_0)^{N+1}/\sqrt{1+4\alpha}$ 后得


$$
\gamma=\frac{\sqrt{1+4\alpha}}{2(N+1)}\left|\int_{-1}^{1}\mathrm{d}y\,\sqrt{1-y^{-2}}\right|=\frac{\sqrt{1+4\alpha}}{2(N+1)}\pi .
$$


于是 $r_0\neq0$：$\alpha=N(N+2)/4\Rightarrow\sqrt{1+4\alpha}=N+1\Rightarrow\gamma=\pi/2$（**与 $F,B$ 无关！**）；$r_0=0$：$\alpha=N(N-2)/4\Rightarrow\sqrt{1+4\alpha}=|N-1|$。

> **这就是全文的枢纽**：$\gamma$ 是否等于 $\pi/2$，**只取决于 $r=0$ 处有没有奇点**。

### 3.5 普适的 monodromy 条件（式 (8)，SM.3）

对图 1 的闭合回路 $\Lambda$（从无穷远出发，依次绕外视界、内视界再回来）沿 Stokes/anti-Stokes 网络解析延拓，令回到起点时次支配解系数 $\mathcal{B}=0$（SM.3 式 (55)–(56)），得


$$
\boxed{\;e^{2i\Gamma_e}=1-\left(1+e^{-2i\gamma}\right)\left(1+e^{2i\gamma}\right)\left(1+e^{-2i\Gamma_i}\right)\;}
$$


其中

$$\Gamma_e=-2\pi i\lim_{r\to r_+}Q=-i\frac{\omega}{2T_H}\quad(\text{式 (9)}),\qquad
\Gamma_i=\oint_{\mathcal{C}_i}Q\,\mathrm{d}r=-2\pi i\!\!\sum_{r_p\in\mathrm{Int}(\mathcal{C}_i)}\!\!\!\mathrm{Res}_{r\to r_p}Q\quad(\text{式 (10)}).$$

- $T_H=F'(r_+)B'(r_+)/4\pi$；$\mathcal{C}_i$ 是绕**内视界及其它一切非 $r_+$ 奇点**的小回路（图 1 插图；**单视界时该回路不存在**）。
- 条件 (8) 的**普适性**：SM.3 证明它与内回路里**包住多少、怎么排布转折点无关**（$\mathcal{N}$ 奇偶两种情形代入式 (57) 都给式 (8)，SM.3 式 (58)–(59)）。模型依赖全部集中在 $\gamma,\Gamma_e,\Gamma_i$ 三个量里。
- **技术要点（SM.3 末）**：正规黑洞 $\gamma=\pi/2$ 在领头阶会让式 (56) 变成恒等式，真正起作用的是**次领头修正**把 $\gamma$ 推离 $\pi/2$。

---

## 四、正规黑洞：$\mathrm{Re}[\omega_n]\to0$（`Regular BHs.–` 段）

$r_0\neq0$ ⇒ $\gamma=\pi/2$ ⇒ $1+e^{2i\gamma}=0$ ⇒ 式 (8) 退化为

$$e^{2i\Gamma_e}=1\quad(\text{式 (12)})\;\Longrightarrow\;
\mathrm{Re}[\omega_n]\to0,\qquad \mathrm{Im}[\omega_n]\to-2\pi T_H n\quad(\text{式 (13)}).$$

- **普适性**：与 $F$、$B$ 的具体形状**无关**（只要满足式 (7) 的近极点行为、视界非退化）。适用于 dS 核的正规黑洞（Ref. [16]），并**复现**了某个具体模型的结果（Ref. [66]，Nomura–Tamaki）；也推广到 dS/Minkowski 核之间的插值族（Ref. [38]）。
- 与式 (1) 对照：$\mathrm{Re}$ 从 $T_H\ln3$ **跃到 0**，$\mathrm{Im}$ 的斜率 $2\pi T_H$ **不变**。

### 4.1 具体的单参数族（式 (14)）


$$
B(r)=F(r)=1-\frac{2Mr^2}{\left(r^p+q^p\right)^{3/p}},\qquad p>0,
$$


- $p=1$ = **Fan–Wang**、$p=2$ = **Bardeen**、$p=3$ = **Hayward**；
- 任意 $p>0$ 都趋于 **dS 核** $F\sim1-r^2/L_{\rm dS}^2$，$L_{\rm dS}=q^{3/2}/(2M)$，且渐近 Schwarzschild；
- 视界数：$q<q_{\rm ext}$ 两个、$q=q_{\rm ext}$ 一个简并、$q>q_{\rm ext}$ 没有；$q_{\rm ext}=2^{(p+2)/p}27^{-1/p}M$。**全文只考虑 $q<q_{\rm ext}$**；
- 对照式 (7)：$r_0=(-q^p)^{1/p}$，$z=N=3/p$。

### 4.2 数值确认（图 2，SM.4）

- 取 $\ell=2$、**前 500 个 overtone**：Fan–Wang（$p=1,q=0.1M$）、Bardeen（$p=2,q=0.2M$），与 Schwarzschild 表（Ref. [48]）对比。
- 上图 $-M\,\mathrm{Im}[\omega_n]/n$：Schwarzschild $\to1/4$；Fan–Wang $\to0.247$、Bardeen $\to0.246$（**斜率几乎不变**）。
- 下图 $M\,\mathrm{Re}[\omega_n]$：正规黑洞**振荡衰减到 0**，Schwarzschild 停在 $\ln3/(8\pi)$。
- **细节**：$\mathrm{Re}$ 以**阻尼振荡**方式趋于零（图中正负频率都画出来看振荡）；每次 $\mathrm{Re}$ 过零，$\mathrm{Im}[\omega_n]/n$ 出现**台阶状特征**。RN 也有 $\mathrm{Re}$ 振荡（Ref. [29]），但那里 $\mathrm{Re}$ **不**趋于零。
- **对前人结果的纠正**：与 **Ref. [49]（Lan & Wang, Chin. Phys. C 47, 025103 (2023)）** 的结论**不同**；作者认为 [49] 的近似「没有完整抓住正规黑洞几何的解析结构」，因而**错误地**给出非普适的渐近谱。

---

## 五、奇异黑洞：式 (15) 与「唯一例外」（`Singular BHs.–` 段）

### 5.1 单视界奇异黑洞（$r_0=0$）

此时 $\mathcal{C}_i$ **不存在**，式 (8) 形式上取 $\Gamma_i\to\infty$：

$$\mathrm{Re}[\omega_n]\to T_H\ln\!\left[1+2\cos\!\left(\frac{N-1}{N+1}\pi\right)\right],\qquad
\mathrm{Im}[\omega_n]\to-2\pi T_H n\quad(\text{式 (15)}),$$

与 Ref. [32]（Andersson–Howls 一系的工作）一致。

- **检验**：$N=1$（Schwarzschild）⇒ $\ln[1+2]=\ln3$ ✓ 唯一复现 Schwarzschild。
- $\mathrm{Re}\to0$ 只在 $N=(3+2j)/(1-2j)$、$j\in\mathbb{Z}$ 时发生；$N>0$ 的可行解仅 **$N=1/3$ 与 $N=3$**。
- 结论：**渐近谱对中心奇点的结构高度敏感**（不只是「有/无奇点」的二分）。

### 5.2 多视界奇异黑洞

$\Gamma_i$ 取式 (10)。要使 $\mathrm{Re}$ 渐近为零需 $\gamma=\pi/2+j\pi$（$j\in\mathbb{Z}$），与式 (11)（$N>0$ 时 $\gamma<\pi/2$）**不相容**。

> ⇒ **在本框架覆盖的这一大类里，「渐近纯阻尼谱」是正规黑洞的独有印记**，唯一例外是单视界奇异黑洞中精细调节的 $N=1/3,\,3$。

---

## 六、与谱不稳定性的联系 + 可观测性（`Connection…` / `Discussion.–`）

### 6.1 为什么小改动会造成大后果

- QNM 问题因视界与无穷远的**辐射边界条件**而**非自伴**（Refs. [65],[5],[43],[26],[10],[22],[60]）⇒ 背景的任意小扰动可引起大谱移；对**局域化**扰动，谱移随 $|\mathrm{Im}[\omega_n]|$ **指数增长**（Refs. [53],[42]，后者 = Ianniccari–Pani 等 PRL 133, 211401）。
- 因 $|\mathrm{Im}[\omega_n]|\propto n$，**任何固定的非零形变最终都会在足够大的 $n$ 处造成 $\mathcal{O}(1)$ 的谱变化** ⇒ **高阶 overtone 是外部几何中任意小修正的放大镜**。
- 于是 $q\to0$ 与 $n\to\infty$ **不可交换**是谱不稳定性的自然结果（"不可交换"的严格含义与 $n_c$ 见 **Q2**）；但**渐近 $\mathrm{Re}$ 的具体取值**（0 还是 $T_H\ln[\cdots]$）**保留了形变性质的信息**（「解掉奇点」vs「一般的高曲率修正」）。

### 6.2 观测上：基本无望（式 (16)–(18)，SM.5）

转变发生在转折点簇尺度 $\delta r\equiv|t_k-r_0|$ 与极点偏移 $|r_0|$ 可比时。对式 (14) 的族：

$$\delta r\sim\frac{1}{p}\left[\frac{M(3+p)\,q^{-1+3/p}}{|\omega|}\right]^{p/(3+p)}
\quad(\text{式 (16)}),\qquad
|\omega_c|\sim\frac{p+3}{p^{1+3/p}}\frac{M}{q^2}\quad(\text{式 (17)}),$$


$$
\boxed{\;n_c\sim\frac{p+3}{p^{1+3/p}}\left(\frac{M}{q}\right)^{2}\;}\quad(\text{式 (18)},\ \text{量级系数} \sim1)
$$


- **对 $q$ 的标度与 $p$ 无关**（值得注意的普适性）。
- Planck 尺度正规化（$q\sim\ell_P$）⇒ 天体黑洞的 $n_c$ **天文数字**；即便 $q\sim0.01M$ 也要 $n_c\sim\mathcal{O}(10^4)$。
- **第二重障碍**：高阶模寿命 $\tau_n\sim1/|\mathrm{Im}[\omega_n]|\propto1/n$，越来越短，难以与瞬时响应和邻近 overtone 分离；已有的前几个 overtone 提取本就很困难（Refs. [4],[25],[76],[59],[13]），$n\sim10^4$ 乃至更大**连未来探测器也够不着**。
- **开放问题**：高阶模对奇点消解的**非微扰敏感性**，能否盖过「基模偏差虽小（$\mathcal{O}[(q/M)^p]$）但测得准」的优势？另外渐近谱可能通过**推迟格林函数的解析结构**影响整体 ringdown（Ref. [3]）。
- **不受影响的东西**：$\mathrm{Im}$ 间距仍是 $2\pi T_H$ ⇒ **Maggiore 的面积量子 $\Delta A=8\pi\ell_P^2$ 不变**（Ref. [55]）。

### 6.3 推广与保留

- 只做了**球对称、试探标量**；作者预期定性结论对**引力扰动**与**转动黑洞**仍成立。
- **未处理简并视界**：那时 monodromy 计算的解析结构改变（Refs. [58],[31]），且「高阶 overtone 极限」与「极端极限」的相互作用可能给出**定性不同**的渐近谱。

---

## 七、Supplemental Material 里值得单独记的点

- **SM.1（$\gamma$ 的推导与边界情形）**
  - 一般式 (28)：$\gamma=\frac{\sqrt{1+4\alpha}}{2(N+1)}\pi$。
  - $r_0\neq0,\ z=-2$（式 (31)）：$\alpha=\frac{N(N+2)}{4}+\frac{\ell(\ell+1)}{b(r_0)r_0^2}$；$r_0=0,\ z=0$（式 (32)）：$\alpha=\frac{N(N-2)}{4}+\frac{\ell(\ell+1)}{b(0)}$ ⇒ $\gamma$ 变成**显含 $\ell$**。
  - **特殊但重要**：$r_0=0,N=2,z=0$ ⇒ 几何项消失，$\alpha=\ell(\ell+1)b(0)$（式 (33)），对应**圈量子引力启发的奇异黑洞**（Ref. [61]），可**复现** Ref. [62]（Montagnon 2025）的结果。
  - $r_0=0,N=2,z\ge2$：$R$ 在 $r=0$ 正则，局部 WKB 失效；保留领头项得 Bessel 方程，解为 $\Psi=r\omega[c_1J_{-1/6}+c_2J_{1/6}](/notes/文章整理/准正规模QNM/arXiv-2610.37028v1/\tfrac13r^3\mathcal{P}\omega)$（式 (34)），改用 Motl–Neitzke 的匹配（其式 (62)，$j=1/3,\ \delta=\Gamma_i$）⇒ **RN 属于这一类（$z=2$）**。
  - $r_0\neq0,z<-2$ 或 $r_0=0,z<0$：角动量项比平方反比项更奇异，**超出本文框架**。
- **SM.2（anti-Stokes 网络的存在性）**：靠三处局部结构 + 「不同 anti-Stokes 线不能在非转折点的正则点相交/终止」的约束论证 $\Lambda$ 存在。渐近方向 $\arg\bar r\to\pm\pi/2$（$\bar r=r/2M$，式 (36)）；视界附近局部为**圆**（式 (37)）；极点附近由式 (38) 定形。Bardeen 的分支点需在**黎曼面上**追踪。
- **SM.3**：完整写出沿 $\Lambda$ 的 Stokes 跳变链（式 (43)–(55)），$\mathcal{B}=-i(1+e^{-2i\gamma})(e^{-i\Gamma_e}-\mathcal{A})$。**关键提醒**：正规黑洞 $\gamma=\pi/2$ 时 $1+e^{-2i\gamma}$ 结构会让式 (56) 看着像恒等式，实际由次领头修正打开。
- **SM.4（数值）**
  - **Fan–Wang**：$F=[(r-r_+)(r-r_-)(r+r_3)]/(r+q)^3$（式 (60)，$r_3$ 为负实根）；极点 $r=-q$ 处 $N=3,\ \mathcal{P}=-1/(2Mq^2),\ \alpha=15/4$（式 (62)）⇒ $Q^2_{\rm FW}=\frac{\omega^2(r+q)^6}{4M^2q^4}\left[1-\frac{16M^2q^4}{\omega^2(r+q)^8}\right]$（式 (63)）⇒ **8 个转折点**聚在 $r=-q$（图 3）。
  - 数值方程（式 (64)），BC 为式 (65)–(66)（$\sigma_+=\omega/F'_{\rm FW}(r_+)$）；Frobenius 展开式 (68) ⇒ **8 项递推**；用 Gaussian 消元化为三项 + **Leaver 连分式**。
  - 数值细节（**想复现就看这段**）：Gaussian 消元在大 $|\omega|$ 有严重抵消 ⇒ **四倍/任意精度（200 bit）**，系数按 60 位有效数字准备；连分式截断 $N_{\max}\sim10^5$ + 余项按 $N_{\max}^{-1/2}$ 展开到 12 阶；overtone 逐个（第 $n$ 次求逆）按阻尼递增标记；收敛检查对截断深度/尾阶/求逆指标/精度四项；**$n=150$ 以下与 Mathematica 的 Hill 行列式法交叉验证**（Refs. [56],[68]）。频率稳定度优于 $10^{-10}$，仅在 $\mathrm{Re}[\omega_n]$ 最深处降到 $\sim10^{-7}$；余项在**负虚 $\omega$ 轴有分支割线**，overtone 在 $\mathrm{Re}$ 的零点附近穿越它 ⇒ 需**解析延拓余项**（类似 Schwarzschild 在代数特殊频率附近的做法，Refs. [51],[54]）。
  - **Bardeen**：$F$ 非有理，$r=\pm iq$ 是分支点、$R$ 定义在**双叶黎曼面**上。**图 4 左图 = 照 Ref. [49] 的 Fig. 4(a) 复现的错误网络**（没有正确追踪分支）；右图是沿 $\mathrm{Re}[r]>0$、$w\sim r$ 的物理叶构造的正确网络，**存在** $\Lambda$（黑竖线是 $r=\pm iq$ 之间的割线；绿圈是把 $F_B$ 的零点经 $w^2=r^2+q^2$ 映回 $r$ 平面造出的**假根**）。
  - 用 $w^2\equiv r^2+q^2$（式 (70)）把 $F_B$ 变成 $w$ 的**亚纯**函数（式 (71)–(72)）；分支点附近 $N=3/2,\ \mathcal{P}=\pm i^{\pm3/2}/(2Mq),\ \alpha=21/16$（式 (73)）⇒ **10 个转折点**均布在 $\pm iq$ 附近（式 (74)）。$w$ 坐标下的方程 (76)、BC (77)–(78)、Frobenius 式 (80) ⇒ **11 项递推**。
  - 自称是**第一个保留完整度规函数的 Bardeen QNM 递推计算**（前人 Leaver 型做法依赖小 $q$ 展开，Refs. [35],[74],[47]）。
- **SM.5（$n_c$ 的估计）**：由式 (81)–(84) 得 $\delta r\sim\left[\frac{(N+1)|bf|}{2|\omega|}\right]^{1/(N+1)}$；对式 (14) 代 $z=N=3/p$、$|C_0|=2Mp^{3/p}q^{-1+3/p}$（式 (87)）即式 (16)；令 $\delta r\sim q$ 得式 (17)–(18)。

---

## 八、方法与结论的**边界**（自己判断时要注意）

1. **只覆盖「$H$ 有极点」这一类**：$z$ 的取值区间有明确限制（$r_0\neq0$ 要 $z>-2$；$r_0=0$ 要 $z>0$ 且 $N\neq2$）。SM.1 已列出落在框架外的情形（$r_0\neq0,z<-2$；$r_0=0,z<0$）。
2. **单视界的例外**（$N=1/3,3$）说明「$\mathrm{Re}\to0$ ⟺ 正规」只在**多视界或非精细调节**时成立；引用时要带上这个限定。
3. **标量、球对称、非退化视界、渐近平直**。转动、引力扰动、简并视界都是**外推**（Discussion 明说）。
4. 与 **Ref. [49]** 的冲突是**技术性的**（黎曼面/解析结构），不是物理假设不同；读 [49] 时须记住本文对其 Fig. 4(a) 与渐近谱的批评。
5. 观测判据 $n_c\sim(M/q)^2$ 只是**量级估计**（"up to a model-dependent coefficient of order unity"），且**转折点簇尺度 $\delta r\sim q$ 的判据**本身是 rule-of-thumb。

---

## 九、与本工作区其它笔记的关系

| 已有笔记 | 关系 |
| --- | --- |
| `准正规模QNM/arXiv-2609.18105v1`（等谱性定理） | **正好互补**：那篇给「谱在什么条件下被对称性**保护**（等谱）」；本篇给「谱在什么条件下被任意小扰动**打乱**（谱不稳定）」。两篇合读可以把「谱稳定性」的判据补全 |
| `准正规模QNM/arXiv-2609.20382v1`（近视界反射面 QNM） | 同为**边界/解析结构决定谱**的例子：那篇改的是**近视界边界条件**，本篇改的是**中心解析结构**；结论都是「谱对几何细节不连续地敏感」 |
| `QNM与黑洞热力学/arXiv-2507.16493v1`（伪谱与瞬态综述） | 本篇是**谱不稳定性**在「正规黑洞」上的具体实现；伪谱是同一非自伴性的另一种刻画（一个看 $\omega_n$ 的移动，一个看算子范数的放大） |
| `QNM与黑洞热力学/arXiv-1102.4014v2`（Konoplya–Zhidenko 综述） | 渐近谱/分支割线/代数特殊频率等数值处理的背景（本篇 SM.4 引用 Leaver、Hill 行列式两条路线） |
| `QNM与黑洞热力学/总览-QNM与黑洞热力学.md` 的 **A 类**（Hod 界）与 **D 类**（谱 → 面积谱） | 本篇明确：$\mathrm{Im}$ 的间距 $2\pi T_H$ 不变 ⇒ **Maggiore 的 $\Delta A=8\pi\ell_P^2$ 不受影响**；但 $\mathrm{Re}\to0$ 会让「Hod 的 $\ln3$ 面积量子」这条论证在正规黑洞上**直接失效** |

## 出处索引

- 主结论与两式：Abstract；`Introduction.–` 式 (1)–(2)
- 主方程与 WKB：`Highly damped modes…` 式 (3)–(7)
- Langer 修改与适用条件：式 (25)–(26)；SM.1 式 (19)–(34)
- 相位 $\gamma$：式 (11)；SM.1 式 (28)–(30)
- monodromy 条件与 $\Gamma_e,\Gamma_i$：式 (8)–(10)；SM.3 式 (35)–(59)
- 正规黑洞谱：式 (12)–(13)；族 (14)；图 2
- 奇异黑洞谱：式 (15)
- 谱不稳定性论证：`Connection to the BH spectral instability.–`
- 观测不可及与 $n_c$：式 (16)–(18)；SM.5 式 (81)–(88)
- 数值方法：SM.4.1 式 (60)–(68)；SM.4.2 式 (69)–(80)；图 3、图 4
- 对 Ref. [49] 的批评：`Regular BHs.–` 末段；SM.4.2 图 4 左图

---

## 问答记录

> **索引**：**Q1** 「外部几何任意接近 Schwarzschild」的含义；**Q2** 正则化参数 $q$ 是什么、为何 $q\to0$ 与 $n\to\infty$ 不可交换。

### Q1. 「外部几何任意接近 Schwarzschild」是什么意思？（2026-10-28）

**问题**：什么叫「外部几何任意接近 Schwarzschild 时」？

**解答**：

**一句话**：指在**视界外直到无穷远**的区域，度规函数与 Schwarzschild 的**逐点偏差**随 $q\to0$ **一致**趋于零；也就是


$$
\sup_{r\ge r_*}\left|\frac{F(r)}{F_{\rm Schw}(r)}-1\right|\xrightarrow{q\to0}0\qquad(\text{对任意固定的 } r_*\gtrsim M).
$$


**1. 定量速率（对式 (14) 的族）**。$r\gg q$ 时 $(r^p+q^p)^{3/p}=r^3\left[1+\frac{3}{p}(q/r)^p+\cdots\right]$，于是


$$
F(r)=1-\frac{2M}{r}+\frac{6M}{p\,r}\left(\frac{q}{r}\right)^{p}+\mathcal{O}\!\left((q/r)^{2p}\right)=F_{\rm Schw}+\mathcal{O}\!\left((q/r)^{p}\right).
$$


- 偏差是**幂律压低**的：视界附近 $r\sim M$ 处 $\delta F\sim\frac{3}{p}(q/2M)^p$；$q/M=10^{-3}$、$p=1$ 时约 $10^{-3}$ 量级，$q\to0$ 时对任何固定的 $r$ 都 $→0$。
- 视界也一起移动：$F(r_+)=0$ 给 $r_+=2M\left[1-\mathcal{O}((q/M)^p)\right]$（正规黑洞的视界在 $2M$ **内侧**）。位移量本身也随 $q\to0$ 消失，所以「接近」在**等距/位置**意义上也成立。
- 同一小参数控制所有**外部可观测量的基模偏差**（阴影、光子环、前几个 overtone）：一律 $\mathcal{O}\!\left[(q/M)^p\right]$。这正是文中 Introduction 说的 "deviations outside the horizon can be arbitrarily small, naturally suppressed by $ℓ_P/M$"。

**2. 它「不是」什么意思（三条都要记住）**。

- **(a) 不是「处处」接近。** 改动被限制在半径 $\sim q$ 的小区域里，而在那里面曲率**反而随 $q\to0$ 变大**：$r\ll q$ 时 $F\simeq1-r^2/L_{\rm dS}^2$，$L_{\rm dS}=q^{3/2}/2M$，故中心曲率标度


$$
K(0)\sim\frac{1}{L_{\rm dS}^4}\sim\frac{M^2}{q^6}\xrightarrow{q\to0}\infty .
$$


> 这是个容易误解的点：正规化并**不是**把奇点处的高曲率抹平，而是把它「压缩」进一个更小的区域。所以 $r\lesssim q$ 处的几何**永远不**接近 Schwarzschild（Schwarzschild 自己在 $r=0$ 发散），「接近」只发生在 $r\gg q$ 的外部。

- **(b) 不是「小扰动」。** 真正随 $q$ 改变的是**解析结构**：$H=FB$ 的极点从 $r_0=0$（$q=0$）跳到 $r_0=(-q^p)^{1/p}\ne0$（$q>0$），$|r_0|=q$（$q$ 到底是什么尺度？见 **Q2**）。这个「极点是否落在原点」是**离散的是/否**，而式 (11) 的 $\gamma$ 恰恰只取决于它（$r_0\ne0\Rightarrow\gamma=\pi/2$；$r_0=0\Rightarrow\gamma=\frac{|N-1|}{N+1}\frac{\pi}{2}$）。所以谱对 $q$ 的依赖是**不连续**的，$\mathcal{O}(1)$ 的 $\mathrm{Re}[\omega_n]$ 差（$T_H\ln3\approx0.0437/M$ vs $0$）与 $q$ 多小无关。
- **(c) 不是「微扰展开能算」。** 若把 $q$ 当小量做 $\omega_n=\omega_n^{(0)}+q\,\omega_n^{(1)}+\cdots$，会得到 $\mathrm{Re}[\omega_n]\to T_H\ln3$（Schwarzschild 值）——**这是错的**，因为 $q\to0$ 与 $n\to\infty$ 不交换。文中式 (18) 的 $n_c\sim\frac{p+3}{p^{1+3/p}}(M/q)^2$ 正是「$q$ 的微扰展开从第 $n_c$ 阶起失效」的位置：$|\mathrm{Im}[\omega_n]|$ 随 $n$ 线性增长，使局域化扰动造成的谱移 $\sim e^{\text{const}\cdot|\mathrm{Im}\omega_n|}$（Refs. [53],[42]）在 $n\gtrsim n_c$ 处变成 $\mathcal{O}(1)$。

**3. 这句话在文章里的角色**。它是**修辞支点**：先摆出「既然外部几乎就是 Schwarzschild，那奇点的消失应该可以被忽略吧」这个直觉，再用 $n\to\infty$ 把任意小的 $q$ 放大成 $\mathcal{O}(1)$ 的谱差，从而把结论落到**黑洞谱不稳定性**上（`Connection to the BH spectral instability.–`、`Discussion.–`）。作者同时在 Discussion 里承认：这个 $\mathcal{O}(1)$ 的差要等到 $n\sim n_c$ 才出现，而 $n_c$ 对天体黑洞是天文数字 ⇒ **理论上深刻、观测上无望**。

**4. 证明里实际用到「接近」的地方只有一处**。定理**不需要** $q$ 小：只需要 (i) 渐近 Schwarzschild（保证无穷远处的 anti-Stokes 线同 Schwarzschild，SM.2 式 (36)）、(ii) 近极点结构式 (7) 且 $z>-2$、(iii) $r_0$ 是否为 $0$。所以「任意接近」是**刻意强调的反差**，不是推导的前提假设。

### Q2. 正规化参数 $q$ 是什么？「$q\to0$ 与 $n\to\infty$ 的极限不可交换」是什么意思？（2026-10-28）

**问题**：正规化参数 $q$ 是什么？什么叫「$q\to0$ 与 $n\to\infty$ 的极限不可交换」？

**解答**：

#### 1. $q$ 是「把 $r=0$ 附近的行为切断」的长度尺度

对照式 (14) 与 Schwarzschild：

$$F_{\rm Schw}=1-\frac{2M}{r}=1-\frac{2Mr^2}{r^3},\qquad
F=1-\frac{2Mr^2}{\left(r^p+q^p\right)^{3/p}}=1-\frac{2Mr^2}{\left[\left(r^p+q^p\right)^{1/p}\right]^{3}}.$$

也就是说，把"有效半径" $r$ 换成 $\left(r^p+q^p\right)^{1/p}$——一个**在 $r\ll q$ 处饱和到 $q$** 的软化。于是：

| 区域 | 行为 | 曲率 |
| --- | --- | --- |
| $r\gg q$ | 回到 Schwarzschild，偏差 $\delta F=\frac{6M}{pr}(q/r)^p$ | $\sim M/r^3$（正常） |
| $r\ll q$ | dS 核 $F\simeq1-r^2/L_{\rm dS}^2$，$L_{\rm dS}=q^{3/2}/(2M)$ | $K(0)\sim M^2/q^6\to\infty$ |

- **它是"理论参数"，不是守恒荷**：$M$ 是 ADM 质量；$q$ 表征 UV/量子引力修正的**尺度**（唯象模型里通常取 $q\sim\ell_P$，其效应被 $\ell_P/M$ 压低）。
- **它同时是三个尺度**（这一点常被忽略，但正是本文的关键）：① 外部偏差的尺度、② 视界移动的尺度 $\delta r_+\sim O((q/M)^p)$、③ **复 $r$ 平面上极点离原点的距离** $|r_0|=q$（$r_0^p=-q^p$）。$q=0$ 时极点**并回原点**，$z=N$ 从 $3/p$ 跳到 $1$（Schwarzschild）。
- **它还决定视界数**：$q<q_{\rm ext}=2^{(p+2)/p}27^{-1/p}M$ 两个视界；$q=q_{\rm ext}$ 简并；$q>q_{\rm ext}$ 无地平线（裸核）。全文只取 $q<q_{\rm ext}$；数值用 $q=0.1M$（Fan–Wang，$p=1$）与 $q=0.2M$（Bardeen，$p=2$）。
- 模型对应：$p=1$ Fan–Wang、$p=2$ Bardeen、$p=3$ Hayward（这三个模型的原始参数常是磁单极荷或"质量函数参数"，本文统一当作**尺度 $q$** 处理）。

#### 2. 两个极限分别在算不同的东西

记 $\mathrm{Re}[\omega_n(q)]$。

- **先 $q\to0$、再 $n\to\infty$**：对每个**固定**的 $n$，$q\to0$ 让几何变成 Schwarzschild，于是该 overtone 的 $\mathrm{Re}$ 趋于 Schwarzschild 表上的值；再取 $n\to\infty$ 得 $T_H\ln3$。
- **先 $n\to\infty$、再 $q\to0$**：对每个**固定**的 $q>0$，$n\to\infty$ 给出式 (13) 的 $0$；$q$ 再小也还是 $0$。


$$
\lim_{q\to0}\lim_{n\to\infty}\mathrm{Re}[\omega_n(q)]=0\ \neq\ T_H\ln3=\lim_{n\to\infty}\lim_{q\to0}\mathrm{Re}[\omega_n(q)] .
$$


两个**都合法**的取极限顺序给出**不同答案** ⇒ 不可交换。

#### 3. 等价说法：对 $n$ 的收敛**非一致**


$$
\sup_{n}\left|\mathrm{Re}[\omega_n(q)]-\mathrm{Re}[\omega_n(0)]\right|\ \not\to 0\quad(q\to0).
$$


即使 $q\to0$，总存在某个（越来越大的）$n$ 使差别保持 $\mathcal{O}(T_H\ln3)$。"两个效应在竞争"：

- 形变**强度**随 $q$ 变小（$\sim(q/M)^p$）；
- 放大**因子**随 $n$ 增长（$|\mathrm{Im}[\omega_n]|\propto n$，且谱移对局域化扰动可随 $|\mathrm{Im}\omega_n|$ **指数增长**，Refs. [53],[42]）。

临界线由式 (18) 给出：


$$
n_c\sim\frac{p+3}{p^{1+3/p}}\left(\frac{M}{q}\right)^{2}
$$


- $n\ll n_c$：谱就是 Schwarzschild 表 ⇒ 此时"取 $q\to0$"没错；
- $n\gg n_c$：已进入正规黑洞的渐近谱 ⇒ 此时"取 $q\to0$"错了。

$(q,n)$ 平面被 $n\approx n_c(q)$ 分成两块，**"$q$ 很小"只在 $n\ll n_c$ 的意义下成立**。

#### 4. 最小类比


$$
f(q,n)=e^{-qn}:\qquad \lim_{q\to0}\lim_{n\to\infty}f=0,\qquad \lim_{n\to\infty}\lim_{q\to0}f=1 .
$$


$q=0$ **不是** $q>0$ 那一族的连续延拓（它是退化/临界情形）。本文里 $q=0$ 的"退化"有明确内容：**极点是否落在原点**——这是一个**离散的是/否**，而渐近谱只由极点结构（$N,z,r_0$）决定（式 (11)、(15)）。

#### 5. 物理根源与旁证

- 根源是 QNM 问题的**非自伴性**（视界与无穷远的辐射 BC）+ 上面那个离散的解析结构改变 ⇒ 这就是 `Connection to the BH spectral instability.–` 一节的意思。
- **旁证**：文中指出 RN 的 $Q\to0$ 极限、Kerr 的 $a\to0$ 极限也出现 $\mathrm{Re}\to0$。凡"把极点从原点搬出去"的参数都有这个性质，所以这不是正规黑洞专属的怪现象。

#### 6. 两点别搞混

- **计算上**：不能把 $q$ 当微扰小量展开后再相信 $n\to\infty$ 的结论（那会得到 $\mathrm{Re}\to T_H\ln3$，错误）。必须**固定 $q>0$ 直接算高阶模**——作者做到 $n=500$、200 bit 精度（SM.4）。
- **观测上**：不可交换**不等于**"能看到突变"。任何可测的 $n$（几十）都远小于 $n_c\sim(M/q)^2$，所以天体黑洞在可测范围内谱**就是** Schwarzschild 表，$q$ 的偏差仍只是 $\mathcal{O}[(q/M)^p]$。作者自己说这是"理论上深刻、观测上无望"。

**本条定位**：展开 **Q1 第 1 节**里的 $q$、**Q1 的 2(b)/2(c)** 里的"极点搬离原点"与 $n_c$；并解释 **§一** 末句"$q\to0$ 与 $n\to\infty$ 不可交换"、**§6.1** 的同名论述。

**本条定位**：本条是 **§二** 中「当外部几何任意接近 Schwarzschild 时」的展开。
