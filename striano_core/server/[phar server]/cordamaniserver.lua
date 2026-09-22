-- ============================================================
--  striano_core - server/[phar server]/cordamaniserver.lua
--  Servidor: algemar / desalgemar jogadores (corda mani = algemas)
-- ============================================================

--- Desalgemar um jogador: dispara o evento cliente para libertar
RegisterServerEvent("fn_cuff_item:uncuff")
AddEventHandler("fn_cuff_item:uncuff", function(targetSrc)
    TriggerClientEvent("fn_cuff_item:forceUncuff", targetSrc)
end)

--- Alguemar um jogador (com suporte opcional a sela de cavalo)
RegisterServerEvent("fn_cuff_item:handcuff")
AddEventHandler("fn_cuff_item:handcuff", function(targetSrc, removeHorseSaddle)
    local src = source
    TriggerClientEvent("fn_cuff_item:handcuff", targetSrc)

    if removeHorseSaddle then
        TriggerEvent("cavallo:toglisella", src, "cuffs", 1)
        TriggerClientEvent("anim:cmd", source, "prova This player with knife can be freed by another player.")
    end
end)
