---
title: "cavity_replacement_2211_2607 - 副本"
folder: "文章整理"
---
﻿# 用带腔壁黑洞替换 2211.03512 中 RN–AdS 背景：可核验推导

## 0. 范围与文献边界

本文只使用 arXiv:2211.03512（下称 2211）和 arXiv:2607.03749（下称 2607）。2211 研究四维 RN–AdS 黑洞；2607 正文研究有限球形腔中的渐近平坦 Schwarzschild 黑洞。2607 结论把 charged black hole 列为推广方向之一，并未给出 RN 腔的显式热力学公式。因此，Schwarzschild 腔部分是 2607 原文结果；RN 腔部分是基于 Einstein–Maxwell 度规和 Brown–York 能量的独立推导。

下文除特别说明外取 (G=1)（2211 的约定）；在保留 (G) 的腔公式中，RN 几何电荷记为 (q^2=GQ^2)，并采用 (4\pi\epsilon_0=1)。

## 1. 2211 的 RN–AdS 热势框架

2211, Sec. II, Eqs. (1)–(4)（源码 PTR2209.tex 行 62–76）给出

\[
M=\frac{r_h}{2}+\frac{4\pi P r_h^3}{3}+\frac{Q^2}{2r_h},\qquad
T_h=\frac{1+8\pi P r_h^2-Q^2/r_h^2}{4\pi r_h},
\]
\[
S=\pi r_h^2,\qquad
G=M-T_hS=\frac14\left(r_h-\frac{8\pi}{3}Pr_h^3+\frac{3Q^2}{r_h}\right).
\]

注：式 (1) 的 Q^2 项分母在原文中（源码行 63、HTML、PDF 三处一致）印作 (2r_h^2)，与同文式 (2)(4)(5) 及量纲均不自洽，应为笔误；本文按自洽形式 (2r_h) 书写。

临界量（2211, Eq. (5), 源码行 80–82）为
\[
r_c=\sqrt6Q,\qquad T_c=\frac{\sqrt6}{18\pi Q},\qquad P_c=\frac{1}{96\pi Q^2},\qquad G_c=\frac{\sqrt6Q}{3}.
\]

定义 (x=r_h/r_c,;p=P/P_c,;t=T/T_c)。将上述温度代入可得
\[
t_h(x,p)=\frac{3}{4x}+\frac{3p}{8}x-\frac{1}{8x^3}.
\]
2211 的非平衡热势定义为（Sec. II, Eq. (7), 源码行 90–92）
\[
f=\int (T_h-T)\,dS,
\]
并明确说明其极值对应平衡态。由于 (dS=12\pi Q^2x\,dx)，积分得到（Eq. (8), 行 97–99）
\[
f=\frac{\sqrt6Q}{3}\psi(x),\qquad
\psi(x)=\frac{1}{4x}+\frac{3x}{2}+\frac{px^3}{4}-tx^2.
\]
求导得
\[
\frac{d\psi}{dx}=-\frac{1}{4x^2}+\frac32+\frac{3p}{4}x^2-2tx,
\]
故极值满足
\[
3px^4-8tx^3+6x^2-1=0,
\]
这与 2211 源码行 120–127 的根方程一致。对 (0<p<1) 且 (t_1<t<t_3)，论文指出有三个正根 (x_1<x_2<x_3)：两端是势阱，中间是势垒。

因此 2211 可以定义两条 Kramers 速率（Eqs. (10)–(12), 源码行 122–124、138–141）
\[
r_{k1}=\frac{\sqrt{|f''(x_1)f''(x_2)|}}{2\pi}
\exp\!\left[-\frac{f(x_2)-f(x_1)}{D}\right],
\]
\[
r_{k2}=\frac{\sqrt{|f''(x_3)f''(x_2)|}}{2\pi}
\exp\!\left[-\frac{f(x_2)-f(x_3)}{D}\right].
\]
论文总结（源码行 162–175）指出速率在端点 (t_1)、(t_3) 处趋零，存在 (t_*\in(t_2,t_3)) 使两速率相等，并且小黑洞到大黑洞的转变总体占优。这些结论依赖 RN–AdS 的“双势阱+势垒”结构。

## 2. 直接替换为带腔 Schwarzschild 黑洞

### 2.1 2607 的原文热力学

2607, Sec. II（源码 v14.tex 行 99–124）取
\[
ds^2=-f(r)dt^2+f(r)^{-1}dr^2+r^2d\Omega_2^2,
\qquad f(r)=1-\frac{r_h}{r},
\]
并将腔壁放在 (r=R=r_B>r_h)。作者把腔壁视作全息屏，只讨论 Hartle–Hawking 热平衡。

第一定律是（2607 Eq. (3), 行 128–135）
\[
dE=T\,dS-P\,dV.
\]
熵和“体积”（几何上是腔壁面积）为（Eq. (4), 行 137–149）
\[
S=\frac{\pi r_h^2}{G},\qquad V=4\pi R^2.
\]
Brown–York 能量、Tolman 壁温和表面压强分别为（Eqs. (5)–(7), 行 151–168）
\[
E=\frac{R}{G}\left(1-\sqrt{1-\frac{r_h}{R}}\right),
\]
\[
T_B=\frac{1}{4\pi r_h\sqrt{1-r_h/R}},
\]
\[
P=\frac{1}{8\pi GR}\left[
\frac{1-r_h/(2R)}{\sqrt{1-r_h/R}}-1\right].
\]
2607 说明平直背景减法使 (r_h=0) 时 (E=P=0)，而 (R\to\infty) 时恢复 ADM 质量、Hawking 温度和 (dM=T_HdS)（行 170–171）。

### 2.2 替换后的 off-shell 热势

令
\[
x=\frac{r_h}{R},\qquad \tau=4\pi RT.
\]
取 (F(0)=0)，由 (F=E-TS) 得
\[
\boxed{\frac{G F_R(x;T)}{R}=1-\sqrt{1-x}-\frac{\tau}{4}x^2}.
\]
求导：
\[
\frac{G}{R}\frac{\partial F_R}{\partial x}
=\frac{1}{2\sqrt{1-x}}-\frac{\tau x}{2}.
\]
所以极值条件为
\[
\tau x\sqrt{1-x}=1
\quad\Longleftrightarrow\quad
T=T_B.
\]
平方并恢复 (r_h) 得
\[
r_h^3-Rr_h^2+\frac{R}{(4\pi T)^2}=0,
\]
这正是 2607 的温度三次方程（Eq. (10), 行 183–187）。

令 (d\tau/dx=0)，得到
\[
x_c=\frac23,\qquad \tau_c=\frac{3\sqrt3}{2},\qquad
RT_c=\frac{\sqrt{27}}{8\pi}.
\]
因此当 (RT>\sqrt{27}/(8\pi)) 时有两条物理解：小支 (0<x<2/3) 和大支 (2/3<x<1)（2607 Eq. (10) 后文字，行 189–197）。

稳定性可直接核验。由 (S=\pi R^2x^2/G) 和 (T=1/[4\pi Rx\sqrt{1-x}])，
\[
\frac{dT}{dx}=T\frac{3x-2}{2x(1-x)},
\]
\[
C_V=T\left(\frac{\partial S}{\partial T}\right)_R
=\frac{4\pi R^2x^2(1-x)}{G(3x-2)}.
\]
故 (x<2/3) 时 (C_V<0)（不稳定），(x>2/3) 时 (C_V>0)（稳定），与 2607 的原文判定一致。

### 2.3 为什么不能直接沿用 2211 的双向速率

Schwarzschild 腔的热势只有一个内部势垒（小支）和一个内部势阱（大支）；(x=0) 是辐射边界，而不是第二个光滑势阱。因此不存在 2211 中 (x_1,x_2,x_3) 对应的“两黑洞势阱+中间势垒”结构，不能直接使用 (r_{k1},r_{k2}) 的双向解释。

在平衡点计算
\[
\left.\frac{G}{R}F_R''\right|_{T=T_B}
=\frac{3x-2}{4x(1-x)^{3/2}},
\]
即可看到 (x=2/3) 处曲率变号。若研究“辐射\(\leftrightarrow\)大黑洞”，可把小支视为势垒、大支视为势阱，势垒高度为
\[
\Delta F=F_R(x_s)-F_R(0)=F_R(x_s).
\]
但由于 (x=0) 是边界，Kramers 前因子必须按边界逃逸问题重新求，不能声称是 2211 已证明的公式。

## 3. 带腔 RN 黑洞：独立 Einstein–Maxwell 推导

这一节不是 2607 的原文结果。取
\[
f(r)=1-\frac{2GM}{r}+\frac{q^2}{r^2},\qquad q^2=GQ^2,
\]
视界关系为 (2GM=r_++q^2/r_+)。在腔壁 (R) 处
\[
f_B=1-\frac{r_++q^2/r_+}{R}+\frac{q^2}{R^2}.
\]
Brown–York 能量和熵取
\[
E_{BY}=\frac{R}{G}(1-\sqrt{f_B}),\qquad S=\frac{\pi r_+^2}{G}.
\]
表面引力给出
\[
T_H=\frac{r_+^2-q^2}{4\pi r_+^3},
\]
Tolman 红移后的壁温为
\[
T_B=\frac{r_+^2-q^2}{4\pi r_+^3\sqrt{f_B}}.
\]
固定 (Q,R) 微分可得
\[
dE_{BY}=T_B\,dS.
\]
因此 2211 的 off-shell 定义在 RN 腔中变为
\[
\boxed{F_Q(r_+;T)=\frac{R}{G}(1-\sqrt{f_B})-\frac{\pi T r_+^2}{G}}.
\]
其极值满足
\[
\frac{\partial F_Q}{\partial r_+}=0
\quad\Longleftrightarrow\quad T_B(r_+,Q,R)=T.
\]
固定 (Q,R) 的热容为
\[
C_{V,Q}=\frac{4\pi r_+^3R f_B(r_+^2-q^2)}
{G\left[2r_+R f_B(3q^2-r_+^2)+(r_+^2-q^2)^2\right]}.
\]
其分母为零时 (T_B(r_+)) 出现转折，局部稳定性改变。令 (q\to0) 得
\[
C_V=\frac{4\pi r_+^2(1-r_+/R)}{G(3r_+/R-2)},
\]
恢复 2607 的 Schwarzschild 结果。RN 腔的根数必须在给定 (q/R) 和 (TR) 后数值求解，不能预先断言一定具有 2211 的三根结构。

## 4. Wolfram Language 核验

先调用 WolframLanguageContext 获取相关符号计算上下文，再由 WolframLanguageEvaluator 执行：

```Mathematica
Clear[G,R,r,q,T,EE];
fB = 1 - (r + q^2/r)/R + q^2/R^2;
EE = R/G (1 - Sqrt[fB]);
SS = Pi r^2/G;
TB = (r^2 - q^2)/(4 Pi r^3 Sqrt[fB]);
{
 FullSimplify[D[EE,r] - TB D[SS,r],
  Assumptions -> {G>0,R>r>q>0}],
 FullSimplify[D[EE - T SS,r] /. T -> TB,
  Assumptions -> {G>0,R>r>q>0}],
 FullSimplify[Limit[TB D[SS,r]/D[TB,r],q->0] -
  4 Pi r^2 (1-r/R)/(G (3 r/R-2)),
  Assumptions -> {G>0,R>r>0}]
}
```

实际输出为 `{0,0,0}`：分别核验 (dE_{BY}=T_BdS)、平衡时 (F=E-TS) 取极值，以及 RN 热容的 (q\to0) 极限。

## 参考文献与出处

- arXiv:2211.03512，Sec. II–III，Eqs. (1)–(12)，源码 PTR2209.tex 行 62–76、86–145、162–175。
- arXiv:2607.03749，Sec. II，Eqs. (1)–(7) 与 (10)（度规、第一定律、(S,V,E,T,P) 和温度三次方程），源码 v14.tex 行 99–200；Sec. III 可逆路径行 327–336；Sec. V 结论行 913–950，明确指出 charged black hole 属于自然的后续推广。
- 论文链接：[2211.03512](https://arxiv.org/abs/2211.03512)，[2607.03749](https://arxiv.org/abs/2607.03749)。

