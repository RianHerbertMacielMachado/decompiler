-- deathclient.lua
-- striano_core / client / [phar client]
-- Death detection, resurrection and kill-reporting system.

-- ──────────────────────────────────────────────────────────────────────────────
-- Helpers
-- ──────────────────────────────────────────────────────────────────────────────

--- Round a number to `decimals` decimal places (or to the nearest integer).
local function round(n, decimals)
    if decimals then
        local factor = 10 ^ decimals
        return math.floor(n * factor + 0.5) / factor
    else
        return math.floor(n + 0.5)
    end
end

-- ──────────────────────────────────────────────────────────────────────────────
-- Module state
-- ──────────────────────────────────────────────────────────────────────────────

local isDead = false   -- true while the local player is fatally injured

-- ──────────────────────────────────────────────────────────────────────────────
-- Death-detection thread
-- ──────────────────────────────────────────────────────────────────────────────

CreateThread(function()
    Wait(5000)   -- let the game finish loading before we start polling

    while true do
        local ped = PlayerPedId()

        if IsEntityVisible(ped) and IsPedHuman(ped) then
            -- Only track death after the tutorial is complete.
            if exports.striano_core:gettutorial() then
                if IsPedFatallyInjured(ped) then
                    -- Player just died — fire once.
                    if not isDead then
                        isDead = true
                        TriggerServerEvent("Immortale", GetPlayerServerId(PlayerId()), true)

                        local killerPed  = GetPedSourceOfDeath(ped)
                        local deathCause = GetPedCauseOfDeath(ped)
                        local killerIdx  = NetworkGetPlayerIndexFromPed(killerPed)

                        if killerPed ~= ped and killerIdx then
                            -- Killed by another player.
                            if NetworkIsPlayerActive(killerIdx) then
                                PlayerKilledByPlayer(
                                    GetPlayerServerId(killerIdx),
                                    killerIdx,
                                    deathCause
                                )
                            end
                        else
                            -- Killed by world / NPC / self.
                            PlayerKilled(deathCause)
                        end
                    end
                else
                    -- Player is alive — reset flag once they revive.
                    if isDead then
                        isDead = false
                        TriggerServerEvent("Immortale", GetPlayerServerId(PlayerId()), false)
                    end
                end
            end
        end

        Wait(1000)
    end
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- Rinasci — resurrect the local ped in place (used when the ped is invisible)
-- ──────────────────────────────────────────────────────────────────────────────

function Rinasci()
    local ped     = PlayerPedId()
    local coords  = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
    SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
    SetEntityHeading(ped, heading)

    print("...[RINASCO DA INVISIBILE]")
end

-- ──────────────────────────────────────────────────────────────────────────────
-- PlayerKilledByPlayer — killed by another online player
-- ──────────────────────────────────────────────────────────────────────────────

function PlayerKilledByPlayer(killerServerId, killerClientId, deathCause)
    local ped = PlayerPedId()

    -- Validate IDs.
    if not (killerServerId and killerClientId)
        or killerServerId == -1
        or killerClientId == -1
    then
        print("[PlayerKilledByPlayer] invalid killer ids", killerServerId, killerClientId)
        return
    end

    local victimCoords = GetEntityCoords(ped)
    local killerPed    = GetPlayerPed(killerClientId)

    if not DoesEntityExist(killerPed) then
        print("[PlayerKilledByPlayer] killer ped does not exist")
        return
    end

    local killerCoords = GetEntityCoords(killerPed)
    local distance     = #(victimCoords - killerCoords)

    -- Build the death-info table.
    local deathInfo = {
        victimCoords = {
            x = round(victimCoords.x, 1),
            y = round(victimCoords.y, 1),
            z = round(victimCoords.z, 1),
        },
        killerCoords = {
            x = round(killerCoords.x, 1),
            y = round(killerCoords.y, 1),
            z = round(killerCoords.z, 1),
        },
        killedByPlayer = true,
        deathCause     = deathCause,
        distance       = round(distance, 1),
        killerServerId = killerServerId,
        killerClientId = killerClientId,
    }

    print("SONO STATO UCCISO DA ID: " .. tostring(killerServerId))
    TriggerServerEvent("legacy:ucciso", GetPlayerServerId(PlayerId()), killerServerId, deathCause)

    if IsEntityVisible(ped) then
        TriggerEvent("esx:onPlayerDeath", deathInfo)
    else
        Rinasci()
    end
end

-- ──────────────────────────────────────────────────────────────────────────────
-- PlayerKilled — killed by world / NPC / environment
-- ──────────────────────────────────────────────────────────────────────────────

function PlayerKilled(deathCause)
    local ped    = PlayerPedId()
    local coords = GetEntityCoords(ped)

    local deathInfo = {
        victimCoords = {
            x = round(coords.x, 1),
            y = round(coords.y, 1),
            z = round(coords.z, 1),
        },
        killedByPlayer = false,
        deathCause     = deathCause,
    }

    if IsEntityVisible(ped) then
        TriggerEvent("esx:onPlayerDeath", deathInfo)
    else
        Rinasci()
    end
end
