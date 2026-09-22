local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1
L0_1 = {}
CombataMissPed = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = faiAnim
  L2_2 = "cellphone@"
  L3_2 = "cellphone_cellphone_outro"
  L4_2 = 1000
  L5_2 = 49
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "Zone_Neutral"
  L4_2 = "DLC_Apartments_Drop_Zone_Sounds"
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ExecuteCommand
  L2_2 = "shakeoff"
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "addSporco"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "inv3d:giveItem"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = "player"
  L5_2 = "moneta"
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
MissionComplete = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 or 0 == A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A0_2 then
      L8_2 = true
      L9_2 = L7_2
      return L8_2, L9_2
    end
  end
  L2_2 = false
  return L2_2
end
IsPedInTable = L0_1
L0_1 = exports
L1_1 = "isPedMiss"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsPedInTable
  L2_2 = A0_2
  L3_2 = CombataMissPed
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  return L1_2
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "^%s*(.-)%s*$"
    L4_2 = "%1"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    A1_2 = 2000
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if not (A1_2 > L3_2) then
      break
    end
    if A0_2 and 0 ~= A0_2 then
      L3_2 = DoesEntityExist
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = NetworkGetEntityIsNetworked
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = NetworkRegisterEntityAsNetworked
          L4_2 = A0_2
          L3_2(L4_2)
        end
        L3_2 = NetworkGetNetworkIdFromEntity
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if L3_2 and 0 ~= L3_2 then
          return L3_2
        end
    end
    else
      L3_2 = nil
      return L3_2
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = 0.35
  if nil ~= A4_2 then
    L5_2 = A4_2
  end
  L6_2 = World3dToScreen2d
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L9_2 = SetTextCentre
    L10_2 = true
    L9_2(L10_2)
    L9_2 = SetTextScale
    L10_2 = L5_2
    L11_2 = L5_2
    L9_2(L10_2, L11_2)
    L9_2 = SetTextFont
    L10_2 = 4
    L9_2(L10_2)
    L9_2 = SetTextProportional
    L10_2 = 1
    L9_2(L10_2)
    L9_2 = SetTextColour
    L10_2 = 255
    L11_2 = 255
    L12_2 = 255
    L13_2 = 200
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = SetTextEntry
    L10_2 = "STRING"
    L9_2(L10_2)
    L9_2 = SetTextOutline
    L9_2()
    L9_2 = AddTextComponentString
    L10_2 = A3_2
    L9_2(L10_2)
    L9_2 = DrawText
    L10_2 = L7_2
    L11_2 = L8_2 - 0.015
    L9_2(L10_2, L11_2)
  end
end
DrawText3DMission = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = print
    L2_2 = "MODEL IS NIL"
    L1_2(L2_2)
    return
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = IsModelValid
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_33
    end
  end
  L2_2 = print
  L3_2 = "MODEL NOT EXIST "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  do return end
  ::lbl_33::
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 5000
  while true do
    L3_2 = HasModelLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = print
      L4_2 = "NOT EXIST (time out) "
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      return
    end
  end
end
RequestModelStriano = L2_1
L2_1 = false
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L0_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L0_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = L3_1
  L0_2 = L0_2()
  L1_2 = -1
  L2_2 = -1
  L3_2 = nil
  L4_2 = false
  L5_2 = 0
  L6_2 = PlayerId
  L6_2 = L6_2()
  L7_2 = oxActive
  if L7_2 then
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L5_2 = L7_2
  else
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L5_2 = L7_2
  end
  if nil == L3_2 then
    L4_2 = true
    L7_2 = GetEntityCoords
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L3_2 = L7_2
  end
  L7_2 = 1
  L8_2 = #L0_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = GetPlayerPed
    L12_2 = L0_2[L10_2]
    L11_2 = L11_2(L12_2)
    if L4_2 then
      if not L4_2 then
        goto lbl_58
      end
      L12_2 = L0_2[L10_2]
      if L12_2 == L6_2 then
        goto lbl_58
      end
    end
    L12_2 = GetEntityCoords
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = vector3
    L14_2 = L3_2.x
    L15_2 = L3_2.y
    L16_2 = L3_2.z
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L13_2 = L12_2 - L13_2
    L13_2 = #L13_2
    if -1 == L1_2 or L1_2 > L13_2 then
      L2_2 = L0_2[L10_2]
      L1_2 = L13_2
    end
    ::lbl_58::
  end
  L7_2 = L2_2
  L8_2 = L1_2
  return L7_2, L8_2
end
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = nil
  if nil == A4_2 then
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L5_2 = L6_2
  else
    L5_2 = A4_2
  end
  if nil ~= L5_2 then
    L6_2 = HasAnimDictLoaded
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = RequestAnimDict
      L7_2 = A0_2
      L6_2(L7_2)
      while true do
        L6_2 = HasAnimDictLoaded
        L7_2 = A0_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          break
        end
        L6_2 = Wait
        L7_2 = 10
        L6_2(L7_2)
      end
    end
    L6_2 = IsEntityPlayingAnim
    L7_2 = L5_2
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = 3
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if not L6_2 then
      L6_2 = TaskPlayAnim
      L7_2 = L5_2
      L8_2 = A0_2
      L9_2 = A1_2
      L10_2 = 5.0
      L11_2 = 5.0
      L12_2 = A2_2
      L13_2 = A3_2
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
faiAnim = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ""
  L5_2 = A3_2
  L6_2 = ""
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = SetTextScale
  L6_2 = 0.35
  L7_2 = 0.35
  L5_2(L6_2, L7_2)
  L5_2 = SetTextFont
  L6_2 = 4
  L5_2(L6_2)
  L5_2 = SetTextOutline
  L5_2()
  L5_2 = SetTextProportional
  L6_2 = 1
  L5_2(L6_2)
  L5_2 = SetTextColour
  L6_2 = 255
  L7_2 = 255
  L8_2 = 255
  L9_2 = 215
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetTextEntry
  L6_2 = "STRING"
  L5_2(L6_2)
  L5_2 = SetTextCentre
  L6_2 = true
  L5_2(L6_2)
  L5_2 = AddTextComponentString
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = SetDrawOrigin
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = DrawText
  L6_2 = 0.0
  L7_2 = 0.0
  L5_2(L6_2, L7_2)
  L5_2 = ClearDrawOrigin
  L5_2()
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  L2_2 = SetEntityAsMissionEntity
  L3_2 = A0_2
  L2_2(L3_2)
  while true do
    L2_2 = NetworkHasControlOfEntity
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not (not L2_2 and L1_2 < 100) then
      break
    end
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = NetworkRequestControlOfEntity
    L3_2 = A0_2
    L2_2(L3_2)
    L1_2 = L1_2 + 1
  end
end
L7_1 = 0
L8_1 = {}
L9_1 = -1
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = 0
L16_1 = {}
L17_1 = 255
L18_1 = 255
L19_1 = 255
L16_1[1] = L17_1
L16_1[2] = L18_1
L16_1[3] = L19_1
L17_1 = {}
L18_1 = {}
L19_1 = {}
L20_1 = nil
L21_1 = 25.0
L22_1 = ""
L23_1 = 0
L24_1 = false
L25_1 = {}
L26_1 = exports
L27_1 = "inlgm"
function L28_1()
  local L0_2, L1_2
  L0_2 = L9_1
  return L0_2
end
L26_1(L27_1, L28_1)
function L26_1()
  local L0_2, L1_2
  L0_2 = L14_1
  if nil == L0_2 then
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      while true do
        L0_3 = L14_1
        if nil == L0_3 then
          break
        end
        L0_3 = L24_1
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = SetCurrentPedWeapon
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = -1569615261
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "missrappel"
        L3_3 = "rope_idle"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if not L0_3 then
          L0_3 = IsPedInAnyVehicle
          L1_3 = playerPed
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = faiAnim
            L1_3 = "missrappel"
            L2_3 = "rope_idle"
            L3_3 = -1
            L4_3 = 49
            L0_3(L1_3, L2_3, L3_3, L4_3)
          end
        end
      end
      L0_3 = ClearPedTasks
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3 = L1_3()
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L0_2(L1_2)
  end
end
function L27_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L22_1
    if L0_3 then
      L0_3 = L22_1
      if "" ~= L0_3 then
        L0_3 = L23_1
        if L0_3 then
          L0_3 = L23_1
          if not (L0_3 <= 0) then
            goto lbl_18
          end
        end
      end
    end
    L0_3 = 0
    L23_1 = L0_3
    L0_3 = ""
    L22_1 = L0_3
    do return end
    ::lbl_18::
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = L23_1
    L0_3 = L0_3 + L1_3
    while true do
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = L22_1
      if "" == L1_3 then
        L1_3 = 0
        L23_1 = L1_3
        return
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L0_3 - L1_3
      if L1_3 <= 0 then
        L2_3 = 0
        L23_1 = L2_3
        L2_3 = ""
        L22_1 = L2_3
        return
      else
        L23_1 = L1_3
        L2_3 = GetEntityCoords
        L3_3 = PlayerPedId
        L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3()
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
        L3_3 = L5_1
        L4_3 = L2_3.x
        L5_3 = L2_3.y
        L6_3 = L2_3.z
        L6_3 = L6_3 - 1.0
        L7_3 = L22_1
        L3_3(L4_3, L5_3, L6_3, L7_3)
      end
    end
  end
  L0_2(L1_2)
end
function L28_1(A0_2, A1_2)
  local L2_2
  if 1 == A1_2 then
    L2_2 = ""
    L22_1 = L2_2
    L2_2 = 0
    L23_1 = L2_2
    return
  end
  L2_2 = L22_1
  if L2_2 == A0_2 then
    L2_2 = L22_1
    if "" ~= L2_2 then
      L23_1 = A1_2
      return
    end
  end
  L22_1 = A0_2
  L2_2 = 300
  if A1_2 < L2_2 then
    A1_2 = 300
  end
  L23_1 = A1_2
  L2_2 = L27_1
  L2_2()
end
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = #A0_2
  if L1_2 < 1 then
    A0_2 = ""
    L1_2 = ""
    L22_1 = L1_2
    L1_2 = 0
    L23_1 = L1_2
    return
  end
  L1_2 = #A0_2
  L1_2 = L1_2 * 10
  L2_2 = L22_1
  if A0_2 == L2_2 then
    L23_1 = L1_2
    return
  end
  L2_2 = L28_1
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
MSG3D = L29_1
function L29_1(A0_2)
  local L1_2
  L9_1 = A0_2
end
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L9_1
  if -1 == L1_2 then
    L9_1 = A0_2
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = L9_1
    L4_2 = " sec."
    L3_2 = L3_2 .. L4_2
    L1_2(L2_2, L3_2)
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L2_2 = A0_2 * 1000
    L1_2 = L1_2 + L2_2
    L2_2 = A0_2
    L3_2 = A0_2
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      while true do
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = L9_1
        L1_3 = L3_2
        if L0_3 ~= L1_3 then
          L0_3 = L9_1
          if L0_3 > 0 then
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            L1_3 = L9_1
            L1_3 = L1_3 * 1000
            L0_3 = L0_3 + L1_3
            L1_2 = L0_3
            L0_3 = L9_1
            L3_2 = L0_3
            L0_3 = L9_1
            L2_2 = L0_3
            L0_3 = exports
            L0_3 = L0_3.striano_combat
            L1_3 = L0_3
            L0_3 = L0_3.notify
            L2_3 = L9_1
            L3_3 = " sec."
            L2_3 = L2_3 .. L3_3
            L0_3(L1_3, L2_3)
          end
        end
        L0_3 = L9_1
        if L0_3 <= 0 then
          L0_3 = EndMission
          L0_3()
          L0_3 = exports
          L0_3 = L0_3.striano_combat
          L1_3 = L0_3
          L0_3 = L0_3.notify
          L2_3 = ""
          L0_3(L1_3, L2_3)
          L0_3 = -1
          L9_1 = L0_3
          return
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L1_2
        L1_3 = L1_3 - L0_3
        if L1_3 <= 0 then
          L2_3 = 0
          L9_1 = L2_3
        else
          L2_3 = math
          L2_3 = L2_3.ceil
          L3_3 = L1_3 / 1000
          L2_3 = L2_3(L3_3)
          L3_3 = L2_2
          if L2_3 < L3_3 then
            L9_1 = L2_3
            L3_3 = exports
            L3_3 = L3_3.striano_combat
            L4_3 = L3_3
            L3_3 = L3_3.notify
            L5_3 = L9_1
            L6_3 = " sec."
            L5_3 = L5_3 .. L6_3
            L3_3(L4_3, L5_3)
            L3_3 = L9_1
            if L3_3 < 30 then
              L3_3 = L9_1
              if L3_3 > 3 then
                L3_3 = PlaySoundFrontend
                L4_3 = -1
                L5_3 = "5_SEC_WARNING"
                L6_3 = "HUD_MINI_GAME_SOUNDSET"
                L7_3 = 1
                L3_3(L4_3, L5_3, L6_3, L7_3)
              end
            end
            L3_3 = L9_1
            if 3 ~= L3_3 then
              L3_3 = L9_1
              if 2 ~= L3_3 then
                L3_3 = L9_1
                if 1 ~= L3_3 then
                  goto lbl_96
                end
              end
            end
            L3_3 = PlaySoundFrontend
            L4_3 = -1
            L5_3 = "Enter_Area"
            L6_3 = "DLC_Lowrider_Relay_Race_Sounds"
            L7_3 = 0
            L3_3(L4_3, L5_3, L6_3, L7_3)
            ::lbl_96::
            L2_2 = L2_3
          end
        end
      end
    end
    L4_2(L5_2)
  end
end
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L2_1
  if not L0_2 then
    L0_2 = AddRelationshipGroup
    L1_2 = "AGGRESSIVE"
    L0_2(L1_2)
    L0_2 = AddRelationshipGroup
    L1_2 = "ACQUIRENTE"
    L0_2(L1_2)
    L0_2 = true
    L2_1 = L0_2
  end
  L0_2 = 0
  L15_1 = L0_2
  L0_2 = {}
  L1_2 = "WEAPON_SNSPISTOL"
  L2_2 = "WEAPON_MINISMG"
  L3_2 = "WEAPON_MUSKET"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L1_2 = 1
  L2_2 = L19_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L19_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.npc
    if nil ~= L5_2 then
      L5_2 = L19_1
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.npc
      L6_2 = ClearPedTasks
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = ClearPedSecondaryTask
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = SetPedRelationshipGroupHash
      L7_2 = L5_2
      L8_2 = GetHashKey
      L9_2 = "AGGRESSIVE"
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = SetRelationshipBetweenGroups
      L7_2 = 5
      L8_2 = GetHashKey
      L9_2 = "PLAYER"
      L8_2 = L8_2(L9_2)
      L9_2 = GetHashKey
      L10_2 = "AGGRESSIVE"
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = SetRelationshipBetweenGroups
      L7_2 = 5
      L8_2 = GetHashKey
      L9_2 = "AGGRESSIVE"
      L8_2 = L8_2(L9_2)
      L9_2 = GetHashKey
      L10_2 = "PLAYER"
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = SetPedCombatAttributes
      L7_2 = L5_2
      L8_2 = 0
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetPedCombatAttributes
      L7_2 = L5_2
      L8_2 = 43
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetPedCombatAttributes
      L7_2 = L5_2
      L8_2 = 46
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetPedCombatAttributes
      L7_2 = L5_2
      L8_2 = 50
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetPedSeeingRange
      L7_2 = L5_2
      L8_2 = L21_1
      L6_2(L7_2, L8_2)
      L6_2 = SetPedHearingRange
      L7_2 = L5_2
      L8_2 = L21_1
      L6_2(L7_2, L8_2)
      L6_2 = SetPedFleeAttributes
      L7_2 = L5_2
      L8_2 = 0
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetPedCombatRange
      L7_2 = L5_2
      L8_2 = math
      L8_2 = L8_2.random
      L9_2 = 0
      L10_2 = 3
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = SetPedAccuracy
      L7_2 = L5_2
      L8_2 = 10
      L6_2(L7_2, L8_2)
      L6_2 = SetPedHasAiBlip
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetPedAsEnemy
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = TaskCombatPed
      L7_2 = L5_2
      L8_2 = PlayerPedId
      L8_2 = L8_2()
      L9_2 = 0
      L10_2 = 16
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = SetPedDropsWeaponsWhenDead
      L7_2 = L5_2
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = SetPedKeepTask
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetPedHasAiBlip
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetPedAiBlipHasCone
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = GiveWeaponToPed
      L7_2 = L5_2
      L8_2 = GetHashKey
      L9_2 = math
      L9_2 = L9_2.random
      L10_2 = #L0_2
      L9_2 = L9_2(L10_2)
      L9_2 = L0_2[L9_2]
      L8_2 = L8_2(L9_2)
      L9_2 = 999
      L10_2 = false
      L11_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
end
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L2_1
  if not L0_2 then
    L0_2 = AddRelationshipGroup
    L1_2 = "AGGRESSIVE"
    L0_2(L1_2)
    L0_2 = AddRelationshipGroup
    L1_2 = "ACQUIRENTE"
    L0_2(L1_2)
    L0_2 = true
    L2_1 = L0_2
  end
  L0_2 = 0
  L15_1 = L0_2
  L0_2 = 1
  L1_2 = L19_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L19_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.npc
    if nil ~= L4_2 then
      L4_2 = L19_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.npc
      L5_2 = ClearPedTasks
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = ClearPedSecondaryTask
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = SetPedRelationshipGroupHash
      L6_2 = L4_2
      L7_2 = GetHashKey
      L8_2 = "AGGRESSIVE"
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = SetRelationshipBetweenGroups
      L6_2 = 5
      L7_2 = GetHashKey
      L8_2 = "PLAYER"
      L7_2 = L7_2(L8_2)
      L8_2 = GetHashKey
      L9_2 = "AGGRESSIVE"
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = SetRelationshipBetweenGroups
      L6_2 = 5
      L7_2 = GetHashKey
      L8_2 = "AGGRESSIVE"
      L7_2 = L7_2(L8_2)
      L8_2 = GetHashKey
      L9_2 = "PLAYER"
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = SetPedCombatAttributes
      L6_2 = L4_2
      L7_2 = 0
      L8_2 = 1
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetPedCombatAttributes
      L6_2 = L4_2
      L7_2 = 43
      L8_2 = 1
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetPedCombatAttributes
      L6_2 = L4_2
      L7_2 = 46
      L8_2 = 1
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetPedCombatAttributes
      L6_2 = L4_2
      L7_2 = 50
      L8_2 = 1
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetPedSeeingRange
      L6_2 = L4_2
      L7_2 = L21_1
      L5_2(L6_2, L7_2)
      L5_2 = SetPedHearingRange
      L6_2 = L4_2
      L7_2 = L21_1
      L5_2(L6_2, L7_2)
      L5_2 = SetPedFleeAttributes
      L6_2 = L4_2
      L7_2 = 0
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetPedCombatRange
      L6_2 = L4_2
      L7_2 = math
      L7_2 = L7_2.random
      L8_2 = 0
      L9_2 = 3
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = SetPedAccuracy
      L6_2 = L4_2
      L7_2 = 10
      L5_2(L6_2, L7_2)
      L5_2 = SetPedHasAiBlip
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = SetPedAsEnemy
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = TaskCombatPed
      L6_2 = L4_2
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = 0
      L9_2 = 16
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = SetPedDropsWeaponsWhenDead
      L6_2 = L4_2
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = SetPedKeepTask
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = SetPedHasAiBlip
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = SetPedAiBlipHasCone
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = GiveWeaponToPed
      L6_2 = L4_2
      L7_2 = GetHashKey
      L8_2 = L19_1
      L8_2 = L8_2[L3_2]
      L8_2 = L8_2.miaArma
      L7_2 = L7_2(L8_2)
      L8_2 = 999
      L9_2 = false
      L10_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  if not L1_2 then
    L1_2 = AddRelationshipGroup
    L2_2 = "AGGRESSIVE"
    L1_2(L2_2)
    L1_2 = AddRelationshipGroup
    L2_2 = "ACQUIRENTE"
    L1_2(L2_2)
    L1_2 = true
    L2_1 = L1_2
  end
  L1_2 = 0
  L15_1 = L1_2
  L1_2 = {}
  L2_2 = "WEAPON_SNSPISTOL"
  L3_2 = "WEAPON_MINISMG"
  L4_2 = "WEAPON_MUSKET"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = A0_2
  L3_2 = ClearPedTasks
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedSecondaryTask
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = SetPedRelationshipGroupHash
  L4_2 = L2_2
  L5_2 = GetHashKey
  L6_2 = "AGGRESSIVE"
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetRelationshipBetweenGroups
  L4_2 = 5
  L5_2 = GetHashKey
  L6_2 = "PLAYER"
  L5_2 = L5_2(L6_2)
  L6_2 = GetHashKey
  L7_2 = "AGGRESSIVE"
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetRelationshipBetweenGroups
  L4_2 = 5
  L5_2 = GetHashKey
  L6_2 = "AGGRESSIVE"
  L5_2 = L5_2(L6_2)
  L6_2 = GetHashKey
  L7_2 = "PLAYER"
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetPedCombatAttributes
  L4_2 = L2_2
  L5_2 = 0
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetPedCombatAttributes
  L4_2 = L2_2
  L5_2 = 43
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetPedCombatAttributes
  L4_2 = L2_2
  L5_2 = 46
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetPedCombatAttributes
  L4_2 = L2_2
  L5_2 = 50
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetPedSeeingRange
  L4_2 = L2_2
  L5_2 = L21_1
  L3_2(L4_2, L5_2)
  L3_2 = SetPedHearingRange
  L4_2 = L2_2
  L5_2 = L21_1
  L3_2(L4_2, L5_2)
  L3_2 = SetPedFleeAttributes
  L4_2 = L2_2
  L5_2 = 0
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetPedCombatRange
  L4_2 = L2_2
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 0
  L7_2 = 3
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetPedAccuracy
  L4_2 = L2_2
  L5_2 = 10
  L3_2(L4_2, L5_2)
  L3_2 = SetPedHasAiBlip
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetPedAsEnemy
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = TaskCombatPed
  L4_2 = L2_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = 0
  L7_2 = 16
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetPedDropsWeaponsWhenDead
  L4_2 = L2_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetPedKeepTask
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetPedHasAiBlip
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetPedAiBlipHasCone
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = GiveWeaponToPed
  L4_2 = L2_2
  L5_2 = GetHashKey
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = #L1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L1_2[L6_2]
  L5_2 = L5_2(L6_2)
  L6_2 = 999
  L7_2 = false
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.text_guide
  L1_2 = L0_2
  L0_2 = L0_2.ClearGuideText
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 50
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = {}
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.getInfoKey
  L4_2 = 1937710959
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L0_2["MANAGE VEHICLE"] = L1_2
  L1_2 = exports
  L1_2 = L1_2.text_guide
  L2_2 = L1_2
  L1_2 = L1_2.AddGuideText
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.text_guide
  L2_2 = L1_2
  L1_2 = L1_2.GuidaVisibileNV
  L1_2(L2_2)
end
InfoTasti = L34_1
L34_1 = false
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L34_1
  if L0_2 then
    return
  end
  L0_2 = true
  L34_1 = L0_2
  L0_2 = false
  L24_1 = L0_2
  L0_2 = L10_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L10_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = NetworkGetEntityIsNetworked
      L2_2 = L10_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = L7_1
        if L1_2 > 0 then
          L1_2 = TriggerServerEvent
          L2_2 = "delPropMiss"
          L3_2 = L7_1
          L4_2 = VehToNet
          L5_2 = L10_1
          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      end
      L1_2 = IsPedInVehicle
      L2_2 = L0_2
      L3_2 = L10_1
      L4_2 = false
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      if L1_2 then
        L1_2 = TaskLeaveVehicle
        L2_2 = L0_2
        L3_2 = L10_1
        L4_2 = 16
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
      end
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L10_1
      L3_2 = true
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DeleteVehicle
      L2_2 = L10_1
      L1_2(L2_2)
      L1_2 = DoesEntityExist
      L2_2 = L10_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = DeleteEntity
        L2_2 = L10_1
        L1_2(L2_2)
      end
      L1_2 = nil
      L10_1 = L1_2
    end
  end
  L0_2 = L13_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L13_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = NetworkGetEntityIsNetworked
      L1_2 = L13_1
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = L7_1
        if L0_2 > 0 then
          L0_2 = TriggerServerEvent
          L1_2 = "delPropMiss"
          L2_2 = L7_1
          L3_2 = VehToNet
          L4_2 = L13_1
          L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      end
      L0_2 = SetEntityAsMissionEntity
      L1_2 = L13_1
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeleteEntity
      L1_2 = L13_1
      L0_2(L1_2)
      L0_2 = nil
      L13_1 = L0_2
    end
  end
  L0_2 = L12_1
  if L0_2 then
    L0_2 = DoesBlipExist
    L1_2 = L12_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetBlipRoute
      L1_2 = L12_1
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = RemoveBlip
      L1_2 = L12_1
      L0_2(L1_2)
      L0_2 = nil
      L12_1 = L0_2
    end
  end
  L0_2 = L11_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L11_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = L11_1
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeletePed
      L1_2 = L11_1
      L0_2(L1_2)
      L0_2 = nil
      L11_1 = L0_2
    end
  end
  L0_2 = 1
  L1_2 = L19_1
  if not L1_2 then
    L1_2 = {}
  end
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L19_1
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2 or L5_2
    if L4_2 then
      L5_2 = L4_2.npc
    end
    if L5_2 and 0 ~= L5_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = NetworkGetEntityIsNetworked
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = L7_1
          if L6_2 > 0 then
            L6_2 = TriggerServerEvent
            L7_2 = "delPropMiss"
            L8_2 = L7_1
            L9_2 = PedToNet
            L10_2 = L5_2
            L9_2, L10_2 = L9_2(L10_2)
            L6_2(L7_2, L8_2, L9_2, L10_2)
          end
        end
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L5_2
        L8_2 = true
        L9_2 = true
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = DeletePed
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
  L0_2 = 1
  L1_2 = L25_1
  if not L1_2 then
    L1_2 = {}
  end
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L25_1
    L4_2 = L4_2[L3_2]
    if L4_2 and 0 ~= L4_2 then
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = SetEntityAsMissionEntity
        L6_2 = L4_2
        L7_2 = true
        L8_2 = true
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = DeleteEntity
        L6_2 = L4_2
        L5_2(L6_2)
      end
    end
  end
  L0_2 = 1
  L1_2 = L18_1
  if not L1_2 then
    L1_2 = {}
  end
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L18_1
    L4_2 = L4_2[L3_2]
    if L4_2 and 0 ~= L4_2 then
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = NetworkGetEntityIsNetworked
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = L7_1
          if L5_2 > 0 then
            L5_2 = TriggerServerEvent
            L6_2 = "delPropMiss"
            L7_2 = L7_1
            L8_2 = ObjToNet
            L9_2 = L4_2
            L8_2, L9_2, L10_2 = L8_2(L9_2)
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          end
        end
        L5_2 = SetEntityAsMissionEntity
        L6_2 = L4_2
        L7_2 = true
        L8_2 = true
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = DeleteEntity
        L6_2 = L4_2
        L5_2(L6_2)
      end
    end
  end
  L0_2 = L20_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L20_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = NetworkGetEntityIsNetworked
      L1_2 = L20_1
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = L7_1
        if L0_2 > 0 then
          L0_2 = TriggerServerEvent
          L1_2 = "delPropMiss"
          L2_2 = L7_1
          L3_2 = PedToNet
          L4_2 = L20_1
          L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      end
      L0_2 = SetEntityAsMissionEntity
      L1_2 = L20_1
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeletePed
      L1_2 = L20_1
      L0_2(L1_2)
      L0_2 = nil
      L20_1 = L0_2
    end
  end
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L0_2 = 0
  L9_1 = L0_2
  L0_2 = exports
  L0_2 = L0_2.text_guide
  L1_2 = L0_2
  L0_2 = L0_2.ClearGuideText
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 25
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.text_guide
  L1_2 = L0_2
  L0_2 = L0_2.GuidaVisibileNV
  L0_2(L1_2)
  L0_2 = L7_1
  if L0_2 > 0 then
    L0_2 = TriggerServerEvent
    L1_2 = "setBusy"
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L7_1
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = print
    L1_2 = "Mission "
    L2_2 = L7_1
    L3_2 = " now is free from busy server check."
    L1_2 = L1_2 .. L2_2 .. L3_2
    L0_2(L1_2)
  end
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.delblipInteresse
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 1500
    L0_3(L1_3)
    L0_3 = {}
    L25_1 = L0_3
    L0_3 = {}
    L19_1 = L0_3
    L0_3 = {}
    GruppoIncazzati = L0_3
    L0_3 = {}
    CombataMissPed = L0_3
    L0_3 = {}
    L18_1 = L0_3
    L0_3 = {}
    L17_1 = L0_3
    L0_3 = 0
    L15_1 = L0_3
    L0_3 = false
    L34_1 = L0_3
    L0_3 = 0
    L7_1 = L0_3
  end
  L0_2(L1_2)
end
EndMission = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = SetEntityAsMissionEntity
  L2_2 = A0_2
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearAreaOfVehicles
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 3
  L4_2 = false
  L5_2 = false
  L6_2 = false
  L7_2 = false
  L8_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = SetVehicleOnGroundProperly
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = SetEntityAsMissionEntity
  L2_2 = A0_2
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetVehicleFuelLevel
  L2_2 = A0_2
  L3_2 = 100.0
  L1_2(L2_2, L3_2)
end
PreparaVeicoloMissione = L35_1
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L24_1
  if L0_2 then
    L0_2 = false
    L24_1 = L0_2
    L0_2 = EndMission
    L0_2()
    L0_2 = faiAnim
    L1_2 = "switch@franklin@chopshop"
    L2_2 = "wipehands"
    L3_2 = 1000
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  else
    L0_2 = true
    L24_1 = L0_2
  end
  L0_2 = L30_1
  L1_2 = 900
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "timerMissioneServer"
  L2_2 = L7_1
  L3_2 = 900
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = {}
  L2_2 = vector3
  L3_2 = 3510.1630859375
  L4_2 = 7204.423828125
  L5_2 = -0.33310022950172
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.Pos = L2_2
  L2_2 = vector3
  L3_2 = 3489.1762695312
  L4_2 = 6568.7807617188
  L5_2 = -0.092439487576485
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.PosBarca = L2_2
  L2_2 = vector3
  L3_2 = 3510.1630859375
  L4_2 = 7204.423828125
  L5_2 = -0.33310022950172
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.PosMoto = L2_2
  L1_2.HeadMoto = 125.0
  L2_2 = vector3
  L3_2 = 4290.423
  L4_2 = 5813.386
  L5_2 = 0.339
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.Consegna = L2_2
  L17_1 = L1_2
  L1_2 = -2006939605
  L2_2 = nil
  L14_1 = L2_2
  L2_2 = -1
  L15_1 = L2_2
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submexImportant
  L4_2 = "Go to the boat to take the shipping."
  L2_2(L3_2, L4_2)
  L2_2 = exports
  L2_2 = L2_2.text_guide
  L3_2 = L2_2
  L2_2 = L2_2.ClearGuideText
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 25
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.text_guide
  L3_2 = L2_2
  L2_2 = L2_2.GuidaVisibileNV
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    while true do
      L0_3 = L24_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsPedDeadOrDying
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          goto lbl_20
        end
      end
      L0_3 = EndMission
      L0_3()
      do return end
      ::lbl_20::
      L0_3 = L15_1
      if -1 == L0_3 then
        L0_3 = L22_1
        L0_3 = #L0_3
        if L0_3 > 0 then
          L0_3 = MSG3D
          L1_3 = ""
          L0_3(L1_3)
        end
        L0_3 = RequestModelStriano
        L1_3 = L1_2
        L0_3(L1_3)
        L0_3 = CreateObject
        L1_3 = L1_2
        L2_3 = L17_1.PosMoto
        L2_3 = L2_3.x
        L3_3 = L17_1.PosMoto
        L3_3 = L3_3.y
        L4_3 = L17_1.PosMoto
        L4_3 = L4_3.z
        L5_3 = true
        L6_3 = true
        L7_3 = true
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L10_1 = L0_3
        L0_3 = SetModelAsNoLongerNeeded
        L1_3 = L1_2
        L0_3(L1_3)
        L0_3 = RequestModelStriano
        L1_3 = L1_2
        L0_3(L1_3)
        L0_3 = CreateObject
        L1_3 = L1_2
        L2_3 = L17_1.PosBarca
        L2_3 = L2_3.x
        L3_3 = L17_1.PosBarca
        L3_3 = L3_3.y
        L4_3 = L17_1.PosBarca
        L4_3 = L4_3.z
        L5_3 = true
        L6_3 = true
        L7_3 = true
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L13_1 = L0_3
        L0_3 = FreezeEntityPosition
        L1_3 = L13_1
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = SetModelAsNoLongerNeeded
        L1_3 = L1_2
        L0_3(L1_3)
        L0_3 = 1
        L15_1 = L0_3
        L0_3 = exports
        L0_3 = L0_3.striano_inventory
        L1_3 = L0_3
        L0_3 = L0_3.delblipInteresse
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = exports
        L0_3 = L0_3.striano_inventory
        L1_3 = L0_3
        L0_3 = L0_3.blipInteresse
        L2_3 = GetEntityCoords
        L3_3 = L13_1
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L2_3(L3_3)
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        while true do
          L0_3 = DoesEntityExist
          L1_3 = L10_1
          L0_3 = L0_3(L1_3)
          if L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
        L0_3 = exports
        L0_3 = L0_3.striano_boat
        L1_3 = L0_3
        L0_3 = L0_3.applyBoat
        L2_3 = L10_1
        L0_3(L1_3, L2_3)
      end
      L0_3 = L15_1
      if 1 == L0_3 then
        L0_3 = GetEntityCoords
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        L1_3 = GetEntityCoords
        L2_3 = L10_1
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        L1_3 = 3.5
        if L0_3 > L1_3 then
          L0_3 = GetEntityCoords
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          L1_3 = GetEntityCoords
          L2_3 = L13_1
          L1_3 = L1_3(L2_3)
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          if L0_3 > 15.0 then
            L0_3 = DrawMarker
            L1_3 = 1
            L2_3 = GetEntityCoords
            L3_3 = L10_1
            L2_3 = L2_3(L3_3)
            L3_3 = 0.0
            L4_3 = 0.0
            L5_3 = 0.0
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 2.5
            L10_3 = 2.5
            L11_3 = 900.0
            L12_3 = L16_1
            L12_3 = L12_3[1]
            L13_3 = L16_1
            L13_3 = L13_3[2]
            L14_3 = L16_1
            L14_3 = L14_3[3]
            L15_3 = 100
            L16_3 = false
            L17_3 = false
            L18_3 = 2
            L19_3 = false
            L20_3 = false
            L21_3 = false
            L22_3 = false
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
            L0_3 = GetEntityCoords
            L1_3 = L10_1
            L0_3 = L0_3(L1_3)
            L1_3 = DrawText3DMission
            L2_3 = L0_3.x
            L3_3 = L0_3.y
            L4_3 = L0_3.z
            L5_3 = "~y~(1) ~w~~h~Boat"
            L1_3(L2_3, L3_3, L4_3, L5_3)
          end
        end
      end
      L0_3 = L15_1
      if L0_3 > 0 then
        L0_3 = L15_1
        if L0_3 < 7 then
          L0_3 = GetEntityCoords
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          L1_3 = GetEntityCoords
          L2_3 = L13_1
          L1_3 = L1_3(L2_3)
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          if L0_3 > 50.0 then
            L0_3 = DrawMarker
            L1_3 = 1
            L2_3 = GetEntityCoords
            L3_3 = L13_1
            L2_3 = L2_3(L3_3)
            L3_3 = 0.0
            L4_3 = 0.0
            L5_3 = 0.0
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 2.5
            L10_3 = 2.5
            L11_3 = 900.0
            L12_3 = L16_1
            L12_3 = L12_3[1]
            L13_3 = L16_1
            L13_3 = L13_3[2]
            L14_3 = L16_1
            L14_3 = L14_3[3]
            L15_3 = 100
            L16_3 = false
            L17_3 = false
            L18_3 = 2
            L19_3 = false
            L20_3 = false
            L21_3 = false
            L22_3 = false
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
            L0_3 = GetEntityCoords
            L1_3 = L13_1
            L0_3 = L0_3(L1_3)
            L1_3 = DrawText3DMission
            L2_3 = L0_3.x
            L3_3 = L0_3.y
            L4_3 = L0_3.z
            L5_3 = "~y~(2) ~w~~h~Shipping"
            L1_3(L2_3, L3_3, L4_3, L5_3)
          else
            L0_3 = IsEntityAttached
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = L14_1
              if nil == L0_3 then
                L0_3 = GetEntityCoords
                L1_3 = L0_2
                L0_3 = L0_3(L1_3)
                L1_3 = GetEntityCoords
                L2_3 = L13_1
                L1_3 = L1_3(L2_3)
                L0_3 = L0_3 - L1_3
                L0_3 = #L0_3
                L1_3 = 1.7
                if L0_3 < L1_3 then
                  L0_3 = L15_1
                  L0_3 = L0_3 + 1
                  L15_1 = L0_3
                  L0_3 = L15_1
                  if 2 == L0_3 then
                    L0_3 = exports
                    L0_3 = L0_3.text_guide
                    L1_3 = L0_3
                    L0_3 = L0_3.ClearGuideText
                    L0_3(L1_3)
                    L0_3 = Wait
                    L1_3 = 25
                    L0_3(L1_3)
                    L0_3 = exports
                    L0_3 = L0_3.text_guide
                    L1_3 = L0_3
                    L0_3 = L0_3.GuidaVisibileNV
                    L0_3(L1_3)
                  end
                  L0_3 = L26_1
                  L0_3()
                  L0_3 = CreateObject
                  L1_3 = -517243780
                  L2_3 = GetEntityCoords
                  L3_3 = L0_2
                  L2_3 = L2_3(L3_3)
                  L3_3 = true
                  L4_3 = true
                  L5_3 = true
                  L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
                  L14_1 = L0_3
                  while true do
                    L0_3 = DoesEntityExist
                    L1_3 = L14_1
                    L0_3 = L0_3(L1_3)
                    if L0_3 then
                      break
                    end
                    L0_3 = Wait
                    L1_3 = 0
                    L0_3(L1_3)
                  end
                  while true do
                    L0_3 = ObjToNet
                    L1_3 = L14_1
                    L0_3 = L0_3(L1_3)
                    if 0 ~= L0_3 then
                      L0_3 = ObjToNet
                      L1_3 = L14_1
                      L0_3 = L0_3(L1_3)
                      if nil ~= L0_3 then
                        break
                      end
                    end
                    L0_3 = Wait
                    L1_3 = 0
                    L0_3(L1_3)
                  end
                  L0_3 = L1_1
                  L1_3 = L14_1
                  L2_3 = 2000
                  L0_3 = L0_3(L1_3, L2_3)
                  if L0_3 then
                    L1_3 = L6_1
                    L2_3 = L14_1
                    L1_3(L2_3)
                    L1_3 = TriggerServerEvent
                    L2_3 = "addPropMiss"
                    L3_3 = L7_1
                    L4_3 = L0_3
                    L1_3(L2_3, L3_3, L4_3)
                  end
                  L1_3 = AttachEntityToEntity
                  L2_3 = L14_1
                  L3_3 = L0_2
                  L4_3 = GetPedBoneIndex
                  L5_3 = L0_2
                  L6_3 = 60309
                  L4_3 = L4_3(L5_3, L6_3)
                  L5_3 = -0.17
                  L6_3 = -0.06
                  L7_3 = -0.09
                  L8_3 = 0.0
                  L9_3 = -12.0
                  L10_3 = 5.0
                  L11_3 = true
                  L12_3 = true
                  L13_3 = false
                  L14_3 = true
                  L15_3 = 1
                  L16_3 = true
                  L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                else
                  L0_3 = DrawMarker
                  L1_3 = 1
                  L2_3 = GetEntityCoords
                  L3_3 = L13_1
                  L2_3 = L2_3(L3_3)
                  L3_3 = 0.0
                  L4_3 = 0.0
                  L5_3 = 0.0
                  L6_3 = 0.0
                  L7_3 = 0.0
                  L8_3 = 0.0
                  L9_3 = 0.5
                  L10_3 = 0.5
                  L11_3 = 5.0
                  L12_3 = L16_1
                  L12_3 = L12_3[1]
                  L13_3 = L16_1
                  L13_3 = L13_3[2]
                  L14_3 = L16_1
                  L14_3 = L14_3[3]
                  L15_3 = 100
                  L16_3 = false
                  L17_3 = false
                  L18_3 = 2
                  L19_3 = false
                  L20_3 = false
                  L21_3 = false
                  L22_3 = false
                  L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
                end
              else
                L0_3 = GetEntityCoords
                L1_3 = L0_2
                L0_3 = L0_3(L1_3)
                L1_3 = GetEntityCoords
                L2_3 = L10_1
                L1_3 = L1_3(L2_3)
                L0_3 = L0_3 - L1_3
                L0_3 = #L0_3
                L1_3 = 1.7
                if L0_3 < L1_3 then
                  L0_3 = L14_1
                  if nil ~= L0_3 then
                    L1_3 = DoesEntityExist
                    L2_3 = L0_3
                    L1_3 = L1_3(L2_3)
                    if L1_3 then
                      L1_3 = TriggerServerEvent
                      L2_3 = "delPropMiss"
                      L3_3 = L7_1
                      L4_3 = ObjToNet
                      L5_3 = L0_3
                      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L4_3(L5_3)
                      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
                      L1_3 = SetEntityAsMissionEntity
                      L2_3 = L0_3
                      L1_3(L2_3)
                      L1_3 = NetworkRequestControlOfEntity
                      L2_3 = L0_3
                      L1_3(L2_3)
                      L1_3 = DeleteEntity
                      L2_3 = L0_3
                      L1_3(L2_3)
                      L1_3 = nil
                      L14_1 = L1_3
                      L1_3 = Wait
                      L2_3 = 25
                      L1_3(L2_3)
                      L1_3 = faiAnim
                      L2_3 = "anim@mp_snowball"
                      L3_3 = "pickup_snowball"
                      L4_3 = 1000
                      L5_3 = 49
                      L1_3(L2_3, L3_3, L4_3, L5_3)
                    end
                  end
                  L1_3 = L15_1
                  L1_3 = L1_3 + 1
                  L15_1 = L1_3
                  L1_3 = L15_1
                  if 7 == L1_3 then
                    L1_3 = exports
                    L1_3 = L1_3.striano_combat
                    L2_3 = L1_3
                    L1_3 = L1_3.submexImportant
                    L3_3 = "Deliver the crates on the marker."
                    L1_3(L2_3, L3_3)
                    L1_3 = PlaySoundFrontend
                    L2_3 = -1
                    L3_3 = "ROUND_ENDING_STINGER_CUSTOM"
                    L4_3 = "CELEBRATION_SOUNDSET"
                    L5_3 = 0
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                    L1_3 = Wait
                    L2_3 = 950
                    L1_3(L2_3)
                    L1_3 = faiAnim
                    L2_3 = "switch@franklin@chopshop"
                    L3_3 = "wipehands"
                    L4_3 = 1000
                    L5_3 = 49
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                    L1_3 = exports
                    L1_3 = L1_3.striano_inventory
                    L2_3 = L1_3
                    L1_3 = L1_3.delblipInteresse
                    L1_3(L2_3)
                    L1_3 = Wait
                    L2_3 = 25
                    L1_3(L2_3)
                    L1_3 = exports
                    L1_3 = L1_3.striano_inventory
                    L2_3 = L1_3
                    L1_3 = L1_3.blipInteresse
                    L3_3 = L17_1.Consegna
                    L1_3(L2_3, L3_3)
                  end
                else
                  L0_3 = DrawMarker
                  L1_3 = 1
                  L2_3 = GetEntityCoords
                  L3_3 = L10_1
                  L2_3 = L2_3(L3_3)
                  L3_3 = 0.0
                  L4_3 = 0.0
                  L5_3 = 0.0
                  L6_3 = 0.0
                  L7_3 = 0.0
                  L8_3 = 0.0
                  L9_3 = 0.5
                  L10_3 = 0.5
                  L11_3 = 5.0
                  L12_3 = L16_1
                  L12_3 = L12_3[1]
                  L13_3 = L16_1
                  L13_3 = L13_3[2]
                  L14_3 = L16_1
                  L14_3 = L14_3[3]
                  L15_3 = 100
                  L16_3 = false
                  L17_3 = false
                  L18_3 = 2
                  L19_3 = false
                  L20_3 = false
                  L21_3 = false
                  L22_3 = false
                  L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
                end
              end
            end
          end
        end
      end
      L0_3 = L15_1
      if 7 == L0_3 then
        L0_3 = IsEntityAttached
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = L10_1
          L0_3 = L0_3(L1_3)
          L1_3 = L17_1.Consegna
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          if L0_3 > 5.0 then
            L0_3 = DrawMarker
            L1_3 = 1
            L2_3 = L17_1.Consegna
            L3_3 = 0.0
            L4_3 = 0.0
            L5_3 = 0.0
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 2.5
            L10_3 = 2.5
            L11_3 = 900.0
            L12_3 = L16_1
            L12_3 = L12_3[1]
            L13_3 = L16_1
            L13_3 = L13_3[2]
            L14_3 = L16_1
            L14_3 = L14_3[3]
            L15_3 = 100
            L16_3 = false
            L17_3 = false
            L18_3 = 2
            L19_3 = false
            L20_3 = false
            L21_3 = false
            L22_3 = false
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
            L0_3 = L17_1.Consegna
            L1_3 = DrawText3DMission
            L2_3 = L0_3.x
            L3_3 = L0_3.y
            L4_3 = L0_3.z
            L5_3 = "~y~(3) ~w~~h~Delivery"
            L1_3(L2_3, L3_3, L4_3, L5_3)
          else
            L0_3 = DetachEntity
            L1_3 = ped
            L2_3 = false
            L3_3 = false
            L0_3(L1_3, L2_3, L3_3)
            L0_3 = EndMission
            L0_3()
            L0_3 = MissionComplete
            L1_3 = 25
            L0_3(L1_3)
            return
          end
        else
          L0_3 = DrawMarker
          L1_3 = 1
          L2_3 = GetEntityCoords
          L3_3 = L10_1
          L2_3 = L2_3(L3_3)
          L3_3 = 0.0
          L4_3 = 0.0
          L5_3 = 0.0
          L6_3 = 0.0
          L7_3 = 0.0
          L8_3 = 0.0
          L9_3 = 0.5
          L10_3 = 0.5
          L11_3 = 950.0
          L12_3 = L16_1
          L12_3 = L12_3[1]
          L13_3 = L16_1
          L13_3 = L13_3[2]
          L14_3 = L16_1
          L14_3 = L14_3[3]
          L15_3 = 100
          L16_3 = false
          L17_3 = false
          L18_3 = 2
          L19_3 = false
          L20_3 = false
          L21_3 = false
          L22_3 = false
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        end
      end
    end
  end
  L2_2(L3_2)
end
MissioneSpedizione = L35_1
L35_1 = RegisterNetEvent
L36_1 = "LGM:Missione"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "LGM:Missione"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L8_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = L4_1
    L1_2, L2_2 = L1_2()
    if -1 ~= L1_2 and L2_2 <= 3.0 then
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "You must be alone on this spot to manage a mission."
      L3_2(L4_2, L5_2)
    else
      L3_2 = L8_1
      L3_2[A0_2] = true
      L7_1 = A0_2
      L3_2 = TriggerServerEvent
      L4_2 = "setBusy"
      L5_2 = GetPlayerServerId
      L6_2 = PlayerId
      L6_2, L7_2 = L6_2()
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L7_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = print
      L4_2 = "Mission Stared "
      L5_2 = A0_2
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      if 1 == A0_2 then
        L3_2 = MissioneSpedizione
        L3_2()
      elseif 2 == A0_2 then
        L3_2 = MissioneRubaVeicolo
        L3_2()
      elseif 3 == A0_2 then
        L3_2 = MissionePortaOggetto
        L3_2()
      elseif 4 == A0_2 then
        L3_2 = MissionePirati
        L3_2()
      elseif 5 == A0_2 then
        L3_2 = MissioneSeguiBenson
        L3_2()
      elseif 6 == A0_2 then
        L3_2 = MissioneConvoglio
        L3_2()
      elseif 7 == A0_2 then
        L3_2 = MissioneStockade
        L3_2()
      end
    end
  else
    L1_2 = L7_1
    if L1_2 ~= A0_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.submexError
      L3_2 = "Mission busy from another player."
      L1_2(L2_2, L3_2)
    else
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.submexError
      L3_2 = "Mission canceled."
      L1_2(L2_2, L3_2)
      L1_2 = EndMission
      L1_2()
    end
  end
end
L35_1(L36_1, L37_1)
L35_1 = {}
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = type
  L1_2 = L19_1
  L0_2 = L0_2(L1_2)
  if "table" == L0_2 then
    L0_2 = L19_1
    L0_2 = #L0_2
    if not (L0_2 <= 0) then
      goto lbl_12
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_12::
  L0_2 = 0
  L1_2 = 0
  L2_2 = 0
  L3_2 = 1
  L4_2 = L19_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L19_1
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2 or L8_2
    if L7_2 then
      L8_2 = L7_2.npc
    end
    if L8_2 and 0 ~= L8_2 then
      L9_2 = DoesEntityExist
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L0_2 = L0_2 + 1
        L9_2 = GetEntityHealth
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = IsEntityDead
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = IsPedDeadOrDying
          L11_2 = L8_2
          L12_2 = true
          L10_2 = L10_2(L11_2, L12_2)
          if not L10_2 then
            L10_2 = IsPedFatallyInjured
            L11_2 = L8_2
            L10_2 = L9_2 <= 0 or L10_2
          end
        end
        if L10_2 then
          L2_2 = L2_2 + 1
        else
          L1_2 = L1_2 + 1
        end
    end
    else
      L0_2 = L0_2 + 1
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = L0_2 > 0 and 0 == L1_2
  return L3_2
end
AreAllMissionNpcDead = L36_1
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L35_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L1_2.npc
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = table
  L3_2 = L3_2.remove
  L4_2 = L35_1
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_22::
  L3_2 = SetNpcAngry
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedTasks
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = TriggerEvent
  L4_2 = "becomeScav"
  L5_2 = PedToNet
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  L7_2 = math
  L7_2 = L7_2.random
  L8_2 = 1
  L9_2 = 9
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = nil
  L9_2 = nil
  L10_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = table
  L3_2 = L3_2.remove
  L4_2 = L35_1
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
MakeNpcAngry = L36_1
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = L19_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L19_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.npc
    if L5_2 == A0_2 then
      L5_2 = L19_1
      L5_2 = L5_2[L4_2]
      L5_2.angry = true
      return
    end
  end
end
SetNpcAngry = L36_1
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = L24_1
  if L0_2 then
    L0_2 = false
    L24_1 = L0_2
    L0_2 = EndMission
    L0_2()
    L0_2 = faiAnim
    L1_2 = "switch@franklin@chopshop"
    L2_2 = "wipehands"
    L3_2 = 1000
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  else
    L0_2 = true
    L24_1 = L0_2
  end
  L0_2 = L30_1
  L1_2 = 900
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "timerMissioneServer"
  L2_2 = L7_1
  L3_2 = 900
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = 0
  L3_2 = {}
  L4_2 = vector3
  L5_2 = 3831.841
  L6_2 = 7259.012
  L7_2 = 9.295
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.PosMoto = L4_2
  L3_2.HeadMoto = 0.0
  L4_2 = vector3
  L5_2 = 3087.757
  L6_2 = 7491.658
  L7_2 = 19.143
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.Consegna = L4_2
  L4_2 = {}
  L5_2 = {}
  L6_2 = vector4
  L7_2 = 3826.166
  L8_2 = 7255.269
  L9_2 = 8.848
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 0
  L12_2 = 360
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2, L12_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2.pos = L6_2
  L5_2.lib = "move_p_m_one_idles@generic"
  L5_2.dic = "fidget_rub_hands"
  L6_2 = {}
  L7_2 = vector4
  L8_2 = 3822.965
  L9_2 = 7259.291
  L10_2 = 9.013
  L11_2 = math
  L11_2 = L11_2.random
  L12_2 = 0
  L13_2 = 360
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2.pos = L7_2
  L6_2.lib = "move_p_m_one_idles@generic"
  L6_2.dic = "fidget_rub_chin"
  L7_2 = {}
  L8_2 = vector4
  L9_2 = 3822.624
  L10_2 = 7267.943
  L11_2 = 9.681
  L12_2 = math
  L12_2 = L12_2.random
  L13_2 = 0
  L14_2 = 360
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2.pos = L8_2
  L7_2.lib = "move_p_m_one_idles@generic"
  L7_2.dic = "fidget_rub_hands"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L3_2.PointsCassa = L4_2
  L17_1 = L3_2
  L3_2 = {}
  L4_2 = "a_m_m_ktown_01"
  L5_2 = "a_m_m_mexcntry_01"
  L6_2 = "a_m_m_salton_03"
  L7_2 = "a_m_m_rurmeth_01"
  L8_2 = "a_m_m_skidrow_01"
  L9_2 = "a_m_m_trampbeac_01"
  L10_2 = "a_m_m_tramp_01"
  L11_2 = "a_m_o_salton_01"
  L12_2 = "a_m_o_soucent_02"
  L13_2 = "a_m_o_soucent_03"
  L14_2 = "a_m_o_tramp_01"
  L15_2 = "a_m_y_genstreet_02"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.delblipInteresse
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 25
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.blipInteresse
  L6_2 = L17_1.PosMoto
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.submexImportant
  L6_2 = "Kill all the guards to get the motorbike."
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2.text_guide
  L5_2 = L4_2
  L4_2 = L4_2.ClearGuideText
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 25
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.text_guide
  L5_2 = L4_2
  L4_2 = L4_2.GuidaVisibileNV
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3
    while true do
      L0_3 = L24_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L24_1
      if L0_3 then
        L0_3 = L34_1
        if not L0_3 then
          goto lbl_14
        end
      end
      do return end
      ::lbl_14::
      L0_3 = IsPedDeadOrDying
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          goto lbl_27
        end
      end
      L0_3 = EndMission
      L0_3()
      do return end
      ::lbl_27::
      L0_3 = GetEntityCoords
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      L1_3 = L17_1.PosMoto
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 150.0
      if L0_3 < L1_3 then
        L0_3 = L1_2
        if not L0_3 then
          L0_3 = true
          L1_2 = L0_3
          L0_3 = GetHashKey
          L1_3 = "deathbike"
          L0_3 = L0_3(L1_3)
          vehiclehash = L0_3
          L0_3 = RequestModelStriano
          L1_3 = vehiclehash
          L0_3(L1_3)
          L0_3 = CreateVehicle
          L1_3 = vehiclehash
          L2_3 = L17_1.PosMoto
          L3_3 = L17_1.HeadMoto
          L4_3 = 1
          L5_3 = 0
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          L10_1 = L0_3
          L0_3 = SetEntityAsMissionEntity
          L1_3 = L10_1
          L2_3 = true
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = ClearAreaOfVehicles
          L1_3 = GetEntityCoords
          L2_3 = L10_1
          L1_3 = L1_3(L2_3)
          L2_3 = 5
          L3_3 = false
          L4_3 = false
          L5_3 = false
          L6_3 = false
          L7_3 = false
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
          L0_3 = SetVehicleOnGroundProperly
          L1_3 = L10_1
          L0_3(L1_3)
          L0_3 = SetVehicleDoorsLocked
          L1_3 = L10_1
          L2_3 = 2
          L0_3(L1_3, L2_3)
          L0_3 = SetModelAsNoLongerNeeded
          L1_3 = vehiclehash
          L0_3(L1_3)
          L0_3 = math
          L0_3 = L0_3.random
          L1_3 = 1
          L2_3 = L17_1.PointsCassa
          L2_3 = #L2_3
          L0_3 = L0_3(L1_3, L2_3)
          L2_2 = L0_3
          L0_3 = 1
          L1_3 = L17_1.PointsCassa
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L17_1.PointsCassa
            L4_3 = L4_3[L3_3]
            L5_3 = math
            L5_3 = L5_3.random
            L6_3 = 1
            L7_3 = L3_2
            L7_3 = #L7_3
            L5_3 = L5_3(L6_3, L7_3)
            L6_3 = L3_2
            L6_3 = L6_3[L5_3]
            L7_3 = RequestModelStriano
            L8_3 = L6_3
            L7_3(L8_3)
            L7_3 = CreatePed
            L8_3 = 1
            L9_3 = L6_3
            L10_3 = vector3
            L11_3 = L4_3.pos
            L11_3 = L11_3.x
            L12_3 = L4_3.pos
            L12_3 = L12_3.y
            L13_3 = L4_3.pos
            L13_3 = L13_3.z
            L10_3 = L10_3(L11_3, L12_3, L13_3)
            L11_3 = L4_3.pos
            L11_3 = L11_3.w
            L12_3 = true
            L13_3 = true
            L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            while true do
              L8_3 = DoesEntityExist
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              if L8_3 then
                break
              end
              L8_3 = Wait
              L9_3 = 0
              L8_3(L9_3)
            end
            L8_3 = table
            L8_3 = L8_3.insert
            L9_3 = L19_1
            L10_3 = {}
            L10_3.npc = L7_3
            L10_3.angry = false
            L10_3.dead = false
            L8_3(L9_3, L10_3)
            L8_3 = table
            L8_3 = L8_3.insert
            L9_3 = L35_1
            L10_3 = {}
            L10_3.npc = L7_3
            L8_3(L9_3, L10_3)
            L8_3 = table
            L8_3 = L8_3.insert
            L9_3 = CombataMissPed
            L10_3 = L7_3
            L8_3(L9_3, L10_3)
            while true do
              L8_3 = PedToNet
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              if 0 ~= L8_3 then
                L8_3 = PedToNet
                L9_3 = L7_3
                L8_3 = L8_3(L9_3)
                if nil ~= L8_3 then
                  break
                end
              end
              L8_3 = Wait
              L9_3 = 0
              L8_3(L9_3)
            end
            L8_3 = TriggerServerEvent
            L9_3 = "addPropMiss"
            L10_3 = L7_1
            L11_3 = PedToNet
            L12_3 = L7_3
            L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3 = L11_3(L12_3)
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
            L8_3 = SetPedFleeAttributes
            L9_3 = L7_3
            L10_3 = 0
            L11_3 = true
            L8_3(L9_3, L10_3, L11_3)
            L8_3 = faiAnim
            L9_3 = L4_3.lib
            L10_3 = L4_3.dic
            L11_3 = -1
            L12_3 = 49
            L13_3 = L7_3
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
            L8_3 = Wait
            L9_3 = 0
            L8_3(L9_3)
            L8_3 = SetEntityHeading
            L9_3 = L7_3
            L10_3 = L4_3.pos
            L10_3 = L10_3.w
            L8_3(L9_3, L10_3)
            L8_3 = SetModelAsNoLongerNeeded
            L9_3 = L6_3
            L8_3(L9_3)
            L8_3 = SetPedDropsWeaponsWhenDead
            L9_3 = L7_3
            L10_3 = false
            L8_3(L9_3, L10_3)
          end
          L0_3 = -1
          L15_1 = L0_3
        end
      end
      L0_3 = L1_2
      if L0_3 then
        L0_3 = IsEntityDead
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
          if not L0_3 then
            goto lbl_223
          end
        end
        L0_3 = EndMission
        L0_3()
        do return end
        ::lbl_223::
        L0_3 = L15_1
        if -1 == L0_3 then
          L0_3 = L35_1
          L0_3 = #L0_3
          L1_3 = 1
          L2_3 = -1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L35_1
            L4_3 = L4_3[L3_3]
            L5_3 = L4_3 or L5_3
            if L4_3 then
              L5_3 = L4_3.npc
            end
            if L5_3 and 0 ~= L5_3 then
              L6_3 = DoesEntityExist
              L7_3 = L5_3
              L6_3 = L6_3(L7_3)
              if L6_3 then
                goto lbl_251
              end
            end
            L6_3 = table
            L6_3 = L6_3.remove
            L7_3 = L35_1
            L8_3 = L3_3
            L6_3(L7_3, L8_3)
            goto lbl_337
            ::lbl_251::
            L6_3 = GetEntityCoords
            L7_3 = L0_2
            L6_3 = L6_3(L7_3)
            L7_3 = GetEntityCoords
            L8_3 = L5_3
            L7_3 = L7_3(L8_3)
            L6_3 = L6_3 - L7_3
            L6_3 = #L6_3
            L7_3 = HasEntityClearLosToEntity
            L8_3 = L5_3
            L9_3 = L0_2
            L10_3 = 17
            L7_3 = L7_3(L8_3, L9_3, L10_3)
            if L7_3 then
              L7_3 = HasEntityClearLosToEntity
              L8_3 = L5_3
              L9_3 = L0_2
              L10_3 = 16
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              if L7_3 then
                L7_3 = IsPedFacingPed
                L8_3 = L5_3
                L9_3 = L0_2
                L10_3 = L21_1
                L7_3 = L7_3(L8_3, L9_3, L10_3)
                if L7_3 then
                  L7_3 = L21_1
                  if L6_3 < L7_3 then
                    L7_3 = MakeNpcAngry
                    L8_3 = L3_3
                    L7_3(L8_3)
                end
              end
            end
            else
              L7_3 = IsPedShooting
              L8_3 = L0_2
              L7_3 = L7_3(L8_3)
              if L7_3 then
                L7_3 = L21_1
                if L6_3 < L7_3 then
                  L7_3 = MakeNpcAngry
                  L8_3 = L3_3
                  L7_3(L8_3)
              end
              else
                L7_3 = L21_1
                L7_3 = L7_3 / 2
                if L6_3 < L7_3 then
                  L7_3 = exports
                  L7_3 = L7_3.striano_combat
                  L8_3 = L7_3
                  L7_3 = L7_3.incombatanim
                  L7_3 = L7_3(L8_3)
                  if L7_3 then
                    L7_3 = MakeNpcAngry
                    L8_3 = L3_3
                    L7_3(L8_3)
                end
                else
                  L7_3 = L21_1
                  L7_3 = L7_3 / 3
                  if L6_3 < L7_3 then
                    L7_3 = GetEntitySpeed
                    L8_3 = L0_2
                    L7_3 = L7_3(L8_3)
                    if L7_3 > 1.0 then
                      L7_3 = MakeNpcAngry
                      L8_3 = L3_3
                      L7_3(L8_3)
                  end
                  else
                    L7_3 = IsPedFleeing
                    L8_3 = L5_3
                    L7_3 = L7_3(L8_3)
                    if L7_3 then
                      L7_3 = MakeNpcAngry
                      L8_3 = L3_3
                      L7_3(L8_3)
                    end
                  end
                end
              end
            end
            ::lbl_337::
          end
        end
        L0_3 = L15_1
        if 0 ~= L0_3 then
          L0_3 = L15_1
          if -1 ~= L0_3 then
            goto lbl_418
          end
        end
        L0_3 = AreAllMissionNpcDead
        L0_3 = L0_3()
        if L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_combat
          L1_3 = L0_3
          L0_3 = L0_3.submexImportant
          L2_3 = "Find the key of the motorbike."
          L0_3(L1_3, L2_3)
          L0_3 = Wait
          L1_3 = 5000
          L0_3(L1_3)
          L0_3 = 1
          L15_1 = L0_3
        else
          L0_3 = 1
          L1_3 = L19_1
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L19_1
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.npc
            if L4_3 and 0 ~= L4_3 then
              L5_3 = DoesEntityExist
              L6_3 = L4_3
              L5_3 = L5_3(L6_3)
              if L5_3 then
                L5_3 = IsPedFatallyInjured
                L6_3 = L4_3
                L5_3 = L5_3(L6_3)
                if not L5_3 then
                  L5_3 = DrawMarker
                  L6_3 = 0
                  L7_3 = GetEntityCoords
                  L8_3 = L4_3
                  L7_3 = L7_3(L8_3)
                  L7_3 = L7_3.x
                  L8_3 = GetEntityCoords
                  L9_3 = L4_3
                  L8_3 = L8_3(L9_3)
                  L8_3 = L8_3.y
                  L9_3 = GetEntityCoords
                  L10_3 = L4_3
                  L9_3 = L9_3(L10_3)
                  L9_3 = L9_3.z
                  L9_3 = L9_3 + 1.2
                  L10_3 = 0.0
                  L11_3 = 0.0
                  L12_3 = 0.0
                  L13_3 = 0.0
                  L14_3 = 0.0
                  L15_3 = 0.0
                  L16_3 = 0.12
                  L17_3 = 0.12
                  L18_3 = 0.15
                  L19_3 = 255
                  L20_3 = 0
                  L21_3 = 0
                  L22_3 = 120
                  L23_3 = false
                  L24_3 = true
                  L25_3 = 2
                  L26_3 = false
                  L27_3 = nil
                  L28_3 = nil
                  L29_3 = false
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
                end
              end
            end
          end
        end
        ::lbl_418::
        L0_3 = L15_1
        if 1 == L0_3 then
          L0_3 = 1
          L1_3 = L19_1
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L19_1
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.npc
            L5_3 = DoesEntityExist
            L6_3 = L4_3
            L5_3 = L5_3(L6_3)
            if L5_3 then
              L5_3 = L19_1
              L5_3 = L5_3[L3_3]
              L5_3 = L5_3.Cercato
              if nil == L5_3 then
                L5_3 = DrawMarker
                L6_3 = 1
                L7_3 = GetEntityCoords
                L8_3 = L4_3
                L7_3 = L7_3(L8_3)
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 0.0
                L11_3 = 0.0
                L12_3 = 0.0
                L13_3 = 0.0
                L14_3 = 0.1
                L15_3 = 0.1
                L16_3 = 75.0
                L17_3 = L16_1
                L17_3 = L17_3[1]
                L18_3 = L16_1
                L18_3 = L18_3[2]
                L19_3 = L16_1
                L19_3 = L19_3[3]
                L20_3 = 100
                L21_3 = false
                L22_3 = false
                L23_3 = 2
                L24_3 = false
                L25_3 = false
                L26_3 = false
                L27_3 = false
                L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
              end
              L5_3 = GetEntityCoords
              L6_3 = L0_2
              L5_3 = L5_3(L6_3)
              L6_3 = GetEntityCoords
              L7_3 = L4_3
              L6_3 = L6_3(L7_3)
              L5_3 = L5_3 - L6_3
              L5_3 = #L5_3
              L6_3 = 1.7
              if L5_3 < L6_3 then
                L5_3 = L2_2
                if L3_3 ~= L5_3 then
                  L5_3 = L19_1
                  L5_3 = L5_3[L3_3]
                  L5_3 = L5_3.Cercato
                  if nil == L5_3 then
                    L5_3 = L19_1
                    L5_3 = L5_3[L3_3]
                    L5_3.Cercato = true
                    L5_3 = FreezeEntityPosition
                    L6_3 = L0_2
                    L7_3 = true
                    L5_3(L6_3, L7_3)
                    L5_3 = faiAnim
                    L6_3 = "anim@mp_snowball"
                    L7_3 = "pickup_snowball"
                    L8_3 = 750
                    L9_3 = 49
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                    L5_3 = Wait
                    L6_3 = 1000
                    L5_3(L6_3)
                    L5_3 = FreezeEntityPosition
                    L6_3 = L0_2
                    L7_3 = false
                    L5_3(L6_3, L7_3)
                    L5_3 = ExecuteCommand
                    L6_3 = "e shrug"
                    L5_3(L6_3)
                    L5_3 = Wait
                    L6_3 = 1000
                    L5_3(L6_3)
                  end
                end
              end
            end
          end
          L0_3 = DoesEntityExist
          L2_3 = L2_2
          L1_3 = L19_1
          L1_3 = L1_3[L2_3]
          L1_3 = L1_3.npc
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = GetEntityCoords
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            L1_3 = GetEntityCoords
            L3_3 = L2_2
            L2_3 = L19_1
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.npc
            L1_3 = L1_3(L2_3)
            L0_3 = L0_3 - L1_3
            L0_3 = #L0_3
            L1_3 = 1.7
            if L0_3 < L1_3 then
              L0_3 = FreezeEntityPosition
              L1_3 = L0_2
              L2_3 = true
              L0_3(L1_3, L2_3)
              L0_3 = faiAnim
              L1_3 = "anim@mp_snowball"
              L2_3 = "pickup_snowball"
              L3_3 = 750
              L4_3 = 49
              L0_3(L1_3, L2_3, L3_3, L4_3)
              L0_3 = Wait
              L1_3 = 1000
              L0_3(L1_3)
              L0_3 = FreezeEntityPosition
              L1_3 = L0_2
              L2_3 = false
              L0_3(L1_3, L2_3)
              L0_3 = PlaySoundFrontend
              L1_3 = -1
              L2_3 = "ROUND_ENDING_STINGER_CUSTOM"
              L3_3 = "CELEBRATION_SOUNDSET"
              L4_3 = 0
              L0_3(L1_3, L2_3, L3_3, L4_3)
              L0_3 = ExecuteCommand
              L1_3 = "e posatasca"
              L0_3(L1_3)
              L0_3 = SetVehicleDoorsLocked
              L1_3 = L10_1
              L2_3 = 1
              L0_3(L1_3, L2_3)
              L0_3 = 2
              L15_1 = L0_3
              L0_3 = exports
              L0_3 = L0_3.striano_inventory
              L1_3 = L0_3
              L0_3 = L0_3.delblipInteresse
              L0_3(L1_3)
              L0_3 = Wait
              L1_3 = 25
              L0_3(L1_3)
              L0_3 = exports
              L0_3 = L0_3.striano_inventory
              L1_3 = L0_3
              L0_3 = L0_3.blipInteresse
              L2_3 = L17_1.Consegna
              L0_3(L1_3, L2_3)
            end
          end
        end
        L0_3 = L15_1
        if 2 == L0_3 then
          L0_3 = L10_1
          if L0_3 then
            L0_3 = DoesEntityExist
            L1_3 = L10_1
            L0_3 = L0_3(L1_3)
            if L0_3 then
              goto lbl_596
            end
          end
          L0_3 = EndMission
          L0_3()
          do return end
          ::lbl_596::
          L0_3 = IsPedInAnyVehicle
          L1_3 = L0_2
          L2_3 = false
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = GetEntityCoords
            L1_3 = L10_1
            L0_3 = L0_3(L1_3)
            L1_3 = DrawMarker
            L2_3 = 1
            L3_3 = L0_3.x
            L4_3 = L0_3.y
            L5_3 = L0_3.z
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.0
            L11_3 = 0.0
            L12_3 = 0.1
            L13_3 = 0.1
            L14_3 = 75.0
            L15_3 = L16_1
            L15_3 = L15_3[1]
            L16_3 = L16_1
            L16_3 = L16_3[2]
            L17_3 = L16_1
            L17_3 = L17_3[3]
            L18_3 = 100
            L19_3 = false
            L20_3 = false
            L21_3 = 2
            L22_3 = false
            L23_3 = false
            L24_3 = false
            L25_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
          end
          L0_3 = L17_1
          if L0_3 then
            L0_3 = L17_1.Consegna
          end
          if not L0_3 then
            L1_3 = EndMission
            L1_3()
            return
          end
          L1_3 = DrawMarker
          L2_3 = 1
          L3_3 = L0_3.x
          L4_3 = L0_3.y
          L5_3 = L0_3.z
          L6_3 = 0.0
          L7_3 = 0.0
          L8_3 = 0.0
          L9_3 = 0.0
          L10_3 = 0.0
          L11_3 = 0.0
          L12_3 = 2.5
          L13_3 = 2.5
          L14_3 = 900.0
          L15_3 = L16_1
          L15_3 = L15_3[1]
          L16_3 = L16_1
          L16_3 = L16_3[2]
          L17_3 = L16_1
          L17_3 = L17_3[3]
          L18_3 = 100
          L19_3 = false
          L20_3 = false
          L21_3 = 2
          L22_3 = false
          L23_3 = false
          L24_3 = false
          L25_3 = false
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
          L1_3 = GetEntityCoords
          L2_3 = L0_2
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3 - L0_3
          L1_3 = #L1_3
          if L1_3 < 5.0 then
            L1_3 = GetEntitySpeed
            L2_3 = L0_2
            L1_3 = L1_3(L2_3)
            if L1_3 <= 5.0 then
              L1_3 = GetVehiclePedIsIn
              L2_3 = L0_2
              L3_3 = false
              L1_3 = L1_3(L2_3, L3_3)
              L2_3 = L10_1
              if L1_3 == L2_3 then
                L2_3 = TaskLeaveVehicle
                L3_3 = L0_2
                L4_3 = L10_1
                L5_3 = 16
                L2_3(L3_3, L4_3, L5_3)
                L2_3 = Wait
                L3_3 = 1000
                L2_3(L3_3)
                L2_3 = EndMission
                L2_3()
                L2_3 = MissionComplete
                L3_3 = 25
                L2_3(L3_3)
                return
              else
                L2_3 = exports
                L2_3 = L2_3.striano_combat
                L3_3 = L2_3
                L2_3 = L2_3.submexError
                L4_3 = "This is not the motorcyle request."
                L2_3(L3_3, L4_3)
                L2_3 = EndMission
                L2_3()
                return
              end
            end
          end
        end
      end
    end
  end
  L4_2(L5_2)
end
MissioneRubaVeicolo = L36_1
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = L24_1
  if L0_2 then
    L0_2 = false
    L24_1 = L0_2
    L0_2 = EndMission
    L0_2()
    L0_2 = faiAnim
    L1_2 = "switch@franklin@chopshop"
    L2_2 = "wipehands"
    L3_2 = 1000
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  else
    L0_2 = true
    L24_1 = L0_2
  end
  L0_2 = L30_1
  L1_2 = 900
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "timerMissioneServer"
  L2_2 = L7_1
  L3_2 = 900
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = 0
  L3_2 = vector3
  L4_2 = 4221.872
  L5_2 = 7324.995
  L6_2 = -0.088
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = 250.0
  L5_2 = {}
  L6_2 = vector3
  L7_2 = 3211.578
  L8_2 = 7878.459
  L9_2 = 6.644
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.Consegna = L6_2
  L6_2 = {}
  L7_2 = {}
  L8_2 = vector3
  L9_2 = 4210.061
  L10_2 = 7329.0
  L11_2 = 1.728
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.pos = L8_2
  L7_2.lib = "move_p_m_one_idles@generic"
  L7_2.dic = "fidget_rub_hands"
  L8_2 = {}
  L9_2 = vector3
  L10_2 = 4231.913
  L11_2 = 7321.842
  L12_2 = 2.146
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.pos = L9_2
  L8_2.lib = "move_p_m_one_idles@generic"
  L8_2.dic = "fidget_rub_chin"
  L9_2 = {}
  L10_2 = vector3
  L11_2 = 4207.987
  L12_2 = 7329.783
  L13_2 = 2.153
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.pos = L10_2
  L9_2.lib = "move_p_m_one_idles@generic"
  L9_2.dic = "fidget_rub_hands"
  L10_2 = {}
  L11_2 = vector3
  L12_2 = 4210.061
  L13_2 = 7329.0
  L14_2 = 1.728
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.pos = L11_2
  L10_2.lib = "move_p_m_one_idles@generic"
  L10_2.dic = "fidget_rub_hands"
  L11_2 = {}
  L12_2 = vector3
  L13_2 = 4231.913
  L14_2 = 7321.842
  L15_2 = 2.146
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2.pos = L12_2
  L11_2.lib = "move_p_m_one_idles@generic"
  L11_2.dic = "fidget_rub_chin"
  L12_2 = {}
  L13_2 = vector3
  L14_2 = 4207.987
  L15_2 = 7329.783
  L16_2 = 2.153
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2.pos = L13_2
  L12_2.lib = "move_p_m_one_idles@generic"
  L12_2.dic = "fidget_rub_hands"
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L5_2.PointsCassa = L6_2
  L17_1 = L5_2
  L5_2 = {}
  L6_2 = "a_m_m_ktown_01"
  L7_2 = "a_m_m_mexcntry_01"
  L8_2 = "a_m_m_salton_03"
  L9_2 = "a_m_m_rurmeth_01"
  L10_2 = "a_m_m_skidrow_01"
  L11_2 = "a_m_m_trampbeac_01"
  L12_2 = "a_m_m_tramp_01"
  L13_2 = "a_m_o_salton_01"
  L14_2 = "a_m_o_soucent_02"
  L15_2 = "a_m_o_soucent_03"
  L16_2 = "a_m_o_tramp_01"
  L17_2 = "a_m_y_genstreet_02"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L5_2[7] = L12_2
  L5_2[8] = L13_2
  L5_2[9] = L14_2
  L5_2[10] = L15_2
  L5_2[11] = L16_2
  L5_2[12] = L17_2
  L6_2 = exports
  L6_2 = L6_2.striano_inventory
  L7_2 = L6_2
  L6_2 = L6_2.delblipInteresse
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 25
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_inventory
  L7_2 = L6_2
  L6_2 = L6_2.blipInteresse
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = exports
  L6_2 = L6_2.striano_combat
  L7_2 = L6_2
  L6_2 = L6_2.submexImportant
  L8_2 = "Kill the jackals on the boat."
  L6_2(L7_2, L8_2)
  L6_2 = exports
  L6_2 = L6_2.text_guide
  L7_2 = L6_2
  L6_2 = L6_2.ClearGuideText
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 25
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.text_guide
  L7_2 = L6_2
  L6_2 = L6_2.GuidaVisibileNV
  L6_2(L7_2)
  L6_2 = -2100640717
  L7_2 = RequestModelStriano
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = CreateVehicle
  L8_2 = L6_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = 1
  L12_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L10_1 = L7_2
  L7_2 = PreparaVeicoloMissione
  L8_2 = L10_1
  L7_2(L8_2)
  L7_2 = SetModelAsNoLongerNeeded
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = SetBoatAnchor
  L8_2 = L10_1
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetBoatFrozenWhenAnchored
  L8_2 = L10_1
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetForcedBoatLocationWhenAnchored
  L8_2 = L10_1
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    while true do
      L0_3 = L24_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsPedDeadOrDying
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          goto lbl_20
        end
      end
      L0_3 = EndMission
      L0_3()
      do return end
      ::lbl_20::
      L0_3 = GetEntityCoords
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      L1_3 = L3_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 150.0
      if L0_3 < L1_3 then
        L0_3 = L1_2
        if not L0_3 then
          L0_3 = true
          L1_2 = L0_3
          L0_3 = math
          L0_3 = L0_3.random
          L1_3 = 1
          L2_3 = L17_1.PointsCassa
          L2_3 = #L2_3
          L0_3 = L0_3(L1_3, L2_3)
          L2_2 = L0_3
          L0_3 = 1
          L1_3 = L17_1.PointsCassa
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L17_1.PointsCassa
            L4_3 = L4_3[L3_3]
            L5_3 = math
            L5_3 = L5_3.random
            L6_3 = 1
            L7_3 = L5_2
            L7_3 = #L7_3
            L5_3 = L5_3(L6_3, L7_3)
            L6_3 = L5_2
            L6_3 = L6_3[L5_3]
            L7_3 = RequestModelStriano
            L8_3 = L6_3
            L7_3(L8_3)
            L7_3 = math
            L7_3 = L7_3.random
            L8_3 = 1
            L9_3 = 359
            L7_3 = L7_3(L8_3, L9_3)
            L8_3 = CreatePed
            L9_3 = 1
            L10_3 = L6_3
            L11_3 = vector3
            L12_3 = L4_3.pos
            L12_3 = L12_3.x
            L13_3 = L4_3.pos
            L13_3 = L13_3.y
            L14_3 = L4_3.pos
            L14_3 = L14_3.z
            L11_3 = L11_3(L12_3, L13_3, L14_3)
            L12_3 = L7_3 + 0.0
            L13_3 = true
            L14_3 = true
            L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            L9_3 = table
            L9_3 = L9_3.insert
            L10_3 = L19_1
            L11_3 = {}
            L11_3.npc = L8_3
            L9_3(L10_3, L11_3)
            L9_3 = table
            L9_3 = L9_3.insert
            L10_3 = L35_1
            L11_3 = {}
            L11_3.npc = L8_3
            L9_3(L10_3, L11_3)
            L9_3 = table
            L9_3 = L9_3.insert
            L10_3 = CombataMissPed
            L11_3 = L8_3
            L9_3(L10_3, L11_3)
            while true do
              L9_3 = PedToNet
              L10_3 = L8_3
              L9_3 = L9_3(L10_3)
              if 0 ~= L9_3 then
                L9_3 = PedToNet
                L10_3 = L8_3
                L9_3 = L9_3(L10_3)
                if nil ~= L9_3 then
                  break
                end
              end
              L9_3 = Wait
              L10_3 = 0
              L9_3(L10_3)
            end
            L9_3 = TriggerServerEvent
            L10_3 = "addPropMiss"
            L11_3 = L7_1
            L12_3 = PedToNet
            L13_3 = L8_3
            L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L12_3(L13_3)
            L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            L9_3 = SetPedFleeAttributes
            L10_3 = L8_3
            L11_3 = 0
            L12_3 = true
            L9_3(L10_3, L11_3, L12_3)
            L9_3 = faiAnim
            L10_3 = L4_3.lib
            L11_3 = L4_3.dic
            L12_3 = -1
            L13_3 = 49
            L14_3 = L8_3
            L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
            L9_3 = Wait
            L10_3 = 0
            L9_3(L10_3)
            L9_3 = SetEntityHeading
            L10_3 = L8_3
            L11_3 = L7_3 + 0.0
            L9_3(L10_3, L11_3)
            L9_3 = SetModelAsNoLongerNeeded
            L10_3 = L6_3
            L9_3(L10_3)
            L9_3 = SetPedDropsWeaponsWhenDead
            L10_3 = L8_3
            L11_3 = false
            L9_3(L10_3, L11_3)
          end
          L0_3 = -1
          L15_1 = L0_3
        end
      end
      L0_3 = L1_2
      if L0_3 then
        L0_3 = IsEntityDead
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          if not L0_3 then
            goto lbl_169
          end
        end
        L0_3 = EndMission
        L0_3()
        do return end
        ::lbl_169::
        L0_3 = L15_1
        if -1 == L0_3 then
          L0_3 = L35_1
          L0_3 = #L0_3
          L1_3 = 1
          L2_3 = -1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L35_1
            L4_3 = L4_3[L3_3]
            L5_3 = L4_3 or L5_3
            if L4_3 then
              L5_3 = L4_3.npc
            end
            if L5_3 and 0 ~= L5_3 then
              L6_3 = DoesEntityExist
              L7_3 = L5_3
              L6_3 = L6_3(L7_3)
              if L6_3 then
                goto lbl_197
              end
            end
            L6_3 = table
            L6_3 = L6_3.remove
            L7_3 = L35_1
            L8_3 = L3_3
            L6_3(L7_3, L8_3)
            goto lbl_283
            ::lbl_197::
            L6_3 = GetEntityCoords
            L7_3 = L0_2
            L6_3 = L6_3(L7_3)
            L7_3 = GetEntityCoords
            L8_3 = L5_3
            L7_3 = L7_3(L8_3)
            L6_3 = L6_3 - L7_3
            L6_3 = #L6_3
            L7_3 = HasEntityClearLosToEntity
            L8_3 = L5_3
            L9_3 = L0_2
            L10_3 = 17
            L7_3 = L7_3(L8_3, L9_3, L10_3)
            if L7_3 then
              L7_3 = HasEntityClearLosToEntity
              L8_3 = L5_3
              L9_3 = L0_2
              L10_3 = 16
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              if L7_3 then
                L7_3 = IsPedFacingPed
                L8_3 = L5_3
                L9_3 = L0_2
                L10_3 = L21_1
                L7_3 = L7_3(L8_3, L9_3, L10_3)
                if L7_3 then
                  L7_3 = L21_1
                  if L6_3 < L7_3 then
                    L7_3 = MakeNpcAngry
                    L8_3 = L3_3
                    L7_3(L8_3)
                end
              end
            end
            else
              L7_3 = IsPedShooting
              L8_3 = L0_2
              L7_3 = L7_3(L8_3)
              if L7_3 then
                L7_3 = L21_1
                if L6_3 < L7_3 then
                  L7_3 = MakeNpcAngry
                  L8_3 = L3_3
                  L7_3(L8_3)
              end
              else
                L7_3 = L21_1
                L7_3 = L7_3 / 2
                if L6_3 < L7_3 then
                  L7_3 = exports
                  L7_3 = L7_3.striano_combat
                  L8_3 = L7_3
                  L7_3 = L7_3.incombatanim
                  L7_3 = L7_3(L8_3)
                  if L7_3 then
                    L7_3 = MakeNpcAngry
                    L8_3 = L3_3
                    L7_3(L8_3)
                end
                else
                  L7_3 = L21_1
                  L7_3 = L7_3 / 3
                  if L6_3 < L7_3 then
                    L7_3 = GetEntitySpeed
                    L8_3 = L0_2
                    L7_3 = L7_3(L8_3)
                    if L7_3 > 1.0 then
                      L7_3 = MakeNpcAngry
                      L8_3 = L3_3
                      L7_3(L8_3)
                  end
                  else
                    L7_3 = IsPedFleeing
                    L8_3 = L5_3
                    L7_3 = L7_3(L8_3)
                    if L7_3 then
                      L7_3 = MakeNpcAngry
                      L8_3 = L3_3
                      L7_3(L8_3)
                    end
                  end
                end
              end
            end
            ::lbl_283::
          end
        end
        L0_3 = true
        L1_3 = L15_1
        if 0 ~= L1_3 then
          L1_3 = L15_1
          if -1 ~= L1_3 then
            goto lbl_332
          end
        end
        L1_3 = 1
        L2_3 = L19_1
        L2_3 = #L2_3
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = L19_1
          L5_3 = L5_3[L4_3]
          L5_3 = L5_3.npc
          L6_3 = DoesEntityExist
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if L6_3 then
            L6_3 = IsEntityDead
            L7_3 = L5_3
            L6_3 = L6_3(L7_3)
            if not L6_3 then
              L6_3 = IsPedDeadOrDying
              L7_3 = L5_3
              L8_3 = true
              L6_3 = L6_3(L7_3, L8_3)
              if not L6_3 then
                L6_3 = GetEntityHealth
                L7_3 = L5_3
                L6_3 = L6_3(L7_3)
                if not (L6_3 <= 0.0) then
                  L6_3 = IsPedRagdoll
                  L7_3 = L5_3
                  L6_3 = L6_3(L7_3)
                  if L6_3 then
                  else
                    L0_3 = false
                  end
                end
              end
            end
          end
        end
        if L0_3 then
          L1_3 = 1
          L15_1 = L1_3
        end
        ::lbl_332::
        L1_3 = L15_1
        if 1 == L1_3 then
          L1_3 = 1
          L2_3 = L19_1
          L2_3 = #L2_3
          L3_3 = 1
          for L4_3 = L1_3, L2_3, L3_3 do
            L5_3 = L19_1
            L5_3 = L5_3[L4_3]
            L5_3 = L5_3.npc
            L6_3 = L19_1
            L6_3 = L6_3[L4_3]
            L6_3 = L6_3.Cercato
            if nil == L6_3 then
              L6_3 = DrawMarker
              L7_3 = 1
              L8_3 = GetEntityCoords
              L9_3 = L5_3
              L8_3 = L8_3(L9_3)
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.1
              L16_3 = 0.1
              L17_3 = 75.0
              L18_3 = L16_1
              L18_3 = L18_3[1]
              L19_3 = L16_1
              L19_3 = L19_3[2]
              L20_3 = L16_1
              L20_3 = L20_3[3]
              L21_3 = 100
              L22_3 = false
              L23_3 = false
              L24_3 = 2
              L25_3 = false
              L26_3 = false
              L27_3 = false
              L28_3 = false
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            end
            L6_3 = GetEntityCoords
            L7_3 = L0_2
            L6_3 = L6_3(L7_3)
            L7_3 = GetEntityCoords
            L8_3 = L5_3
            L7_3 = L7_3(L8_3)
            L6_3 = L6_3 - L7_3
            L6_3 = #L6_3
            L7_3 = 1.8
            if L6_3 < L7_3 then
              L6_3 = L2_2
              if L4_3 ~= L6_3 then
                L6_3 = L19_1
                L6_3 = L6_3[L4_3]
                L6_3 = L6_3.Cercato
                if nil == L6_3 then
                  L6_3 = L19_1
                  L6_3 = L6_3[L4_3]
                  L6_3.Cercato = true
                  L6_3 = FreezeEntityPosition
                  L7_3 = L0_2
                  L8_3 = true
                  L6_3(L7_3, L8_3)
                  L6_3 = faiAnim
                  L7_3 = "anim@mp_snowball"
                  L8_3 = "pickup_snowball"
                  L9_3 = 750
                  L10_3 = 49
                  L6_3(L7_3, L8_3, L9_3, L10_3)
                  L6_3 = Wait
                  L7_3 = 1000
                  L6_3(L7_3)
                  L6_3 = FreezeEntityPosition
                  L7_3 = L0_2
                  L8_3 = false
                  L6_3(L7_3, L8_3)
                  L6_3 = ExecuteCommand
                  L7_3 = "e shrug"
                  L6_3(L7_3)
                  L6_3 = Wait
                  L7_3 = 1000
                  L6_3(L7_3)
                end
              end
            end
          end
          L1_3 = GetEntityCoords
          L2_3 = L0_2
          L1_3 = L1_3(L2_3)
          L2_3 = GetEntityCoords
          L4_3 = L2_2
          L3_3 = L19_1
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.npc
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          L2_3 = 1.8
          if L1_3 < L2_3 then
            L1_3 = FreezeEntityPosition
            L2_3 = L0_2
            L3_3 = true
            L1_3(L2_3, L3_3)
            L1_3 = faiAnim
            L2_3 = "anim@mp_snowball"
            L3_3 = "pickup_snowball"
            L4_3 = 750
            L5_3 = 49
            L1_3(L2_3, L3_3, L4_3, L5_3)
            L1_3 = Wait
            L2_3 = 1000
            L1_3(L2_3)
            L1_3 = FreezeEntityPosition
            L2_3 = L0_2
            L3_3 = false
            L1_3(L2_3, L3_3)
            L1_3 = PlaySoundFrontend
            L2_3 = -1
            L3_3 = "ROUND_ENDING_STINGER_CUSTOM"
            L4_3 = "CELEBRATION_SOUNDSET"
            L5_3 = 0
            L1_3(L2_3, L3_3, L4_3, L5_3)
            L1_3 = ExecuteCommand
            L2_3 = "e posatasca"
            L1_3(L2_3)
            L1_3 = 2
            L15_1 = L1_3
            L1_3 = exports
            L1_3 = L1_3.striano_inventory
            L2_3 = L1_3
            L1_3 = L1_3.delblipInteresse
            L1_3(L2_3)
            L1_3 = Wait
            L2_3 = 25
            L1_3(L2_3)
            L1_3 = exports
            L1_3 = L1_3.striano_inventory
            L2_3 = L1_3
            L1_3 = L1_3.blipInteresse
            L3_3 = L17_1.Consegna
            L1_3(L2_3, L3_3)
          end
        end
        L1_3 = L15_1
        if 2 == L1_3 then
          L1_3 = DoesEntityExist
          L2_3 = L10_1
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = EndMission
            L1_3()
            return
          end
          L1_3 = IsPedInAnyVehicle
          L2_3 = L0_2
          L3_3 = false
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = DrawMarker
            L2_3 = 1
            L3_3 = GetEntityCoords
            L4_3 = L10_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.0
            L5_3 = 0.0
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.1
            L11_3 = 0.1
            L12_3 = 75.0
            L13_3 = L16_1
            L13_3 = L13_3[1]
            L14_3 = L16_1
            L14_3 = L14_3[2]
            L15_3 = L16_1
            L15_3 = L15_3[3]
            L16_3 = 100
            L17_3 = false
            L18_3 = false
            L19_3 = 2
            L20_3 = false
            L21_3 = false
            L22_3 = false
            L23_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
          end
          L1_3 = DrawMarker
          L2_3 = 1
          L3_3 = L17_1.Consegna
          L4_3 = 0.0
          L5_3 = 0.0
          L6_3 = 0.0
          L7_3 = 0.0
          L8_3 = 0.0
          L9_3 = 0.0
          L10_3 = 2.5
          L11_3 = 2.5
          L12_3 = 900.0
          L13_3 = L16_1
          L13_3 = L13_3[1]
          L14_3 = L16_1
          L14_3 = L14_3[2]
          L15_3 = L16_1
          L15_3 = L15_3[3]
          L16_3 = 100
          L17_3 = false
          L18_3 = false
          L19_3 = 2
          L20_3 = false
          L21_3 = false
          L22_3 = false
          L23_3 = false
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
          L1_3 = GetEntityCoords
          L2_3 = L0_2
          L1_3 = L1_3(L2_3)
          L2_3 = L17_1.Consegna
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          if L1_3 < 5.0 then
            L1_3 = GetEntitySpeed
            L2_3 = L0_2
            L1_3 = L1_3(L2_3)
            if L1_3 <= 5.0 then
              L1_3 = MissionComplete
              L1_3()
              L1_3 = EndMission
              L1_3()
              return
            end
          end
        end
      end
    end
  end
  L7_2(L8_2)
end
MissionePirati = L36_1
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L24_1
  if L0_2 then
    L0_2 = false
    L24_1 = L0_2
    L0_2 = EndMission
    L0_2()
    L0_2 = faiAnim
    L1_2 = "switch@franklin@chopshop"
    L2_2 = "wipehands"
    L3_2 = 1000
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  else
    L0_2 = true
    L24_1 = L0_2
  end
  L0_2 = L30_1
  L1_2 = 900
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "timerMissioneServer"
  L2_2 = L7_1
  L3_2 = 900
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = 0
  L3_2 = nil
  L4_2 = false
  L5_2 = vector3
  L6_2 = 1477.318
  L7_2 = 6376.456
  L8_2 = 22.375
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = 2014313426
  L7_2 = {}
  L8_2 = vector3
  L9_2 = 1477.843
  L10_2 = 6380.764
  L11_2 = 22.58
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.Pos = L8_2
  L7_2.Heading = 350.0
  L8_2 = vector3
  L9_2 = -81.016
  L10_2 = 6277.556
  L11_2 = 30.354
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.Consegna = L8_2
  L17_1 = L7_2
  L7_2 = exports
  L7_2 = L7_2.striano_inventory
  L8_2 = L7_2
  L7_2 = L7_2.delblipInteresse
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 25
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_inventory
  L8_2 = L7_2
  L7_2 = L7_2.blipInteresse
  L9_2 = L17_1.Pos
  L7_2(L8_2, L9_2)
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.submexImportant
  L9_2 = "Go to the coord and hide yourself downside vetir."
  L7_2(L8_2, L9_2)
  L7_2 = exports
  L7_2 = L7_2.text_guide
  L8_2 = L7_2
  L7_2 = L7_2.ClearGuideText
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 25
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.text_guide
  L8_2 = L7_2
  L7_2 = L7_2.GuidaVisibileNV
  L7_2(L8_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    while true do
      L0_3 = L24_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      L1_3 = L17_1.Pos
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      if L0_3 < 80 then
        L0_3 = L1_2
        if not L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_inventory
          L1_3 = L0_3
          L0_3 = L0_3.delblipInteresse
          L0_3(L1_3)
          L0_3 = RequestModelStriano
          L1_3 = L6_2
          L0_3(L1_3)
          L0_3 = CreateVehicle
          L1_3 = L6_2
          L2_3 = L17_1.Pos
          L3_3 = L17_1.Heading
          L4_3 = 1
          L5_3 = 0
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          L10_1 = L0_3
          L0_3 = SetEntityAsMissionEntity
          L1_3 = L10_1
          L2_3 = true
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = ClearAreaOfVehicles
          L1_3 = GetEntityCoords
          L2_3 = L10_1
          L1_3 = L1_3(L2_3)
          L2_3 = 5
          L3_3 = false
          L4_3 = false
          L5_3 = false
          L6_3 = false
          L7_3 = false
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
          L0_3 = SetVehicleOnGroundProperly
          L1_3 = L10_1
          L0_3(L1_3)
          L0_3 = SetVehicleDoorsLocked
          L1_3 = L10_1
          L2_3 = 2
          L0_3(L1_3, L2_3)
          L0_3 = SetModelAsNoLongerNeeded
          L1_3 = L6_2
          L0_3(L1_3)
          L0_3 = -106498753
          L1_3 = RequestModelStriano
          L2_3 = L0_3
          L1_3(L2_3)
          L1_3 = CreatePedInsideVehicle
          L2_3 = L10_1
          L3_3 = 26
          L4_3 = L0_3
          L5_3 = -1
          L6_3 = true
          L7_3 = true
          L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
          L2_3 = SetBlockingOfNonTemporaryEvents
          L3_3 = L1_3
          L4_3 = true
          L2_3(L3_3, L4_3)
          L2_3 = SetEntityAsMissionEntity
          L3_3 = L1_3
          L4_3 = true
          L5_3 = true
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = SetModelAsNoLongerNeeded
          L3_3 = L0_3
          L2_3(L3_3)
          L2_3 = SetDriverAbility
          L3_3 = L1_3
          L4_3 = 100.0
          L2_3(L3_3, L4_3)
          L2_3 = SetDriverAggressiveness
          L3_3 = L1_3
          L4_3 = 0.0
          L2_3(L3_3, L4_3)
          L2_3 = SetPedStayInVehicleWhenJacked
          L3_3 = L1_3
          L4_3 = true
          L2_3(L3_3, L4_3)
          L2_3 = SetPedCanBeDraggedOut
          L3_3 = L1_3
          L4_3 = false
          L2_3(L3_3, L4_3)
          L2_3 = SetDriverRacingModifier
          L3_3 = L1_3
          L4_3 = 0.0
          L2_3(L3_3, L4_3)
          L2_3 = 1
          L3_3 = 9
          L4_3 = 1
          for L5_3 = L2_3, L3_3, L4_3 do
            L6_3 = {}
            L7_3 = "WEAPON_SNSPISTOL"
            L8_3 = "WEAPON_MINISMG"
            L9_3 = "WEAPON_MUSKET"
            L6_3[1] = L7_3
            L6_3[2] = L8_3
            L6_3[3] = L9_3
            L7_3 = "WEAPON_SNSPISTOL"
            L8_3 = math
            L8_3 = L8_3.random
            L9_3 = #L6_3
            L8_3 = L8_3(L9_3)
            L7_3 = L6_3[L8_3]
            L8_3 = {}
            L9_3 = "a_m_m_ktown_01"
            L10_3 = "a_m_m_mexcntry_01"
            L11_3 = "a_m_m_rurmeth_01"
            L12_3 = "a_m_m_skidrow_01"
            L13_3 = "a_m_m_trampbeac_01"
            L14_3 = "a_m_m_tramp_01"
            L15_3 = "a_m_o_salton_01"
            L16_3 = "a_m_o_soucent_02"
            L17_3 = "a_m_o_soucent_03"
            L18_3 = "a_m_o_tramp_01"
            L19_3 = "a_m_y_genstreet_02"
            L8_3[1] = L9_3
            L8_3[2] = L10_3
            L8_3[3] = L11_3
            L8_3[4] = L12_3
            L8_3[5] = L13_3
            L8_3[6] = L14_3
            L8_3[7] = L15_3
            L8_3[8] = L16_3
            L8_3[9] = L17_3
            L8_3[10] = L18_3
            L8_3[11] = L19_3
            L9_3 = math
            L9_3 = L9_3.random
            L10_3 = 1
            L11_3 = #L8_3
            L9_3 = L9_3(L10_3, L11_3)
            L10_3 = L8_3[L9_3]
            L11_3 = RequestModelStriano
            L12_3 = L10_3
            L11_3(L12_3)
            L11_3 = L10_3
            L12_3 = CreatePedInsideVehicle
            L13_3 = L10_1
            L14_3 = 26
            L15_3 = L11_3
            L16_3 = L5_3 - 1
            L17_3 = 1
            L18_3 = 1
            L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            L13_3 = table
            L13_3 = L13_3.insert
            L14_3 = L19_1
            L15_3 = {}
            L15_3.npc = L12_3
            L15_3.miaArma = L7_3
            L13_3(L14_3, L15_3)
            L13_3 = SetModelAsNoLongerNeeded
            L14_3 = L10_3
            L13_3(L14_3)
            L13_3 = GiveWeaponToPed
            L14_3 = npcVar
            L15_3 = GetHashKey
            L16_3 = L7_3
            L15_3 = L15_3(L16_3)
            L16_3 = 999
            L17_3 = false
            L18_3 = true
            L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
          end
          L2_3 = L17_1.Consegna
          L3_2 = L2_3
          L2_3 = ClearPedDriveByClipsetOverride
          L3_3 = L1_3
          L2_3(L3_3)
          L2_3 = SetDriverAggressiveness
          L3_3 = L1_3
          L4_3 = 1.0
          L2_3(L3_3, L4_3)
          L2_3 = SetDriverRacingModifier
          L3_3 = L1_3
          L4_3 = 1.0
          L2_3(L3_3, L4_3)
          L11_1 = L1_3
          L2_3 = true
          L1_2 = L2_3
          L2_3 = Wait
          L3_3 = 3000
          L2_3(L3_3)
        end
      end
      L0_3 = L1_2
      if L0_3 then
        L0_3 = IsEntityDead
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
          if not L0_3 then
            goto lbl_211
          end
        end
        L0_3 = EndMission
        L0_3()
        do return end
        ::lbl_211::
        L0_3 = DoesEntityExist
        L1_3 = L11_1
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = IsEntityDead
          L1_3 = L11_1
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsPedFatallyInjured
            L1_3 = L11_1
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = IsPedInAnyVehicle
              L1_3 = L11_1
              L0_3 = L0_3(L1_3)
              if L0_3 then
                goto lbl_290
              end
            end
          end
          L0_3 = L4_2
          if not L0_3 then
            L0_3 = print
            L1_3 = "Il conducente \195\168 morto prima di arrivare a destinazione o non era nel veicolo!"
            L0_3(L1_3)
            L0_3 = EndMission
            L0_3()
            return
          else
            L0_3 = true
            L1_3 = L4_2
            if L1_3 then
              L1_3 = 1
              L2_3 = L19_1
              L2_3 = #L2_3
              L3_3 = 1
              for L4_3 = L1_3, L2_3, L3_3 do
                L5_3 = L19_1
                L5_3 = L5_3[L4_3]
                L5_3 = L5_3.npc
                L6_3 = DoesEntityExist
                L7_3 = L5_3
                L6_3 = L6_3(L7_3)
                if L6_3 then
                  L6_3 = IsEntityDead
                  L7_3 = L5_3
                  L6_3 = L6_3(L7_3)
                  if not L6_3 then
                    L6_3 = IsPedDeadOrDying
                    L7_3 = L5_3
                    L8_3 = true
                    L6_3 = L6_3(L7_3, L8_3)
                    if not L6_3 then
                      L6_3 = GetEntityHealth
                      L7_3 = L5_3
                      L6_3 = L6_3(L7_3)
                      if not (L6_3 <= 0.0) then
                        L6_3 = IsPedRagdoll
                        L7_3 = L5_3
                        L6_3 = L6_3(L7_3)
                        if L6_3 then
                        else
                          L0_3 = false
                        end
                      end
                    end
                  end
                end
              end
              if L0_3 then
                L1_3 = EndMission
                L1_3()
                L1_3 = MissionComplete
                L2_3 = 25
                L1_3(L2_3)
                return
              end
            end
          end
          ::lbl_290::
          L0_3 = L4_2
          if not L0_3 then
            L0_3 = L5_2
            L1_3 = GetEntityCoords
            L2_3 = PlayerPedId
            L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L2_3()
            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
            L0_3 = L0_3 - L1_3
            L0_3 = #L0_3
            L1_3 = 1.5
            if L0_3 > L1_3 then
              L0_3 = IsEntityAttached
              L1_3 = PlayerPedId
              L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L1_3()
              L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
              if not L0_3 then
                L0_3 = DrawMarker
                L1_3 = 28
                L2_3 = L5_2
                L3_3 = 0.0
                L4_3 = 0.0
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 1.5
                L10_3 = 1.5
                L11_3 = 1.5
                L12_3 = 255
                L13_3 = 255
                L14_3 = 255
                L15_3 = 150
                L16_3 = false
                L17_3 = false
                L18_3 = 2
                L19_3 = false
                L20_3 = false
                L21_3 = false
                L22_3 = false
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
                L0_3 = DrawMarker
                L1_3 = 1
                L2_3 = L5_2
                L3_3 = 0.0
                L4_3 = 0.0
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.5
                L10_3 = 0.5
                L11_3 = 50.0
                L12_3 = 255
                L13_3 = 255
                L14_3 = 255
                L15_3 = 150
                L16_3 = false
                L17_3 = false
                L18_3 = 2
                L19_3 = false
                L20_3 = false
                L21_3 = false
                L22_3 = false
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
              end
            else
              L0_3 = IsEntityAttached
              L1_3 = PlayerPedId
              L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L1_3()
              L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
              if not L0_3 then
                L0_3 = IsPedInAnyVehicle
                L1_3 = PlayerPedId
                L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L1_3()
                L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
                if not L0_3 then
                  L0_3 = faiAnim
                  L1_3 = "missexile3"
                  L2_3 = "ex03_train_roof_idle"
                  L3_3 = -1
                  L4_3 = 1
                  L0_3(L1_3, L2_3, L3_3, L4_3)
                  L0_3 = AttachEntityToEntity
                  L1_3 = PlayerPedId
                  L1_3 = L1_3()
                  L2_3 = L10_1
                  L3_3 = 0
                  L4_3 = 0.06
                  L5_3 = -2.72
                  L6_3 = -1.18
                  L7_3 = 166.0
                  L8_3 = -2.0
                  L9_3 = 1.0
                  L10_3 = true
                  L11_3 = true
                  L12_3 = false
                  L13_3 = true
                  L14_3 = 1
                  L15_3 = true
                  L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                  L0_3 = TaskVehicleDriveToCoord
                  L1_3 = L11_1
                  L2_3 = L10_1
                  L3_3 = L3_2.x
                  L4_3 = L3_2.y
                  L5_3 = L3_2.z
                  L6_3 = 100.0
                  L7_3 = 0
                  L8_3 = L6_2
                  L9_3 = 2883621
                  L10_3 = 15.0
                  L11_3 = true
                  L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
              end
              else
                L0_3 = IsEntityAttached
                L1_3 = PlayerPedId
                L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L1_3()
                L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
                if L0_3 then
                  L0_3 = IsPedInAnyVehicle
                  L1_3 = PlayerPedId
                  L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L1_3()
                  L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
                  if not L0_3 then
                    L0_3 = IsEntityPlayingAnim
                    L1_3 = PlayerPedId
                    L1_3 = L1_3()
                    L2_3 = "missexile3"
                    L3_3 = "ex03_train_roof_idle"
                    L4_3 = 3
                    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                    if not L0_3 then
                      L0_3 = faiAnim
                      L1_3 = "missexile3"
                      L2_3 = "ex03_train_roof_idle"
                      L3_3 = -1
                      L4_3 = 1
                      L0_3(L1_3, L2_3, L3_3, L4_3)
                    end
                  end
                end
              end
            end
          end
        end
        L0_3 = L3_2
        if nil ~= L0_3 then
          L0_3 = L3_2
          L1_3 = GetEntityCoords
          L2_3 = L11_1
          L1_3 = L1_3(L2_3)
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          if L0_3 < 15.0 then
            L0_3 = IsPedInAnyVehicle
            L1_3 = L11_1
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = L4_2
              if not L0_3 then
                L0_3 = true
                L4_2 = L0_3
                L0_3 = PlayerPedId
                L0_3 = L0_3()
                L1_3 = DetachEntity
                L2_3 = L0_3
                L1_3(L2_3)
                L1_3 = FreezeEntityPosition
                L2_3 = L0_3
                L3_3 = true
                L1_3(L2_3, L3_3)
                L1_3 = GetEntityCoords
                L2_3 = L10_1
                L1_3 = L1_3(L2_3)
                L2_3 = GetEntityHeading
                L3_3 = L10_1
                L2_3 = L2_3(L3_3)
                L3_3 = SetEntityHeading
                L4_3 = L0_3
                L5_3 = L2_3
                L3_3(L4_3, L5_3)
                L3_3 = GetEntityForwardVector
                L4_3 = L10_1
                L3_3 = L3_3(L4_3)
                L4_3 = table
                L4_3 = L4_3.unpack
                L5_3 = GetEntityCoords
                L6_3 = L0_3
                L5_3 = L5_3(L6_3)
                L6_3 = L3_3 * 1.0
                L6_3 = L6_3 * -1
                L5_3 = L5_3 + L6_3
                L4_3, L5_3, L6_3 = L4_3(L5_3)
                L7_3 = SetEntityCoords
                L8_3 = PlayerPedId
                L8_3 = L8_3()
                L9_3 = L4_3
                L10_3 = L5_3
                L11_3 = L1_3.z
                L11_3 = L11_3 - 1.0
                L7_3(L8_3, L9_3, L10_3, L11_3)
                L7_3 = RequestCollisionAtCoord
                L8_3 = L4_3
                L9_3 = L5_3
                L10_3 = L1_3.z
                L10_3 = L10_3 - 1.0
                L7_3(L8_3, L9_3, L10_3)
                L7_3 = FreezeEntityPosition
                L8_3 = L0_3
                L9_3 = false
                L7_3(L8_3, L9_3)
                L7_3 = faiAnim
                L8_3 = "get_up@sat_on_floor@to_stand"
                L9_3 = "getup_0"
                L10_3 = 1000
                L11_3 = 1
                L7_3(L8_3, L9_3, L10_3, L11_3)
                L7_3 = GetEntitySpeed
                L8_3 = L10_1
                L7_3 = L7_3(L8_3)
                while L7_3 > 2.0 do
                  L7_3 = L7_3 * 0.92
                  L8_3 = SetDriveTaskMaxCruiseSpeed
                  L9_3 = L11_1
                  L10_3 = L7_3
                  L8_3(L9_3, L10_3)
                  L8_3 = SetVehicleForwardSpeed
                  L9_3 = L10_1
                  L10_3 = L7_3
                  L8_3(L9_3, L10_3)
                  L8_3 = TaskVehicleTempAction
                  L9_3 = L11_1
                  L10_3 = L10_1
                  L11_3 = 1
                  L12_3 = 100
                  L8_3(L9_3, L10_3, L11_3, L12_3)
                  L8_3 = Wait
                  L9_3 = 100
                  L8_3(L9_3)
                end
                L8_3 = TaskVehicleTempAction
                L9_3 = L11_1
                L10_3 = L10_1
                L11_3 = 27
                L12_3 = 2000
                L8_3(L9_3, L10_3, L11_3, L12_3)
                L8_3 = TaskLeaveVehicle
                L9_3 = L11_1
                L10_3 = L10_1
                L11_3 = 0
                L8_3(L9_3, L10_3, L11_3)
                L8_3 = Wait
                L9_3 = 1000
                L8_3(L9_3)
                L8_3 = L33_1
                L9_3 = L11_1
                L8_3(L9_3)
                L8_3 = Wait
                L9_3 = 1000
                L8_3(L9_3)
                L8_3 = L32_1
                L8_3()
              end
            end
          end
        end
      end
    end
  end
  L7_2(L8_2)
end
MissioneConvoglio = L36_1
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L24_1
  if L0_2 then
    L0_2 = false
    L24_1 = L0_2
    L0_2 = EndMission
    L0_2()
    L0_2 = faiAnim
    L1_2 = "switch@franklin@chopshop"
    L2_2 = "wipehands"
    L3_2 = 1000
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  else
    L0_2 = true
    L24_1 = L0_2
  end
  L0_2 = L30_1
  L1_2 = 900
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "timerMissioneServer"
  L2_2 = L7_1
  L3_2 = 900
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = 0
  L3_2 = false
  L4_2 = nil
  L5_2 = false
  L6_2 = false
  L7_2 = {}
  L8_2 = vector3
  L9_2 = 3484.01
  L10_2 = 7495.793
  L11_2 = 6.571
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.Pos = L8_2
  L7_2.Heading = 0.0
  L8_2 = {}
  L9_2 = vector3
  L10_2 = 3371.709
  L11_2 = 7368.36
  L12_2 = 7.029
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.Consegna = L8_2
  L17_1 = L7_2
  L7_2 = exports
  L7_2 = L7_2.text_guide
  L8_2 = L7_2
  L7_2 = L7_2.ClearGuideText
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 25
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.text_guide
  L8_2 = L7_2
  L7_2 = L7_2.GuidaVisibileNV
  L7_2(L8_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    while true do
      L0_3 = L24_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L1_2
      if not L0_3 then
        L0_3 = exports
        L0_3 = L0_3.striano_combat
        L1_3 = L0_3
        L0_3 = L0_3.submexImportant
        L2_3 = "Follow traitors undetected to reach the hideout."
        L0_3(L1_3, L2_3)
        L0_3 = exports
        L0_3 = L0_3.striano_inventory
        L1_3 = L0_3
        L0_3 = L0_3.delblipInteresse
        L0_3(L1_3)
        L0_3 = -106498753
        L1_3 = RequestModelStriano
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = CreatePed
        L2_3 = 1
        L3_3 = L0_3
        L4_3 = L17_1.Pos
        L5_3 = L17_1.Heading
        L6_3 = true
        L7_3 = true
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L2_3 = 0
        while true do
          L3_3 = DoesEntityExist
          L4_3 = L1_3
          L3_3 = L3_3(L4_3)
          if not (not L3_3 and L2_3 < 100) then
            break
          end
          L3_3 = Wait
          L4_3 = 0
          L3_3(L4_3)
          L2_3 = L2_3 + 1
        end
        L3_3 = DoesEntityExist
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          L3_3 = exports
          L3_3 = L3_3.striano_combat
          L4_3 = L3_3
          L3_3 = L3_3.testo3d
          L5_3 = "Mission error!"
          L3_3(L4_3, L5_3)
          L3_3 = EndMission
          L3_3()
          return
        end
        L3_3 = table
        L3_3 = L3_3.insert
        L4_3 = L35_1
        L5_3 = {}
        L5_3.npc = L1_3
        L3_3(L4_3, L5_3)
        L3_3 = table
        L3_3 = L3_3.insert
        L4_3 = L19_1
        L5_3 = {}
        L6_3 = npcvar
        L5_3.npc = L6_3
        L3_3(L4_3, L5_3)
        L3_3 = SetBlockingOfNonTemporaryEvents
        L4_3 = L1_3
        L5_3 = true
        L3_3(L4_3, L5_3)
        L3_3 = SetEntityAsMissionEntity
        L4_3 = L1_3
        L5_3 = true
        L6_3 = true
        L3_3(L4_3, L5_3, L6_3)
        L3_3 = SetModelAsNoLongerNeeded
        L4_3 = L0_3
        L3_3(L4_3)
        L3_3 = 2145640135
        L4_3 = RequestModelStriano
        L5_3 = L3_3
        L4_3(L5_3)
        L4_3 = 1278330017
        L5_3 = RequestModelStriano
        L6_3 = L4_3
        L5_3(L6_3)
        L5_3 = 1
        L6_3 = 2
        L7_3 = 1
        for L8_3 = L5_3, L6_3, L7_3 do
          L9_3 = L3_3
          if 2 == L8_3 then
            L9_3 = L4_3
          end
          L10_3 = CreatePed
          L11_3 = 1
          L12_3 = L9_3
          L13_3 = L17_1.Pos
          L14_3 = L17_1.Heading
          L15_3 = true
          L16_3 = true
          L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
          L11_3 = 0
          while true do
            L12_3 = DoesEntityExist
            L13_3 = L10_3
            L12_3 = L12_3(L13_3)
            if not (not L12_3 and L11_3 < 100) then
              break
            end
            L12_3 = Wait
            L13_3 = 0
            L12_3(L13_3)
            L11_3 = L11_3 + 1
          end
          if L11_3 < 100 then
            L12_3 = table
            L12_3 = L12_3.insert
            L13_3 = L35_1
            L14_3 = {}
            L14_3.npc = L10_3
            L12_3(L13_3, L14_3)
            L12_3 = table
            L12_3 = L12_3.insert
            L13_3 = L19_1
            L14_3 = {}
            L14_3.npc = L10_3
            L12_3(L13_3, L14_3)
          end
          L12_3 = DoesEntityExist
          L13_3 = L10_3
          L12_3 = L12_3(L13_3)
          if not L12_3 then
            L12_3 = exports
            L12_3 = L12_3.striano_combat
            L13_3 = L12_3
            L12_3 = L12_3.testo3d
            L14_3 = "Mission error!"
            L12_3(L13_3, L14_3)
            L12_3 = EndMission
            L12_3()
            return
          end
        end
        L5_3 = 1
        L6_3 = L17_1.Consegna
        L6_3 = L6_3[L5_3]
        L4_2 = L6_3
        L6_3 = 1
        L7_3 = L19_1
        L7_3 = #L7_3
        L8_3 = 1
        for L9_3 = L6_3, L7_3, L8_3 do
          L10_3 = L19_1
          L10_3 = L10_3[L9_3]
          L10_3 = L10_3.npc
          L11_3 = offset
          if not L11_3 then
            L11_3 = vector3
            L12_3 = 0.0
            L13_3 = -2.0
            L14_3 = 0.0
            L11_3 = L11_3(L12_3, L13_3, L14_3)
          end
          L12_3 = SetBlockingOfNonTemporaryEvents
          L13_3 = L10_3
          L14_3 = true
          L12_3(L13_3, L14_3)
          L12_3 = TaskFollowToOffsetOfEntity
          L13_3 = L10_3
          L14_3 = L1_3
          L15_3 = L11_3.x
          L16_3 = L11_3.y
          L17_3 = L11_3.z
          L18_3 = 1.0
          L19_3 = -1
          L20_3 = 1.0
          L21_3 = true
          L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        end
        L11_1 = L1_3
        L6_3 = true
        L1_2 = L6_3
        L6_3 = Wait
        L7_3 = 3000
        L6_3(L7_3)
      end
      L0_3 = L1_2
      if L0_3 then
        L0_3 = IsEntityDead
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
          if not L0_3 then
            goto lbl_213
          end
        end
        L0_3 = EndMission
        L0_3()
        do return end
        ::lbl_213::
        L0_3 = DoesEntityExist
        L1_3 = L11_1
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = IsEntityDead
          L1_3 = L11_1
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsPedFatallyInjured
            L1_3 = L11_1
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              goto lbl_297
            end
          end
          L0_3 = L5_2
          if not L0_3 then
            L0_3 = exports
            L0_3 = L0_3.striano_combat
            L1_3 = L0_3
            L0_3 = L0_3.testo3d
            L2_3 = "Mission failed"
            L0_3(L1_3, L2_3)
            L0_3 = EndMission
            L0_3()
            return
          else
            L0_3 = true
            L1_3 = L5_2
            if L1_3 then
              L1_3 = 1
              L2_3 = L19_1
              L2_3 = #L2_3
              L3_3 = 1
              for L4_3 = L1_3, L2_3, L3_3 do
                L5_3 = L19_1
                L5_3 = L5_3[L4_3]
                L5_3 = L5_3.npc
                L6_3 = DoesEntityExist
                L7_3 = L5_3
                L6_3 = L6_3(L7_3)
                if L6_3 then
                  L6_3 = IsEntityDead
                  L7_3 = L5_3
                  L6_3 = L6_3(L7_3)
                  if not L6_3 then
                    L6_3 = IsPedDeadOrDying
                    L7_3 = L5_3
                    L8_3 = true
                    L6_3 = L6_3(L7_3, L8_3)
                    if not L6_3 then
                      L6_3 = GetEntityHealth
                      L7_3 = L5_3
                      L6_3 = L6_3(L7_3)
                      if not (L6_3 <= 0.0) then
                        L6_3 = IsPedRagdoll
                        L7_3 = L5_3
                        L6_3 = L6_3(L7_3)
                        if L6_3 then
                        else
                          L0_3 = false
                        end
                      end
                    end
                  end
                end
              end
              if L0_3 then
                L1_3 = EndMission
                L1_3()
                L1_3 = Wait
                L2_3 = 25
                L1_3(L2_3)
                L1_3 = 50
                L2_3 = L3_2
                if L2_3 then
                  L1_3 = 15
                end
                L2_3 = MissionComplete
                L3_3 = ricompensa
                L2_3(L3_3)
                return
              end
            end
          end
        end
        ::lbl_297::
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L1_3 = GetEntityCoords
        L2_3 = L11_1
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if L0_3 < 25.0 then
          L0_3 = L6_2
          if not L0_3 then
            L0_3 = L12_1
            if nil ~= L0_3 then
              L0_3 = DoesBlipExist
              L1_3 = L12_1
              L0_3 = L0_3(L1_3)
              if L0_3 then
                L0_3 = SetBlipRoute
                L1_3 = L12_1
                L2_3 = false
                L0_3(L1_3, L2_3)
                L0_3 = RemoveBlip
                L1_3 = L12_1
                L0_3(L1_3)
                L0_3 = nil
                L12_1 = L0_3
              end
            end
            L0_3 = exports
            L0_3 = L0_3.striano_combat
            L1_3 = L0_3
            L0_3 = L0_3.submexInfo
            L2_3 = "Traitors detected, follow them."
            L0_3(L1_3, L2_3)
            L0_3 = true
            L6_2 = L0_3
            L0_3 = TaskGoStraightToCoord
            L1_3 = L11_1
            L2_3 = L4_2.x
            L3_3 = L4_2.y
            L4_3 = L4_2.z
            L5_3 = 1.0
            L6_3 = -1
            L7_3 = 0.0
            L8_3 = 0.0
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            L0_3 = SetBlockingOfNonTemporaryEvents
            L1_3 = L11_1
            L2_3 = true
            L0_3(L1_3, L2_3)
          end
        end
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L1_3 = GetEntityCoords
        L2_3 = L11_1
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if not (L0_3 < 15.0) then
          L0_3 = IsPedFleeing
          L1_3 = L11_1
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsEntityDead
            L1_3 = L11_1
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = IsPedFatallyInjured
              L1_3 = L11_1
              L0_3 = L0_3(L1_3)
              if not L0_3 then
                goto lbl_390
              end
            end
          end
        end
        L0_3 = L5_2
        if not L0_3 then
          L0_3 = L3_2
          if not L0_3 then
            L0_3 = true
            L3_2 = L0_3
            L0_3 = L33_1
            L1_3 = L11_1
            L0_3(L1_3)
            L0_3 = L31_1
            L0_3()
          end
        end
        ::lbl_390::
        L0_3 = 75.0
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L2_3 = GetEntityCoords
        L3_3 = L11_1
        L2_3 = L2_3(L3_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        if L0_3 < L1_3 then
          L1_3 = L5_2
          if not L1_3 then
            L1_3 = L24_1
            if L1_3 then
              L1_3 = exports
              L1_3 = L1_3.striano_combat
              L2_3 = L1_3
              L1_3 = L1_3.testo3d
              L3_3 = "You lose the target!"
              L1_3(L2_3, L3_3)
              L1_3 = EndMission
              L1_3()
              return
            end
          end
        end
        L1_3 = L4_2
        if nil ~= L1_3 then
          L1_3 = L4_2
          L2_3 = GetEntityCoords
          L3_3 = L11_1
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          L2_3 = 7.5
          if L1_3 < L2_3 then
            L1_3 = L5_2
            if not L1_3 then
              L1_3 = true
              L5_2 = L1_3
              L1_3 = PlaySoundFrontend
              L2_3 = -1
              L3_3 = "Nav_Arrow_Right"
              L4_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
              L5_3 = 1
              L1_3(L2_3, L3_3, L4_3, L5_3)
              L1_3 = L19_1
              L1_3 = #L1_3
              L2_3 = 1
              L3_3 = -1
              for L4_3 = L1_3, L2_3, L3_3 do
                L5_3 = MakeNpcAngry
                L6_3 = L4_3
                L5_3(L6_3)
              end
              L1_3 = Wait
              L2_3 = 1000
              L1_3(L2_3)
            end
          end
        end
      end
    end
  end
  L7_2(L8_2)
end
MissioneSeguiBenson = L36_1
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L24_1
  if L0_2 then
    L0_2 = false
    L24_1 = L0_2
    L0_2 = EndMission
    L0_2()
    L0_2 = faiAnim
    L1_2 = "switch@franklin@chopshop"
    L2_2 = "wipehands"
    L3_2 = 1000
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  else
    L0_2 = true
    L24_1 = L0_2
  end
  L0_2 = L30_1
  L1_2 = 900
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "timerMissioneServer"
  L2_2 = L7_1
  L3_2 = 900
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = 0
  L3_2 = false
  L4_2 = nil
  L5_2 = false
  L6_2 = false
  L7_2 = false
  L8_2 = {}
  L8_2.PedAttivo = nil
  L9_2 = vector3
  L10_2 = 5077.189
  L11_2 = -5708.418
  L12_2 = 14.889
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.Pos = L9_2
  L8_2.Heading = 55.0
  L9_2 = {}
  L10_2 = vector3
  L11_2 = 4480.86
  L12_2 = -4462.122
  L13_2 = 3.243
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L8_2.Consegna = L9_2
  L17_1 = L8_2
  L8_2 = exports
  L8_2 = L8_2.text_guide
  L9_2 = L8_2
  L8_2 = L8_2.ClearGuideText
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 25
  L8_2(L9_2)
  L8_2 = exports
  L8_2 = L8_2.text_guide
  L9_2 = L8_2
  L8_2 = L8_2.GuidaVisibileNV
  L8_2(L9_2)
  L8_2 = vector3
  L9_2 = 4447.373
  L10_2 = -4451.939
  L11_2 = 3.328
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3
    while true do
      L0_3 = L24_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L1_2
      if not L0_3 then
        L0_3 = exports
        L0_3 = L0_3.striano_inventory
        L1_3 = L0_3
        L0_3 = L0_3.delblipInteresse
        L0_3(L1_3)
        L0_3 = exports
        L0_3 = L0_3.striano_combat
        L1_3 = L0_3
        L0_3 = L0_3.submexImportant
        L2_3 = "Segui il portavalori e trova un modo per rubare il carico per consegnarlo a destinazione."
        L0_3(L1_3, L2_3)
        L0_3 = 1747439474
        L1_3 = RequestModelStriano
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = CreateVehicle
        L2_3 = L0_3
        L3_3 = L17_1.Pos
        L4_3 = L17_1.Heading
        L5_3 = 1
        L6_3 = 0
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        L10_1 = L1_3
        L1_3 = SetEntityAsMissionEntity
        L2_3 = L10_1
        L3_3 = true
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = ClearAreaOfVehicles
        L2_3 = GetEntityCoords
        L3_3 = L10_1
        L2_3 = L2_3(L3_3)
        L3_3 = 5
        L4_3 = false
        L5_3 = false
        L6_3 = false
        L7_3 = false
        L8_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = SetVehicleOnGroundProperly
        L2_3 = L10_1
        L1_3(L2_3)
        L1_3 = SetModelAsNoLongerNeeded
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = -106498753
        L2_3 = RequestModelStriano
        L3_3 = L1_3
        L2_3(L3_3)
        L2_3 = CreatePedInsideVehicle
        L3_3 = L10_1
        L4_3 = 26
        L5_3 = L1_3
        L6_3 = -1
        L7_3 = true
        L8_3 = true
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L3_3 = SetBlockingOfNonTemporaryEvents
        L4_3 = L2_3
        L5_3 = true
        L3_3(L4_3, L5_3)
        L3_3 = SetEntityAsMissionEntity
        L4_3 = L2_3
        L5_3 = true
        L6_3 = true
        L3_3(L4_3, L5_3, L6_3)
        L3_3 = SetModelAsNoLongerNeeded
        L4_3 = L1_3
        L3_3(L4_3)
        L3_3 = SetDriverAbility
        L4_3 = L2_3
        L5_3 = 100.0
        L3_3(L4_3, L5_3)
        L3_3 = SetDriverAggressiveness
        L4_3 = L2_3
        L5_3 = 0.0
        L3_3(L4_3, L5_3)
        L3_3 = SetPedStayInVehicleWhenJacked
        L4_3 = L2_3
        L5_3 = true
        L3_3(L4_3, L5_3)
        L3_3 = SetPedCanBeDraggedOut
        L4_3 = L2_3
        L5_3 = false
        L3_3(L4_3, L5_3)
        L3_3 = SetDriverRacingModifier
        L4_3 = L2_3
        L5_3 = 0.0
        L3_3(L4_3, L5_3)
        L3_3 = L12_1
        if nil ~= L3_3 then
          L3_3 = DoesBlipExist
          L4_3 = L12_1
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = SetBlipRoute
            L4_3 = L12_1
            L5_3 = false
            L3_3(L4_3, L5_3)
            L3_3 = RemoveBlip
            L4_3 = L12_1
            L3_3(L4_3)
            L3_3 = nil
            L12_1 = L3_3
          end
        end
        L3_3 = AddBlipForEntity
        L4_3 = L10_1
        L3_3 = L3_3(L4_3)
        L12_1 = L3_3
        L3_3 = 31
        L4_3 = SetBlipSprite
        L5_3 = L12_1
        L6_3 = 318
        L4_3(L5_3, L6_3)
        L4_3 = SetBlipColour
        L5_3 = L12_1
        L6_3 = L3_3
        L4_3(L5_3, L6_3)
        L4_3 = SetBlipScale
        L5_3 = L12_1
        L6_3 = 1.0
        L4_3(L5_3, L6_3)
        L4_3 = BeginTextCommandSetBlipName
        L5_3 = "STRING"
        L4_3(L5_3)
        L4_3 = AddTextComponentString
        L5_3 = "Portavalori Incarico"
        L4_3(L5_3)
        L4_3 = EndTextCommandSetBlipName
        L5_3 = L12_1
        L4_3(L5_3)
        L4_3 = 2145640135
        L5_3 = RequestModelStriano
        L6_3 = L4_3
        L5_3(L6_3)
        L5_3 = 1278330017
        L6_3 = RequestModelStriano
        L7_3 = L5_3
        L6_3(L7_3)
        L6_3 = 1
        L7_3 = 6
        L8_3 = 1
        for L9_3 = L6_3, L7_3, L8_3 do
          L10_3 = L4_3
          if 2 == L9_3 or 4 == L9_3 then
            L10_3 = L5_3
          end
          L11_3 = CreatePedInsideVehicle
          L12_3 = L10_1
          L13_3 = 26
          L14_3 = L10_3
          L15_3 = L9_3 - 1
          L16_3 = 1
          L17_3 = 1
          L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          L12_3 = table
          L12_3 = L12_3.insert
          L13_3 = L19_1
          L14_3 = {}
          L14_3.npc = L11_3
          L12_3(L13_3, L14_3)
        end
        L6_3 = math
        L6_3 = L6_3.random
        L7_3 = 1
        L8_3 = L17_1.Consegna
        L8_3 = #L8_3
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = L17_1.Consegna
        L7_3 = L7_3[L6_3]
        L4_2 = L7_3
        L7_3 = ClearPedDriveByClipsetOverride
        L8_3 = L2_3
        L7_3(L8_3)
        L7_3 = TaskVehicleDriveToCoord
        L8_3 = L2_3
        L9_3 = L10_1
        L10_3 = L4_2.x
        L11_3 = L4_2.y
        L12_3 = L4_2.z
        L13_3 = 100.0
        L14_3 = 0
        L15_3 = L0_3
        L16_3 = 2883621
        L17_3 = 15.0
        L18_3 = true
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L7_3 = SetDriverAggressiveness
        L8_3 = L2_3
        L9_3 = 1.0
        L7_3(L8_3, L9_3)
        L7_3 = SetDriverRacingModifier
        L8_3 = L2_3
        L9_3 = 1.0
        L7_3(L8_3, L9_3)
        L11_1 = L2_3
        L7_3 = true
        L1_2 = L7_3
        L7_3 = Wait
        L8_3 = 1000
        L7_3(L8_3)
        L7_3 = L25_1
        L8_3 = AddPropToVehicle
        L9_3 = L10_1
        L10_3 = "prop_box_tea01a"
        L11_3 = -0.395
        L12_3 = -3.095
        L13_3 = 0.44
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.0
        L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L7_3[1] = L8_3
        L7_3 = L25_1
        L8_3 = AddPropToVehicle
        L9_3 = L10_1
        L10_3 = "prop_box_tea01a"
        L11_3 = 0.405
        L12_3 = -3.095
        L13_3 = 0.44
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.0
        L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L7_3[2] = L8_3
        L7_3 = L25_1
        L8_3 = AddPropToVehicle
        L9_3 = L10_1
        L10_3 = "prop_box_tea01a"
        L11_3 = 0.52
        L12_3 = -3.125
        L13_3 = 1.645
        L14_3 = 90.0
        L15_3 = 2.7
        L16_3 = -90.0
        L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L7_3[3] = L8_3
        L7_3 = Wait
        L8_3 = 3000
        L7_3(L8_3)
      end
      L0_3 = L1_2
      if L0_3 then
        L0_3 = IsEntityDead
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
          if not L0_3 then
            goto lbl_271
          end
        end
        L0_3 = EndMission
        L0_3()
        do return end
        ::lbl_271::
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
        L1_3 = GetEntityCoords
        L2_3 = L11_1
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if L0_3 < 50.0 then
          L0_3 = L6_2
          if not L0_3 then
            L0_3 = L12_1
            if nil ~= L0_3 then
              L0_3 = DoesBlipExist
              L1_3 = L12_1
              L0_3 = L0_3(L1_3)
              if L0_3 then
                L0_3 = SetBlipRoute
                L1_3 = L12_1
                L2_3 = false
                L0_3(L1_3, L2_3)
                L0_3 = RemoveBlip
                L1_3 = L12_1
                L0_3(L1_3)
                L0_3 = nil
                L12_1 = L0_3
              end
            end
            L0_3 = print
            L1_3 = "Ho visto il carico."
            L0_3(L1_3)
            L0_3 = exports
            L0_3 = L0_3.striano_combat
            L1_3 = L0_3
            L0_3 = L0_3.submexInfo
            L2_3 = "Carico avvistato, seguilo e trova un modo per rubare il carico e consegnarlo a destinazione (Blip Verde)."
            L0_3(L1_3, L2_3)
            L0_3 = true
            L6_2 = L0_3
          end
        end
        L0_3 = L7_2
        if not L0_3 then
          L0_3 = IsEntityDead
          L1_3 = L11_1
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsPedFatallyInjured
            L1_3 = L11_1
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              goto lbl_388
            end
          end
          L0_3 = GetEntityCoords
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
          L1_3 = L17_1.Pos
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          L1_3 = 250
          if L0_3 < L1_3 then
            L0_3 = EndMission
            L0_3()
            L0_3 = print
            L1_3 = "Guidatore ucciso troppo presto, non sai dove consegner\195\160 il carico! (Stockade Mission)"
            L0_3(L1_3)
            return
          else
            L0_3 = true
            L7_2 = L0_3
            L0_3 = SetVehicleFuelLevel
            L1_3 = L10_1
            L2_3 = 0.0
            L0_3(L1_3, L2_3)
            L0_3 = NetworkGetNetworkIdFromEntity
            L1_3 = L10_1
            L0_3 = L0_3(L1_3)
            L1_3 = TriggerEvent
            L2_3 = "setBenzina"
            L3_3 = L0_3
            L4_3 = 0.0
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = SetVehicleEngineHealth
            L2_3 = L10_1
            L3_3 = 0.0
            L1_3(L2_3, L3_3)
            L1_3 = SetVehicleEngineOn
            L2_3 = L10_1
            L3_3 = false
            L4_3 = false
            L5_3 = false
            L6_3 = true
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
            L1_3 = SetVehicleJetEngineOn
            L2_3 = L10_1
            L3_3 = false
            L1_3(L2_3, L3_3)
            L1_3 = SetVehicleDoorOpen
            L2_3 = L10_1
            L3_3 = 3
            L4_3 = false
            L5_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3)
            L1_3 = SetVehicleDoorOpen
            L2_3 = L10_1
            L3_3 = 2
            L4_3 = false
            L5_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3)
            L1_3 = print
            L2_3 = "Guidatore morto, veicolo inguidabile attivato."
            L1_3(L2_3)
          end
        end
        ::lbl_388::
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
        L1_3 = GetEntityCoords
        L2_3 = L11_1
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if not (L0_3 < 15.0) then
          L0_3 = IsPedFleeing
          L1_3 = L11_1
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsEntityDead
            L1_3 = L11_1
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = IsPedFatallyInjured
              L1_3 = L11_1
              L0_3 = L0_3(L1_3)
              if not L0_3 then
                goto lbl_455
              end
            end
          end
        end
        L0_3 = L5_2
        if not L0_3 then
          L0_3 = L3_2
          if not L0_3 then
            L0_3 = print
            L1_3 = "Ti sei avvicinato troppo, verrai attaccato dalle guardie. (Stockade Mission)"
            L0_3(L1_3)
            L0_3 = true
            L3_2 = L0_3
            L0_3 = L33_1
            L1_3 = L11_1
            L0_3(L1_3)
            L0_3 = L31_1
            L0_3()
            L0_3 = Wait
            L1_3 = 1000
            L0_3(L1_3)
            L0_3 = TaskVehicleDriveToCoord
            L1_3 = L11_1
            L2_3 = L10_1
            L3_3 = L4_2.x
            L4_3 = L4_2.y
            L5_3 = L4_2.z
            L6_3 = 100.0
            L7_3 = 0
            L8_3 = vehiclehash
            L9_3 = 2883621
            L10_3 = 15.0
            L11_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
            L0_3 = SetDriverAggressiveness
            L1_3 = L11_1
            L2_3 = 1.0
            L0_3(L1_3, L2_3)
            L0_3 = SetDriverRacingModifier
            L1_3 = L11_1
            L2_3 = 1.0
            L0_3(L1_3, L2_3)
          end
        end
        ::lbl_455::
        L0_3 = 250.0
        L1_3 = L3_2
        if L1_3 then
          L0_3 = 150
        end
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
        L2_3 = GetEntityCoords
        L3_3 = L11_1
        L2_3 = L2_3(L3_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        if L0_3 < L1_3 then
          L1_3 = L5_2
          if not L1_3 then
            L1_3 = L7_2
            if not L1_3 then
              L1_3 = print
              L2_3 = "Hai perso di vista il carico! (Stockade Mission)"
              L1_3(L2_3)
              L1_3 = EndMission
              L1_3()
              return
            end
          end
        end
        L1_3 = L4_2
        if nil ~= L1_3 then
          L1_3 = L4_2
          L2_3 = GetEntityCoords
          L3_3 = L11_1
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          if L1_3 < 30.0 then
            L1_3 = IsPedInAnyVehicle
            L2_3 = L11_1
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = L5_2
              if not L1_3 then
                L1_3 = true
                L5_2 = L1_3
                L1_3 = L33_1
                L2_3 = L11_1
                L1_3(L2_3)
                L1_3 = L31_1
                L1_3()
                L1_3 = Wait
                L2_3 = 1000
                L1_3(L2_3)
              end
            end
          end
          L1_3 = GetEntityCoords
          L2_3 = L25_1
          L2_3 = L2_3[1]
          L1_3 = L1_3(L2_3)
          L2_3 = L8_2
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          if L1_3 < 5.0 then
            L1_3 = GetEntityCoords
            L2_3 = L25_1
            L2_3 = L2_3[2]
            L1_3 = L1_3(L2_3)
            L2_3 = L8_2
            L1_3 = L1_3 - L2_3
            L1_3 = #L1_3
            if L1_3 < 5.0 then
              L1_3 = GetEntityCoords
              L2_3 = L25_1
              L2_3 = L2_3[3]
              L1_3 = L1_3(L2_3)
              L2_3 = L8_2
              L1_3 = L1_3 - L2_3
              L1_3 = #L1_3
              if L1_3 < 5.0 then
                L1_3 = IsEntityAttached
                L2_3 = L25_1
                L2_3 = L2_3[1]
                L1_3 = L1_3(L2_3)
                if not L1_3 then
                  L1_3 = IsEntityAttached
                  L2_3 = L25_1
                  L2_3 = L2_3[2]
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = IsEntityAttached
                    L2_3 = L25_1
                    L2_3 = L2_3[3]
                    L1_3 = L1_3(L2_3)
                    if not L1_3 then
                      L1_3 = Wait
                      L2_3 = 25
                      L1_3(L2_3)
                      L1_3 = faiAnim
                      L2_3 = "cellphone@"
                      L3_3 = "cellphone_cellphone_outro"
                      L4_3 = 1000
                      L5_3 = 49
                      L1_3(L2_3, L3_3, L4_3, L5_3)
                      L1_3 = exports
                      L1_3 = L1_3.striano_combat
                      L2_3 = L1_3
                      L1_3 = L1_3.submexImportant
                      L3_3 = "Incarico completato, hai ricevuto la tua ricompensa."
                      L1_3(L2_3, L3_3)
                      L1_3 = TriggerServerEvent
                      L2_3 = "inv3d:giveItem"
                      L3_3 = GetPlayerServerId
                      L4_3 = PlayerId
                      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L4_3()
                      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
                      L4_3 = "player"
                      L5_3 = "moneta"
                      L6_3 = 125
                      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
                      L1_3 = EndMission
                      L1_3()
                      return
                  end
                end
              end
            end
          end
          else
            L1_3 = GetEntityCoords
            L2_3 = PlayerPedId
            L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L2_3()
            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
            L2_3 = L17_1.Pos
            L1_3 = L1_3 - L2_3
            L1_3 = #L1_3
            L2_3 = 250
            if L1_3 >= L2_3 then
              L1_3 = GetEntityCoords
              L2_3 = PlayerPedId
              L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L2_3()
              L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
              L2_3 = L8_2
              L1_3 = L1_3 - L2_3
              L1_3 = #L1_3
              L2_3 = 150.0
              if L1_3 < L2_3 then
                L1_3 = DrawMarker
                L2_3 = 1
                L3_3 = L8_2
                L4_3 = 0.0
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 5.0
                L11_3 = 5.0
                L12_3 = 150.0
                L13_3 = 0
                L14_3 = 255
                L15_3 = 0
                L16_3 = 50
                L17_3 = false
                L18_3 = false
                L19_3 = 2
                L20_3 = false
                L21_3 = false
                L22_3 = false
                L23_3 = false
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
              else
                L1_3 = DrawMarker
                L2_3 = 1
                L3_3 = L8_2
                L4_3 = 0.0
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 5.0
                L11_3 = 5.0
                L12_3 = 900.0
                L13_3 = 0
                L14_3 = 255
                L15_3 = 0
                L16_3 = 150
                L17_3 = false
                L18_3 = false
                L19_3 = 2
                L20_3 = false
                L21_3 = false
                L22_3 = false
                L23_3 = false
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
              end
              L1_3 = GetEntityCoords
              L2_3 = L25_1
              L2_3 = L2_3[1]
              L1_3 = L1_3(L2_3)
              L2_3 = vector3
              L3_3 = L1_3.x
              L4_3 = L1_3.y
              L5_3 = L1_3.z
              L5_3 = L5_3 + 1.5
              L2_3 = L2_3(L3_3, L4_3, L5_3)
              L3_3 = GetEntityCoords
              L4_3 = L25_1
              L4_3 = L4_3[2]
              L3_3 = L3_3(L4_3)
              L1_3 = L3_3
              L3_3 = vector3
              L4_3 = L1_3.x
              L5_3 = L1_3.y
              L6_3 = L1_3.z
              L6_3 = L6_3 + 1.5
              L3_3 = L3_3(L4_3, L5_3, L6_3)
              L4_3 = GetEntityCoords
              L5_3 = L25_1
              L5_3 = L5_3[3]
              L4_3 = L4_3(L5_3)
              L1_3 = L4_3
              L4_3 = vector3
              L5_3 = L1_3.x
              L6_3 = L1_3.y
              L7_3 = L1_3.z
              L7_3 = L7_3 + 1.5
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              L5_3 = DrawMarker
              L6_3 = 0
              L7_3 = L2_3
              L8_3 = 0.0
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.1
              L15_3 = 0.1
              L16_3 = 0.2
              L17_3 = 0
              L18_3 = 255
              L19_3 = 0
              L20_3 = 50
              L21_3 = true
              L22_3 = false
              L23_3 = 2
              L24_3 = false
              L25_3 = false
              L26_3 = false
              L27_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
              L5_3 = DrawMarker
              L6_3 = 0
              L7_3 = L3_3
              L8_3 = 0.0
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.1
              L15_3 = 0.1
              L16_3 = 0.2
              L17_3 = 0
              L18_3 = 255
              L19_3 = 0
              L20_3 = 50
              L21_3 = true
              L22_3 = false
              L23_3 = 2
              L24_3 = false
              L25_3 = false
              L26_3 = false
              L27_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
              L5_3 = DrawMarker
              L6_3 = 0
              L7_3 = L4_3
              L8_3 = 0.0
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.1
              L15_3 = 0.1
              L16_3 = 0.2
              L17_3 = 0
              L18_3 = 255
              L19_3 = 0
              L20_3 = 50
              L21_3 = true
              L22_3 = false
              L23_3 = 2
              L24_3 = false
              L25_3 = false
              L26_3 = false
              L27_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
            end
          end
        end
      end
    end
  end
  L9_2(L10_2)
end
MissioneStockade = L36_1
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = L24_1
  if L0_2 then
    L0_2 = false
    L24_1 = L0_2
    L0_2 = EndMission
    L0_2()
    L0_2 = faiAnim
    L1_2 = "switch@franklin@chopshop"
    L2_2 = "wipehands"
    L3_2 = 1000
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  else
    L0_2 = true
    L24_1 = L0_2
  end
  L0_2 = L30_1
  L1_2 = 900
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "timerMissioneServer"
  L2_2 = L7_1
  L3_2 = 900
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = 0
  L3_2 = {}
  L3_2.PedAttivo = nil
  L4_2 = vector3
  L5_2 = 3525.989
  L6_2 = 7503.827
  L7_2 = 3.289
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.Pos = L4_2
  L3_2.Heading = 273.0
  L4_2 = {}
  L5_2 = vector3
  L6_2 = 3554.526
  L7_2 = 7509.076
  L8_2 = 5.485
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vector3
  L7_2 = 3554.526
  L8_2 = 7509.076
  L9_2 = 5.485
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = 3554.526
  L9_2 = 7509.076
  L10_2 = 5.485
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = vector3
  L9_2 = 3554.526
  L10_2 = 7509.076
  L11_2 = 5.485
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = vector3
  L10_2 = 3554.526
  L11_2 = 7509.076
  L12_2 = 5.485
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = vector3
  L11_2 = 3554.526
  L12_2 = 7509.076
  L13_2 = 5.485
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2, L12_2, L13_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L4_2[7] = L11_2
  L4_2[8] = L12_2
  L4_2[9] = L13_2
  L4_2[10] = L14_2
  L4_2[11] = L15_2
  L3_2.Consegna = L4_2
  L4_2 = {}
  L5_2 = {}
  L6_2 = vector3
  L7_2 = 3514.977
  L8_2 = 7526.658
  L9_2 = 3.289
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.pos = L6_2
  L6_2 = {}
  L7_2 = vector3
  L8_2 = 3516.214
  L9_2 = 7524.591
  L10_2 = 3.289
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.pos = L7_2
  L7_2 = {}
  L8_2 = vector3
  L9_2 = 3517.476
  L10_2 = 7520.845
  L11_2 = 3.29
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.pos = L8_2
  L8_2 = {}
  L9_2 = vector3
  L10_2 = 3519.053
  L11_2 = 7517.372
  L12_2 = 3.289
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.pos = L9_2
  L9_2 = {}
  L10_2 = vector3
  L11_2 = 3521.114
  L12_2 = 7512.676
  L13_2 = 3.31
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.pos = L10_2
  L10_2 = {}
  L11_2 = vector3
  L12_2 = 3522.51
  L13_2 = 7508.841
  L14_2 = 3.31
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.pos = L11_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L3_2.PointsCassa = L4_2
  L17_1 = L3_2
  L3_2 = {}
  L4_2 = "a_m_m_ktown_01"
  L5_2 = "a_m_m_mexcntry_01"
  L6_2 = "a_m_m_salton_03"
  L7_2 = "a_m_m_rurmeth_01"
  L8_2 = "a_m_m_skidrow_01"
  L9_2 = "a_m_m_trampbeac_01"
  L10_2 = "a_m_m_tramp_01"
  L11_2 = "a_m_o_salton_01"
  L12_2 = "a_m_o_soucent_02"
  L13_2 = "a_m_o_soucent_03"
  L14_2 = "a_m_o_tramp_01"
  L15_2 = "a_m_y_genstreet_02"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.delblipInteresse
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 25
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.blipInteresse
  L6_2 = L17_1.Pos
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2.text_guide
  L5_2 = L4_2
  L4_2 = L4_2.ClearGuideText
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 25
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.text_guide
  L5_2 = L4_2
  L4_2 = L4_2.GuidaVisibileNV
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    while true do
      L0_3 = L24_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      L1_3 = L17_1.Pos
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      if L0_3 < 80 then
        L0_3 = L1_2
        if not L0_3 then
          L0_3 = math
          L0_3 = L0_3.random
          L1_3 = 1
          L2_3 = L3_2
          L2_3 = #L2_3
          L0_3 = L0_3(L1_3, L2_3)
          L1_3 = L3_2
          L1_3 = L1_3[L0_3]
          L2_3 = RequestModelStriano
          L3_3 = L1_3
          L2_3(L3_3)
          L2_3 = 1
          L3_3 = L17_1.PointsCassa
          L3_3 = #L3_3
          L4_3 = 1
          for L5_3 = L2_3, L3_3, L4_3 do
            L6_3 = L17_1.PointsCassa
            L6_3 = L6_3[L5_3]
            L7_3 = L18_1
            L8_3 = CreateObject
            L9_3 = GetHashKey
            L10_3 = "hei_prop_heist_box"
            L9_3 = L9_3(L10_3)
            L10_3 = L6_3.pos
            L10_3 = L10_3.x
            L11_3 = L6_3.pos
            L11_3 = L11_3.y
            L12_3 = L6_3.pos
            L12_3 = L12_3.z
            L13_3 = true
            L14_3 = true
            L15_3 = true
            L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L7_3[L5_3] = L8_3
            while true do
              L7_3 = ObjToNet
              L8_3 = L18_1
              L8_3 = L8_3[L5_3]
              L7_3 = L7_3(L8_3)
              if 0 ~= L7_3 then
                L7_3 = ObjToNet
                L8_3 = L18_1
                L8_3 = L8_3[L5_3]
                L7_3 = L7_3(L8_3)
                if nil ~= L7_3 then
                  break
                end
              end
              L7_3 = Wait
              L8_3 = 0
              L7_3(L8_3)
            end
            L7_3 = TriggerServerEvent
            L8_3 = "addPropMiss"
            L9_3 = L7_1
            L10_3 = ObjToNet
            L11_3 = L18_1
            L11_3 = L11_3[L5_3]
            L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L10_3(L11_3)
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            L7_3 = Wait
            L8_3 = 25
            L7_3(L8_3)
            L7_3 = SetEntityHeading
            L8_3 = L18_1
            L8_3 = L8_3[L5_3]
            L9_3 = math
            L9_3 = L9_3.random
            L10_3 = 0
            L11_3 = 360
            L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L9_3(L10_3, L11_3)
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          end
          L2_3 = SetModelAsNoLongerNeeded
          L3_3 = L1_3
          L2_3(L3_3)
          L2_3 = L17_1.PedAttivo
          if nil ~= L2_3 then
            L2_3 = CreatePed
            L3_3 = 1
            L4_3 = L1_3
            L5_3 = L17_1.Pos
            L6_3 = L17_1.Heading
            L7_3 = true
            L8_3 = true
            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            L20_1 = L2_3
            while true do
              L2_3 = PedToNet
              L3_3 = L20_1
              L2_3 = L2_3(L3_3)
              if 0 ~= L2_3 then
                L2_3 = PedToNet
                L3_3 = L20_1
                L2_3 = L2_3(L3_3)
                if nil ~= L2_3 then
                  break
                end
              end
              L2_3 = Wait
              L3_3 = 0
              L2_3(L3_3)
            end
            L2_3 = TriggerServerEvent
            L3_3 = "addPropMiss"
            L4_3 = L7_1
            L5_3 = PedToNet
            L7_3 = i
            L6_3 = L18_1
            L6_3 = L6_3[L7_3]
            L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L5_3(L6_3)
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            L2_3 = SetPedCanRagdollFromPlayerImpact
            L3_3 = L20_1
            L4_3 = false
            L2_3(L3_3, L4_3)
            L2_3 = SetPedFleeAttributes
            L3_3 = L20_1
            L4_3 = 0
            L5_3 = 0
            L2_3(L3_3, L4_3, L5_3)
          end
          L2_3 = true
          L1_2 = L2_3
          L2_3 = 0
          L15_1 = L2_3
          L2_3 = L17_1.PedAttivo
          if nil ~= L2_3 then
            L2_3 = Wait
            L3_3 = 25
            L2_3(L3_3)
            L2_3 = SetEntityHeading
            L3_3 = L20_1
            L4_3 = L17_1.Heading
            L2_3(L3_3, L4_3)
            L2_3 = faiAnim
            L3_3 = "timetable@amanda@ig_3"
            L4_3 = "ig_3_base_tracy"
            L5_3 = -1
            L6_3 = 1
            L7_3 = L20_1
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
          end
        end
      end
      L0_3 = L1_2
      if L0_3 then
        L0_3 = IsEntityDead
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          if not L0_3 then
            goto lbl_176
          end
        end
        L0_3 = EndMission
        L0_3()
        do return end
        ::lbl_176::
        L0_3 = L17_1.PedAttivo
        if nil ~= L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = L20_1
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsEntityDead
            L1_3 = L20_1
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = IsPedDeadOrDying
              L1_3 = L20_1
              L0_3 = L0_3(L1_3)
              if not L0_3 then
                L0_3 = IsPedFatallyInjured
                L1_3 = L20_1
                L0_3 = L0_3(L1_3)
                if not L0_3 then
                  L0_3 = IsPedFleeing
                  L1_3 = L20_1
                  L0_3 = L0_3(L1_3)
                  if not L0_3 then
                    goto lbl_210
                  end
                end
              end
            end
          end
          L0_3 = Wait
          L1_3 = 5000
          L0_3(L1_3)
          L0_3 = EndMission
          L0_3()
          return
        end
        ::lbl_210::
        L0_3 = L14_1
        if nil == L0_3 then
          L0_3 = 1
          L1_3 = L18_1
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L18_1
            L4_3 = L4_3[L3_3]
            if nil ~= L4_3 then
              L4_3 = GetEntityAlpha
              L5_3 = L18_1
              L5_3 = L5_3[L3_3]
              L4_3 = L4_3(L5_3)
              L5_3 = 240
              if L4_3 > L5_3 then
                L4_3 = L18_1
                L4_3 = L4_3[L3_3]
                L5_3 = IsEntityAttached
                L6_3 = L4_3
                L5_3 = L5_3(L6_3)
                if not L5_3 then
                  L5_3 = GetEntityCoords
                  L6_3 = L4_3
                  L5_3 = L5_3(L6_3)
                  L6_3 = DrawMarker
                  L7_3 = 1
                  L8_3 = L5_3
                  L9_3 = 0.0
                  L10_3 = 0.0
                  L11_3 = 0.0
                  L12_3 = 0.0
                  L13_3 = 0.0
                  L14_3 = 0.0
                  L15_3 = 0.2
                  L16_3 = 0.2
                  L17_3 = 3.0
                  L18_3 = L16_1
                  L18_3 = L18_3[1]
                  L19_3 = L16_1
                  L19_3 = L19_3[2]
                  L20_3 = L16_1
                  L20_3 = L20_3[3]
                  L21_3 = 200
                  L22_3 = false
                  L23_3 = false
                  L24_3 = 2
                  L25_3 = false
                  L26_3 = false
                  L27_3 = false
                  L28_3 = false
                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
                end
              end
            end
          end
        end
        L0_3 = 1
        L1_3 = L18_1
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L18_1
          L4_3 = L4_3[L3_3]
          if nil ~= L4_3 then
            L4_3 = IsEntityInWater
            L5_3 = L18_1
            L5_3 = L5_3[L3_3]
            L4_3 = L4_3(L5_3)
            if L4_3 then
              L4_3 = EndMission
              L4_3()
              return
            end
            L4_3 = L15_1
            if L4_3 >= 0 then
              L4_3 = L14_1
              if nil == L4_3 then
                L4_3 = GetEntityCoords
                L5_3 = L0_2
                L4_3 = L4_3(L5_3)
                L5_3 = GetEntityCoords
                L6_3 = L18_1
                L6_3 = L6_3[L3_3]
                L5_3 = L5_3(L6_3)
                L4_3 = L4_3 - L5_3
                L4_3 = #L4_3
                L5_3 = 1.5
                if L4_3 < L5_3 then
                  L4_3 = L17_1.PointsCassa
                  L4_3 = L4_3[L3_3]
                  L4_3 = L4_3.Fatto
                  if nil == L4_3 then
                    L4_3 = faiAnim
                    L5_3 = "anim@mp_snowball"
                    L6_3 = "pickup_snowball"
                    L7_3 = 1000
                    L8_3 = 49
                    L4_3(L5_3, L6_3, L7_3, L8_3)
                    L4_3 = Wait
                    L5_3 = 200
                    L4_3(L5_3)
                    L4_3 = L26_1
                    L4_3()
                    L4_3 = L18_1
                    L4_3 = L4_3[L3_3]
                    L14_1 = L4_3
                    L2_2 = L3_3
                    L4_3 = L6_1
                    L5_3 = L14_1
                    L4_3(L5_3)
                    L4_3 = AttachEntityToEntity
                    L5_3 = L14_1
                    L6_3 = L0_2
                    L7_3 = GetPedBoneIndex
                    L8_3 = L0_2
                    L9_3 = 60309
                    L7_3 = L7_3(L8_3, L9_3)
                    L8_3 = -0.17
                    L9_3 = -0.06
                    L10_3 = -0.09
                    L11_3 = 0.0
                    L12_3 = -12.0
                    L13_3 = 5.0
                    L14_3 = true
                    L15_3 = true
                    L16_3 = false
                    L17_3 = true
                    L18_3 = 1
                    L19_3 = true
                    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                    L4_3 = L17_1.PointsCassa
                    L4_3 = L4_3[L3_3]
                    L4_3.Fatto = true
                  end
                end
              end
            end
          end
        end
        L0_3 = L14_1
        if nil ~= L0_3 then
          L0_3 = L2_2
          if L0_3 > 0 then
            L0_3 = GetEntityCoords
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            L1_3 = L17_1.Consegna
            L2_3 = L2_2
            L1_3 = L1_3[L2_3]
            L0_3 = L0_3 - L1_3
            L0_3 = #L0_3
            L1_3 = 1.3
            if L0_3 < L1_3 then
              L0_3 = L14_1
              L1_3 = nil
              L14_1 = L1_3
              L1_3 = Wait
              L2_3 = 25
              L1_3(L2_3)
              L1_3 = faiAnim
              L2_3 = "anim@mp_snowball"
              L3_3 = "pickup_snowball"
              L4_3 = 1000
              L5_3 = 49
              L1_3(L2_3, L3_3, L4_3, L5_3)
              L1_3 = Wait
              L2_3 = 250
              L1_3(L2_3)
              L1_3 = DetachEntity
              L2_3 = L0_3
              L1_3(L2_3)
              L1_3 = SetEntityAlpha
              L2_3 = L0_3
              L3_3 = 240
              L1_3(L2_3, L3_3)
              L1_3 = L15_1
              L1_3 = L1_3 + 1
              L15_1 = L1_3
              L1_3 = 0
              L2_2 = L1_3
              L1_3 = L15_1
              L2_3 = L17_1.PointsCassa
              L2_3 = #L2_3
              L2_3 = L2_3 - 1
              if L1_3 == L2_3 then
                L1_3 = L17_1.PedAttivo
                if nil ~= L1_3 then
                  L1_3 = faiAnim
                  L2_3 = "missbigscore2aig_3"
                  L3_3 = "wait_for_van_c"
                  L4_3 = -1
                  L5_3 = 1
                  L6_3 = L20_1
                  L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
                end
              end
            else
              L0_3 = DrawMarker
              L1_3 = 1
              L2_3 = L17_1.Consegna
              L3_3 = L2_2
              L2_3 = L2_3[L3_3]
              L3_3 = 0.0
              L4_3 = 0.0
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0.0
              L9_3 = 0.5
              L10_3 = 0.5
              L11_3 = 150.0
              L12_3 = L16_1
              L12_3 = L12_3[1]
              L13_3 = L16_1
              L13_3 = L13_3[2]
              L14_3 = L16_1
              L14_3 = L14_3[3]
              L15_3 = 200
              L16_3 = false
              L17_3 = false
              L18_3 = 2
              L19_3 = false
              L20_3 = false
              L21_3 = false
              L22_3 = false
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
            end
          end
        end
        L0_3 = L15_1
        L1_3 = L17_1.PointsCassa
        L1_3 = #L1_3
        if L0_3 == L1_3 then
          L0_3 = GetEntityCoords
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          L1_3 = L17_1.Pos
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          if L0_3 < 3.0 then
            L0_3 = EndMission
            L0_3()
            L0_3 = MissionComplete
            L1_3 = 25
            L0_3(L1_3)
            return
          else
            L0_3 = DrawMarker
            L1_3 = 1
            L2_3 = L17_1.Pos
            L3_3 = 0.0
            L4_3 = 0.0
            L5_3 = 0.0
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 3.5
            L10_3 = 3.3
            L11_3 = 150.0
            L12_3 = L16_1
            L12_3 = L12_3[1]
            L13_3 = L16_1
            L13_3 = L13_3[2]
            L14_3 = L16_1
            L14_3 = L14_3[3]
            L15_3 = 100
            L16_3 = false
            L17_3 = false
            L18_3 = 2
            L19_3 = false
            L20_3 = false
            L21_3 = false
            L22_3 = false
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
          end
        end
      end
    end
  end
  L4_2(L5_2)
end
MissionePortaOggetto = L36_1
L36_1 = RegisterNetEvent
L37_1 = "getBackBusyMission"
L36_1(L37_1)
L36_1 = AddEventHandler
L37_1 = "getBackBusyMission"
function L38_1(A0_2)
  local L1_2
  L8_1 = A0_2
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "delPropMiss"
L36_1(L37_1)
L36_1 = AddEventHandler
L37_1 = "delPropMiss"
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    if nil ~= L5_2 then
      L6_2 = 0
      while true do
        L7_2 = NetworkDoesEntityExistWithNetworkId
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        if not (not L7_2 and L6_2 < 100) then
          break
        end
        L6_2 = L6_2 + 1
        L7_2 = Wait
        L8_2 = 10
        L7_2(L8_2)
      end
      L7_2 = NetToObj
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if nil ~= L7_2 then
        L8_2 = NetworkRequestControlOfEntity
        L9_2 = L7_2
        L8_2(L9_2)
        L6_2 = 0
        while true do
          L8_2 = NetworkHasControlOfEntity
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if not (not L8_2 and L6_2 < 100) then
            break
          end
          L8_2 = DoesEntityExist
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if not L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 1
          L8_2(L9_2)
          L8_2 = NetworkRequestControlOfEntity
          L9_2 = L7_2
          L8_2(L9_2)
          L6_2 = L6_2 + 1
        end
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = NetworkHasControlOfEntity
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = SetEntityAsMissionEntity
            L9_2 = L7_2
            L10_2 = true
            L8_2(L9_2, L10_2)
            L8_2 = Wait
            L9_2 = 1
            L8_2(L9_2)
          end
        end
        L8_2 = NetworkRequestControlOfEntity
        L9_2 = L7_2
        L8_2(L9_2)
        L8_2 = 0
        while true do
          L9_2 = NetworkHasControlOfEntity
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          if not (not L9_2 and L8_2 < 100) then
            break
          end
          L9_2 = DoesEntityExist
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          if not L9_2 then
            break
          end
          L9_2 = Wait
          L10_2 = 1
          L9_2(L10_2)
          L9_2 = NetworkRequestControlOfEntity
          L10_2 = L7_2
          L9_2(L10_2)
          L8_2 = L8_2 + 1
        end
        L9_2 = DoesEntityExist
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = NetworkHasControlOfEntity
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L9_2 = SetEntityAsMissionEntity
            L10_2 = L7_2
            L11_2 = true
            L9_2(L10_2, L11_2)
            L9_2 = DeleteEntity
            L10_2 = L7_2
            L9_2(L10_2)
            L9_2 = DoesEntityExist
            L10_2 = L7_2
            L9_2 = L9_2(L10_2)
            if L9_2 then
              L9_2 = DeleteObject
              L10_2 = L7_2
              L9_2(L10_2)
            end
            L9_2 = Wait
            L10_2 = 1
            L9_2(L10_2)
          end
        end
      end
    end
  end
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    L6_2 = 0
    while true do
      L7_2 = NetworkDoesEntityExistWithNetworkId
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if not (not L7_2 and L6_2 < 100) then
        break
      end
      L6_2 = L6_2 + 1
      L7_2 = Wait
      L8_2 = 1
      L7_2(L8_2)
    end
    L7_2 = 0
    while true do
      L8_2 = NetworkDoesNetworkIdExist
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      if not (not L8_2 and L7_2 < 100) then
        break
      end
      L7_2 = L7_2 + 1
      L8_2 = Wait
      L9_2 = 1
      L8_2(L9_2)
    end
    L8_2 = NetworkDoesNetworkIdExist
    L9_2 = A0_2[L4_2]
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = NetworkDoesEntityExistWithNetworkId
      L9_2 = A0_2[L4_2]
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = NetToPed
        L9_2 = A0_2[L4_2]
        L8_2 = L8_2(L9_2)
        if nil ~= L8_2 then
          L9_2 = NetworkRequestControlOfEntity
          L10_2 = L8_2
          L9_2(L10_2)
          L9_2 = 0
          while true do
            L10_2 = NetworkHasControlOfEntity
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            if not (not L10_2 and L9_2 < 100) then
              break
            end
            L10_2 = DoesEntityExist
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            if not L10_2 then
              break
            end
            L10_2 = Wait
            L11_2 = 1
            L10_2(L11_2)
            L10_2 = print
            L11_2 = "Checking Oggetto trovato: "
            L12_2 = L8_2
            L13_2 = " [id tabella: "
            L14_2 = L4_2
            L15_2 = "] "
            L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
            L10_2(L11_2)
            L10_2 = NetworkRequestControlOfEntity
            L11_2 = L8_2
            L10_2(L11_2)
            L9_2 = L9_2 + 1
          end
          L10_2 = DoesEntityExist
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = NetworkHasControlOfEntity
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            if L10_2 then
              L10_2 = SetEntityAsMissionEntity
              L11_2 = L8_2
              L12_2 = true
              L10_2(L11_2, L12_2)
              L10_2 = DeleteEntity
              L11_2 = L8_2
              L10_2(L11_2)
              L10_2 = DoesEntityExist
              L11_2 = L8_2
              L10_2 = L10_2(L11_2)
              if L10_2 then
                L10_2 = DeleteObject
                L11_2 = L8_2
                L10_2(L11_2)
              end
              L10_2 = print
              L11_2 = "Oggetto trovato ed eliminato "
              L12_2 = L8_2
              L13_2 = " [id tabella: "
              L14_2 = L4_2
              L15_2 = "] "
              L16_2 = GetEntityCoords
              L17_2 = L8_2
              L16_2 = L16_2(L17_2)
              L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
              L10_2(L11_2)
              L10_2 = Wait
              L11_2 = 1
              L10_2(L11_2)
            end
          end
        end
      end
    end
  end
end
L36_1(L37_1, L38_1)
L36_1 = AddEventHandler
L37_1 = "onResourceStop"
function L38_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = EndMission
    L1_2()
  end
end
L36_1(L37_1, L38_1)
function L36_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  if 0 ~= A0_2 and nil ~= A0_2 then
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = GetEntityCoords
    L10_2 = A0_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L9_2(L10_2)
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L11_2 = RequestModelStriano
    L12_2 = A1_2
    L11_2(L12_2)
    L11_2 = CreateObject
    L12_2 = GetHashKey
    L13_2 = A1_2
    L12_2 = L12_2(L13_2)
    L13_2 = L8_2
    L14_2 = L9_2
    L15_2 = L10_2 + 0.2
    L16_2 = true
    L17_2 = true
    L18_2 = true
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    prop = L11_2
    L11_2 = AttachEntityToEntity
    L12_2 = prop
    L13_2 = A0_2
    L14_2 = -1
    L15_2 = A2_2
    L16_2 = A3_2
    L17_2 = A4_2
    L18_2 = A5_2
    L19_2 = A6_2
    L20_2 = A7_2
    L21_2 = true
    L22_2 = true
    L23_2 = false
    L24_2 = true
    L25_2 = 1
    L26_2 = true
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L11_2 = SetModelAsNoLongerNeeded
    L12_2 = A1_2
    L11_2(L12_2)
    L11_2 = prop
    return L11_2
  end
end
AddPropToVehicle = L36_1
