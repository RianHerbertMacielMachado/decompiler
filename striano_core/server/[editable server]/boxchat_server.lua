RegisterNetEvent("sod_boxchat:sendNote")
AddEventHandler("sod_boxchat:sendNote", function(Players, text, c1, c2, soundPoker)
	local src = source
    TriggerClientEvent("confirmSend", src)
    if Players and #Players > 0 then
        for i = 1, #Players do
            if Players[i] then
				TriggerClientEvent("addNote", Players[i], src .. ": " .. text, c1, c2, soundPoker) -- TriggerClientEvent("addNote", Players[i], GetPlayerName(Players[i]) .. ": " .. text)
            end
        end
		TriggerClientEvent("addNote", src, "Tu: " .. text, c1, c2, soundPoker)
	else
		TriggerClientEvent("addNote", src, "Tu: " .. text, c1, c2, soundPoker)
    end
end)