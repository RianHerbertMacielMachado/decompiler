-- ============================================================
--  striano_core - server/[phar server]/negoziovestitiserver.lua
--  Servidor: loja de roupas (negozio vestiti = loja de roupas)
-- ============================================================

--- Salvar outfit: verificar limite e repassar ao cliente
RegisterServerEvent("esx_eden_clotheshop:saveOutfit")
AddEventHandler("esx_eden_clotheshop:saveOutfit", function(label, skinData, targetSrc)
    local src = source
    targetSrc = tonumber(targetSrc) or src

    GetPlayerOutfits(targetSrc, function(outfits)
        if not outfits then outfits = {} end

        -- Limitar a 10 outfits por jogador
        if #outfits >= 10 then
            TriggerClientEvent("LimitOutfitMex", targetSrc)
            return
        end

        TriggerClientEvent("salvaNuovoOutfit", targetSrc, label, skinData)
    end)
end)

--- Eliminar outfit pelo índice
RegisterServerEvent("esx_eden_clotheshop:deleteOutfit")
AddEventHandler("esx_eden_clotheshop:deleteOutfit", function(outfitIndex)
    TriggerClientEvent("eliminaOutfit", source, outfitIndex)
end)

--- Renomear outfit
RegisterServerEvent("esx_eden_clotheshop:renameOutfit")
AddEventHandler("esx_eden_clotheshop:renameOutfit", function(outfitIndex, newLabel)
    TriggerClientEvent("rinominaOutfit", source, outfitIndex, newLabel)
end)

--- Vestir outfit pelo índice
RegisterServerEvent("esx_eden_clotheshop:indossaOutfit")
AddEventHandler("esx_eden_clotheshop:indossaOutfit", function(outfitIndex)
    TriggerClientEvent("indossaOutfit", source, outfitIndex)
end)

--- Partilhar outfit com outro jogador
RegisterServerEvent("condividiOutfit")
AddEventHandler("condividiOutfit", function(targetSrc, label, skinData)
    TriggerClientEvent("condividiOutfit", targetSrc, label, skinData)
end)

--- Receber outfit partilhado
RegisterServerEvent("riceviOutfit")
AddEventHandler("riceviOutfit", function(targetSrc, label, skinData)
    TriggerClientEvent("riceviOutfit", targetSrc, label, skinData)
end)

--- Actualizar outfit secundário do jogador
RegisterServerEvent("aggiornaSecondario")
AddEventHandler("aggiornaSecondario", function(skinData)
    TriggerClientEvent("aggiornaSecondario", source, skinData)
end)

--- Callback: obter outfit pelo índice para o cliente
RegisterServerCallback("esx_eden_clotheshop:getPlayerOutfit", function(src, cb, outfitIndex, targetSrc)
    GetPlayerOutfits(targetSrc, function(outfits)
        local skin = nil
        if outfits then
            local idx = tonumber(outfitIndex)
            if idx and outfits[idx] then
                skin = outfits[idx].skin or nil
            end
        end
        cb(skin)
    end)
end)
