/* ==========================================================================
 * 笔记页的 PDF 支持（只在 notes/ 下的页面加载，见 _includes/head.html）
 *
 *   1. ![[文件.pdf]]  —— scripts/convert-wikilinks.sh 会把它写成
 *      <a class="pdf-embed" href="…">，这里升级成「内嵌阅读器」卡片：
 *      直接翻页阅读，右上角有「新标签打开 / 下载 / 收起」。
 *   2. 普通 PDF 链接（含笔记里 `文件.pdf` 这种行内代码自动转成的链接）——
 *      补上 target="_blank"（浏览器里直接打开 PDF，不会丢掉笔记页）
 *      和一个下载按钮。
 *   3. 兜底：老写法 ![文件.pdf](…) 会渲染成一个坏掉的 <img>，这里换成卡片。
 *
 * 全部是渐进增强：JS 不跑的时候链接照样能点。
 * ========================================================================== */
(function () {
  "use strict";

  var content = document.querySelector(".page__content");
  if (!content) return;

  var PDF_RE = /\.pdf(?:$|[?#])/i;
  var DEFAULT_HEIGHT = 620;

  /* ---------- 小工具 ---------- */

  function isPdf(href) {
    return typeof href === "string" && PDF_RE.test(href);
  }

  function fileName(url) {
    var path = String(url || "").split("#")[0].split("?")[0];
    var base = path.substring(path.lastIndexOf("/") + 1);
    try {
      return decodeURIComponent(base);
    } catch (e) {
      return base;
    }
  }

  function isSameOrigin(url) {
    try {
      return new URL(url, window.location.href).origin === window.location.origin;
    } catch (e) {
      return false;
    }
  }

  function icon(name) {
    var i = document.createElement("i");
    i.className = "fas " + name;
    i.setAttribute("aria-hidden", "true");
    return i;
  }

  function button(url, text, iconName, newTab) {
    var a = document.createElement("a");
    a.className = "pdf-card__btn";
    a.href = url;
    if (newTab) {
      a.target = "_blank";
      a.rel = "noopener";
    }
    a.appendChild(icon(iconName));
    var span = document.createElement("span");
    span.textContent = text;
    a.appendChild(span);
    return a;
  }

  /* ---------- 卡片（内嵌阅读器） ---------- */

  function buildCard(url, label, height) {
    var name = label || fileName(url);

    // 刻意用 <div> 而不是 <figure>/<figcaption>：主题里
    //   figure { display:flex; justify-content:space-between; flex-wrap:wrap }
    //   figcaption { color: var(--global-fig-caption-color); font-family: Georgia }
    //   figcaption a { border-bottom: 1px solid … }
    // 会把卡片拆成两列、并把文字换成深色皮肤下只有 1.6:1 的 --global-fig-caption-color。
    var card = document.createElement("div");
    card.className = "pdf-card";

    var bar = document.createElement("div");
    bar.className = "pdf-card__bar";

    var title = document.createElement("span");
    title.className = "pdf-card__name";
    title.appendChild(icon("fa-file-pdf"));
    var text = document.createElement("span");
    text.className = "pdf-card__filename";
    text.textContent = name;
    title.appendChild(text);
    bar.appendChild(title);

    var actions = document.createElement("span");
    actions.className = "pdf-card__actions";
    actions.appendChild(button(url, "新标签打开", "fa-up-right-from-square", true));
    if (isSameOrigin(url)) {
      // 同源才能用 download 属性强制下载（跨域时浏览器会忽略它，就不显示了）
      actions.appendChild(button(url, "下载", "fa-download", true)).setAttribute("download", name);
    }

    var toggle = document.createElement("button");
    toggle.type = "button";
    toggle.className = "pdf-card__btn";
    toggle.setAttribute("aria-expanded", "true");
    var toggleIcon = icon("fa-chevron-up");
    var toggleText = document.createElement("span");
    toggleText.textContent = "收起";
    toggle.appendChild(toggleIcon);
    toggle.appendChild(toggleText);
    actions.appendChild(toggle);

    bar.appendChild(actions);
    card.appendChild(bar);

    var viewport = document.createElement("div");
    viewport.className = "pdf-card__viewport";
    var frame = document.createElement("iframe");
    frame.className = "pdf-card__frame";
    frame.src = url;
    frame.loading = "lazy";
    frame.title = name + "（内嵌 PDF 阅读器）";
    viewport.appendChild(frame);
    card.appendChild(viewport);

    var h = parseInt(height, 10);
    if (h >= 240 && h <= 2000) {
      card.style.setProperty("--pdf-height", h + "px");
    }

    toggle.addEventListener("click", function () {
      var collapsed = card.classList.toggle("pdf-card--collapsed");
      toggleText.textContent = collapsed ? "展开" : "收起";
      toggle.setAttribute("aria-expanded", collapsed ? "false" : "true");
      toggle.replaceChild(icon(collapsed ? "fa-chevron-down" : "fa-chevron-up"), toggleIcon);
      toggleIcon = toggle.firstChild;
    });

    return card;
  }

  /* 卡片是块级元素，不能塞在 <p> / <td> 里，统一插到所在块之后 */
  function blockFor(host) {
    if (host.tagName === "TD" || host.tagName === "TH") {
      return host.closest("table") || host; // 表格里的嵌入放到整张表之后
    }
    if (
      host.tagName === "P" &&
      host.parentElement &&
      host.parentElement.tagName === "BLOCKQUOTE" &&
      host.parentElement.querySelectorAll("p").length === 1
    ) {
      return host.parentElement; // 引用块里单独一段的嵌入，卡片放到引用块外面
    }
    return host;
  }

  function insertCards(host, cards) {
    var ref = blockFor(host);
    cards.forEach(function (card) {
      if (ref === content || !ref.parentNode) {
        content.appendChild(card); // 兜底：嵌入点直接挂在正文容器上
      } else {
        ref.parentNode.insertBefore(card, ref.nextSibling);
      }
      ref = card;
    });
    // 段落里只剩空白就清掉（![[x.pdf]] 单独占一行时就是这种）
    if (host.tagName === "P" && !host.textContent.trim() && !host.querySelector("img, iframe, figure")) {
      var block = host.parentElement;
      host.remove();
      if (block && block.tagName === "BLOCKQUOTE" && !block.textContent.trim() && !block.querySelector("figure, img, iframe")) {
        block.remove();
      }
    }
  }

  /* ---------- 1. ![[文件.pdf]] ---------- */

  var hostMap = new Map();
  Array.prototype.forEach.call(content.querySelectorAll("a.pdf-embed"), function (a) {
    var host = a.closest("p") || a.parentElement || content;
    if (!hostMap.has(host)) hostMap.set(host, []);
    hostMap.get(host).push(a);
  });

  hostMap.forEach(function (anchors, host) {
    var sole =
      host.tagName === "P" &&
      anchors.length === 1 &&
      host.textContent.trim() === anchors[0].textContent.trim();

    var cards = anchors.map(function (a) {
      var url = a.getAttribute("href");
      var label = a.textContent.trim();
      var height = a.getAttribute("data-pdf-height");
      if (sole) {
        a.remove(); // 整段就这一个嵌入：文字直接交给卡片，不留孤零零的链接
      } else {
        var keep = document.createElement("a");
        keep.href = url;
        keep.textContent = label;
        a.replaceWith(keep); // 段落里还有别的文字：保留文字位置，卡片放到段落之后
      }
      return buildCard(url, label, height);
    });

    insertCards(host, cards);
  });

  /* ---------- 2. 老的 ![文件.pdf](…) 写法 ---------- */

  Array.prototype.forEach.call(content.querySelectorAll("img[src]"), function (img) {
    var src = img.getAttribute("src");
    if (!isPdf(src)) return;
    var host = img.closest("p") || img.parentElement || content;
    var card = buildCard(src, img.getAttribute("alt") || fileName(src), null);
    img.remove(); // 先摘掉这张「坏图」，剩下的交给卡片（insertCards 会收尾空段落）
    insertCards(host, [card]);
  });

  /* ---------- 3. 普通 PDF 链接：新标签打开 + 下载按钮 ---------- */

  Array.prototype.forEach.call(content.querySelectorAll("a[href]"), function (a) {
    if (!isPdf(a.getAttribute("href"))) return;
    if (a.closest(".pdf-card, pre, code, .highlight")) return; // 卡片自己的按钮、代码块里的不算
    if (a.dataset.pdfLink) return;
    a.dataset.pdfLink = "1";

    a.target = "_blank";
    a.rel = "noopener";

    if (!isSameOrigin(a.getAttribute("href"))) return;
    var name = fileName(a.getAttribute("href"));
    var dl = document.createElement("a");
    dl.className = "pdf-download";
    dl.href = a.getAttribute("href");
    dl.setAttribute("download", name);
    dl.title = "下载 " + name;
    dl.setAttribute("aria-label", "下载 " + name);
    dl.appendChild(icon("fa-download"));
    a.parentNode.insertBefore(dl, a.nextSibling);
  });
})();
