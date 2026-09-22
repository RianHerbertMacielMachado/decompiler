const container = document.getElementById("zone-container");
const titleEl = document.getElementById("zone-title");
const subtitleEl = document.getElementById("zone-subtitle");

let hideTimeout = null;

// blindiamo anche via JS lo scroll
function lockScroll() {
    document.documentElement.style.overflow = "hidden";
    document.body.style.overflow = "hidden";
    document.documentElement.scrollTop = 0;
    document.body.scrollTop = 0;
}

lockScroll();

function showZoneName(name, subtitle) {
    lockScroll();

    // reset animazioni
    container.classList.remove("hide");
    container.classList.remove("show");
    titleEl.classList.remove("show-text");
    subtitleEl.classList.remove("show-sub");

    // set testo
    titleEl.textContent = (name || "").toUpperCase();
    subtitleEl.textContent = (subtitle || " ").toUpperCase();

    // forza reflow per ri-trigger animazioni
    void container.offsetWidth;

    // anima
    container.classList.add("show");
    titleEl.classList.add("show-text");
    subtitleEl.classList.add("show-sub");

    // clear timeout precedente
    if (hideTimeout) {
        clearTimeout(hideTimeout);
    }

    // dopo 3.5 secondi nasconde
    hideTimeout = setTimeout(() => {
        container.classList.remove("show");
        container.classList.add("hide");
    }, 9000);
}

// Riceve messaggi da FiveM
window.addEventListener("message", (event) => {
    const data = event.data;
    if (!data) return;

    if (data.action === "showZoneName") {
		hideZoneName();
		showZoneName(data.label, data.subtitle);
	}

    if (data.action === "hideZoneName") {
        hideZoneName();                 // puoi anche chiamarlo da Lua
    }
});

function hideZoneName() {
    container.classList.remove("show");
    container.classList.add("hide");

    // Reset animazioni del testo
    titleEl.classList.remove("show-text");
    subtitleEl.classList.remove("show-sub");

    // Cancella eventuali timer attivi
    if (hideTimeout) {
        clearTimeout(hideTimeout);
        hideTimeout = null;
    }
}

