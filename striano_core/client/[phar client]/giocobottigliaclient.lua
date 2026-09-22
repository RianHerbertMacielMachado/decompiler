-- ============================================================
--  striano_core - client/[phar client]/giocobottigliaclient.lua
--  Jogo da garrafa (Truth or Dare) — girar a garrafa
-- ============================================================

local bottleObject  = nil    -- handle do objeto garrafa
local rotationTicks = 0      -- contador de ticks de rotação
local spinSpeed     = 0.0    -- velocidade atual de giro

--- Comando /bottlegame — criar e girar a garrafa à frente do jogador
RegisterCommand("bottlegame", function()
    local spinDuration = math.random(1000, 3700)
    local ped          = PlayerPedId()
    local pos          = GetEntityCoords(ped)
    local forward      = GetEntityForwardVector(ped)
    local spawnPos     = pos + forward * 1.5
    local x, y         = table.unpack(spawnPos)

    massimale = math.random(10.0, 20.0)

    ExecuteCommand("e pickup")
    Wait(500)
    exports.striano_combat:submex("Delete with ~h~/delbott~h~.")

    TriggerServerEvent("um-truthordare:server:rotate",
        x, y, spawnPos.z,
        spinDuration + 0.0,
        massimale
    )
end)

--- Comando /delbott — remover a garrafa do mundo
RegisterCommand("delbott", function()
    if bottleObject ~= nil then
        SetEntityAsMissionEntity(bottleObject)
        DeleteEntity(bottleObject)
    end
end)

--- Evento de rede: receber rotação sincronizada da garrafa
RegisterNetEvent("um-truthordare:client:rotate")
AddEventHandler("um-truthordare:client:rotate", function(x, y, z, duration, maxSpin)
    spinSpeed = maxSpin

    -- Guardar rotação Z anterior se a garrafa já existia
    local previousZ = nil
    if bottleObject ~= nil then
        previousZ = GetEntityRotation(bottleObject).z
        SetEntityAsMissionEntity(bottleObject)
        DeleteEntity(bottleObject)
    end

    -- Criar a garrafa na posição recebida
    local hash = GetHashKey("prop_bottle_macbeth")
    bottleObject = CreateObject(hash, x, y, z - 0.9, false, false, false)

    PlaceObjectOnGroundProperly(bottleObject)
    local onGround = GetEntityCoords(bottleObject)
    SetEntityCoords(bottleObject, onGround.x, onGround.y, onGround.z + 0.04)

    -- Rotação inicial (preservar Z anterior se existia)
    local initialRot = vector3(x, 90.0, z)
    if previousZ ~= nil then
        initialRot = vector3(x, 90.0, previousZ)
    end

    FreezeEntityPosition(bottleObject, true)
    SetEntityRotation(bottleObject, initialRot, false, true)
    SetModelAsNoLongerNeeded(bottleObject)

    Wait(500)

    -- Thread de animação de giro
    CreateThread(function()
        while true do
            Wait(0)

            if rotationTicks < duration then
                if spinSpeed > 0.0 then
                    local currentRot = GetEntityRotation(bottleObject)
                    rotationTicks = rotationTicks + 1

                    -- Desacelerar gradualmente
                    if spinSpeed > 0.0 then
                        spinSpeed = spinSpeed - 0.03
                    end
                    if spinSpeed < 0.0 then
                        spinSpeed = 0.0
                    end

                    SetEntityRotation(
                        bottleObject,
                        vector3(currentRot.x, currentRot.y, currentRot.z + spinSpeed),
                        false, true
                    )
                end
            else
                -- Parar: congelar na posição final
                rotationTicks = 0
                local finalRot = GetEntityRotation(bottleObject)
                SetEntityRotation(bottleObject, vector3(finalRot.x, finalRot.y, finalRot.z), false, true)
                return
            end
        end
    end)
end)
