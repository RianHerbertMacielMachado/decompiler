-- ============================================================
--  classicrace - server/main.lua
--  Lógica de servidor para o sistema de corridas
-- ============================================================

-- Tabelas de estado das corridas
HostCross     = {}   -- [raceID] = identifier do host
CorsaCross    = {}   -- [raceID] = 1 enquanto a corrida está ativa
VincitoreCross = {}  -- [raceID] = 1 após um vencedor ser declarado

-- ------------------------------------------------------------
-- Evento: cliente chegou em primeiro (vencedor)
-- ------------------------------------------------------------

RegisterNetEvent("corsa:crossvincitore")
AddEventHandler("corsa:crossvincitore", function(raceID)
    local src = source

    -- Ignorar se já há um vencedor registrado para esta corrida
    if VincitoreCross[raceID] ~= nil then return end

    VincitoreCross[raceID] = 1

    -- Montar mensagem com o nome do vencedor
    local identity    = getIdentity(src)
    local winnerName  = identity.firstname .. " " .. identity.lastname
    local winnerMsg   = m.WinnerIs .. winnerName

    -- Transmitir para todos os clientes
    TriggerClientEvent("corsa:crossvincitore", -1, winnerMsg, raceID)

    Wait(5000)

    -- Limpar estado da corrida
    VincitoreCross[raceID] = nil
    CorsaCross[raceID]     = nil
end)

-- ------------------------------------------------------------
-- Evento: corrida encerrada pelo host ou pelo sistema
-- ------------------------------------------------------------

RegisterNetEvent("corsa:stopcross")
AddEventHandler("corsa:stopcross", function()
    TriggerClientEvent("corsa:stopcross", -1)
end)

-- ------------------------------------------------------------
-- Callback: verificar se uma corrida já está em andamento
-- Retorna o estado atual de CorsaCross[raceID] (nil = livre)
-- ------------------------------------------------------------

ESX.RegisterServerCallback("corsa:cross", function(source, cb, raceID)
    cb(CorsaCross[raceID])
end)

-- ------------------------------------------------------------
-- Callback: verificar se já existe um host para uma corrida
-- Retorna o identifier do host, ou nil se não houver
-- ------------------------------------------------------------

ESX.RegisterServerCallback("corsa:checkhostcross", function(source, cb, raceID)
    cb(HostCross[raceID])
end)

-- ------------------------------------------------------------
-- Evento: registrar o jogador como host de uma corrida
-- ------------------------------------------------------------

RegisterNetEvent("corsa:hostcross")
AddEventHandler("corsa:hostcross", function(raceID)
    local src    = source
    local player = ESX.GetPlayerFromId(src)

    HostCross[raceID] = player.identifier

    TriggerClientEvent("esx:showNotification", player.source, m.YouHost)
    TriggerClientEvent("esx:showNotification", player.source, m.RaceID .. raceID)
end)

-- ------------------------------------------------------------
-- Evento: remover o host de uma corrida (ao sair/terminar)
-- ------------------------------------------------------------

RegisterNetEvent("corsa:delhostcross")
AddEventHandler("corsa:delhostcross", function(raceID)
    HostCross[raceID] = nil
end)

-- ------------------------------------------------------------
-- Comando: iniciar uma corrida  (/startrace <ID>)
-- ------------------------------------------------------------

RegisterCommand(StartRaceCommand, function(src, args)
    local raceID = args[1]

    -- Validar argumento
    if raceID == nil then
        TriggerClientEvent("esx:showNotification", src, m.InsertIDRace)
        return
    end

    raceID = tonumber(raceID)
    local player = ESX.GetPlayerFromId(src)

    -- Verificar se existe host registrado para essa corrida
    if HostCross[raceID] == nil then
        TriggerClientEvent("esx:showNotification", player.source, m.NoRaceAv)
        return
    end

    -- Verificar se quem executa o comando é o host
    if HostCross[raceID] ~= player.identifier then
        TriggerClientEvent("esx:showNotification", player.source, m.YouNotHost)
        return
    end

    -- Verificar se a corrida já está em andamento
    if CorsaCross[raceID] == 1 then
        TriggerClientEvent("esx:showNotification", player.source, m.AlredyRace)
        return
    end

    -- Iniciar a corrida
    CorsaCross[raceID] = 1
    TriggerClientEvent("corsa:startcross", -1, raceID)
end)

-- ------------------------------------------------------------
-- Comando: parar uma corrida  (/stoprace <ID>)
-- ------------------------------------------------------------

RegisterCommand(StopRaceCommand, function(src, args)
    local raceID = args[1]

    -- Validar argumento
    if raceID == nil then
        TriggerClientEvent("esx:showNotification", src, m.InsertIDRace)
        return
    end

    raceID = tonumber(raceID)
    local player = ESX.GetPlayerFromId(src)

    -- Verificar se existe host registrado
    if HostCross[raceID] == nil then
        TriggerClientEvent("esx:showNotification", player.source, m.NoRaceAv)
        return
    end

    -- Verificar se é o host
    if HostCross[raceID] ~= player.identifier then
        TriggerClientEvent("esx:showNotification", player.source, m.YouNotHost)
        return
    end

    -- Verificar se há corrida ativa para parar
    if CorsaCross[raceID] == nil then
        TriggerClientEvent("esx:showNotification", player.source, m.AlredyRace)
        return
    end

    -- Parar a corrida e limpar estado
    CorsaCross[raceID] = nil
    HostCross[raceID]  = nil
    TriggerClientEvent("corsa:stopcross", -1, raceID)
end)
