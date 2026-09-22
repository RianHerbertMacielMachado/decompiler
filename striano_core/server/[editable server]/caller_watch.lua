-- SCRIPT CHIAMATE TRA GIOCATORI!
local Chiamate = {}
local NumeriOccupati = {}

RegisterServerEvent('FineChiamataIDWatch')
AddEventHandler('FineChiamataIDWatch', function(PL, callid)
	if Chiamate[callid] ~= nil and Chiamate[callid].chiamante ~= nil then 
		TriggerClientEvent("AvvisoChiamataStaccataIDWatch", Chiamate[callid].chiamante)
		closeCall(PL, Chiamate[callid].numero)
	end
end)

RegisterServerEvent('AvvisoChiamataStaccataWatch')
AddEventHandler('AvvisoChiamataStaccataWatch', function(PL, callID)
	closeCall(PL, callID)
	TriggerClientEvent("AvvisoChiamataStaccataWatch", -1, PL, callID)
end)

function closeCall(PL, numero)
	local esiste = 0
	for i = 1, #Chiamate, 1 do
		if Chiamate[i].numero == numero then 
			esiste = i
			break
		end
	end
	if esiste > 0 then 
		print("Il giocatore " .. PL .. " ha chiuso la chiamata alla SIM ("..numero..")")
		exports["pma-voice"]:setPlayerCall(PL, 0)
		if Chiamate[esiste].rispondente ~= nil and Chiamate[esiste].rispondente > 0 then exports["pma-voice"]:setPlayerCall(Chiamate[esiste].rispondente, 0) end
		TriggerClientEvent("chiudiChiamataIDWatch", -1, esiste)
		NumeriOccupati[esiste] = nil
		table.remove(Chiamate, esiste)
		if #NumeriOccupati == 0 then NumeriOccupati = {} end
	else
		print("Il giocatore " .. PL .. " non ha trovato la chiamata attiva, fine chiamata.")
		exports["pma-voice"]:setPlayerCall(PL, 0)
	end
end

RegisterServerEvent('IniziaChiamataWatch')
AddEventHandler('IniziaChiamataWatch', function(PL, numeroCheVoglioChiamare, numChiamante)
	startCall(PL, numeroCheVoglioChiamare, numChiamante)
end)
function startCall(PL, numeroCheVoglioChiamare, numChiamante)
	local numero = numeroCheVoglioChiamare
	local esiste = 0
	for i = 1, #Chiamate, 1 do
		print("Chiamata attiva: " .. tostring(Chiamate[i].numero) .. " " .. tostring(numero))
		if tostring(Chiamate[i].numero) == tostring(numero) then 
			esiste = i
			break
		end
	end
	if esiste == 0 then 
		local idChiamata = #Chiamate+1
		Chiamate[idChiamata] = {}
		local buf = {
			chiamante=PL,
			rispondente=0,
			numero=numero
		}
		Chiamate[idChiamata] = buf
		print("Aggiunta una nuova chiamata ["..idChiamata.."] in attesa " .. numero .. " da numero " .. numChiamante)
		exports["pma-voice"]:setPlayerCall(PL, idChiamata)
		TriggerClientEvent("chiamaNumeroWatch", -1, PL, numero, numChiamante, idChiamata)
		TriggerClientEvent("getbackIDChiamataWatch", PL, idChiamata)
		NumeriOccupati[idChiamata] = true
		CreateThread(function() -- Annullo la chiamata in utomatico dopo tot secondi?
			local secondiEnd = 30
			while Chiamate[idChiamata] ~= nil and Chiamate[idChiamata].rispondente == 0 do 
				if Chiamate[idChiamata].rispondente > 0 then print("Fermo il timer perchè il giocatore ha risposto prima.") return end
				if secondiEnd > 0 then
					secondiEnd = secondiEnd - 1
				else
					closeCall(PL, Chiamate[idChiamata].numero)
					print("Chiamata " .. idChiamata .. " senza una risposta in tempo, annullata.")
					return
				end
				Wait(1000) 
			end
		end)
	else			
		TriggerClientEvent("NumeroOccupatoWatch", PL)
	end
end

RegisterServerEvent('RispondiChiamataWatch')
AddEventHandler('RispondiChiamataWatch', function(PL, idChiamata)
	if Chiamate[idChiamata] == nil then print("La chiamata " .. idChiamata .. " non esiste più!") return end
	print("Giocatore " .. PL .. " si connette alla chiamata " .. idChiamata)
	TriggerClientEvent("haRispostoWatch", Chiamate[idChiamata].chiamante)
	Chiamate[idChiamata].rispondente = PL
	exports["pma-voice"]:setPlayerCall(PL, idChiamata)
end)