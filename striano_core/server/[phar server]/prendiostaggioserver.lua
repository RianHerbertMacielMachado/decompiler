-- ============================================================
--  striano_core - server/[phar server]/prendiostaggioserver.lua
--  Servidor: sistema de reféns (prendio ostaggio = preso ostagem)
-- ============================================================

--- Sincronizar a tomada de reféns com todos os clientes
RegisterServerEvent("TakeHostage:sync")
AddEventHandler("TakeHostage:sync", function(target, p1, p2, p3, p4, p5, p6)
    local src = source
    TriggerClientEvent("TakeHostage:syncTarget", target, src, p1, p2, p3, p4, p5, p6)
end)

--- Libertar refém — notificar os clientes envolvidos
RegisterServerEvent("TakeHostage:releaseHostage")
AddEventHandler("TakeHostage:releaseHostage", function(targetSrc)
    local src = source
    TriggerClientEvent("TakeHostage:releaseHostage", targetSrc, src)
end)

--- Parar o sistema de refém (cancelar)
RegisterServerEvent("TakeHostage:stop")
AddEventHandler("TakeHostage:stop", function(targetSrc)
    TriggerClientEvent("TakeHostage:stop", targetSrc)
end)
