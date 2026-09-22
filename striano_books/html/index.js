// Flipbook (turn.js) viewer
// Supports BOTH:
// 1) Image pages (existing behaviour)
// 2) Text books with auto-pagination (new)

let isOpen = false;

let __flipSfxLast = 0;

function bindPageFlipSound() {
  try {
    // evita doppi listener
    $('#inner').off('turning.__pagesfx');

    $('#inner').on('turning.__pagesfx', function () {
      // anti-spam (turn.js può triggerare più volte)
      const now = Date.now();
      if (now - __flipSfxLast < 120) return;
      __flipSfxLast = now;

      $.post(`https://${GetParentResourceName()}/pageflip`, JSON.stringify({}));
    });
  } catch (e) {}
}

function escapeHtml(str) {
  return String(str)
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/\"/g, "&quot;")
    .replace(/'/g, "&#039;");
}

function cleanupFlipbook() {
  try {
    if ($('#inner').turn('is')) {
      $('#inner').turn('page', 1);
      $('#inner').turn('destroy');
    }
  } catch (e) {}

  $('#inner').empty();
}

function openFlipbook(width, height) {
  $('#inner').turn({
    gradients: false,
    autoCenter: true,
    width: width * 2,
    height: height,
    page: 1,
    acceleration: false,
  });
}

function addImagePages(event) {
  $.each(event.data.pages, function (_, page) {
    const imgSrc = page.source === 'local'
      ? 'img/' + event.data.book + '/' + page.pageName + '.png'
      : page.pageName;

    $('#inner').append(
      `<div${page.type === 'hard' ? ' class="hard"' : ''}><img src="${imgSrc}" width=${event.data.size.width} height=${event.data.size.height}></div>`
    );
  });
}

// --- TEXT BOOKS ---

function buildCoverHtml({ title, author }) {
  const t = escapeHtml(title || 'Libro');
  const a = author ? `<div class="book-author">${escapeHtml(author)}</div>` : '';
  return `
    <div class="book-cover">
      <div class="book-title">${t}</div>
      ${a}
    </div>
  `;
}

function normalizeText(text) {
  // Accept either string or array of strings
  if (Array.isArray(text)) return text.join('\n');
  return (text ?? '').toString();
}

function textToBlocks(raw) {
  // Very light markup:
  //  - Lines starting with "# " -> H1
  //  - Lines starting with "## " -> H2
  //  - Blank line = paragraph break
  const lines = raw.replace(/\r\n/g, '\n').split('\n');
  const blocks = [];

  let para = [];
  const flushPara = () => {
    const joined = para.join(' ').trim();
    if (joined) blocks.push({ type: 'p', text: joined });
    para = [];
  };

  for (const line of lines) {
    const l = line.trimEnd();
	
	// FORCED PAGE BREAK
    if (l.trim() === '<<PAGE>>') {
      flushPara();
      blocks.push({ type: 'pagebreak' });
      continue;
    }
	
    if (!l.trim()) {
      flushPara();
      continue;
    }
    if (l.startsWith('## ')) {
      flushPara();
      blocks.push({ type: 'h2', text: l.slice(3).trim() });
      continue;
    }
    if (l.startsWith('# ')) {
      flushPara();
      blocks.push({ type: 'h1', text: l.slice(2).trim() });
      continue;
    }
    para.push(l.trim());
  }
  flushPara();

  return blocks;
}

function renderBlocksHtml(blocks) {
  return blocks.map(b => {
    if (!b) return '';
    if (b.type === 'pagebreak') return '';          // <-- IMPORTANTISSIMO
    if (b.type === 'h1') return `<h1>${escapeHtml(b.text ?? '')}</h1>`;
    if (b.type === 'h2') return `<h2>${escapeHtml(b.text ?? '')}</h2>`;
    const t = (b.text ?? '').toString().trim();
    if (!t) return '';
    return `<p>${escapeHtml(t)}</p>`;
  }).join('');
}

function paginateText({ width, height, style, title, author, text }) {
  // We paginate by measuring content height in a hidden element.
  // Page content box size is controlled in CSS via padding, so measure that box.
  const blocks = textToBlocks(normalizeText(text));

  const $measure = $('<div id="__measure" class="page"><div class="page-content"></div></div>');
  $measure.css({
    position: 'absolute',
    left: '-99999px',
    top: '0',
    width: width + 'px',
    height: height + 'px',
    visibility: 'hidden',
  });
  if (style?.fontFamily) $measure.css('font-family', style.fontFamily);
  if (style?.fontSize) $measure.css('font-size', style.fontSize);
  if (style?.lineHeight) $measure.css('line-height', style.lineHeight);

  $('body').append($measure);

  const $content = $measure.find('.page-content');
  const maxH = $content[0].clientHeight;

  const pages = [];

  // Cover page (soft cover: NOT hard, but styled)
	pages.push({
	  hard: false,                // ✅ non dura
	  cover: true,                // ✅ flag per css
	  html: buildCoverHtml({ title, author }),
	  pageNumber: null,
	});

  // Content pages
  let current = [];
  let pageNo = 1;

  const commitPage = () => {
    if (!current.length) return;
    pages.push({
      hard: false,
      html: `<div class="page-content">${renderBlocksHtml(current)}</div><div class="page-number">${pageNo}</div>`,
      pageNumber: pageNo,
    });
    current = [];
    pageNo++;
  };

  for (let i = 0; i < blocks.length; i++) {
    const b = blocks[i];
    current.push(b);
	
	// FORCED PAGE BREAK
    if (b.type === 'pagebreak') {
      // se c'è contenuto, chiudi la pagina corrente
      commitPage();

      // se vuoi che <<PAGE>> crei SEMPRE una pagina vuota quando sei già a inizio pagina,
      // decommenta queste 2 righe:
      // current.push({ type: 'p', text: '\u00A0' });
      // commitPage();

      continue;
    }

    // Measure
    $content.html(renderBlocksHtml(current));
    if ($content[0].scrollHeight > maxH) {
      // overflow: remove last block and commit previous page
      current.pop();
      $content.html(renderBlocksHtml(current));
      commitPage();

      // start new page with this block; if a single block is too big, split by words
      current.push(b);
      $content.html(renderBlocksHtml(current));
      if ($content[0].scrollHeight > maxH && b.type === 'p') {
        // word-split paragraph
        current.pop();
        const words = (b.text || '').split(/\s+/).filter(Boolean);
        let chunk = [];
        for (const w of words) {
          chunk.push(w);
          const testBlocks = [...current, { type: 'p', text: chunk.join(' ') }];
          $content.html(renderBlocksHtml(testBlocks));
          if ($content[0].scrollHeight > maxH) {
            // commit previous chunk
            chunk.pop();
            const committed = chunk.join(' ');
            if (committed.trim()) {
              current.push({ type: 'p', text: committed });
              commitPage();
            }
            chunk = [w];
          }
        }
        if (chunk.length) {
          current.push({ type: 'p', text: chunk.join(' ') });
        }
      }
    }
  }
  commitPage();

  // Back cover (hard)
  pages.push({
    hard: true,
    html: `<div class="book-backcover"></div>`,
    pageNumber: null,
  });

  $measure.remove();
  return pages;
}

function addTextPages(event) {
  const { size, style, title, author, text } = event.data;

  const pages = paginateText({
    width: size.width,
    height: size.height,
    style: style || {},
    title,
    author,
    text,
  });

  for (const p of pages) {
    $('#inner').append(
		`<div class="page${p.hard ? ' hard' : ''}${p.cover ? ' cover-soft' : ''}" style="width:${size.width}px;height:${size.height}px">${p.html}</div>`
    );
  }
}

function showUi() {
  $('body').css('display', 'flex');
  isOpen = true;
}

function hideUi() {
  $('body').css('display', 'none');
  cleanupFlipbook();
  isOpen = false;
}

window.addEventListener('message', function (event) {
  if (event.data.show === true) {
    cleanupFlipbook();

    const size = event.data.size || { width: 400, height: 600 };
    const mode = (event.data.mode || (event.data.text ? 'text' : 'images')).toLowerCase();

    if (mode === 'text') {
      addTextPages(event);
    } else {
      if (event.data.pages) {
        addImagePages(event);
      }
    }

    openFlipbook(size.width, size.height);
    bindPageFlipSound();
	showUi();
  }

  if (event.data.show === false) {
    hideUi();
  }
});

// Escape handling (one-time binding)
$(document).on('keyup', function (e) {
  if (!isOpen) return;
  if (e.keyCode === 27) {
    hideUi();
    $.post(`https://${GetParentResourceName()}/escape`, JSON.stringify({}));
  }
});









function splitByForcedPages(rawText) {
  // accetta [[PAGE]] con spazi attorno e varianti su nuove righe
  return String(rawText)
    .split(/<<PAGE>>/g)
    .map(s => s.trim());
}

// Questa deve chiamare la TUA paginazione già esistente (quella che spezza per altezza)
// Se la tua si chiama diversamente, cambia paginateChunk(...) con la tua.
function paginateWithForcedBreaks(rawText, paginateChunk) {
  const chunks = splitByForcedPages(rawText);
  const pages = [];

  for (const chunk of chunks) {
    // se chunk è vuoto, vogliamo comunque “saltare” pagina
    if (!chunk || chunk.length === 0) {
      pages.push(""); // pagina vuota (puoi anche mettere "&nbsp;")
      continue;
    }

    const chunkPages = paginateChunk(chunk); // << usa la tua auto-paginazione
    for (const p of chunkPages) pages.push(p);
  }

  return pages;
}
