-- cordamaniclient.lua
-- Client-side handcuff/tie system (corda mani = hand rope).
-- Allows cuffing/uncuffing nearby players using melee bladed weapons.
-- Uses fn_cuff_item events, ExecuteCommand for emotes, and LoopFascette
-- to enforce handcuff constraints while cuffed.

local isCuffed = false  -- whether THIS player is currently handcuffed

-- ─── Helper: find the closest player (excluding self) within radius ───────
-- Uses the global Giocatori() function which returns all player IDs.
-- @param radius number  Search radius in metres (default 3.0)
-- @return playerId, distance  (-1 if nobody found within radius)
function PlayerVicino(radius)
    radius = radius or 3.0

    local players    = Giocatori()
    local myPed      = PlayerPedId()
    local myId       = PlayerId()
    local myPos      = GetEntityCoords(myPed)

    local closestId   = -1
    local closestDist = -1

    for _, pid in ipairs(players) do
        if pid ~= myId then
            local pedPos = GetEntityCoords(GetPlayerPed(pid))
            local dist   = #(pedPos - vector3(myPos.x, myPos.y, myPos.z))
            if (closestDist == -1 or dist < closestDist) and dist < radius then
                closestId   = pid
                closestDist = dist
            end
        end
    end

    return closestId, closestDist
end

-- ─── fn_cuff_item:checkCuff ───────────────────────────────────────────────
-- Server requests a cuff check: if the nearby player is attached,
-- fatally injured, or already playing the cuffed anim, perform the cuff.
RegisterNetEvent("fn_cuff_item:checkCuff")
AddEventHandler("fn_cuff_item:checkCuff", function()
    local nearId, dist = PlayerVicino()
    if dist == -1 then
        exports.striano_combat:submex("Nessuno nelle vicinanze da poter legare.")
        return
    end

    if dist <= 1.8 then
        local nearPed = GetPlayerPed(nearId)
        local canCuff = IsEntityAttached(nearPed)
                     or IsPedFatallyInjured(nearPed)
                     or IsEntityPlayingAnim(nearPed,
                            "anim@move_m@prisoner_cuffed_fp", "aim_low_loop", 3)
        if not canCuff then return end

        ExecuteCommand("e mechanic4")
        TriggerServerEvent("fn_cuff_item:handcuff", GetPlayerServerId(nearId), true)
        Wait(1000)
        ExecuteCommand("e c")
    end
end)

-- ─── /slega (un-cuff a nearby player) ────────────────────────────────────
-- Requires a bladed weapon (dagger, switchblade, machete, or knife) equipped,
-- or the custom "tagliante" flag from striano_combat.
RegisterCommand("slega", function(source, args, raw)
    local myPed    = PlayerPedId()
    local hasKnife = exports.striano_combat:getTagliente()

    if not hasKnife then
        local weapon     = GetSelectedPedWeapon(myPed)
        local bladedList = {
            GetHashKey("weapon_dagger"),
            GetHashKey("weapon_switchblade"),
            GetHashKey("weapon_machete"),
            GetHashKey("weapon_knife"),
        }
        for _, hash in ipairs(bladedList) do
            if weapon == hash then
                hasKnife = true
                break
            end
        end
    end

    if not hasKnife then
        exports.striano_combat:submex("Non hai un arma affilata per questa operazione.")
        return
    end

    local nearId, dist = PlayerVicino()
    if dist == -1 then
        exports.striano_combat:submex("Nessuno nelle vicinanze da poter slegare.")
        return
    end

    if dist <= 1.7 then
        ExecuteCommand("e uncuff2")
        TriggerServerEvent("fn_cuff_item:uncuff", GetPlayerServerId(nearId))
    end
end)

-- ─── fn_cuff_item:forceUncuff ─────────────────────────────────────────────
-- Server forces this player to be uncuffed (e.g. medical release).
RegisterNetEvent("fn_cuff_item:forceUncuff")
AddEventHandler("fn_cuff_item:forceUncuff", function()
    if isCuffed then
        ExecuteCommand("e uncuff2")
    end
    isCuffed = false
    local ped = PlayerPedId()
    ClearPedSecondaryTask(ped)
    SetEnableHandcuffs(ped, false)
    SetPedCanPlayGestureAnims(ped, true)
end)

-- ─── fn_cuff_item:handcuff ────────────────────────────────────────────────
-- Server notifies THIS player that they have been handcuffed.
RegisterNetEvent("fn_cuff_item:handcuff")
AddEventHandler("fn_cuff_item:handcuff", function()
    local ped = PlayerPedId()
    isCuffed  = true

    ClearPedTasks(ped)
    SetPedCanPlayAmbientBaseAnims(ped, false)
    SetEnableHandcuffs(ped, true)
    SetCurrentPedWeapon(ped, -1569615261, true)  -- unarmed hash
    SetPedCanPlayGestureAnims(ped, false)
    ExecuteCommand("e c")
    Wait(25)
    LoopFascette()
end)

-- ─── onResourceStart: always ensure handcuffs are disabled on load ────────
AddEventHandler("onResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        SetEnableHandcuffs(PlayerPedId(), false)
    end
end)

-- ─── LoopFascette: enforcement loop while cuffed ─────────────────────────
-- Disables weapon/fight controls, forces cuff animation,
-- and prevents exit from moving vehicles.
function LoopFascette()
    local ped = PlayerPedId()
    CreateThread(function()
        while true do
            Wait(0)
            if isCuffed then
                local vehicle = GetVehiclePedIsIn(ped, false)
                if vehicle ~= 0 then
                    -- Block exiting a moving vehicle
                    if GetEntitySpeed(vehicle) > 0.0 then
                        DisableControlAction(0, 75, true)   -- exit vehicle
                    end
                end
                -- Block weapon / attack / aim / kick controls
                DisableControlAction(0, 73,  true)  -- attack
                DisableControlAction(0, 25,  true)  -- aim
                DisableControlAction(0, 24,  true)  -- attack2
                DisableControlAction(0, 140, true)  -- melee
                DisableControlAction(0, 303, true)  -- melee2

                -- Ensure cuffed animation is playing
                if not IsEntityPlayingAnim(ped, "anim@move_m@prisoner_cuffed_fp", "aim_low_loop", 3) then
                    ExecuteCommand("e cuff2")
                end
            else
                print("Annullo la corda nera.")
                return
            end
        end
    end)
end
