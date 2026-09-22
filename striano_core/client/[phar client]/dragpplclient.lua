-- dragpplclient.lua
-- striano_core / client / [phar client]
-- Drag-people (drag/carry injured player) system.
-- Depends on: PlayerVicino, LoadAnim, faiAnim (exported from crash.lua / exportsclient.lua)

-- ──────────────────────────────────────────────────────────────────────────────
-- Constants
-- ──────────────────────────────────────────────────────────────────────────────

local ANIM_TIME_THRESHOLD = 0.3   -- clamp animation playback at this normalised time
local DRAG_DICT           = "combat@drag_ped@"
local DRAG_ANIM_PED       = "injured_drag_ped"    -- dragged ped animation
local DRAG_ANIM_PLYR      = "injured_drag_plyr"   -- dragger animation
local POS_SYNC_INTERVAL   = 50    -- ms between position-sync server events

-- ──────────────────────────────────────────────────────────────────────────────
-- Module state
-- ──────────────────────────────────────────────────────────────────────────────

local dragState = {
    InProgress = false,
    target     = -1,
}

local dragCooldown = true    -- prevent rapid re-trigger of /trascina
local draggedPed   = nil     -- reference to the locally dragged ped (target side)
local lastSyncTime = 0       -- for position sync throttling

-- ──────────────────────────────────────────────────────────────────────────────
-- Helpers
-- ──────────────────────────────────────────────────────────────────────────────

local function notifyError(msg)
    exports.striano_combat:submexError(msg)
end

--- Return the client-id and distance of the closest active player within
--- `maxDist` world units.  Returns (-1, -1) when no qualifying player is found.
local function getNearestPlayer(maxDist)
    local players    = GetActivePlayers()
    local myPed      = PlayerPedId()
    local myCoords   = GetEntityCoords(myPed)
    local bestDist   = -1
    local bestPlayer = -1

    for _, playerId in ipairs(players) do
        local otherPed = GetPlayerPed(playerId)
        if otherPed ~= myPed then
            local d = #(GetEntityCoords(otherPed) - myCoords)
            if bestDist == -1 or d < bestDist then
                bestPlayer = playerId
                bestDist   = d
            end
        end
    end

    if bestDist ~= -1 and maxDist >= bestDist then
        return bestPlayer, bestDist
    end
    return nil, nil
end

-- ──────────────────────────────────────────────────────────────────────────────
-- Override TaskPlayAnim to auto-remove the dict after playing.
-- ──────────────────────────────────────────────────────────────────────────────

local _NativeTaskPlayAnim = TaskPlayAnim
function TaskPlayAnim(ped, dict, anim, blendIn, blendOut, duration, flag, playbackRate, lockX, lockY, lockZ)
    _NativeTaskPlayAnim(ped, dict, anim, blendIn, blendOut, duration, flag, playbackRate, lockX, lockY, lockZ)
    RemoveAnimDict(dict)
end

-- ──────────────────────────────────────────────────────────────────────────────
-- PlayAnimTarget — play / hold the drag animation on the target ped.
-- Clamps playback at ANIM_TIME_THRESHOLD and stops movement.
-- ──────────────────────────────────────────────────────────────────────────────

function PlayAnimTarget(targetPed)
    local ped = targetPed or PlayerPedId()

    -- Start the animation if not already playing.
    if not IsEntityPlayingAnim(ped, DRAG_DICT, DRAG_ANIM_PED, 3) then
        TaskPlayAnim(ped, DRAG_DICT, DRAG_ANIM_PED, 3.0, 3.0, -1, 1, false, false, false)
    end

    if IsEntityPlayingAnim(ped, DRAG_DICT, DRAG_ANIM_PED, 3) then
        local t = GetEntityAnimCurrentTime(ped, DRAG_DICT, DRAG_ANIM_PED)
        if t >= ANIM_TIME_THRESHOLD then
            SetEntityAnimCurrentTime(ped, DRAG_DICT, DRAG_ANIM_PED, t)
            TaskPlayAnim(ped, DRAG_DICT, DRAG_ANIM_PED, 3.0, 3.0, -1, 1, false, false, false)
        end

        -- Sample anim time before and after a short wait to detect if it advanced.
        local tBefore = GetEntityAnimCurrentTime(ped, DRAG_DICT, DRAG_ANIM_PED)
        Wait(7)
        local tAfter = GetEntityAnimCurrentTime(ped, DRAG_DICT, DRAG_ANIM_PED)

        -- Pause animation (speed = 0) in both cases; the original code always
        -- sets speed to 0 regardless of whether the time changed.
        SetEntityAnimSpeed(ped, DRAG_DICT, DRAG_ANIM_PED, 0)
    end
end

-- ──────────────────────────────────────────────────────────────────────────────
-- WaitControlsInteractions — per-frame control-lock loop for the dragger.
-- Runs inside its own thread; exits when the player drops (Enter / X).
-- ──────────────────────────────────────────────────────────────────────────────

function WaitControlsInteractions()
    CreateThread(function()
        while true do
            if dragState.InProgress then
                local myPed = playerPed   -- set by crash.lua init thread
                DisablePlayerFiring(myPed, true)
                SetCurrentPedWeapon(myPed, GetHashKey("WEAPON_UNARMED"), true)
                SetPedCanPlayGestureAnims(myPed, false)

                -- Disable combat / movement / weapon controls.
                for _, ctrl in ipairs({ 29, 140, 74, 38, 22, 289, 23, 75 }) do
                    DisableControlAction(0, ctrl, true)
                end
                DisableControlAction(0, 311, true)
                DisableControlAction(1, 311, true)
                DisableControlAction(2, 311, true)
                DisableControlAction(0, 178, true)
                DisableControlAction(0, 303, true)

                -- Drop key: Enter (323) or X (73).
                local dropped = IsControlJustPressed(1, 323) or IsControlJustPressed(0, 73)
                if dropped then
                    DragClosest()
                    ExecuteCommand("e c")
                    ExecuteCommand("e puliscimani")
                    return
                end
            else
                return
            end
            Wait(0)
        end
    end)
end

-- ──────────────────────────────────────────────────────────────────────────────
-- /trascina command — toggle dragging the closest player.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterCommand("trascina", function()
    local myPed = PlayerPedId()
    if IsEntityAttached(myPed) or IsEntityPositionFrozen(myPed) then
        return
    end

    if dragCooldown then
        dragCooldown = false
        DragClosest()
        Wait(1000)
        dragCooldown = true
    end
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- DragClosest — start or stop dragging.
-- ──────────────────────────────────────────────────────────────────────────────

function DragClosest()
    if not dragState.InProgress then
        -- Start dragging the nearest player within 2m.
        LoadAnim(DRAG_DICT)
        local nearestId, dist = PlayerVicino()
        if nearestId ~= -1 and dist and dist <= 2.0 then
            local targetPed = GetPlayerPed(nearestId)
            if not IsPedFatallyInjured(targetPed) then
                local targetServerId = GetPlayerServerId(nearestId)
                if targetServerId ~= -1 then
                    dragState.InProgress = true
                    dragState.target     = targetServerId

                    WaitControlsInteractions()
                    TriggerServerEvent("xenos_DragPeople:sync", targetServerId)
                    TriggerServerEvent("xenos_DragPeople:syncSOLO", GetPlayerServerId(PlayerId()))
                    faketrascina()
                    ClearPedTasks(PlayerPedId())
                    PlayAnimTarget()
                end
            end
        end
    else
        -- Stop dragging.
        local targetPed = GetPlayerPed(GetPlayerFromServerId(dragState.target))
        TriggerServerEvent("xenos_DragPeople:stop", dragState.target)
        DetachEntity(PlayerPedId(), true, false)
        DetachEntity(targetPed)
        ClearPedTasks(targetPed)
        dragState.InProgress = false
        dragState.target     = 0
    end
end

-- ──────────────────────────────────────────────────────────────────────────────
-- esx:onPlayerDeath — abort drag when the dragger dies.
-- ──────────────────────────────────────────────────────────────────────────────

AddEventHandler("esx:onPlayerDeath", function()
    if dragState.InProgress then
        local targetPed = GetPlayerPed(GetPlayerFromServerId(dragState.target))
        TriggerServerEvent("xenos_DragPeople:stop", dragState.target)
        DetachEntity(PlayerPedId(), true, false)
        ClearPedTasks(targetPed)
        dragState.InProgress = false
        dragState.target     = 0
    end
    ChiudiTrascina()
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- xenos_DragPeople:syncTarget — received by the ped being dragged.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterNetEvent("xenos_DragPeople:syncTarget")
AddEventHandler("xenos_DragPeople:syncTarget", function(draggerServerId)
    LoadAnim(DRAG_DICT)

    local draggerPed = GetPlayerPed(GetPlayerFromServerId(draggerServerId))
    local myPed      = PlayerPedId()

    dragState.InProgress = true

    -- Auto-revive the dragged player.
    TriggerServerEvent("esx_ambulancejjj:revive", GetPlayerFromServerId(draggerServerId))

    -- Place the local ped slightly behind and below the dragger.
    local offset = GetOffsetFromEntityInWorldCoords(draggerPed, 0.0, 1.2, -1.0)
    SetEntityCoords(myPed, offset.x, offset.y, offset.z)
    SetEntityHeading(myPed, GetEntityHeading(draggerPed))
    ClearPedTasks(myPed)

    -- Attach to the dragger's right hand bone (1816 = right hand, 4103 = pelvis).
    AttachEntityToEntity(myPed, draggerPed, 1816, 4103, 0.48, 0.0, 0.0, 0.0, 0.0, 0.0)
    ClearPedTasks(myPed)
    PlayAnimTarget(myPed)
    LoopBloccaTastiDrag()
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- LoopBloccaTastiDrag — per-frame control-lock loop for the dragged ped.
-- ──────────────────────────────────────────────────────────────────────────────

function LoopBloccaTastiDrag()
    CreateThread(function()
        while true do
            Wait(0)
            if dragState.InProgress then
                DisableAllControlActions(0)
                -- Allow only camera/look controls.
                EnableControlAction(0, 0, true)
                EnableControlAction(0, 1, true)
                EnableControlAction(0, 2, true)
                PlayAnimTarget()
            else
                return
            end
        end
    end)
end

-- ──────────────────────────────────────────────────────────────────────────────
-- xenos_DragPeople:cl_stop — server tells the target to stop being dragged.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterNetEvent("xenos_DragPeople:cl_stop")
AddEventHandler("xenos_DragPeople:cl_stop", function(draggerServerId)
    dragState.InProgress = false
    local myPed = PlayerPedId()
    DetachEntity(myPed, true, false)
    ClearPedTasks(myPed)
    ClearPedTasks(GetPlayerPed(GetPlayerFromServerId(draggerServerId)))
    ExecuteCommand("e injured2")
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- faketrascina — start the dragger animation if not already running.
-- ──────────────────────────────────────────────────────────────────────────────

function faketrascina()
    if not IsEntityPlayingAnim(PlayerPedId(), DRAG_DICT, DRAG_ANIM_PLYR, 3) then
        loopTrascina()
    end
end

-- ──────────────────────────────────────────────────────────────────────────────
-- loopTrascina — main dragger animation + control loop.
-- Plays the drag animation, handles drop (LShift/X), rotation (A/D),
-- and throttled position-sync to the server.
-- ──────────────────────────────────────────────────────────────────────────────

function loopTrascina()
    local myPed = PlayerPedId()

    -- Start the dragger animation.
    TaskPlayAnim(myPed, DRAG_DICT, DRAG_ANIM_PLYR, 3.0, 3.0, -1, 1, false, false, false)

    CreateThread(function()
        while true do
            Wait(0)
            local ped = PlayerPedId()

            -- Disable movement / combat / weapon controls.
            for _, ctrl in ipairs({
                29, 157, 158, 159, 160, 161, 162, 163, 164, 165,
                23, 37, 192, 204, 221, 349, 16, 17, 170,
                24, 25, 44, 140, 141, 142, 257, 263, 264, 245,
            }) do
                DisableControlAction(0, ctrl, true)
            end

            -- Show drop hint.
            exports.striano_core:draw(38, "Drop")

            -- Wait until the player presses the movement key (LShift=32)
            -- or the drop key (X=73) to proceed.
            while true do
                if IsControlPressed(0, 32)
                    or IsControlJustPressed(0, 73)
                    or IsDisabledControlJustPressed(0, 73)
                then
                    break
                end
                Wait(0)
                SetEntityAnimSpeed(ped, DRAG_DICT, DRAG_ANIM_PLYR, 0)
                exports.striano_core:draw(38, "Drop")
            end

            -- If drop key (X) was pressed (not move key), stop dragging.
            if IsControlJustPressed(0, 73) or IsDisabledControlJustPressed(0, 73) then
                -- Check that sprint isn't also held.
                if not IsControlPressed(0, 21) then
                    ChiudiTrascina()
                    return
                end
            end

            -- Play / maintain animation.
            if not IsEntityPlayingAnim(ped, DRAG_DICT, DRAG_ANIM_PLYR, 3) then
                TaskPlayAnim(ped, DRAG_DICT, DRAG_ANIM_PLYR, 3.0, 3.0, -1, 1, false, false, false)
            end

            -- Dragger walking anim.
            faiAnim("impexp_int-0", "mp_m_waremech_01_dual-0", -1, 49)

            -- Speed: faster when sprinting (LShift=21).
            if IsControlPressed(0, 21) then
                SetEntityAnimSpeed(ped, DRAG_DICT, DRAG_ANIM_PLYR, 1.5)
            else
                SetEntityAnimSpeed(ped, DRAG_DICT, DRAG_ANIM_PLYR, 1.0)
            end

            -- Throttled position sync.
            local now = GetGameTimer()
            if now - lastSyncTime >= POS_SYNC_INTERVAL then
                local pos = GetEntityCoords(ped)
                TriggerServerEvent(
                    "updateTrascina",
                    GetPlayerServerId(PlayerId()),
                    pos.x, pos.y, pos.z,
                    GetEntityHeading(ped)
                )
                lastSyncTime = now
            end

            -- Clamp anim time; rotate with A (34) / D (35).
            if IsEntityPlayingAnim(ped, DRAG_DICT, DRAG_ANIM_PLYR, 3) then
                local t = GetEntityAnimCurrentTime(ped, DRAG_DICT, DRAG_ANIM_PLYR)
                if t >= ANIM_TIME_THRESHOLD then
                    SetEntityAnimCurrentTime(ped, DRAG_DICT, DRAG_ANIM_PLYR, t)
                    ClearPedTasks(ped)
                end

                local heading = GetEntityHeading(ped)
                if IsControlPressed(0, 34) then   -- A — turn left
                    SetEntityHeading(ped, heading + 2)
                end
                if IsControlPressed(0, 35) then   -- D — turn right
                    SetEntityHeading(ped, heading - 2)
                end
            else
                ExecuteCommand("e trascina")
            end
        end
    end)
end

-- ──────────────────────────────────────────────────────────────────────────────
-- updateTrascina — sync heading to all other clients.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterNetEvent("updateTrascina")
AddEventHandler("updateTrascina", function(draggerServerId, x, y, z, heading)
    local myServerId = GetPlayerServerId(PlayerId())
    if myServerId == draggerServerId then return end   -- ignore own event

    local myPos       = GetEntityCoords(PlayerPedId())
    local draggerPos  = vector3(x, y, z)

    -- Only apply if within 150m (optimisation).
    if #(myPos - draggerPos) < 150.0 then
        local draggerPed = GetPlayerPed(GetPlayerFromServerId(draggerServerId))
        SetEntityHeading(draggerPed, heading)
    end
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- ChiudiTrascina — finalise the drag: detach ped, lay it on the ground.
-- ──────────────────────────────────────────────────────────────────────────────

function ChiudiTrascina()
    if draggedPed ~= nil then
        ClearPedTasks(PlayerPedId())
        ExecuteCommand("e prendi6")

        if IsEntityAttached(draggedPed) then
            DetachEntity(draggedPed)
            local myCoords = GetEntityCoords(PlayerPedId())
            SetEntityCoords(draggedPed, myCoords.x, myCoords.y, myCoords.z - 1)
            SetEntityRotation(draggedPed, 0, 0, GetEntityHeading(PlayerPedId()))
            draggedPed = nil
        end
    end
end

-- ──────────────────────────────────────────────────────────────────────────────
-- /faketrascina command — manual solo-sync trigger (debug / admin).
-- ──────────────────────────────────────────────────────────────────────────────

RegisterCommand("faketrascina", function()
    TriggerServerEvent("xenos_DragPeople:syncSOLO", GetPlayerServerId(PlayerId()))
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- xenos_DragPeople:syncTargetSOLO — activate drag state without full sync.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterNetEvent("xenos_DragPeople:syncTargetSOLO")
AddEventHandler("xenos_DragPeople:syncTargetSOLO", function()
    dragState.InProgress = true
    faketrascina()
    print("In trascina attivato.")
end)
