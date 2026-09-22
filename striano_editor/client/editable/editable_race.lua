local L0_1, L1_1, L2_1
Testo3D = ""
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
notify = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submexError
  L2_2 = "You are trying to place a checkpoint too close to an existing one."
  L0_2(L1_2, L2_2)
end
tx_tooclose = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = notify
  L2_2 = "Checkpoint ID "
  L3_2 = A0_2 - 2
  L4_2 = " added."
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
end
tx_checkAdded = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = drawrace
  L1_2 = 38
  L2_2 = "Exit from race."
  L0_2(L1_2, L2_2)
end
tx_exitFromRace = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = notify
  L5_2 = "Checkpoint: "
  L6_2 = A0_2 - 1
  L7_2 = "/"
  L8_2 = #A1_2
  L8_2 = L8_2 - 1
  L9_2 = " (Lap: "
  L10_2 = A2_2
  L11_2 = "/"
  L12_2 = A3_2
  L13_2 = ")"
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L6_2 = true
  L4_2(L5_2, L6_2)
end
tx_infoCheck = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = notify
  L3_2 = "Lap completed, go on! ("
  L4_2 = A0_2
  L5_2 = "/"
  L6_2 = A1_2
  L7_2 = ")"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
tx_lapComplete = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  Testo3D = "3"
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Highlight_Error"
  L3_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "5_Second_Timer"
  L3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = Testo3D
      L0_3 = #L0_3
      if not (L0_3 > 0) then
        break
      end
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = Draw3D
      L2_3 = L0_3.x
      L3_3 = L0_3.y
      L4_3 = L0_3.z
      L4_3 = L4_3 + 1.0
      L5_3 = Testo3D
      L6_3 = 3.0
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  Testo3D = "2"
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Highlight_Error"
  L3_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "5_Second_Timer"
  L3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  Testo3D = "1"
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Highlight_Error"
  L3_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "5_Second_Timer"
  L3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  Testo3D = "GO!"
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "5_Second_Timer"
  L3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
TreDueUno = L0_1
L0_1 = RegisterCommand
L1_1 = "race"
function L2_1()
  local L0_2, L1_2
  L0_2 = openMenuRace
  L0_2()
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = DistanzaPrendiCheck
  L3_2 = DistanzaPrendiCheck
  L4_2 = 900.0
  if A1_2 > 1 then
    L2_2 = DistanzaPrendiCheck
    L3_2 = DistanzaPrendiCheck
    L4_2 = DistanzaPrendiCheck
  end
  L5_2 = DrawMarker
  L6_2 = A1_2
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
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
MarkerRaceWhite = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = DistanzaPrendiCheck
  L3_2 = DistanzaPrendiCheck
  L4_2 = 900.0
  if A1_2 > 1 then
    L2_2 = DistanzaPrendiCheck
    L3_2 = DistanzaPrendiCheck
    L4_2 = DistanzaPrendiCheck
  end
  L5_2 = DrawMarker
  L6_2 = A1_2
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
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
MarkerRaceRed = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Highlight_Error"
  L3_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
SoundTakeMarker = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[ NEW RACE ]"
  function L3_2()
    local L0_3, L1_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4
      L0_4 = Wait
      L1_4 = 25
      L0_4(L1_4)
      L0_4 = TriggerEvent
      L1_4 = "raceCreate"
      L0_4(L1_4)
    end
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[ RACE LIST ]"
  function L3_2()
    local L0_3, L1_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4
      L0_4 = Wait
      L1_4 = 25
      L0_4(L1_4)
      L0_4 = openMyRaces
      L0_4()
    end
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = toggleRace
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_fastmenu
    L1_2 = L0_2
    L0_2 = L0_2.addMenuItem
    L2_2 = "[ CLOSE VIEWER ]"
    function L3_2()
      local L0_3, L1_3
      chiudiVisualizzatore = true
    end
    L4_2 = true
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
openMenuRace = L0_1
startIn = 30
L0_1 = AddEventHandler
L1_1 = "GestisciGara"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ RACE ID: "
  L4_2 = A0_2
  L5_2 = " ]"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4
      L0_4 = Wait
      L1_4 = 25
      L0_4(L1_4)
      L0_4 = TriggerEvent
      L1_4 = "backMenuRace"
      L0_4(L1_4)
    end
    L0_3(L1_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ RACE LAP: "
  L4_2 = myRACES
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.Laps
  L5_2 = "s ]"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4, L2_4
      L0_4 = Wait
      L1_4 = 25
      L0_4(L1_4)
      L0_4 = TriggerEvent
      L1_4 = "lapSelector"
      L2_4 = A0_2
      L0_4(L1_4, L2_4)
    end
    L0_3(L1_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = toggleRace
  if not L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_fastmenu
    L2_2 = L1_2
    L1_2 = L1_2.addMenuItem
    L3_2 = "[ VIEW PATH ]"
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerEvent
      L1_3 = "visualizzaCorse"
      L2_3 = A0_2
      L0_3(L1_3, L2_3)
    end
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ START RACE ]"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = TriggerEvent
    L1_3 = "startRace"
    L2_3 = GetPlayerServerId
    L3_3 = PlayerId
    L3_3, L4_3 = L3_3()
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = startIn
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "lapSelector"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ BACK ]"
  function L4_2()
    local L0_3, L1_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4, L2_4
      L0_4 = Wait
      L1_4 = 25
      L0_4(L1_4)
      L0_4 = TriggerEvent
      L1_4 = "GestisciGara"
      L2_4 = A0_2
      L0_4(L1_4, L2_4)
    end
    L0_3(L1_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ 1 LAP ]"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerEvent
    L1_3 = "changeLap"
    L2_3 = 1
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ 2 LAPs ]"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerEvent
    L1_3 = "changeLap"
    L2_3 = 2
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ 3 LAPs ]"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerEvent
    L1_3 = "changeLap"
    L2_3 = 3
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "startRace"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = myRACES
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.Checks
  L4_2 = L4_2[1]
  L3_2 = L3_2 - L4_2
  L3_2 = #L3_2
  if L3_2 < 30.0 then
    closeAllMenu = true
    L3_2 = siComincia
    if 0 == L3_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "startRace"
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submex
      L5_2 = ""
      L3_2(L4_2, L5_2)
    else
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "You already waiting for a race!"
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = Wait
    L4_2 = 225
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "You are too far from the starting point of the race "
    L6_2 = A1_2
    L7_2 = " to start it!"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2(L4_2, L5_2)
    L3_2 = TriggerEvent
    L4_2 = "visualizzaCorse"
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "updateTimerRace"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "updateTimerRace"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2[1]
  L2_2 = L2_2 - L3_2
  L2_2 = #L2_2
  L3_2 = DistanzaPrendiCheck
  L3_2 = L3_2 * 3
  if L2_2 <= L3_2 then
    L2_2 = notify
    L3_2 = "Race start in "
    L4_2 = A0_2 + 1
    L5_2 = "s."
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "changeLap"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerEvent
  L3_2 = "updateLAP"
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = myRACES
  L2_2 = L2_2[A1_2]
  L2_2.Laps = A0_2
  L2_2 = openMyRaces
  L2_2()
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[ BACK ]"
  function L3_2()
    local L0_3, L1_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4
      L0_4 = Wait
      L1_4 = 25
      L0_4(L1_4)
      L0_4 = TriggerEvent
      L1_4 = "backMenuRace"
      L0_4(L1_4)
    end
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = myRACES
  L0_2 = #L0_2
  if L0_2 > 0 then
    L0_2 = SetNuiFocusKeepInput
    L1_2 = true
    L0_2(L1_2)
    L0_2 = 1
    L1_2 = myRACES
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = exports
      L4_2 = L4_2.striano_fastmenu
      L5_2 = L4_2
      L4_2 = L4_2.addMenuItem
      L6_2 = "[ RACE "
      L7_2 = L3_2
      L8_2 = " ] "
      L9_2 = " ( ck: "
      L10_2 = myRACES
      L10_2 = L10_2[L3_2]
      L10_2 = L10_2.Checks
      L10_2 = #L10_2
      L11_2 = " | Lp: "
      L12_2 = myRACES
      L12_2 = L12_2[L3_2]
      L12_2 = L12_2.Laps
      L13_2 = " )"
      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
      function L7_2()
        local L0_3, L1_3
        L0_3 = CreateThread
        function L1_3()
          local L0_4, L1_4, L2_4
          L0_4 = Wait
          L1_4 = 25
          L0_4(L1_4)
          L0_4 = TriggerEvent
          L1_4 = "GestisciGara"
          L2_4 = L3_2
          L0_4(L1_4, L2_4)
        end
        L0_3(L1_3)
      end
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  else
    L0_2 = exports
    L0_2 = L0_2.striano_fastmenu
    L1_2 = L0_2
    L0_2 = L0_2.addMenuItem
    L2_2 = "[ NO RACEs FOUND ]"
    function L3_2()
      local L0_3, L1_3
      L0_3 = CreateThread
      function L1_3()
        local L0_4, L1_4
        L0_4 = Wait
        L1_4 = 25
        L0_4(L1_4)
        L0_4 = TriggerEvent
        L1_4 = "backMenuRace"
        L0_4(L1_4)
      end
      L0_3(L1_3)
    end
    L4_2 = true
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = PlaySoundFrontend
    L1_2 = -1
    L2_2 = "1st_Person_Transition"
    L3_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
    L4_2 = 1
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
openMyRaces = L0_1
L0_1 = AddEventHandler
L1_1 = "backMenuRace"
function L2_1()
  local L0_2, L1_2
  L0_2 = openMenuRace
  L0_2()
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = drawrace
  L2_2 = 74
  L3_2 = "Checkpoint ["
  L4_2 = myRACES
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.Checks
  L4_2 = #L4_2
  L5_2 = "]"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = 23
  L5_2 = "Complete"
  L6_2 = 73
  L7_2 = "Cancel [Race ID: "
  L8_2 = A0_2
  L9_2 = "]"
  L7_2 = L7_2 .. L8_2 .. L9_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
drawInfos = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = notify
  L1_2 = "Minimum 4 checkpoint to create a race!"
  L0_2(L1_2)
end
tx_notMuch = L0_1
L0_1 = RegisterNetEvent
L1_1 = "WinnerRaceCreator"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "WinnerRaceCreator"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.submex
  L5_2 = ""
  L3_2(L4_2, L5_2)
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
      L5_2 = "The race is over, the winner has been "
      L6_2 = A1_2
      L7_2 = "!"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexImportant
      L5_2 = "Hey "
      L6_2 = A1_2
      L7_2 = ", you WIN!"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2(L4_2, L5_2)
      L3_2 = PlaySoundFrontend
      L4_2 = -1
      L5_2 = "Mission_Pass_Notify"
      L6_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
      L7_2 = 0
      L3_2(L4_2, L5_2, L6_2, L7_2)
      closeAllMenu = true
      L3_2 = Wait
      L4_2 = 25
      L3_2(L4_2)
      closeAllMenu = false
    end
  end
  L3_2 = FineGara
  L4_2 = A2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
debugPrint = true
