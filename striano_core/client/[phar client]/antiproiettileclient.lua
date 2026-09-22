-- ============================================================
--  striano_core - client/[phar client]/antiproiettileclient.lua
--  Usar colete à prova de balas (kevlar)
-- ============================================================

--- Equipar kevlar (colete balistístico)
RegisterNetEvent("useKevlar")
AddEventHandler("useKevlar", function()
    -- Verificar se já tem outfit secundário ativo
    local secondary = exports.striano_core:secondarioattivo()
    if secondary == nil then
        -- Sem outfit secundário: equipar colete normalmente
        ExecuteCommand("e indossa2")
        SetPedArmour(PlayerPedId(), 100)
        TriggerEvent("esx:EditGiubb")
    else
        -- Outfit secundário ativo: informar o jogador
        exports.striano_combat:submexError("Delete first secondary outfit /secno.")
    end
end)
