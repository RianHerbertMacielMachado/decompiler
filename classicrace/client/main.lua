-- ============================================================
--  classicrace - client/main.lua
--  Lógica principal do cliente para o sistema de corridas
-- ============================================================

local inRaceID    = 0   -- ID da corrida em que o jogador está inscrito (0 = nenhuma)
local raceStarted = 0   -- 1 enquanto a corrida está ativa
local isHost      = 0   -- 1 se o jogador é o host da corrida

-- ------------------------------------------------------------
-- Helpers de distância
-- ------------------------------------------------------------

--- Retorna a distância entre o jogador local e um vector3.
function GetDistanceBetween2(targetVec)
    local playerPos = GetEntityCoords(PlayerPedId(), false)
    return #(playerPos - targetVec)
end

--- Retorna a distância entre o jogador local e três coordenadas separadas (x, y, z).
function GetDistanceBetween(x, y, z)
    local playerPos = GetEntityCoords(PlayerPedId(), false)
    local targetPos = vector3(x, y, z)
    return #(playerPos - targetPos)
end

-- ------------------------------------------------------------
-- Carregamento de modelos / dicionários de animação
-- ------------------------------------------------------------

--- Carrega e aguarda um dicionário de animação ficar disponível.
function loadDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(1)
        RequestAnimDict(animDict)
    end
end

--- Converte string ou número para hash de modelo; retorna 0 em caso de falha.
function toModel(model)
    if type(model) == "string" then
        return GetHashKey(model)
    else
        return tonumber(model) or model or 0
    end
end

--- Solicita o carregamento de um modelo e aguarda até estar pronto.
--- Retorna o hash do modelo, ou 0 se não estiver no CD image.
function LoadModel(model)
    model = toModel(model)
    if not IsModelInCdimage(model) then
        return 0
    end
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end
    return model
end

--- Aguarda o carregamento de um hash de modelo via string (usando GetHashKey).
function LoadPropDict(modelName)
    while not HasModelLoaded(GetHashKey(modelName)) do
        RequestModel(GetHashKey(modelName))
        Wait(10)
    end
end

--- Cria um prop e o anexa a um osso específico do jogador.
function AddPropToPlayer(ped, modelName, boneId, offsetX, offsetY, offsetZ, rotX, rotY, rotZ)
    local coords = table.unpack(GetEntityCoords(ped))

    if not HasModelLoaded(modelName) then
        LoadPropDict(modelName)
    end

    local obj = CreateObject(GetHashKey(modelName), coords, offsetY + 0.2, true, true, true)
    AttachEntityToEntity(
        obj, ped,
        GetPedBoneIndex(ped, boneId),
        offsetX, offsetY, offsetZ,
        rotX,    rotY,    rotZ,
        true, true, false, true, 1, true
    )
    SetEntityCollision(obj, false, true)
    return obj
end

-- ------------------------------------------------------------
-- Evento: recurso parado → limpar NPCs
-- ------------------------------------------------------------

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    if NPCfut and #NPCfut > 0 then
        for _, npc in pairs(NPCfut) do
            DeleteEntity(npc.PedID)
        end
    end
end)

-- ------------------------------------------------------------
-- Evento: jogador saiu → notificar servidor
-- ------------------------------------------------------------

AddEventHandler("playerDropped", function(reason)
    if isHost > 0 then
        TriggerServerEvent("corsa:delhostcross", inRaceID)
        TriggerServerEvent("corsa:stopcross",    inRaceID)
    end
end)

-- ------------------------------------------------------------
-- Export: verifica se o jogador está perto de algum NPC de corrida
-- ------------------------------------------------------------

exports("vicinoNPC", function()
    local trovato = false
    for _, npc in pairs(NPCrace) do
        if GetDistanceBetween2(vector3(npc.x, npc.y, npc.z)) < 10.0 then
            trovato = true
        end
    end
    return trovato
end)

-- ------------------------------------------------------------
-- Thread: spawn dos NPCs de corrida (fans + grid girls)
-- ------------------------------------------------------------

Citizen.CreateThread(function()
    -- Spawn NPCs fans
    if NPCrace and #NPCrace > 0 then
        for _, npc in pairs(NPCrace) do
            local modelHash = LoadModel(npc.model)

            local ped = CreatePed(1, modelHash, npc.x, npc.y, npc.z, 0.0, false, false)
            npc.PedID = ped

            SetPedFleeAttributes(ped, 0, 0)
            SetPedDropsWeaponsWhenDead(ped, false)
            SetPedDiesWhenInjured(ped, false)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetPedCanRagdollFromPlayerImpact(ped, false)
            Citizen.Wait(25)
            SetEntityHeading(ped, npc.h)
            SetModelAsNoLongerNeeded(modelHash)

            -- Animação: Fan (palmas raivosas)
            if npc.Fan then
                local dict = "anim@arena@celeb@flat@solo@no_props@"
                RequestAnimDict(dict)
                while not HasAnimDictLoaded(dict) do Wait(0) end
                TaskPlayAnim(ped, dict, "angry_clap_a_player_a", 8.0, 1, -1, 49, 0, false, false, false)
                RemoveAnimDict(dict)
                RemoveAnimSet("angry_clap_a_player_a")
            end

            -- Animação: Fan2 (torcer)
            if npc.Fan2 then
                local dict = "amb@world_human_cheering@male_a"
                RequestAnimDict(dict)
                while not HasAnimDictLoaded(dict) do Wait(0) end
                TaskPlayAnim(ped, dict, "base", 8.0, 1, -1, 49, 0, false, false, false)
                RemoveAnimDict(dict)
                RemoveAnimSet("base")
            end
        end
    end

    -- Spawn das grid girls + blips por corrida
    if RacePos and #RacePos > 0 then
        for raceID, race in pairs(RacePos) do
            -- Blip de mapa (apenas corridas ativas)
            if race.active then
                local blip = AddBlipForCoord(race.startpos.x, race.startpos.y, race.startpos.z)
                SetBlipSprite(blip, race.id)
                SetBlipDisplay(blip, 4)
                SetBlipScale(blip, race.size)
                SetBlipColour(blip, race.colour)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(race.title)
                EndTextCommandSetBlipName(blip)
            end

            -- Grid girl
            local girlModel = LoadModel(race.girlmodel)
            local girl = CreatePed(
                1, girlModel,
                race.girlstart.x, race.girlstart.y, race.girlstart.z,
                race.girlheading,
                false, false
            )
            race.PedID = girl

            SetPedFleeAttributes(girl, 0, 0)
            SetPedDropsWeaponsWhenDead(girl, false)
            SetPedDiesWhenInjured(girl, false)
            SetEntityInvincible(girl, true)
            FreezeEntityPosition(girl, true)
            SetBlockingOfNonTemporaryEvents(girl, true)
            SetPedCanRagdollFromPlayerImpact(girl, false)
            Citizen.Wait(25)
            SetEntityHeading(girl, race.girlheading)
            SetModelAsNoLongerNeeded(girlModel)

            -- Animação idle da grid girl
            local idleDict = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
            RequestAnimDict(idleDict)
            while not HasAnimDictLoaded(idleDict) do Wait(0) end
            TaskPlayAnim(girl, idleDict, "idle_a", 8.0, 1, -1, 49, 0, false, false, false)
            RemoveAnimDict(idleDict)
            RemoveAnimSet("idle_a")
        end
    end
end)

-- ------------------------------------------------------------
-- Verificação de entrada na corrida
-- ------------------------------------------------------------

--- Verifica com o servidor se o jogador pode entrar em uma corrida pelo ID.
function CheckRace(raceID)
    ESX.TriggerServerCallback("corsa:cross", function(alreadyRunning)
        if alreadyRunning == nil then
            inRaceID = raceID
            print("inRace: " .. raceID)

            ESX.TriggerServerCallback("corsa:checkhostcross", function(existingHost)
                if existingHost ~= nil then
                    -- Já existe um host → entrar como participante
                    notify(m.Partecipant)
                    notify(m.WaitHost)
                    if Command3DHead then
                        ExecuteCommand("me ID: ~b~" .. raceID)
                    end
                else
                    -- Nenhum host → tornar-se o host
                    if Command3DHead then
                        ExecuteCommand("me Host ID: ~b~" .. raceID)
                    end
                    TriggerServerEvent("corsa:hostcross", raceID)
                    isHost = raceID
                end
            end, raceID)
        else
            notify(m.BusyRace)
        end
    end, raceID)
end

-- ------------------------------------------------------------
-- Thread: detector de marcador de início de corrida
-- ------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        local playerPed = PlayerPedId()

        for raceID, race in pairs(RacePos) do
            local nearStart = false

            if inRaceID == 0 then
                local distToStart = GetDistanceBetween2(race.startpos)

                if distToStart < 35.0 then
                    nearStart = true
                    MarkerStartRace(race.startpos, race.sizeBlip)

                    if distToStart < race.sizeBlip then
                        -- Mostrar dica de interação
                        if IsPedSittingInAnyVehicle(playerPed) then
                            notify2(m.WaitRace)
                        elseif VehMond then
                            notify2(m.NeedVeh)
                        else
                            notify2(m.WaitRace)
                        end

                        -- Pressionar E (tecla 74) para entrar
                        if IsControlPressed(0, 74) then
                            if IsPedSittingInAnyVehicle(playerPed) then
                                CheckRace(raceID)
                            elseif not VehMond then
                                CheckRace(raceID)
                            end
                            Citizen.Wait(3000)
                        end
                    end
                end
            else
                -- Já inscrito: aguardar com intervalo maior
                if not (nearStart and inRaceID > 0) then
                    Citizen.Wait(2000)
                end
            end
        end
    end
end)

-- ------------------------------------------------------------
-- Evento de rede: corrida iniciada pelo host
-- ------------------------------------------------------------

RegisterNetEvent("corsa:startcross")
AddEventHandler("corsa:startcross", function(raceID)
    -- Animar a grid girl para o início da corrida
    if RacePos and #RacePos > 0 then
        for entryID, race in pairs(RacePos) do
            if entryID == raceID then
                ClearPedTasksImmediately(race.PedID)

                local startDict = "random@street_race"
                RequestAnimDict(startDict)
                while not HasAnimDictLoaded(startDict) do Wait(0) end
                TaskPlayAnim(race.PedID, startDict, "grid_girl_race_start", 8.0, 1, -1, 1, 0, false, false, false)
                RemoveAnimDict(startDict)
                RemoveAnimSet("grid_girl_race_start")
            end
        end
    end

    -- Sequência de contagem regressiva para o jogador inscrito
    if inRaceID == raceID then
        local distToStart = GetDistanceBetween2(RacePos[raceID].startpos)
        if distToStart < 100.0 then
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            FreezeEntityPosition(vehicle, true)
            MsgRaceStartSoon()
            DeleteWaypoint()

            Wait(6500)
            soundtre()
            Wait(1000)
            soundtwo()
            Wait(1000)
            soundone()
            Wait(1000)
            soundgo()

            FreezeEntityPosition(vehicle, false)
            FreezeEntityPosition(PlayerPedId(), false)
            raceStarted = 1
        end
    end

    -- Após a contagem: devolver a grid girl para a animação idle
    Wait(5000)
    if RacePos and #RacePos > 0 then
        for entryID, race in pairs(RacePos) do
            if entryID == raceID then
                ClearPedTasksImmediately(race.PedID)
                Wait(1000)

                local idleDict = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
                RequestAnimDict(idleDict)
                while not HasAnimDictLoaded(idleDict) do Wait(0) end
                TaskPlayAnim(race.PedID, idleDict, "idle_a", 8.0, 1, -1, 49, 0, false, false, false)
                RemoveAnimDict(idleDict)
                RemoveAnimSet("idle_a")
            end
        end
    end
end)

-- ------------------------------------------------------------
-- Evento de rede: resultado da corrida (vencedor anunciado)
-- ------------------------------------------------------------

RegisterNetEvent("corsa:crossvincitore")
AddEventHandler("corsa:crossvincitore", function(winnerMsg, raceID)
    local race       = RacePos[raceID]
    local distToStart = GetDistanceBetween2(vector3(race.startpos.x, race.startpos.y, race.startpos.z))

    -- Mostrar notificação apenas para quem está perto ou é o participante
    if distToStart < 250.0 or inRaceID == raceID then
        notify(winnerMsg)
        if inRaceID == raceID then
            raceStarted = 0
            inRaceID    = 0
        end
    end
end)

-- ------------------------------------------------------------
-- Evento de rede: corrida interrompida pelo host
-- ------------------------------------------------------------

RegisterNetEvent("corsa:stopcross")
AddEventHandler("corsa:stopcross", function(raceID)
    if inRaceID == raceID then
        raceStarted = 0
        isHost      = 0
        inRaceID    = 0
        notify(m.StopFromHost)
    end
end)

-- ------------------------------------------------------------
-- Thread: lógica de checkpoints durante a corrida
-- ------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        local playerPed = PlayerPedId()

        if inRaceID > 0 then
            if raceStarted > 0 then
                local race          = RacePos[inRaceID]
                local currentCP     = race.pp[raceStarted]
                local nextCP        = race.pp[raceStarted + 1]

                if currentCP ~= nil then
                    local distToCP = GetDistanceBetween2(vector3(currentCP.x, currentCP.y, currentCP.z))

                    if distToCP < 300.0 then
                        -- Desenhar marcador vermelho no checkpoint atual
                        MarkerRaceRed(vector3(currentCP.x, currentCP.y, currentCP.z))

                        -- Desenhar marcador branco no próximo checkpoint (se existir)
                        local totalCP = #race.pp
                        if raceStarted < totalCP - 1 and nextCP ~= nil then
                            MarkerRaceWhite(vector3(nextCP.x, nextCP.y, nextCP.z))

                            -- Waypoint automático no próximo checkpoint
                            if not IsWaypointActive() then
                                SetNewWaypoint(nextCP.x, nextCP.y)
                            end
                        end

                        -- Checkpoint atingido
                        if distToCP < race.sizeBlip then
                            raceStarted = raceStarted + 1
                            DeleteWaypoint()
                            SoundTakeMarker()

                            -- Verificar se foi o último checkpoint
                            if raceStarted == totalCP + 1 then
                                MsgRaceComplete()
                                TriggerServerEvent("corsa:crossvincitore", inRaceID)
                                TriggerServerEvent("corsa:delhostcross",   inRaceID)
                                Citizen.Wait(5000)
                            end
                        end
                    end

                    -- Penalidade por sair do veículo (se ativado)
                    if WhenYouFallLose then
                        if not IsPedSittingInAnyVehicle(playerPed) then
                            raceStarted = 0
                            inRaceID    = 0
                            notify(m.OutOfRace)
                        end
                    end
                else
                    -- Sem checkpoint válido → corrida encerrada
                    raceStarted = 0
                    inRaceID    = 0
                    notify(m.OutOfRace)
                end
            end
        else
            Citizen.Wait(1000)
        end
    end
end)
