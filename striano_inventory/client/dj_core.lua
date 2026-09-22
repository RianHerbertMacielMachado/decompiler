local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = nil
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L12_2 = RequestModelStriano
  L13_2 = A0_2
  L12_2(L13_2)
  L12_2 = IsEntityVisible
  L13_2 = PlayerPedId
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L13_2()
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  if L12_2 then
    L12_2 = nil
    L13_2 = L0_1
    if nil ~= L13_2 then
      L13_2 = DoesEntityExist
      L14_2 = L0_1
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L12_2 = L0_1
    end
    else
      L13_2 = CreateObject
      L14_2 = GetHashKey
      L15_2 = A0_2
      L14_2 = L14_2(L15_2)
      L15_2 = L9_2
      L16_2 = L10_2
      L17_2 = L11_2 - 0.2
      L18_2 = true
      L19_2 = true
      L20_2 = false
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L12_2 = L13_2
    end
    L13_2 = 0
    while true do
      L14_2 = DoesEntityExist
      L15_2 = L12_2
      L14_2 = L14_2(L15_2)
      if not (not L14_2 and L13_2 < 100) then
        break
      end
      L13_2 = L13_2 + 1
      L14_2 = Wait
      L15_2 = 0
      L14_2(L15_2)
    end
    if L13_2 < 100 then
      L14_2 = AttachEntityToEntity
      L15_2 = L12_2
      L16_2 = L8_2
      L17_2 = GetPedBoneIndex
      L18_2 = L8_2
      L19_2 = A1_2
      L17_2 = L17_2(L18_2, L19_2)
      L18_2 = A2_2
      L19_2 = A3_2
      L20_2 = A4_2
      L21_2 = A5_2
      L22_2 = A6_2
      L23_2 = A7_2
      L24_2 = true
      L25_2 = true
      L26_2 = false
      L27_2 = true
      L28_2 = 1
      L29_2 = true
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L0_1 = L12_2
      L14_2 = SetModelAsNoLongerNeeded
      L15_2 = A0_2
      L14_2(L15_2)
    end
  end
end
L2_1 = RegisterNetEvent
L3_1 = "DjEvent"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "DjEvent"
function L4_1()
  local L0_2, L1_2
  L0_2 = DjFunc
  L0_2()
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = LISTACANZONI
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = LISTACANZONI
    L4_2 = L4_2[L3_2]
    L5_2 = exports
    L5_2 = L5_2.striano_fastmenu
    L6_2 = L5_2
    L5_2 = L5_2.addMenuItem
    L7_2 = L4_2.label
    if not L7_2 then
      L7_2 = "Song #"
      L8_2 = L3_2
      L7_2 = L7_2 .. L8_2
    end
    function L8_2()
      local L0_3, L1_3
      L0_3 = GestisciCanzone
      L1_3 = L4_2
      L0_3(L1_3)
    end
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.opened
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = ClearPedTasks
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L0_1
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L0_1
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = SetEntityAsMissionEntity
        L1_3 = L0_1
        L0_3(L1_3)
        L0_3 = DeleteEntity
        L1_3 = L0_1
        L0_3(L1_3)
        L0_3 = nil
        L0_1 = L0_3
      end
    end
    L0_3 = Wait
    L1_3 = 25
    L0_3(L1_3)
    L0_3 = faiAnim
    L1_3 = "cellphone@"
    L2_3 = "cellphone_cellphone_outro"
    L3_3 = 1000
    L4_3 = 49
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L0_2(L1_2)
end
OpenSongListMenu = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = 0
  L1_2 = 1
  L2_2 = Locations
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = GetEntityCoords
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = Locations
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.coords
    L5_2 = L5_2 - L6_2
    L5_2 = #L5_2
    L6_2 = Locations
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.radius
    if L5_2 < L6_2 then
      L0_2 = L4_2
      break
    end
  end
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  if L0_2 > 0 then
    L1_2 = CheckJob
    L2_2 = Locations
    L2_2 = L2_2[L0_2]
    L2_2 = L2_2.job
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = OpenSongListMenu
      L1_2()
      L1_2 = AnimationTablet
      if L1_2 then
        L1_2 = ClearPedTasks
        L2_2 = PlayerPedId
        L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        L1_2 = faiAnim
        L2_2 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
        L3_2 = "idle_a"
        L4_2 = -1
        L5_2 = 49
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = L1_1
        L2_2 = "prop_cs_tablet"
        L3_2 = 28422
        L4_2 = -0.05
        L5_2 = 0.0
        L6_2 = 0.0
        L7_2 = 0.0
        L8_2 = 0.0
        L9_2 = 0.0
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
    end
  end
end
DjFunc = L2_1
LastLink = ""
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2[1]
  L2_2 = L2_2.link
  L1_2 = L1_2(L2_2)
  LastLink = L1_2
  L1_2 = OpenGestisciCanzoneMenu
  L2_2 = tostring
  L3_2 = A0_2[1]
  L3_2 = L3_2.label
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
end
GestisciCanzone = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = LastLink
  if nil == L0_2 then
    L0_2 = print
    L1_2 = "Song link not valid!"
    L0_2(L1_2)
    return
  end
  L0_2 = TriggerServerEvent
  L1_2 = "striano_djset:playMusic"
  L2_2 = LastLink
  L0_2(L1_2, L2_2)
end
avviaMusica = L2_1
L2_1 = AddEventHandler
L3_1 = "backMenu"
function L4_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "djset"
  L0_2(L1_2)
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "striano_djset:pauseMusic"
  L0_2(L1_2)
end
pausaMusica = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "striano_djset:resumeMusic"
  L0_2(L1_2)
end
resumeMusica = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "striano_djset:stopMusic"
  L0_2(L1_2)
end
fermaMusica = L2_1
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = SetEntityAsMissionEntity
    L2_2 = L0_1
    L1_2(L2_2)
    L1_2 = DeleteEntity
    L2_2 = L0_1
    L1_2(L2_2)
    L1_2 = nil
    L0_1 = L1_2
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "striano_djset:cambiaVolume"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
CAMBIAVOLUME = L2_1
