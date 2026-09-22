-- myskinpedserver.lua
-- Server-side handler for custom player ped (model) system.
-- Manages saving/loading custom ped models per player identifier,
-- and syncing the applied ped to the client via no1-playerped events.

--- Save a ped model to the player's database entry.
--- @param identifier string  Player identifier
--- @param pedModel string    Ped model name (or "none")
--- @return boolean           false if identifier is nil
local function savePedToDB(identifier, pedModel)
    if not identifier then
        return false
    end
    return SetVarDB(identifier, "ped", pedModel)
end

-- ─── tornaUmano (revert to human / set ped) ───────────────────────────────
RegisterNetEvent("tornaUmano")
AddEventHandler("tornaUmano", function(pedModel, targetId)
    local model = pedModel or "none"
    if not pedModel then
        model = "none"
    end

    local identifier = identOf(targetId)
    if not identifier then
        print("^1[tornaUmano]^7 Identifier not found for ID:", targetId)
        return
    end

    savePedToDB(identifier, model)

    if model == "none" then
        TriggerClientEvent("no1-playerped:client:ResetPlayerPed", targetId)
    else
        TriggerClientEvent("no1-playerped:client:SetPlayerPed", targetId, model)
    end
end)

-- ─── myskinped:applyPed ───────────────────────────────────────────────────
-- Apply a specific ped model to a target player (called by another server resource).
RegisterNetEvent("myskinped:applyPed")
AddEventHandler("myskinped:applyPed", function(pedModel, targetId)
    TriggerClientEvent("no1-playerped:client:SetPlayerPed", targetId, pedModel)
end)

-- ─── myskinped:resetPed ───────────────────────────────────────────────────
-- Reset a target player's ped back to their default.
RegisterNetEvent("myskinped:resetPed")
AddEventHandler("myskinped:resetPed", function(targetId)
    TriggerClientEvent("no1-playerped:client:ResetPlayerPed", targetId)
end)

-- ─── /setped [id] [pedModel] (admin command) ─────────────────────────────
RegisterCommand("setped", function(source, args)
    if not exports.striano_core:IsAdmin(source) then
        return
    end

    local targetId = tonumber(args[1])
    if not targetId or not GetPlayerName(targetId) then
        return
    end

    local pedModel = tostring(args[2] or "")
    if pedModel == "" then
        return
    end

    local identifier = identOf(targetId)
    if not identifier then
        return
    end

    -- Treat freemode/none/nessuno as a reset to default appearance
    if pedModel == "mp_m_freemode_01"
    or pedModel == "mp_f_freemode_01"
    or pedModel == "none"
    or pedModel == "no"
    or pedModel == "nessuno" then
        savePedToDB(identifier, "none")
        TriggerClientEvent("no1-playerped:client:ResetPlayerPed", targetId)
    else
        savePedToDB(identifier, pedModel)
        TriggerClientEvent("no1-playerped:client:SetPlayerPed", targetId, pedModel)
    end
end)

-- ─── /editped [id] (admin command) ───────────────────────────────────────
-- Open the ped skin editor for a target player.
RegisterCommand("editped", function(source, args)
    if not exports.striano_core:IsAdmin(source) then
        return
    end

    local targetId = tonumber(args[1])
    if not targetId or not GetPlayerName(targetId) then
        return
    end

    TriggerClientEvent("no1-playerped:client:ModificaSkin", targetId)
end)

-- ─── no1-playerped:server:GetPlayerPed (server callback) ─────────────────
-- Returns the stored ped model for the requesting player.
RegisterServerCallback("no1-playerped:server:GetPlayerPed", function(source, cb)
    local identifier = identOf(source)
    if not identifier then
        cb(nil)
        return
    end
    cb(UserData.GetValue(identifier, "ped"))
end)

-- ─── myskinped:updatePlayerSkin ──────────────────────────────────────────
-- Player reports their current MySkinPed skin data; store it.
RegisterNetEvent("myskinped:updatePlayerSkin")
AddEventHandler("myskinped:updatePlayerSkin", function(skinData)
    local identifier = identOf(source)
    if not identifier then
        return
    end
    SetVarDB(identifier, "myskinped", skinData)
end)

-- ─── myskinped:resetPlayerSkin ───────────────────────────────────────────
-- Reset a player's MySkinPed skin data.
RegisterNetEvent("myskinped:resetPlayerSkin")
AddEventHandler("myskinped:resetPlayerSkin", function(targetId)
    local identifier = identOf(targetId)
    if not identifier then
        return
    end
    SetVarDB(identifier, "myskinped", "none")
end)

-- ─── myskinped:GETSKIN (server callback) ─────────────────────────────────
-- Returns the stored MySkinPed skin data for the requesting player.
RegisterServerCallback("myskinped:GETSKIN", function(source, cb)
    local identifier = identOf(source)
    if not identifier then
        cb(nil)
        return
    end
    cb(UserData.GetValue(identifier, "myskinped"))
end)
