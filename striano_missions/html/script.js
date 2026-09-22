let message = ''
let pocet = ''
let CurDispId = 0
let md = false
let gd = false
let scrollInterval = null
let title = ''          // ✅ così non rimane globale "strana"

let questAlertTimeout = null

// ✅ UNICO listener per i messaggi NUI
window.addEventListener('message', function (event) {
    const data = event.data
    if (!data || !data.action) return

    if (data.action === "button") {
        pressed(data.key)
    }
	
	if (data.action === "updateAcceptKey") {
		const el = document.getElementById("G");
		if (el) el.innerHTML = data.value;   // ✅ ora interpreta l'HTML
	}

    if (data.action === "GetCall") {
        message    = data.message
        pocet      = data.pocet
        CurDispId  = data.CurDispId
        title      = data.title
        
		const box = document.getElementById("messageId");
		clearInterval(scrollInterval);
        scrollInterval = null;
		box.scrollTop = 0;
		
		update()
    }
	
	if (data.action === "GetCallUpdate") {
        message    = data.message
        pocet      = data.pocet
        CurDispId  = data.CurDispId
        title      = data.title
        update()
    }

    if (data.action === "Escape") {
		const box = document.getElementById("messageId");
		clearInterval(scrollInterval);
        scrollInterval = null;
		box.scrollTop = 0;
        document.getElementById("container").style.display = "none"
    }
	
	if (data.action === "RemoveQuest") {
		const box = document.getElementById("messageId");

		clearInterval(scrollInterval);
		scrollInterval = null;

		box.scrollTop = 0;
		box.innerHTML = "";
		document.getElementById("titleId").innerHTML = "";
		document.getElementById("pocetId").innerHTML = "";

		CurDispId = 0;
		document.getElementById("container").style.display = "none";
	}

    if (data.action === "showQuestAlert") {
        showQuestAlert(data)
    }
})

function pressed(k){
    const element = document.getElementById(k);
    element.style.transition = 'background-color 0.1s, transform 0.1s';
    element.style.backgroundColor = '#2f2d31ff';
    element.style.border= "3px solid #4d4d4dff";
    element.style.transform = 'scale(1.005)';
    setTimeout(() => {
        element.style.backgroundColor = "#212023";
        element.style.border= "3px solid #2C2C2C";
        element.style.transform = 'scale(1)';
    }, 100);
}

function update() {
    if (gd == false) {
        document.getElementById("messageId").innerHTML = message;
        document.getElementById("titleId").innerHTML   = title;
        document.getElementById("pocetId").innerHTML   = pocet;

        if (CurDispId == 0) {
            document.getElementById("container").style.display = "none";
        } else {
            document.getElementById("container").style.display = "block";
        }

        // setTimeout(() => {
            startAutoScroll();
        // }, 2000);
    }
}

function startAutoScroll() {
    const box = document.getElementById("messageId");
    if (!box) return;

    if (scrollInterval) {
        clearInterval(scrollInterval);
        scrollInterval = null;
    }

    scrollInterval = setInterval(() => {
        if (gd) return;
        if (box.scrollHeight <= box.clientHeight) return;

        box.scrollTop += 0.09;

        if (box.scrollTop >= box.scrollHeight - box.clientHeight) {
            setTimeout(() => {
                box.scrollTop = 0;
            }, 4500);
        }
    }, 9);
}

/* ───────── NOTIFICA NUOVA QUEST ───────── */

function showQuestAlert(data) {
    const box = document.getElementById('questAlert');
    if (!box) return;

    const titleEl = document.getElementById('questAlertTitle');
    const textEl  = document.getElementById('questAlertText');

    const qTitle = (data && typeof data.title !== 'undefined') ? data.title : 'Nuova quest';
    const qText  = (data && typeof data.text  !== 'undefined') ? data.text  : 'Hai una nuova quest disponibile.';

    if (titleEl) titleEl.textContent = qTitle;
    if (textEl)  textEl.textContent  = qText;

    box.classList.remove('hide');
    box.style.display = 'block';
    void box.offsetWidth;
    box.classList.add('show');

    const audio = document.getElementById('questSound');
    if (audio) {
        audio.currentTime = 0;
        audio.play().catch(() => {});
    }

    if (questAlertTimeout) clearTimeout(questAlertTimeout);
    questAlertTimeout = setTimeout(hideQuestAlert, 4500);
}

function hideQuestAlert() {
    const box = document.getElementById('questAlert');
    if (!box) return;

    box.classList.remove('show');
    box.classList.add('hide');

    setTimeout(() => {
        box.style.display = 'none';
        box.classList.remove('hide');
    }, 250);
}

















/* DUSKFALLS */
// Player Points Display System JavaScript

class PlayerPointsDisplay {
    constructor() {
        // Player stats
        this.points = 0;
        this.kills = 0;
        this.kd = 0;
        this.deaths = 0;
        this.eteris = 0; // Nuovo slot eteris
        this.displayVisible = false; // Di default non visibile
        this.timerMinutes = 15;
        this.timerSeconds = 0;
        this.timerInterval = null;
        this.timerActive = false;
        
        // Health bar properties
        this.healthBarVisible = true; // Cambiato da false a true per renderla visibile di default
        this.currentHealth = 100;
        this.maxHealth = 100;
        this.healthUpdateInterval = null;
        
        // Mana bar properties
        this.manaBarVisible = true;
        this.currentMana = 100;
        this.maxMana = 100;
        
        // HUD positioning properties
        this.hudPosition = 'left'; // 'left', 'center', 'right'
        
        this.init();
        this.initTimer();
    }
    
    init() {
        this.bindEvents();
        
        window.addEventListener('message', (event) => {
            const data = event.data;
            
            switch (data.type) {
                case 'showPointsDisplay':
                    this.showDisplay(data);
                    break;
                case 'hidePointsDisplay':
                    this.hideDisplay();
                    break;
                case 'updatePoints':
                    this.updatePoints(data.points);
                    break;
                case 'updateKills':
                    this.updateKills(data.kills);
                    break;
                case 'updateKD':
                    this.updateKD(data.kd);
                    break;
                case 'updateDeaths':
                    this.updateDeaths(data.deaths);
                    break;
                case 'startTimer':
                    this.startTimer(data.minutes, data.seconds);
                    break;
                case 'showHealthBar':
                    this.showHealthBar(data.maxHealth);
                    break;
                case 'hideHealthBar':
                    this.hideHealthBar();
                    break;
                case 'updateMaxHealth':
                    this.updateMaxHealth(data.maxHealth);
                    break;
                case 'updateHealth':
                    this.updateHealthFromLua(data.currentHealth);
                    break;
                case 'showManaBar':
                    this.showManaBar(data.maxMana);
                    break;
                case 'hideManaBar':
                    this.hideManaBar();
                    break;
                case 'updateMaxMana':
                    this.updateMaxMana(data.maxMana);
                    break;
                case 'updateMana':
                    this.updateManaFromLua(data.currentMana);
                    break;
                case 'setHUDPosition':
                    this.setHUDPosition(data.position);
                    break;
                case 'setHUDVisibility':
                    this.toggleHUDVisibility(data.visible);
                    break;
                case 'showHUD':
                    this.showHUD();
                    break;
                case 'hideHUD':
                    this.hideHUD();
                    break;
                case 'setHealthBarVisibility':
                    this.setHealthBarVisibility(data.visible);
                    break;
                case 'setTimerVisibility':
                    this.setTimerVisibility(data.visible);
                    break;
            }
        });
    }
    
    bindEvents() {
        // Add click event to the points slot for potential future interactions
        const pointsSlot = document.querySelector('.points-slot');
        if (pointsSlot) {
            pointsSlot.addEventListener('click', () => {
                this.onPointsSlotClick();
            });
        }
    }
    
    showDisplay(data) {
        this.points = data.points || 0;
        this.displayVisible = true;
        
        this.updateDisplay();
        
        const display = document.getElementById('pointsDisplay');
        if (display) {
            display.classList.remove('hidden');
        }
    }
    
    hideDisplay() {
        this.displayVisible = false;
        
        const display = document.getElementById('pointsDisplay');
        if (display) {
            display.classList.add('hidden');
        }
    }
    
    updatePoints(points) {
        const oldPoints = this.points;
        
        this.points = points || 0;
        
        // Check if points increased
        if (this.points > oldPoints) {
            this.playUpdateAnimation();
        }
        
        this.updateDisplay();
    }
    
    updateDisplay() {
        const pointsValue = document.querySelector('.points-value');
        const killsValue = document.querySelector('.kills-value');
        const kdValue = document.querySelector('.kd-value');
        const deathValue = document.querySelector('.death-value');
        const eterisValue = document.querySelector('.eteris-value');
        
        if (pointsValue) {
            pointsValue.textContent = this.formatPoints(this.points);
        }
        if (killsValue) {
            killsValue.textContent = this.formatPoints(this.kills);
        }
        if (kdValue) {
            kdValue.textContent = this.formatPoints(this.kd);
        }
        if (deathValue) {
            deathValue.textContent = this.formatPoints(this.deaths);
        }
        // Update eteris icon text in the health table
        const eterisText = document.querySelector('.eteris-text');
        if (eterisText) {
            eterisText.textContent = this.formatPoints(this.eteris);
        }
        
        // Update HUD visibility classes
        this.updateHUDClasses();
    }
    
    formatPoints(points) {
        if (points >= 1000000) {
            return (points / 1000000).toFixed(1) + 'M';
        } else if (points >= 1000) {
            return (points / 1000).toFixed(1) + 'K';
        } else {
            return points.toString();
        }
    }
    
    playUpdateAnimation() {
        const pointsSlot = document.querySelector('.points-slot');
        if (pointsSlot) {
            pointsSlot.classList.add('updating');
            setTimeout(() => {
                pointsSlot.classList.remove('updating');
            }, 3000);
        }
    }
    
    playKillsAnimation() {
        const killsSlot = document.querySelector('.kills-slot');
        if (killsSlot) {
            killsSlot.classList.add('updating');
            setTimeout(() => {
                killsSlot.classList.remove('updating');
            }, 3000);
        }
    }
    
    playKDAnimation() {
        const kdSlot = document.querySelector('.kd-slot');
        if (kdSlot) {
            kdSlot.classList.add('updating');
            setTimeout(() => {
                kdSlot.classList.remove('updating');
            }, 3000);
        }
    }
    
    playDeathAnimation() {
        const deathSlot = document.querySelector('.death-slot');
        if (deathSlot) {
            deathSlot.classList.add('updating');
            setTimeout(() => {
                deathSlot.classList.remove('updating');
            }, 3000);
        }
    }
    
    onPointsSlotClick() {
        // Future functionality - could show detailed stats, open menu, etc.
    }
    
    updateKills(kills) {
        const oldKills = this.kills;
        this.kills = kills || 0;
        this.updateDisplay();
        
        // Check if kills increased
        if (this.kills > oldKills) {
            this.playKillsAnimation();
        }
    }
    
    updateKD(kd) {
        const oldKD = this.kd;
        this.kd = kd || 0;
        this.updateDisplay();
        
        // Check if KD increased
        if (this.kd > oldKD) {
            this.playKDAnimation();
        }
    }
    
    updateDeaths(deaths) {
        const oldDeaths = this.deaths;
        this.deaths = deaths || 0;
        this.updateDisplay();
        
        // Check if deaths increased
        if (this.deaths > oldDeaths) {
            // No specific animation for deaths yet, as it's a negative stat
        }
    }
    
    initTimer() {
        this.timerMinutes = 15;
        this.timerSeconds = 0;
        this.timerInterval = null;
        // Timer will be started manually via export
    }
    
    startTimer(minutes = 15, seconds = 0) {
        // Stop any existing timer first
        if (this.timerInterval) {
            clearInterval(this.timerInterval);
            this.timerInterval = null;
        }
        
        // Set custom timer values
        this.timerMinutes = minutes;
        this.timerSeconds = seconds;
        this.timerActive = true;
        
        // Show timer display
        const timerDisplay = document.getElementById('timerDisplay');
        if (timerDisplay) {
            timerDisplay.classList.remove('hidden');
        }
        
        // Automatically show health bar when timer starts
        this.showHealthBar(this.maxHealth);
        
        // Update display immediately
        this.updateTimerDisplay();
        
        // Send initial timer update to Lua
        this.sendTimerUpdateToLua();
        
        // Start the countdown
        this.timerInterval = setInterval(() => {
            this.updateTimer();
        }, 1000);
    }
    
    updateTimer() {
        if (this.timerSeconds > 0) {
            this.timerSeconds--;
        } else if (this.timerMinutes > 0) {
            this.timerMinutes--;
            this.timerSeconds = 59;
        } else {
            // Timer finished
            this.timerFinished();
            return;
        }
        
        this.updateTimerDisplay();
        
        // Send timer update to Lua every second
        this.sendTimerUpdateToLua();
    }
    
    updateTimerDisplay() {
        const timerValue = document.querySelector('.timer-value');
        if (timerValue) {
            const minutes = this.timerMinutes.toString().padStart(2, '0');
            const seconds = this.timerSeconds.toString().padStart(2, '0');
            timerValue.textContent = `${minutes}:${seconds}`;
        }
    }
    
    timerFinished() {
        clearInterval(this.timerInterval);
        this.timerInterval = null;
        this.timerActive = false;
        
        // Send final timer update to Lua
        this.sendTimerUpdateToLua();
        
        // Call Lua function when timer ends
        fetch(`https://${GetParentResourceName()}/timerFinished`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                message: 'Timer finished!'
            })
        }).catch(err => {});
        
        // Hide timer display
        const timerDisplay = document.getElementById('timerDisplay');
        if (timerDisplay) {
            timerDisplay.classList.add('hidden');
        }
        
        // Automatically hide health bar when timer ends
        this.hideHealthBar();
    }
    
    // Health Bar Methods
    showHealthBar(maxHealth) {
        this.maxHealth = maxHealth;
        this.currentHealth = maxHealth;
        this.healthBarVisible = true;
        
        // Force immediate health update
        this.forceHealthUpdate();
        
        const healthBar = document.getElementById('healthBar');
        if (healthBar) {
            healthBar.classList.remove('hidden');
        }
    }
    
    updatePlayerHealth() {
        // Health updates now come from Lua via NUI messages
        // This function is kept for compatibility but doesn't actively fetch health
        // The real health updates come from the 'updateHealth' NUI message
        return;
    }
    
    // Force health update from game
    forceHealthUpdate() {
        // Request health update from Lua
        fetch(`https://${GetParentResourceName()}/requestHealthUpdate`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                request: 'healthUpdate'
            })
        }).catch(err => {});
        
        // Start regular updates
        this.startHealthUpdate();
    }
    
    hideHealthBar() {
        this.healthBarVisible = false;
        this.currentHealth = 0; // Reset health when hiding
        this.updateHealthDisplay();

        const healthBar = document.getElementById('healthBar');
        if (healthBar) {
            healthBar.classList.add('hidden');
        }
        clearInterval(this.healthUpdateInterval);
        this.healthUpdateInterval = null;
    }
    
    updateMaxHealth(maxHealth) {
        this.maxHealth = maxHealth;
        this.currentHealth = maxHealth; // Reset current health to new max
        this.updateHealthDisplay();
    }
    
    // Mana Bar Methods
    showManaBar(maxMana) {
        this.maxMana = maxMana;
        this.currentMana = maxMana;
        this.manaBarVisible = true;
        
        const manaBar = document.getElementById('manaBar');
        if (manaBar) {
            manaBar.classList.remove('hidden');
        }
        
        this.updateManaDisplay();
    }
    
    hideManaBar() {
        this.manaBarVisible = false;
        this.currentMana = 0; // Reset mana when hiding
        
        const manaBar = document.getElementById('manaBar');
        if (manaBar) {
            manaBar.classList.add('hidden');
        }
    }
    
    updateMaxMana(maxMana) {
        this.maxMana = maxMana;
        this.currentMana = maxMana; // Reset current mana to new max
        this.updateManaDisplay();
    }
    
    updateManaFromLua(currentMana) {
        // Validate the mana value
        if (currentMana !== undefined && currentMana >= 0) {
            this.currentMana = currentMana;
            this.updateManaDisplay();
        }
    }
    
    updateManaDisplay() {
        const manaBar = document.getElementById('manaBar');
        const manaBarFill = document.getElementById('manaBarFill');
        const manaBarText = document.getElementById('manaBarText');

        if (manaBar && manaBarFill && manaBarText) {
            // Ensure mana values are within valid ranges
            const currentMana = Math.max(0, this.currentMana);
            const maxMana = Math.max(1, this.maxMana); // Evita divisione per zero
            
            // Calcola la percentuale
            const percentage = Math.min(100, (currentMana / maxMana) * 100);
            
            // Update the mana bar fill
            manaBarFill.style.width = `${percentage}%`;
            
            // Update the text (show current/max)
            manaBarText.textContent = `${Math.floor(currentMana)}/${this.maxMana}`;
        }
    }
    
    updateHealthFromLua(currentHealth) {
        // Validate the health value - allow health above maxHealth (GTA V can have >100 health)
        if (currentHealth !== undefined && currentHealth >= 0) {
            // Check if health actually changed
            if (this.currentHealth !== currentHealth) {
                const previousHealth = this.currentHealth;
                this.currentHealth = currentHealth;
                this.updateHealthDisplay();
                
                // Add vibration effect to health icon only when health changes
                // Use different animation based on whether health increased or decreased
                if (currentHealth > previousHealth) {
                    this.addHealthIconHealing();
                } else {
                    this.addHealthIconVibration();
                }
            } else {
                // Health didn't change, just update display without vibration
                this.currentHealth = currentHealth;
                this.updateHealthDisplay();
            }
        }
    }
    
    startHealthUpdate() {
        if (this.healthUpdateInterval) {
            clearInterval(this.healthUpdateInterval);
        }
        
        // Request health updates from Lua every 500ms
        this.healthUpdateInterval = setInterval(() => {
            fetch(`https://${GetParentResourceName()}/requestHealthUpdate`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    request: 'healthUpdate'
                })
            }).catch(err => {});
        }, 500);
    }
    
    updateHealthDisplay() {
        const healthBar = document.getElementById('healthBar');
        const healthBarFill = document.getElementById('healthBarFill');
        const healthBarText = document.getElementById('healthBarText');

        if (healthBar && healthBarFill && healthBarText) {
            // Ensure health values are within valid ranges
            const currentHealth = Math.max(0, this.currentHealth);
            const maxHealth = Math.max(1, this.maxHealth); // Evita divisione per zero
            
            // Calcola la percentuale - se currentHealth > maxHealth, la barra sarà piena
            const percentage = Math.min(100, (currentHealth / maxHealth) * 100);
            
            // Update the health bar fill
            healthBarFill.style.width = `${percentage}%`;
            
            // Update the text (show only current health)
            healthBarText.textContent = `${Math.floor(currentHealth)}`;
            
            // Keep health bar always red as requested
            healthBarFill.style.background = 'linear-gradient(90deg, #ff0000 0%, #ff4444 100%)';
        }
    }
    
    addHealthIconVibration() {
        const healthIcon = document.querySelector('.health-icon');
        const manaIcon = document.querySelector('.mana-icon');
        
        if (healthIcon) {
            // Remove existing animation classes
            healthIcon.classList.remove('updating', 'healing');
            
            // Force reflow to restart animation
            void healthIcon.offsetWidth;
            
            // Add vibration animation class
            healthIcon.classList.add('updating');
            
            // Hide mana icon during health animation
            if (manaIcon) {
                manaIcon.style.opacity = '0';
                manaIcon.style.transition = 'opacity 0.2s ease';
            }
            
            // Remove animation class and restore mana icon after animation completes (1.2s)
            setTimeout(() => {
                healthIcon.classList.remove('updating');
                if (manaIcon) {
                    manaIcon.style.opacity = '1';
                }
            }, 1200);
        }
    }
    
    addHealthIconHealing() {
        const healthIcon = document.querySelector('.health-icon');
        const manaIcon = document.querySelector('.mana-icon');
        
        if (healthIcon) {
            // Remove existing animation classes
            healthIcon.classList.remove('updating', 'healing');
            
            // Force reflow to restart animation
            void healthIcon.offsetWidth;
            
            // Add healing animation class
            healthIcon.classList.add('healing');
            
            // Hide mana icon during health animation
            if (manaIcon) {
                manaIcon.style.opacity = '0';
                manaIcon.style.transition = 'opacity 0.2s ease';
            }
            
            // Remove animation class and restore mana icon after animation completes (1.5s)
            setTimeout(() => {
                healthIcon.classList.remove('healing');
                if (manaIcon) {
                    manaIcon.style.opacity = '1';
                }
            }, 1500);
        }
    }
    
    addEterisIconVibration() {
        const eterisIcon = document.querySelector('.eteris-icon');
        if (eterisIcon) {
            // Remove existing animation class
            eterisIcon.classList.remove('updating');
            
            // Force reflow to restart animation
            void eterisIcon.offsetWidth;
            
            // Add animation class
            eterisIcon.classList.add('updating');
            
            // Remove animation class after animation completes
            setTimeout(() => {
                eterisIcon.classList.remove('updating');
            }, 800);
        }
    }

    // Send current timer status to Lua
    sendTimerUpdateToLua() {
        fetch(`https://${GetParentResourceName()}/timerUpdate`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                minutes: this.timerMinutes,
                seconds: this.timerSeconds,
                active: this.timerActive,
                totalSeconds: (this.timerMinutes * 60) + this.timerSeconds
            })
        }).catch(err => {});
    }

    // HUD Positioning Methods
    setHUDPosition(position) {
        // Rimuovi tutte le classi di posizionamento esistenti
        this.removeAllPositionClasses();
        
        // Imposta la nuova posizione
        this.hudPosition = position || 'left';
        
        // Applica la classe di posizionamento appropriata
        switch (this.hudPosition) {
            case 'center':
                this.applyPositionClass('centered');
                break;
            case 'right':
                this.applyPositionClass('right-aligned');
                break;
            case 'left':
            default:
                // Posizione di default (sinistra) - nessuna classe aggiuntiva
                break;
        }
    }
    
    removeAllPositionClasses() {
        const elements = [
            document.getElementById('pointsDisplay'),
            document.getElementById('timerDisplay'),
            document.getElementById('healthBar'),
            document.getElementById('manaBar')
        ];
        
        elements.forEach(element => {
            if (element) {
                element.classList.remove('centered', 'right-aligned');
            }
        });
    }
    
    applyPositionClass(className) {
        const elements = [
            document.getElementById('pointsDisplay'),
            document.getElementById('timerDisplay'),
            document.getElementById('healthBar'),
            document.getElementById('manaBar')
        ];
        
        elements.forEach(element => {
            if (element) {
                element.classList.add(className);
            }
        });
    }
    
    // Metodo per posizionare l'HUD in base al contesto
    setHUDPositionByContext(context) {
        switch (context) {
            case 'combat':
                // Durante il combattimento, centra l'HUD
                this.setHUDPosition('center');
                break;
            case 'menu':
                // Durante i menu, sposta a destra
                this.setHUDPosition('right');
                break;
            case 'exploration':
                // Durante l'esplorazione, mantieni a sinistra
                this.setHUDPosition('left');
                break;
            case 'default':
            default:
                // Posizione di default (sinistra)
                this.setHUDPosition('left');
                break;
        }
    }

    // HUD Visibility Control Methods
    showHUD() {
        this.displayVisible = true;
        // Points display non viene mostrato automaticamente - deve essere esplicitamente richiesto
        // const display = document.getElementById('pointsDisplay');
        // if (display) {
        //     display.classList.remove('hidden');
        // }
        
        // Show mana bar if it should be visible
        if (this.manaBarVisible) {
            const manaBar = document.getElementById('manaBar');
            if (manaBar) {
                manaBar.classList.remove('hidden');
            }
        }
    }
    
    hideHUD() {
        this.displayVisible = false;
        // Points display non viene nascosto automaticamente se non è stato mostrato
        // const display = document.getElementById('pointsDisplay');
        // if (display) {
        //     display.classList.add('hidden');
        // }
        
        // Hide mana bar
        const manaBar = document.getElementById('manaBar');
        if (manaBar) {
            manaBar.classList.add('hidden');
        }
    }
    
    toggleHUDVisibility(visible) {
        if (visible === undefined) {
            // Toggle current state
            visible = !this.displayVisible;
        }
        
        if (visible) {
            this.showHUD();
        } else {
            this.hideHUD();
        }
        
        return this.displayVisible;
    }
    
    setHealthBarVisibility(visible) {
        this.healthBarVisible = visible;
        const healthBar = document.getElementById('healthBar');
        if (healthBar) {
            if (visible) {
                healthBar.classList.remove('hidden');
            } else {
                healthBar.classList.add('hidden');
            }
        }
    }
    
    setManaBarVisibility(visible) {
        this.manaBarVisible = visible;
        const manaBar = document.getElementById('manaBar');
        if (manaBar) {
            if (visible) {
                manaBar.classList.remove('hidden');
            } else {
                manaBar.classList.add('hidden');
            }
        }
    }
    
    setTimerVisibility(visible) {
        const timerDisplay = document.getElementById('timerDisplay');
        if (timerDisplay) {
            if (visible) {
                timerDisplay.classList.remove('hidden');
            } else {
                timerDisplay.classList.add('hidden');
            }
        }
    }
    
    // Update HUD classes when display changes
    updateHUDClasses() {
        if (this.displayVisible) {
            this.showHUD();
        } else {
            this.hideHUD();
        }
    }
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    try {
        window.playerPointsDisplay = new PlayerPointsDisplay();
    } catch (error) {
        console.error('Error creating PlayerPointsDisplay instance:', error);
    }
});

// Utility function for resource name
function GetParentResourceName() {
    return 'striano_missions';
}
