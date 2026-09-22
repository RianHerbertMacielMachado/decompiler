local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = false
L1_1 = RegisterNetEvent
L2_1 = "esx_rpchat:avviso"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx_rpchat:avviso"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if not L0_2 then
    L0_2 = true
    L0_1 = L0_2
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = "Use ',' (comma) before message for global message, '.' (dot) for local message."
    L0_2(L1_2, L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "esx_rpchat:addticket"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx_rpchat:addticket"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = TriggerServerEvent
  L4_2 = "discord:ticket"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "avviaSuono"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "avviaSuono"
function L3_1(...)
  local L0_2, L1_2
  L0_2 = PlaySoundFrontend
  L1_2 = ...
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
L1_1 = false
L2_1 = RegisterNetEvent
L3_1 = "chat:Azione"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "chat:Azione"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = PlayerId
  L4_2 = L4_2()
  L5_2 = GetPlayerFromServerId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 == L4_2 then
    L6_2 = L1_1
    if not L6_2 then
      L6_2 = true
      L1_1 = L6_2
      L6_2 = exports
      L6_2 = L6_2.striano_combat
      L7_2 = L6_2
      L6_2 = L6_2.submex
      L8_2 = "Messaggio inviato a tutti nel raggio di 100 metri."
      L6_2(L7_2, L8_2)
    end
  end
  L6_2 = GetEntityCoords
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = L6_2 - A3_2
  L6_2 = #L6_2
  if L6_2 < 100.0 then
    L6_2 = TriggerEvent
    L7_2 = "chat:addMessage"
    L8_2 = {}
    L8_2.template = "<font color=\"#088A08\">#{0} [{1}] {2}</font><br></div>"
    L9_2 = {}
    L10_2 = A2_2
    L11_2 = A0_2
    L12_2 = A1_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L8_2.args = L9_2
    L6_2(L7_2, L8_2)
    L6_2 = PlaySoundFrontend
    L7_2 = -1
    L8_2 = "DELETE"
    L9_2 = "HUD_DEATHMATCH_SOUNDSET"
    L10_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "chat:AzioneVicino"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "chat:AzioneVicino"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2 = L2_2(L3_2)
  if L2_2 == A0_2 then
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = A1_2
      L0_3 = #L0_3
      L0_3 = L0_3 * 100
      L1_3 = PlayFacialAnim
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = "mic_chatter"
      L4_3 = "mp_facial"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = Wait
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = PlayFacialAnim
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = "mood_normal_1"
      L4_3 = "facials@gen_male@base"
      L1_3(L2_3, L3_3, L4_3)
    end
    L2_2(L3_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = nil
L3_1 = RegisterNetEvent
L4_1 = "kyk_privatemessages:lastSender"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "kyk_privatemessages:lastSender"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_1 = A0_2
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "NAV_UP_DOWN"
  L4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = {}
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  L4_2 = A0_2 - L3_2
  L4_2 = #L4_2
  L5_2 = nil
  L6_2 = IsPedInAnyVehicle
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = false
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = GetGameplayCamFov
    L6_2 = L6_2()
    L6_2 = L6_2 * L4_2
    L7_2 = 750
    L5_2 = L7_2 / L6_2
  else
    L6_2 = GetGameplayCamFov
    L6_2 = L6_2()
    L6_2 = L6_2 * L4_2
    L7_2 = 550
    L5_2 = L7_2 / L6_2
  end
  L6_2 = {}
  L6_2.r = 230
  L6_2.g = 230
  L6_2.b = 230
  L6_2.a = 200
  L7_2 = SetTextColour
  L8_2 = L6_2.r
  L9_2 = L6_2.g
  L10_2 = L6_2.b
  L11_2 = L6_2.a
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = SetTextScale
  L8_2 = 0.0
  L9_2 = 0.3 * L5_2
  L7_2(L8_2, L9_2)
  L7_2 = SetTextFont
  L8_2 = 4
  L7_2(L8_2)
  L7_2 = SetTextDropshadow
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 255
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = SetTextOutline
  L7_2()
  L7_2 = SetTextCentre
  L8_2 = true
  L7_2(L8_2)
  L7_2 = BeginTextCommandDisplayText
  L8_2 = "STRING"
  L7_2(L8_2)
  L7_2 = AddTextComponentSubstringPlayerName
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = SetDrawOrigin
  L8_2 = A0_2
  L9_2 = 0
  L7_2(L8_2, L9_2)
  L7_2 = EndTextCommandDisplayText
  L8_2 = 0.0
  L9_2 = 0.0
  L7_2(L8_2, L9_2)
  L7_2 = ClearDrawOrigin
  L7_2()
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = "..."
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  L4_2 = A0_2 - L3_2
  L4_2 = #L4_2
  L5_2 = nil
  L6_2 = IsPedInAnyVehicle
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = false
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = GetGameplayCamFov
    L6_2 = L6_2()
    L6_2 = L6_2 * L4_2
    L7_2 = 750
    L5_2 = L7_2 / L6_2
  else
    L6_2 = GetGameplayCamFov
    L6_2 = L6_2()
    L6_2 = L6_2 * L4_2
    L7_2 = 550
    L5_2 = L7_2 / L6_2
  end
  L6_2 = {}
  L6_2.r = 230
  L6_2.g = 230
  L6_2.b = 230
  L6_2.a = 150
  L7_2 = SetTextColour
  L8_2 = L6_2.r
  L9_2 = L6_2.g
  L10_2 = L6_2.b
  L11_2 = L6_2.a
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = SetTextScale
  L8_2 = 0.0
  L9_2 = 0.3 * L5_2
  L7_2(L8_2, L9_2)
  L7_2 = SetTextFont
  L8_2 = 4
  L7_2(L8_2)
  L7_2 = SetTextDropshadow
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 255
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = SetTextOutline
  L7_2()
  L7_2 = SetTextCentre
  L8_2 = true
  L7_2(L8_2)
  L7_2 = BeginTextCommandDisplayText
  L8_2 = "STRING"
  L7_2(L8_2)
  L7_2 = AddTextComponentSubstringPlayerName
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = SetDrawOrigin
  L8_2 = A0_2
  L9_2 = 0
  L7_2(L8_2, L9_2)
  L7_2 = EndTextCommandDisplayText
  L8_2 = 0.0
  L9_2 = 0.0
  L7_2(L8_2, L9_2)
  L7_2 = ClearDrawOrigin
  L7_2()
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityBonePosition_2
  L4_2 = L2_2
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GetEntityBonePosition_2
  L5_2 = A0_2
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2 - L4_2
  L5_2 = #L5_2
  if L5_2 <= 35 then
    L6_2 = L3_1
    L7_2 = L3_1
    L7_2 = L7_2[A0_2]
    if not L7_2 then
      L7_2 = 1
    end
    L7_2 = L7_2 + 1
    L6_2[A0_2] = L7_2
    L6_2 = true
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = A1_2
      L0_3 = #L0_3
      L0_3 = L0_3 * 550
      L1_3 = Wait
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = false
      L6_2 = L1_3
    end
    L7_2(L8_2)
    L7_2 = L3_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2 * 0.1
    L7_2 = 1.0 + L7_2
    while L6_2 do
      L8_2 = HasEntityClearLosToEntity
      L9_2 = L2_2
      L10_2 = A0_2
      L11_2 = 17
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.unpack
        L9_2 = GetEntityBonePosition_2
        L10_2 = A0_2
        L11_2 = 0
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2, L11_2)
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L11_2 = L10_2 - 0.7
        L10_2 = L11_2 + L7_2
        L11_2 = ""
        L12_2 = dell
        if nil ~= L12_2 then
          L13_2 = A1_2
          L12_2 = A1_2.sub
          L14_2 = dell
          L12_2 = L12_2(L13_2, L14_2)
          L11_2 = L12_2
        else
          L11_2 = A1_2
        end
        L12_2 = L4_1
        L13_2 = vector3
        L14_2 = L8_2
        L15_2 = L9_2
        L16_2 = L10_2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
      end
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
    end
    L8_2 = Wait
    L9_2 = 500
    L8_2(L9_2)
    L8_2 = L3_1
    L8_2 = L8_2[A0_2]
    if L8_2 > 1 then
      L8_2 = L3_1
      L8_2[A0_2] = 0
    end
  end
end
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityBonePosition_2
  L5_2 = L3_2
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = GetEntityBonePosition_2
  L6_2 = A0_2
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L4_2 - L5_2
  L6_2 = #L6_2
  if L6_2 <= 35 then
    L7_2 = L3_1
    L8_2 = L3_1
    L8_2 = L8_2[A0_2]
    if not L8_2 then
      L8_2 = 1
    end
    L8_2 = L8_2 + 1
    L7_2[A0_2] = L8_2
    L7_2 = true
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = A2_2
      L0_3 = #L0_3
      L0_3 = L0_3 * 150
      L1_3 = Wait
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = false
      L7_2 = L1_3
    end
    L8_2(L9_2)
    L8_2 = L3_1
    L8_2 = L8_2[A0_2]
    L8_2 = L8_2 * 0.1
    L8_2 = 1.0 + L8_2
    while L7_2 do
      L9_2 = HasEntityClearLosToEntity
      L10_2 = L3_2
      L11_2 = A0_2
      L12_2 = 17
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      if L9_2 then
        L9_2 = table
        L9_2 = L9_2.unpack
        L10_2 = GetEntityBonePosition_2
        L11_2 = A0_2
        L12_2 = 0
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2)
        L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L12_2 = L11_2 - 0.7
        L11_2 = L12_2 + L8_2
        L12_2 = ""
        L13_2 = dell
        if nil ~= L13_2 then
          L14_2 = A2_2
          L13_2 = A2_2.sub
          L15_2 = dell
          L13_2 = L13_2(L14_2, L15_2)
          L12_2 = L13_2
        else
          L12_2 = A2_2
        end
        L13_2 = L5_1
        L14_2 = vector3
        L15_2 = L9_2
        L16_2 = L10_2
        L17_2 = L11_2
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
      end
      L9_2 = Wait
      L10_2 = 0
      L9_2(L10_2)
    end
    L9_2 = Wait
    L10_2 = 500
    L9_2(L10_2)
    L9_2 = L3_1
    L9_2 = L9_2[A0_2]
    if L9_2 > 1 then
      L9_2 = L3_1
      L9_2[A0_2] = 0
    end
  end
end
L8_1 = RegisterNetEvent
L9_1 = "3dme:shareDisplayVicino"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "3dme:shareDisplayVicino"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerFromServerId
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if -1 ~= L2_2 then
    L3_2 = GetPlayerPed
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L6_1
    L5_2 = L3_2
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "3dme:shareDisplayVicino2"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "3dme:shareDisplayVicino2"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPlayerFromServerId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if -1 ~= L3_2 then
    L4_2 = GetPlayerPed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = L7_1
    L6_2 = L4_2
    L7_2 = A0_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L8_1(L9_1, L10_1)
