---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Contact
======
* Email: MX120220337@stu.yzu.edu.cn
* [arXiv](https://arxiv.org/search/gr-qc?query=Hengxin+Lu&searchtype=author&abstracts=show&order=-announced_date_first&size=50) &middot; [ORCID](https://orcid.org/0009-0003-0520-0052) &middot; [INSPIRE-HEP](https://inspirehep.net/authors/2891138)
* Location: Shenzhen, China

<!-- TODO: 教育经历、工作经历、技能 —— 我没有这些信息，需要你自己补在下面。
     例如：
     Education
     ======
     * Ph.D. in Physics, <学校>, <年份>

     Work experience
     ======
     * <职位>, <单位>, <时间>
-->

Research interests
======
* Generalized entropy and its thermodynamic implications
* Black hole thermodynamics and the Bekenstein bound
* Horizon-area dependent modifications of gravity and their cosmological signatures

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>
