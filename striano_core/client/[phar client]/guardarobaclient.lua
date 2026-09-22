-- ============================================================
--  striano_core - client/[phar client]/guardarobaclient.lua
--  Guardaroba: salvar / limitar outfits do jogador
-- ============================================================

--- Salvar novo outfit com nome e dados de skin
RegisterNetEvent("salvaNuovoOutfit")
AddEventHandler("salvaNuovoOutfit", function(label, skinData)
    local outfits = {}

    TriggerServerCallback("getPlayerOutfits", function(existing)
        -- Garantir que a lista existe
        if existing ~= nil and #existing ~= 0 then
            outfits = existing
        else
            outfits = {}
        end

        -- Adicionar o novo outfit
        table.insert(outfits, { label = label, skin = skinData })

        -- Persistir no servidor
        TriggerServerEvent("updateOutfits", outfits)
    end, GetPlayerServerId(PlayerId()))
end)

--- Notificar o jogador que atingiu o limite de outfits
RegisterNetEvent("LimitOutfitMex")
AddEventHandler("LimitOutfitMex", function()
    exports.striano_combat:submex("You reach the limit of outfit.")
end)
