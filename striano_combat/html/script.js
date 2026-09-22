window.addEventListener('message', function(event) {
	if (event.data.action == 'show') {
        let message = event.data.content;	
		$('#sign').show();
		$('#message').text(message);
	} else if (event.data.action == 'show0') {
		let message = event.data.content;	
		$('#sign0').show();
		$('#message0').text(message);
	} else if (event.data.action == 'show2') {
		let message = event.data.content;	
		$('#sign2').show();
		$('#message2').text(message);
	} else if (event.data.action == 'show3') {
		let message = event.data.content;	
		$('#sign3').show();
		$('#message3').text(message);	
	} else if (event.data.action == 'show4') {
		let message = event.data.content;	
		$('#sign4').show();
		$('#message4').text(message);
	} else if (event.data.action == 'show5') {
		let message = event.data.content;	
		$('#sign5').show();
		$('#message5').text(message);
	} else if (event.data.action == 'show6') {
		let message = event.data.content;	
		$('#sign6').show();
		$('#message6').text(message);
	} else if (event.data.action == 'show7') {
		let message = event.data.content;	
		$('#sign7').show();
		$('#message7').text(message);
	
	} else if (event.data.action == 'hide') { $('#sign').hide();
	} else if (event.data.action == 'hide0') { $('#sign0').hide();
	} else if (event.data.action == 'hide2') { $('#sign2').hide();
	} else if (event.data.action == 'hide6') { $('#sign6').hide();
	} else if (event.data.action == 'hide3') { $('#sign3').hide(); 
	} else if (event.data.action == 'hide4') { $('#sign4').hide();
	} else if (event.data.action == 'hide5') { $('#sign5').hide(); 
	} else if (event.data.action == 'hide7') { $('#sign7').hide();
	}
})












// Spell System UI JavaScript - CLEAN VERSION (slots 1–7, ID normalization)

const VALID_SLOTS = [1, 2, 3, 4, 5, 6, 7];

class SpellSystemUI {
    constructor() {
        this.spells = {};          // mappa: chiavi STRING (id normalizzati)
        this.assignedSpells = {};  // { slotNumber: spellObj } (spellObj.id resta numerico)
        this.activeSpells = {};
        this.selectedSpell = null;
        this.grimoireVisible = false;
        this.floatingSlotsVisible = false; // Start with floating slots disabled
        this.countdownIntervals = {};
        
        // Sound effects
        this.sounds = {};
        this.soundEnabled = true;
        
        try {
            this.sounds = {
                open: new Audio('sounds/grimoire_open.wav'),
                close: new Audio('sounds/grimoire_close.wav'),
                assign: new Audio('sounds/spell_assign.wav'),
                remove: new Audio('sounds/spell_remove.wav'),
                click: new Audio('sounds/slot_click.wav'),
                hover: new Audio('sounds/spell_hover.wav')
            };
            
            Object.values(this.sounds).forEach(sound => {
                sound.volume = 0.1;
                sound.preload = 'auto';
            });
        } catch (error) {
            this.sounds = {};
        }
        
        this.init();
    }

    // --- Helpers ---
    normalizeId(id) {
        if (id === null || id === undefined) return null;
        return String(id);
    }
    isValidSlot(n) {
        return VALID_SLOTS.includes(Number(n));
    }
    
    init() {
        this.bindEvents();
        this.setupSpellSelection();
        
        // Hide floating slots by default at startup
        this.hideFloatingSlots();
        
        // Update toggle button to show correct initial state
        const toggleBtn = document.getElementById('toggleFloatingSlots');
        if (toggleBtn) {
            toggleBtn.textContent = '👁️‍🗨️';
            toggleBtn.title = 'Show Right Menu';
        }
        
        window.addEventListener('message', (event) => {
            const data = event.data;
            switch (data.type) {
                case 'openGrimoire':
                    this.openGrimoire(data);
                    break;
				 case 'upgradeGrimoire':
                    this.upgradeGrimoire(data);
                    break;
                case 'closeGrimoire':
                    this.closeGrimoire();
                    break;
                case 'updateSpells':
                    this.updateSpells(data.spells);
                    break;
                case 'updateAssignedSpells':
                    this.setAssignedSpells(data.assignedSpells || {}); // this.updateAssignedSpells(data.assignedSpells);
                    break;
                case 'updateActiveSpells':
                    this.updateActiveSpells(data.activeSpells, data.currentGameTime);
                    break;
                case 'toggleVisibility':
                    this.toggleVisibility(data.visible);
                    break;
                case 'hideFloatingSlots':
                    this.hideFloatingSlots();
                    break;
                case 'showFloatingSlots':
                    this.showFloatingSlots();
                    break;
                case 'toggleFloatingSlots':
                    this.toggleFloatingSlots();
                    break;
                case 'resetAllSpells':
                    this.resetAllSpells();
                    break;
            }
        });
    }
	
	setAssignedSpells(newAssigned) {
	  this.assignedSpells = newAssigned || {};
	  // Aggiorna SUBITO gli slot 1–7 a sinistra
	  this.updateAllSpellSlots();
	  // Aggiorna anche il menu flottante a destra
	  this.updateFloatingSlots();
	  // E lo stato “assegnato” nella lista spell
	  this.updateSpellAvailability();
	  this.populateAvailableSpells();
	}
    
    playSound(soundType) {
        try {
            if (this.sounds && this.sounds[soundType] && this.soundEnabled) {
                const sound = this.sounds[soundType];
                sound.currentTime = 0;
                sound.play().catch(() => {});
                return;
            }
            const audio = new Audio();
            const srcs = {
                open: './sounds/open.mp3',
                close: './sounds/close.mp3',
                click: './sounds/click.mp3',
                assign: './sounds/assign.mp3',
                cast: './sounds/cast.mp3',
                hover: './sounds/click.mp3',
                remove: './sounds/click.mp3'
            };
            audio.src = srcs[soundType] || './sounds/click.mp3';
            audio.volume = 0.3;
            audio.play().catch(() => {});
        } catch {}
    }
    
    bindEvents() {
        document.addEventListener('keydown', (event) => {
            if (event.key === 'Escape') {
                this.closeGrimoire();
            }
        });
        
        const toggleBtn = document.getElementById('toggleFloatingSlots');
        if (toggleBtn) {
            toggleBtn.addEventListener('click', () => this.toggleFloatingSlots());
        }
        
        const soundToggleBtn = document.getElementById('toggleSound');
        if (soundToggleBtn) {
            soundToggleBtn.addEventListener('click', () => this.toggleSound());
        }
        
        const resetBtn = document.getElementById('resetSpells');
        if (resetBtn) {
            resetBtn.addEventListener('click', () => this.resetAllSpells());
        }
    }
    
    setupSpellSelection() {
        document.addEventListener('click', (event) => {
            const spellElement = event.target.closest('.available-spell');
            if (spellElement) {
                const spellIdRaw = spellElement.dataset.spellId;
                const spell = this.spells[this.normalizeId(spellIdRaw)];
                if (spell) {
                    this.selectSpell(spell);
                }
            }
            
            const slot = event.target.closest('.spell-slot');
            if (slot) {
                const slotNumber = parseInt(slot.dataset.slot);
                if (!this.isValidSlot(slotNumber)) return;
                this.playSound('click');
                
                if (this.selectedSpell) {
                    this.assignSpellToSlot(slotNumber, this.selectedSpell);
                    this.clearSpellSelection();
                } else {
                    const hasSpell = slot.dataset.spellId || this.assignedSpells[slotNumber];
                    if (hasSpell) {
                        this.unassignSpell(slotNumber);
                    }
                }
            }
        });
        
        document.addEventListener('mouseover', (event) => {
			const available = event.target.closest('.available-spell');
			const slot = event.target.closest('.spell-slot');
			const floating = event.target.closest('.floating-slot');

			let spellId = null;

			if (available) {
				spellId = available.dataset.spellId;
			} else if (slot) {
				spellId = slot.dataset.spellId;
			} else if (floating) {
				spellId = floating.dataset.spellId;
			}

			if (!spellId) return;

			const spell = this.spells[this.normalizeId(spellId)];
			if (spell) {
				this.showTooltip(event, spell);
			}
		});
        
        document.addEventListener('mouseout', (event) => {
			if (
				event.target.closest('.available-spell') ||
				event.target.closest('.spell-slot') ||
				event.target.closest('.floating-slot')
			) {
				this.hideTooltip();
			}
		});
        
        document.addEventListener('mousemove', (event) => {
            if (this.tooltip && !this.tooltip.classList.contains('hidden')) {
                this.updateTooltipPosition(event);
            }
        });
        
        // Click sui floating slot per castare
        document.addEventListener('click', (event) => {
            const floatingSlot = event.target.closest('.floating-slot');
            if (floatingSlot) {
                const slotNumber = parseInt(floatingSlot.dataset.slot);
                if (!this.isValidSlot(slotNumber)) return;
                const spellIdRaw = floatingSlot.dataset.spellId;
                const spellIdKey = this.normalizeId(spellIdRaw);
                if (spellIdKey && !floatingSlot.classList.contains('disabled')) {
                    this.castSpellFromSlot(slotNumber, spellIdKey);
                }
            }
        });
    }
    
    selectSpell(spell) {
        this.clearSpellSelection();
        this.playSound('hover');
        this.selectedSpell = spell;
        
        document.querySelectorAll('.available-spell').forEach(el => {
            el.classList.remove('selected');
        });
        
        const spellElement = document.querySelector(`[data-spell-id="${this.normalizeId(spell.id)}"]`);
        if (spellElement) {
            spellElement.classList.add('selected');
        }
    }
    
    clearSpellSelection() {
        if (this.selectedSpell) {
            document.querySelectorAll('.available-spell').forEach(el => el.classList.remove('selected'));
            this.selectedSpell = null;
        }
    }
    
    assignSpellToSlot(slotNumber, spell) {
        if (typeof slotNumber === 'string') slotNumber = parseInt(slotNumber);
        if (!this.isValidSlot(slotNumber)) {
            console.error('Invalid slot number:', slotNumber);
            return;
        }
        if (!spell || spell.disabled) return;

        const spellKey = this.normalizeId(spell.id);
        if (!spellKey) return;

        // evita duplicati su slot diversi
        let existingSlot = null;
        for (let slot in this.assignedSpells) {
            const asg = this.assignedSpells[slot];
            if (asg && this.normalizeId(asg.id) === spellKey) {
                existingSlot = parseInt(slot);
                break;
            }
        }
        if (existingSlot && existingSlot !== slotNumber) return;

        // se nello stesso slot c'è altro, pulisci
        if (this.assignedSpells[slotNumber] && this.assignedSpells[slotNumber].id !== spell.id) {
            const existingSpellSlot = document.querySelector(`.spell-slot[data-slot="${slotNumber}"]`);
            if (existingSpellSlot) this.clearSpellSlot(existingSpellSlot);
        }
        // se in slot diverso
        if (existingSlot && existingSlot !== slotNumber) {
            const existingSpellSlot = document.querySelector(`.spell-slot[data-slot="${existingSlot}"]`);
            if (existingSpellSlot) this.clearSpellSlot(existingSpellSlot);
            delete this.assignedSpells[existingSlot];
        }

        // aggiorna stato
        this.assignedSpells[slotNumber] = spell; // mantengo id numerico nell'oggetto
        this.playSound('assign');
        
        // aggiorna DOM
        const spellSlot = document.querySelector(`.spell-slot[data-slot="${slotNumber}"]`);
        if (spellSlot) this.updateSpellSlot(spellSlot, spell);

        // invia a Lua (id numerico)
        fetch(`https://${GetParentResourceName()}/assignSpell`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ slot: slotNumber, spellId: spell.id })
        }).catch(() => {});

        this.updateSpellAvailability();
        this.updateFloatingSlots();
		this.populateAvailableSpells();
    }
    
    unassignSpell(slotNumber) {
        if (!this.isValidSlot(slotNumber)) return;
        const spellSlot = document.querySelector(`.spell-slot[data-slot="${slotNumber}"]`);
        if (spellSlot) {
            this.playSound('remove');
            this.clearSpellSlot(spellSlot);
            if (this.assignedSpells[slotNumber]) delete this.assignedSpells[slotNumber];
            this.updateFloatingSlots();
            
            fetch(`https://${GetParentResourceName()}/unassignSpell`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ slot: slotNumber })
            }).catch(() => {});
            
            this.updateSpellAvailability();
			this.populateAvailableSpells();
        }
    }
    
    updateSpellSlot(spellSlot, spell) {
        if (!spellSlot || !spell) return;
        const iconElement = spellSlot.querySelector('.spell-icon');
        const nameElement = spellSlot.querySelector('.spell-name');
        
        if (iconElement) {
            iconElement.style.display = 'block';
            iconElement.src = this.getSpellIcon(spell.id);
            iconElement.alt = spell.name || '';
            iconElement.title = spell.name || '';
        }
        if (nameElement) nameElement.textContent = spell.name || '';
        
        spellSlot.dataset.spellId = this.normalizeId(spell.id);
        spellSlot.classList.remove('empty');
        
        spellSlot.classList.add('casting');
        setTimeout(() => {
            spellSlot.classList.remove('casting');
            if (spellSlot.dataset.spellId) {
                spellSlot.classList.remove('empty');
                const ic = spellSlot.querySelector('.spell-icon');
                if (ic) ic.style.display = 'block';
            }
        }, 300);
    }
    
    clearSpellSlot(spellSlot) {
        const iconElement = spellSlot.querySelector('.spell-icon');
        const nameElement = spellSlot.querySelector('.spell-name');
        
        if (iconElement) {
            iconElement.style.display = 'none';
            iconElement.alt = '';
            iconElement.title = '';
            iconElement.src = '';
        }
        if (nameElement) nameElement.textContent = '';
        
        delete spellSlot.dataset.spellId;
        spellSlot.classList.add('empty');
        spellSlot.classList.remove('active', 'casting');
    }
    
    getSpellIcon(spellId) {
		// se l'id è un numero (1, 2, 3, 4...) oppure una stringa numerica
		const idNum = parseInt(spellId);

		if (!isNaN(idNum)) {
			// genera automaticamente percorso numerato: spell_1.png, spell_2.png, ecc.
			return `images/spells/spell_${idNum}.png`;
		}

		// fallback generico per id testuali
		return 'images/spells/spell_1.png';
	}

    
    updateSpellAvailability() {
        document.querySelectorAll('.available-spell').forEach(spellElement => {
            const spellIdRaw = spellElement.dataset.spellId;
            const spell = this.spells[this.normalizeId(spellIdRaw)];
            if (!spell) return;
            
            let isAssigned = false;
            for (let slot in this.assignedSpells) {
                const asg = this.assignedSpells[slot];
                if (asg && this.normalizeId(asg.id) === this.normalizeId(spell.id)) {
                    isAssigned = true;
                    break;
                }
            }
            if (isAssigned) {
                spellElement.classList.add('assigned');
                spellElement.title = `${spell.name} - Already assigned to a slot`;
            } else {
                spellElement.classList.remove('assigned');
                spellElement.title = spell.name || '';
            }
        });
    }
    
    toggleFloatingSlots() {
        this.floatingSlotsVisible = !this.floatingSlotsVisible;
        this.playSound('click');
        const toggleBtn = document.getElementById('toggleFloatingSlots');
        if (toggleBtn) {
            if (this.floatingSlotsVisible) {
                toggleBtn.textContent = '👁️';
                toggleBtn.title = 'Hide Right Menu';
            } else {
                toggleBtn.textContent = '👁️‍🗨️';
                toggleBtn.title = 'Show Right Menu';
            }
        }
        this.updateFloatingSlots();
    }
    
    hideFloatingSlots() {
        this.floatingSlotsVisible = false;
        const toggleBtn = document.getElementById('toggleFloatingSlots');
        if (toggleBtn) {
            toggleBtn.textContent = '👁️‍🗨️';
            toggleBtn.title = 'Show Right Menu';
        }
        this.updateFloatingSlots();
    }
    
    showFloatingSlots() {
        this.floatingSlotsVisible = true;
        const toggleBtn = document.getElementById('toggleFloatingSlots');
        if (toggleBtn) {
            toggleBtn.textContent = '👁️';
            toggleBtn.title = 'Show Right Menu';
        }
        this.updateFloatingSlots();
    }
    
    updateFloatingSlots() {
        const floatingSlots = document.getElementById('floatingSlots');
        if (!floatingSlots) return;
        
        if (!this.floatingSlotsVisible) {
            floatingSlots.classList.add('hidden');
            return;
        }

        // pulizia icone
        floatingSlots.querySelectorAll('.floating-slot .spell-icon').forEach(icon => {
            icon.style.display = 'none';
            icon.src = '';
            icon.alt = '';
            icon.title = '';
        });
        // rimuovi disabled
        floatingSlots.querySelectorAll('.floating-slot').forEach(slot => {
            slot.classList.remove('disabled');
            // ripristina label chiave allo slot index
            const key = slot.querySelector('.slot-key');
            if (key) key.textContent = slot.dataset.slot;
        });
        
        // aggiorna solo slot assegnati
        Object.keys(this.assignedSpells).forEach(slotNumber => {
            const spell = this.assignedSpells[slotNumber];
            if (!spell) return;
            const floatingSlotNumber = parseInt(slotNumber);
            if (!this.isValidSlot(floatingSlotNumber)) return;

            const floatingSlot = floatingSlots.querySelector(`.floating-slot[data-slot="${floatingSlotNumber}"]`);
            if (floatingSlot) {
                const iconElement = floatingSlot.querySelector('.spell-icon');
                if (iconElement) {
                    iconElement.style.display = 'block';
                    iconElement.src = this.getSpellIcon(spell.id);
                    iconElement.alt = spell.name || '';
                    iconElement.title = spell.name || '';
                }
                // salva data-spell-id come stringa
                floatingSlot.dataset.spellId = this.normalizeId(spell.id);
                
                if (spell.disabled) floatingSlot.classList.add('disabled');
                else floatingSlot.classList.remove('disabled');
                
                this.updateFloatingSlotCooldown(floatingSlotNumber, this.normalizeId(spell.id));
            }
        });
        
        floatingSlots.classList.remove('hidden');
    }
    
    openGrimoire(data) {
        this.playSound('open');
        this.updateSpells(data.spells || {});
        this.grimoireVisible = data.grimoireVisible || true;
        
        const grimoireElement = document.getElementById('grimoire');
        if (grimoireElement) grimoireElement.classList.remove('hidden');
        this.updateSpellAvailability();
    }
	
	upgradeGrimoire(data) {
        this.updateSpells(data.spells || {});
        this.updateSpellAvailability();
    }
    
    closeGrimoire() {
        this.playSound('close');
        const grimoireElement = document.getElementById('grimoire');
        if (grimoireElement) grimoireElement.classList.add('hidden');
        this.grimoireVisible = false;
        
        fetch(`https://${GetParentResourceName()}/closeGrimoire`, { method: 'POST' }).catch(() => {});
    }
    
    populateAvailableSpells() {
		const container = document.getElementById('availableSpells');
		if (!container) return;

		container.innerHTML = '';

		Object.values(this.spells).forEach(spell => {

			const assigned = Object.values(this.assignedSpells).some(s =>
				s && this.normalizeId(s.id) === this.normalizeId(spell.id)
			);

			if (assigned) return;

			container.appendChild(this.createSpellElement(spell));
		});
	}
    
    createSpellElement(spell) {
        const div = document.createElement('div');
        div.className = 'available-spell';
        div.dataset.spellId = this.normalizeId(spell.id);
        if (spell.disabled) div.classList.add('disabled');
        div.innerHTML = `
            <img class="available-spell-icon" src="${this.getSpellIcon(spell.id)}" alt="${spell.name || ''}" title="${spell.disabled ? (spell.name + ' (Disabled)') : (spell.name || '')}">
        `;
        return div;
    }
    
    updateAllSpellSlots() {
        document.querySelectorAll('.spell-slot').forEach(slot => this.clearSpellSlot(slot));
        if (this.assignedSpells && Object.keys(this.assignedSpells).length > 0) {
            Object.keys(this.assignedSpells).forEach(slotNumber => {
                const spell = this.assignedSpells[slotNumber];
                if (!(spell && spell.id)) return;
                const slotIndex = parseInt(slotNumber);
                if (!this.isValidSlot(slotIndex)) return;
                const spellSlot = document.querySelector(`.spell-slot[data-slot="${slotIndex}"]`);
                if (spellSlot) this.updateSpellSlot(spellSlot, spell);
            });
        }
        // no updateFloatingSlots here
    }
    
    updateAssignedSpells(/* assignedSpells */) {
        // Manteniamo lo stato locale per evitare conflitti.
        this.updateSpellAvailability();
        this.updateFloatingSlots();
    }
    
    updateSpells(spells) {
        // Ricostruisci mappa con chiavi string
        this.spells = {};
        if (spells) {
            // Supporta sia array che oggetto
            if (Array.isArray(spells)) {
                spells.forEach(s => {
                    if (s && s.id !== undefined) this.spells[this.normalizeId(s.id)] = s;
                });
            } else {
                Object.keys(spells).forEach(k => {
                    const s = spells[k];
                    if (s && s.id !== undefined) this.spells[this.normalizeId(s.id)] = s;
                });
            }
        }
        this.populateAvailableSpells();
    }
    
    updateActiveSpells(activeSpells, currentGameTime) {
  this.currentGameTime = currentGameTime || 0;
  this.lastUpdateTime = Date.now();

  if (Array.isArray(activeSpells)) {
    // activeSpells[slotIndex0based] = timestamp
    const normalized = {};

    // se non hai assegnazioni, esci pulito
    if (!this.assignedSpells || Object.keys(this.assignedSpells).length === 0) {
      this.activeSpells = normalized;
    } else {
      for (const slotNumStr of Object.keys(this.assignedSpells)) {
        const slotNum = parseInt(slotNumStr, 10); // 1..7
        const idx = slotNum - 1;                  // ✅ 0..6

        const spell = this.assignedSpells[slotNum];
        if (!spell) continue;

        // guardia su bounds + valori null/undefined
        if (idx >= 0 && idx < activeSpells.length) {
          const ts = activeSpells[idx];
          if (ts !== undefined && ts !== null) {
            normalized[this.normalizeId(spell.id)] = ts;
          }
        }
      }
      this.activeSpells = normalized;
    }

  } else if (activeSpells && typeof activeSpells === 'object') {
    // { [spellId] : timestamp } (id come stringa)
    const normalized = {};
    Object.keys(activeSpells).forEach(k => {
      normalized[this.normalizeId(k)] = activeSpells[k];
    });
    this.activeSpells = normalized;

  } else {
    this.activeSpells = {};
  }

  if (this.floatingSlotsVisible) {
    Object.keys(this.assignedSpells).forEach(slotNumber => {
      const spell = this.assignedSpells[slotNumber];
      if (spell) this.updateFloatingSlotCooldown(parseInt(slotNumber, 10), this.normalizeId(spell.id));
    });
    this.cleanupFinishedCooldowns();
  }
}


    
    toggleVisibility(visible) {
        this.grimoireVisible = visible;
    }
    
    resetAllSpells() {
        this.assignedSpells = {};
        document.querySelectorAll('.spell-slot').forEach(slot => this.clearSpellSlot(slot));
        
        const floatingSlots = document.getElementById('floatingSlots');
        if (floatingSlots) {
            floatingSlots.querySelectorAll('.floating-slot .spell-icon').forEach(icon => {
                icon.style.display = 'none';
                icon.src = '';
                icon.alt = '';
                icon.title = '';
            });
            floatingSlots.querySelectorAll('.floating-slot .slot-key').forEach(key => {
                const parent = key.closest('.floating-slot');
                if (parent && parent.dataset.slot) key.textContent = parent.dataset.slot;
            });
        }
        
        this.updateSpellAvailability();
        
        fetch(`https://${GetParentResourceName()}/resetAllSpells`, {
            method: 'POST'
        }).catch(() => {});
    }
    
    showTooltip(event, spell) {
        const tooltip = document.getElementById('spellTooltip');
        if (!tooltip || !spell) return;
        
        const nameElement = tooltip.querySelector('.tooltip-name');
        const costElement = tooltip.querySelector('.tooltip-cost');
        const descriptionElement = tooltip.querySelector('.tooltip-description');
        const cooldownElement = tooltip.querySelector('.tooltip-cooldown');
        
        if (nameElement && costElement && descriptionElement && cooldownElement) {
            nameElement.textContent = spell.name || '';
            if (spell.manaCost && spell.manaCost > 0) {
                costElement.textContent = `Cost: ${spell.manaCost} Mana`;
                costElement.style.display = 'block';
            } else {
                costElement.textContent = `Cost: FREE`;
                costElement.style.display = 'block';
            }
            descriptionElement.textContent = spell.description || '';
            cooldownElement.textContent = `Cooldown: ${(spell.cooldown || 0) / 1000}s`;
            
            this.updateTooltipPosition(event);
            tooltip.classList.remove('hidden');
            this.tooltip = tooltip;
            tooltip.offsetHeight; // reflow
        }
    }
    
    hideTooltip() {
        if (this.tooltip) {
            this.tooltip.classList.add('hidden');
            setTimeout(() => {
                if (this.tooltip && this.tooltip.classList.contains('hidden')) {
                    this.tooltip = null;
                }
            }, 300);
        }
    }
    
    async castSpellFromSlot(slotNumber, spellIdKey) {
        // spellIdKey è stringa normalizzata
        const spell = this.spells[this.normalizeId(spellIdKey)];
        if (!spell) {
            console.error('Spell not found:', spellIdKey);
            return;
        }
        
        // Check mana solo in cast
        if (spell.manaCost && spell.manaCost > 0) {
            try {
                const response = await fetch(`https://${GetParentResourceName()}/getMana`, { method: 'POST' });
                if (response.ok) {
                    const data = await response.json();
                    const currentMana = data.mana || 0;
                    if (currentMana < spell.manaCost) {
                        console.warn(`Not enough mana! Required: ${spell.manaCost}, Current: ${currentMana}`);
                        return;
                    }
                    await fetch(`https://${GetParentResourceName()}/delMana`, {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify({ mana: spell.manaCost })
                    });
                }
            } catch (error) {
                console.warn('Error with mana system, allowing spell cast:', error);
            }
        }
        
        this.playSound('cast');
        
        const floatingSlot = document.querySelector(`#floatingSlots .floating-slot[data-slot="${slotNumber}"]`);
        if (floatingSlot) {
            floatingSlot.classList.add('casting');
            setTimeout(() => floatingSlot.classList.remove('casting'), 500);
        }
        
        // invio a Lua con id numerico
		// TOLTO PERCHE NON C ERA LA CALLBACK LUA, QUINDI ANDAVA A VUOTO?
		/*
        fetch(`https://${GetParentResourceName()}/castSpell`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ spellId: spell.id, slot: slotNumber })
        }).catch((e) => console.error('Error casting spell:', e));
		*/
    }
    
    updateTooltipPosition(event) {
        if (!this.tooltip) return;
        const offset = 20;
        let x = event.clientX + offset;
        let y = event.clientY + offset;
        
        const tooltipRect = this.tooltip.getBoundingClientRect();
        const viewportWidth = window.innerWidth;
        const viewportHeight = window.innerHeight;
        
        if (x + tooltipRect.width > viewportWidth) x = event.clientX - tooltipRect.width - offset;
        if (y + tooltipRect.height > viewportHeight) y = event.clientY - tooltipRect.height - offset;
        x = Math.max(10, x);
        y = Math.max(10, y);
        
        this.tooltip.style.left = `${x}px`;
        this.tooltip.style.top = `${y}px`;
    }
    
    toggleSound() {
        this.soundEnabled = !this.soundEnabled;
        const soundToggleBtn = document.getElementById('toggleSound');
        if (soundToggleBtn) {
            if (this.soundEnabled) {
                soundToggleBtn.textContent = '🔊';
                soundToggleBtn.title = 'Sound Effects: ON';
            } else {
                soundToggleBtn.textContent = '🔇';
                soundToggleBtn.title = 'Sound Effects: OFF';
            }
        }
    }
    
    updateFloatingSlotCooldown(slotNumber, spellIdKey) {
        const floatingSlot = document.querySelector(`#floatingSlots .floating-slot[data-slot="${slotNumber}"]`);
        if (!floatingSlot) return;
        const slotKey = floatingSlot.querySelector('.slot-key');
        if (!slotKey) return;
        
        const spell = this.spells[this.normalizeId(spellIdKey)];
        const activeAt = this.activeSpells && spell ? this.activeSpells[spell.id] : null;
        
        if (spell && spell.cooldown && activeAt !== undefined && activeAt !== null) {
            const timeSinceCast = this.currentGameTime - activeAt;
            const remainingCooldown = spell.cooldown - timeSinceCast;
            if (remainingCooldown > 0) {
                const seconds = Math.ceil(remainingCooldown / 1000);
                slotKey.textContent = seconds;
                slotKey.classList.add('countdown');
                this.startCooldownCountdown(slotNumber, this.normalizeId(spell.id), remainingCooldown);
            } else {
                slotKey.textContent = slotNumber;
                slotKey.classList.remove('countdown');
            }
        } else {
            slotKey.textContent = slotNumber;
            slotKey.classList.remove('countdown');
        }
    }
    
    startCooldownCountdown(slotNumber, spellIdKey, remainingCooldown) {
        const floatingSlot = document.querySelector(`#floatingSlots .floating-slot[data-slot="${slotNumber}"]`);
        if (!floatingSlot) return;
        const slotKey = floatingSlot.querySelector('.slot-key');
        if (!slotKey) return;

        const intervalKey = `${slotNumber}_${spellIdKey}`;
        if (this.countdownIntervals[intervalKey]) {
            clearInterval(this.countdownIntervals[intervalKey]);
            delete this.countdownIntervals[intervalKey];
        }

        const intervalId = setInterval(() => {
            const elapsedSinceUpdate = Date.now() - this.lastUpdateTime;
            const currentGameTime = (this.currentGameTime || 0) + elapsedSinceUpdate;
            const spell = this.spells[this.normalizeId(spellIdKey)];
            const activeAt = spell ? this.activeSpells[spell.id] : null;
            
            if (spell && activeAt !== undefined && activeAt !== null) {
                const timeSinceCast = currentGameTime - activeAt;
                const remaining = (spell.cooldown || 0) - timeSinceCast;
                if (remaining > 0) {
                    const seconds = Math.ceil(remaining / 1000);
                    slotKey.textContent = seconds;
                    slotKey.classList.add('countdown');
                } else {
                    slotKey.textContent = slotNumber;
                    slotKey.classList.remove('countdown');
                    clearInterval(intervalId);
                    delete this.countdownIntervals[intervalKey];
                }
            } else {
                slotKey.textContent = slotNumber;
                slotKey.classList.remove('countdown');
                clearInterval(intervalId);
                delete this.countdownIntervals[intervalKey];
            }
        }, 100);

        this.countdownIntervals[intervalKey] = intervalId;
    }
    
    cleanupFinishedCooldowns() {
        Object.keys(this.assignedSpells).forEach(slotNumber => {
            const spell = this.assignedSpells[slotNumber];
            if (spell && this.activeSpells[spell.id] !== undefined) {
                const timeSinceCast = (this.currentGameTime || 0) - this.activeSpells[spell.id];
                const remaining = (spell.cooldown || 0) - timeSinceCast;
                if (remaining <= 0) {
                    const floatingSlot = document.querySelector(`#floatingSlots .floating-slot[data-slot="${slotNumber}"]`);
                    if (floatingSlot) {
                        const slotKey = floatingSlot.querySelector('.slot-key');
                        if (slotKey) {
                            slotKey.textContent = slotNumber;
                            slotKey.classList.remove('countdown');
                        }
                    }
                    const key = `${slotNumber}_${this.normalizeId(spell.id)}`;
                    if (this.countdownIntervals[key]) {
                        clearInterval(this.countdownIntervals[key]);
                        delete this.countdownIntervals[key];
                    }
                }
            }
        });
    }
}

document.addEventListener('DOMContentLoaded', () => {
    try {
        window.spellSystemUI = new SpellSystemUI();
    } catch (error) {
        console.error('Error creating SpellSystemUI instance:', error);
    }
});

function GetParentResourceName() {
    return 'striano_combat';
}
