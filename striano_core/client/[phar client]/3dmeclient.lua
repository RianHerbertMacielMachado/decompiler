local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = 0
L2_1 = 7000
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = string
  L2_2 = L2_2.upper
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  L4_2 = A0_2 - L3_2
  L4_2 = #L4_2
  L5_2 = nil
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = IsPedInAnyVehicle
  L8_2 = L6_2
  L9_2 = false
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L7_2 = GetGameplayCamFov
    L7_2 = L7_2()
    L7_2 = L7_2 * L4_2
    L8_2 = 400
    L5_2 = L8_2 / L7_2
  else
    L7_2 = GetGameplayCamFov
    L7_2 = L7_2()
    L7_2 = L7_2 * L4_2
    L8_2 = 300
    L5_2 = L8_2 / L7_2
  end
  L7_2 = {}
  L7_2.r = 230
  L7_2.g = 230
  L7_2.b = 230
  L7_2.a = 200
  L8_2 = SetTextColour
  L9_2 = L7_2.r
  L10_2 = L7_2.g
  L11_2 = L7_2.b
  L12_2 = L7_2.a
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = SetTextScale
  L9_2 = 0.0
  L10_2 = 0.22 * L5_2
  L8_2(L9_2, L10_2)
  L8_2 = SetTextFont
  L9_2 = 4
  L8_2(L9_2)
  L8_2 = SetTextDropshadow
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 255
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = SetTextOutline
  L8_2()
  L8_2 = SetTextCentre
  L9_2 = true
  L8_2(L9_2)
  L8_2 = BeginTextCommandDisplayText
  L9_2 = "STRING"
  L8_2(L9_2)
  L8_2 = AddTextComponentSubstringPlayerName
  L9_2 = L2_2
  L8_2(L9_2)
  L8_2 = SetDrawOrigin
  L9_2 = A0_2
  L10_2 = 0
  L8_2(L9_2, L10_2)
  L8_2 = EndTextCommandDisplayText
  L9_2 = 0.0
  L10_2 = 0.0
  L8_2(L9_2, L10_2)
  L8_2 = ClearDrawOrigin
  L8_2()
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = A0_2 - L2_2
  L3_2 = #L3_2
  L4_2 = GetGameplayCamFov
  L4_2 = L4_2()
  L4_2 = L4_2 * L3_2
  L5_2 = 200
  L4_2 = L5_2 / L4_2
  L5_2 = {}
  L5_2.r = 135
  L5_2.g = 204
  L5_2.b = 235
  L5_2.a = 200
  L6_2 = SetTextColour
  L7_2 = L5_2.r
  L8_2 = L5_2.g
  L9_2 = L5_2.b
  L10_2 = L5_2.a
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = SetTextScale
  L7_2 = 0.0
  L8_2 = 0.5 * L4_2
  L6_2(L7_2, L8_2)
  L6_2 = SetTextFont
  L7_2 = 4
  L6_2(L7_2)
  L6_2 = SetTextDropshadow
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = SetTextOutline
  L6_2()
  L6_2 = SetTextCentre
  L7_2 = true
  L6_2(L7_2)
  L6_2 = BeginTextCommandDisplayText
  L7_2 = "STRING"
  L6_2(L7_2)
  L6_2 = AddTextComponentSubstringPlayerName
  L7_2 = A1_2
  L6_2(L7_2)
  L6_2 = SetDrawOrigin
  L7_2 = A0_2
  L8_2 = 0
  L6_2(L7_2, L8_2)
  L6_2 = EndTextCommandDisplayText
  L7_2 = 0.0
  L8_2 = 0.0
  L6_2(L7_2, L8_2)
  L6_2 = ClearDrawOrigin
  L6_2()
end
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityBonePosition_2
  L6_2 = L4_2
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = GetEntityBonePosition_2
  L7_2 = A0_2
  L8_2 = 0
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L5_2 - L6_2
  L7_2 = #L7_2
  if L7_2 <= 35 then
    L8_2 = L1_1
    if L8_2 > 25 then
      return
    end
    L8_2 = L1_1
    L8_2 = L8_2 + 1
    L1_1 = L8_2
    L8_2 = L0_1
    L9_2 = L0_1
    L9_2 = L9_2[A0_2]
    if not L9_2 then
      L9_2 = 1
    end
    L9_2 = L9_2 + 1
    L8_2[A0_2] = L9_2
    L8_2 = true
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A2_2
      if L0_3 then
        L0_3 = PlayFacialAnim
        L1_3 = A0_2
        L2_3 = "mic_chatter"
        L3_3 = "mp_facial"
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = Wait
      L1_3 = L2_1
      L1_3 = L1_3 / 2
      L0_3(L1_3)
      L0_3 = A2_2
      if L0_3 then
        L0_3 = PlayFacialAnim
        L1_3 = A0_2
        L2_3 = "mood_normal_1"
        L3_3 = "facials@gen_male@base"
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = Wait
      L1_3 = L2_1
      L1_3 = L1_3 / 2
      L0_3(L1_3)
      L0_3 = false
      L8_2 = L0_3
    end
    L9_2(L10_2)
    L9_2 = L0_1
    L9_2 = L9_2[A0_2]
    L9_2 = L9_2 * 0.1
    L9_2 = 1.0 + L9_2
    while L8_2 do
      L10_2 = HasEntityClearLosToEntity
      L11_2 = L4_2
      L12_2 = A0_2
      L13_2 = 17
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      if L10_2 then
        L10_2 = table
        L10_2 = L10_2.unpack
        L11_2 = GetEntityBonePosition_2
        L12_2 = A0_2
        L13_2 = 0
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2, L13_2)
        L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        L13_2 = L12_2 - 0.05
        L12_2 = L13_2 + L9_2
        L13_2 = ""
        if nil ~= A3_2 then
          L15_2 = A1_2
          L14_2 = A1_2.sub
          L16_2 = A3_2
          L14_2 = L14_2(L15_2, L16_2)
          L13_2 = L14_2
        else
          L13_2 = A1_2
        end
        L14_2 = L3_1
        L15_2 = vector3
        L16_2 = L10_2
        L17_2 = L11_2
        L18_2 = L12_2
        L15_2 = L15_2(L16_2, L17_2, L18_2)
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
      L10_2 = Wait
      L11_2 = 0
      L10_2(L11_2)
    end
    L10_2 = L1_1
    L10_2 = L10_2 - 1
    L1_1 = L10_2
    L10_2 = L0_1
    L10_2 = L10_2[A0_2]
    if L10_2 > 1 then
      L10_2 = L0_1
      L10_2[A0_2] = 0
    end
  end
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = string
  L3_2 = L3_2.match
  L4_2 = A1_2
  L5_2 = "pensa"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = string
    L3_2 = L3_2.match
    L4_2 = A1_2
    L5_2 = "Pensa"
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
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
    L7_2 = L1_1
    if L7_2 > 25 then
      return
    end
    L7_2 = L1_1
    L7_2 = L7_2 + 1
    L1_1 = L7_2
    L7_2 = L0_1
    L8_2 = L0_1
    L8_2 = L8_2[A0_2]
    if not L8_2 then
      L8_2 = 1
    end
    L8_2 = L8_2 + 1
    L7_2[A0_2] = L8_2
    L7_2 = true
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A2_2
      if L0_3 then
        L0_3 = PlayFacialAnim
        L1_3 = A0_2
        L2_3 = "mic_chatter"
        L3_3 = "mp_facial"
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = Wait
      L1_3 = L2_1
      L1_3 = L1_3 / 2
      L0_3(L1_3)
      L0_3 = A2_2
      if L0_3 then
        L0_3 = PlayFacialAnim
        L1_3 = A0_2
        L2_3 = "mood_normal_1"
        L3_3 = "facials@gen_male@base"
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = Wait
      L1_3 = L2_1
      L1_3 = L1_3 / 2
      L0_3(L1_3)
      L0_3 = false
      L7_2 = L0_3
    end
    L8_2(L9_2)
    L8_2 = L0_1
    L8_2 = L8_2[A0_2]
    L8_2 = L8_2 * 0.1
    L8_2 = 0.8 + L8_2
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
        L12_2 = L11_2 - 1.7
        L11_2 = L12_2 + L8_2
        L13_2 = A1_2
        L12_2 = A1_2.sub
        L14_2 = 2
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = L3_1
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
    L9_2 = L1_1
    L9_2 = L9_2 - 1
    L1_1 = L9_2
    L9_2 = L0_1
    L9_2 = L9_2[A0_2]
    if L9_2 > 1 then
      L9_2 = L0_1
      L9_2[A0_2] = 0
    end
  end
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
    L6_2 = L1_1
    if L6_2 > 25 then
      return
    end
    L6_2 = L1_1
    L6_2 = L6_2 + 1
    L1_1 = L6_2
    L6_2 = L0_1
    L7_2 = L0_1
    L7_2 = L7_2[A0_2]
    if not L7_2 then
      L7_2 = 1
    end
    L7_2 = L7_2 + 1
    L6_2[A0_2] = L7_2
    L6_2 = true
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 15000
      L0_3(L1_3)
      L0_3 = false
      L6_2 = L0_3
    end
    L7_2(L8_2)
    L7_2 = L0_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2 * 0.1
    L7_2 = 0.8 + L7_2
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
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2)
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L11_2 = L10_2 - 0.5
        L10_2 = L11_2 + L7_2
        L11_2 = L4_1
        L12_2 = vector3
        L13_2 = L8_2
        L14_2 = L9_2
        L15_2 = L10_2
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = A1_2
        L11_2(L12_2, L13_2)
      end
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
    end
    L8_2 = L1_1
    L8_2 = L8_2 - 1
    L1_1 = L8_2
    L8_2 = L0_1
    L9_2 = L0_1
    L9_2 = L9_2[A0_2]
    L9_2 = L9_2 - 1
    L8_2[A0_2] = L9_2
  end
end
L8_1 = RegisterNetEvent
L9_1 = "3dme:shareDisplay"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "3dme:shareDisplay"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = GetPlayerFromServerId
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if -1 ~= L4_2 then
    L5_2 = GetPlayerPed
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L5_1
    L7_2 = L5_2
    L8_2 = A0_2
    L9_2 = A2_2
    L10_2 = A3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "3dme:shareDisplayBasso"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "3dme:shareDisplayBasso"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPlayerFromServerId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if -1 ~= L3_2 then
    L4_2 = GetPlayerPed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = L6_1
    L6_2 = L4_2
    L7_2 = A0_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "3dme:shareDisplayDado"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "3dme:shareDisplayDado"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetPlayerFromServerId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = PlayerId
  L3_2 = L3_2()
  if L2_2 == L3_2 then
    L3_2 = ExecuteCommand
    L4_2 = "e handshake2"
    L3_2(L4_2)
  end
  if -1 ~= L2_2 then
    L3_2 = GetPlayerPed
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = Wait
    L5_2 = 2000
    L4_2(L5_2)
    L4_2 = L7_1
    L5_2 = L3_2
    L6_2 = "Dado: ["
    L7_2 = A1_2
    L8_2 = "]"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "3dme:shareDisplayDado2"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "3dme:shareDisplayDado2"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = GetPlayerFromServerId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = PlayerId
  L4_2 = L4_2()
  if L3_2 == L4_2 then
    L4_2 = ExecuteCommand
    L5_2 = "e handshake2"
    L4_2(L5_2)
  end
  if -1 ~= L3_2 then
    L4_2 = GetPlayerPed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = Wait
    L6_2 = 2000
    L5_2(L6_2)
    L5_2 = L7_1
    L6_2 = L4_2
    L7_2 = "Dado: ["
    L8_2 = A1_2
    L9_2 = "] "
    L10_2 = "["
    L11_2 = A2_2
    L12_2 = "]"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L5_2(L6_2, L7_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "3dme:shareDisplayDado3"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "3dme:shareDisplayDado3"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = GetPlayerFromServerId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = PlayerId
  L5_2 = L5_2()
  if L4_2 == L5_2 then
    L5_2 = ExecuteCommand
    L6_2 = "e handshake2"
    L5_2(L6_2)
  end
  if -1 ~= L4_2 then
    L5_2 = GetPlayerPed
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = Wait
    L7_2 = 2000
    L6_2(L7_2)
    L6_2 = L7_1
    L7_2 = L5_2
    L8_2 = "Dado: ["
    L9_2 = A1_2
    L10_2 = "] "
    L11_2 = "["
    L12_2 = A2_2
    L13_2 = "] "
    L14_2 = "["
    L15_2 = A3_2
    L16_2 = "]"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L6_2(L7_2, L8_2)
  end
end
L8_1(L9_1, L10_1)
