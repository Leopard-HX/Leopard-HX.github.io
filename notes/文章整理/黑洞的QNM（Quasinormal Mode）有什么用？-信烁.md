---
title: "黑洞的 QNM（Quasinormal Mode）有什么用？"
folder: "文章整理"
---

> 黑洞的QNM研究价值如何？

现在来看，Quasinormal mode 最大的实际用处就是帮助计算引力波波形。一次双星并合的过程，一般会人为地分成inspiral-merger-ringdown三个阶段，ringdown阶段（也就是并合后形成的黑洞没消停下来，视界面还在“抖”的过程）的引力波就可以用Quasinormal mode来近似。

> 有可能为黑洞的量子引力理论提供启示吗？

反过来，把测到的引力波和quasinormal mode比对，也就能检验引力理论了，因为不同理论下quasinormal mode频率是不同的。

从物理图像来看，quasinormal mode的重要性是显而易见的：

**如果说“黑洞是21世纪的原子”，那quasinormal mode就是黑洞的原子轨道**

下面先以广义相对论为例，把 QNM 从哪里来、满足什么方程、频率怎么求一步步讲清楚，再看几种不同黑洞的 QNM 谱。紧接着的「预备」一节是后面要用到的几何背景：Weyl 曲率是什么，把它"投影"到标架上是什么意思，以及 Kerr 黑洞为什么要用 Kinnersley 标架。只关心物理图像的话可以先跳过，遇到记号再回来查。

## 预备：Weyl 曲率、它的投影与 Kinnersley 标架

**约定。** 度规号差取 $(+,-,-,-)$（与 Teukolsky 1973 一致），$G=c=1$，Riemann 张量 $R^a{}_{bcd}=\partial_c\Gamma^a_{bd}-\partial_d\Gamma^a_{bc}+\Gamma^a_{ce}\Gamma^e_{bd}-\Gamma^a_{de}\Gamma^e_{bc}$。文中带编号的公式都用 Wolfram Language 做过符号核对，清单见文末。

正文的出发点是这样一句话："考虑 Weyl 曲率 $C$ 的一个投影 $\psi_4$，其中 $n,m$ 是 Kinnersley 标架的两条 leg。"这句话里有三个概念：Weyl 曲率是什么；"投影"是什么意思；为什么要投影到 Kinnersley 这组特定的标架上。这一节依次回答，最后说明三者在 Kerr 黑洞上是怎样配合起来的。

### Weyl 曲率是从哪里来的

四维时空的 Riemann 张量 $R_{abcd}$ 有 20 个独立分量。把它的迹——Ricci 张量 $R_{bd}=R^a{}_{bad}$ 和标量曲率 $R=R^a{}_a$——单独拿出来，剩下的部分就是 Weyl 张量 $C_{abcd}$：


$$
R_{abcd}=C_{abcd}+\frac12\left(g_{ac}R_{bd}-g_{ad}R_{bc}-g_{bc}R_{ad}+g_{bd}R_{ac}\right)-\frac R6\left(g_{ac}g_{bd}-g_{ad}g_{bc}\right). \tag{1}
$$


系数是这样定出来的：对 (1) 用 $g^{ac}$ 缩并，左边是 $R_{bd}$；右边第二项给出 $\frac12\left(4R_{bd}-R_{bd}-R_{bd}+g_{bd}R\right)=R_{bd}+\frac12g_{bd}R$，第三项给出 $-\frac R6(4-1)g_{bd}=-\frac12g_{bd}R$，两项之和正好是 $R_{bd}$。所以 (1) 自洽的条件就是 $C^a{}_{bad}=0$。这就是 Weyl 张量的定义：**与 Riemann 张量对称性相同、所有迹都为零的那一部分**。Ricci 张量是对称张量，有 10 个分量，所以 Weyl 张量也有 $20-10=10$ 个分量。

这个分解的物理意义在于：Einstein 方程 $R_{ab}-\frac12Rg_{ab}=8\pi T_{ab}$ 只约束 Ricci 部分，它在每一点由当地的物质决定；Weyl 部分不受当地物质的代数约束，只能通过 Bianchi 恒等式 $\nabla_{[e}R_{ab]cd}=0$ 从别处"传播"过来，这就是潮汐场和引力波。（可以类比电磁学：$\nabla\cdot\mathbf E=4\pi\rho$ 只管散度，辐射场是无源的那一部分。）黑洞外是真空，$R_{ab}=0$，于是 $R_{abcd}=C_{abcd}$：**黑洞外的一切曲率，包括 ringdown 时的扰动，全在 Weyl 张量里**。

Weyl 张量能直接"摸到"。测地偏离方程 $\dfrac{D^2\xi^a}{d\tau^2}=-R^a{}_{bcd}u^b\xi^cu^d$ 给出相邻两个自由质点之间的相对加速度。在自由下落观测者的正交标架 $(\hat t,\hat\imath)$ 中，真空里它化为


$$
\frac{D^2\xi^{\hat\imath}}{d\tau^2}=C_{\hat t\hat\imath\hat t\hat\jmath}\,\xi^{\hat\jmath}
$$


（用了 $(+,-,-,-)$ 下 $\eta^{\hat\imath\hat\imath}=-1$）。也就是说，Weyl 张量的 $C_{\hat t\hat\imath\hat t\hat\jmath}$ 分量就是潮汐力，引力波探测器测的正是它。

### "投影"是什么意思：零标架与五个 Weyl 标量

张量本身与坐标无关，但要写出具体的数，就得选一组基矢，把张量"投影"上去，也就是取它在这组基下的分量。上面的 $C_{\hat t\hat\imath\hat t\hat\jmath}$ 就是 Weyl 张量在某个观测者的正交标架上的投影。电磁学里有完全相同的情形：同一个场强张量 $F_{ab}$，投影到不同观测者的标架上，得到的电场和磁场不同，两者会互相混合。Weyl 张量也一样：$C_{abcd}$ 是几何量，它的投影则取决于选了哪组标架。

研究引力波时，最方便的不是正交标架，而是**零标架**（null tetrad）。引力波和光一样沿零方向传播，所以取两条实的零矢量：$l$（例如沿向外的光线）和 $n$（沿向内的光线），再在垂直于它们的横向平面里取一条复零矢量 $m$ 及其共轭 $\bar m$，满足


$$
l\cdot n=1,\qquad m\cdot\bar m=-1,\qquad\text{其余内积为 }0,\qquad g^{ab}=l^an^b+n^al^b-m^a\bar m^b-\bar m^am^b. \tag{2}
$$


从任何一个正交标架都能拼出一组零标架，例如 $l=\frac1{\sqrt2}(e_{\hat t}+e_{\hat r})$，$n=\frac1{\sqrt2}(e_{\hat t}-e_{\hat r})$，$m=\frac1{\sqrt2}(e_{\hat\theta}+ie_{\hat\phi})$。下面把这组叫做"对称零标架"，后面会拿它和 Kinnersley 标架比较。

把 Weyl 张量的四个指标都投影到零标架上，就得到五个复标量：

$$\begin{aligned}
\Psi_0&=-C_{abcd}\,l^am^bl^cm^d, &\Psi_1&=-C_{abcd}\,l^an^bl^cm^d, &\Psi_2&=-C_{abcd}\,l^am^b\bar m^cn^d,\\
\Psi_3&=-C_{abcd}\,l^an^b\bar m^cn^d, &\Psi_4&=-C_{abcd}\,n^a\bar m^bn^c\bar m^d .
\end{aligned} \tag{3}$$

正文里的 $\psi_4$ 就是 $\Psi_4$：把两个 $n$、两个 $\bar m$ 填进 Weyl 张量的四个指标。式中的负号属于 $(+,-,-,-)$ 号差的约定；$(-,+,+,+)$ 号差下常见的定义没有这个负号。两种约定给出的是**同一个数**，因为 $g\to-g$ 时 $C_{abcd}\to-C_{abcd}$，而 $l,n,m$ 的逆变分量不变。

为什么恰好是这五个？把 $l,n,m,\bar m$ 以各种方式填进四个指标，可以得到很多投影，但 Weyl 张量的对称性和无迹性使它们都能用 (3) 表示，5 个复数恰好对应 10 个实分量。举两个后面要用的例子。用无迹条件 $g^{bd}C_{lbnd}=0$，并按 (2) 展开 $g^{bd}$，得 $C_{lnnl}=C_{lmn\bar m}+C_{l\bar mnm}=\Psi_2+\bar\Psi_2$（这里 $C_{lnnl}\equiv C_{abcd}l^an^bn^cl^d$，余类推；$C_{l\bar mnm}$ 是 $C_{lmn\bar m}$ 的复共轭）；再用循环恒等式 $C_{lnm\bar m}+C_{lm\bar mn}+C_{l\bar mnm}=0$。结果是


$$
C_{abcd}\,l^an^bl^cn^d=-\left(\Psi_2+\bar\Psi_2\right),\qquad C_{abcd}\,l^an^bm^c\bar m^d=\Psi_2-\bar\Psi_2 . \tag{4}
$$


所以 $\Psi_2$ 的实部是 $l$–$n$ 平面内的潮汐分量，虚部则来自"转动"性质的那一部分（类比磁场，常叫引力磁部分）。

五个标量各管一部分物理。若 $l$ 指向外，按 Szekeres (1965) 的解释：$\Psi_4$ 是沿 $l$ 传播（向外）的横波，$\Psi_3$ 是沿 $l$ 的纵向部分，$\Psi_2$ 是"库仑"部分（源本身的静态潮汐场），$\Psi_1$ 是沿 $n$ 的纵向部分，$\Psi_0$ 是沿 $n$ 传播（向内）的横波。一个直接的例子是沿 $l$ 方向传播的平面引力波：它的五个投影中 $\Psi_0$ 到 $\Psi_3$ 全为零，只有 $\Psi_4\neq0$（正文 (11) 处会具体算出 $\Psi_4$）。

### 换一组标架，投影怎么变

既然投影依赖标架，就要知道标架变化时五个 $\Psi_k$ 怎么变。保持 (2) 的标架变换就是局部 Lorentz 变换，有 6 个实参数，可以分成三类：

- **第一类**，绕 $l$ 的零转动（复参数 $c$）：$l\to l$，$m\to m+c\,l$，$n\to n+\bar c\,m+c\,\bar m+c\bar c\,l$；
- **第二类**，绕 $n$ 的零转动（复参数 $d$）：$n\to n$，$m\to m+d\,n$，$l\to l+\bar d\,m+d\,\bar m+d\bar d\,n$；
- **第三类**，boost 与 spin（$A>0$，$\vartheta$ 为实数）：$l\to Al$，$n\to A^{-1}n$，$m\to e^{i\vartheta}m$。

把新标架代入 (3) 并用 Weyl 张量的对称性整理，得到


$$
\text{I}:\ \Psi_k\to\sum_{j=0}^{k}\binom kj\bar c^{\,j}\,\Psi_{k-j},\qquad\text{II}:\ \Psi_k\to\sum_{j=0}^{4-k}\binom{4-k}{j}d^{\,j}\,\Psi_{k+j},\qquad\text{III}:\ \Psi_k\to A^{2-k}e^{i(2-k)\vartheta}\,\Psi_k . \tag{5}
$$


例如第一类转动下 $\Psi_4\to\Psi_4+4\bar c\Psi_3+6\bar c^2\Psi_2+4\bar c^3\Psi_1+\bar c^4\Psi_0$，第二类转动下 $\Psi_0\to\Psi_0+4d\Psi_1+6d^2\Psi_2+4d^3\Psi_3+d^4\Psi_4$。第三类的规律可以直接数出来：$\Psi_k$ 的定义里 $l$ 比 $n$ 多 $2-k$ 个，$m$ 比 $\bar m$ 也多 $2-k$ 个。$\Psi_4$ 含两个 $n$ 和两个 $\bar m$，所以 $\Psi_4\to A^{-2}e^{-2i\vartheta}\Psi_4$。在 spin 转动下按 $e^{is\vartheta}$ 变换的量叫做 **spin weight** 为 $s$ 的量：$\Psi_4$ 的 $s=-2$，$\Psi_0$ 的 $s=+2$。正文展开 $\psi_4$ 时要用 spin weight $-2$ 的谐函数，原因就在这里。

### 主零方向：最"顺手"的标架

(5) 说明，选标架可以改变五个投影的分布。那么能不能选一个标架，让尽可能多的 $\Psi_k$ 为零？用第二类转动把 $l$ 换到新方向 $l'=l+\bar d\,m+d\,\bar m+d\bar d\,n$，由 (5)，新的 $\Psi_0'=0$ 要求


$$
\Psi_0+4d\Psi_1+6d^2\Psi_2+4d^3\Psi_3+d^4\Psi_4=0 . \tag{6}
$$


这个四次方程有 4 个根（计重数；若 $\Psi_4=0$，就把 $d=\infty$ 也算一个根，它对应 $n$ 本身）。每个根给出一个零方向 $l'$，叫做 Weyl 张量的**主零方向**（principal null direction）。$l$ 本身是主零方向当且仅当 $\Psi_0=0$；是二重主零方向当且仅当 $\Psi_0=\Psi_1=0$（这时 $d=0$ 是二重根）。按根的重数，Weyl 张量分为几种 Petrov 类型：I（1,1,1,1）、II（2,1,1）、**D（2,2）**、III（3,1）、N（4），以及 $C=0$ 的 O 型。上面的平面引力波就是 N 型：$l$ 是它的四重主零方向，所以只剩 $\Psi_4$。

D 型是最特殊、也最有用的情形：它恰好有两个二重主零方向。让 $l$ 沿其中一个、$n$ 沿另一个，就有 $\Psi_0=\Psi_1=0$；由对称性（对 $n$ 用第一类转动重复上面的论证），也有 $\Psi_3=\Psi_4=0$。五个投影里只剩 $\Psi_2$。这样的标架叫做**主标架**（principal tetrad）。主标架只确定了 $l$、$n$ 的方向，还剩第三类自由度：$l$ 的长度（同时决定 $n$ 的长度）和 $m$ 的相位。

### Kerr 黑洞与 Kinnersley 标架

广义相对论中的稳态黑洞由质量 $M$ 和自旋 $a$ 刻画，即 Kerr 黑洞。Boyer–Lindquist 坐标下

$$\begin{aligned}
ds^2&=\left(1-\frac{2Mr}{\Sigma}\right)dt^2+\frac{4Mar\sin^2\theta}{\Sigma}\,dt\,d\phi-\frac{\Sigma}{\Delta}dr^2-\Sigma\,d\theta^2-\sin^2\theta\left(r^2+a^2+\frac{2Ma^2r\sin^2\theta}{\Sigma}\right)d\phi^2,\\
\Sigma&=r^2+a^2\cos^2\theta,\qquad\Delta=r^2-2Mr+a^2=(r-r_+)(r-r_-),\qquad r_\pm=M\pm\sqrt{M^2-a^2}.
\end{aligned} \tag{7}$$

Kerr 的 Weyl 张量是 D 型。它的两个二重主零方向分别沿两族"主零测地线"，一族向外、一族向内。**Kinnersley (1969) 标架就是 Kerr 的主标架**，分量（顺序 $(t,r,\theta,\phi)$）为


$$
l^\mu=\left(\frac{r^2+a^2}{\Delta},\ 1,\ 0,\ \frac a\Delta\right),\qquad n^\mu=\frac{1}{2\Sigma}\left(r^2+a^2,\ -\Delta,\ 0,\ a\right),\qquad m^\mu=\frac{1}{\sqrt2\,(r+ia\cos\theta)}\left(ia\sin\theta,\ 0,\ 1,\ \frac{i}{\sin\theta}\right). \tag{8}
$$


$l$ 沿向外的主零测地线：$l^r=1$，$l^\theta=0$，即沿着它 $r$ 增加、$\theta$ 不变（$t,\phi$ 随之变化）。$n$ 沿向内的那一族：在视界外 $n^r=-\Delta/(2\Sigma)<0$。$m$ 张成与二者正交的横向平面。可以验证 (8) 满足 (2)，并且投影的结果正如 D 型主标架所预期的那样：


$$
\Psi_0=\Psi_1=\Psi_3=\Psi_4=0,\qquad\Psi_2=M\rho^3=-\frac{M}{(r-ia\cos\theta)^3},\qquad\rho\equiv-\frac{1}{r-ia\cos\theta}. \tag{9}
$$


主标架剩下的第三类自由度，由 Kinnersley 的具体取法定了下来：$l^r=1$，也就是让 $r$ 本身成为沿 $l$ 的仿射参数；$m$ 的相位则取得使下面的自旋系数 $\varepsilon=0$。所以 **Kinnersley 标架 = Kerr 的主标架 + 一种特定的 boost/spin 规范**。别的规范只差一个第三类变换，例如讨论视界边界条件时要用到的 Hawking–Hartle 标架。

**$\Psi_2$ 的物理意义。** $\Psi_2$ 是 Kerr 在主标架下唯一的 Weyl 分量。以 Schwarzschild（$a=0$）为例：$\Psi_2=-M/r^3$。在静态观测者的正交标架中直接计算 Weyl 张量，得


$$
C_{\hat t\hat r\hat t\hat r}=\frac{2M}{r^3}=-2\Psi_2,\qquad C_{\hat t\hat\theta\hat t\hat\theta}=C_{\hat t\hat\phi\hat t\hat\phi}=-\frac{M}{r^3}=\Psi_2 .
$$


第一式也可以从 (4) 读出来：对称零标架满足 $C_{lnln}=C_{\hat t\hat r\hat t\hat r}$。代入上面的测地偏离方程，两个自由质点沿径向被拉开（相对加速度 $2M/r^3$ 乘间距），沿横向被挤近（$M/r^3$ 乘间距），这正是牛顿引力中点质量的潮汐场。$\Psi_2$ 的 boost weight 为 0（第三类变换下 $A^0$），径向 boost 不改变它，所以径向下落的观测者感受到的是同样的潮汐场。Kerr 情形下 $\Psi_2=-M/(r-ia\cos\theta)^3$ 是复数。它的虚部在 $a=0$ 时消失，由 (4) 对应 $C_{lnm\bar m}=2i\,\mathrm{Im}\,\Psi_2$，是黑洞转动带来的引力磁潮汐场。

**Kinnersley 标架与对称零标架的关系。** $a=0$ 时，把 (8) 与静态观测者的对称零标架 $l_S=\frac1{\sqrt2}(e_{\hat t}+e_{\hat r})$、$n_S=\frac1{\sqrt2}(e_{\hat t}-e_{\hat r})$、$m_S=\frac1{\sqrt2}(e_{\hat\theta}+ie_{\hat\phi})$ 直接比较（$e_{\hat t}=f^{-1/2}\partial_t$，$e_{\hat r}=f^{1/2}\partial_r$，$f=1-2M/r$），得


$$
l_K=\sqrt{\frac2f}\,l_S,\qquad n_K=\sqrt{\frac f2}\,n_S,\qquad m_K=m_S .
$$


两者只差一个第三类 boost，$A=\sqrt{2/f}$。由 (5)，$\Psi_2$ 不变，而 $\Psi_4^{K}=A^{-2}\Psi_4^{S}=\frac f2\Psi_4^{S}$。这说明两件后面要用到的事：远处 $f\to1$，Kinnersley 标架下的 $\psi_4$ 是对称标架下的一半，这就是 (11) 中因子 $\frac12$ 的来源；视界处 $f\to0$，Kinnersley 标架本身变得奇异（$l_K$ 发散），这一点在讨论视界边界条件时会再出现。

**自旋系数。** 后面的计算还要用到自旋系数，即标架矢量的协变导数在标架上的投影。NP 定义为


$$
\kappa=l_{a;b}m^al^b,\quad\rho=l_{a;b}m^a\bar m^b,\quad\sigma=l_{a;b}m^am^b,\quad\tau=l_{a;b}m^an^b,
$$



$$
\nu=-n_{a;b}\bar m^an^b,\quad\mu=-n_{a;b}\bar m^am^b,\quad\lambda=-n_{a;b}\bar m^a\bar m^b,\quad\pi=-n_{a;b}\bar m^al^b,
$$



$$
\varepsilon=\tfrac12\left(l_{a;b}n^al^b-m_{a;b}\bar m^al^b\right),
$$


$\gamma,\beta,\alpha$ 的定义与 $\varepsilon$ 相同，只是把最后一个 $l^b$ 依次换成 $n^b,m^b,\bar m^b$。对 (8) 逐个计算，结果与 Teukolsky (1973) 给出的值一致：

$$\begin{aligned}
&\kappa=\sigma=\lambda=\nu=\varepsilon=0,\\
&\rho=-\frac1{r-ia\cos\theta},\quad\beta=-\frac{\bar\rho\cot\theta}{2\sqrt2},\quad\pi=\frac{ia\rho^2\sin\theta}{\sqrt2},\quad\tau=-\frac{ia\rho\bar\rho\sin\theta}{\sqrt2},\quad\mu=\frac{\rho^2\bar\rho\Delta}{2},\quad\gamma=\mu+\frac{\rho\bar\rho(r-M)}{2},\quad\alpha=\pi-\bar\beta.
\end{aligned} \tag{10}$$

$\kappa=\sigma=0$ 表示 $l$ 生成无剪切的零测地线族，$\lambda=\nu=0$ 对 $n$ 说的是同一件事。这正是"主零方向"在几何上的表现（Goldberg–Sachs 定理：在真空中，无剪切的零测地线族与二重主零方向是一回事）。$\varepsilon=0$ 则是上面说的 Kinnersley 规范。后面能把方程"解耦"，靠的就是这几个零。

## 广义相对论中的Quasinormal Mode (QNM)

以广义相对论中的QNM为例说一说它是怎么来的，当然，不仅是广义相对论，任何引力理论都可以通过相同的方式找到那个理论下的QNM（缩写QNM怎么总感觉像骂人的话。。。）

**Motivation**：我们的目标，是想要描述双星并合后，视界面已经成形，背景时空已经十分接近一个稳定黑洞，但仍然在“抖”的这样一个过程，也就是ringdown阶段。就好像一个音叉，敲一下之后，它一边辐射声波，一边逐渐稳定下来的过程。为了描述这一过程，我们把ringdown看做在稳定黑洞时空基础上的扰动，然后用标准的微扰方法来算ringdown过程中时空度规和曲率的变化。

广义相对论中的黑洞就是有质量 $M$ 和自旋 $a$ 的Kerr黑洞 (7) 了，我们在Kerr时空的基础上做微扰。

做微扰有很多路可以走。最直接的是对度规本身做微扰 $g\to g+h$，但在 Kerr 上这会得到 $h_{\mu\nu}$ 的 10 个分量互相耦合、同时依赖 $r$ 和 $\theta$ 的偏微分方程组，没法分离变量。最常用的还是 Saul Teukolsky 的这套方法：绕开 $h_{\mu\nu}$，直接盯住曲率。

### 主角：$\psi_4$

考虑这样一个量——Weyl曲率 $C_{\alpha\beta\gamma\delta}$ 的一个投影


$$
\psi_4=-C_{\alpha\beta\gamma\delta}\,n^\alpha\bar m^\beta n^\gamma\bar m^\delta ,
$$


也就是 (3) 中的 $\Psi_4$：把黑洞外的 Weyl 张量投影到 Kinnersley 标架 (8) 上，取"两个 $n$、两个 $\bar m$"的那个分量（$n,m$ 是 Kinnersley 标架的两条 leg，$\bar m$ 即 $m$ 的复共轭 $m^\ast$）。详细的解释可见*[Teukolsky的原文](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.29.1114)*的公式(2)(4)，这是一套标准做法，也可以参考维基百科：<https://en.wikipedia.org/wiki/Weyl_scalar>。选这个投影、并且投影到这组标架上，有三个理由，三条都依赖「预备」一节的内容。

**它在背景中为零。** Kinnersley 标架是 Kerr 的主标架，由 (9)，背景的 $\Psi_4=0$。所以微扰后 $\Psi_4$ 从 0 变成一阶小量，它本身就是引力扰动，而不是"大背景上的小修正"。

**它与规范选择无关。** 微扰论里有两种规范自由度。一种是无穷小坐标变换 $x^a\to x^a+\xi^a$，它使一阶量改变 $\delta Q=\mathcal L_\xi Q^{(0)}$。由于 $\Psi_4^{(0)}=0$，$\mathcal L_\xi\Psi_4^{(0)}=\xi^a\partial_a\Psi_4^{(0)}=0$。另一种是无穷小的标架转动，即 (5) 的三类变换取无穷小参数。按 (5)，第一类转动下 $\Psi_4$ 的一阶改变量是 $4\bar c\,\Psi_3^{(0)}=0$；第二类转动下 $\Psi_4$ 严格不变；第三类变换下的改变正比于 $\Psi_4^{(0)}=0$。所以 $\Psi_4^{(1)}$ 是与规范无关的可观测量（Stewart–Walker 引理）。这一条要求背景的 $\Psi_3$、$\Psi_4$ 为零，所以离不开主标架：在一般的标架里，背景 $\Psi_3\neq0$，$\Psi_4$ 就不再规范不变了。作为对比，$\Psi_3$ 在第一类转动下变成 $\Psi_3+3\bar c\Psi_2$，一阶就变了；$\Psi_2^{(0)}\neq0$ 且依赖 $r,\theta$，坐标变换下也会变。

**它在远处就是向外的引力辐射。** Kinnersley 标架的 $l$ 沿向外的主零测地线，所以按「预备」一节的解释，$\Psi_4$ 正是沿 $l$ 向外传播的横波。孤立辐射源远处的 peeling 定理给出同样的结论：沿向外的零测地线（$l$ 取其切向），$\Psi_k=O(r^{k-5})$，即 $\Psi_4\sim1/r$、$\Psi_3\sim1/r^2$、……、$\Psi_0\sim1/r^5$。只有 $\Psi_4$ 按 $1/r$ 衰减（能流 $\propto r^2\lvert\Psi_4\rvert^2$ 有限），所以它代表远处向外的引力辐射；描述向内的辐射（例如落进视界的部分）则用 $\Psi_0$ 更方便。

虽然 $\psi_4$ 的构造有点复杂，但是它与我们所测的引力波模式的关系是比较清楚的：在无穷远处


$$
\psi_4(r\to\infty)\to\frac12\left(\ddot h_+-i\ddot h_\times\right), \tag{11}
$$


其中 $h_+$ 和 $h_\times$ 就是我们常说的引力波的"plus mode", "cross mode"。关于"plus mode", "cross mode"，看这个维基百科的动图可以有一个直观感受：<https://en.wikipedia.org/wiki/Gravitational_wave#Effects_of_passing>。

(11) 可以直接算出来。远离黑洞处时空近乎平直，引力波可以局部看成沿径向传播的平面波。TT 规范下 $g_{ab}=\eta_{ab}+h_{ab}$，$h_{ab}$ 只有横向分量 $h_{\hat\theta\hat\theta}=-h_{\hat\phi\hat\phi}=h_+$、$h_{\hat\theta\hat\phi}=h_\times$，它们都只依赖推迟时 $u=t-r$。线性化的 Riemann 张量是


$$
R_{abcd}=\frac12\left(\partial_b\partial_ch_{ad}+\partial_a\partial_dh_{bc}-\partial_a\partial_ch_{bd}-\partial_b\partial_dh_{ac}\right).
$$


对 $h=h(u)$ 有 $\partial_a\to k_a\,d/du$，其中 $k_a=\partial_au$，在当地标准正交基 $(\hat t,\hat r,\hat\theta,\hat\phi)$ 中 $k_a=(1,-1,0,0)$。远处 Kinnersley 标架趋于 $n^a\to\frac12(1,-1,0,0)$、$\bar m^a\to\frac1{\sqrt2}\left(\hat\theta-i\hat\phi\right)$，所以 $k_an^a=1\cdot\frac12+(-1)\cdot\left(-\frac12\right)=1$，$k_a\bar m^a=0$。在 $R_{abcd}n^a\bar m^bn^c\bar m^d$ 的四项中，凡是 $k$ 与 $\bar m$ 缩并的都为零，只剩第三项：


$$
R_{abcd}n^a\bar m^bn^c\bar m^d=-\frac12(k\cdot n)^2\,\ddot h_{ab}\bar m^a\bar m^b=-\frac12\cdot\frac12\left(\ddot h_{\hat\theta\hat\theta}-2i\,\ddot h_{\hat\theta\hat\phi}-\ddot h_{\hat\phi\hat\phi}\right)=-\frac12\left(\ddot h_+-i\ddot h_\times\right).
$$


真空中 $C=R$，代回 $\psi_4=-C_{abcd}n^a\bar m^bn^c\bar m^d$ 就是 (11)。用同样的方法可以验证，这个平面波的另外四个投影 $\Psi_0$ 到 $\Psi_3$ 全为零，与「预备」一节说的"沿 $l$ 传播的横波只出现在 $\Psi_4$ 里"一致。有三点值得注意：

- 因子 $\frac12$ 来自 Kinnersley 标架的归一化（远处 $n^t\to\frac12$）。「预备」一节说过，远处 Kinnersley 标架是对称零标架做了 $A=\sqrt2$ 的 boost，由 (5)，$\Psi_4$ 因而乘上 $A^{-2}=\frac12$。数值相对论常用对称归一化 $n=(\hat t-\hat r)/\sqrt2$，那时 $\psi_4=\ddot h_+-i\ddot h_\times$。
- 整体符号依赖约定。这里的 $h$ 是 $(+,-,-,-)$ 度规的扰动；若改用 $(-,+,+,+)$ 号差，并把 $h$ 取为物理应变（$g_{ij}=\delta_{ij}+h_{ij}$），两者相差一个负号，$\psi_4\to-\frac12(\ddot h_+-i\ddot h_\times)$。这个符号既不影响 QNM 频率，也不影响能流。
- 引力波能流是 $\dfrac{dE}{dt\,d\Omega}=\dfrac{r^2}{16\pi}\left(\dot h_+^2+\dot h_\times^2\right)$。对单一频率 $\omega$ 的成分，由 (11) 得 $\dfrac{dE}{dt\,d\Omega}=\lim\limits_{r\to\infty}\dfrac{r^2}{4\pi\omega^2}\lvert\psi_4\rvert^2$（Teukolsky & Press 1974），这又一次体现了 $\psi_4\sim1/r$。

### $\psi_4$ 满足的方程：Teukolsky 的解耦

对 $\psi_4$ 做一阶微扰，会得到关于它的一个单独的偏微分方程（*[Teukolsky的原文](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.29.1114)*的公式(5)）。这一步是整个方法的关键，做法如下。记方向导数 $D=l^a\nabla_a$，$\boldsymbol\Delta=n^a\nabla_a$，$\delta=m^a\nabla_a$，$\bar\delta=\bar m^a\nabla_a$；$\boldsymbol\Delta$ 用粗体，以区别于度规函数 $\Delta=r^2-2Mr+a^2$。

**线性化的 NP 方程。** 真空 NP 方程（Newman & Penrose 1962）中有两条 Bianchi 恒等式和一条 Ricci 恒等式只牵涉 $\Psi_4,\Psi_3,\lambda,\nu$：

$$\begin{aligned}
\bar\delta\Psi_3-D\Psi_4&=(4\varepsilon-\rho)\Psi_4-2(2\pi+\alpha)\Psi_3+3\lambda\Psi_2,\\
\boldsymbol\Delta\Psi_3-\delta\Psi_4&=(4\beta-\tau)\Psi_4-2(2\mu+\gamma)\Psi_3+3\nu\Psi_2,\\
\boldsymbol\Delta\lambda-\bar\delta\nu&=-(\mu+\bar\mu)\lambda-(3\gamma-\bar\gamma)\lambda+(3\alpha+\bar\beta+\pi-\bar\tau)\nu-\Psi_4 .
\end{aligned}$$

由 (9)(10)，$\Psi_3,\Psi_4,\lambda,\nu$ 的背景值都是 0，所以它们都是一阶小量。保留一阶项时，乘在它们前面的系数和导数算符都取 Kerr 背景值。整理得

$$\begin{aligned}
&(D+4\varepsilon-\rho)\Psi_4-(\bar\delta+4\pi+2\alpha)\Psi_3=-3\lambda\Psi_2, &&\text{(B1)}\\
&(\delta+4\beta-\tau)\Psi_4-(\boldsymbol\Delta+2\gamma+4\mu)\Psi_3=-3\nu\Psi_2, &&\text{(B2)}\\
&(\boldsymbol\Delta+\mu+\bar\mu+3\gamma-\bar\gamma)\lambda-(\bar\delta+3\alpha+\bar\beta+\pi-\bar\tau)\nu=-\Psi_4 . &&\text{(R)}
\end{aligned} \tag{12}$$

这是关于四个未知量 $(\Psi_4,\Psi_3,\lambda,\nu)$ 的三个方程。（有物质源时右边还有能动量张量的投影，QNM 问题里为 0。）

**消去 $\Psi_3$。** 用算符 $(\boldsymbol\Delta+3\gamma-\bar\gamma+4\mu+\bar\mu)$ 作用于 (B1)，用 $(\bar\delta-\bar\tau+\bar\beta+3\alpha+4\pi)$ 作用于 (B2)，两式相减。含 $\Psi_3$ 的项是


$$
-\Big[(\boldsymbol\Delta+3\gamma-\bar\gamma+4\mu+\bar\mu)(\bar\delta+4\pi+2\alpha)-(\bar\delta-\bar\tau+\bar\beta+3\alpha+4\pi)(\boldsymbol\Delta+2\gamma+4\mu)\Big]\Psi_3 .
$$


关键在于：在 D 型真空背景上，方括号里的算符**恒等于零**。Teukolsky 用 NP 对易关系和 (10) 中为零的自旋系数证明了这一点；把 (10) 代入、作用在任意函数上也可以直接验证。于是 $\Psi_3$ 被消掉：


$$
\Big[(\boldsymbol\Delta+3\gamma-\bar\gamma+4\mu+\bar\mu)(D+4\varepsilon-\rho)-(\bar\delta-\bar\tau+\bar\beta+3\alpha+4\pi)(\delta-\tau+4\beta)\Big]\Psi_4=-3(\boldsymbol\Delta+3\gamma-\bar\gamma+4\mu+\bar\mu)(\lambda\Psi_2)+3(\bar\delta-\bar\tau+\bar\beta+3\alpha+4\pi)(\nu\Psi_2).
$$


**把 $\Psi_2$ 提出来。** 由 (9)(10) 可以验证，背景满足 Bianchi 恒等式


$$
D\Psi_2=3\rho\Psi_2,\qquad\delta\Psi_2=3\tau\Psi_2,\qquad\boldsymbol\Delta\Psi_2=-3\mu\Psi_2,\qquad\bar\delta\Psi_2=-3\pi\Psi_2 .
$$


举一例：$D$ 作用在只依赖 $(r,\theta)$ 的函数上就是 $\partial_r$，而 $\partial_r\rho=\rho^2$，故 $D(M\rho^3)=3M\rho^4=3\rho\Psi_2$。用后两式得


$$
(\boldsymbol\Delta+3\gamma-\bar\gamma+4\mu+\bar\mu)(\lambda\Psi_2)=\Psi_2(\boldsymbol\Delta+3\gamma-\bar\gamma+\mu+\bar\mu)\lambda,\qquad(\bar\delta-\bar\tau+\bar\beta+3\alpha+4\pi)(\nu\Psi_2)=\Psi_2(\bar\delta-\bar\tau+\bar\beta+3\alpha+\pi)\nu .
$$


所以右边 $=-3\Psi_2\big[(\boldsymbol\Delta+\mu+\bar\mu+3\gamma-\bar\gamma)\lambda-(\bar\delta+3\alpha+\bar\beta+\pi-\bar\tau)\nu\big]$。方括号正好是 (R) 的左边，等于 $-\Psi_4$，于是右边 $=3\Psi_2\Psi_4$。移项得到**解耦方程**


$$
\Big[(\boldsymbol\Delta+3\gamma-\bar\gamma+4\mu+\bar\mu)(D+4\varepsilon-\rho)-(\bar\delta-\bar\tau+\bar\beta+3\alpha+4\pi)(\delta-\tau+4\beta)-3\Psi_2\Big]\Psi_4=0 . \tag{13}
$$


（有源时右边为 $4\pi T_4$。）方程里只剩 $\Psi_4$ 一个未知函数，度规扰动 $h_{\mu\nu}$ 从头到尾都没有出现。把 $l\leftrightarrow n$、$m\leftrightarrow\bar m$ 互换，就得到 $\Psi_0$ 的对应方程。

**换成 Boyer–Lindquist 坐标。** 把 (8)(10) 代入 (13)，令 $\Psi_4=\rho^4\psi$，整体乘以 $2\Sigma\rho^{-4}$，就得到 Teukolsky 主方程（这里 $s=-2$）：

$$\begin{aligned}
&\left[\frac{(r^2+a^2)^2}{\Delta}-a^2\sin^2\theta\right]\frac{\partial^2\psi}{\partial t^2}+\frac{4Mar}{\Delta}\frac{\partial^2\psi}{\partial t\,\partial\phi}+\left[\frac{a^2}{\Delta}-\frac1{\sin^2\theta}\right]\frac{\partial^2\psi}{\partial\phi^2}\\
&\quad-\Delta^{-s}\frac{\partial}{\partial r}\left(\Delta^{s+1}\frac{\partial\psi}{\partial r}\right)-\frac1{\sin\theta}\frac{\partial}{\partial\theta}\left(\sin\theta\frac{\partial\psi}{\partial\theta}\right)-2s\left[\frac{a(r-M)}{\Delta}+\frac{i\cos\theta}{\sin^2\theta}\right]\frac{\partial\psi}{\partial\phi}\\
&\quad-2s\left[\frac{M(r^2-a^2)}{\Delta}-r-ia\cos\theta\right]\frac{\partial\psi}{\partial t}+\left(s^2\cot^2\theta-s\right)\psi=4\pi\Sigma T .
\end{aligned} \tag{14}$$

同一个方程中取不同的 $s$ 就描述不同的场：$s=0$ 时它就是 Kerr 中的无质量 Klein–Gordon 方程 $\Sigma\,\Box\psi=0$；$s=+2$ 时 $\psi=\Psi_0$（$2\Sigma$ 乘以 $\Psi_0$ 的解耦算符，正好等于 (14) 的左边）；$s=\pm1$ 对应电磁场。满足这个"好"方程的是 $\psi=\rho^{-4}\psi_4=(r-ia\cos\theta)^4\psi_4$，不是 $\psi_4$ 本身。下面展开式里的 $\left(\frac1{r-ia\cos\theta}\right)^4$ 就是这样来的。

### 分离变量

方程 (14) 的系数只依赖 $r,\theta$（Kerr 时空稳态、轴对称），所以可以对 $t$ 做傅里叶变换到频域、对 $\phi$ 做傅里叶级数。更难得的是 $r$ 和 $\theta$ 还能进一步分离，这背后是 Kerr 时空的隐藏对称性（Carter 发现的 Killing 张量）。于是把 $\psi_4$ 写成


$$
\psi_4=\left(\frac{1}{r-ia\cos\theta}\right)^4\int^{+\infty}_{-\infty}d\omega\sum_{lm}R_{lm\omega}(r)\,{}_{-2}S^{a\omega}_{lm}(\theta)\,e^{im\phi}e^{-i\omega t}. \tag{15}
$$


要得到 $R$ 和 $S$ 各自满足的方程，把 $\psi=e^{-i\omega t}e^{im\phi}S(\theta)R(r)$ 代入无源的 (14)，此时 $\partial_t\to-i\omega$，$\partial_\phi\to im$。记


$$
K\equiv(r^2+a^2)\omega-am .
$$


先收集只含 $r$ 的项。$\partial_t^2$、$\partial_t\partial_\phi$、$\partial_\phi^2$ 三项中带 $1/\Delta$ 的部分合起来是 $\dfrac{-\omega^2(r^2+a^2)^2+4Mamr\omega-a^2m^2}{\Delta}$。用 $2Mr=r^2+a^2-\Delta$ 把 $4Mamr\omega$ 改写成 $2am\omega(r^2+a^2)-2am\omega\Delta$，分子就成了 $-K^2-2am\omega\Delta$，所以这部分 $=-\dfrac{K^2}{\Delta}-2am\omega$。两个一阶导数项中带 $1/\Delta$ 的部分，加上 $-2s(-r)(-i\omega)$ 一项，合起来是


$$
\frac{-2isam(r-M)+2is\omega M(r^2-a^2)}{\Delta}-2is\omega r .
$$


又 $2is(r-M)K=2is\omega(r-M)(r^2+a^2)-2isam(r-M)$，且 $\omega M(r^2-a^2)-\omega(r-M)(r^2+a^2)=\omega\left(2Mr^2-r^3-ra^2\right)=-\omega r\Delta$，所以分子 $=2is(r-M)K-2is\omega r\Delta$，这部分 $=\dfrac{2is(r-M)K}{\Delta}-4is\omega r$。

再收集只含 $\theta$ 的项：


$$
a^2\omega^2\sin^2\theta+\frac{m^2}{\sin^2\theta}+\frac{2ms\cos\theta}{\sin^2\theta}+2sa\omega\cos\theta+s^2\cot^2\theta-s-\frac{1}{S\sin\theta}\frac{d}{d\theta}\left(\sin\theta\frac{dS}{d\theta}\right),
$$


其中 $a^2\omega^2\sin^2\theta=a^2\omega^2-a^2\omega^2\cos^2\theta$，常数 $a^2\omega^2$ 挪到径向一侧。两部分之和为零，一部分只依赖 $r$，另一部分只依赖 $\theta$，所以各自等于常数。记角向部分的常数为 $A$，就得到角向方程


$$
\frac1{\sin\theta}\frac{d}{d\theta}\left(\sin\theta\frac{dS}{d\theta}\right)+\left(a^2\omega^2\cos^2\theta-\frac{m^2}{\sin^2\theta}-2a\omega s\cos\theta-\frac{2ms\cos\theta}{\sin^2\theta}-s^2\cot^2\theta+s+A\right)S=0 \tag{16}
$$


和径向方程


$$
\Delta^{-s}\frac{d}{dr}\left(\Delta^{s+1}\frac{dR}{dr}\right)+\left(\frac{K^2-2is(r-M)K}{\Delta}+4is\omega r-\lambda\right)R=0,\qquad\lambda\equiv A+a^2\omega^2-2am\omega . \tag{17}
$$


（把 $e^{-i\omega t+im\phi}RS$ 代入 (14) 左边，结果恰为 $-e^{-i\omega t+im\phi}\left[S\cdot(17)\text{左边}+R\cdot(16)\text{左边}\right]$。）

(15) 中的 ${}_{-2}S^{a\omega}_{lm}$ 就是 (16) 的解，叫做 spin weight $=-2$ 的 spin weighted spheroidal harmonics，这是个不那么常见的特殊函数。(16) 要求解在 $\theta=0,\pi$ 处正则，这是一个本征值问题：只有一系列离散的 $A=A_{lm}(a\omega)$ 有解。它依赖 $a$ 只通过 $a\omega$ 这个组合：$a\omega=0$ 时它退化为 spin weighted spherical harmonics ${}_sY_{lm}$ 的 $\theta$ 部分，$A=(l-s)(l+s+1)$；再取 $s=0$，才是常见的球谐函数 (spherical harmonics)。更多讨论可以参考 *[这篇PRD](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.73.024013)*。

取 $s=-2$，有 $\Delta^{-s}\frac{d}{dr}\left(\Delta^{s+1}\frac{dR}{dr}\right)=\Delta^2\frac{d}{dr}\left(\frac1\Delta\frac{dR}{dr}\right)$，于是我们就得到了关于径向函数 $R$ 的常微分方程


$$
(r^2-2Mr+a^2)^2\frac{d}{dr}\left(\frac{1}{r^2-2Mr+a^2}\frac{dR_{lm\omega}}{dr}\right)-V(r)R_{lm\omega}=-\mathscr T_{lm\omega}(r),\qquad V(r)=-\frac{K^2+4i(r-M)K}{\Delta}+8i\omega r+\lambda . \tag{18}
$$


$V(r)$ 相当于一个势能（$a=0$ 时 $\lambda=(l-1)(l+2)$）；$\mathscr T_{lm\omega}(r)$ 是一串关于能动量张量的很长的式子，相当于波源（来自 (14) 右边的 $4\pi\Sigma T$，其符号和归一化各文献不同）。对QNM的问题，我们只考虑没有波源，也就是右边是0的情形——做个类比的话，敲一下音叉，音叉ringdown的过程中，是没有额外的波源在激发声波的。

### 像薛定谔方程，又不完全像

回头看一看我们的操作，很像是描述了一个波在势能 $V(r)$ 的影响下在空间中传播的情况，就像是对一维薛定谔方程，波函数在势能场中传播一样。但是也有两处显著的不同。

**第一，关于空间的导数里混进了一些奇怪的东西**：(18) 里是 $\Delta^2\frac{d}{dr}\left(\frac1\Delta\frac{d}{dr}\right)$ 而不是 $\frac{d^2}{dr^2}$。这可以通过一个坐标变换加一次重新标度消除掉。引入乌龟坐标


$$
\frac{dr_\ast}{dr}=\frac{r^2+a^2}{\Delta},\qquad r_\ast=r+\frac{2Mr_+}{r_+-r_-}\ln\frac{r-r_+}{2M}-\frac{2Mr_-}{r_+-r_-}\ln\frac{r-r_-}{2M} \tag{19}
$$


（$\frac{r^2+a^2}{\Delta}=1+\frac{2Mr}{(r-r_+)(r-r_-)}$，对后一项作部分分式即得）。$r\to r_+$ 时 $r_\ast\to-\infty$，$r\to\infty$ 时 $r_\ast\approx r+2M\ln r\to+\infty$。再令 $R=\Delta^{-s/2}(r^2+a^2)^{-1/2}\,Y$，代入 (17)，一阶导数项就被消掉了：


$$
\frac{d^2Y}{dr_\ast^2}+\mathcal Q(r)\,Y=0,\qquad\mathcal Q=\frac{K^2-2is(r-M)K+\Delta\left(4is\omega r-\lambda\right)}{(r^2+a^2)^2}-G^2-\frac{dG}{dr_\ast},\qquad G=\frac{s(r-M)}{r^2+a^2}+\frac{r\Delta}{(r^2+a^2)^2}. \tag{20}
$$


（精确地说，(17) 左边 $=\Delta^{-s/2-1}(r^2+a^2)^{3/2}\times$ (20) 左边。）与一维定态薛定谔方程 $\psi''+(E-V)\psi=0$ 对比，$\mathcal Q$ 扮演的是 $E-V$。

**第二，等效势在两端的行为和通常的薛定谔问题不同。** 计算 (20) 的两端极限得


$$
r\to\infty:\ \ \mathcal Q=\omega^2+\frac{2is\omega}{r}+O(r^{-2});\qquad r\to r_+:\ \ \mathcal Q\to(p-is\kappa)^2;\qquad p\equiv\omega-m\Omega_H,\quad\Omega_H=\frac{a}{2Mr_+},\quad\kappa=\frac{r_+-r_-}{2(r_+^2+a^2)} . \tag{21}
$$


$\Omega_H=a/(r_+^2+a^2)$ 是视界角速度，$\kappa$ 是视界表面引力（Hawking 温度 $T_H=\kappa/2\pi$）。也就是说，势在视界处趋于常数，**但是一个复常数**；在无穷远处趋于 $\omega^2$，但带一个**复的、长程的 $1/r$ 尾巴**（类似库仑势）。只有 $s=0$ 时两者才回到普通情形：尾巴消失，视界处趋于 $p^2$，解就是纯平面波 $e^{\pm i\omega r_\ast}$、$e^{\pm ipr_\ast}$。

因为这些不同，径向函数 $R$ 在无穷远以及horizon附近的行为不是简单的简谐波，而是有一些与 $r$ 相关的 prefactor。用 WKB 形式 $Y\sim\exp\left(\pm i\int\sqrt{\mathcal Q}\,dr_\ast\right)$ 就能看出它们从哪来。在无穷远处，$\sqrt{\mathcal Q}\approx\omega+\frac{is}{r}$，$\int\sqrt{\mathcal Q}\,dr_\ast\approx\omega r_\ast+is\ln r$，故 $Y\sim r^{\mp s}e^{\pm i\omega r_\ast}$。在视界处，$Y\sim e^{\pm i(p-is\kappa)r_\ast}=e^{\pm ipr_\ast}e^{\pm s\kappa r_\ast}$；由 (19)，视界附近 $r_\ast\approx\frac1{2\kappa}\ln(r-r_+)$，即 $e^{2\kappa r_\ast}\propto\Delta$，所以 $e^{\pm s\kappa r_\ast}\propto\Delta^{\pm s/2}$。换回 $R=\Delta^{-s/2}(r^2+a^2)^{-1/2}Y$（无穷远处 $R\approx r^{-s-1}Y$），得到


$$
R\sim\begin{cases}r^{-1}e^{-i\omega r_\ast}\ \ (\text{入射}),\qquad r^{-2s-1}e^{+i\omega r_\ast}\ \ (\text{出射}), & r\to\infty,\\[6pt]\Delta^{-s}e^{-ipr_\ast}\ \ (\text{入射}),\qquad e^{+ipr_\ast}\ \ (\text{出射}), & r\to r_+.\end{cases} \tag{22}
$$


对 $s=-2$，无穷远处的出射解 $\propto r^3e^{i\omega r_\ast}$，视界处的入射解 $\propto\Delta^2e^{-ipr_\ast}$，所谓与 $r$ 相关的 prefactor 就是这里的 $r^3$ 和 $\Delta^2$。

不用 WKB 也可以直接验证 (22)。把 $R=r^\alpha e^{\pm i\omega r_\ast}$ 代入 (17) 并除以 $r^2R$：$O(1)$ 项 $-\omega^2+\omega^2$ 抵消；$O(1/r)$ 中的两个 $\pm4M\omega^2/r$ 也互相抵消（$r_\ast$ 里必须有 $2M\ln r$，就是这个原因）；剩下的 $O(1/r)$ 条件是 $\pm2i\omega\alpha\pm2i\omega(s+1)+2is\omega=0$，即出射 $\alpha=-2s-1$、入射 $\alpha=-1$。视界处把 $R=\Delta^\beta e^{\pm ipr_\ast}$ 代入、比较 $(r-r_+)^{-1}$ 项的系数，得到 $c^2+s\Delta'_+c+K_+^2-is\Delta'_+K_+=0$，其中 $c=\beta\Delta'_+\pm iK_+$，$K_+=(r_+^2+a^2)p$，$\Delta'_+=r_+-r_-$。它的两个根 $c=iK_+$ 和 $c=-s\Delta'_+-iK_+$，分别对应出射 $\beta=0$ 和入射 $\beta=-s$。

再做一个物理检查。由 (15)，$\psi_4=\rho^4R\,e^{-i\omega t}\cdots$，远处 $\rho^4\approx r^{-4}$。出射波 $\psi_4\sim r^{-4}\cdot r^3e^{-i\omega(t-r_\ast)}=e^{-i\omega u}/r$，与 peeling 定理的 $\Psi_4\sim1/r$ 一致；入射波 $\psi_4\sim e^{-i\omega v}/r^5$（$v=t+r_\ast$）。两者在远处相差 $r^4$ 倍，所以数值上很难从出射波里分辨出"一点点入射波"，求 QNM 频率时需要专门的方法（见下面的 Leaver 连分数）。

### 边界条件

好像有点跑题，回到QNM的问题上来，现在我们已经有了关于时空微扰的方程，要描述ringdown，只要再确定边界条件就可以了——在无穷远处，我们认为不应该有向里传播的波，而应该只有向外辐射的波；在horizon附近，我们认为不应该有什么东西从horizon里跑出来，所以只有向里走的波。

无穷远处很好理解：时间因子 $e^{-i\omega t}$ 与 $e^{+i\omega r_\ast}$ 合成 $e^{-i\omega(t-r_\ast)}$，等相位面随 $t$ 增大向外跑。horizon 处要小心一点：(22) 里的入射解是 $\Delta^2e^{-ipr_\ast}$，而不只是 $e^{-ipr_\ast}$。这是因为 Boyer–Lindquist 坐标和 Kinnersley 标架在视界上都是奇异的，判断"进"和"出"要换到在视界上正则的描述：

1. 改用入射 Kerr 坐标 $v=t+r_\ast$，$\tilde\phi=\phi+r_\sharp$，其中 $dr_\sharp/dr=a/\Delta$。由于 $a=\Omega_H(r_+^2+a^2)$，视界附近 $r_\sharp\approx\Omega_Hr_\ast+\text{const}$，所以

$$
e^{-i\omega t+im\phi}e^{-ipr_\ast}=e^{-i\omega v+im\tilde\phi}\,e^{-im\left(r_\sharp-\Omega_Hr_\ast\right)},
$$

在视界上光滑。出射解 $e^{+ipr_\ast}$ 则多出一个因子 $e^{2ipr_\ast}$，它在 $r\to r_+$ 时无限振荡，在未来视界上不光滑。
2. 在 $(v,r,\theta,\tilde\phi)$ 坐标下，Kinnersley 标架的分量是 $l^\mu=\left(\frac{2(r^2+a^2)}{\Delta},\,1,\,0,\,\frac{2a}{\Delta}\right)$，$n^\mu=\left(0,\,-\frac{\Delta}{2\Sigma},\,0,\,0\right)$：$l$ 发散，$n$ 趋于零。做 boost $l\to\frac{\Delta}{2\Sigma}l$，$n\to\frac{2\Sigma}{\Delta}n$，就得到在视界上正则的标架（Hawking–Hartle 标架）。这又是一个第三类变换，按 (5)，$\Psi_4^{\rm HH}=\left(\frac{2\Sigma}{\Delta}\right)^2\Psi_4$。
3. 物理上要求 $\Psi_4^{\rm HH}$ 在未来视界上正则，所以 $\Psi_4\propto\Delta^2\times(\text{正则函数})$。$\rho^4$ 在 $r_+$ 处正则，因此 $R\propto\Delta^2e^{-ipr_\ast}$，正好是 (22) 中 $s=-2$ 的入射解。

顺带一提，$p$ 可以为负（$0<\omega<m\Omega_H$，超辐射区）。这时 $e^{-ipr_\ast}$ 的相位看起来在向外传，能量甚至会被从黑洞中提取出来（超辐射），但对视界附近的局部观测者来说，波仍然是落进视界的。所以边界条件要按上面的正则性来定，不能只看相位。

到这里，我们终于可以严格地说清楚QNM是什么了：Quasinormal mode就是在“在无穷远处只有向外走的波，在horizon处只有向里走的波”的边界条件下，Teukolsky方程的解。

为什么叫quasinormal mode呢？还是拿弹性波做个类比，比如我们要描述一根琴弦的振动，我们会从弹性波方程出发，做个傅里叶变换变成常微分方程，然后确定琴弦两端的边界条件——两端固定，位移为0。这样得到的解是简正模(normal mode)，对琴弦这种简单的系统，简正模就是一系列波长整数倍等于弦长的驻波，相应的频率都是实数并且是某个基频的整数倍。一般情况下复杂一点的比如鼓面也同样有各种复杂的简正模(normal mode)，频率也都是实数。回到我们的quasinormal mode来，我们推演引力波的过程和推演琴弦的简正模的过程都是类似的，但是边界条件不同：我们不是把两侧的时空捏住，而是任由波带着能量向外逃走。这样我们不能得到频率为实数的简正模(normal mode)，而是会得到频率为复数的准·简正模(quasinormal mode)，频率有虚部意味着quasi-normal mode是随时间衰减的（对 $e^{-i\omega t}$ 的约定，衰减对应 $\mathrm{Im}\,\omega<0$），而不是像简正模(normal mode)那样稳定存在的。

"准"字在数学上还有一层意思。QNM 频率 $\omega=\omega_R+i\omega_I$ 有 $\omega_I<0$，于是 $\lvert e^{i\omega r_\ast}\rvert=e^{-\omega_Ir_\ast}\to\infty$（$r_\ast\to+\infty$），$\lvert e^{-ipr_\ast}\rvert=e^{\omega_Ir_\ast}\to\infty$（$r_\ast\to-\infty$）：QNM 的径向函数在两端都指数增长，不可归一化。物理上这是因果性的结果：此刻在更大 $r$ 处看到的波，是更早、振幅更大的时候发出的。所以 QNM 问题不是琴弦那样的自伴本征值问题，频率也就不必是实数。

**总结一下**，我们对广义相对论中的Kerr时空做微扰，计算无源情况的引力波传播情况归结为解齐次的Teukolsky方程：

$$
(r^2-2Mr+a^2)^2\frac{d}{dr}\left(\frac{1}{r^2-2Mr+a^2}\frac{dR_{lm\omega}}{dr}\right)-V_{lm\omega}(r)R_{lm\omega}=0
$$

而Quasinormal mode就是这个方程满足 $R_{lm\omega}(r\to\infty)\propto r^3e^{i\omega r_\ast}$ 且 $R_{lm\omega}(r\to r_+)\propto(r^2-2Mr+a^2)^2e^{-ipr_\ast}$ 的解，其中 $V_{lm\omega}$ 由 (18) 给出，$r_\ast$ 是乌龟坐标 (19)，$p=\omega-m\Omega_H$。

### QNM 频率怎么求

要注意一点，在整个复平面上，只有很少的一系列频率是使得这个方程能够有满足如上边界条件的解的，就像琴弦振动的简正模，只有频率取某个基频的整数倍时，才能满足两端夹紧的边界条件。而在整个复平面上找出这一系列频率（Quasinormal mode spectrum），就是计算QNM的核心问题了。知道了频率，解上面这个常微分方程就是很straight forward的事了，而且就算不解这个方程，波形大致长什么样也清楚了——差不多就是一个指数衰减（频率的虚部）的简谐波（频率的实部）。

找频率的标准方法是 Leaver (1985) 的连分数法。以 Schwarzschild（$a=0$）为例：这时 $s=-2$ 的 Teukolsky 径向方程与 Regge–Wheeler 方程


$$
\frac{d^2X}{dr_\ast^2}+\left[\omega^2-\left(1-\frac{2M}{r}\right)\left(\frac{l(l+1)}{r^2}+\frac{2M(1-s^2)}{r^3}\right)\right]X=0\qquad(s=2)
$$


有相同的 QNM 谱（两者由 Chandrasekhar 变换联系）。取 $2M=1$，此时 $r_\ast=r+\ln(r-1)$。先把两端的边界行为提出来，写成


$$
X=(r-1)^{-i\omega}\,r^{2i\omega}\,e^{i\omega(r-1)}\sum_{n=0}^{\infty}a_n\left(\frac{r-1}{r}\right)^n ,
$$


第一个因子在视界处 $\approx e^{-i\omega r_\ast}$（入射），三个因子合起来在无穷远处 $\approx r^{i\omega}e^{i\omega r}\approx e^{+i\omega r_\ast}$（出射）。代入方程，级数系数满足三项递推（代入并除去前置因子后，方程左边恰为 $x(1-x)^2\sum_n(\alpha_na_{n+1}+\beta_na_n+\gamma_na_{n-1})x^n$，$x=(r-1)/r$）：

$$\begin{aligned}
&\alpha_na_{n+1}+\beta_na_n+\gamma_na_{n-1}=0,\\
&\alpha_n=n^2+(2-2i\omega)n+1-2i\omega,\qquad\beta_n=-\left[2n^2+(2-8i\omega)n-8\omega^2-4i\omega+l(l+1)+1-s^2\right],\qquad\gamma_n=n^2-4i\omega n-4\omega^2-s^2 .
\end{aligned} \tag{23}$$

$x$ 从视界处的 0 走到无穷远处的 1。边界条件已经放进前置因子里，剩下的要求是级数在 $x=1$ 处收敛，也就是 $\{a_n\}$ 是递推的"最小解"。这等价于连分数条件


$$
0=\beta_0-\cfrac{\alpha_0\gamma_1}{\beta_1-\cfrac{\alpha_1\gamma_2}{\beta_2-\cdots}} . \tag{24}
$$


在复 $\omega$ 平面上对 (24) 求根就得到 QNM 频率；求第 $n$ 个泛音时，用"第 $n$ 次反演"后的连分数最稳定。按 (23)(24) 算出（截断深度 4000）：

| $l$ | 泛音 $n$ | $M\omega$ |
| --- | --- | --- |
| 2 | 0 | $0.37367-0.08896\,i$ |
| 2 | 1 | $0.34671-0.27391\,i$ |
| 2 | 2 | $0.30105-0.47828\,i$ |
| 3 | 0 | $0.59944-0.09270\,i$ |

与文献的标准值（Leaver 1985；Berti, Cardoso & Starinets 2009）一致。换成物理单位（$GM_\odot/c^3=4.925\ \mu\mathrm s$）：对 $M=60M_\odot$ 的 Schwarzschild 黑洞，$l=2$ 基频为 $f=\mathrm{Re}\,\omega/2\pi\approx201$ Hz，衰减时间 $\tau=1/\lvert\mathrm{Im}\,\omega\rvert\approx3.3$ ms，品质因子 $Q=\mathrm{Re}\,\omega/(2\lvert\mathrm{Im}\,\omega\rvert)\approx2.1$。它振不了几下就衰减掉了，这就是上面说的"指数衰减的简谐波"。真实的并合残骸带自旋，频率更高，例如 GW150914 的 ringdown 约 250 Hz。Kerr 情形的思路相同，只是角向方程 (16) 也要用连分数求 $A_{lm}$，两个连分数联立求根。

## 各种不同黑洞的QNM谱

上面推导Quasinormal mode的过程虽然是对Kerr时空而言的，但可以很直接地推广到任意理论中的黑洞解，只要做微扰，分离变量，对径向函数找到满足边界条件的解就行了。

之前说过，知道频率，也就是 Quasinormal mode spectrum，就基本掌握了这个时空中QNM的全部信息了。参考Berti、Cardoso和Starinets的*[这篇Review](http://iopscience.iop.org/article/10.1088/0264-9381/26/16/163001/pdf)*（arXiv:0905.2975），下面给几个不同黑洞的QNM spectrum的例子。

1. Schwarzschild黑洞

这个是最简单的黑洞了，是Kerr黑洞自旋为0 的特例，我们以它为例先建立一个QNM谱的直观印象

*Figure 5. of Berti et al. Class. Quantum Grav. 26 (2009) 163001*

自旋为0时，需要两个index l, m标记的spin weighted spheroidal harmonics退化成了只用一个index l 来标记的spin weighted spherical harmonics（<https://en.wikipedia.org/wiki/Spin-weighted_spherical_harmonics>），相应的径向函数也只用一个l标记，于是QNM也按照index l 分类成一条条谱线。注意，这个谱不是连续的，只有那一个个点是允许的QNM频率，连起来只是为了好看。

最下面的那几个mode，图里看几乎是贴着x轴的，它们的虚部和同一 l 的其他mode相比是最小的，但不是0。虚部很小意味着它们衰减很慢，我们叫它们fundamental mode（泛音数 $n=0$）。其他的mode（泛音，overtone），即便是紧邻fundamental mode的，衰减得都比fundamental mode快得多：由上一节的表，$l=2$ 的 $n=1$ 泛音虚部约是 $n=0$ 的 3 倍。因此 ringdown 晚期基本只剩 fundamental mode（且通常以 $l=m=2$ 为主），从实验的角度看，一个黑洞QNM的fundamental mode是最重要的。不过，如果从波形峰值附近就开始用 QNM 拟合，若干个泛音的贡献也不能忽略（Giesler, Isi, Scheel & Teukolsky 2019）。

2. Kerr黑洞

对Kerr黑洞，QNM谱应当是由两个index l,m标记的一条条谱线，对每一个黑洞自旋角动量的取值，我们也可以画出来类似上面的图，不过会比较乱。为了抓住最重要的物理，我们关注一下fundamental mode随黑洞自旋的变化——这可以看做引力波版本的Zeeman分裂

*Figure 9. of Berti et al. Class. Quantum Grav. 26 (2009) 163001*

这里纵坐标是频率的实部，可以看出，随着自旋逐渐增大，原本简并在一起的QNM会逐渐分裂开——这就像是引力波版本的原子光谱Zeeman分裂。第一个index 是 l 的谱线，会分裂成 2l+1条谱线，这是由角方程 (16)，也就是spin weighted spheroidal harmonics决定的，因为第二个index m取值范围在-l, -l+1, ..., +l之间，总共有2l+1个取值。

这个图像和氢原子轨道非常相似，l可以理解为角量子数，m可以理解为磁量子数。这也就是为什么说“**黑洞是21世纪的原子**”

3. 高维黑洞

很久以前（Kaluza–Klein 理论）就有人大胆地设想我们的宇宙超过四维。弦论要求额外维度，Calabi-Yau流形的紧致化给出了更高的维度如何在日常生活中被隐藏起来的一种机制——不过至今还没有实验证据。所以从理论上考虑高维黑洞的QNM也是自然而然的事了，比如*[这篇文章](https://arxiv.org/pdf/gr-qc/0309112.pdf)*算了5维黑洞的QNM

*FIG. 4 of Cardoso V, Lemos J P S and Yoshida S, Phys. Rev. D 69 044004*

4. Schwarzschild Anti de Sitter黑洞

AdS/CFT对偶是近年来一个很火的东西，甚至在凝聚态物理和量子信息中也找到了应用，其中AdS就是指Anti de Sitter时空，下面这张图就是Anti de Sitter时空中Schwarzschild 黑洞的QNM谱

*Figure 12 of Berti et al. Class. Quantum Grav. 26 (2009) 163001*

这个图黑字写错了，应该是scalar/vector-type/tensor-type。解释一下：引力的perturbation按它在 $(D-2)$ 维球面上作为标量、矢量还是张量谐函数变换，可以分成标量、矢量、张量三种类型（Kodama–Ishibashi 分类），三类都是引力（自旋 2 场）的扰动。在四维中，scalar-type 就是 polar（偶宇称，Zerilli）扰动，vector-type 是 axial（奇宇称，Regge–Wheeler）扰动，tensor-type 只在 $D\ge5$ 时存在。注意这和 Teukolsky 方程 (14) 里的 $s$ 不是一回事：$s$ 是 spin weight，标记的是场的种类，$s=0$ 是标量场，$s=\pm1$ 是电磁场，$s=\pm2$ 是引力场；拿原子来类比，它更像是在区分不同的粒子，而不是同一个粒子的不同状态。在广义相对论的引力波 QNM 中 $s$ 只取 $\pm2$，所以前面一直用的是 $s=-2$。

回到这张图，黑点就是引力波的QNM频率，一个non-trivial的发现是，标量、矢量、张量三种类型的QNM谱，几乎是重合起来的。这让人想起 iso-spectrality：在四维渐近平直的 Schwarzschild 黑洞中，axial 和 polar 两类引力扰动的 QNM 谱**完全相同**，尽管 Regge–Wheeler 势与 Zerilli 势的形式并不一样。这是一个很有趣的结论，证明也是一个non-trivial的工作（Chandrasekhar 用一个联系两种势的变换证明了它，见 *The Mathematical Theory of Black Holes*, 1983）。在 Schwarzschild–AdS 中，这种严格的等谱一般会被破坏（Cardoso & Lemos 2001），所以图中三类谱只是"几乎"重合。

**更多的与QNM相关的东西，可以参考Berti、Cardoso和Starinets 2009 年的*[这篇Review](http://iopscience.iop.org/article/10.1088/0264-9381/26/16/163001/pdf)***

---

## 参考文献

- E. Newman, R. Penrose, J. Math. Phys. 3, 566 (1962)：NP 形式与 NP 方程 (12)。
- W. Kinnersley, J. Math. Phys. 10, 1195 (1969)：Kinnersley 标架 (8)。
- P. Szekeres, J. Math. Phys. 6, 1387 (1965)：五个 Weyl 标量的物理解释。
- S. A. Teukolsky, PRL 29, 1114 (1972)；ApJ 185, 635 (1973)：解耦方程 (13)、主方程 (14)、分离变量。
- J. M. Stewart, M. Walker, Proc. R. Soc. Lond. A 341, 49 (1974)：一阶规范不变性。
- S. A. Teukolsky, W. H. Press, ApJ 193, 443 (1974)：$\psi_4$ 与能流。
- S. Chandrasekhar, *The Mathematical Theory of Black Holes* (1983)：Regge–Wheeler/Zerilli 方程与 isospectrality。
- E. W. Leaver, Proc. R. Soc. Lond. A 402, 285 (1985)：连分数方法 (23)(24)。
- V. Cardoso, J. P. S. Lemos, PRD 64, 084017 (2001)：Schwarzschild–AdS 中的 QNM。
- E. Berti, V. Cardoso, A. O. Starinets, CQG 26, 163001 (2009)：QNM 综述。
- M. Giesler, M. Isi, M. A. Scheel, S. A. Teukolsky, PRX 9, 041060 (2019)：ringdown 中的泛音。

## 修订与核对记录

本文以知乎回答（信烁，2020）为底本，2026-11-17 修订：补出了原文省略的推导（Q1），把它们融入正文（Q2），并在「预备」一节补写了 Weyl 曲率的投影及其与 Kinnersley 标架的关系（Q3）。

**相对原文的订正**

- 笔误："双星并和" → "双星并合"，"Schwarschild" → "Schwarzschild"，"2l+1调谱线" → "2l+1条谱线"。
- spheroidal harmonics 退化为普通球谐函数的条件是 $s=0$ 且 $a\omega=0$（原文写作 $a=0$）。
- 原文"势能在无穷远和 horizon 附近并不趋于常数"：视界处其实趋于复常数，无穷远处带复的长程 $1/r$ 尾巴，见 (21)。
- QNM 边界条件公式：删去 $R$ 上一个空的上标（原写法含两个连续的左花括号，会被 Jekyll 的 Liquid 当作模板语法，导致站点构建失败）；`r*` 改为 $r_\ast$；补上原文未定义的 $p=\omega-m\Omega_H$。
- (11) 在 Teukolsky 的约定下成立，换成 $(-,+,+,+)$ 号差和物理应变时差一个负号。
- fundamental mode 一段补充了泛音在峰值附近的作用；高维黑洞一段注明额外维度尚无实验证据；SAdS 一段改正了"自旋量子数"类比（原文把 spin weight $s$ 与 scalar/vector/tensor-type 混为一谈，并称电子"介于标量和矢量之间"），并说明了严格的 isospectrality 指什么。
- 综述作者补全为 Berti, Cardoso & Starinets。

**符号核对（Wolfram Language）**，结果均为恒等式成立：

1. (8) 满足 (2)，(7) 满足 $R_{ab}=0$；(1) 的系数由正文中的缩并直接验证；
2. 由定义算出的 12 个自旋系数与 (10) 一致，Weyl 标量满足 (9)；Kerr 上 (4) 的两式成立；Schwarzschild 静态观测者标架中 $C_{\hat t\hat r\hat t\hat r}=2M/r^3$、$C_{\hat t\hat\theta\hat t\hat\theta}=C_{\hat t\hat\phi\hat t\hat\phi}=-M/r^3$；$a=0$ 时 $l_K=\sqrt{2/f}\,l_S$、$n_K=\sqrt{f/2}\,n_S$、$m_K=m_S$；
3. 背景 Bianchi 恒等式 $D\Psi_2=3\rho\Psi_2$ 等四式；
4. 消去 $\Psi_3$ 用的算符恒等式（作用于任意函数），以及 $\Psi_0$ 方程中对应的恒等式；
5. $2\Sigma\rho^{-4}\times$ (13) 的算符 $=$ (14)（$s=-2$），以及 $s=+2$、$s=0$（Klein–Gordon）的对应关系；
6. 分离变量 (16)(17) 与势 (18)；
7. 变换 (20)、两端极限 (21) 与渐近形式 (22)；
8. 平面波情形的 (11)，以及该平面波的 $\Psi_0$ 到 $\Psi_3$ 全为零；
9. 递推关系 (23) 的推导，以及表中的数值根。

NP 方程 (12) 取自 Newman & Penrose (1962)，没有从 Riemann 张量重新推导；但由它推出的 (13) 与 (14) 逐项吻合，可以作为交叉检验。(5) 中三类变换的一阶项（第一类下 $\delta\Psi_4=4\bar c\Psi_3$、$\delta\Psi_1=\bar c\Psi_0$，第二类下 $\delta\Psi_0=4d\Psi_1$）由 Weyl 张量的对称性和无迹性手算得到；高阶项是标准结果，没有另行核对。(6) 与 Petrov 分类、各 $\Psi_k$ 的 Szekeres 解释取自文献。

## 问答记录

**问答索引**

- Q1 — 补全并订正全文，补出 Weyl 曲率的来源与缺失的推导。
- Q2 — 把 Q1 的补充内容自然融入正文（Q1 的结构调整）。
- Q3 — 在「预备」一节解释 Weyl 曲率、它的投影及其与 Kinnersley 标架的关系（Q1/Q2 中"投影""Kinnersley 标架"的展开）。

### Q1

**问题**：帮我补全并订正这篇 md，特别是 Weyl 曲率是怎么来的、具体怎么做；文中缺失的推导也要仔细算出来，一步步写清楚。

**解答**：Q1 时这些内容是七个独立的「补充」小节，Q2 已把它们并入正文，下面给出并入后的位置。Weyl 曲率的来源、零标架与 Weyl 标量、Kerr 的 Kinnersley 标架与自旋系数，见「预备：Weyl 曲率、它的投影与 Kinnersley 标架」（"投影"的含义、投影随标架怎么变、为什么 Kinnersley 标架下只剩 $\Psi_2$，见 Q3）；为什么选 $\psi_4$（背景为零、规范不变、代表向外辐射）以及 (11) 的推导，见「主角：$\psi_4$」；由 NP 方程解耦得到 Teukolsky 方程的推导，见「$\psi_4$ 满足的方程：Teukolsky 的解耦」；原文"一番操作"的分离变量与 $V(r)$ 的显式形式，见「分离变量」；prefactor 的来源，见「像薛定谔方程，又不完全像」；视界边界条件为什么带 $\Delta^2$，见「边界条件」；QNM 频率的求法与数值，见「QNM 频率怎么求」。订正清单与核对项目见「修订与核对记录」。

### Q2

**本条定位**：这是 **Q1** 的结构调整，内容不变。

**问题**：把几处补充自然融入文章：作为背景的放到正文之前，技术细节就地展开，允许改写原文。

**解答**：

- **背景前置**：Weyl 曲率的来源、NP 零标架与五个 Weyl 标量（含 spin weight）、Kerr 度规与 Kinnersley 标架及自旋系数，合并为正文之前的「预备」一节。
- **就地展开**：选 $\psi_4$ 的理由和 (11) 的推导放在引入 $\psi_4$ 的地方；Teukolsky 解耦放在原文"会得到关于 $\psi_4$ 的偏微分方程"处；分离变量的推导放在原文"一番操作"处，并把原来散在前面的 spheroidal harmonics 说明移到角向方程 (16) 之后；乌龟坐标与 prefactor 直接展开原文"两点不同"；视界正则性并入原文的边界条件段；Leaver 连分数接在原文"找出这一系列频率就是核心问题"之后。
- **改写原文**：原来以括注形式出现的订正（fundamental mode 与泛音、额外维度、spin weight 与扰动类型、isospectrality）直接写进正文；原文"两点不同"改写为准确表述；$\psi_4$ 与 $h_{+,\times}$ 的关系从分离变量之后前移到引入 $\psi_4$ 处。
- 公式统一编号（当时为 (1)–(21)，Q3 在「预备」一节新增三式后为 (1)–(24)）；所有已核对的公式内容与 Q1 版本一致。

### Q3

**本条定位**：这是 **Q1/Q2「预备」一节**中"Weyl 曲率的投影"与"Kinnersley 标架"两个概念的展开。

**问题**：关于"Weyl 曲率 $C$ 的一个投影"：需要在背景部分解释 Weyl 曲率及其投影，以及它们与 Kinnersley 标架的关系。

**解答**：「预备」一节改写为「Weyl 曲率、它的投影与 Kinnersley 标架」，开头先点明正文那句话里的三个概念，然后依次展开：

- **Weyl 曲率**：在原有分解 (1) 之外，补了它的可测含义：真空中自由下落观测者的潮汐加速度就是 $C_{\hat t\hat\imath\hat t\hat\jmath}$。
- **"投影"是什么意思**：投影就是取张量在一组标架下的分量，结果依赖标架（类比电磁场在不同观测者下的 $E$、$B$）。说明了为什么用零标架，以及怎样由正交标架构造"对称零标架"；解释了为什么恰好是五个复标量，并用无迹性和循环恒等式推出 (4)：$C_{lnln}=-(\Psi_2+\bar\Psi_2)$，$C_{lnm\bar m}=\Psi_2-\bar\Psi_2$；给出各 $\Psi_k$ 的物理解释（Szekeres），并举例：沿 $l$ 传播的平面波只有 $\Psi_4\neq0$。
- **投影怎么随标架变**：(5) 给出三类 Lorentz 变换下 $\Psi_k$ 的变换律，spin weight 的来源也在这里。
- **与 Kinnersley 标架的关系**：由 (6) 引入主零方向与 Petrov 分类；D 型的主标架下只剩 $\Psi_2$。Kerr 是 D 型，Kinnersley 标架 (8) 就是它的主标架（$l$、$n$ 沿向外、向内的主零测地线），再加上 $l^r=1$、$\varepsilon=0$ 这一 boost/spin 规范，所以 (9) 中只剩 $\Psi_2$。用 Schwarzschild 说明 $\Psi_2$ 就是牛顿潮汐场（$C_{\hat t\hat r\hat t\hat r}=-2\Psi_2$，$C_{\hat t\hat\theta\hat t\hat\theta}=\Psi_2$），虚部是转动带来的引力磁部分；$a=0$ 时 Kinnersley 标架是静态观测者对称零标架的 boost（$A=\sqrt{2/f}$），由此解释了 (11) 中的 $\frac12$ 和 Kinnersley 标架在视界处的奇异性。

正文「主角：$\psi_4$」相应改写：三条理由都改为引用「预备」一节（主标架 → 背景 $\Psi_4=0$；(5) → 规范不变，并指出这一条离不开主标架；$l$ 向外 → $\Psi_4$ 是向外的横波），(11) 的因子 $\frac12$ 改用 boost 解释。新增公式 (4)–(6) 后，原 (4)–(21) 顺延为 (7)–(24)，全文引用已同步更新；新增的结论已用 Wolfram 核对（见「修订与核对记录」第 2、8 条）。
