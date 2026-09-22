-- prendiostaggioclient.lua
-- Take-hostage / drag / carry (in-braccio) system.
-- Three interaction modes triggered by /takehostage, /drag, /inbraccio.
-- Each attaches the local player to the nearest downed/eligible target ped.

-- ---------------------------------------------------------------------------
-- MODULE STATE
-- ---------------------------------------------------------------------------

local shouldStopHostage = false  -- set by TakeHostage:stop to break carry loops

-- ---------------------------------------------------------------------------
-- GetNearestPlayerWithinRange(maxDistance)
-- Returns the local player index of the nearest other player within maxDistance,
-- or nil if none found.
-- ---------------------------------------------------------------------------
local function GetNearestPlayerWithinRange(maxDistance)
    local myPed    = PlayerPedId()
    local myPos    = GetEntityCoords(myPed)
    local nearId   = -1
    local nearDist = -1

    for _, playerId in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(playerId)
        if ped ~= myPed then
            local dist = #(GetEntityCoords(ped) - myPos)
            if nearDist == -1 or dist < nearDist then
                nearId   = playerId
                nearDist = dist
            end
        end
    end

    if nearDist ~= -1 and maxDistance >= nearDist then
        return nearId
    end
    return nil
end

-- ---------------------------------------------------------------------------
-- Helper: load anim dict, wait until ready
-- ---------------------------------------------------------------------------
local function EnsureAnimDict(dict)
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do Wait(10) end
    end
end

-- ---------------------------------------------------------------------------
-- Helper: play looping anim if not already playing
-- ---------------------------------------------------------------------------
local function EnsurePlayingAnim(ped, dict, clip, flag)
    EnsureAnimDict(dict)
    if not IsEntityPlayingAnim(ped, dict, clip, 3) then
        TaskPlayAnim(ped, dict, clip, 8.0, -8.0, 100000, flag or 49, 0, false, false, false)
    end
end

-- ---------------------------------------------------------------------------
-- Helper: disable movement/combat controls for a carry loop tick
-- ---------------------------------------------------------------------------
local function DisableCarryControls()
    DisableControlAction(0, 24, true)  -- attack
    DisableControlAction(0, 25, true)  -- aim
    DisableControlAction(0, 47, true)  -- weapon wheel up
    DisableControlAction(0, 58, true)  -- weapon wheel down
    DisableControlAction(0, 21, true)  -- sprint
    DisablePlayerFiring(PlayerPedId(), true)
end

-- ---------------------------------------------------------------------------
-- Helper: check if a ped is in a "downed / hostage-eligible" animation
-- Anims: random@dealgonewrong/idle_a, move_injured_ground/front_loop,
--        anim@gangops@hostage@/perp_idle or victim_idle
-- ---------------------------------------------------------------------------
local function IsPedDowned(ped)
    return IsEntityPlayingAnim(ped, "random@dealgonewrong", "idle_a", 3)
        or IsEntityPlayingAnim(ped, "move_injured_ground", "front_loop", 3)
end

local function IsPedInHostageAnim(ped)
    return IsEntityPlayingAnim(ped, "anim@gangops@hostage@", "perp_idle", 3)
        or IsEntityPlayingAnim(ped, "anim@gangops@hostage@", "victim_idle", 3)
end

-- ---------------------------------------------------------------------------
-- TakeHostage:syncTarget  (net event — received by the HOSTAGE player)
-- A0 = attackerServerId, A1 = animDict, A2 = animClip,
-- A3/A4/A5 = attach offset X/Y/Z, A6 = optional anim flag (default 49)
-- ---------------------------------------------------------------------------
RegisterNetEvent("TakeHostage:syncTarget")
AddEventHandler("TakeHostage:syncTarget", function(attackerServerId, animDict, animClip, offX, offY, offZ, animFlag)
    local flag        = animFlag or 49
    local attackerPed = GetPlayerPed(GetPlayerFromServerId(attackerServerId))
    local boneIndex   = -1
    if flag == 33 then boneIndex = 0 end

    -- Attach self to attacker
    AttachEntityToEntity(
        PlayerPedId(), attackerPed, boneIndex,
        offX, offY, offZ,
        0.0, 0.0, 0.0,
        false, false, false, false, 2, false
    )

    -- Hold the attachment while still attached
    while IsEntityAttached(PlayerPedId()) do
        Wait(0)

        if shouldStopHostage then
            shouldStopHostage = false
            return
        end

        -- Maintain captive anim unless cuffed
        if not IsEntityPlayingAnim(PlayerPedId(), "anim@move_m@prisoner_cuffed_fp", "aim_low_loop", 3) then
            EnsurePlayingAnim(PlayerPedId(), animDict, animClip, flag)
        end

        -- Allow attacker to release with hand_rest or firemans_carry active
        if IsEntityPlayingAnim(PlayerPedId(), "anim@hand_rest_holster", "hand_rest", 3)
            or IsEntityPlayingAnim(PlayerPedId(), "nm", "firemans_carry", 3)
        then
            if IsDisabledControlPressed(0, 73) then  -- G key
                DetachEntity(PlayerPedId(), true, false)
                ClearPedSecondaryTask(PlayerPedId())
                ExecuteCommand("e c")
                DetachEntity(PlayerPedId(), true, false)
                ClearPedSecondaryTask(attackerPed)
                TriggerServerEvent("TakeHostage:stop", attackerServerId)
                return
            end
        end

        DisableAllControlActions(0)
        DisableAllControlActions(1)
        DisableAllControlActions(2)
    end

    -- Detached naturally
    ClearPedSecondaryTask(PlayerPedId())
    ExecuteCommand("e c")
    DetachEntity(PlayerPedId(), true, false)
end)

-- ---------------------------------------------------------------------------
-- TakeHostage:releaseHostage — release the captive (sent to hostage player)
-- ---------------------------------------------------------------------------
RegisterNetEvent("TakeHostage:releaseHostage")
AddEventHandler("TakeHostage:releaseHostage", function()
    DetachEntity(PlayerPedId(), true, false)
    ClearPedSecondaryTask(PlayerPedId())
    ExecuteCommand("e c")
end)

-- ---------------------------------------------------------------------------
-- TakeHostage:stop — signal the hostage loop to break (sent to taker player)
-- ---------------------------------------------------------------------------
RegisterNetEvent("TakeHostage:stop")
AddEventHandler("TakeHostage:stop", function()
    shouldStopHostage = true
    ClearPedSecondaryTask(PlayerPedId())
    DetachEntity(PlayerPedId(), true, false)
    Wait(150)
    shouldStopHostage = false
    ExecuteCommand("e puliscimani")
end)

-- ---------------------------------------------------------------------------
-- callTakeHostage
-- Standard hostage grab: target must be downed/in hostage anim, self must be
-- within 1m behind the target, self must have a firearm (not melee-only).
-- Attaches target with "victim_idle" anim. G key releases.
-- ---------------------------------------------------------------------------
function callTakeHostage()
    local myPed   = PlayerPedId()
    local nearId  = GetNearestPlayerWithinRange(1.0)

    if not nearId then
        ExecuteCommand("e shrug5")
        return
    end

    local targetPed = GetPlayerPed(nearId)

    -- Reject if target or self is in certain anims
    if IsPedDowned(targetPed) or IsPedDowned(myPed) then return end
    if IsPedInHostageAnim(myPed) or IsPedInHostageAnim(targetPed) then return end
    if IsEntityAttached(myPed) or IsEntityAttached(targetPed) then return end

    -- Weapon check: must have firearm (category 1) but not only melee (4)
    if IsPedArmed(myPed, 1) then
        if not IsPedArmed(myPed, 4) then
            exports.striano_combat:submexError("You need a fire weapon to take hostage.")
            return
        end
    end

    -- Must be within 1m of the computed attach position (behind target)
    local targetPos   = GetEntityCoords(targetPed)
    local targetFwd   = GetEntityForwardVector(targetPed)
    local attachPos   = targetPos + (targetFwd * -1.0)
    local myPos       = GetEntityCoords(myPed)
    if #(myPos - attachPos) >= 1.0 then
        exports.striano_combat:submexError("You must be in the back of the victim.")
        return
    end

    local targetServerId = GetPlayerServerId(nearId)
    if targetServerId == -1 then return end

    -- Equip current weapon and send sync event to target
    SetCurrentPedWeapon(myPed, foundWeapon, true)
    TriggerServerEvent("TakeHostage:sync", targetServerId,
        "anim@gangops@hostage@", "victim_idle",
        -0.24, 0.11, 0.0)

    ClearPedSecondaryTask(myPed)
    ExecuteCommand("e c")
    DetachEntity(myPed, true, false)

    -- Taker loop: hold "perp_idle" anim, G to release
    while not IsControlPressed(0, 73) do  -- G key
        Wait(0)
        if shouldStopHostage then
            shouldStopHostage = false
            return
        end

        EnsurePlayingAnim(myPed, "anim@gangops@hostage@", "perp_idle", 49)

        DisableCarryControls()

        -- Abort if taker dies/is fatally injured or target detaches
        if IsEntityDead(myPed) or IsPedFatallyInjured(myPed) then return end
        if not IsEntityAttached(GetPlayerPed(nearId)) then return end
    end

    -- G pressed → release
    TriggerServerEvent("TakeHostage:releaseHostage", targetServerId)
    ClearPedSecondaryTask(myPed)
    ExecuteCommand("e c")
end

-- ---------------------------------------------------------------------------
-- callDrag
-- Drag an injured/downed player: "hand_rest_holster/hand_rest" anim on taker,
-- target attached at side. G to release.
-- ---------------------------------------------------------------------------
function callDrag()
    local myPed  = PlayerPedId()
    local nearId = GetNearestPlayerWithinRange(1.0)

    if not nearId then return end

    local targetPed = GetPlayerPed(nearId)
    if IsEntityAttached(myPed) or IsEntityAttached(targetPed) then return end

    -- Target must be fatally injured
    if not IsPedFatallyInjured(targetPed) then return end

    local targetPos      = GetEntityCoords(targetPed)
    local targetFwd      = GetEntityForwardVector(targetPed)
    local attachPos      = targetPos + (targetFwd * 0.1)
    local myPos          = GetEntityCoords(myPed)
    if #(myPos - attachPos) >= 1.0 then return end

    local targetServerId = GetPlayerServerId(nearId)
    if targetServerId == -1 then return end

    SetCurrentPedWeapon(myPed, foundWeapon, true)
    TriggerServerEvent("TakeHostage:sync", targetServerId,
        "anim@hand_rest_holster", "hand_rest",
        -0.33, 0.1, 0.0)

    ClearPedSecondaryTask(myPed)
    ExecuteCommand("e c")
    DetachEntity(myPed, true, false)

    -- Drag loop: hold "idle_lowdoor" anim, G to release
    local dragDict = "anim@amb@code_human_in_car_idles@arm@generic@ds@idle_d"
    local dragClip = "idle_lowdoor"

    while not IsControlPressed(0, 73) do
        Wait(0)
        if shouldStopHostage then
            shouldStopHostage = false
            return
        end

        EnsurePlayingAnim(myPed, dragDict, dragClip, 49)
        DisableCarryControls()

        if IsEntityDead(myPed) or IsPedFatallyInjured(myPed) then return end
    end

    TriggerServerEvent("TakeHostage:releaseHostage", targetServerId)
end

-- ---------------------------------------------------------------------------
-- callInBraccio
-- Fireman carry: "nm/firemans_carry" anim — carries injured player over shoulder.
-- G to put down.
-- ---------------------------------------------------------------------------
function callInBraccio()
    local myPed  = PlayerPedId()
    local nearId = GetNearestPlayerWithinRange(1.0)

    if not nearId then return end

    local targetPed = GetPlayerPed(nearId)
    if IsEntityAttached(myPed) or IsEntityAttached(targetPed) then return end

    -- Target must be fatally injured
    if not IsPedFatallyInjured(targetPed) then return end

    local targetPos      = GetEntityCoords(targetPed)
    local targetFwd      = GetEntityForwardVector(targetPed)
    local attachPos      = targetPos + (targetFwd * 0.1)
    local myPos          = GetEntityCoords(myPed)
    if #(myPos - attachPos) >= 1.0 then return end

    local targetServerId = GetPlayerServerId(nearId)
    if targetServerId == -1 then return end

    SetCurrentPedWeapon(myPed, foundWeapon, true)
    -- bone 0 = root (fireman carry), flag 33
    TriggerServerEvent("TakeHostage:sync", targetServerId,
        "nm", "firemans_carry",
        0.15, 0.27, 0.63, 33)

    ClearPedSecondaryTask(myPed)
    ExecuteCommand("e c")
    DetachEntity(myPed, true, false)

    -- Carry loop: hold "fin_c2_mcs_1_camman" anim, G to put down
    local carryDict = "missfinale_c2mcs_1"
    local carryClip = "fin_c2_mcs_1_camman"

    while not IsControlPressed(0, 73) do
        Wait(0)
        if shouldStopHostage then
            shouldStopHostage = false
            return
        end

        EnsurePlayingAnim(myPed, carryDict, carryClip, 49)
        DisableCarryControls()

        if IsEntityDead(myPed) or IsPedFatallyInjured(myPed) then return end
    end

    TriggerServerEvent("TakeHostage:releaseHostage", targetServerId)
end

-- ---------------------------------------------------------------------------
-- COMMANDS
-- ---------------------------------------------------------------------------

RegisterCommand("takehostage", function() callTakeHostage() end)
RegisterCommand("th",          function() callTakeHostage() end)
RegisterCommand("ostaggio",    function() callTakeHostage() end)
RegisterCommand("drag",        function() callDrag() end)
RegisterCommand("inbraccio",   function() callInBraccio() end)
