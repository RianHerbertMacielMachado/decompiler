-- ============================================================
--  striano_core - server/[phar server]/dragpplserver.lua
--  Servidor: arrastar jogadores (DragPeople / xenos)
-- ============================================================

-- Tabelas de estado: quem está a arrastar quem
local draggers  = {}   -- [draggerSrc] = targetSrc
local draggees  = {}   -- [targetSrc]  = draggerSrc

--- Sincronizar início de arrastar com o alvo
RegisterServerEvent("xenos_DragPeople:sync")
AddEventHandler("xenos_DragPeople:sync", function(targetSrc)
    local src = source
    TriggerClientEvent("xenos_DragPeople:syncTarget", targetSrc, src)
    draggers[src]       = targetSrc
    draggees[targetSrc] = src
end)

--- Sincronizar arrastar sozinho (sem alvo específico)
RegisterServerEvent("xenos_DragPeople:syncSOLO")
AddEventHandler("xenos_DragPeople:syncSOLO", function(targetSrc)
    TriggerClientEvent("xenos_DragPeople:syncTargetSOLO", targetSrc)
end)

--- Parar de arrastar
RegisterServerEvent("xenos_DragPeople:stop")
AddEventHandler("xenos_DragPeople:stop", function(targetSrc)
    local src = source
    if draggers[src] then
        TriggerClientEvent("xenos_DragPeople:cl_stop", targetSrc, src)
        draggers[src]       = nil
        draggees[targetSrc] = nil
    end
end)

--- Sincronizar posição durante o arrastar
RegisterNetEvent("updateTrascina")
AddEventHandler("updateTrascina", function(p1, p2, p3, p4, p5)
    TriggerClientEvent("updateTrascina", -1, p1, p2, p3, p4, p5)
end)

--- Limpar estado quando um jogador sai
AddEventHandler("playerDropped", function()
    local src = source
    draggers[src] = nil
    draggees[src] = nil
end)
