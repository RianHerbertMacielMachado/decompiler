usingMegaphone = false -- NOT TOUCH THIS
soundDistanceMeg = 50.0 -- DISTANCE!
RegisterCommand('megafono', function(source, args) -- THIS IS JUST A TEST COMMAND PLEASE DISABLE IN PUBLIC PROJECT!
	if usingMegaphone then DisableMegSub() return end
	TriggerEvent("AttivaMegafono")
	-- FOR ITEMS: TriggerClientEvent("AttivaMegafono", source)
end)