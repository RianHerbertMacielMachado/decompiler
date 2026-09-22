-- 3dmeclient.lua
-- 3D text display system for FiveM.
-- Renders floating 3D text above player peds, with optional lip-sync facial animation.
-- Handles chat messages, "think" (pensa) bubbles, dice roll results, and status text.

local activeThreads = {}  -- tracks how many display threads are active per entity
local threadCount   = 0   -- global cap so we don't spawn too many display threads
local DISPLAY_DURATION = 7000  -- ms a standard message stays visible

--- Draw scaled 3D text (chat/speech style) above a world position.
--- @param pos   vector3   World position to draw at
--- @param text  string    Text to display (will be uppercased)
local function draw3DText(pos, text)
    local camCoord = GetGameplayCamCoord()
    local dist     = #(pos - camCoord)
    local fov      = GetGameplayCamFov()
    local scale

    if IsPedInAnyVehicle(PlayerPedId(), false) then
        scale = 400 / (fov * dist)
    else
        scale = 300 / (fov * dist)
    end

    SetTextColour(230, 230, 230, 200)
    SetTextScale(0.0, 0.22 * scale)
    SetTextFont(4)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextOutline()
    SetTextCentre(true)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(string.upper(text))
    SetDrawOrigin(pos, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end

--- Draw scaled 3D text in a distinct blue/cyan colour (for "dado" / status style).
--- @param pos   vector3   World position
--- @param text  string    Text to display
local function draw3DTextBlue(pos, text)
    local camCoord = GetGameplayCamCoord()
    local dist     = #(pos - camCoord)
    local scale    = 200 / (GetGameplayCamFov() * dist)

    SetTextColour(135, 204, 235, 200)
    SetTextScale(0.0, 0.5 * scale)
    SetTextFont(4)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextOutline()
    SetTextCentre(true)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(pos, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end

--- Show a speech/chat 3D text above a ped for DISPLAY_DURATION ms.
--- Optionally plays a lip-sync facial animation.
--- @param targetPed   Ped entity
--- @param message     string  Text to show
--- @param withAnim    bool    Whether to play lip-sync anim
--- @param subOffset   number  Optional: only show message starting at this char index
local function showSpeechText(targetPed, message, withAnim, subOffset)
    local myPed   = PlayerPedId()
    local myPos   = GetEntityBonePosition_2(myPed, 0)
    local tgtPos  = GetEntityBonePosition_2(targetPed, 0)
    if #(myPos - tgtPos) > 35 then return end

    if threadCount > 25 then return end
    threadCount = threadCount + 1
    activeThreads[targetPed] = (activeThreads[targetPed] or 0) + 1

    local running = true
    CreateThread(function()
        -- Optional lip-sync: chatter for half the duration, then reset
        if withAnim then
            PlayFacialAnim(targetPed, "mic_chatter", "mp_facial")
        end
        Wait(DISPLAY_DURATION / 2)
        if withAnim then
            PlayFacialAnim(targetPed, "mood_normal_1", "facials@gen_male@base")
        end
        Wait(DISPLAY_DURATION / 2)
        running = false
    end)

    -- Vertical scale offset based on how many messages are stacked
    local stackScale = 1.0 + (activeThreads[targetPed] * 0.1)

    while running do
        if HasEntityClearLosToEntity(myPed, targetPed, 17) then
            local bx, by, bz = table.unpack(GetEntityBonePosition_2(targetPed, 0))
            local displayZ = (bz - 0.05) + stackScale
            local displayText = (subOffset ~= nil) and message:sub(subOffset) or message
            draw3DText(vector3(bx, by, displayZ), displayText)
        end
        Wait(0)
    end

    threadCount = threadCount - 1
    if (activeThreads[targetPed] or 0) > 1 then
        activeThreads[targetPed] = 0
    end
end

--- Show a "think/pensa" bubble (skipped if message contains "pensa"/"Pensa").
--- Displays in a lower position with blue text.
--- @param targetPed  Ped entity
--- @param message    string
--- @param withAnim   bool
local function showThinkText(targetPed, message, withAnim)
    -- If the message itself is "pensa" / "Pensa", skip (it's a thought indicator, not text)
    if string.match(message, "pensa") or string.match(message, "Pensa") then
        return
    end

    local myPed  = PlayerPedId()
    local myPos  = GetEntityBonePosition_2(myPed, 0)
    local tgtPos = GetEntityBonePosition_2(targetPed, 0)
    if #(myPos - tgtPos) > 35 then return end

    if threadCount > 25 then return end
    threadCount = threadCount + 1
    activeThreads[targetPed] = (activeThreads[targetPed] or 0) + 1

    local running = true
    CreateThread(function()
        if withAnim then
            PlayFacialAnim(targetPed, "mic_chatter", "mp_facial")
        end
        Wait(DISPLAY_DURATION / 2)
        if withAnim then
            PlayFacialAnim(targetPed, "mood_normal_1", "facials@gen_male@base")
        end
        Wait(DISPLAY_DURATION / 2)
        running = false
    end)

    local stackScale = 0.8 + (activeThreads[targetPed] * 0.1)
    -- Show the message from char 2 onward (strips the leading emote prefix)
    local displayText = message:sub(2)

    while running do
        if HasEntityClearLosToEntity(myPed, targetPed, 17) then
            local bx, by, bz = table.unpack(GetEntityBonePosition_2(targetPed, 0))
            local displayZ = (bz - 1.7) + stackScale
            draw3DText(vector3(bx, by, displayZ), displayText)
        end
        Wait(0)
    end

    Wait(500)
    threadCount = threadCount - 1
    if (activeThreads[targetPed] or 0) > 1 then
        activeThreads[targetPed] = 0
    end
end

--- Show a dice-roll / status label above a ped for 15 seconds (blue text).
--- @param targetPed  Ped entity
--- @param label      string
local function showStatusText(targetPed, label)
    local myPed  = PlayerPedId()
    local myPos  = GetEntityBonePosition_2(myPed, 0)
    local tgtPos = GetEntityBonePosition_2(targetPed, 0)
    if #(myPos - tgtPos) > 35 then return end

    if threadCount > 25 then return end
    threadCount = threadCount + 1
    activeThreads[targetPed] = (activeThreads[targetPed] or 0) + 1

    local running = true
    CreateThread(function()
        Wait(15000)
        running = false
    end)

    local stackScale = 0.8 + (activeThreads[targetPed] * 0.1)

    while running do
        if HasEntityClearLosToEntity(myPed, targetPed, 17) then
            local bx, by, bz = table.unpack(GetEntityBonePosition_2(targetPed, 0))
            local displayZ = (bz - 0.5) + stackScale
            draw3DTextBlue(vector3(bx, by, displayZ), label)
        end
        Wait(0)
    end

    threadCount = threadCount - 1
    activeThreads[targetPed] = (activeThreads[targetPed] or 0) - 1
end

-- ─── 3dme:shareDisplay ───────────────────────────────────────────────────
-- Chat/speech 3D text (standard, with optional lip-sync and sub-offset).
RegisterNetEvent("3dme:shareDisplay")
AddEventHandler("3dme:shareDisplay", function(message, senderServerId, withAnim, subOffset)
    local player = GetPlayerFromServerId(senderServerId)
    if player == -1 then return end
    local ped = GetPlayerPed(player)
    showSpeechText(ped, message, withAnim, subOffset)
end)

-- ─── 3dme:shareDisplayBasso ──────────────────────────────────────────────
-- Think/whisper bubble (lower position, "pensa" filter).
RegisterNetEvent("3dme:shareDisplayBasso")
AddEventHandler("3dme:shareDisplayBasso", function(message, senderServerId, withAnim)
    local player = GetPlayerFromServerId(senderServerId)
    if player == -1 then return end
    local ped = GetPlayerPed(player)
    showThinkText(ped, message, withAnim)
end)

-- ─── 3dme:shareDisplayDado ───────────────────────────────────────────────
-- Single dice roll result: "Dado: [N]"
-- The roller also gets a handshake2 emote.
RegisterNetEvent("3dme:shareDisplayDado")
AddEventHandler("3dme:shareDisplayDado", function(rollerServerId, result)
    local player = GetPlayerFromServerId(rollerServerId)
    if GetPlayerFromServerId(rollerServerId) == PlayerId() then
        ExecuteCommand("e handshake2")
    end
    if player == -1 then return end
    local ped = GetPlayerPed(player)
    Wait(2000)
    showStatusText(ped, "Dado: [" .. result .. "]")
end)

-- ─── 3dme:shareDisplayDado2 ──────────────────────────────────────────────
-- Two dice: "Dado: [N] [M]"
RegisterNetEvent("3dme:shareDisplayDado2")
AddEventHandler("3dme:shareDisplayDado2", function(rollerServerId, r1, r2)
    local player = GetPlayerFromServerId(rollerServerId)
    if player == PlayerId() then
        ExecuteCommand("e handshake2")
    end
    if player == -1 then return end
    local ped = GetPlayerPed(player)
    Wait(2000)
    showStatusText(ped, "Dado: [" .. r1 .. "] [" .. r2 .. "]")
end)

-- ─── 3dme:shareDisplayDado3 ──────────────────────────────────────────────
-- Three dice: "Dado: [N] [M] [P]"
RegisterNetEvent("3dme:shareDisplayDado3")
AddEventHandler("3dme:shareDisplayDado3", function(rollerServerId, r1, r2, r3)
    local player = GetPlayerFromServerId(rollerServerId)
    if player == PlayerId() then
        ExecuteCommand("e handshake2")
    end
    if player == -1 then return end
    local ped = GetPlayerPed(player)
    Wait(2000)
    showStatusText(ped, "Dado: [" .. r1 .. "] [" .. r2 .. "] [" .. r3 .. "]")
end)
