let currentType = null;
let currentDistance = null;

function applyMarkerColor(color) {
  const finalColor = color || "#f5a623";

  document.documentElement.style.setProperty("--marker-color", finalColor);

  document.querySelectorAll(".small-image-container").forEach(el => {
    el.style.borderColor = finalColor;
  });

  document.querySelectorAll(".small-arrow").forEach(el => {
    el.style.borderTopColor = finalColor;
  });

  document.querySelectorAll(".checkpoint-divider").forEach(el => {
    el.style.background = finalColor;
    el.style.boxShadow = `0 0 10px ${finalColor}`;
  });

  document.querySelectorAll(".checkpoint-arrow").forEach(el => {
    el.style.borderTopColor = finalColor;
    el.style.filter = `drop-shadow(0 0 16px ${finalColor})`;
  });
}

/*
function animateDistance(newValue, duration = 90) {
  const element =
    currentType === "checkpoint"
      ? document.getElementById("checkpoint-distance-value")
      : document.getElementById("small-distance-value");
  const start = parseFloat(currentDistance);
  const end = parseFloat(newValue);
  const startTime = performance.now();

  function animate(currentTime) {
    const elapsed = currentTime - startTime;
    const t = Math.min(elapsed / duration, 1);
    const easedT = t * t * (3 - 2 * t);
    const value = start + (end - start) * easedT;
    element.textContent = Math.round(value);
    if (t < 1) {
      requestAnimationFrame(animate);
    } else {
      currentDistance = newValue;
    }
  }

  requestAnimationFrame(animate);
}
*/

const resourceName = window.location.hostname;

async function fetchNui(eventName, data = {}) {
  const resp = await fetch(`https://${resourceName}/${eventName}`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json; charset=UTF-8",
    },
    body: JSON.stringify(data),
  });

  const text = await resp.text();

  if (!text || text.length === 0) {
    return {};
  }

  try {
    return JSON.parse(text);
  } catch (e) {
    console.warn("fetchNui JSON parse failed:", eventName, text);
    return {};
  }
}

window.addEventListener("message", (event) => {
  const data = event.data;

  switch (data.action) {
    case "load":
      fetchNui("load", { id: data.id });
      break;

    case "setType":
      document
        .querySelectorAll(".marker-type")
        .forEach((el) => (el.style.display = "none"));

      currentType = data.type;
      const marker = document.getElementById(`marker-${data.type}`);
      if (marker) {
        marker.style.display = "flex";
      }
      break;

    case "setColor":
	  applyMarkerColor(data.color);
	  break;

    case "setImage":
      if (currentType === "small") {
        const smallImage = document.getElementById("small-image");
        const imageContainer = document.querySelector(".small-image-container");
        
        if (data.url) {
          smallImage.src = data.url;
          smallImage.style.display = "block";
          imageContainer.style.display = "flex";
        } else {
          smallImage.style.display = "none";
          imageContainer.style.display = "none";
        }
      } else if (currentType === "checkpoint") {
        const checkpointImage = document.getElementById("checkpoint-image");
        const imageContainer = document.querySelector(
          ".checkpoint-image-container"
        );
        
        if (data.url) {
          checkpointImage.src = data.url;
          imageContainer.style.display = "flex";
        } else {
          imageContainer.style.display = "none";
        }
      }
      break;

    case "setLabel":
	  if (currentType === "checkpoint") {
        document.getElementById("checkpoint-label").textContent =
          data.text || "CHECKPOINT";
      }
      break;
	
	case "setCheckpointId":
	  if (data.hide) {
		  if (currentType === "checkpoint") {
			  document.getElementById("checkpoint-distance").style.display = "none";
		  } else {
			  document.getElementById("small-distance").style.display = "none";
		  }
		  break;
	  }

	  const id = data.id || "0";

	  if (currentType === "checkpoint") {
		  document.getElementById("checkpoint-distance").style.display = "flex";
		  document.getElementById("checkpoint-distance-value").textContent = id;
	  } else {
		  document.getElementById("small-distance").style.display = "flex";
		  document.getElementById("small-distance-value").textContent = id;
	  }

	break;
	
    /*
	case "setDistance":
      const newDist = data.value || "0";
      const duration = data.duration - 10 || 100;
      if (!currentDistance || duration <= 50) {
        currentDistance = newDist;
        if (currentType === "checkpoint") {
          document.getElementById("checkpoint-distance-value").textContent =
            newDist;
        } else {
          document.getElementById("small-distance-value").textContent = newDist;
        }
      } else {
        animateDistance(newDist, data.duration - 10);
      }
    break;
	
    case "showDistance":
      if (currentType === "checkpoint") {
        document.getElementById("checkpoint-distance").style.display = data.show
          ? "flex"
          : "none";
      } else {
        document.getElementById("small-distance").style.display = data.show
          ? "flex"
          : "none";
      }
      break;
	*/
	
    case "hide":
      document
        .querySelectorAll(".marker-type")
        .forEach((el) => (el.style.display = "none"));
      break;

    case "show":
      if (currentType) {
        document.getElementById(`marker-${currentType}`).style.display = "flex";
      }
      break;

    case "reset":
      // Reset all state for DUI pool reuse
      currentType = null;
      currentDistance = null;

      // Hide all markers
      document
        .querySelectorAll(".marker-type")
        .forEach((el) => (el.style.display = "none"));

      // Reset color to default
      applyMarkerColor("#f5a623");

      // Reset checkpoint elements
      document.getElementById("checkpoint-label").textContent = "CHECKPOINT";
      document.getElementById("checkpoint-distance-value").textContent = "0";
      document.querySelector(".checkpoint-image-container").style.display =
        "none";
      document.getElementById("checkpoint-image").src = "";
      document.getElementById("checkpoint-distance").style.display = "flex";

      // Reset small marker elements
      document.getElementById("small-distance-value").textContent = "0";
      document.querySelector(".small-image-container").style.display = "none";
      document.getElementById("small-image").src = "";
      document.getElementById("small-distance").style.display = "flex";
      break;
  }
});















let feed = [];
let display = false;
let entryTimeouts = new Map(); // Map to track individual entry timeouts
let lastFeedHash = ''; // Hash per verificare se il feed è cambiato

window.addEventListener('message', function(event) {
    if (event.data.type === 'updateFeed') {
        // Verifica se il feed è realmente cambiato
        const newFeedHash = JSON.stringify(event.data.feed);
        if (newFeedHash !== lastFeedHash) {
            feed = event.data.feed;
            lastFeedHash = newFeedHash;
            renderFeed();
        }
    } else if (event.data.type === 'toggleDisplay') {
        display = event.data.display;
        toggleFeedDisplay();
        
        // Se il feed è stato attivato automaticamente, mostra un messaggio
        if (display && feed.length > 0) {
            // console.log('Feed attivato automaticamente per mostrare notifiche');
        }
    }
});

function renderFeed() {
    const container = document.getElementById('feed');
    
    // Clear all existing timeouts before updating
    entryTimeouts.forEach(timeout => clearTimeout(timeout));
    entryTimeouts.clear();
    
    container.innerHTML = '';

    // Se non ci sono entry, nascondi il feed
    if (feed.length === 0) {
        container.style.display = 'none';
        return;
    }

    // Mostra il feed se display è true O se ci sono nuove entry (attivazione automatica)
    if (display || feed.length > 0) {
        container.style.display = 'block';
    } else {
        container.style.display = 'none';
        return;
    }

    // Mostra solo le ultime 5 entry nel feed normale
    const recentFeed = feed.slice(-5);
    
    recentFeed.forEach((entry, index) => {
        const entryElement = createFeedEntry(entry);
        container.appendChild(entryElement);

        // Per ora, usa la durata completa per evitare problemi di sincronizzazione
        // Il server si occuperà di rimuovere le entry scadute
        const remainingTime = entry.duration;
        
        // console.log(`Entry ${index}: duration: ${entry.duration}ms, remaining: ${remainingTime}ms`);
        
        // Set timeout to remove this specific entry after its duration
        const timeoutId = setTimeout(() => {
            // console.log(`Removing entry ${index} after timeout`);
            entryElement.classList.add('fade-out');
            setTimeout(() => {
                if (entryElement.parentNode) {
                    entryElement.parentNode.removeChild(entryElement);
                }
                
                // Clean up maps
                entryTimeouts.delete(entryElement);
                
                // Se non ci sono più entry visibili, nascondi il feed
                if (container.children.length === 0) {
                    container.style.display = 'none';
                }
            }, 300);
        }, remainingTime);
        
        // Store the timeout ID
        entryTimeouts.set(entryElement, timeoutId);
        
        // console.log(`Entry ${index} will be removed in ${remainingTime}ms`);
    });
}

function createFeedEntry(entry) {
    const entryElement = document.createElement('div');
    entryElement.className = `feed-entry ${entry.type}`;
    
    let content = '';
    
    if (entry.type === 'kill') {
        // Estrai killer, vittima e arma dal testo
        const parts = entry.text.split(' ha ucciso ');
        if (parts.length === 2) {
            const killer = parts[0];
            const victimWeapon = parts[1].split(' con ');
            if (victimWeapon.length === 2) {
                const victim = victimWeapon[0];
                const weapon = victimWeapon[1];
                
                content = `
                    <span class="killer">${killer}</span> ha ucciso 
                    <span class="victim">${victim}</span> con 
                    <span class="weapon">${weapon}</span>
                `;
            } else {
                content = entry.text;
            }
        } else {
            content = entry.text;
        }
    } else if (entry.type === 'notification') {
        content = `<span class="notification-text">${entry.text}</span>`;
    }
    
    entryElement.innerHTML = content;
    
    return entryElement;
}

function toggleFeedDisplay() {
    const container = document.getElementById('feed-container');
    if (display) {
        container.style.display = 'block';
    } else {
        container.style.display = 'none';
    }
}

// Inizializza
document.addEventListener('DOMContentLoaded', function() {
    display = true; // Mostra feed di default
    toggleFeedDisplay();
    
    // console.log('Killfeed system initialized');
});
