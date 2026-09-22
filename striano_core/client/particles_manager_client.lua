-- =============================================================================
-- particles_manager_client.lua
-- Particle effects (ptfx) manager for striano_core.
-- Provides looped/non-looped FX on entities, entity bones, and world coords.
-- Includes a "fake loop" emulation for effects that only support one-shot API.
-- =============================================================================

-- ---------------------------------------------------------------------------
-- Constants / defaults
-- ---------------------------------------------------------------------------
local MAX_ACTIVE_FX   = 120
local DEFAULT_MAX_DIST = 90.0

-- Default offset applied when none is supplied (slightly in front & up)
local DEFAULT_OFFSET = vector3(0.0, 0.35, 0.08)
-- Default rotation when none is supplied
local DEFAULT_ROT    = vector3(-90.0, 0.0, 0.0)

local DEFAULT_SCALE  = 1.8
local DEFAULT_ALPHA  = 0.55
local FAKE_LOOP_TICK = 180   -- ms between non-looped re-fires

-- ---------------------------------------------------------------------------
-- State tables
-- loopedFxByEntity[entityHandle] = fxHandle   — active looped FX per entity
-- fakeLoopByKey[key]             = { ... }    — fake-looped (non-looped) FX on entities
-- coordFakeLoops[key]            = { ... }    — fake-looped FX at world coords
-- coordFxByHandle[fxHandle]      = true       — active looped coord FX
-- entityToFakeKey[entity]        = key        — reverse lookup for StopFakeLoop(entity)
-- ---------------------------------------------------------------------------
local loopedFxByEntity  = {}
local fakeLoopByKey     = {}
local coordFakeLoops    = {}
local coordFxByHandle   = {}
local entityToFakeKey   = {}

-- ---------------------------------------------------------------------------
-- isVec3(v) — returns true if v is a vector3 (has .x field)
-- ---------------------------------------------------------------------------
local function isVec3(v)
    if not v then return false end
    if v then return v.x ~= nil end
    return false
end

-- ---------------------------------------------------------------------------
-- toVec3(v) — converts table {x,y,z} or nil to vector3; falls back to zero.
-- ---------------------------------------------------------------------------
local function toVec3(v)
    if isVec3(v) then return v end
    if type(v) == "table" then
        return vector3(v.x or 0.0, v.y or 0.0, v.z or 0.0)
    end
    return vector3(0.0, 0.0, 0.0)
end

-- ---------------------------------------------------------------------------
-- distSq(a, b) — squared distance between two vector3s (avoids sqrt)
-- ---------------------------------------------------------------------------
local function distSq(a, b)
    local dx = a.x - b.x
    local dy = a.y - b.y
    local dz = a.z - b.z
    return dx*dx + dy*dy + dz*dz
end

-- ---------------------------------------------------------------------------
-- loadPtfxAsset(dict)
-- Requests and waits for a named PTFX asset, then sets it as active.
-- ---------------------------------------------------------------------------
local function loadPtfxAsset(dict)
    if not HasNamedPtfxAssetLoaded(dict) then
        RequestNamedPtfxAsset(dict)
        while not HasNamedPtfxAssetLoaded(dict) do
            Wait(0)
        end
    end
    UseParticleFxAsset(dict)
end

-- ---------------------------------------------------------------------------
-- countActiveLooped()
-- Counts active looped FX handles in loopedFxByEntity.
-- ---------------------------------------------------------------------------
local function countActiveLooped()
    local count = 0
    for _, handle in pairs(loopedFxByEntity) do
        if handle and handle ~= -1 then
            count = count + 1
        end
    end
    return count
end

-- ---------------------------------------------------------------------------
-- evictOldestLooped()
-- When the looped FX cap is reached, stops the first found active one.
-- ---------------------------------------------------------------------------
local function evictOldestLooped()
    local total = countActiveLooped()
    for _, handle in pairs(coordFxByHandle) do
        total = total + 1
    end
    if total < MAX_ACTIVE_FX then return end

    -- Evict from entity looped table first
    for entityKey, handle in pairs(loopedFxByEntity) do
        if handle and handle ~= -1 then
            StopParticleFxLooped(handle, false)
            loopedFxByEntity[entityKey] = nil
            return
        end
    end
    -- Then evict from coord looped table
    for handle in pairs(coordFxByHandle) do
        StopParticleFxLooped(handle, false)
        coordFxByHandle[handle] = nil
        return
    end
end

-- =============================================================================
-- LOOPED FX ON ENTITY
-- =============================================================================

-- ---------------------------------------------------------------------------
-- startFxOnEntityInternal(fxName, entity, offset, rot, scale, alpha, dict)
-- Core implementation — up to 3 retries with 120 ms between attempts.
-- Returns: fxHandle on success, or nil, errorMsg on failure.
-- ---------------------------------------------------------------------------
local function startFxOnEntityInternal(fxName, entity, offset, rot, scale, alpha, dict)
    if entity == 0 or not DoesEntityExist(entity) then
        return nil, "no_entity"
    end

    loadPtfxAsset(dict)
    evictOldestLooped()

    -- Stop any existing FX on this entity
    local existing = loopedFxByEntity[entity]
    if existing and existing ~= -1 then
        StopParticleFxLooped(existing, false)
        loopedFxByEntity[entity] = nil
        Wait(0)
    end

    offset = toVec3(offset or DEFAULT_OFFSET)
    rot    = toVec3(rot    or DEFAULT_ROT)
    scale  = scale or DEFAULT_SCALE
    alpha  = alpha or DEFAULT_ALPHA

    local handle
    for _ = 1, 3 do
        handle = StartParticleFxLoopedOnEntity(
            fxName, entity,
            offset.x, offset.y, offset.z,
            rot.x,    rot.y,    rot.z,
            scale,
            false, false, false
        )
        if handle and handle ~= -1 then
            SetParticleFxLoopedAlpha(handle, alpha)
            loopedFxByEntity[entity] = handle
            return handle
        end
        Wait(120)
    end

    return nil, "start_failed"
end

-- ---------------------------------------------------------------------------
-- StartFx(dict, fxName, entity, offset, rot, scale, alpha)
-- Public API — starts a looped particle on an entity.
-- ---------------------------------------------------------------------------
function StartFx(dict, fxName, entity, offset, rot, scale, alpha)
    if not dict or not fxName then return nil, "bad_params" end
    return startFxOnEntityInternal(fxName, entity, offset, rot, scale, alpha, dict)
end

exports("StartFx", StartFx)

-- ---------------------------------------------------------------------------
-- StartFxOnBone(dict, fxName, entity, boneIdOrName, offset, rot, scale, alpha)
-- Starts a looped particle attached to a specific entity bone.
-- boneIdOrName may be an integer bone index or a string bone name.
-- Falls back to "chassis" bone if the name is not found.
-- ---------------------------------------------------------------------------
function StartFxOnBone(dict, fxName, entity, boneIdOrName, offset, rot, scale, alpha)
    if not dict or not fxName then return nil, "bad_params" end
    if entity == 0 or not DoesEntityExist(entity) then return nil, "no_entity" end

    loadPtfxAsset(dict)
    evictOldestLooped()

    -- Stop existing FX on this entity
    local existing = loopedFxByEntity[entity]
    if existing and existing ~= -1 then
        StopParticleFxLooped(existing, false)
        loopedFxByEntity[entity] = nil
        Wait(0)
    end

    -- Resolve bone index
    local boneIndex = 0
    if type(boneIdOrName) == "number" then
        boneIndex = boneIdOrName
    elseif type(boneIdOrName) == "string" then
        local idx = GetEntityBoneIndexByName(entity, boneIdOrName)
        if idx ~= -1 then
            boneIndex = idx
        else
            local chassisIdx = GetEntityBoneIndexByName(entity, "chassis")
            if chassisIdx ~= -1 then
                boneIndex = chassisIdx
            end
        end
    end

    offset = toVec3(offset or DEFAULT_OFFSET)
    rot    = toVec3(rot    or DEFAULT_ROT)
    scale  = scale or DEFAULT_SCALE
    alpha  = alpha or DEFAULT_ALPHA

    local handle
    for _ = 1, 3 do
        handle = StartParticleFxLoopedOnEntityBone(
            fxName, entity, boneIndex,
            offset.x, offset.y, offset.z,
            rot.x,    rot.y,    rot.z,
            scale,
            false, false, false
        )
        if handle and handle ~= -1 then
            SetParticleFxLoopedAlpha(handle, alpha)
            loopedFxByEntity[entity] = handle
            return handle
        end
        Wait(120)
    end

    return nil, "start_failed"
end

exports("StartFxOnBone", StartFxOnBone)

-- ---------------------------------------------------------------------------
-- StopFx(entity)
-- Stops the looped FX currently playing on `entity`.
-- ---------------------------------------------------------------------------
function StopFx(entity)
    local handle = loopedFxByEntity[entity]
    if handle and handle ~= -1 then
        StopParticleFxLooped(handle, false)
    end
    loopedFxByEntity[entity] = nil
end

exports("StopFx", StopFx)

-- ---------------------------------------------------------------------------
-- StopAllFx()
-- Stops all looped FX tracked in loopedFxByEntity.
-- ---------------------------------------------------------------------------
function StopAllFx()
    for entityKey, handle in pairs(loopedFxByEntity) do
        if handle and handle ~= -1 then
            StopParticleFxLooped(handle, false)
        end
        loopedFxByEntity[entityKey] = nil
    end
end

exports("StopAllFx", StopAllFx)

-- ---------------------------------------------------------------------------
-- CountActiveFx()
-- Returns the total number of active looped FX handles.
-- ---------------------------------------------------------------------------
function CountActiveFx()
    return countActiveLooped()
end

exports("CountActiveFx", CountActiveFx)

-- =============================================================================
-- FAKE LOOP FX ON ENTITY
-- (For effects that have no looped variant — re-fired periodically)
-- =============================================================================

-- Background thread: fires non-looped entity FX for enabled fake-loop entries
CreateThread(function()
    while true do
        local playerPos = GetEntityCoords(PlayerPedId())

        for _, entry in pairs(fakeLoopByKey) do
            if entry.enabled and entry.ent then
                if DoesEntityExist(entry.ent) then
                    local entPos  = GetEntityCoords(entry.ent)
                    local maxDist = entry.maxDist or DEFAULT_MAX_DIST
                    if distSq(playerPos, entPos) <= maxDist * maxDist then
                        loadPtfxAsset(entry.dict)
                        UseParticleFxAsset(entry.dict)
                        local off   = toVec3(entry.off   or DEFAULT_OFFSET)
                        local rot   = toVec3(entry.rot   or DEFAULT_ROT)
                        local scale = entry.scale or DEFAULT_SCALE
                        StartParticleFxNonLoopedOnEntity(
                            entry.name, entry.ent,
                            off.x, off.y, off.z,
                            rot.x, rot.y, rot.z,
                            scale
                        )
                    end
                end
            end
        end

        Wait(FAKE_LOOP_TICK)
    end
end)

-- ---------------------------------------------------------------------------
-- keyForEntity(entity) — generates a stable string key from an entity handle
-- ---------------------------------------------------------------------------
local function keyForEntity(entity)
    return tostring(entity)
end

-- ---------------------------------------------------------------------------
-- StartFakeLoop(dict, fxName, entity, offset, rot, scale, tickMs, maxDist)
-- Registers a non-looped FX to be re-fired every tickMs ms near the entity.
-- Returns the key string that can be passed to StopFakeLoop.
-- ---------------------------------------------------------------------------
function StartFakeLoop(dict, fxName, entity, offset, rot, scale, tickMs, maxDist)
    if not dict or not fxName or (entity == 0 or not DoesEntityExist(entity)) then
        return nil, "bad_params"
    end

    local key = keyForEntity(entity)
    fakeLoopByKey[key] = {
        ent     = entity,
        dict    = dict,
        name    = fxName,
        off     = offset,
        rot     = rot,
        scale   = scale,
        tick    = tickMs  or FAKE_LOOP_TICK,
        maxDist = maxDist or DEFAULT_MAX_DIST,
        enabled = true,
    }
    entityToFakeKey[entity] = key
    return key
end

exports("StartFakeLoop", StartFakeLoop)

-- ---------------------------------------------------------------------------
-- StopFakeLoop(keyOrEntity)
-- Removes the fake-loop entry by key string or entity handle.
-- Returns true on success, false if not found.
-- ---------------------------------------------------------------------------
function StopFakeLoop(keyOrEntity)
    local key = keyOrEntity
    if type(keyOrEntity) ~= "string" then
        key = entityToFakeKey[keyOrEntity]
    end
    if key then
        local entry = fakeLoopByKey[key]
        if entry then
            entityToFakeKey[entry.ent] = nil
            fakeLoopByKey[key] = nil
            return true
        end
    end
    return false
end

exports("StopFakeLoop", StopFakeLoop)

-- ---------------------------------------------------------------------------
-- ClearFxInRange(radius)
-- Removes all world particle effects within `radius` of the player ped.
-- ---------------------------------------------------------------------------
function ClearFxInRange(radius)
    local pos = GetEntityCoords(PlayerPedId())
    RemoveParticleFxInRange(pos.x, pos.y, pos.z, radius or 500.0)
end

exports("ClearFxInRange", ClearFxInRange)

-- Background cleanup: remove stale entity handles from loopedFxByEntity
CreateThread(function()
    while true do
        for entityKey, handle in pairs(loopedFxByEntity) do
            if handle ~= -1 and not DoesEntityExist(entityKey) then
                loopedFxByEntity[entityKey] = nil
            end
        end
        Wait(1000)
    end
end)

-- ---------------------------------------------------------------------------
-- onResourceStop — stop all FX and clear nearby particles on unload
-- ---------------------------------------------------------------------------
AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    StopAllFx()
    ClearFxInRange(200.0)
end)

-- =============================================================================
-- NET EVENTS — server-triggered FX on networked entities
-- =============================================================================

RegisterNetEvent("ptfx_core:cl_start_on_net")
AddEventHandler("ptfx_core:cl_start_on_net", function(netId, dict, fxName, offset, rot, scale, alpha, onBone, boneIdOrName)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if entity == 0 then return end

    if onBone then
        StartFxOnBone(dict, fxName, entity, boneIdOrName, offset, rot, scale, alpha)
    else
        StartFx(dict, fxName, entity, offset, rot, scale, alpha)
    end
end)

RegisterNetEvent("ptfx_core:cl_start_fake_on_net")
AddEventHandler("ptfx_core:cl_start_fake_on_net", function(netId, dict, fxName, offset, rot, scale, tickMs, maxDist)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if entity == 0 then return end
    StartFakeLoop(dict, fxName, entity, offset, rot, scale, tickMs, maxDist)
end)

RegisterNetEvent("ptfx_core:cl_stop_on_net")
AddEventHandler("ptfx_core:cl_stop_on_net", function(netId, alsoFakeLoop)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if entity ~= 0 then
        StopFx(entity)
        if alsoFakeLoop then
            StopFakeLoop(entity)
        end
    end
end)

RegisterNetEvent("ptfx_core:cl_stop_all")
AddEventHandler("ptfx_core:cl_stop_all", function()
    StopAllFx()
end)

-- =============================================================================
-- LOOPED / FAKE-LOOP FX AT WORLD COORDINATES
-- =============================================================================

-- coordFxByHandle: fxHandle → true  (for looped coord FX)
-- coordFakeLoops:  key      → entry (for fake coord FX)

local COORD_FAKE_TICK = FAKE_LOOP_TICK  -- same default tick as entity fake loop

-- ---------------------------------------------------------------------------
-- evictOldestCoordOrEntity()
-- When global cap is reached, stops the first found active coord/entity FX.
-- ---------------------------------------------------------------------------
local function evictOldestTotal()
    local total = countActiveLooped()
    for _ in pairs(coordFxByHandle) do total = total + 1 end
    if total < MAX_ACTIVE_FX then return end

    for entityKey, handle in pairs(loopedFxByEntity) do
        if handle and handle ~= -1 then
            StopParticleFxLooped(handle, false)
            loopedFxByEntity[entityKey] = nil
            return
        end
    end
    for handle in pairs(coordFxByHandle) do
        StopParticleFxLooped(handle, false)
        coordFxByHandle[handle] = nil
        return
    end
end

-- ---------------------------------------------------------------------------
-- startFxCoordInternal(dict, fxName, pos, rot, scale, alpha, networked)
-- Starts a looped particle at a world coordinate.
-- Returns: fxHandle on success, or nil, errorMsg.
-- ---------------------------------------------------------------------------
local function startFxCoordInternal(dict, fxName, pos, rot, scale, alpha, networked)
    if not pos then return nil, "no_pos" end

    loadPtfxAsset(dict)
    evictOldestTotal()

    rot   = rot   or vector3(0.0, 0.0, 0.0)
    scale = scale or DEFAULT_SCALE
    alpha = alpha or DEFAULT_ALPHA

    local startFn = networked and StartNetworkedParticleFxLoopedAtCoord
                               or StartParticleFxLoopedAtCoord

    local handle = startFn(
        fxName,
        pos.x, pos.y, pos.z,
        rot.x, rot.y, rot.z,
        scale,
        false, false, false
    )

    if not handle or handle == -1 then
        return nil, "start_failed"
    end

    SetParticleFxLoopedAlpha(handle, alpha)
    coordFxByHandle[handle] = true
    return handle
end

-- ---------------------------------------------------------------------------
-- StartFxCoord(dict, fxName, pos, rot, scale, alpha)
-- Starts a local looped FX at world position.
-- ---------------------------------------------------------------------------
function StartFxCoord(dict, fxName, pos, rot, scale, alpha)
    return startFxCoordInternal(dict, fxName, pos, rot, scale, alpha, false)
end

exports("StartFxCoord", StartFxCoord)

-- ---------------------------------------------------------------------------
-- StartFxCoordNet(dict, fxName, pos, rot, scale, alpha)
-- Starts a networked looped FX at world position.
-- ---------------------------------------------------------------------------
function StartFxCoordNet(dict, fxName, pos, rot, scale, alpha)
    return startFxCoordInternal(dict, fxName, pos, rot, scale, alpha, true)
end

exports("StartFxCoordNet", StartFxCoordNet)

-- ---------------------------------------------------------------------------
-- UpdateFxCoord(fxHandle, newOffset, newRot)
-- Updates the world offsets of an active looped coord FX.
-- Returns true on success, false if handle is invalid.
-- ---------------------------------------------------------------------------
function UpdateFxCoord(fxHandle, newOffset, newRot)
    if not fxHandle or fxHandle == -1 then return false end

    if newOffset or newRot then
        local ox, oy, oz = 0.0, 0.0, 0.0
        local rx, ry, rz = 0.0, 0.0, 0.0

        if newOffset then
            ox, oy, oz = newOffset.x, newOffset.y, newOffset.z
        end
        if newRot then
            rx, ry, rz = newRot.x, newRot.y, newRot.z
        end

        SetParticleFxLoopedOffsets(fxHandle, ox, oy, oz, rx, ry, rz)
    end

    return true
end

exports("UpdateFxCoord", UpdateFxCoord)

-- ---------------------------------------------------------------------------
-- StopFxCoord(fxHandle)
-- Stops a looped coord FX by handle.
-- Returns true on success, false if handle is invalid.
-- ---------------------------------------------------------------------------
function StopFxCoord(fxHandle)
    if not fxHandle or fxHandle == -1 then return false end
    StopParticleFxLooped(fxHandle, false)
    coordFxByHandle[fxHandle] = nil
    return true
end

exports("StopFxCoord", StopFxCoord)

-- =============================================================================
-- FAKE LOOP FX AT WORLD COORDINATES
-- (re-fires non-looped FX at a fixed world position on a timer)
-- =============================================================================

-- Background thread: fires non-looped coord FX for enabled coord fake-loop entries
CreateThread(function()
    while true do
        for _, entry in pairs(coordFakeLoops) do
            if entry.enabled and entry.pos then
                loadPtfxAsset(entry.dict)
                local rot   = entry.rot or vector3(0, 0, 0)
                local scale = entry.scale or DEFAULT_SCALE
                StartParticleFxNonLoopedAtCoord(
                    entry.name,
                    entry.pos.x, entry.pos.y, entry.pos.z,
                    rot.x, rot.y, rot.z,
                    scale,
                    false, false, false
                )
            end
        end
        Wait(COORD_FAKE_TICK)
    end
end)

-- ---------------------------------------------------------------------------
-- coordKey(pos) — stable string key derived from world position
-- ---------------------------------------------------------------------------
local function coordKey(pos)
    return string.format("coord:%.3f,%.3f,%.3f", pos.x, pos.y, pos.z)
end

-- ---------------------------------------------------------------------------
-- StartFakeLoopCoord(dict, fxName, pos, rot, scale, tickMs)
-- Registers a non-looped FX to be re-fired at world position every tickMs ms.
-- Returns key string for StopFakeLoopCoord.
-- ---------------------------------------------------------------------------
function StartFakeLoopCoord(dict, fxName, pos, rot, scale, tickMs)
    if not pos then return nil, "no_pos" end

    local key = coordKey(pos)
    coordFakeLoops[key] = {
        dict    = dict,
        name    = fxName,
        pos     = pos,
        rot     = rot,
        scale   = scale,
        tick    = tickMs or COORD_FAKE_TICK,
        enabled = true,
    }
    return key
end

exports("StartFakeLoopCoord", StartFakeLoopCoord)

-- ---------------------------------------------------------------------------
-- StopFakeLoopCoord(key)
-- Removes a fake-loop coord entry by its key string.
-- Returns true on success, false if not found.
-- ---------------------------------------------------------------------------
function StopFakeLoopCoord(key)
    if key and coordFakeLoops[key] then
        coordFakeLoops[key] = nil
        return true
    end
    return false
end

exports("StopFakeLoopCoord", StopFakeLoopCoord)

-- =============================================================================
-- DEBUG COMMANDS
-- =============================================================================

RegisterCommand("pfx_clear", function()
    ClearFxInRange(500.0)
end)

RegisterCommand("pfx_count", function()
    print(string.format("[ptfx_core] active looped: %d", CountActiveFx()))
end)
