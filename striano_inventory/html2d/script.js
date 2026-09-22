const RESOURCE = typeof GetParentResourceName === "function"
    ? GetParentResourceName()
    : "striano_inventory";

// GRANDEZZA INVENTARIO GESTITA IN LUA -> function buildInventory
function getGridColumns(inventory) {
	return Math.max(1, Math.floor(Number(inventory?.columns) || 1));
}

function getGridRows(inventory) {
	return Math.max(1, Math.floor(Number(inventory?.rows) || 1));
}

const CELL_SIZE = 50;
const CELL_GAP = 4;
const CELL_STEP = CELL_SIZE + CELL_GAP;

const state = {
    open: false,
    busy: false,
    player: null,
    other: null,
    selected: null,
    context: null,
    amountMode: null,
    drag: null,
    secondaryButtons: []
};

// ============================================================
// STRIANO BOOK - INTEGRATED IN STRIANO INVENTORY
// ============================================================

let bookOpen=false;
let bookFlipSfxLast=0;

const bookViewer=document.getElementById("bookViewer");
const bookInner=document.getElementById("bookInner");

function bookEscapeHtml(str){
	return String(str??"").replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/\"/g,"&quot;").replace(/'/g,"&#039;");
}

function cleanupBook(){
	try{
		if($(bookInner).turn("is")){
			$(bookInner).turn("page",1);
			$(bookInner).turn("destroy");
		}
	}catch(e){}

	$(bookInner).off("turning.__pagesfx").empty();
}

function bindBookPageFlipSound(){
	$(bookInner).off("turning.__pagesfx").on("turning.__pagesfx",function(){
		const now=Date.now();
		if(now-bookFlipSfxLast<120)return;

		bookFlipSfxLast=now;
		nui("pageflip");
	});
}

function buildBookCoverHtml(title,author){
	const t=bookEscapeHtml(title||"Libro");
	const a=author?`<div class="book-author">${bookEscapeHtml(author)}</div>`:"";

	return `<div class="book-cover"><div class="book-title">${t}</div>${a}</div>`;
}

function normalizeBookText(text){
	let raw=Array.isArray(text)?text.join(" "):String(text??"");

	return raw
		.replace(/<<PAGE>>/g," ")
		.replace(/\r\n/g," ")
		.replace(/\n/g," ")
		.replace(/\t/g," ")
		.replace(/\s+/g," ")
		.trim();
}

function bookTextToBlocks(raw){
	const lines=raw.replace(/\r\n/g,"\n").split("\n");
	const blocks=[];
	let para=[];

	const flush=()=>{
		const joined=para.join(" ").trim();
		if(joined)blocks.push({type:"p",text:joined});
		para=[];
	};

	for(const line of lines){
		const l=line.trimEnd();

		if(l.trim()==="<<PAGE>>"){
			flush();
			blocks.push({type:"pagebreak"});
			continue;
		}

		if(!l.trim()){
			flush();
			continue;
		}

		if(l.startsWith("## ")){
			flush();
			blocks.push({type:"h2",text:l.slice(3).trim()});
			continue;
		}

		if(l.startsWith("# ")){
			flush();
			blocks.push({type:"h1",text:l.slice(2).trim()});
			continue;
		}

		para.push(l.trim());
	}

	flush();

	return blocks;
}

function renderBookBlocks(blocks){
	return blocks.map(b=>{
		if(!b||b.type==="pagebreak")return "";

		if(b.type==="h1")return `<h1>${bookEscapeHtml(b.text)}</h1>`;
		if(b.type==="h2")return `<h2>${bookEscapeHtml(b.text)}</h2>`;

		const t=String(b.text??"").trim();

		return t?`<p>${bookEscapeHtml(t)}</p>`:"";
	}).join("");
}

async function paginateBookText({width,height,style,title,author,text}){
	await document.fonts.ready;

	// Aspetta anche che il browser abbia applicato realmente font/layout
	await new Promise(resolve => requestAnimationFrame(() => requestAnimationFrame(resolve)));

	const pages=[{
		hard:false,
		cover:true,
		html:buildBookCoverHtml(title,author),
		pageNumber:null
	}];

	const raw=normalizeBookText(text);

	// Aumenta = cambia pagina prima.
	const PAGE_BOTTOM_SAFE=3;

	const measureWrapper=document.createElement("div");
	measureWrapper.id="bookInner";
	measureWrapper.style.position="fixed";
	measureWrapper.style.left="-10000px";
	measureWrapper.style.top="0";
	measureWrapper.style.width=width+"px";
	measureWrapper.style.height="auto";
	measureWrapper.style.visibility="hidden";
	measureWrapper.style.pointerEvents="none";

	const measure=document.createElement("div");
	measure.className="page-content";
	measure.classList.add("book-measure");

	measureWrapper.appendChild(measure);
	document.body.appendChild(measureWrapper);

	if(style?.fontFamily) measure.style.setProperty("font-family",style.fontFamily,"important");
	if(style?.fontSize) measure.style.setProperty("font-size",style.fontSize,"important");
	if(style?.lineHeight) measure.style.setProperty("line-height",style.lineHeight,"important");

	const MAX_HEIGHT=height-PAGE_BOTTOM_SAFE;

	let pageNo=1;
	let currentHtml="";

	const fits=html=>{
		measure.innerHTML=html;
		const contentHeight=measure.scrollHeight;
		return contentHeight<=MAX_HEIGHT;
	};

	const commit=()=>{
		if(!currentHtml.trim())return;

		pages.push({
			hard:false,
			html:`<div class="page-content">${currentHtml}</div><div class="page-number">${pageNo}</div>`,
			pageNumber:pageNo
		});

		pageNo++;
		currentHtml="";
	};

	const words=raw.split(/\s+/).filter(Boolean);
	let currentParagraph="";

	for(const word of words){
		const testParagraph=currentParagraph ? currentParagraph+" "+word : word;
		const testHtml=currentHtml+`<p>${bookEscapeHtml(testParagraph)}</p>`;

		if(fits(testHtml)){
			currentParagraph=testParagraph;
			continue;
		}

		if(currentParagraph){
			currentHtml+=`<p>${bookEscapeHtml(currentParagraph)}</p>`;
			commit();
		}

		currentParagraph=word;
	}

	if(currentParagraph){
		currentHtml+=`<p>${bookEscapeHtml(currentParagraph)}</p>`;
	}

	commit();

	pages.push({
		hard:true,
		html:`<div class="book-backcover"></div>`,
		pageNumber:null
	});

	measureWrapper.remove();

	return pages;
}
function addBookImagePages(message,size){
	for(const page of message.pages||[]){
		const src=page.source==="local"
			?`img/${message.book}/${page.pageName}.png`
			:page.pageName;

		$(bookInner).append(
			`<div${page.type==="hard"?' class="hard"':""}><img src="${src}" width="${size.width}" height="${size.height}"></div>`
		);
	}
}

async function addBookTextPages(message,size){
	const pages=await paginateBookText({
		width:size.width,
		height:size.height,
		style:message.style||{},
		title:message.title,
		author:message.author,
		text:message.text
	});

	for(const p of pages){
		$(bookInner).append(
			`<div class="page${p.hard?" hard":""}${p.cover?" cover-soft":""}" style="width:${size.width}px;height:${size.height}px">${p.html}</div>`
		);
	}
}

async function openBook(message){
	if(!bookViewer||!bookInner||typeof $!=="function"||!$.fn.turn){
		console.error("[BOOK] Missing bookViewer/bookInner, jQuery or turn.js");
		return;
	}

	cleanupBook();

	const BOOK_SCALE=1.0;
	const originalSize=message.size||{width:400,height:600};

	const size={
		width:originalSize.width*BOOK_SCALE,
		height:originalSize.height*BOOK_SCALE
	};

	bookViewer.style.display="flex";

	bookInner.style.width=(size.width*2)+"px";
	bookInner.style.height=size.height+"px";

	const mode=String(message.mode||(message.text?"text":"images")).toLowerCase();

	if(mode==="text"){
		await addBookTextPages(message,size);
	}else{
		addBookImagePages(message,size);
	}

	$(bookInner).turn({
		gradients:false,
		autoCenter:true,
		width:size.width*2,
		height:size.height,
		page:1,
		acceleration:false,
		hover:false
	});

	bindBookPageFlipSound();

	bookOpen=true;

	app?.classList.add("hidden");
	bookViewer.classList.remove("hidden");
}

function closeBook(notify=true){
	if(!bookOpen)return;

	bookOpen=false;

	cleanupBook();

	bookViewer?.classList.add("hidden");
	bookViewer.style.display="";

	if(state.open){
		app?.classList.remove("hidden");
	}

	if(notify){
		nui("book:close");
	}
}

const app = document.getElementById("app");
const loading = document.getElementById("loading");
const content = document.getElementById("content");
const otherSection = document.getElementById("otherSection");
const otherTitle = document.getElementById("otherTitle");
const otherGrid = document.getElementById("otherGrid");
const secondaryButtons = document.getElementById("secondaryButtons");
const playerGrid = document.getElementById("playerGrid");
const otherCount = document.getElementById("otherCount");
const playerCount = document.getElementById("playerCount");
const help = document.getElementById("help");
const tooltip = document.getElementById("tooltip");
const contextMenu = document.getElementById("contextMenu");
const useAction = document.getElementById("useAction");
const dropAction = document.getElementById("dropAction");
const splitOneAction = document.getElementById("splitOneAction");
const splitHalfAction = document.getElementById("splitHalfAction");
const amountModal = document.getElementById("amountModal");
const amountForm = document.getElementById("amountForm");
const amountInput = document.getElementById("amountInput");
const amountTitle = document.getElementById("amountTitle");
const busy = document.getElementById("busy");

function renderSecondaryButtons(buttons = []) {
	if(!secondaryButtons) return;

	const signature = JSON.stringify(buttons.map(data => ({
		id: data.id,
		label: data.label
	})));

	if(secondaryButtons.dataset.signature === signature) return;
	secondaryButtons.dataset.signature = signature;

	secondaryButtons.innerHTML = "";

	for(const data of buttons){
		const button = document.createElement("button");
		button.className = "inventory-button secondary-button";
		button.type = "button";
		button.textContent = data.label || data.id;

		button.addEventListener("click", async event => {
			event.preventDefault();
			event.stopPropagation();

			await nui("inv2d:secondaryAction", {
				id: data.id,
				invName: state.other?.name || ""
			});
		});

		secondaryButtons.appendChild(button);
	}
}

async function nui(name, payload = {}) {
    try {
        const response = await fetch(`https://${RESOURCE}/${name}`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json; charset=UTF-8"
            },
            body: JSON.stringify(payload)
        });

        const text = await response.text();

        if (!text || text.trim() === "") {
            // console.warn(`[inv2d] ${name}: empty response`);

            return {
                ok: false,
                error: "empty_response"
            };
        }

        try {
            return JSON.parse(text);
        } catch (parseError) {
            console.error(
                `[inv2d] ${name}: invalid JSON response`,
                text,
                parseError
            );

            return {
                ok: false,
                error: "invalid_json"
            };
        }
    } catch (error) {
        console.error(`[inv2d] ${name}`, error);

        return {
            ok: false,
            error: "fetch_failed"
        };
    }
}

function layoutStorageKey(invName) {
    return `striano_inv2d_layout_v3:${invName}`;
}

function readLocalLayout(invName) {
    try {
        const raw = localStorage.getItem(layoutStorageKey(invName));
        const parsed = raw ? JSON.parse(raw) : {};
        return parsed && typeof parsed === "object" ? parsed : {};
    } catch {
        return {};
    }
}

function writeLocalLayout(invName, positions) {
    try {
        localStorage.setItem(layoutStorageKey(invName), JSON.stringify(positions));
    } catch (error) {
        console.warn("[inv2d] Cannot save local grid layout", error);
    }
}

function normalizeItem(item) {
    return {
        ...item,
        uid: String(item.uid),
        count: Math.max(1, Number(item.count) || 1),
        w: Math.max(1, Math.floor(Number(item.w) || 1)),
        h: Math.max(1, Math.floor(Number(item.h) || 1)),
        x: Number.isFinite(Number(item.x)) ? Math.max(0, Math.floor(Number(item.x))) : null,
        y: Number.isFinite(Number(item.y)) ? Math.max(0, Math.floor(Number(item.y))) : null
    };
}

function cellsOverlap(a, ax, ay, b, bx, by) {
    return (
        ax < bx + b.w &&
        ax + a.w > bx &&
        ay < by + b.h &&
        ay + a.h > by
    );
}

function canPlace(inventory, item, x, y, ignoreUid = item.uid) {
    if (!inventory) return false;
    if (x < 0 || y < 0) return false;

    const columns = getGridColumns(inventory);
    const rows = getGridRows(inventory);

    if (x + item.w > columns) return false;
    if (y + item.h > rows) return false;

    return !inventory.items.some(other => {
        if (String(other.uid) === String(ignoreUid)) return false;
        if (other.x == null || other.y == null) return false;

        return cellsOverlap(
            item, x, y,
            other, other.x, other.y
        );
    });
}

function firstFreePosition(inventory, item) {
    const columns = getGridColumns(inventory);
    const rows = getGridRows(inventory);

    for (let y = 0; y <= rows - item.h; y++) {
        for (let x = 0; x <= columns - item.w; x++) {
            if (canPlace(inventory, item, x, y, item.uid)) {
                return { x, y };
            }
        }
    }

    return null;
}

function collectPositions(inventory) {
    const positions = {};

    for (const item of inventory?.items || []) {
        if (item.x == null || item.y == null) continue;

        positions[item.uid] = {
            x: item.x,
            y: item.y,
            w: item.w,
            h: item.h
        };
    }

    return positions;
}

async function saveLayout(inventory) {
    if (!inventory?.name || inventory.runtime) return;

    const positions = collectPositions(inventory);
    writeLocalLayout(inventory.name, positions);

    await nui("inv2d:saveLayout", {
        invName: inventory.name,
        positions
    });
}

function prepareInventory(rawInventory) {
    if (!rawInventory?.name || !Array.isArray(rawInventory.items)) {
        return rawInventory;
    }

    const inventory = {
        ...rawInventory,
        items: rawInventory.items.map(normalizeItem)
    };

    const localLayout = readLocalLayout(inventory.name);

    // Prima usa il layout arrivato dal server, poi il fallback locale.
    for (const item of inventory.items) {
        if (item.x == null || item.y == null) {
            const local = localLayout[item.uid];

            if (local) {
                item.x = Math.max(0, Math.floor(Number(local.x) || 0));
                item.y = Math.max(0, Math.floor(Number(local.y) || 0));
            }
        }

        if (
            item.x != null &&
            item.y != null &&
            !canPlace(inventory, item, item.x, item.y, item.uid)
        ) {
            item.x = null;
            item.y = null;
        }
    }

    // Auto-posiziona soltanto gli item senza posizione valida.
    for (const item of inventory.items) {
        if (item.x != null && item.y != null) continue;

        const free = firstFreePosition(inventory, item);
        if (free) {
            item.x = free.x;
            item.y = free.y;
        }
    }

    writeLocalLayout(inventory.name, collectPositions(inventory));
    return inventory;
}

function initials(label) {
    return String(label || "?")
        .split(/[\s_-]+/)
        .filter(Boolean)
        .slice(0, 2)
        .map(part => part[0].toUpperCase())
        .join("") || "?";
}

function destination(fromInv) {
    if (!state.other) return null;
    return fromInv === "player" ? state.other.name : "player";
}

function inventoryByName(invName) {
    if (invName === "player") return state.player;
    if (state.other?.name === invName) return state.other;
    return null;
}

function gridByInventory(invName) {
    if (invName === "player") return playerGrid;
    if (state.other?.name === invName) return otherGrid;
    return null;
}

function findItem(invName, uid) {
    return inventoryByName(invName)?.items?.find(
        item => String(item.uid) === String(uid)
    ) || null;
}

async function dropItem(item, invName) {
    if (!item || state.busy) return;

    state.busy = true;
    busy.classList.remove("hidden");

    try {
        const result = await nui("inv2d:drop", {
            invName,
            uid: item.uid,
            amount: item.count
        });

        if (!result?.ok) {
            console.warn("[inv2d] Drop failed:", result?.error);
        }

        return result;
    } catch (error) {
        console.error("[inv2d] Drop error:", error);

        return {
            ok: false,
            error: "drop_failed"
        };
    } finally {
        state.busy = false;
        busy.classList.add("hidden");
    }
}

async function useItem(item, invName) {
    if (!item || state.busy) return;

    const result = await nui("inv2d:use", {
        invName,
        uid: item.uid
    });

    if (!result?.ok && result?.error === "not_usable") {
        console.debug("[inv2d] Item is not usable.");
    }
}

async function move(item, fromInv, amount) {
    const toInv = destination(fromInv);
    if (!item || !toInv || state.busy) return;

    const safeAmount = Math.max(1, Math.min(Number(amount) || 1, item.count));

    return nui("inv2d:move", {
        fromInv,
        toInv,
        uid: item.uid,
        amount: safeAmount
    });
}

async function split(item, invName, amount) {
	if (!item || item.count <= 1 || state.busy) return;

	const inventory = inventoryByName(invName);
	if (!inventory) return;

	const columns = getGridColumns(inventory);
	const rows = getGridRows(inventory);
	let hasSpace = false;

	for(let y=0;y<=rows-item.h;y++){
		for(let x=0;x<=columns-item.w;x++){
			const occupied = inventory.items.some(other => {
				if(other.x == null || other.y == null) return false;
				return cellsOverlap(item, x, y, other, other.x, other.y);
			});

			if(!occupied){
				hasSpace = true;
				break;
			}
		}

		if(hasSpace) break;
	}

	if(!hasSpace){
		await nui("inv2d:inventoryFull");
		return;
	}

	const safeAmount = Math.max(1, Math.min(Number(amount) || 1, item.count-1));

	return nui("inv2d:split", {
		invName,
		uid: item.uid,
		amount: safeAmount
	});
}

const missingImages = new Set();

function makeImage(item) {
    const visual = document.createElement("div");
    visual.className = "item-image";

    const img = document.createElement("img");

    const originalSrc =
        item.image || `images/${item.item}.png`;

    img.alt = "";
    img.draggable = false;

    if (missingImages.has(originalSrc)) {
        img.src = "images/noimage.png";
    } else {
        img.src = originalSrc;

        img.onerror = () => {
            missingImages.add(originalSrc);

            img.onerror = null;
            img.src = "images/noimage.png";
        };
    }

    visual.appendChild(img);

    return visual;
}

function showTooltip(event, item) {
    tooltip.innerHTML = `<strong>${escapeHtml(item.label)}</strong><span>${escapeHtml(item.item)} · x${item.count}</span>`;
    tooltip.classList.remove("hidden");
    moveTooltip(event);
}

function moveTooltip(event) {
    let x = event.clientX + 12;
    let y = event.clientY + 12;

    if (x + tooltip.offsetWidth > window.innerWidth - 8) {
        x = event.clientX - tooltip.offsetWidth - 12;
    }

    if (y + tooltip.offsetHeight > window.innerHeight - 8) {
        y = event.clientY - tooltip.offsetHeight - 12;
    }

    tooltip.style.left = `${x}px`;
    tooltip.style.top = `${y}px`;
}

function hideTooltip() {
    tooltip.classList.add("hidden");
}

function escapeHtml(value) {
    const div = document.createElement("div");
    div.textContent = String(value ?? "");
    return div.innerHTML;
}

function closeContext() {
    contextMenu.classList.add("hidden");
    state.context = null;
}

function openContext(event, item, invName) {
    event.preventDefault();
    event.stopPropagation();

    const readOnlyRuntime =
    invName !== "player" &&
    state.other?.runtime === true;

	const canUse = invName === "player" && !readOnlyRuntime;
	const canDrop = invName === "player";

	const canMove = Boolean(state.other);
	const canSplit = item.count > 1 && !readOnlyRuntime;

	useAction.disabled = !canUse;
	dropAction.disabled = !canDrop;
    splitOneAction.disabled = !canSplit;
    splitHalfAction.disabled = !canSplit;

    const visibleActions = [
        useAction,
        splitOneAction,
        splitHalfAction,
		dropAction
    ].filter(button => !button.disabled);

    if (visibleActions.length === 0) {
        closeContext();
        return;
    }

    state.context = { item, invName };

    contextMenu.style.left = `${event.clientX}px`;
    contextMenu.style.top = `${event.clientY}px`;
    contextMenu.classList.remove("hidden");

    requestAnimationFrame(() => {
        const rect = contextMenu.getBoundingClientRect();

        if (rect.right > window.innerWidth - 8) {
            contextMenu.style.left = `${window.innerWidth - rect.width - 8}px`;
        }

        if (rect.bottom > window.innerHeight - 8) {
            contextMenu.style.top = `${window.innerHeight - rect.height - 8}px`;
        }
    });
}

function openAmount(mode) {
    const context = state.context;
    if (!context) return;

    state.amountMode = mode;

    amountTitle.textContent =
        mode === "move"
            ? `Move ${context.item.label}`
            : `Split ${context.item.label}`;

    amountInput.min = "1";
    amountInput.max = String(
        mode === "move"
            ? context.item.count
            : Math.max(1, context.item.count - 1)
    );
    amountInput.value = amountInput.max;

    amountModal.classList.remove("hidden");
    contextMenu.classList.add("hidden");

    requestAnimationFrame(() => {
        amountInput.focus();
        amountInput.select();
    });
}

function closeAmount() {
    amountModal.classList.add("hidden");
    state.amountMode = null;
}

function getGridCellFromPointer(grid, clientX, clientY, item, inventory) {
    const rect = grid.getBoundingClientRect();
    const localX = clientX - rect.left - 4;
    const localY = clientY - rect.top - 4;

    const columns = getGridColumns(inventory);
    const rows = getGridRows(inventory);

    const x = Math.floor(localX / CELL_STEP);
    const y = Math.floor(localY / CELL_STEP);

    return {
        x: Math.max(0, Math.min(columns - item.w, x)),
        y: Math.max(0, Math.min(rows - item.h, y))
    };
}

function clearDropPreview() {
    document.querySelectorAll(".grid").forEach(grid => {
        grid.classList.remove(
            "drop-target",
            "preview-visible",
            "preview-valid",
            "preview-invalid"
        );

        grid.style.removeProperty("--preview-x");
        grid.style.removeProperty("--preview-y");
        grid.style.removeProperty("--preview-width");
        grid.style.removeProperty("--preview-height");
    });
}

function showDropPreview(grid, item, x, y, valid) {
    // Pulisce soltanto l'altra griglia.
    document.querySelectorAll(".grid").forEach(otherGrid => {
        if (otherGrid === grid) return;

        otherGrid.classList.remove(
            "drop-target",
            "preview-visible",
            "preview-valid",
            "preview-invalid"
        );
    });

    grid.style.setProperty(
        "--preview-x",
        `${4 + x * CELL_STEP}px`
    );

    grid.style.setProperty(
        "--preview-y",
        `${4 + y * CELL_STEP}px`
    );

    grid.style.setProperty(
        "--preview-width",
        `${item.w * CELL_SIZE + (item.w - 1) * CELL_GAP}px`
    );

    grid.style.setProperty(
        "--preview-height",
        `${item.h * CELL_SIZE + (item.h - 1) * CELL_GAP}px`
    );

    grid.classList.add("drop-target", "preview-visible");
    grid.classList.toggle("preview-valid", valid);
    grid.classList.toggle("preview-invalid", !valid);
}

function startPointerDrag(event, item, invName, node) {
    if (event.button !== 0 || state.busy) return;

    event.preventDefault();
    closeContext();
    hideTooltip();

    const rect = node.getBoundingClientRect();

    const ghost = node.cloneNode(true);

    ghost.classList.remove("selected", "dragging");
    ghost.classList.add("drag-ghost");

    ghost.style.width = `${rect.width}px`;
    ghost.style.height = `${rect.height}px`;
    ghost.style.left = `${rect.left}px`;
    ghost.style.top = `${rect.top}px`;

    document.body.appendChild(ghost);

    state.drag = {
        item,
        fromInv: invName,
        node,
        ghost,
        pointerId: event.pointerId,

        startX: item.x,
        startY: item.y,

        offsetX: event.clientX - rect.left,
        offsetY: event.clientY - rect.top,

        targetInv: invName,
        targetX: item.x,
        targetY: item.y,
        valid: true,
        mergeTargetUid: null
    };

    node.classList.add("dragging");
    node.setPointerCapture?.(event.pointerId);
}

function updatePointerDrag(event) {
    const drag = state.drag;
    if (!drag) return;
	
	if (drag.ghost) {
		drag.ghost.style.left = `${event.clientX - drag.offsetX}px`;
		drag.ghost.style.top = `${event.clientY - drag.offsetY}px`;
	}

    const sourceGrid = gridByInventory(drag.fromInv);
    if (!sourceGrid) return;

    const grids = [playerGrid];
    if (state.other) grids.push(otherGrid);

    let hoveredGrid = grids.find(grid => {
        const rect = grid.getBoundingClientRect();
        return (
            event.clientX >= rect.left &&
            event.clientX <= rect.right &&
            event.clientY >= rect.top &&
            event.clientY <= rect.bottom
        );
    });

    if (!hoveredGrid) {
        clearDropPreview();
        drag.valid = false;
        return;
    }

    const targetInv = hoveredGrid.dataset.inventory;
    const targetInventory = inventoryByName(targetInv);
    if (!targetInventory) return;

    const cell = getGridCellFromPointer(
		hoveredGrid,
		event.clientX - drag.offsetX + CELL_SIZE / 2,
		event.clientY - drag.offsetY + CELL_SIZE / 2,
		drag.item,
		targetInventory
	);

    const sameInventory = targetInv === drag.fromInv;

	let mergeTarget = null;
	let valid = false;

	if (sameInventory) {
		mergeTarget = getItemAtPosition(
			targetInventory,
			drag.item,
			cell.x,
			cell.y
		);

		if (mergeTarget) {
			valid = canMergeItems(drag.item, mergeTarget);
		} else {
			valid = canPlace(
				targetInventory,
				drag.item,
				cell.x,
				cell.y,
				drag.item.uid
			);
		}
	} else {
		valid = !targetInventory.runtime;
	}

	drag.mergeTargetUid = mergeTarget?.uid || null;

    drag.targetInv = targetInv;
    drag.targetX = cell.x;
    drag.targetY = cell.y;
    drag.valid = valid;

    showDropPreview(hoveredGrid, drag.item, cell.x, cell.y, valid);
}

async function finishPointerDrag() {
    const drag = state.drag;
    if (!drag) return;

    drag.node.classList.remove("dragging");
    if (drag.ghost) {
		drag.ghost.remove();
	}
	clearDropPreview();
	
    state.drag = null;

    if (!drag.valid) {
        render();
        return;
    }

    if (drag.targetInv !== drag.fromInv) {
		const result = await move(drag.item, drag.fromInv, drag.item.count);

		if (result?.ok) {
			await nui("playMoveSound");
		}

		return;
	}
	
	if (drag.mergeTargetUid) {
		const sourceItem = findItem(
			drag.fromInv,
			drag.item.uid
		);

		const targetItem = findItem(
			drag.fromInv,
			drag.mergeTargetUid
		);

		if (
			sourceItem &&
			targetItem &&
			canMergeItems(sourceItem, targetItem)
		) {

			const result = await nui("inv2d:merge", {
				invName: drag.fromInv,
				fromUid: sourceItem.uid,
				toUid: targetItem.uid
			});

			if (result?.ok) {
				await nui("playMoveSound");
			}

			return;
		}
	}

    const inventory = inventoryByName(drag.fromInv);
    const item = findItem(drag.fromInv, drag.item.uid);
    if (!inventory || !item) return;

    if (item.x === drag.targetX && item.y === drag.targetY) {
        render();
        return;
    }

    if (!canPlace(inventory, item, drag.targetX, drag.targetY, item.uid)) {
        render();
        return;
    }

    item.x = drag.targetX;
    item.y = drag.targetY;

    render();
	await nui("playMoveSound");
    await saveLayout(inventory);
}

function createGridCells(grid, inventory) {
    const background = document.createElement("div");
    background.className = "grid-cells";

    const columns = getGridColumns(inventory);
    const rows = getGridRows(inventory);

    grid.style.setProperty("--grid-columns", columns);
    grid.style.setProperty("--grid-rows", rows);

    for (let index = 0; index < columns * rows; index++) {
        const cell = document.createElement("div");
        cell.className = "empty-slot";
        background.appendChild(cell);
    }

    grid.appendChild(background);
}

function createItem(item, invName) {
    const node = document.createElement("div");
    node.className = "slot";
    node.dataset.uid = item.uid;
    node.dataset.inventory = invName;

    node.style.left = `${4 + item.x * CELL_STEP}px`;
    node.style.top = `${4 + item.y * CELL_STEP}px`;
    node.style.width = `${item.w * CELL_SIZE + (item.w - 1) * CELL_GAP}px`;
    node.style.height = `${item.h * CELL_SIZE + (item.h - 1) * CELL_GAP}px`;

    node.appendChild(makeImage(item));

    const count = document.createElement("span");
    count.className = "item-count";
    count.textContent = item.count;
    node.appendChild(count);

    node.addEventListener("pointerdown", event => {
        startPointerDrag(event, item, invName, node);
    });

    node.addEventListener("click", event => {
        if (state.drag) return;
        event.stopPropagation();

        document.querySelectorAll(".slot.selected").forEach(other => {
            other.classList.remove("selected");
        });

        node.classList.add("selected");
        state.selected = { item, invName };
    });

    node.addEventListener("dblclick", event => {
        event.preventDefault();

        if (state.other) {
            move(item, invName, item.count);
        } else {
            useItem(item, invName);
        }
    });

    node.addEventListener("contextmenu", event => {
        openContext(event, item, invName);
    });

    node.addEventListener("mouseenter", event => {
        if (!state.drag) showTooltip(event, item);
    });
    node.addEventListener("mousemove", event => {
        if (!state.drag) moveTooltip(event);
    });
    node.addEventListener("mouseleave", hideTooltip);

    return node;
}

function renderGrid(grid, inventory) {
	hideTooltip();
	if (!state.player) return;
	
    grid.innerHTML = "";
    createGridCells(grid, inventory);

    for (const item of inventory?.items || []) {
        if (item.x == null || item.y == null) continue;
        grid.appendChild(createItem(item, inventory.name));
    }
}

function renderHelp() {
    return;
}

function render() {
    if (!state.player) return;

    loading?.classList.add("hidden");
    content?.classList.remove("hidden");

    if (playerGrid) {
        playerGrid.dataset.inventory = state.player.name;
        renderGrid(playerGrid, state.player);
    }

    if (playerCount) {
        playerCount.textContent = `${state.player.items.length} stacks`;
    }

    if (state.other) {
        content?.classList.remove("single");
        otherSection?.classList.remove("hidden");

        if (otherTitle) {
            otherTitle.textContent =
                state.other.title || state.other.name;
        }

        if (otherCount) {
            otherCount.textContent =
                `${state.other.items.length} stacks`;
        }

        if (otherGrid) {
			otherGrid.dataset.inventory = state.other.name;
			renderGrid(otherGrid, state.other);
		}

		renderSecondaryButtons(state.secondaryButtons);
    } else {
        content?.classList.add("single");
        otherSection?.classList.add("hidden");

        if (otherGrid) {
            otherGrid.innerHTML = "";
            otherGrid.dataset.inventory = "";
        }
    }

    renderHelp();
}

function openUi() {
    state.open = true;
    app.classList.remove("hidden");

    // Forza il focus della pagina NUI.
    document.body.tabIndex = -1;

    requestAnimationFrame(() => {
        window.focus();
        document.body.focus();
    });
}

function closeUi() {
    state.open = false;
    state.busy = false;
    state.player = null;
    state.other = null;
    state.selected = null;
    state.drag = null;

    busy.classList.add("hidden");

    clearDropPreview();
    closeContext();
    closeAmount();
    hideTooltip();
    app.classList.add("hidden");
}

window.addEventListener("pointermove", event => {
    updatePointerDrag(event);

    if (!state.open || state.drag) {
        hideTooltip();
        return;
    }

    if (!event.target.closest?.(".slot")) {
        hideTooltip();
    }
});


window.addEventListener("pointerup", finishPointerDrag);
window.addEventListener("pointercancel", finishPointerDrag);

window.addEventListener("message", event => {
    const message = event.data || {};

    switch (message.action) {
        case "inv2d:loading":
            openUi();
            loading.classList.remove("hidden");
            content.classList.add("hidden");
            break;

        case "inv2d:open":
            openUi();
            state.player = prepareInventory(message.player || null);
            state.other = prepareInventory(message.other || null);
            render();

            // Salva anche gli item auto-posizionati.
            if (state.player) saveLayout(state.player);
            if (state.other && !state.other.runtime) saveLayout(state.other);
            break;
			
		case "inv2d:secondaryButtons":
			state.secondaryButtons = message.buttons || [];
			renderSecondaryButtons(state.secondaryButtons);
			break;

        case "inv2d:close":
            closeUi();
            break;

        case "inv2d:busy":
            state.busy = message.value === true;
            busy.classList.toggle("hidden", !state.busy);
            break;
		case "book:open":
			nui("book:debug",{message:"BOOK OPEN ARRIVATO AL JS"});
			openBook(message);
			break;

		case "book:close":
			closeBook(false);
			break;
    }
});

document.getElementById("close").addEventListener("click", () => nui("inv2d:close"));
document.getElementById("refresh").addEventListener("click", () => nui("inv2d:refresh"));

useAction.addEventListener("click", () => {
    const context = state.context;
    if (!context) return;
    useItem(context.item, context.invName);
    closeContext();
});

dropAction.addEventListener("click", () => {
    const context = state.context;
    if (!context) return;

    dropItem(
        context.item,
        context.invName
    );

    closeContext();
});

splitOneAction.addEventListener("click", () => {
    const context = state.context;
    if (!context) return;
    split(context.item, context.invName, 1);
    closeContext();
});

splitHalfAction.addEventListener("click", () => {
    const context = state.context;
    if (!context) return;
    split(context.item, context.invName, Math.floor(context.item.count / 2));
    closeContext();
});

document.getElementById("amountCancel").addEventListener("click", closeAmount);

amountForm.addEventListener("submit", event => {
    event.preventDefault();

    const context = state.context;
    const mode = state.amountMode;
    if (!context || !mode) return;

    const amount = Math.max(1, Number(amountInput.value) || 1);

    if (mode === "move") {
        move(context.item, context.invName, amount);
    } else {
        split(context.item, context.invName, amount);
    }

    closeAmount();
    state.context = null;
});

document.addEventListener("click", event => {
    if (!contextMenu.contains(event.target)) closeContext();
});

window.addEventListener("keydown",event=>{
	const key=event.key.toLowerCase();

	if(bookOpen){
		if(key==="escape"||key==="x"||key==="tab"){
			event.preventDefault();
			event.stopPropagation();
			closeBook(true);
		}

		return;
	}

	if(!state.open)return;

	const closeKeys=["escape","x","tab"];

	if(!closeKeys.includes(key))return;

	event.preventDefault();
	event.stopPropagation();

	if(!amountModal.classList.contains("hidden")){
		closeAmount();
		return;
	}

	if(!contextMenu.classList.contains("hidden")){
		closeContext();
		return;
	}

	nui("inv2d:close");
},true);

function getItemAtPosition(inventory, movingItem, x, y) {
    return inventory?.items?.find(other => {
        if (String(other.uid) === String(movingItem.uid)) {
            return false;
        }

        if (other.x == null || other.y == null) {
            return false;
        }

        return cellsOverlap(
            movingItem,
            x,
            y,
            other,
            other.x,
            other.y
        );
    }) || null;
}

function canMergeItems(source, target) {
    if (!source || !target) return false;

    if (String(source.uid) === String(target.uid)) {
        return false;
    }

    if (source.item !== target.item) {
        return false;
    }

    if (source.stackable !== true || target.stackable !== true) {
        return false;
    }

    const maxStack = Math.max(
        1,
        Number(target.maxStack) || 1
    );

    return target.count < maxStack;
}

document.querySelectorAll(".inventory-button[data-action]").forEach(button => {
    button.addEventListener("click", async () => {
        await nui("inventoryButton", {
            action: button.dataset.action
        });
    });
});










// SOCCER SCRIPT script.js
const hud=document.getElementById('shotHud'),cursor=document.getElementById('cursor'),trail=document.getElementById('trail'),powerFill=document.getElementById('powerFill');
const clamp=(v,min,max)=>Math.max(min,Math.min(max,Number(v)||0));
function updateShot(power,x,y){power=clamp(power,0,1);x=clamp(x,-1,1);y=clamp(y,-1,1);const px=x*45,py=-y*45,len=Math.sqrt(px*px+py*py),ang=Math.atan2(py,px)*180/Math.PI;powerFill.style.width=`${power*100}%`;cursor.style.transform=`translate(${px}px,${py}px)`;trail.style.width=`${len}px`;trail.style.transform=`rotate(${ang}deg)`;}
function resetShot(){updateShot(0,0,0)}
window.addEventListener('message',e=>{const d=e.data||{};if(d.action==='shotStart'){resetShot();hud.classList.add('active');return}if(d.action==='shotUpdate'){updateShot(d.power,d.x,d.y);return}if(d.action==='shotRelease'||d.action==='shotHide'){hud.classList.remove('active');setTimeout(resetShot,130)}});

