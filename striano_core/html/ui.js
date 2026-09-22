var lastInfo;
var carMenuOpen = false;
var safeModeData = {
    enabled: true,
    active: false,
    endsAt: 9999999999
};

// =========================
// UTILS
// =========================
function postNui(name, data) {
    $.post(`https://${GetParentResourceName()}/${name}`, JSON.stringify(data || {}));
}

function setText(id, value) {
    const el = document.getElementById(id);
    if (el) el.innerText = value;
}

function setDisplay(id, display) {
    const el = document.getElementById(id);
    if (el) el.style.display = display;
}

function formatWithZero(n) {
    return n < 10 ? "0" + n : n;
}

function formatTimer(seconds) {
    seconds = Math.max(0, Math.floor(seconds || 0));

    const m = Math.floor(seconds / 60);
    const s = seconds % 60;

    return formatWithZero(m) + ":" + formatWithZero(s);
}

function updateSafeModeHud() {
    const el = document.getElementById("safeModeTimer");
    if (!el) return;

    const now = Math.floor(Date.now() / 1000);
    let left = 0;

    if (safeModeData.endsAt > 0) {
        left = Math.max(0, safeModeData.endsAt - now);
    }

    el.style.display = "inline";

    if (safeModeData.active) {
        el.innerText = "Night Fog ends in: " + formatTimer(left);
    } else {
        el.innerText = "Night Fog comes in: " + formatTimer(left);
    }
}

// =========================
// CLOCK + PLAYER ID
// =========================
$(document).ready(function () {
    $("#carmenu").hide();
    $("#panel").hide();

    setInterval(() => {
        const d = new Date();
        $("#clockDate").html(
			formatWithZero(d.getHours()) + ":" +
			formatWithZero(d.getMinutes()) + " " +
			formatWithZero(d.getDate()) + "/" +
			formatWithZero(d.getMonth() + 1)
		);
    }, 1000);
	
	setInterval(() => {
        updateSafeModeHud();
    }, 250);
});

// =========================
// GLOBAL MESSAGE LISTENER
// =========================
window.addEventListener("message", function (event) {
    const data = event.data || {};
	// SAFE MODE
	if (data.action === "safeModeTimer") {
        safeModeData.enabled = data.enabled === true;
        safeModeData.active = data.active === true;
        safeModeData.endsAt = Math.floor(Date.now() / 1000) + Math.floor(data.seconds || 0);

        updateSafeModeHud();
    }
    
	// HUD BASE
    if (data.action === "toggleWatermark") {
		if (data.show) {
			$("#text").show();
			$("#info").show();
		} else {
			$("#text").hide();
			$("#info").hide();
		}
	}

    if (data.action === "updatePlayerId") {
        $("#playerId").html(" " + data.playerId + " ");
    }

    // BOX CHAT
    handleBoxChatMessage(data);

    // HUD STATUS / VEHICLE
    if (data.action === "updateVehicleHud") {
        updateVehicleHud(data);
    } else if (data.action === "updateStatusHud") {
        updateStatusHud(data);
    } else if (data.action === "toggleHud") {
        toggleHud(data.state);
    } else if (data.action === "showVehicleHud" || data.action === "hideVehicleHud") {
        showHideVehicleHud(data.action);
    }

    // CAR MENU
    handleCarMenuMessage(data);
});

// =========================
// SOD BOX CHAT
// =========================
var chatHistory = [];
var chatHistoryIndex = 0;
var totmex = 0;

function displayBoxChat(bool) {
    if (bool) {
        $("#panel").show();
        $("#sod_boxchat_input").val("");
        $("#sod_boxchat_input").focus();
    } else {
        $("#panel").hide();
    }
}

function handleBoxChatMessage(data) {
    if (data.action === "clear") {
        $("#sod_boxchat_input").val("");
    }

    if (data.action === "range") {
        setText("rangeDisplay", data.status || "");
    }

    if (data.action === "newNote") {
        totmex++;

        if (totmex > 11) {
            $(".noteContainer").children().last().remove();
            totmex--;
        }

        let cA = data.color || { x: 255, y: 255, z: 255, w: 1 };
        let cB = data.colorB || { x: 0, y: 0, z: 0, w: 0.45 };

        const content = $(
            '<div class="container-desc" style="display:none; background: rgba(' +
            cB.x + "," + cB.y + "," + cB.z + "," + cB.w +
            ') !important; color: rgba(' +
            cA.x + "," + cA.y + "," + cA.z + "," + cA.w +
            ') !important;"><div class="text">' +
            data.text +
            "</div></div>"
        );

        $(".noteContainer").prepend(content);
        $(content).fadeIn(500);
    }

    if (data.action === "removeNote") {
        if (totmex > 0) {
            $(".noteContainer").children().last().remove();
            totmex--;
        }
    }

    if (data.type === "ui") {
        displayBoxChat(data.status);
    }
}

// =========================
// KEYBOARD GLOBAL
// =========================

// CYLEX - intercetta ESC prima di tutti gli altri listener
// ESC GLOBALE - intercetta prima di tutti gli altri listener
document.addEventListener("keydown", function (data) {
	if (data.key!=="Escape" && data.code!=="Escape" && data.keyCode!==27 && data.which!==27) return;

	// CYLEX
	if (carMenuOpen) {
		data.preventDefault();
		data.stopPropagation();
		data.stopImmediatePropagation();

		carMenuOpen=false;

		const carmenu=document.getElementById("carmenu");
		if (carmenu) carmenu.style.setProperty("display","none","important");

		postNui("escape",{});
		return false;
	}

	// CHAT
	const panel=document.getElementById("panel");

	if (panel && window.getComputedStyle(panel).display!=="none") {
		data.preventDefault();
		data.stopPropagation();
		data.stopImmediatePropagation();

		panel.style.setProperty("display","none","important");

		const input=document.getElementById("sod_boxchat_input");
		if (input) input.blur();

		postNui("exit",{});
		return false;
	}
},true);


// CHAT + ALTRI CONTROLLI
document.addEventListener("keydown", function (data) {

    // Se sto scrivendo in INPUT/TEXTAREA, Backspace deve SOLO cancellare
    if (
        data.code === "Backspace" &&
        (
            data.target.tagName === "INPUT" ||
            data.target.tagName === "TEXTAREA" ||
            data.target.isContentEditable
        )
    ) {
        return;
    }

    // Se Cylex è aperto non facciamo gestire
    // i tasti alla chat
    if (carMenuOpen) {
        return;
    }

    const boxAperto = $("#panel").is(":visible");

    // =========================
	// ESC / BACKSPACE CHAT
	// =========================

	// BACKSPACE:
	// - se la chat è aperta -> deve cancellare normalmente il testo
	// - se la chat è chiusa -> mantiene il vecchio comportamento sulle note
	if (data.code === "Backspace") {

		if (boxAperto) {
			return; // NON chiudere NUI, lascia lavorare normalmente l'input
		}

		if (totmex > 0) {
			$(".noteContainer")
				.children()
				.last()
				.remove();

			totmex--;
		}

		postNui("exit", {});
		return;
	}


    // =========================
    // ENTER CHAT
    // =========================

    if (
        data.code === "Enter" ||
        data.code === "NumpadEnter"
    ) {

        let inputValue = $("#sod_boxchat_input").val();

        if (inputValue) {

            chatHistory.push(inputValue);
            chatHistoryIndex = chatHistory.length;

            postNui("main", {
                text: inputValue
            });

            $("#sod_boxchat_input").val("");
        }

        return;
    }


    // =========================
    // HISTORY UP
    // =========================

    if (data.code === "ArrowUp") {

        chatHistoryIndex--;

        if (chatHistoryIndex < 0) {
            chatHistoryIndex = 0;
        }

        $("#sod_boxchat_input").val(
            chatHistory[chatHistoryIndex] || ""
        );

        return;
    }


    // =========================
    // HISTORY DOWN
    // =========================

    if (data.code === "ArrowDown") {

        chatHistoryIndex++;

        if (chatHistoryIndex > chatHistory.length - 1) {

            chatHistoryIndex = chatHistory.length;

            $("#sod_boxchat_input").val("");

            return;
        }

        $("#sod_boxchat_input").val(
            chatHistory[chatHistoryIndex] || ""
        );
    }

});

// =========================
// BUTTONS BOX CHAT
// =========================
$(document).on("click", "#close", function () {
	$("#panel").hide();
	$("#sod_boxchat_input").blur();
	postNui("exit", {});
});

$(document).on("click", "#submit", function () {
    let inputValue = $("#sod_boxchat_input").val();

    if (!inputValue) return;

    postNui("main", { text: inputValue });
    $("#sod_boxchat_input").val("");
});

// =========================
// SOD HUD
// =========================
function updateVehicleHud(data) {
    setText("fuel-text", `${Math.floor(data.fuel || 0)}%`);
    setText("speed-text", `${Math.floor(data.speed || 0).toString().padStart(3, "0")} kmh`);
    setText("engine-text", `${data.engineHealth || 0}`);

    const transmissionText = document.getElementById("transmission-text");
    if (transmissionText) {
        transmissionText.innerText = ` ${data.gear || "N"}`;
        transmissionText.classList.remove("neutral", "reverse");

        if (data.gear === "N") {
            transmissionText.classList.add("neutral");
        } else if (data.gear === "R") {
            transmissionText.classList.add("reverse");
        }
    }
}

function updateStatusHud(data) {
    setText("health-text", data.health ?? 0);
    setText("hunger-text", data.hunger ?? 0);
    setText("thirst-text", data.thirst ?? 0);
    setText("igiene-text", data.igiene ?? 0);
    setText("playeriddi-text", data.playeriddi ?? 0);
    setText("stress-text", data.stress ?? 0);

    const armor = document.getElementById("armor");
    if (armor) armor.style.display = data.armor ? "flex" : "none";
    setText("armor-text", data.armor || "");

    const stamina = document.getElementById("stamina");
    if (stamina) stamina.style.display = data.stamina < 100 ? "flex" : "none";
    setText("stamina-text", data.stamina || "");

    const oxygen = document.getElementById("oxygen");
    if (oxygen) oxygen.style.display = data.oxygen < 100 ? "flex" : "none";
    setText("oxygen-text", data.oxygen || "");
}

function toggleHud(state) {
    const el = document.querySelector(".status-container");
    if (el) el.style.display = state ? "flex" : "none";
}

function showHideVehicleHud(action) {
    const el = document.querySelector(".speed-display");
    if (el) el.style.display = action === "showVehicleHud" ? "block" : "none";
}

// =========================
// CYLEX CAR MENU
// =========================
function checkElement(settings, element, settingName) {
    if (settings[settingName] === true) {
        $(element).parent().addClass("active");
    } else {
        $(element).parent().removeClass("active");
    }
}

function checkSeat(settings, element, settingName) {
    var parent = $(element).parent();

    parent.removeClass("disabled");
    parent.removeClass("active");

    if (settings[settingName] === parseInt($(element).attr("value"))) {
        parent.addClass("active");
    } else if (settings[settingName] === true) {
        return;
    } else {
        parent.addClass("active");
        parent.addClass("disabled");
    }
}

function handleCarMenuMessage(data) {
    if (data.type === "enablecarmenu") {

		// console.log("CYLEX MESSAGE:", data.enable);

		carMenuOpen = data.enable === true;

		const menu = document.getElementById("carmenu");

		// console.log("CYLEX ELEMENT:", menu);

		if (data.enable === true) {

			if (menu) {
				menu.style.display = "block";
			}

		} else {

			// console.log("CHIUDO CYLEX");

			if (menu) {
				menu.style.setProperty("display", "none", "important");
			}
		}

		return;
	}

    if (data.type === "refreshcarmenu") {
        const settings = data.settings || {};

        $(".seat").each(function (i, v) {
            var val = parseInt($(v).attr("value"));

            if (val === -1) checkSeat(settings, $(v), "seat1");
            if (val === 0) checkSeat(settings, $(v), "seat2");
            if (val === 1) checkSeat(settings, $(v), "seat3");
            if (val === 2) checkSeat(settings, $(v), "seat4");
        });

        $(".door").each(function (i, v) {
            $(v).parent().removeClass("disabled");

            var val = parseInt($(v).attr("value"));

            if (val === 0) checkElement(settings, $(v), "door0");
            if (val === 1) checkElement(settings, $(v), "door1");
            if (val === 2) checkElement(settings, $(v), "door2");
            if (val === 3) checkElement(settings, $(v), "door3");
            if (val === 4) checkElement(settings, $(v), "hood");
            if (val === 5) checkElement(settings, $(v), "trunk");
        });

        $(".window").each(function (i, v) {
            var val = parseInt($(v).attr("value"));

            if (val === 0) checkElement(settings, $(v), "windowr1");
            if (val === 1) checkElement(settings, $(v), "windowl1");
            if (val === 2) checkElement(settings, $(v), "windowr2");
            if (val === 3) checkElement(settings, $(v), "windowl2");
        });

        $(".engine").parent().toggleClass("active", settings.engine === true);
        $(".lock").parent().toggleClass("active", settings.lock === true);
        $(".anchor").parent().toggleClass("active", settings.anchor === true);
    }
}

// CLICK CAR MENU
$(document).on("click", ".door", function () {
    postNui("openDoor", {
        doorIndex: $(this).attr("value")
    });
});

$(document).on("click", ".seat", function () {
    postNui("switchSeat", {
        seatIndex: $(this).attr("value")
    });
});

$(document).on("click", ".window", function () {
    postNui("togglewindow", {
        windowIndex: $(this).attr("value")
    });
});

$(document).on("click", ".engine", function () {
    if ($(this).parent().hasClass("disabled")) return;
    postNui("toggleengine", {});
});

$(document).on("click", ".lock", function () {
    if ($(this).parent().hasClass("disabled")) return;
    postNui("togglelock", {});
});

$(document).on("click", ".anchor", function () {
    if ($(this).parent().hasClass("disabled")) return;
    postNui("usaAnchor", {});
});








const copyToClipboard = str => {
    const el = document.createElement('textarea');
    el.value = str;
    document.body.appendChild(el);
    el.select();
    document.execCommand('copy');
    document.body.removeChild(el);
 };

window.addEventListener('message', (event) => {
    if (event.data.type === 'clipboard') {
        copyToClipboard(event.data.data);
    }
});