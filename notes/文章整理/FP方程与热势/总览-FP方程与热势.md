---
title: "总览：FP 方程与热势"
folder: "文章整理/FP方程与热势"
---

本目录 2026-11-08 由用户单开，用于一项**独立计算**。当前只收录两篇文献，不含其它主题的论文。

## 一、收录文献

| 目录 | 文献 | 版本 | 分类 | 备注 |
| --- | --- | --- | --- | --- |
| `arXiv-2111.05856v1/` | Z.-M. Xu, *Fokker-Planck equation for black holes in thermal potential*, Phys. Rev. D **104** (2021) 104022 | v1（2021-11-10） | gr-qc; hep-th | `备注-热势与Fokker-Planck方程.md` |
| `arXiv-2506.04643v1/` | O. Sharma, A. Shukla, *Analysis of the Fokker-Planck Equation in Schwarzschild Spacetime: A Supersymmetric Connection* | v1（2025-06-05） | hep-th; quant-ph | `备注-超对称等谱形变.md` |

两篇的**关系有文献自身写明**：2506.04643 的参考文献 **[40]** 就是 2111.05856（Xu 2021）。2506 的出发点是 [40] 的结论（Schwarzschild 热势等价于量子谐振子、能级正比于系综温度），在此之上叠加 SUSY QM 的等谱形变。

## 二、两篇的核心链条（仅陈述文献原文，不做外推）

1. **热势** $U=\int(T_h-T)\,\mathrm{d}S$，平衡态对应 $\mathrm{d}U/\mathrm{d}S=0\Rightarrow T=T_h$ ——2111 式 (1)(2)。
2. **FP 方程 → Schrödinger 型**：$L=-D\partial_x^2+V$，$V=\frac{(f')^2}{4D}-\frac12f''$ ——2111 式 (5)–(9)；2506 式 (1)–(3)。
3. **Schwarzschild**：$f(x)=\frac12x-\pi Tx^2$ ⇒ $V=\frac{\pi^2T^2}{D}y^2+\pi T$，$y=x-\frac1{4\pi T}$ ⇒ 谐振子，$E_n=2\pi T(n+1)$ ——2506 式 (5)–(7)。
4. **SUSY 等谱形变**：超势平移 $W\to W+f$，$f$ 满足 Bernoulli 方程 $f^2+2Wf+f'=0$，得到同谱异波函数的势族（参数 $\lambda$）——2506 式 (14)–(25)。

## 三、目录内容

```
FP方程与热势/
├─ 总览-FP方程与热势.md
├─ 计算-Charged-AdS热势的薛定谔方程.md      ← 本目录唯一一项独立计算（见第五节）
├─ chargedAdS_schrodinger.wl                ← 计算与验证脚本
├─ run_chargedAdS.ps1                       ← Windows Unicode 路径启动脚本
├─ Data/                                   ← 未截断的原始数值输出
├─ Figs/
│   ├─ Fig1_f_and_Vs.png
│   ├─ Fig2_eps1_vs_t.png
│   ├─ Fig3_levels_wf.png
│   ├─ Fig4_eps1_vs_t_severalD.png
│   └─ Fig6_grid_eps1.png
├─ arXiv-2111.05856v1/
│   ├─ 2111.05856v1.pdf
│   ├─ 2111.05856v1.html
│   ├─ 备注-热势与Fokker-Planck方程.md
│   └─ 译文-热势与Fokker-Planck方程.md
└─ arXiv-2506.04643v1/
    ├─ 2506.04643v1.pdf
    ├─ 2506.04643v1.html
    ├─ 备注-超对称等谱形变.md
    ├─ 译文-超对称等谱形变.md
    └─ Figs/
        ├─ 2506_Fig1_Pot.png
        ├─ 2506_Fig1_psi0.png
        └─ 2506_Fig1_psi1.png
```

## 四、状态

- 两篇 PDF / HTML 均已下载；HTML 的相对资源路径已改写为 arXiv 绝对地址。
- 2111.05856 已有全文中文译文：`arXiv-2111.05856v1/译文-热势与Fokker-Planck方程.md`（公式编号与原文 (1)–(28) 一致；术语按"专有名词/方程名/on-shell 等保留英文"处理）。
- 2506.04643 已有全文中文译文：`arXiv-2506.04643v1/译文-超对称等谱形变.md`（公式编号与原文 (1)–(24) 一致；图 1 的 (a)(b)(c) 三子图内嵌在正文讨论处）。
- 2111.05856 在 `黑洞相变动力学/arXiv-2111.05856v1/` 另有一份（作为 2211.03512 的参考文献 [40]）。本目录这一份是为了让本主题自洽；**后续修改只改本目录这一份**。
- 具体计算任务：见第五节（2026-11-09 修订）。

## 五、计算任务：Charged AdS 热势的薛定谔方程

**正文**：[计算-Charged-AdS热势的薛定谔方程](/notes/文章整理/FP方程与热势/计算-Charged-AdS热势的薛定谔方程/)（2026-11-09 修订）。取 2111.05856 Table 1 的 Charged AdS 热势，研究常扩散、单位迁移率、完整正半轴上的保守 FP 弛豫谱。无量纲量统一为 $x=r_h/Q$、$d=D/Q$、$\lambda_n=Q\varepsilon_n$；约化共存温度记为 $t_{\rm coex}(p)$。

1. **边界与零模**：奇异端点处取平方可积衰减支，$\lambda_0=0$、$\psi_0=Z^{-1/2}e^{-F/(2d)}$。有限盒子的反射 Robin 与吸收 Dirichlet 条件不同；端点进入足够小的尾部后，低谱才接近半轴极限。
2. **SUSY 结构**：相容定义域下 $\widetilde L=A^\dagger A$，伙伴算符具有去掉零模后的正谱。有限盒子比较需要相容边界或尾部误差核对。
3. **数值谱**：主要采样表逐行做网格加密和盒子扩展；代表谱用独立二阶 FD 与 Richardson 外推验证。原始数值和近零残余保存至 Data/，显示位数按对应验证结果决定。
4. **弱噪声**：两井存在且 $d\ll\Delta F$ 时，最低非零谱 $\lambda_1\sim k_{s\to l}+k_{l\to s}$，呈 Kramers 指数渐近。共存附近低谷可以偏离严格共存温度；等深两井曲率不同，慢模不具有严格的交换两井对称性。
5. **物理解释**：这些谱是经典 FP 衰减率。与 2211.03512 的联系是两向 Kramers 逃逸率与整个弛豫谱的关系，不据此解释为黑洞能量量子化。

复现使用 run_chargedAdS.ps1 启动 chargedAdS_schrodinger.wl；输出包括 Data/ 原始 JSON、Figs/ 五幅图及边界、网格、伙伴谱等检查。

