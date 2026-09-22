// FastMenu - lista compatta, contatori sopra/sotto e rendering virtualizzato.

class FastMenu {
    constructor() {
        this.container = document.getElementById('menu-container');
        this.itemsContainer = document.getElementById('menu-items');
        this.virtualContent = document.getElementById('menu-virtual-content');

        this.moreTop = document.getElementById('menu-more-top');
        this.moreBottom = document.getElementById('menu-more-bottom');
        this.moreTopCount = document.getElementById('menu-more-top-count');
        this.moreBottomCount = document.getElementById('menu-more-bottom-count');

        this.tooltip = document.getElementById('menu-tooltip');
        this.tooltipTitle = document.getElementById('menu-tooltip-title');
        this.tooltipDescription = document.getElementById('menu-tooltip-description');
        this.tooltipFooter = document.getElementById('menu-tooltip-footer');
        this.tooltipIcon = document.getElementById('menu-tooltip-icon');

        this.isVisible = false;
        this.closeWithX = false;
        this.items = [];

        // Larghezza automatica in base alla voce più lunga.
        this.minMenuWidth = 190;
        this.maxMenuWidth = 900;
        this.menuHorizontalExtra = 38; // padding item + lista + bordi + scrollbar

        // Deve combaciare con --menu-row-step nel CSS.
        this.rowHeight = 28;

        // Altezza dinamica della lista.
        this.minMenuItemsHeight = 32;
        this.maxMenuItemsHeight = 560;
        this.maxMenuViewportRatio = 0.76;

        // Renderizza qualche voce extra sopra e sotto per evitare buchi durante lo scroll.
        this.overscan = 5;
        this.renderedStart = -1;
        this.renderedEnd = -1;
        this.scrollRaf = null;

        this.hoverTimeout = null;
        this.hoveredItemKey = null;
        this.hoverDelay = 75;

        this.init();
    }

    init() {
        window.addEventListener('message', (event) => {
            this.handleMessage(event.data || {});
        });

        this.itemsContainer.addEventListener('scroll', () => {
            if (this.scrollRaf !== null) return;

            this.scrollRaf = requestAnimationFrame(() => {
                this.scrollRaf = null;
                this.renderVisibleItems();
                this.updateHiddenCounters();
                this.clearHoverState();
            });
        }, { passive: true });

        window.addEventListener('resize', () => {
            this.updateAutoWidth();
            this.updateAutoHeight();
            this.renderedStart = -1;
            this.renderedEnd = -1;
            this.renderVisibleItems(true);
            this.updateHiddenCounters();
        });

        document.addEventListener('keydown', (event) => {
            if (!this.isVisible) return;

            if (
                event.key === 'Escape' ||
                event.code === 'F2' ||
                event.code === 'KeyI'
            ) {
                this.close();
                return;
            }

            if (event.key === 'x' || event.key === 'X') {
                fetch(`https://${GetParentResourceName()}/cancelAnim`, {
                    method: 'POST'
                });

                if (this.closeWithX) {
                    this.close();
                }
            }
        });

        document.addEventListener('contextmenu', (event) => {
            event.preventDefault();
            if (this.isVisible) this.close();
        });
    }

    handleMessage(data) {
        switch (data.type) {
            case 'openMenu':
                this.open(data.data || {});
                break;

            case 'setCloseWithX':
                this.closeWithX = data.enabled === true;
                break;

            case 'closeMenu':
                this.close(false);
                break;

            case 'updateMenu':
                this.update(data.data || {});
                break;
        }
    }

    open(menuData) {
        this.isVisible = true;
        this.update(menuData, true);

        this.container.classList.remove('hidden');
        this.container.classList.add('visible');

        requestAnimationFrame(() => {
            this.renderVisibleItems(true);
            this.updateHiddenCounters();
        });
    }

    close(notifyFiveM = true) {
		// console.trace("[FASTMENU] CLOSE CHIAMATO - notifyFiveM:",notifyFiveM);
        if (!this.isVisible) return;

        this.isVisible = false;
        this.container.classList.remove('visible');
        this.container.classList.add('hidden');
        this.clearHoverState();

        if (notifyFiveM) {
            fetch(`https://${GetParentResourceName()}/closeMenu`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({})
            });
        }
    }

    update(menuData, resetScroll = false) {
        this.updatePosition(menuData.position);
        this.updateItems(menuData.items, resetScroll);
    }

    updatePosition(position) {
        this.container.classList.remove(
            'top-left',
            'top-right',
            'bottom-left',
            'bottom-right'
        );

        if (position && position !== 'center') {
            this.container.classList.add(position);
        }
    }

    updateItems(items, resetScroll = false) {
        this.items = Array.isArray(items) ? items : [];
        this.clearHoverState();
        this.updateAutoWidth();
        this.updateAutoHeight();

        if (resetScroll) {
            this.itemsContainer.scrollTop = 0;
        }

        // Lo spacer virtuale simula l'altezza di tutti gli elementi.
        this.virtualContent.style.height = `${this.items.length * this.rowHeight}px`;

        this.renderedStart = -1;
        this.renderedEnd = -1;
        this.renderVisibleItems(true);
        this.updateHiddenCounters();
    }

    updateAutoWidth() {
        if (!this.container || !this.itemsContainer) return;

        const labels = this.items
            .map(item => String(item?.label ?? ''))
            .filter(Boolean);

        if (labels.length === 0) {
            this.container.style.width = `${this.minMenuWidth}px`;
            return;
        }

        const canvas = this._measureCanvas || (this._measureCanvas = document.createElement('canvas'));
        const context = canvas.getContext('2d');
        if (!context) return;

        const probe = document.createElement('span');
        probe.className = 'menu-item-label';
        probe.style.position = 'fixed';
        probe.style.visibility = 'hidden';
        probe.style.pointerEvents = 'none';
        document.body.appendChild(probe);

        const style = getComputedStyle(probe);
        context.font = `${style.fontWeight} ${style.fontSize} ${style.fontFamily}`;
        probe.remove();

        let widest = 0;
        for (const label of labels) {
            widest = Math.max(widest, context.measureText(label).width);
        }

        const viewportLimit = Math.max(this.minMenuWidth, window.innerWidth - 40);
        const targetWidth = Math.ceil(widest + this.menuHorizontalExtra);
        const finalWidth = Math.min(
            Math.max(targetWidth, this.minMenuWidth),
            this.maxMenuWidth,
            viewportLimit
        );

        this.container.style.width = `${finalWidth}px`;
    }

    updateAutoHeight() {
        if (!this.itemsContainer) return;

        const totalRowsHeight = this.items.length * this.rowHeight;
        const viewportLimit = Math.floor(window.innerHeight * this.maxMenuViewportRatio);
        const maxHeight = Math.max(
            this.minMenuItemsHeight,
            Math.min(this.maxMenuItemsHeight, viewportLimit)
        );

        // Con poche voci la lista prende solo lo spazio realmente necessario.
        // Con molte voci si ferma al massimo e lascia lavorare la scrollbar.
        const targetHeight = Math.min(
            Math.max(totalRowsHeight, this.minMenuItemsHeight),
            maxHeight
        );

        this.itemsContainer.style.height = `${targetHeight}px`;
    }

    renderVisibleItems(force = false) {
        const total = this.items.length;

        if (total === 0) {
            this.virtualContent.replaceChildren();
            this.virtualContent.style.height = '0px';
            this.renderedStart = 0;
            this.renderedEnd = 0;
            return;
        }

        const scrollTop = this.itemsContainer.scrollTop;
        const viewportHeight = this.itemsContainer.clientHeight;

        const firstVisible = Math.floor(scrollTop / this.rowHeight);
        const visibleCount = Math.ceil(viewportHeight / this.rowHeight);

        const start = Math.max(0, firstVisible - this.overscan);
        const end = Math.min(total, firstVisible + visibleCount + this.overscan);

        if (!force && start === this.renderedStart && end === this.renderedEnd) {
            return;
        }

        this.renderedStart = start;
        this.renderedEnd = end;

        const fragment = document.createDocumentFragment();

        for (let index = start; index < end; index++) {
            const item = this.items[index];
            fragment.appendChild(this.createMenuItem(item, index));
        }

        this.virtualContent.replaceChildren(fragment);
    }

    createMenuItem(item, index) {
        const menuItem = document.createElement('div');
        menuItem.className = 'menu-item';
        menuItem.dataset.index = String(index);
        menuItem.style.transform = `translateY(${index * this.rowHeight + 2}px)`;

        const label = document.createElement('span');
        label.className = 'menu-item-label';
        label.textContent = item?.label ?? '';
		if (item?.color) {
			label.style.color = item.color;
		}
        menuItem.appendChild(label);

        menuItem.addEventListener('click', () => {
            this.handleItemClick(item);
        });

        menuItem.addEventListener('mouseenter', (event) => {
            this.startHoverCheck(item, index, event.currentTarget);
        });

        menuItem.addEventListener('mouseleave', () => {
            const key = this.getItemKey(item, index);
            if (this.hoveredItemKey === key) {
                this.clearHoverState();
            }
        });

        return menuItem;
    }

    getItemKey(item, index) {
        return `${index}:${String(item?.id ?? '')}`;
    }

    updateHiddenCounters() {
        const total = this.items.length;

        if (total === 0) {
            this.setIndicator(this.moreTop, this.moreTopCount, 0);
            this.setIndicator(this.moreBottom, this.moreBottomCount, 0);
            return;
        }

        const scrollTop = this.itemsContainer.scrollTop;
        const viewportHeight = this.itemsContainer.clientHeight;

        const hiddenAbove = Math.min(
            total,
            Math.max(0, Math.floor(scrollTop / this.rowHeight))
        );

        const lastVisibleExclusive = Math.min(
            total,
            Math.ceil((scrollTop + viewportHeight) / this.rowHeight)
        );

        const hiddenBelow = Math.max(0, total - lastVisibleExclusive);

        this.setIndicator(this.moreTop, this.moreTopCount, hiddenAbove);
        this.setIndicator(this.moreBottom, this.moreBottomCount, hiddenBelow);
    }

    setIndicator(element, countElement, count) {
        countElement.textContent = String(count);
        element.classList.toggle('hidden', count <= 0);
    }

    handleItemClick(item) {
        if (!item) return;

        fetch(`https://${GetParentResourceName()}/menuItemClicked`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ itemId: item.id })
        });
    }

    clearHoverState() {
        if (this.hoverTimeout) {
            clearTimeout(this.hoverTimeout);
            this.hoverTimeout = null;
        }

        this.hoveredItemKey = null;
        this.hideTooltip();
    }

    startHoverCheck(item, index, element) {
        if (this.hoverTimeout) {
            clearTimeout(this.hoverTimeout);
        }

        const itemKey = this.getItemKey(item, index);
        this.hoveredItemKey = itemKey;

        this.hoverTimeout = setTimeout(() => {
            if (this.hoveredItemKey !== itemKey || !element.isConnected) return;

            const label = element.querySelector('.menu-item-label');
            if (!label) return;

            const isTruncated = label.scrollWidth > label.clientWidth;

            if (isTruncated && !item.hoverInfo) {
                this.showTooltip({
                    ...item,
                    hoverInfo: {
                        title: item.label,
                        description: item.label
                    }
                }, element);
            } else {
                this.showTooltip(item, element);
            }

            fetch(`https://${GetParentResourceName()}/menuItemHovered`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ itemId: item.id })
            });
        }, this.hoverDelay);
    }

    showTooltip(item, element) {
        if (!this.tooltip) return;

        const info = item?.hoverInfo;
        if (!info) {
            this.hideTooltip();
            return;
        }

        this.tooltip.className = 'menu-tooltip';

        if (info.theme) {
            this.tooltip.classList.add(`theme-${info.theme}`);
        }

        this.tooltipTitle.textContent = info.title || item.label || '';
        this.tooltipDescription.textContent = info.description || '';

        if (info.footer) {
            this.tooltipFooter.textContent = info.footer;
            this.tooltipFooter.classList.remove('hidden');
        } else {
            this.tooltipFooter.textContent = '';
            this.tooltipFooter.classList.add('hidden');
        }

        if (info.icon) {
            this.tooltipIcon.textContent = info.icon;
            this.tooltipIcon.classList.remove('hidden');
        } else {
            this.tooltipIcon.textContent = '';
            this.tooltipIcon.classList.add('hidden');
        }

        this.tooltip.classList.remove('hidden');

        if (element) {
            const containerRect = this.container.getBoundingClientRect();
            const elementRect = element.getBoundingClientRect();
            const maxTop = Math.max(0, containerRect.height - this.tooltip.offsetHeight);
            const wantedTop = elementRect.top - containerRect.top;
            this.tooltip.style.top = `${Math.min(maxTop, Math.max(0, wantedTop))}px`;
        }
    }

    hideTooltip() {
        if (!this.tooltip) return;
        this.tooltip.className = 'menu-tooltip hidden';
    }
}

document.addEventListener('DOMContentLoaded', () => {
    window.fastMenu = new FastMenu();
});
