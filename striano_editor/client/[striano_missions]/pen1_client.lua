local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = IsEntityVisible
  L11_2 = PlayerPedId
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L11_2()
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  if L10_2 then
    L10_2 = nil
    if nil == A8_2 then
      L11_2 = table
      L11_2 = L11_2.unpack
      L12_2 = GetEntityCoords
      L13_2 = L9_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L12_2(L13_2)
      L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L14_2 = CannaDaPesca
      if nil ~= L14_2 then
        L14_2 = DoesEntityExist
        L15_2 = CannaDaPesca
        L14_2 = L14_2(L15_2)
        if L14_2 and nil == A0_2 then
          L14_2 = string
          L14_2 = L14_2.find
          L15_2 = A0_2
          L16_2 = "_rod"
          L14_2 = L14_2(L15_2, L16_2)
          if L14_2 then
            L10_2 = CannaDaPesca
        end
      end
      else
        L14_2 = RequestModelStriano
        L15_2 = GetHashKey
        L16_2 = A0_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2)
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        L14_2 = CreateObject
        L15_2 = GetHashKey
        L16_2 = A0_2
        L15_2 = L15_2(L16_2)
        L16_2 = L11_2
        L17_2 = L12_2
        L18_2 = L13_2 - 0.2
        L19_2 = true
        L20_2 = true
        L21_2 = false
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L10_2 = L14_2
      end
    else
      L10_2 = A8_2
    end
    L11_2 = 0
    while true do
      L12_2 = DoesEntityExist
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      if not (not L12_2 and L11_2 < 100) then
        break
      end
      L11_2 = L11_2 + 1
      L12_2 = Wait
      L13_2 = 0
      L12_2(L13_2)
    end
    if L11_2 < 100 then
      L12_2 = AttachEntityToEntity
      L13_2 = L10_2
      L14_2 = L9_2
      L15_2 = GetPedBoneIndex
      L16_2 = L9_2
      L17_2 = A1_2
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = A2_2
      L17_2 = A3_2
      L18_2 = A4_2
      L19_2 = A5_2
      L20_2 = A6_2
      L21_2 = A7_2
      L22_2 = false
      L23_2 = false
      L24_2 = false
      L25_2 = true
      L26_2 = 1
      L27_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      if nil == A8_2 then
        L12_2 = string
        L12_2 = L12_2.find
        L13_2 = A0_2
        L14_2 = "_rod"
        L12_2 = L12_2(L13_2, L14_2)
        if L12_2 then
          CannaDaPesca = L10_2
          L12_2 = print
          L13_2 = "Canna da pesca assegnata."
          L12_2(L13_2)
        end
      end
      L12_2 = SetEntityAsMissionEntity
      L13_2 = L10_2
      L12_2(L13_2)
      L12_2 = SetModelAsNoLongerNeeded
      L13_2 = A0_2
      L12_2(L13_2)
      return L10_2
    else
      L12_2 = print
      L13_2 = "Prop da attaccare non rilevato!"
      L12_2(L13_2)
    end
  end
end
scatolaProp = nil
L1_1 = false
L2_1 = false
L3_1 = 0
L4_1 = false
L5_1 = false
L6_1 = false
L7_1 = 0
L8_1 = 3.0
L9_1 = nil
L10_1 = nil
L11_1 = 1
L12_1 = 0
L13_1 = 15.0
L14_1 = nil
L15_1 = 0
L16_1 = 0
L17_1 = exports
L18_1 = "inpengames"
function L19_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if not L0_2 then
    L0_2 = L12_1
    if not (L0_2 > 0) then
      goto lbl_10
    end
  end
  L0_2 = true
  do return L0_2 end
  goto lbl_12
  ::lbl_10::
  L0_2 = false
  do return L0_2 end
  ::lbl_12::
end
L17_1(L18_1, L19_1)
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexInfo
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Highlight_Error"
  L3_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = L13_1
  L3_2 = L13_1
  L4_2 = 900.0
  if A1_2 > 1 then
    L2_2 = L13_1
    L3_2 = L13_1
    L4_2 = L13_1
  end
  L5_2 = DrawMarker
  L6_2 = A1_2
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L9_2 = L9_2 + 0.01
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = L2_2
  L17_2 = L3_2
  L18_2 = L4_2
  L19_2 = 255
  L20_2 = 0
  L21_2 = 0
  L22_2 = 100
  L23_2 = false
  L24_2 = true
  L25_2 = 2
  L26_2 = false
  L27_2 = false
  L28_2 = false
  L29_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
end
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = L13_1
  L3_2 = L13_1
  L4_2 = 900.0
  if A1_2 > 1 then
    L2_2 = L13_1
    L3_2 = L13_1
    L4_2 = L13_1
  end
  L5_2 = DrawMarker
  L6_2 = A1_2
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L9_2 = L9_2 + 0.01
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = L2_2
  L17_2 = L3_2
  L18_2 = L4_2
  L19_2 = 255
  L20_2 = 255
  L21_2 = 255
  L22_2 = 150
  L23_2 = false
  L24_2 = true
  L25_2 = 2
  L26_2 = false
  L27_2 = false
  L28_2 = false
  L29_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
end
L21_1 = RegisterCommand
L22_1 = "pen1"
function L23_1()
  local L0_2, L1_2, L2_2
  L0_2 = L6_1
  L0_2 = not L0_2
  L6_1 = L0_2
  L0_2 = L6_1
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexInfo
    L2_2 = "Event PEN1 disabled."
    L0_2(L1_2, L2_2)
    L0_2 = DelMissionBlipCustom
    L0_2()
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexInfo
    L2_2 = "Event PEN1 enabled."
    L0_2(L1_2, L2_2)
    L0_2 = ExecuteCommand
    L1_2 = "penInfo"
    L0_2(L1_2)
  end
end
L21_1(L22_1, L23_1)
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DelMissionBlipCustom
  L1_2()
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.create
  L3_2 = {}
  L3_2.coords = A0_2
  L3_2.type = "checkpoint"
  L3_2.color = "#FF0000"
  L3_2.label = "PEN1 EVENTS"
  L3_2.size = 1.0
  L3_2.displayDistance = true
  L3_2.deleteWhenNear = true
  L1_2 = L1_2(L2_2, L3_2)
  L10_1 = L1_2
  return L1_2
end
CreateMissionBlipCustom = L21_1
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = L10_1
  if nil ~= L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_inventory
    L1_2 = L0_2
    L0_2 = L0_2.remove
    L2_2 = L10_1
    L0_2(L1_2, L2_2)
    L0_2 = nil
    L10_1 = L0_2
  end
end
DelMissionBlipCustom = L21_1
L21_1 = AddEventHandler
L22_1 = "onResourceStop"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = L10_1
  if nil ~= L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_inventory
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L3_2 = L10_1
    L1_2(L2_2, L3_2)
    L1_2 = nil
    L10_1 = L1_2
  end
end
L21_1(L22_1, L23_1)
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DelWantedBlip
  L1_2()
  L1_2 = 76
  L2_2 = AddBlipForCoord
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = SetBlipSprite
  L4_2 = L2_2
  L5_2 = 84
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipColour
  L4_2 = L2_2
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = AddTextEntry
  L4_2 = "MYBLIP"
  L5_2 = "WANTED"
  L3_2(L4_2, L5_2)
  L3_2 = BeginTextCommandSetBlipName
  L4_2 = "MYBLIP"
  L3_2(L4_2)
  L3_2 = EndTextCommandSetBlipName
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = SetBlipScale
  L4_2 = L2_2
  L5_2 = 1.0
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipAsShortRange
  L4_2 = L2_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipRoute
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipRouteColour
  L4_2 = L2_2
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L9_1 = L2_2
  return L2_2
end
CreateWantedBlip = L21_1
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = L9_1
  if nil ~= L0_2 then
    L0_2 = DoesBlipExist
    L1_2 = L9_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetBlipRoute
      L1_2 = L9_1
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = RemoveBlip
      L1_2 = L9_1
      L0_2(L1_2)
      L0_2 = nil
      L9_1 = L0_2
    end
  end
end
DelWantedBlip = L21_1
function L21_1()
  local L0_2, L1_2
  L0_2 = GetResourceState
  L1_2 = "striano_core"
  L0_2 = L0_2(L1_2)
  if "started" == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.gettutorial
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = exports
      L0_2 = L0_2.striano_core
      L1_2 = L0_2
      L0_2 = L0_2.getMissioneSurv
      L0_2 = L0_2(L1_2)
      if L0_2 > -50 then
        L0_2 = exports
        L0_2 = L0_2.striano_core
        L1_2 = L0_2
        L0_2 = L0_2.getsubmisID
        L0_2 = L0_2(L1_2)
        if 0 == L0_2 then
          L0_2 = GlobalState
          L0_2 = L0_2.SafeModeActive
          if not L0_2 then
            L0_2 = GetEntityCoords
            L1_2 = PlayerPedId
            L1_2 = L1_2()
            L0_2 = L0_2(L1_2)
            L0_2 = L0_2.z
            if L0_2 > -10.0 then
              L0_2 = true
              return L0_2
          end
        end
      end
    end
    else
      L0_2 = DelMissionBlipCustom
      L0_2()
      L0_2 = false
      return L0_2
    end
  else
    L0_2 = true
    return L0_2
  end
end
canPEN = L21_1
function L21_1()
  local L0_2, L1_2
  L0_2 = DelMissionBlipCustom
  L0_2()
  L0_2 = DelWantedBlip
  L0_2()
  L0_2 = false
  L2_1 = L0_2
  L0_2 = false
  L1_1 = L0_2
  L0_2 = DoesEntityExist
  L1_2 = scatolaProp
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = scatolaProp
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = scatolaProp
    L0_2(L1_2)
  end
  scatolaProp = nil
end
ResetAllMissions = L21_1
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:avviso"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:avviso"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = canPEN
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexImportant
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = print
    L2_2 = "Non sei autorizzato in questo momento a ricevere info sugli incarichi PEN1."
    L1_2(L2_2)
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:fineEvento"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:fineEvento"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ResetAllMissions
  L2_2()
  if A0_2 > 0 then
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2, L6_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 ~= A0_2 then
      L2_2 = ExecuteCommand
      L3_2 = "prova3 "
      L2_2(L3_2)
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.submexImportant
      L4_2 = "CashBox delivered by "
      L5_2 = A1_2
      L6_2 = ", event ended!"
      L4_2 = L4_2 .. L5_2 .. L6_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = ExecuteCommand
      L3_2 = "prova3 "
      L2_2(L3_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:AvvisoGiocatori"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:AvvisoGiocatori"
function L23_1()
  local L0_2, L1_2, L2_2
  L0_2 = L6_1
  if not L0_2 then
    L0_2 = canPEN
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = ExecuteCommand
      L1_2 = "prova3 "
      L0_2(L1_2)
      L0_2 = ResetAllMissions
      L0_2()
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submex
      L2_2 = "Event coming, /peninfo available, to disable notification use /pen1."
      L0_2(L1_2, L2_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:AvviaMissione"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:AvviaMissione"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L6_1
  if not L2_2 then
    L2_2 = canPEN
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = CreateMissionBlipCustom
      L3_2 = A0_2
      L2_2(L3_2)
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.submex
      L4_2 = "CashBox Event! Take the box and deliver in 15 min!"
      L2_2(L3_2, L4_2)
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
        L0_3 = L8_1
        while true do
          L1_3 = PlayerPedId
          L1_3 = L1_3()
          L2_3 = L6_1
          if L2_3 then
            L2_3 = print
            L3_3 = "Loop chiuso perch\195\168 disattivato PEN1 da client."
            L2_3(L3_3)
            return
          end
          L2_3 = L2_1
          if L2_3 then
            L2_3 = false
            L2_1 = L2_3
            L2_3 = print
            L3_3 = "Loop chiuso perch\195\168 la cassa \195\168 stata presa da un'altro sopravvissuto."
            L2_3(L3_3)
            return
          end
          L2_3 = canPEN
          L2_3 = L2_3()
          if not L2_3 then
            L2_3 = print
            L3_3 = "Loop chiuso perch\195\168 stai facendo una Main Quest."
            L2_3(L3_3)
            return
          end
          L2_3 = GetEntityCoords
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          L3_3 = A0_2
          L2_3 = L2_3 - L3_3
          L2_3 = #L2_3
          L3_3 = 1000.0
          if L2_3 > L3_3 then
            L0_3 = 30.0
          else
            L0_3 = L8_1
          end
          L2_3 = exports
          L2_3 = L2_3.striano_editor
          L3_3 = L2_3
          L2_3 = L2_3.inlgm
          L2_3 = L2_3(L3_3)
          if -1 == L2_3 then
            L2_3 = GetEntityCoords
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            L3_3 = A0_2
            L2_3 = L2_3 - L3_3
            L2_3 = #L2_3
            L3_3 = L8_1
            if L2_3 > L3_3 then
              L2_3 = DrawMarker
              L3_3 = 28
              L4_3 = A0_2.x
              L5_3 = A0_2.y
              L6_3 = A0_2.z
              L7_3 = 0.0
              L8_3 = 0.0
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = 180.0
              L12_3 = 0.0
              L13_3 = L8_1
              L14_3 = L8_1
              L15_3 = L8_1
              L16_3 = 255
              L17_3 = 0
              L18_3 = 0
              L19_3 = 50
              L20_3 = true
              L21_3 = true
              L22_3 = 2
              L23_3 = nil
              L24_3 = nil
              L25_3 = false
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              L2_3 = GetEntityCoords
              L3_3 = L1_3
              L2_3 = L2_3(L3_3)
              L3_3 = A0_2
              L2_3 = L2_3 - L3_3
              L2_3 = #L2_3
              if L2_3 > 25.0 then
                L2_3 = DrawMarker
                L3_3 = 1
                L4_3 = vector3
                L5_3 = A0_2.x
                L6_3 = A0_2.y
                L7_3 = A0_2.z
                L7_3 = L7_3 - 7.0
                L4_3 = L4_3(L5_3, L6_3, L7_3)
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0
                L9_3 = 0.0
                L10_3 = 0.0
                L11_3 = L0_3
                L12_3 = L0_3
                L13_3 = 9000.0
                L14_3 = 255
                L15_3 = 0
                L16_3 = 0
                L17_3 = 100
                L18_3 = true
                L19_3 = true
                L20_3 = 2
                L21_3 = false
                L22_3 = false
                L23_3 = false
                L24_3 = false
                L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
              end
            else
              L2_3 = IsPedInAnyVehicle
              L3_3 = L1_3
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = IsPedFatallyInjured
                L3_3 = L1_3
                L2_3 = L2_3(L3_3)
                if not L2_3 then
                  L2_3 = exports
                  L2_3 = L2_3.text_guide
                  L3_3 = L2_3
                  L2_3 = L2_3.ClearGuideText
                  L2_3(L3_3)
                  L2_3 = exports
                  L2_3 = L2_3.text_guide
                  L3_3 = L2_3
                  L2_3 = L2_3.GuidaNascondi
                  L2_3(L3_3)
                  L2_3 = ExecuteCommand
                  L3_3 = "prova3 You have the CashBox, deliver on the red checkpoint."
                  L2_3(L3_3)
                  L2_3 = true
                  L1_1 = L2_3
                  L2_3 = L0_1
                  L3_3 = "ba_prop_battle_fakeid_boxpp_01a"
                  L4_3 = 24818
                  L5_3 = 0.04
                  L6_3 = -0.145
                  L7_3 = 0.0
                  L8_3 = 90.800000000001
                  L9_3 = 3.4
                  L10_3 = -5.0
                  L11_3 = nil
                  L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                  scatolaProp = L2_3
                  L2_3 = TriggerServerEvent
                  L3_3 = "striano_pen1:AssegnaCashbox"
                  L4_3 = GetPlayerServerId
                  L5_3 = PlayerId
                  L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3()
                  L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                  L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                  L2_3 = CreateMissionBlipCustom
                  L3_3 = A1_2
                  L2_3(L3_3)
                  L2_3 = LoopConsegna
                  L3_3 = A1_2
                  L2_3(L3_3)
                  return
                end
              end
            end
          else
            L2_3 = Wait
            L3_3 = 5000
            L2_3(L3_3)
          end
          L2_3 = Wait
          L3_3 = 0
          L2_3(L3_3)
        end
      end
      L2_2(L3_2)
    end
  end
end
L21_1(L22_1, L23_1)
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    L0_3 = L8_1
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    while true do
      L2_3 = L1_1
      if L2_3 then
        L2_3 = L6_1
        if not L2_3 then
          L2_3 = IsEntityDead
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = IsPedDeadOrDying
            L3_3 = L1_3
            L4_3 = 1
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsPedFatallyInjured
              L3_3 = L1_3
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                goto lbl_71
              end
            end
          end
          L2_3 = print
          L3_3 = "Sei morto, la posizione della cassa viene aggirnata a tutto il server."
          L2_3(L3_3)
          L2_3 = false
          L1_1 = L2_3
          L2_3 = DoesEntityExist
          L3_3 = scatolaProp
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = SetEntityAsMissionEntity
            L3_3 = scatolaProp
            L2_3(L3_3)
            L2_3 = DeleteEntity
            L3_3 = scatolaProp
            L2_3(L3_3)
          end
          scatolaProp = nil
          L2_3 = TriggerServerEvent
          L3_3 = "striano_pen1:updateCashBoxPos"
          L4_3 = GetEntityCoords
          L5_3 = L1_3
          L4_3 = L4_3(L5_3)
          L5_3 = A0_2
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = exports
          L2_3 = L2_3.striano_combat
          L3_3 = L2_3
          L2_3 = L2_3.submexError
          L4_3 = "You drop the CashBox!"
          L2_3(L3_3, L4_3)
          L2_3 = exports
          L2_3 = L2_3.text_guide
          L3_3 = L2_3
          L2_3 = L2_3.ClearGuideText
          L2_3(L3_3)
          L2_3 = exports
          L2_3 = L2_3.text_guide
          L3_3 = L2_3
          L2_3 = L2_3.GuidaNascondi
          L2_3(L3_3)
          L2_3 = ExecuteCommand
          L3_3 = "prova3 "
          L2_3(L3_3)
          L2_3 = DelMissionBlipCustom
          L2_3()
          L2_3 = DelWantedBlip
          L2_3()
          do return end
          ::lbl_71::
          L2_3 = L7_1
          if 0 == L2_3 then
            L2_3 = GetGameTimer
            L2_3 = L2_3()
            L7_1 = L2_3
          else
            L2_3 = GetGameTimer
            L2_3 = L2_3()
            L3_3 = L7_1
            L2_3 = L2_3 - L3_3
            L3_3 = 30000
            if L2_3 > L3_3 then
              L2_3 = TriggerServerEvent
              L3_3 = "striano_pen1:sharePos"
              L4_3 = GetPlayerServerId
              L5_3 = PlayerId
              L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3()
              L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              L5_3 = GetEntityCoords
              L6_3 = L1_3
              L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3(L6_3)
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              L2_3 = 0
              L7_1 = L2_3
            end
          end
          L2_3 = GetEntityCoords
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          L3_3 = A0_2
          L2_3 = L2_3 - L3_3
          L2_3 = #L2_3
          L3_3 = 1000.0
          if L2_3 > L3_3 then
            L0_3 = 30.0
          else
            L0_3 = L8_1
          end
          L2_3 = GetEntityCoords
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          L3_3 = A0_2
          L2_3 = L2_3 - L3_3
          L2_3 = #L2_3
          L3_3 = L8_1
          if L2_3 > L3_3 then
            L2_3 = DrawMarker
            L3_3 = 28
            L4_3 = A0_2.x
            L5_3 = A0_2.y
            L6_3 = A0_2.z
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.0
            L11_3 = 180.0
            L12_3 = 0.0
            L13_3 = L8_1
            L14_3 = L8_1
            L15_3 = L8_1
            L16_3 = 255
            L17_3 = 0
            L18_3 = 0
            L19_3 = 50
            L20_3 = true
            L21_3 = true
            L22_3 = 2
            L23_3 = nil
            L24_3 = nil
            L25_3 = false
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
            L2_3 = GetEntityCoords
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            L3_3 = A0_2
            L2_3 = L2_3 - L3_3
            L2_3 = #L2_3
            if L2_3 > 25.0 then
              L2_3 = DrawMarker
              L3_3 = 1
              L4_3 = vector3
              L5_3 = A0_2.x
              L6_3 = A0_2.y
              L7_3 = A0_2.z
              L7_3 = L7_3 - 7.0
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = L0_3
              L12_3 = L0_3
              L13_3 = 9000.0
              L14_3 = 255
              L15_3 = 0
              L16_3 = 0
              L17_3 = 100
              L18_3 = true
              L19_3 = true
              L20_3 = 2
              L21_3 = false
              L22_3 = false
              L23_3 = false
              L24_3 = false
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
            end
          else
            L2_3 = IsPedInAnyVehicle
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = IsPedFatallyInjured
              L3_3 = L1_3
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = ExecuteCommand
                L3_3 = "prova3 "
                L2_3(L3_3)
                L2_3 = TriggerServerEvent
                L3_3 = "striano_pen1:CashBoxConsegnata"
                L4_3 = GetPlayerServerId
                L5_3 = PlayerId
                L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3()
                L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                L2_3 = TriggerServerEvent
                L3_3 = "inv3d:giveItem"
                L4_3 = GetPlayerServerId
                L5_3 = PlayerId
                L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3()
                L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                L5_3 = "player"
                L6_3 = "moneta"
                L7_3 = 100
                L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
                L2_3 = L3_1
                L2_3 = L2_3 + 1
                L3_1 = L2_3
                L2_3 = false
                L1_1 = L2_3
                L2_3 = DoesEntityExist
                L3_3 = scatolaProp
                L2_3 = L2_3(L3_3)
                if L2_3 then
                  L2_3 = SetEntityAsMissionEntity
                  L3_3 = scatolaProp
                  L2_3(L3_3)
                  L2_3 = DeleteEntity
                  L3_3 = scatolaProp
                  L2_3(L3_3)
                end
                scatolaProp = nil
                L2_3 = DelMissionBlipCustom
                L2_3()
                L2_3 = DelWantedBlip
                L2_3()
                return
              end
            end
          end
        end
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
    end
  end
  L1_2(L2_2)
end
LoopConsegna = L21_1
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:scatolaPresa"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:scatolaPresa"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerServerId
  L2_2 = PlayerId
  L2_2, L3_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= A0_2 then
    L1_2 = true
    L2_1 = L1_2
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexImportant
    L3_2 = "CashBox getted from another player, stop him before delivery."
    L1_2(L2_2, L3_2)
    L1_2 = DelMissionBlipCustom
    L1_2()
  else
    L1_2 = ExecuteCommand
    L2_2 = "e prendi6"
    L1_2(L2_2)
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:ricompensaCashBox"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:ricompensaCashBox"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = true
  L2_1 = L0_2
  L0_2 = L3_1
  if L0_2 < 2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexImportant
    L2_2 = "Cashbox delivered, Nice job!"
    L0_2(L1_2, L2_2)
  else
    L0_2 = TriggerServerEvent
    L1_2 = "ControlloPEN"
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2 = L3_2()
    L2_2, L3_2 = L2_2(L3_2)
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexImportant
    L2_2 = "Cashbox delivered, get ready to be the PEN1!"
    L0_2(L1_2, L2_2)
  end
  L0_2 = Wait
  L1_2 = 4000
  L0_2(L1_2)
  L0_2 = false
  L2_1 = L0_2
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:sharePos"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:sharePos"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L6_1
  if not L2_2 then
    L2_2 = canPEN
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = GetPlayerServerId
      L3_2 = PlayerId
      L3_2 = L3_2()
      L2_2 = L2_2(L3_2)
      if L2_2 ~= A0_2 then
        L2_2 = CreateWantedBlip
        L3_2 = A1_2
        L2_2(L3_2)
      else
        L2_2 = DelWantedBlip
        L2_2()
      end
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "striano_pen1:PreparaCorsa"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "striano_pen1:PreparaCorsa"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  if not L1_2 then
    L1_2 = canPEN
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = CreateMissionBlipCustom
      L2_2 = A0_2.startpos
      L1_2(L2_2)
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.submexImportant
      L3_2 = "Race event! Go to the red checkpoint to start! (Start in 5 min)"
      L1_2(L2_2, L3_2)
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = 35.0
        while true do
          L2_3 = L6_1
          if L2_3 then
            L2_3 = print
            L3_3 = "Loop chiuso perch\195\168 disattivato PEN1 da client."
            L2_3(L3_3)
            return
          end
          L2_3 = canPEN
          L2_3 = L2_3()
          if not L2_3 then
            L2_3 = print
            L3_3 = "Loop chiuso perch\195\168 stai facendo una Main Quest."
            L2_3(L3_3)
            return
          end
          L2_3 = L4_1
          if L2_3 then
            L2_3 = false
            L4_1 = L2_3
            L2_3 = print
            L3_3 = "Loop chiuso perch\195\168 la gara \195\168 gi\195\160 iniziata."
            L2_3(L3_3)
            return
          end
          L2_3 = GetEntityCoords
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          L3_3 = A0_2.startpos
          L2_3 = L2_3 - L3_3
          L2_3 = #L2_3
          if L1_3 < L2_3 then
            L2_3 = DrawMarker
            L3_3 = 28
            L4_3 = A0_2.startpos
            L4_3 = L4_3.x
            L5_3 = A0_2.startpos
            L5_3 = L5_3.y
            L6_3 = A0_2.startpos
            L6_3 = L6_3.z
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.0
            L11_3 = 180.0
            L12_3 = 0.0
            L13_3 = L1_3
            L14_3 = L1_3
            L15_3 = L1_3
            L16_3 = 255
            L17_3 = 0
            L18_3 = 0
            L19_3 = 50
            L20_3 = true
            L21_3 = true
            L22_3 = 2
            L23_3 = nil
            L24_3 = nil
            L25_3 = false
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
            L2_3 = GetEntityCoords
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            L3_3 = A0_2.startpos
            L2_3 = L2_3 - L3_3
            L2_3 = #L2_3
            L3_3 = L1_3 + 5.0
            if L2_3 > L3_3 then
              L2_3 = DrawMarker
              L3_3 = 1
              L4_3 = vector3
              L5_3 = A0_2.startpos
              L5_3 = L5_3.x
              L6_3 = A0_2.startpos
              L6_3 = L6_3.y
              L7_3 = A0_2.startpos
              L7_3 = L7_3.z
              L7_3 = L7_3 - 7.0
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = 20.0
              L12_3 = 20.0
              L13_3 = 9000.0
              L14_3 = 255
              L15_3 = 0
              L16_3 = 0
              L17_3 = 100
              L18_3 = true
              L19_3 = true
              L20_3 = 2
              L21_3 = false
              L22_3 = false
              L23_3 = false
              L24_3 = false
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
            end
          else
            L2_3 = IsPedFatallyInjured
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = L5_1
              if not L2_3 then
                L2_3 = DrawMarker
                L3_3 = 28
                L4_3 = A0_2.startpos
                L4_3 = L4_3.x
                L5_3 = A0_2.startpos
                L5_3 = L5_3.y
                L6_3 = A0_2.startpos
                L6_3 = L6_3.z
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 0.0
                L11_3 = 180.0
                L12_3 = 0.0
                L13_3 = L1_3
                L14_3 = L1_3
                L15_3 = L1_3
                L16_3 = 255
                L17_3 = 0
                L18_3 = 0
                L19_3 = 50
                L20_3 = true
                L21_3 = true
                L22_3 = 2
                L23_3 = nil
                L24_3 = nil
                L25_3 = false
                L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                L2_3 = exports
                L2_3 = L2_3.striano_core
                L3_3 = L2_3
                L2_3 = L2_3.draw
                L4_3 = 38
                L5_3 = "Enter in the race and wait the start."
                L2_3(L3_3, L4_3, L5_3)
                L2_3 = IsControlJustPressed
                L3_3 = 0
                L4_3 = 38
                L2_3 = L2_3(L3_3, L4_3)
                if L2_3 then
                  L2_3 = IsPedInAnyVehicle
                  L3_3 = L0_3
                  L2_3 = L2_3(L3_3)
                  if L2_3 then
                    L2_3 = exports
                    L2_3 = L2_3.striano_combat
                    L3_3 = L2_3
                    L2_3 = L2_3.submexError
                    L4_3 = "For this race you must be on foot."
                    L2_3(L3_3, L4_3)
                    L2_3 = Wait
                    L3_3 = 2000
                    L2_3(L3_3)
                  else
                    L2_3 = true
                    L5_1 = L2_3
                    L2_3 = TriggerServerEvent
                    L3_3 = "AggiornaPartecipanti"
                    L4_3 = 1
                    L2_3(L3_3, L4_3)
                    L2_3 = exports
                    L2_3 = L2_3.text_guide
                    L3_3 = L2_3
                    L2_3 = L2_3.ClearGuideText
                    L2_3(L3_3)
                    L2_3 = exports
                    L2_3 = L2_3.text_guide
                    L3_3 = L2_3
                    L2_3 = L2_3.GuidaNascondi
                    L2_3(L3_3)
                    L2_3 = exports
                    L2_3 = L2_3.striano_combat
                    L3_3 = L2_3
                    L2_3 = L2_3.submexInfo
                    L4_3 = "You are in list to race, please do not go away."
                    L2_3(L3_3, L4_3)
                    L2_3 = Wait
                    L3_3 = 3000
                    L2_3(L3_3)
                  end
                end
              else
                L2_3 = DrawMarker
                L3_3 = 28
                L4_3 = A0_2.startpos
                L4_3 = L4_3.x
                L5_3 = A0_2.startpos
                L5_3 = L5_3.y
                L6_3 = A0_2.startpos
                L6_3 = L6_3.z
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 0.0
                L11_3 = 180.0
                L12_3 = 0.0
                L13_3 = L1_3
                L14_3 = L1_3
                L15_3 = L1_3
                L16_3 = 255
                L17_3 = 0
                L18_3 = 0
                L19_3 = 50
                L20_3 = true
                L21_3 = true
                L22_3 = 2
                L23_3 = nil
                L24_3 = nil
                L25_3 = false
                L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                L2_3 = exports
                L2_3 = L2_3.striano_core
                L3_3 = L2_3
                L2_3 = L2_3.draw
                L4_3 = 38
                L5_3 = "Stop the race for me"
                L2_3(L3_3, L4_3, L5_3)
                L2_3 = IsControlJustPressed
                L3_3 = 0
                L4_3 = 38
                L2_3 = L2_3(L3_3, L4_3)
                if L2_3 then
                  L2_3 = false
                  L5_1 = L2_3
                  L2_3 = TriggerServerEvent
                  L3_3 = "AggiornaPartecipanti"
                  L4_3 = 2
                  L2_3(L3_3, L4_3)
                  L2_3 = exports
                  L2_3 = L2_3.text_guide
                  L3_3 = L2_3
                  L2_3 = L2_3.ClearGuideText
                  L2_3(L3_3)
                  L2_3 = exports
                  L2_3 = L2_3.text_guide
                  L3_3 = L2_3
                  L2_3 = L2_3.GuidaNascondi
                  L2_3(L3_3)
                  L2_3 = exports
                  L2_3 = L2_3.striano_combat
                  L3_3 = L2_3
                  L2_3 = L2_3.submexInfo
                  L4_3 = "You are out from the race, please go away from the start."
                  L2_3(L3_3, L4_3)
                  L2_3 = ExecuteCommand
                  L3_3 = "prova3 "
                  L2_3(L3_3)
                  L2_3 = Wait
                  L3_3 = 3000
                  L2_3(L3_3)
                end
              end
            end
          end
          L2_3 = Wait
          L3_3 = 0
          L2_3(L3_3)
        end
      end
      L1_2(L2_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = 0
L22_1 = RegisterNetEvent
L23_1 = "striano_pen1:AvviaCorsa"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "striano_pen1:AvviaCorsa"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = true
  L4_1 = L1_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L5_1
  if L2_2 then
    L2_2 = IsPedFatallyInjured
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedInAnyVehicle
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = GetEntityCoords
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L3_2 = A0_2.startpos
        L2_2 = L2_2 - L3_2
        L2_2 = #L2_2
        if L2_2 < 70.0 then
          L2_2 = ExecuteCommand
          L3_2 = "prova3 "
          L2_2(L3_2)
          L2_2 = DelMissionBlipCustom
          L2_2()
          L2_2 = exports
          L2_2 = L2_2.striano_combat
          L3_2 = L2_2
          L2_2 = L2_2.submexInfo
          L4_2 = "Get ready, race will start in a moment!"
          L2_2(L3_2, L4_2)
          L2_2 = Wait
          L3_2 = 9000
          L2_2(L3_2)
          L2_2 = print
          L3_2 = "Fornisco i veicoli in base alla variabile attiva."
          L2_2(L3_2)
          L2_2 = A0_2.tipoveicolo
          if "volo" == L2_2 then
            L2_2 = TriggerEvent
            L3_2 = "AttivaSuperMan"
            L2_2(L3_2)
          else
            L2_2 = TriggerServerEvent
            L3_2 = "spawnaVeicoloServer"
            L4_2 = A0_2.tipoveicolo
            L2_2(L3_2, L4_2)
          end
          L2_2 = print
          L3_2 = "Tipo di corsa: "
          L4_2 = A0_2.tipoveicolo
          L3_2 = L3_2 .. L4_2
          L2_2(L3_2)
          while true do
            L2_2 = IsPedInAnyVehicle
            L3_2 = L1_2
            L2_2 = L2_2(L3_2)
            if L2_2 then
              break
            end
            L2_2 = Wait
            L3_2 = 25
            L2_2(L3_2)
          end
          L2_2 = GetVehiclePedIsIn
          L3_2 = L1_2
          L4_2 = false
          L2_2 = L2_2(L3_2, L4_2)
          L21_1 = L2_2
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submexInfo
          L5_2 = "Get ready, nearly to start!"
          L3_2(L4_2, L5_2)
          L3_2 = Wait
          L4_2 = 9000
          L3_2(L4_2)
          L3_2 = DeleteWaypoint
          L3_2()
          L3_2 = Wait
          L4_2 = 3000
          L3_2(L4_2)
          L3_2 = A0_2.tipoveicolo
          if "volo" == L3_2 then
            L3_2 = IsPedInAnyVehicle
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            if not L3_2 then
              L3_2 = TriggerEvent
              L4_2 = "AttivaSuperMan"
              L3_2(L4_2)
            end
          end
          L3_2 = FreezaComandi
          L4_2 = true
          L3_2(L4_2)
          L3_2 = GetEntityCoords
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          L14_1 = L3_2
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submex
          L5_2 = ""
          L3_2(L4_2, L5_2)
          L3_2 = Wait
          L4_2 = 3500
          L3_2(L4_2)
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submex
          L5_2 = ""
          L3_2(L4_2, L5_2)
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submexInfo
          L5_2 = "3"
          L3_2(L4_2, L5_2)
          L3_2 = PlaySoundFrontend
          L4_2 = -1
          L5_2 = "Highlight_Error"
          L6_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
          L7_2 = 1
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submexInfo
          L5_2 = "2"
          L3_2(L4_2, L5_2)
          L3_2 = PlaySoundFrontend
          L4_2 = -1
          L5_2 = "Highlight_Error"
          L6_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
          L7_2 = 1
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submexInfo
          L5_2 = "1"
          L3_2(L4_2, L5_2)
          L3_2 = PlaySoundFrontend
          L4_2 = -1
          L5_2 = "Highlight_Error"
          L6_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
          L7_2 = 1
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submexInfo
          L5_2 = "GO!"
          L3_2(L4_2, L5_2)
          L3_2 = PlaySoundFrontend
          L4_2 = -1
          L5_2 = "5_Second_Timer"
          L6_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
          L7_2 = 0
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submex
          L5_2 = ""
          L3_2(L4_2, L5_2)
          L3_2 = FreezaComandi
          L4_2 = false
          L3_2(L4_2)
          L3_2 = 1
          L12_1 = L3_2
          L3_2 = LoopGara
          L4_2 = A0_2.checks
          L5_2 = A0_2.Laps
          L6_2 = A0_2.tipoveicolo
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = LoopTimerPrendiCheck
          L3_2()
        else
          L2_2 = EspulsoGara
          L2_2()
          L2_2 = exports
          L2_2 = L2_2.striano_combat
          L3_2 = L2_2
          L2_2 = L2_2.submexError
          L4_2 = "Canceled from the race for too much distance."
          L2_2(L3_2, L4_2)
          L2_2 = print
          L3_2 = "Canceled from race for distance."
          L2_2(L3_2)
        end
    end
    else
      L2_2 = EspulsoGara
      L2_2()
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.submexError
      L4_2 = "You can't race now, canceled."
      L2_2(L3_2, L4_2)
      L2_2 = print
      L3_2 = "Canceled from race cause no vehicle or dead."
      L2_2(L3_2)
      L2_2 = false
      L5_1 = L2_2
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = false
function L23_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = L22_1
    if not L1_2 then
      L1_2 = true
      L22_1 = L1_2
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3
        while true do
          L0_3 = L22_1
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = DisableAllControlActions
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = DisableAllControlActions
          L1_3 = 1
          L0_3(L1_3)
          L0_3 = DisableAllControlActions
          L1_3 = 2
          L0_3(L1_3)
        end
      end
      L1_2(L2_2)
    end
  else
    L1_2 = L22_1
    if L1_2 then
      L1_2 = false
      L22_1 = L1_2
    end
  end
end
FreezaComandi = L23_1
L23_1 = 0
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L3_2 = A0_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = L12_1
      if L1_3 > 0 then
        L1_3 = L6_1
        if not L1_3 then
          L1_3 = canPEN
          L1_3 = L1_3()
          if L1_3 then
            L1_3 = L21_1
            if L1_3 > 0 then
              L1_3 = DoesEntityExist
              L2_3 = L21_1
              L1_3 = L1_3(L2_3)
              if L1_3 then
                L1_3 = IsEntityInWater
                L2_3 = L21_1
                L1_3 = L1_3(L2_3)
                if L1_3 then
                  L1_3 = EspulsoGara
                  L1_3()
                  return
                end
              end
            end
            L1_3 = IsEntityInWater
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = EspulsoGara
              L1_3()
              return
            end
            L1_3 = nil
            L2_3 = nil
            L4_3 = L12_1
            L3_3 = L3_2
            L3_3 = L3_3[L4_3]
            L1_3 = L3_3.pos
            L3_3 = L12_1
            L4_3 = L3_3 + 1
            L3_3 = L3_2
            L3_3 = L3_3[L4_3]
            if nil ~= L3_3 then
              L3_3 = L12_1
              L4_3 = L3_3 + 1
              L3_3 = L3_2
              L3_3 = L3_3[L4_3]
              L2_3 = L3_3.pos
            end
            L3_3 = 1
            L4_3 = A2_2
            if "volo" == L4_3 then
              L3_3 = 28
            end
            L4_3 = L19_1
            L5_3 = vector3
            L6_3 = L1_3.x
            L7_3 = L1_3.y
            L8_3 = L1_3.z
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L6_3 = L3_3
            L4_3(L5_3, L6_3)
            if nil ~= L2_3 then
              L4_3 = 1
              L5_3 = A2_2
              if "volo" == L5_3 then
                L4_3 = 28
              end
              L5_3 = L20_1
              L6_3 = vector3
              L7_3 = L2_3.x
              L8_3 = L2_3.y
              L9_3 = L2_3.z
              L6_3 = L6_3(L7_3, L8_3, L9_3)
              L7_3 = L4_3
              L5_3(L6_3, L7_3)
            end
            L4_3 = GetEntityCoords
            L5_3 = L0_3
            L4_3 = L4_3(L5_3)
            L5_3 = vector3
            L6_3 = L1_3.x
            L7_3 = L1_3.y
            L8_3 = L1_3.z
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L4_3 = L4_3 - L5_3
            L4_3 = #L4_3
            L5_3 = L13_1
            if L4_3 < L5_3 then
              L4_3 = L17_1
              L5_3 = "Checkpoint: "
              L6_3 = L12_1
              L7_3 = "/"
              L8_3 = L3_2
              L8_3 = #L8_3
              L9_3 = " (Lap: "
              L10_3 = L11_1
              L11_3 = "/"
              L12_3 = A1_2
              L13_3 = ")"
              L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3
              L4_3(L5_3)
              L4_3 = L12_1
              L4_3 = L4_3 + 1
              L12_1 = L4_3
              L4_3 = 0
              L23_1 = L4_3
              L4_3 = DeleteWaypoint
              L4_3()
              L4_3 = L18_1
              L4_3()
              L4_3 = L12_1
              L5_3 = L3_2
              L5_3 = #L5_3
              L5_3 = L5_3 + 1
              if L4_3 == L5_3 then
                L4_3 = L11_1
                L5_3 = A1_2
                if L4_3 == L5_3 then
                  L4_3 = TriggerServerEvent
                  L5_3 = "GaraFinita"
                  L6_3 = GetPlayerServerId
                  L7_3 = PlayerId
                  L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L7_3()
                  L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                  L7_3 = L12_1
                  L4_3(L5_3, L6_3, L7_3)
                  L4_3 = 0
                  L12_1 = L4_3
                  L4_3 = false
                  L5_1 = L4_3
                  L4_3 = 1
                  L11_1 = L4_3
                  return
                else
                  L4_3 = L17_1
                  L5_3 = "Round complete, go on! ("
                  L6_3 = L11_1
                  L7_3 = "/"
                  L8_3 = A1_2
                  L9_3 = ")"
                  L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
                  L4_3(L5_3)
                  L4_3 = L11_1
                  L4_3 = L4_3 + 1
                  L11_1 = L4_3
                  L4_3 = 1
                  L12_1 = L4_3
                end
              end
            end
        end
      end
      else
        return
      end
    end
  end
  L4_2(L5_2)
end
LoopGara = L24_1
function L24_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = L12_1
      if 0 == L0_3 then
        L0_3 = print
        L1_3 = "Chiudo controllo troppo tempo, nessuna gara rilevata."
        L0_3(L1_3)
        return
      end
      L0_3 = L23_1
      L0_3 = L0_3 + 1
      L23_1 = L0_3
      L0_3 = L23_1
      if 120 == L0_3 then
        L0_3 = EspulsoGara
        L0_3()
        L0_3 = TriggerServerEvent
        L1_3 = "AggiornaPartecipanti"
        L2_3 = 2
        L0_3(L1_3, L2_3)
        L0_3 = exports
        L0_3 = L0_3.striano_combat
        L1_3 = L0_3
        L0_3 = L0_3.submexError
        L2_3 = "Canceled from the race cause you don't reach the check in time."
        L0_3(L1_3, L2_3)
        return
      end
    end
  end
  L0_2(L1_2)
end
LoopTimerPrendiCheck = L24_1
L24_1 = RegisterNetEvent
L25_1 = "DicoVincitore"
L24_1(L25_1)
L24_1 = AddEventHandler
L25_1 = "DicoVincitore"
function L26_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L12_1
  if L3_2 > 0 then
    L3_2 = SetEntityCoords
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = 0
  L12_1 = L3_2
  L3_2 = false
  L5_1 = L3_2
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.submex
  L5_2 = ""
  L3_2(L4_2, L5_2)
  L3_2 = TriggerEvent
  L4_2 = "stopSuperMan"
  L3_2(L4_2)
  L3_2 = L21_1
  if L3_2 > 0 then
    L3_2 = DoesEntityExist
    L4_2 = L21_1
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = SetEntityAsMissionEntity
      L4_2 = L21_1
      L3_2(L4_2)
      L3_2 = DeleteVehicle
      L4_2 = L21_1
      L3_2(L4_2)
      L3_2 = L14_1
      if nil ~= L3_2 then
        L3_2 = SetEntityCoords
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = L14_1
        L3_2(L4_2, L5_2)
        L3_2 = nil
        L14_1 = L3_2
      end
    end
    L3_2 = 0
    L21_1 = L3_2
  end
  if A0_2 > 0 then
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if L3_2 ~= A0_2 then
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexImportant
      L5_2 = "Race complete! Winner: "
      L6_2 = A1_2
      L7_2 = "!"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexImportant
      L5_2 = "Good work! "
      L6_2 = A1_2
      L7_2 = " you are the Winner!"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2(L4_2, L5_2)
      L3_2 = TriggerServerEvent
      L4_2 = "ControlloPEN"
      L5_2 = GetPlayerServerId
      L6_2 = PlayerId
      L6_2, L7_2 = L6_2()
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  L3_2 = true
  L4_1 = L3_2
  L3_2 = Wait
  L4_2 = 4000
  L3_2(L4_2)
  L3_2 = false
  L4_1 = L3_2
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNetEvent
L25_1 = "AggiornaTimerCorsa"
L24_1(L25_1)
L24_1 = AddEventHandler
L25_1 = "AggiornaTimerCorsa"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L5_1
  if L1_2 then
    L1_2 = ExecuteCommand
    L2_2 = "prova3 Race start in "
    L3_2 = A0_2
    L4_2 = "s."
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
  end
end
L24_1(L25_1, L26_1)
function L24_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0
  L12_1 = L0_2
  L0_2 = TriggerEvent
  L1_2 = "stopSuperMan"
  L0_2(L1_2)
  L0_2 = L21_1
  if L0_2 > 0 then
    L0_2 = DoesEntityExist
    L1_2 = L21_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = L21_1
      L0_2(L1_2)
      L0_2 = DeleteVehicle
      L1_2 = L21_1
      L0_2(L1_2)
      L0_2 = L14_1
      if nil ~= L0_2 then
        L0_2 = SetEntityCoords
        L1_2 = PlayerPedId
        L1_2 = L1_2()
        L2_2 = L14_1
        L0_2(L1_2, L2_2)
        L0_2 = nil
        L14_1 = L0_2
      end
    end
    L0_2 = 0
    L21_1 = L0_2
  end
  L0_2 = L5_1
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "AggiornaPartecipanti"
    L2_2 = 2
    L0_2(L1_2, L2_2)
  end
  L0_2 = false
  L5_1 = L0_2
end
EspulsoGara = L24_1
L24_1 = RegisterNetEvent
L25_1 = "AggiornaPercorsoPen"
L24_1(L25_1)
L24_1 = AddEventHandler
L25_1 = "AggiornaPercorsoPen"
function L26_1(A0_2)
  local L1_2, L2_2
  if nil ~= A0_2 then
    L1_2 = CreateMissionBlipCustom
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L24_1(L25_1, L26_1)
