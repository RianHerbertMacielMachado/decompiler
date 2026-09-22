-- ============================================================
--  striano_core - server/[phar server]/menupersoserver.lua
--  Servidor: menu pessoal — skin, roupa, reviver, explosões
-- ============================================================

--- Aplicar skin de mulher ao jogador
RegisterServerEvent("sp_menuperso:ApplicaDonna")
AddEventHandler("sp_menuperso:ApplicaDonna", function(skinData, targetSrc)
    local identifier = identOf(targetSrc)
    if not identifier then return end
    SetVarDB(identifier, "skin", skinData)
end)

--- Helper: serializar tabela Lua para string formatada
local function tableToString(t, indent)
    indent = indent or 0
    local padding = string.rep(" ", indent)
    local result  = padding .. "{\r\n"
    indent = indent + 2

    for key, value in pairs(t) do
        result = result .. string.rep(" ", indent)
        if type(key) == "number" then
            result = result .. "[" .. key .. "] = "
        elseif type(key) == "string" then
            result = result .. key .. "= "
        end

        if type(value) == "number" then
            result = result .. value .. ",\r\n"
        elseif type(value) == "string" then
            result = result .. '"' .. value .. '",\r\n'
        elseif type(value) == "table" then
            result = result .. tableToString(value, indent + 2) .. ",\r\n"
        else
            result = result .. '"' .. tostring(value) .. '",\r\n'
        end
    end

    result = result .. string.rep(" ", indent - 2) .. "}"
    return result
end

--- Callback: obter giacca (casaco) do jogador
RegisterServerCallback("sp_menuperso:getGiacca", function(src, cb)
    local identifier = identOf(src)
    if not identifier then
        cb(nil)
        return
    end
    cb(UserData.GetValue(identifier, "giacca"))
end)

--- Colocar jogador no veículo (reviver + teleporte)
RegisterServerEvent("menuperso:putInVehicle")
AddEventHandler("menuperso:putInVehicle", function(targetSrc)
    TriggerClientEvent("esx_ambulancejjj:revive3", targetSrc)
    TriggerClientEvent("menuperso:putInVehicle", targetSrc)
end)

--- Retirar jogador do veículo
RegisterServerEvent("menuperso:OutVehicle")
AddEventHandler("menuperso:OutVehicle", function(targetSrc)
    TriggerClientEvent("menuperso:OutVehicle", targetSrc)
end)

--- Relay de reviver para clientes
RegisterServerEvent("esx_ambulancejjj:revive")
AddEventHandler("esx_ambulancejjj:revive", function(targetSrc)
    TriggerClientEvent("esx_ambulancejjj:revive", targetSrc)
end)

--- Bloquear explosões (anti-griefing)
AddEventHandler("explosionEvent", function(sender, ev)
    CancelEvent()
end)
