-- rpchatclient.lua
-- RP Chat Client — speech bubbles, 3D text, lip sync, private message sound, chat events

local notifiedAboutChat = false  -- one-time chat usage hint flag
local lastPMSender = nil         -- stores the last private message sender name
local typingTrackers = {}        -- per-ped typing animation state (unused internal ref)

-- ─────────────────────────────────────────────
-- Chat Hint Notification
-- ─────────────────────────────────────────────

RegisterNetEvent("esx_rpchat:avviso")
AddEventHandler("esx_rpchat:avviso", function()
    if notifiedAboutChat then return end
    notifiedAboutChat = true
    exports.striano_core:submexInfo("Chat", "Usa /me, /do, /ooc, /pm per parlare in RP.", 6000)
end)

-- ─────────────────────────────────────────────
-- Discord Ticket Forwarding
-- ─────────────────────────────────────────────

RegisterNetEvent("esx_rpchat:addticket")
AddEventHandler("esx_rpchat:addticket", function(ticketData)
    TriggerServerEvent("discord:ticket", ticketData)
end)

-- ─────────────────────────────────────────────
-- Sound Passthrough
-- ─────────────────────────────────────────────

RegisterNetEvent("avviaSuono")
AddEventHandler("avviaSuono", function(soundName, soundSet)
    PlaySoundFrontend(-1, soundName, soundSet, true)
end)

-- ─────────────────────────────────────────────
-- Global Chat Action (100m range, green template)
-- ─────────────────────────────────────────────

RegisterNetEvent("chat:Azione")
AddEventHandler("chat:Azione", function(senderServerId, text)
    local myPos = GetEntityCoords(PlayerPedId())
    local senderPed = GetPlayerPed(GetPlayerFromServerId(senderServerId))
    if not DoesEntityExist(senderPed) then return end

    local senderPos = GetEntityCoords(senderPed)
    local distance = #(myPos - senderPos)
    if distance > 100.0 then return end

    TriggerEvent("chat:addMessage", {
        color = { 0, 200, 100 },
        multiline = true,
        args = { "Azione", text }
    })
    PlaySoundFrontend(-1, "DELETE", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end)

-- ─────────────────────────────────────────────
-- Local Action — Lip Sync (AzioneVicino)
-- ─────────────────────────────────────────────

RegisterNetEvent("chat:AzioneVicino")
AddEventHandler("chat:AzioneVicino", function(senderServerId, text)
    local senderPlayer = GetPlayerFromServerId(senderServerId)
    local senderPed = GetPlayerPed(senderPlayer)
    if not DoesEntityExist(senderPed) then return end

    -- Play lip sync facial animation proportional to text length
    local duration = #text * 100
    PlayFacialAnim(senderPed, "mic_chatter", "mp_facial")
    CreateThread(function()
        Wait(duration)
        StopAnimTask(senderPed, "mp_facial", "mic_chatter", 1.0)
    end)
end)

-- ─────────────────────────────────────────────
-- Private Message — Store Last Sender
-- ─────────────────────────────────────────────

RegisterNetEvent("kyk_privatemessages:lastSender")
AddEventHandler("kyk_privatemessages:lastSender", function(senderName)
    lastPMSender = senderName
    PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end)

-- ─────────────────────────────────────────────
-- 3D Text Rendering Helpers
-- ─────────────────────────────────────────────

local function DrawText3DAtPos(worldPos, text)
    local onScreen, screenX, screenY = World3dToScreen2d(worldPos.x, worldPos.y, worldPos.z)
    if not onScreen then return end

    local camPos = GetGameplayCamCoords()
    local distance = #(camPos - worldPos)
    local scaleFactor = math.max(0.1, 0.3 * (1.0 - distance / 20.0))

    SetTextScale(0.0, scaleFactor)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 200)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    DrawText(screenX, screenY)
end

local function DrawText3DTyping(worldPos, text)
    local onScreen, screenX, screenY = World3dToScreen2d(worldPos.x, worldPos.y, worldPos.z)
    if not onScreen then return end

    local camPos = GetGameplayCamCoords()
    local distance = #(camPos - worldPos)
    local scaleFactor = math.max(0.1, 0.25 * (1.0 - distance / 20.0))

    SetTextScale(0.0, scaleFactor)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(200, 200, 200, 150)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 100)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    DrawText(screenX, screenY)
end

-- ─────────────────────────────────────────────
-- Speech Bubble — Show text above a ped (35m range, LOS check)
-- ─────────────────────────────────────────────

local function ShowSpeechBubble(senderServerId, text)
    local senderPlayer = GetPlayerFromServerId(senderServerId)
    if senderPlayer == -1 then return end
    local senderPed = GetPlayerPed(senderPlayer)
    if not DoesEntityExist(senderPed) then return end

    local myPed = PlayerPedId()
    local myPos = GetEntityCoords(myPed)
    local senderPos = GetEntityCoords(senderPed)
    local distance = #(myPos - senderPos)
    if distance > 35.0 then return end

    -- Line-of-sight check
    local hasLOS = HasEntityClearLosToEntity(myPed, senderPed, 17)
    if not hasLOS then return end

    local boneIndex = GetEntityBoneIndexByName(senderPed, "SKEL_Head")
    local duration = #text * 550
    local endTime = GetGameTimer() + duration

    CreateThread(function()
        while GetGameTimer() < endTime do
            if not DoesEntityExist(senderPed) then break end
            local headPos = GetWorldPositionOfEntityBone(senderPed, boneIndex)
            headPos = vector3(headPos.x, headPos.y, headPos.z + 0.35)
            DrawText3DAtPos(headPos, text)
            Wait(0)
        end
    end)
end

-- ─────────────────────────────────────────────
-- Typing Indicator — Show "..." above a ped (35m range, LOS check)
-- ─────────────────────────────────────────────

local function ShowTypingIndicator(senderServerId, text)
    local senderPlayer = GetPlayerFromServerId(senderServerId)
    if senderPlayer == -1 then return end
    local senderPed = GetPlayerPed(senderPlayer)
    if not DoesEntityExist(senderPed) then return end

    local myPed = PlayerPedId()
    local myPos = GetEntityCoords(myPed)
    local senderPos = GetEntityCoords(senderPed)
    local distance = #(myPos - senderPos)
    if distance > 35.0 then return end

    local hasLOS = HasEntityClearLosToEntity(myPed, senderPed, 17)
    if not hasLOS then return end

    local boneIndex = GetEntityBoneIndexByName(senderPed, "SKEL_Head")
    local duration = #text * 150
    local endTime = GetGameTimer() + duration

    CreateThread(function()
        while GetGameTimer() < endTime do
            if not DoesEntityExist(senderPed) then break end
            local headPos = GetWorldPositionOfEntityBone(senderPed, boneIndex)
            headPos = vector3(headPos.x, headPos.y, headPos.z + 0.35)
            DrawText3DTyping(headPos, "...")
            Wait(0)
        end
    end)
end

-- ─────────────────────────────────────────────
-- 3D Speech Bubble Events (3dme system)
-- ─────────────────────────────────────────────

-- Speech bubble: show spoken text above nearby ped
RegisterNetEvent("3dme:shareDisplayVicino")
AddEventHandler("3dme:shareDisplayVicino", function(senderServerId, text)
    ShowSpeechBubble(senderServerId, text)
end)

-- Typing indicator: show "..." while ped is typing
RegisterNetEvent("3dme:shareDisplayVicino2")
AddEventHandler("3dme:shareDisplayVicino2", function(senderServerId, text, senderServerIdConfirm)
    ShowTypingIndicator(senderServerId, text)
end)
