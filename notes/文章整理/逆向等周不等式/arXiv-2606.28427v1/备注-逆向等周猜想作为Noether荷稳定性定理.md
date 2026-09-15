---
title: "备注：逆向等周猜想作为 Noether 荷稳定性定理"
folder: "文章整理/逆向等周不等式/arXiv-2606.28427v1"
---

**arXiv:2606.28427v1 [gr-qc, hep-th, math-ph]** ｜ 所属组：`逆向等周不等式/`（见 `../总览-逆向等周不等式.md`）

> **出处体例**：每条结论括注出处（章节 / 式号 / 参考文献键）。**公式与编号以 arXiv 官方 PDF 为准**（本目录 [`2606.28427v1.pdf`](/notes/文章整理/逆向等周不等式/arXiv-2606.28427v1/2606.28427v1.pdf)），HTML 仅用于检索。
>
> ⚠️ **本文的 HTML 引用编号不可靠**：参考文献表与正文锚点编号互相矛盾（详见第五节）。凡引用编号一律回 PDF 核对。
>
> **原文来源**：https://arxiv.org/abs/2606.28427 ｜ 本地：[`2606.28427v1.pdf`](/notes/文章整理/逆向等周不等式/arXiv-2606.28427v1/2606.28427v1.pdf)、`2606.28427v1.html`

---

## 一、元信息

| 项 | 内容 | 出处 |
| --- | --- | --- |
| 标题 | Reverse Isoperimetric Conjecture as a Noether-Charge Stability Theorem | 标题页 |
| 作者 | Naman Kumar（`namankumar5954@gmail.com`, `naman.kumar@iitgn.ac.in`） | 标题页 |
| 单位 | Department of Physics, Indian Institute of Technology Gandhinagar, Palaj, Gujarat 382355, India | 标题页 |
| 版本 | v1 2026-06-25（本目录为 v1） | arXiv 提交历史 |
| PDF 内日期 | (Dated: June 30, 2026) | 标题页 |
| 篇幅 | 13 pages, no figures | arXiv 元信息 |
| 分类 | gr-qc; hep-th; math-ph | arXiv 元信息 |
| DOI | 10.48550/arXiv.2606.28427 | arXiv 元信息 |
| 体裁 | 正文自称 Letter（Sec. II 附近原文 "The central point of this **Letter** is that reverse isoperimetric…"），并多处提到 Supplemental Material（arXiv 版本未单列该标题，疑似并入 Secs. VIII–IX，**待确认**） | 正文 |

---

## 二、摘要（Abstract，原文照录）

> The reverse isoperimetric conjecture asserts that, at fixed thermodynamic volume, Schwarzschild–AdS black holes maximize entropy. We prove that this statement is the fixed-volume form of a boundary-completed Noether-charge stability theorem. The essential observation is that the bulk Hollands–Wald canonical energy is not the full entropy Hessian: along exact stationary black-hole families it vanishes, and the missing curvature is supplied by a constrained asymptotic charge Hessian. Combining this boundary term with bulk canonical-energy positivity gives entropy concavity on admissible fixed-volume components, while zero-energy rigidity determines the equality sector. The theorem reproduces the Einstein-gravity area-volume inequality and extends naturally to Wald entropy in higher-derivative theories. Known violations are thereby reinterpreted as failures of compactness, positivity, or rigidity rather than failures of the variational mechanism.

---

## 三、章节结构（据 HTML 标题逐条核对）

- Sec. I Purpose, scope, and assumptions
- Sec. II Covariant phase space and the boundary-completed Hessian
- Sec. III Dynamical and stationary perturbation blocks
- Sec. IV Stationary boundary block from fixed-volume thermodynamics
- Sec. V Kerr–AdS at fixed thermodynamic volume
- Sec. VI Bulk positivity for dynamical perturbations
- Sec. VII Stationary equality sectors
  - Sec. VII.1 Kerr–AdS rotational branch
  - Sec. VII.2 Static RN–AdS branch
- Sec. VIII Restricted zero-sector rigidity
- Sec. IX Fixed-volume entropy bound
- References

---

## 四、已核对要点

1. **核心重述**：逆向等周猜想（"固定热力学体积下 Schwarzschild–AdS 熵最大"）就是**"边界完备化 Noether 荷稳定性定理"的固定体积形式**（Abstract、Sec. IX）。

2. **关键观察**：bulk 的 **Hollands–Wald 正则能量不是完整的熵 Hessian**——沿**精确稳态黑洞族**它**为零**，缺失的那部分曲率由**受限的渐近荷 Hessian**（constrained asymptotic charge Hessian）补上（Abstract、Sec. II）。
   > 原文（Abstract）："The essential observation is that the bulk Hollands–Wald canonical energy is not the full entropy Hessian: along exact stationary black-hole families it vanishes, and the missing curvature is supplied by a constrained asymptotic charge Hessian."

3. **证明逻辑**：把上述**边界项**与 **bulk 正则能量正定性**合起来 ⟹ 在可容许的固定体积分支上得到**熵的凹性**；再由**零能刚性**（zero-energy rigidity）确定**等号扇区**（Abstract、Secs. VII–IX）。

4. **可复现的已知结果**：该定理**复现 Einstein 引力的面积–体积不等式**，并**自然推广到高阶导数理论的 Wald 熵**（Abstract）。

5. **对已知反例的重新解释**：已知的 RII 违反事例被重新解读为**紧致性 / 正定性 / 刚性**的失效，而**不是变分机制的失效**（Abstract）。
   > 原文（Abstract）："Known violations are thereby reinterpreted as failures of compactness, positivity, or rigidity rather than failures of the variational mechanism."

6. **与前一篇文章的分工**（正文两次引用文献 **[6]**）：
   > "A geometric–analytic proof in Einstein–AdS gravity under compactness, positive-Yamabe, scalar-curvature-preserving, and connected-component assumptions was given in Ref. [6]."
   > "In Ref. [6], the global upgrade was instead supplied by the Sherif–Dunsby rigidity theorem [16] for a restricted class of deformations, namely positive-Yamabe horizons and scalar-curvature preserving deformations of round horizons."
   即：本文把前作的"全局升级"机制**从 Sherif–Dunsby 刚性定理换成边界完备化的 Noether 荷稳定性**。

7. **等号扇区的两个具体分支**：Sec. VII.1 Kerr–AdS 旋转分支、Sec. VII.2 静态 RN–AdS 分支。

> 说明：以上仅为**已逐句核对过**的部分；Secs. II–VI 的完整推导待补，见第六节。

---

## 五、与同组论文的关系（含引用编号陷阱）

| 关系 | 内容 |
| --- | --- |
| 被本文引用 | `2508.13235v3`（N. Kumar, *A proof of the reverse isoperimetric inequality using a geometric-analytic approach*, arXiv:2508.13235 [gr-qc]）——**PDF 中为文献 [6]**，正文引用 2 次 |
| 引用本文 | `2609.14108v1` 全文（PDF 文本抽取）中 `Kumar` 出现 **0** 次 → **不引用**本文 |

> ⚠️ **HTML 引用编号陷阱（务必记住）**：在 `2606.28427v1.html` 中，
> - 参考文献表把 Kumar 2025 排为 **[14]**；
> - 正文里指向 `#bib.bib14` 的锚点却显示为 **[20]**；
> - **PDF 中实际编号为 [6]**。
>
> 两组数字都不对，说明该文 HTML 的编号生成有缺陷。**凡引用编号一律以 PDF 为准。**

共同技术支点：本文与前作都用到 Sherif–Dunsby 共形刚性定理——
> A. M. Sherif, P. K. S. Dunsby, *Conformal geometry on a class of embedded hypersurfaces in spacetimes*, Class. Quant. Grav. **39** (2022) 045004, arXiv:2112.08753 [math.DG]（本文文献 **[16]**）

---

## 六、文件清单

| 文件 | 大小 | 说明 |
| --- | --- | --- |
| [`2606.28427v1.pdf`](/notes/文章整理/逆向等周不等式/arXiv-2606.28427v1/2606.28427v1.pdf) | 569 KiB | arXiv 官方 PDF，**公式与编号的依据** |
| `2606.28427v1.html` | 393 KiB | arXiv LaTeXML HTML 全文（相对路径已改写为 `https://arxiv.org/...` 绝对地址；**引用编号不可信**） |
| `备注-逆向等周猜想作为Noether荷稳定性定理.md` | 本文件 | 笔记 |

---

## 七、阅读进度

- [x] 拉取 PDF + HTML；核对元信息、摘要、章节结构；核对与 `2508.13235v3` 的引用关系
- [ ] Sec. II：协变相空间与边界完备化 Hessian 的定义
- [ ] Secs. III–IV：扰动分块（动力学 vs 稳态）与边界块
- [ ] Sec. V：Kerr–AdS 在固定热力学体积下的处理
- [ ] Secs. VIII–IX：受限零扇区刚性与固定体积熵界
- [ ] 与 `2508.13235v3` 的假设对比（紧致性 + 正 Yamabe vs 边界完备化正定性）

