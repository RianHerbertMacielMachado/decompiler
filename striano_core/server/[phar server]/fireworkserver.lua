-- ============================================================
--  striano_core - server/[phar server]/fireworkserver.lua
--  Servidor: relay de sincronização de fogos de artifício
--  (syncbad = sync broadcast animated display)
-- ============================================================

--- Relay do fogos de artifício: tipo 1
RegisterServerEvent("syncbad1")
AddEventHandler("syncbad1", function(p1, p2, p3)
    TriggerClientEvent("syncbad_cl1", -1, p1, p2, p3)
end)

--- Relay do fogos de artifício: tipo 2
RegisterServerEvent("syncbad2")
AddEventHandler("syncbad2", function(p1, p2, p3)
    TriggerClientEvent("syncbad_cl2", -1, p1, p2, p3)
end)

--- Relay do fogos de artifício: tipo 3
RegisterServerEvent("syncbad3")
AddEventHandler("syncbad3", function(p1, p2, p3)
    TriggerClientEvent("syncbad_cl3", -1, p1, p2, p3)
end)

--- Relay do fogos de artifício: tipo 4
RegisterServerEvent("syncbad4")
AddEventHandler("syncbad4", function(p1, p2, p3)
    TriggerClientEvent("syncbad_cl4", -1, p1, p2, p3)
end)
