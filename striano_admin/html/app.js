// =========================
// STRIANO ADMIN MENU - APP.JS (with Search + Scroll fix + Input Modal)
// =========================

const uiState = {}; // key -> value

function parseOption(opt) {
  // opt può essere "Michael:player_zero" oppure già oggetto {label,value}
  if (typeof opt === "string") {
    const idx = opt.indexOf(":");
    if (idx === -1) return { label: opt, value: opt };
    return { label: opt.slice(0, idx), value: opt.slice(idx + 1) };
  }
  return { label: String(opt.label ?? opt.value ?? ""), value: String(opt.value ?? opt.label ?? "") };
}

let selectedTarget = null;

const targetBar = document.getElementById("targetBar");

let categories = [];
let selectedKey = null;

// search state
let searchQuery = "";

// --- DOM ---
const appEl = document.getElementById("app");
const sidebarEl = document.getElementById("sidebar");

// content wrapper + body (IMPORTANT)
const contentEl = document.getElementById("content");          // column container
const contentBodyEl = document.getElementById("contentBody");  // scroll + groups container (preferred)
const contentTargetEl = contentBodyEl || contentEl;            // fallback if contentBody missing

// top buttons
const btnClose = document.getElementById("closeBtn") || document.getElementById("btnClose");

// search ui
const searchInputEl = document.getElementById("searchInput");
const searchClearEl = document.getElementById("searchClear");

// =======================
// NUI POST
// =======================
function post(name, data = {}) {
  const res = "striano_admin"
  return fetch(`https://${res}/${name}`, {
    method: "POST",
    headers: { "Content-Type": "application/json; charset=UTF-8" },
    body: JSON.stringify(data),
  }).then(r => r.json().catch(() => ({})));
}

// =======================
// UI helpers
// =======================
function showUI() { appEl?.classList.remove("hidden"); }
function hideUI() { appEl?.classList.add("hidden"); }

function norm(s) {
  return String(s || "").toLowerCase().trim();
}

function childMatches(child, q) {
  const label = norm(child?.label);
  const sub = norm(child?.sub);
  const hint = norm(child?.placeholder);

  // ✅ include anche HTML dei text (se vuoi)
  const html = norm(child?.html || child?.text);

  return (
    label.includes(q) ||
    sub.includes(q) ||
    hint.includes(q) ||
    html.includes(q)
  );
}

function setActive(key) {
  selectedKey = key;
  render();
}

function render() {
  if (!sidebarEl || !contentTargetEl) return;

  if (!categories.length) {
    sidebarEl.innerHTML = "";
    contentTargetEl.innerHTML = `<div class="emptystate">No categories</div>`;
    return;
  }

  // SIDEBAR
  sidebarEl.innerHTML = "";
  categories.forEach(cat => {
    const el = document.createElement("div");
    el.className = "cat" + (cat.__key === selectedKey ? " active" : "");
    el.innerHTML =
      `<div><b>${escapeHtml(cat.label || cat.__key || "")}</b></div>` +
      `<div class="cat-sub">${escapeHtml(cat.sub || "")}</div>`;
    el.onclick = () => setActive(cat.__key);
    sidebarEl.appendChild(el);
  });

  // CONTENT
  contentTargetEl.innerHTML = "";

  const q = norm(searchQuery);

  // ✅ se sto cercando, renderizzo TUTTE le categorie
  // ✅ se non sto cercando, renderizzo solo la categoria selezionata
  let catsToRender = [];

  if (q) {
    catsToRender = categories;
  } else {
    const cat = categories.find(c => c.__key === selectedKey) || categories[0];
    if (!cat) return;
    if (!selectedKey) selectedKey = cat.__key;
    catsToRender = [cat];
  }

  // helper: match child
  const childMatches = (child) => {
    const label = norm(child && child.label);
    const sub = norm(child && child.sub);
    const hint = norm(child && child.placeholder);
    // se vuoi includere anche HTML/testo nei "text":
    const html = norm(child && (child.html || child.text));
    return (
      label.includes(q) ||
      sub.includes(q) ||
      hint.includes(q) ||
      html.includes(q)
    );
  };

  catsToRender.forEach(cat => {
    (cat.groups || []).forEach(group => {
      const groupTitle = norm(group.label || group.id || "group");

      let children = Array.isArray(group.children) ? group.children : [];

      if (q) {
	  // 1) trova gli id dei player header che matchano
	  const openedIds = new Set();
	  for (const ch of children) {
		if (ch && ch.rowClass === "player-header-row") {
		  const pid = Number(ch.payload && ch.payload.id);
		  const lbl = norm(ch.label);
		  if (groupTitle.includes(q) || lbl.includes(q)) openedIds.add(pid);
		}
	  }

	  // 2) filtra: match normale OR action row del player header matchato
	  children = children.filter(ch => {
		if (childMatches(ch)) return true;

		// action row => visibile se il suo parentId è in openedIds
		if (ch && ch.rowClass === "player-action-row") {
		  const parentId = Number(ch.payload && ch.payload.parentId);
		  if (openedIds.has(parentId)) return true;
		}
		return false;
	  });

	  if (!groupTitle.includes(q) && children.length === 0) return;
	}


      const g = document.createElement("div");
      g.className = "group";

      // ✅ titolo group: in search globale aggiungo "Categoria • Gruppo"
      const title = q
        ? `${escapeHtml(cat.label || cat.__key || "Category")} • ${escapeHtml(group.label || "Group")}`
        : `${escapeHtml(group.label || "Group")}`;

      g.innerHTML = `<h3>${title}</h3>`;

      children.forEach(child => {
        // TEXT (special row)
        if (child.type === "text") {
          const t = document.createElement("div");
          t.className = "rowtext";
          t.innerHTML = `<div class="rowtext-inner">${child.html ? child.html : escapeHtml(child.text || "")}</div>`;
          g.appendChild(t);
          return;
        }

        const row = document.createElement("div");
        row.className = "row";

        // ✅ SAFE extra classes
        try {
          const src = child || null;
          if (src) {
            if (typeof src.rowClass === "string" && src.rowClass.length) row.classList.add(src.rowClass);
            if (typeof src.class === "string" && src.class.length) row.classList.add(src.class);
            if (Array.isArray(src.classes)) {
              src.classes.forEach(c => {
                if (typeof c === "string" && c.length) row.classList.add(c);
              });
            }
          }
        } catch (e) {}

        const label = document.createElement("div");
        label.className = "label";
        label.textContent = child.label || "";
        row.appendChild(label);

        // BUTTON
        if (child.type === "button" || child.type === "toggle" || child.type === "inputButton") {

		  const run = async () => {
			if (child.type === "toggle") {
			  const state = !uiState[child.key];
			  uiState[child.key] = state;

			  if (child.event) {
				await post("striano_admin:ui:triggerEvent", {
				  event: child.event,
				  value: state,
				  meta: child.meta || {}
				});
			  } else {
				await post(child.callback, { value: state });
			  }
			  return;
			}

			if (child.type === "inputButton") {
			  const res = await post("striano_admin:ui:requestInput", {
				label: child.label || "Insert value"
			  });

			  const value = (res && res.value) || "";
			  const payload = { ...(child.payload || {}) };
			  payload[child.payloadKey || "value"] = value;

			  await post(child.callback, payload);
			  return;
			}

			// button normale
			let payload = child.payload ? { ...child.payload } : {};
			if (Array.isArray(child.stateKeys)) {
			  for (const k of child.stateKeys) payload[k] = uiState[k];
			}

			await post(child.callback, payload);
		  };

		  row.classList.add("row-clickable");

		  row.addEventListener("click", (e) => {
			if (window.getSelection && String(window.getSelection())?.length) return;
			run();
		  });
		}



        // DROPDOWN
        else if (child.type === "dropdown") {
          const select = document.createElement("select");
          select.className = "cq-select";

          const opts = Array.isArray(child.options) ? child.options.map(parseOption) : [];
          for (const o of opts) {
            const op = document.createElement("option");
            op.value = o.value;
            op.textContent = o.label;
            select.appendChild(op);
          }

          const key = child.key;
          const def = child.default ? parseOption(child.default).value : (opts[0]?.value ?? "");
          const initial = (key && uiState[key] != null) ? uiState[key] : def;

          select.value = initial;
          if (key) uiState[key] = select.value;

          select.addEventListener("change", () => {
            if (key) uiState[key] = select.value;
            if (child.callback) post(child.callback, { key, value: select.value });
          });

          row.appendChild(select);
        }

        // INFO BUTTON
        else if (child.type === "infoButton") {
          const btn = document.createElement("button");
          btn.textContent = child.buttonLabel || "Info";

          btn.onclick = () => {
            cqInfoOpen({
              title: child.infoTitle || child.label || "Info",
              html: child.infoHtml || ""
            });
          };

          row.appendChild(btn);
        }

        // TOGGLE
        else if (child.type === "toggle") {
          const btn = document.createElement("button");
          let state = !!child.default;
          btn.textContent = state ? "ON" : "OFF";

          btn.onclick = async () => {
            state = !state;
            btn.textContent = state ? "ON" : "OFF";

            if (child.event) {
              await post("striano_admin:ui:triggerEvent", {
                event: child.event,
                value: state,
                meta: child.meta || {}
              });
            } else {
              const payload = { value: state };
              if (child.meta) Object.assign(payload, child.meta);
              await post(child.callback, payload);
            }
          };

          row.appendChild(btn);
        }

        // INPUT BUTTON
        else if (child.type === "inputButton") {
          const btn = document.createElement("button");
          btn.textContent = child.buttonLabel || "Set";

          btn.onclick = async () => {
            const res = await post("striano_admin:ui:requestInput", {
              label: child.label || "Insert value"
            });

            const value = (res && res.value) || "";
            const payload = { ...(child.payload || {}) };
            payload[child.payloadKey || "value"] = value;

            if (child.meta) Object.assign(payload, child.meta);

            await post(child.callback, payload);
          };

          row.appendChild(btn);
        }

        g.appendChild(row);
      });

      contentTargetEl.appendChild(g);
    });
  });
}

function renderTarget() {
  if (!selectedTarget) {
    targetBar.classList.add("hidden");
    return;
  }

  targetBar.classList.remove("hidden");
  targetBar.textContent = `Target: ${selectedTarget.name} [ID: ${selectedTarget.id}]`;
}

// =======================
// NUI messages (SINGLE handler)
// =======================
window.addEventListener("message", (e) => {
  const msg = e.data || {};
  if (!msg.action) return;

  if (msg.action === "open") {
  showUI();
  setTimeout(() => {
    (searchInputEl || document.body).focus?.();
  }, 0);

  } else if (msg.action === "close") {
    hideUI();
	try { document.activeElement?.blur?.(); } catch(e) {}
  } else if (msg.action === "setCategories") {
  categories = Array.isArray(msg.data) ? msg.data : [];

  // ✅ ORDER SORT (fallback alto se manca)
  categories.sort((a, b) => (a.order ?? 9999) - (b.order ?? 9999));

	if (!selectedKey && categories[0]) selectedKey = categories[0].__key;
	render();
  
	} else if (msg.action === "setTarget") {
		selectedTarget = msg.data || null;
		renderTarget();

	} else if (msg.action === "input:open") {
		cqInputOpen(msg);

	} else if (msg.action === "input:close") {
		cqInputClose();
  
    } else if (msg.action === "info:open") {
	  cqInfoOpen(msg);

	} else if (msg.action === "info:close") {
	  cqInfoCloseFn();
	}
  
  
});

// =======================
// Buttons
// =======================
btnClose?.addEventListener("click", () => post("striano_admin:cl:close"));

function requestClose() {
	post("striano_admin:ui:forceClose").catch(() => {});
	hideUI();
}

// bottoni diretti (se esistono)
btnClose?.addEventListener("click", (e) => { e.preventDefault(); e.stopPropagation(); requestClose(); });

// fallback: se btnClose è null o overlay rompe, intercetto click sul documento
document.addEventListener("click", (e) => {
  const t = e.target;
  if (!t) return;

  // se clicchi su #closeBtn o #btnClose o dentro di essi
  if (t.closest("#closeBtn") || t.closest("#btnClose")) {
    e.preventDefault();
    e.stopPropagation();
    requestClose();
    return;
  }

}, true);

// ESC sempre funzionante (capture + keyCode)
function isEsc(ev) {
  return ev.key === "Escape" || ev.code === "Escape" || ev.keyCode === 27;
}

document.addEventListener("keydown", (e) => {
  if (!isEsc(e)) return;

  // se input modal aperto, non chiudere menu
  if (cqInputWrap && !cqInputWrap.classList.contains("hidden")) return;

  // se info modal aperto, chiudi solo info
  if (cqInfoWrap && !cqInfoWrap.classList.contains("hidden")) {
    cqInfoCloseFn();
    e.preventDefault();
    e.stopPropagation();
    return;
  }

  requestClose();
  e.preventDefault();
  e.stopPropagation();
}, true);



// =======================
// Search bar
// =======================
searchInputEl?.addEventListener("input", () => {
  searchQuery = searchInputEl.value || "";
  render();
});

searchClearEl?.addEventListener("click", () => {
  searchQuery = "";
  if (searchInputEl) searchInputEl.value = "";
  render();
});

// =======================
// Utils
// =======================
function escapeHtml(str) {
  return String(str || "")
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

// =======================
// Wheel scroll fix (FiveM NUI friendly) - ONLY on scrollables
// =======================
document.addEventListener("wheel", (e) => {
  const sidebar = e.target.closest(".sidebar") || sidebarEl;
  const contentBody = e.target.closest("#contentBody") || contentBodyEl;
  const contentCol = e.target.closest(".content") || contentEl;

  // prefer scrolling the exact hovered pane if possible
  if (sidebar && sidebar.contains(e.target)) {
    sidebar.scrollTop += e.deltaY;
    e.preventDefault();
    return;
  }

  if (contentBody && contentBody.contains(e.target)) {
    contentBody.scrollTop += e.deltaY;
    e.preventDefault();
    return;
  }

  // fallback to content column if no contentBody
  if (!contentBodyEl && contentCol && contentCol.contains(e.target)) {
    contentCol.scrollTop += e.deltaY;
    e.preventDefault();
  }
}, { passive: false });


// ==================================
// CQ INPUT MODAL (your custom minimal dialog)
// ==================================
const cqInputWrap = document.getElementById("cqInput");
const cqInputTitle = document.getElementById("cqInputTitle");
const cqInputField = document.getElementById("cqInputField");
const cqInputOk = document.getElementById("cqInputOk");
const cqInputCancel = document.getElementById("cqInputCancel");

let cqInputPattern = ".*";
let cqInputIsNumber = false;

function cqInputOpen(payload) {
  if (!cqInputWrap) return;

  cqInputTitle.textContent = payload.label || "Insert value";
  cqInputField.value = payload.value || "";
  cqInputField.placeholder = payload.placeholder || "";
  cqInputField.maxLength = Number(payload.maxLen || 256);

  cqInputPattern = String(payload.pattern || ".*");
  cqInputIsNumber = !!payload.isNumber;

  cqInputField.inputMode = cqInputIsNumber ? "numeric" : "text";

  cqInputWrap.classList.remove("hidden");
  setTimeout(() => {
    cqInputField.focus();
    cqInputField.select();
  }, 0);
}




function cqInputClose() {
  if (!cqInputWrap) return;
  cqInputWrap.classList.add("hidden");

  if (cqInputField) {
    cqInputField.blur();
  }
}

function cqInputValid(v) {
  if (cqInputIsNumber) return /^-?\d*(\.\d+)?$/.test(String(v).trim());
  try { return new RegExp(cqInputPattern).test(String(v)); }
  catch { return true; }
}

let cqInputSubmitting = false;

async function cqInputSubmit(e) {
  if (e) {
    e.preventDefault();
    e.stopPropagation();
  }

  if (cqInputSubmitting) return;

  const value = String(cqInputField?.value || "");
  if (!cqInputValid(value)) return;

  cqInputSubmitting = true;

  try {
    await post("striano-input:submit", { value });
  } finally {
    cqInputSubmitting = false;
    cqInputClose();
  }
}

async function cqInputCancelFn(e) {
  if (e) {
    e.preventDefault();
    e.stopPropagation();
  }

  if (cqInputSubmitting) return;
  cqInputSubmitting = true;

  try {
    await post("striano-input:cancel", {});
  } finally {
    cqInputSubmitting = false;
    cqInputClose();
  }
}

cqInputOk?.addEventListener("click", cqInputSubmit);
cqInputCancel?.addEventListener("click", cqInputCancelFn);

window.addEventListener("keydown", (e) => {
  if (!cqInputWrap || cqInputWrap.classList.contains("hidden")) return;

  if (e.key === "Escape") {
    e.preventDefault();
    e.stopPropagation();
    cqInputCancelFn(e);
    return;
  }

  if (e.key === "Enter") {
    e.preventDefault();
    e.stopPropagation();
    cqInputSubmit(e);
    return;
  }
});










const cqInfoWrap  = document.getElementById("cqInfo");
const cqInfoTitle = document.getElementById("cqInfoTitle");
const cqInfoBody  = document.getElementById("cqInfoBody");
const cqInfoClose = document.getElementById("cqInfoClose");

function cqInfoOpen(payload){
  if (!cqInfoWrap) return;
  cqInfoTitle.textContent = payload.title || "Info";

  // HTML controllato da te (non user input) -> ok
  cqInfoBody.innerHTML = payload.html || "";

  cqInfoWrap.classList.remove("hidden");
}

function cqInfoCloseFn(){
  cqInfoWrap?.classList.add("hidden");
}

cqInfoClose?.addEventListener("click", cqInfoCloseFn);

// chiudi cliccando sulla backdrop
cqInfoWrap?.addEventListener("click", (e) => {
  if (e.target.classList.contains("cqinput-backdrop")) cqInfoCloseFn();
});





document.addEventListener("keydown", (e) => {
  if (e.key !== "Escape") return;

  if (cqInputWrap && !cqInputWrap.classList.contains("hidden")) return;

  // se info aperto, chiudi info
  if (cqInfoWrap && !cqInfoWrap.classList.contains("hidden")) {
    cqInfoCloseFn();
    return;
  }

  post("striano_admin:cl:close");
});

