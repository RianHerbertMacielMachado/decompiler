local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1
L0_1 = nil
L1_1 = false
L2_1 = RegisterNetEvent
L3_1 = "core:receivePrimaryIdentifier"
function L4_1(A0_2)
  local L1_2
  L1_2 = false
  L1_1 = L1_2
  if not A0_2 or "" == A0_2 or nil == A0_2 then
    L1_2 = nil
    L0_1 = L1_2
    return
  end
  L0_1 = A0_2
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    if not L0_3 or "" == L0_3 then
      L1_3 = L1_1
      if not L1_3 then
        L1_3 = true
        L1_1 = L1_3
        L1_3 = TriggerServerEvent
        L2_3 = "callonPlayerJoined"
        L1_3(L2_3)
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 + 5000
      while true do
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        if not (L1_3 > L2_3) then
          break
        end
        L0_3 = L0_1
        if L0_3 and "" ~= L0_3 then
          break
        end
        L2_3 = Wait
        L3_3 = 50
        L2_3(L3_3)
      end
    end
    L1_3 = false
    L1_1 = L1_3
    if not L0_3 or "" == L0_3 or nil == L0_3 then
      L1_3 = print
      L2_3 = "^1[CORE CLIENT]^7 Identifier not available."
      L1_3(L2_3)
      L1_3 = ExecuteCommand
      L2_3 = "e shrug5"
      L1_3(L2_3)
      return
    end
    L2_3 = L0_3
    L1_3 = L0_3.gsub
    L3_3 = ":"
    L4_3 = "_"
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = exports
    L2_3 = L2_3.striano_inventory
    L3_3 = L2_3
    L2_3 = L2_3.OpenInventory2D
    L4_3 = "deposit_Import_"
    L5_3 = L1_3
    L4_3 = L4_3 .. L5_3
    L2_3(L3_3, L4_3)
  end
  L0_2(L1_2)
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = IsPauseMenuActive
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.isopen
  L0_2 = L0_2(L1_2)
  if L0_2 then
    return
  end
  L0_2 = exports
  L0_2 = L0_2.skinchanger
  L1_2 = L0_2
  L0_2 = L0_2.menuaperto
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.stoposizionando
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_editor
    L1_2 = L0_2
    L0_2 = L0_2.editorattivo
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_35
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_35::
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.eInteractPos
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_fastmenu
    L1_2 = L0_2
    L0_2 = L0_2.close
    L0_2(L1_2)
    L0_2 = Wait
    L1_2 = 75
    L0_2(L1_2)
    L0_2 = ActivateFrontendMenu
    L1_2 = GetHashKey
    L2_2 = "FE_MENU_VERSION_LANDING_MENU"
    L1_2 = L1_2(L2_2)
    L2_2 = 0
    L3_2 = -1
    L0_2(L1_2, L2_2, L3_2)
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 75
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\154\153 Settings"
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ActivateFrontendMenu
    L1_3 = GetHashKey
    L2_3 = "FE_MENU_VERSION_LANDING_MENU"
    L1_3 = L1_3(L2_3)
    L2_3 = 0
    L3_3 = -1
    L0_3(L1_3, L2_3, L3_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\154\156\239\184\143 Casata"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "casata"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\155\176\239\184\143 Territorio"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "territorio"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\147\150 Missions"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "ob"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\157\140 Stop Missions"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "stopob"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\167\173 Map"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "openMap"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\154\148 Moveset"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "myListCombat"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\144\142 Mounts"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "myAnimals"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\154\151 Vehicles"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "garage"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\147\156 Grimorie"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "spellbook"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\151\186 Builder"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "spawnables"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\145\149 Clothes"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "i"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\154\161 Rapids"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "rapid"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\148\145 Keys"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "keys"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\142\175 Quest"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "striano_quest:respond"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\147\175 Caller"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "openComm"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
L4_1 = RegisterCommand
L5_1 = "mainmenu"
function L6_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2()
end
L4_1(L5_1, L6_1)
L4_1 = RegisterKeyMapping
L5_1 = "mainmenu"
L6_1 = "Open Main Menu"
L7_1 = "keyboard"
L8_1 = "ESCAPE"
L4_1(L5_1, L6_1, L7_1, L8_1)
L4_1 = {}
L5_1 = {}
L6_1 = vector3
L7_1 = 3827.147
L8_1 = 7279.063
L9_1 = 38.894
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.pos = L6_1
L5_1.testo = "Wash"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 3827.147
  L3_2 = 7279.063
  L4_2 = 38.894
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = DocciaPubblica
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L4_2 = L4_2 + 0.9
  L1_2(L2_2, L3_2, L4_2)
end
L5_1.funzione = L6_1
L5_1.fx = nil
L5_1.fx2 = nil
L5_1.myalpha = 1.0
L5_1.myalpha2 = 1.0
L5_1.vicino = true
L5_1.visibile = false
L6_1 = {}
L7_1 = vector3
L8_1 = 2880.448
L9_1 = 7484.36
L10_1 = 16.811
L7_1 = L7_1(L8_1, L9_1, L10_1)
L6_1.pos = L7_1
L6_1.testo = "Get Mount"
function L7_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "menuAnimal"
  L0_2(L1_2)
end
L6_1.funzione = L7_1
L6_1.fx = nil
L6_1.fx2 = nil
L6_1.myalpha = 1.0
L6_1.myalpha2 = 1.0
L6_1.vicino = true
L6_1.visibile = false
L7_1 = {}
L8_1 = vector3
L9_1 = 3142.059
L10_1 = 7336.247
L11_1 = 14.753
L8_1 = L8_1(L9_1, L10_1, L11_1)
L7_1.pos = L8_1
L7_1.testo = "Extra Mounts"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "NET_RACE_START_EVENT_MASTER"
  L3_2 = "0"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_ridehorse
  L1_2 = L0_2
  L0_2 = L0_2.ShowInstructionalButtonsTimed
  L2_2 = "Mounts available in ~y~~h~Striano All Resources~h~~w~. Select a mount from list to test!"
  L0_2(L1_2, L2_2)
  L0_2 = ExecuteCommand
  L1_2 = "animalMenu"
  L0_2(L1_2)
end
L7_1.funzione = L8_1
L7_1.fx = nil
L7_1.fx2 = nil
L7_1.myalpha = 1.0
L7_1.myalpha2 = 1.0
L7_1.vicino = true
L7_1.visibile = false
L8_1 = {}
L9_1 = vector3
L10_1 = 3141.715
L11_1 = 7339.75
L12_1 = 14.826
L9_1 = L9_1(L10_1, L11_1, L12_1)
L8_1.pos = L9_1
L8_1.testo = "What"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "NET_RACE_START_EVENT_MASTER"
  L3_2 = "0"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_ridehorse
  L1_2 = L0_2
  L0_2 = L0_2.ShowInstructionalButtonsTimed
  L2_2 = "~b~~h~Gorgeous cat:~h~ ~w~No, i'm not a mount, im here as guard."
  L0_2(L1_2, L2_2)
end
L8_1.funzione = L9_1
L8_1.fx = nil
L8_1.fx2 = nil
L8_1.myalpha = 1.0
L8_1.myalpha2 = 1.0
L8_1.vicino = true
L8_1.visibile = false
L9_1 = {}
L10_1 = vector3
L11_1 = 3194.138
L12_1 = 7370.683
L13_1 = 25.264
L10_1 = L10_1(L11_1, L12_1, L13_1)
L9_1.pos = L10_1
L9_1.testo = "Wash"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 3194.138
  L3_2 = 7370.683
  L4_2 = 25.264
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = DocciaPubblica
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L4_2 = L4_2 + 1.15
  L1_2(L2_2, L3_2, L4_2)
end
L9_1.funzione = L10_1
L9_1.fx = nil
L9_1.fx2 = nil
L9_1.myalpha = 1.0
L9_1.myalpha2 = 1.0
L9_1.vicino = true
L9_1.visibile = false
L10_1 = {}
L11_1 = vector3
L12_1 = 3065.93
L13_1 = 7476.177
L14_1 = 19.61
L11_1 = L11_1(L12_1, L13_1, L14_1)
L10_1.pos = L11_1
L10_1.testo = "Damages"
function L11_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "xnTattoos:resetferite"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "esx_ambulancejjj:healAdmin"
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "shakeoff"
  L0_2(L1_2)
end
L10_1.funzione = L11_1
L10_1.fx = nil
L10_1.fx2 = nil
L10_1.myalpha = 1.0
L10_1.myalpha2 = 1.0
L10_1.vicino = true
L10_1.visibile = false
L11_1 = {}
L12_1 = vector3
L13_1 = 2864.955
L14_1 = 7502.019
L15_1 = 19.402
L12_1 = L12_1(L13_1, L14_1, L15_1)
L11_1.pos = L12_1
L11_1.testo = "Character"
function L12_1()
  local L0_2, L1_2
  L0_2 = fastMenuPed
  L0_2()
end
L11_1.funzione = L12_1
L11_1.fx = nil
L11_1.fx2 = nil
L11_1.myalpha = 1.0
L11_1.myalpha2 = 1.0
L11_1.vicino = true
L11_1.visibile = false
L12_1 = {}
L13_1 = vector3
L14_1 = 2865.758
L15_1 = 7505.45
L16_1 = 19.402
L13_1 = L13_1(L14_1, L15_1, L16_1)
L12_1.pos = L13_1
L12_1.testo = "Tattoo"
function L13_1()
  local L0_2, L1_2
  L0_2 = fastMenuTattoo
  L0_2()
end
L12_1.funzione = L13_1
L12_1.fx = nil
L12_1.fx2 = nil
L12_1.myalpha = 1.0
L12_1.myalpha2 = 1.0
L12_1.vicino = true
L12_1.visibile = false
L13_1 = {}
L14_1 = vector3
L15_1 = -988.211
L16_1 = -6904.468
L17_1 = 2.315
L14_1 = L14_1(L15_1, L16_1, L17_1)
L13_1.pos = L14_1
L13_1.testo = "Wash"
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = -988.124
  L3_2 = -6904.497
  L4_2 = 2.315
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = DocciaPubblica
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L4_2 = L4_2 + 2.5
  L1_2(L2_2, L3_2, L4_2)
end
L13_1.funzione = L14_1
L13_1.fx = nil
L13_1.fx2 = nil
L13_1.myalpha = 1.0
L13_1.myalpha2 = 1.0
L13_1.vicino = true
L13_1.visibile = false
L14_1 = {}
L15_1 = vector3
L16_1 = -979.658
L17_1 = -6900.432
L18_1 = 2.484
L15_1 = L15_1(L16_1, L17_1, L18_1)
L14_1.pos = L15_1
L14_1.testo = "Edit Character"
function L15_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "skin"
  L0_2(L1_2)
end
L14_1.funzione = L15_1
L14_1.fx = nil
L14_1.fx2 = nil
L14_1.myalpha = 1.0
L14_1.myalpha2 = 1.0
L14_1.vicino = true
L14_1.visibile = false
L15_1 = {}
L16_1 = vector3
L17_1 = -974.841
L18_1 = -6955.991
L19_1 = 2.819
L16_1 = L16_1(L17_1, L18_1, L19_1)
L15_1.pos = L16_1
L15_1.testo = "Get Mount"
function L16_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "menuAnimal"
  L0_2(L1_2)
end
L15_1.funzione = L16_1
L15_1.fx = nil
L15_1.fx2 = nil
L15_1.myalpha = 1.0
L15_1.myalpha2 = 1.0
L15_1.vicino = true
L15_1.visibile = false
L16_1 = {}
L17_1 = vector3
L18_1 = -973.322
L19_1 = -6895.702
L20_1 = 3.437
L17_1 = L17_1(L18_1, L19_1, L20_1)
L16_1.pos = L17_1
L16_1.testo = "Strip Vents"
function L17_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "prova Here you can test the strip system, check the keys list to start."
  L0_2(L1_2)
end
L16_1.funzione = L17_1
L16_1.fx = nil
L16_1.fx2 = nil
L16_1.myalpha = 1.0
L16_1.myalpha2 = 1.0
L16_1.vicino = true
L16_1.visibile = false
L17_1 = {}
L18_1 = vector3
L19_1 = -991.462
L20_1 = -6930.446
L21_1 = 2.319
L18_1 = L18_1(L19_1, L20_1, L21_1)
L17_1.pos = L18_1
L17_1.testo = "Combat Set"
function L18_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "combatset"
  L0_2(L1_2)
end
L17_1.funzione = L18_1
L17_1.fx = nil
L17_1.fx2 = nil
L17_1.myalpha = 1.0
L17_1.myalpha2 = 1.0
L17_1.vicino = true
L17_1.visibile = false
L18_1 = {}
L19_1 = vector3
L20_1 = 3066.742
L21_1 = 7357.703
L22_1 = 15.813
L19_1 = L19_1(L20_1, L21_1, L22_1)
L18_1.pos = L19_1
L18_1.testo = "Shop Mounts"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "NET_RACE_START_EVENT_MASTER"
  L3_2 = "0"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_ridehorse
  L1_2 = L0_2
  L0_2 = L0_2.strianoMounts_openShop
  L0_2(L1_2)
end
L18_1.funzione = L19_1
L18_1.fx = nil
L18_1.fx2 = nil
L18_1.myalpha = 1.0
L18_1.myalpha2 = 1.0
L18_1.vicino = true
L18_1.visibile = false
L19_1 = {}
L20_1 = vector3
L21_1 = 4263.334
L22_1 = 6897.815
L23_1 = 6.051
L20_1 = L20_1(L21_1, L22_1, L23_1)
L19_1.pos = L20_1
L19_1.testo = "Enter"
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = -590.924
  L2_2 = 2069.406
  L3_2 = 130.227
  L4_2 = 200.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L19_1.funzione = L20_1
L19_1.fx = nil
L19_1.fx2 = nil
L19_1.myalpha = 1.0
L19_1.myalpha2 = 1.0
L19_1.vicino = true
L19_1.visibile = false
L20_1 = {}
L21_1 = vector3
L22_1 = -590.924
L23_1 = 2069.406
L24_1 = 130.227
L21_1 = L21_1(L22_1, L23_1, L24_1)
L20_1.pos = L21_1
L20_1.testo = "Exit"
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 4263.334
  L2_2 = 6897.815
  L3_2 = 6.051
  L4_2 = 59.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L20_1.funzione = L21_1
L20_1.fx = nil
L20_1.fx2 = nil
L20_1.myalpha = 1.0
L20_1.myalpha2 = 1.0
L20_1.vicino = true
L20_1.visibile = false
L21_1 = {}
L22_1 = vector3
L23_1 = 722.396
L24_1 = 8093.335
L25_1 = 222.023
L22_1 = L22_1(L23_1, L24_1, L25_1)
L21_1.pos = L22_1
L21_1.testo = "Enter"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 4591.632
  L2_2 = -2191.721
  L3_2 = 48.455
  L4_2 = 285.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L21_1.funzione = L22_1
L21_1.fx = nil
L21_1.fx2 = nil
L21_1.myalpha = 1.0
L21_1.myalpha2 = 1.0
L21_1.vicino = true
L21_1.visibile = false
L22_1 = {}
L23_1 = vector3
L24_1 = 4663.26
L25_1 = -2169.816
L26_1 = 20.424
L23_1 = L23_1(L24_1, L25_1, L26_1)
L22_1.pos = L23_1
L22_1.testo = "Exit"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 672.807
  L2_2 = 7981.091
  L3_2 = 137.692
  L4_2 = 209.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L22_1.funzione = L23_1
L22_1.fx = nil
L22_1.fx2 = nil
L22_1.myalpha = 1.0
L22_1.myalpha2 = 1.0
L22_1.vicino = true
L22_1.visibile = false
L23_1 = {}
L24_1 = vector3
L25_1 = 3818.608
L26_1 = 7203.763
L27_1 = -1.44
L24_1 = L24_1(L25_1, L26_1, L27_1)
L23_1.pos = L24_1
L23_1.testo = "Enter"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 3948.657
  L2_2 = -2968.021
  L3_2 = 2.973
  L4_2 = 89.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L23_1.funzione = L24_1
L23_1.fx = nil
L23_1.fx2 = nil
L23_1.myalpha = 1.0
L23_1.myalpha2 = 1.0
L23_1.vicino = true
L23_1.visibile = false
L24_1 = {}
L25_1 = vector3
L26_1 = 3877.471
L27_1 = -2954.143
L28_1 = -2.78
L25_1 = L25_1(L26_1, L27_1, L28_1)
L24_1.pos = L25_1
L24_1.testo = "Exit"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 3884.855
  L2_2 = 7294.207
  L3_2 = -2.253
  L4_2 = 0.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L24_1.funzione = L25_1
L24_1.fx = nil
L24_1.fx2 = nil
L24_1.myalpha = 1.0
L24_1.myalpha2 = 1.0
L24_1.vicino = true
L24_1.visibile = false
L25_1 = {}
L26_1 = vector3
L27_1 = 1920.197
L28_1 = 8471.172
L29_1 = 2.616
L26_1 = L26_1(L27_1, L28_1, L29_1)
L25_1.pos = L26_1
L25_1.testo = "Enter"
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 1813.624
  L2_2 = -4937.357
  L3_2 = 3.577
  L4_2 = 100.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L25_1.funzione = L26_1
L25_1.fx = nil
L25_1.fx2 = nil
L25_1.myalpha = 1.0
L25_1.myalpha2 = 1.0
L25_1.vicino = true
L25_1.visibile = false
L26_1 = {}
L27_1 = vector3
L28_1 = 1813.624
L29_1 = -4937.357
L30_1 = 3.577
L27_1 = L27_1(L28_1, L29_1, L30_1)
L26_1.pos = L27_1
L26_1.testo = "Exit"
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 1920.197
  L2_2 = 8471.172
  L3_2 = 2.616
  L4_2 = 340.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L26_1.funzione = L27_1
L26_1.fx = nil
L26_1.fx2 = nil
L26_1.myalpha = 1.0
L26_1.myalpha2 = 1.0
L26_1.vicino = true
L26_1.visibile = false
L27_1 = {}
L28_1 = vector3
L29_1 = 4214.363
L30_1 = 3439.974
L31_1 = 13.796
L28_1 = L28_1(L29_1, L30_1, L31_1)
L27_1.pos = L28_1
L27_1.testo = "Enter"
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = -1078.572
  L2_2 = -5243.869
  L3_2 = 6.477
  L4_2 = 150.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L27_1.funzione = L28_1
L27_1.fx = nil
L27_1.fx2 = nil
L27_1.myalpha = 1.0
L27_1.myalpha2 = 1.0
L27_1.vicino = true
L27_1.visibile = false
L28_1 = {}
L29_1 = vector3
L30_1 = -1078.572
L31_1 = -5243.869
L32_1 = 6.477
L29_1 = L29_1(L30_1, L31_1, L32_1)
L28_1.pos = L29_1
L28_1.testo = "Exit"
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 4214.363
  L2_2 = 3439.974
  L3_2 = 13.796
  L4_2 = 300.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L28_1.funzione = L29_1
L28_1.fx = nil
L28_1.fx2 = nil
L28_1.myalpha = 1.0
L28_1.myalpha2 = 1.0
L28_1.vicino = true
L28_1.visibile = false
L29_1 = {}
L30_1 = vector3
L31_1 = 2708.744
L32_1 = 7550.53
L33_1 = 3.809
L30_1 = L30_1(L31_1, L32_1, L33_1)
L29_1.pos = L30_1
L29_1.testo = "Enter"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = -1.669
  L2_2 = -0.098
  L3_2 = -121.084
  L4_2 = 88.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L29_1.funzione = L30_1
L29_1.fx = nil
L29_1.fx2 = nil
L29_1.myalpha = 1.0
L29_1.myalpha2 = 1.0
L29_1.vicino = true
L29_1.visibile = false
L30_1 = {}
L31_1 = vector3
L32_1 = -1.669
L33_1 = -0.098
L34_1 = -121.084
L31_1 = L31_1(L32_1, L33_1, L34_1)
L30_1.pos = L31_1
L30_1.testo = "Exit"
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 2708.056
  L2_2 = 7548.121
  L3_2 = 3.573
  L4_2 = 162.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L30_1.funzione = L31_1
L30_1.fx = nil
L30_1.fx2 = nil
L30_1.myalpha = 1.0
L30_1.myalpha2 = 1.0
L30_1.vicino = true
L30_1.visibile = false
L31_1 = {}
L32_1 = vector3
L33_1 = -968.647
L34_1 = -6926.817
L35_1 = 3.598
L32_1 = L32_1(L33_1, L34_1, L35_1)
L31_1.pos = L32_1
L31_1.testo = "Leave Island"
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 2877.98
  L2_2 = 7459.116
  L3_2 = 15.5
  L4_2 = 175.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L31_1.funzione = L32_1
L31_1.fx = nil
L31_1.fx2 = nil
L31_1.myalpha = 1.0
L31_1.myalpha2 = 1.0
L31_1.vicino = true
L31_1.visibile = false
L32_1 = {}
L33_1 = vector3
L34_1 = 2721.824
L35_1 = 7532.068
L36_1 = 18.089
L33_1 = L33_1(L34_1, L35_1, L36_1)
L32_1.pos = L33_1
L32_1.testo = "Travel"
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = -5825.758
  L2_2 = 2691.199
  L3_2 = 3.549
  L4_2 = 175.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L32_1.funzione = L33_1
L32_1.fx = nil
L32_1.fx2 = nil
L32_1.myalpha = 1.0
L32_1.myalpha2 = 1.0
L32_1.vicino = true
L32_1.visibile = false
L33_1 = {}
L34_1 = vector3
L35_1 = -5825.758
L36_1 = 2691.199
L37_1 = 3.549
L34_1 = L34_1(L35_1, L36_1, L37_1)
L33_1.pos = L34_1
L33_1.testo = "Travel"
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gotopos
  L1_2 = 2721.824
  L2_2 = 7532.068
  L3_2 = 18.089
  L4_2 = 175.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L33_1.funzione = L34_1
L33_1.fx = nil
L33_1.fx2 = nil
L33_1.myalpha = 1.0
L33_1.myalpha2 = 1.0
L33_1.vicino = true
L33_1.visibile = false
L34_1 = {}
L35_1 = vector3
L36_1 = 3549.454
L37_1 = 7158.725
L38_1 = 10.744
L35_1 = L35_1(L36_1, L37_1, L38_1)
L34_1.pos = L35_1
L34_1.testo = "Deposit"
function L35_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2()
end
L34_1.funzione = L35_1
L34_1.fx = nil
L34_1.fx2 = nil
L34_1.myalpha = 1.0
L34_1.myalpha2 = 1.0
L34_1.vicino = true
L34_1.visibile = false
L35_1 = {}
L36_1 = vector3
L37_1 = 2878.605
L38_1 = 7500.158
L39_1 = 19.402
L36_1 = L36_1(L37_1, L38_1, L39_1)
L35_1.pos = L36_1
L35_1.testo = "Clothes"
function L36_1()
  local L0_2, L1_2
  L0_2 = fastMenuVestiti
  L0_2()
end
L35_1.funzione = L36_1
L35_1.fx = nil
L35_1.fx2 = nil
L35_1.myalpha = 1.0
L35_1.myalpha2 = 1.0
L35_1.vicino = true
L35_1.visibile = false
L36_1 = {}
L37_1 = vector3
L38_1 = 2862.386
L39_1 = 7495.005
L40_1 = 16.342
L37_1 = L37_1(L38_1, L39_1, L40_1)
L36_1.pos = L37_1
L36_1.testo = "Wash"
function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 2862.386
  L3_2 = 7495.005
  L4_2 = 16.342
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = DocciaPubblica
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L4_2 = L4_2 + 0.9
  L1_2(L2_2, L3_2, L4_2)
end
L36_1.funzione = L37_1
L36_1.fx = nil
L36_1.fx2 = nil
L36_1.myalpha = 1.0
L36_1.myalpha2 = 1.0
L36_1.vicino = true
L36_1.visibile = false
L37_1 = {}
L38_1 = vector3
L39_1 = 3802.283
L40_1 = 7251.56
L41_1 = 39.025
L38_1 = L38_1(L39_1, L40_1, L41_1)
L37_1.pos = L38_1
L37_1.testo = "Damages"
function L38_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "xnTattoos:resetferite"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "esx_ambulancejjj:healAdmin"
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "shakeoff"
  L0_2(L1_2)
end
L37_1.funzione = L38_1
L37_1.fx = nil
L37_1.fx2 = nil
L37_1.myalpha = 1.0
L37_1.myalpha2 = 1.0
L37_1.vicino = true
L37_1.visibile = false
L38_1 = {}
L39_1 = vector3
L40_1 = 3349.348
L41_1 = 7328.856
L42_1 = 0.0
L39_1 = L39_1(L40_1, L41_1, L42_1)
L38_1.pos = L39_1
L38_1.testo = "Spawn Seashark"
function L39_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.getVehTemp
  L0_2 = L0_2(L1_2)
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.spawnVehSession
    L2_2 = "seashark"
    L0_2(L1_2, L2_2)
  else
    L0_2 = TriggerEvent
    L1_2 = "clearVehProvvisorio"
    L0_2(L1_2)
  end
end
L38_1.funzione = L39_1
L38_1.fx = nil
L38_1.fx2 = nil
L38_1.myalpha = 1.0
L38_1.myalpha2 = 1.0
L38_1.vicino = true
L38_1.visibile = false
L38_1.size = 0.5
L39_1 = {}
L40_1 = vector3
L41_1 = 3365.364
L42_1 = 7371.799
L43_1 = 7.185
L40_1 = L40_1(L41_1, L42_1, L43_1)
L39_1.pos = L40_1
L39_1.testo = "Your Outfits"
function L40_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "ApriAbbigliamento"
  L0_2(L1_2)
end
L39_1.funzione = L40_1
L39_1.fx = nil
L39_1.fx2 = nil
L39_1.myalpha = 1.0
L39_1.myalpha2 = 1.0
L39_1.vicino = true
L39_1.visibile = false
L40_1 = {}
L41_1 = vector3
L42_1 = 3367.658
L43_1 = 7371.802
L44_1 = 7.185
L41_1 = L41_1(L42_1, L43_1, L44_1)
L40_1.pos = L41_1
L40_1.testo = "Recycler"
function L41_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.openRecycler
  L0_2(L1_2)
end
L40_1.funzione = L41_1
L40_1.fx = nil
L40_1.fx2 = nil
L40_1.myalpha = 1.0
L40_1.myalpha2 = 1.0
L40_1.vicino = true
L40_1.visibile = false
L40_1.size = 0.5
L41_1 = {}
L42_1 = vector3
L43_1 = 3363.563
L44_1 = 7358.475
L45_1 = 7.182
L42_1 = L42_1(L43_1, L44_1, L45_1)
L41_1.pos = L42_1
L41_1.testo = "Trade"
function L42_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "randomTrade:requestMenu"
  L0_2(L1_2)
end
L41_1.funzione = L42_1
L41_1.fx = nil
L41_1.fx2 = nil
L41_1.myalpha = 1.0
L41_1.myalpha2 = 1.0
L41_1.vicino = true
L41_1.visibile = false
L41_1.size = 0.5
L42_1 = {}
L43_1 = vector3
L44_1 = -998.45
L45_1 = -6940.177
L46_1 = 2.319
L43_1 = L43_1(L44_1, L45_1, L46_1)
L42_1.pos = L43_1
L42_1.testo = "Old Diary"
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = TriggerEvent
  L1_2 = "gmm-books:client:OpenBook"
  L2_2 = exports
  L2_2 = L2_2.striano_inventory
  L3_2 = L2_2
  L2_2 = L2_2.getBookName
  L4_2 = 2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L42_1.funzione = L43_1
L42_1.fx = nil
L42_1.fx2 = nil
L42_1.myalpha = 1.0
L42_1.myalpha2 = 1.0
L42_1.vicino = true
L42_1.visibile = false
L42_1.size = 0.5
L43_1 = {}
L44_1 = vector3
L45_1 = 3561.093
L46_1 = 7155.043
L47_1 = 10.744
L44_1 = L44_1(L45_1, L46_1, L47_1)
L43_1.pos = L44_1
L43_1.testo = "Trade"
function L44_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submex
  L2_2 = "Import no needed objects at moment."
  L0_2(L1_2, L2_2)
  L0_2 = ExecuteCommand
  L1_2 = "e shrug5"
  L0_2(L1_2)
end
L43_1.funzione = L44_1
L43_1.fx = nil
L43_1.fx2 = nil
L43_1.myalpha = 1.0
L43_1.myalpha2 = 1.0
L43_1.vicino = true
L43_1.visibile = false
L43_1.size = 0.5
L44_1 = {}
L45_1 = vector3
L46_1 = 3167.186
L47_1 = 7499.352
L48_1 = 19.402
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.pos = L45_1
L44_1.testo = "~h~Mission: ~h~Crates Shipping"
function L45_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "LGM:Missione"
  L2_2 = 1
  L0_2(L1_2, L2_2)
end
L44_1.funzione = L45_1
L44_1.fx = nil
L44_1.fx2 = nil
L44_1.myalpha = 1.0
L44_1.myalpha2 = 1.0
L44_1.vicino = true
L44_1.visibile = false
L45_1 = {}
L46_1 = vector3
L47_1 = 3603.89
L48_1 = 7394.839
L49_1 = 7.614
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.pos = L46_1
L45_1.testo = "~h~Mission: ~h~Stolen Motorbike"
function L46_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "LGM:Missione"
  L2_2 = 2
  L0_2(L1_2, L2_2)
end
L45_1.funzione = L46_1
L45_1.fx = nil
L45_1.fx2 = nil
L45_1.myalpha = 1.0
L45_1.myalpha2 = 1.0
L45_1.vicino = true
L45_1.visibile = false
L46_1 = {}
L47_1 = vector3
L48_1 = 2918.585
L49_1 = 7523.472
L50_1 = 23.555
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.pos = L47_1
L46_1.testo = "~h~Mission: ~h~Box Delivery"
function L47_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "LGM:Missione"
  L2_2 = 3
  L0_2(L1_2, L2_2)
end
L46_1.funzione = L47_1
L46_1.fx = nil
L46_1.fx2 = nil
L46_1.myalpha = 1.0
L46_1.myalpha2 = 1.0
L46_1.vicino = true
L46_1.visibile = false
L47_1 = {}
L48_1 = vector3
L49_1 = 3212.956
L50_1 = 7874.729
L51_1 = 6.845
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.pos = L48_1
L47_1.testo = "~h~Mission: ~h~Dangerous Boat"
function L48_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "LGM:Missione"
  L2_2 = 4
  L0_2(L1_2, L2_2)
end
L47_1.funzione = L48_1
L47_1.fx = nil
L47_1.fx2 = nil
L47_1.myalpha = 1.0
L47_1.myalpha2 = 1.0
L47_1.vicino = true
L47_1.visibile = false
L48_1 = {}
L49_1 = vector3
L50_1 = 3526.866
L51_1 = 7501.093
L52_1 = 3.289
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.pos = L49_1
L48_1.testo = "~h~Mission: ~h~Traitors"
function L49_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "LGM:Missione"
  L2_2 = 5
  L0_2(L1_2, L2_2)
end
L48_1.funzione = L49_1
L48_1.fx = nil
L48_1.fx2 = nil
L48_1.myalpha = 1.0
L48_1.myalpha2 = 1.0
L48_1.vicino = true
L48_1.visibile = false
L49_1 = {}
L50_1 = vector3
L51_1 = 1417.934
L52_1 = 6344.031
L53_1 = 23.0
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.pos = L50_1
L49_1.testo = "~h~Mission: ~h~Convoy"
function L50_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "LGM:Missione"
  L2_2 = 6
  L0_2(L1_2, L2_2)
end
L49_1.funzione = L50_1
L49_1.fx = nil
L49_1.fx2 = nil
L49_1.myalpha = 1.0
L49_1.myalpha2 = 1.0
L49_1.vicino = true
L49_1.visibile = false
L50_1 = {}
L51_1 = vector3
L52_1 = 3853.164
L53_1 = 7627.769
L54_1 = 6.981
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.pos = L51_1
L50_1.testo = "Your Outfits"
function L51_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "ApriAbbigliamento"
  L0_2(L1_2)
end
L50_1.funzione = L51_1
L50_1.fx = nil
L50_1.fx2 = nil
L50_1.myalpha = 1.0
L50_1.myalpha2 = 1.0
L50_1.vicino = true
L50_1.visibile = false
L51_1 = {}
L52_1 = vector3
L53_1 = 2923.424
L54_1 = 7519.308
L55_1 = 24.584
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.pos = L52_1
L51_1.testo = "Craft Melee Weapopns"
function L52_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "weaponCraft"
  L0_2(L1_2)
end
L51_1.funzione = L52_1
L51_1.fx = nil
L51_1.fx2 = nil
L51_1.myalpha = 1.0
L51_1.myalpha2 = 1.0
L51_1.vicino = true
L51_1.visibile = false
L52_1 = {}
L53_1 = vector3
L54_1 = 3152.488
L55_1 = 7493.19
L56_1 = 19.402
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.pos = L53_1
L52_1.testo = "~h~Quest: ~h~Get Provisions"
function L53_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.activeQuest
  L2_2 = 2
  L0_2(L1_2, L2_2)
end
L52_1.funzione = L53_1
L52_1.fx = nil
L52_1.fx2 = nil
L52_1.myalpha = 1.0
L52_1.myalpha2 = 1.0
L52_1.vicino = true
L52_1.visibile = false
L53_1 = {}
L54_1 = vector3
L55_1 = 738.64
L56_1 = 8332.21
L57_1 = 282.222
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.pos = L54_1
L53_1.testo = "~h~Fly Human"
function L54_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "AttivaSuperMan"
  L0_2(L1_2)
end
L53_1.funzione = L54_1
L53_1.fx = nil
L53_1.fx2 = nil
L53_1.myalpha = 1.0
L53_1.myalpha2 = 1.0
L53_1.vicino = true
L53_1.visibile = false
L54_1 = {}
L55_1 = vector3
L56_1 = 688.753
L57_1 = 8340.123
L58_1 = 282.22
L55_1 = L55_1(L56_1, L57_1, L58_1)
L54_1.pos = L55_1
L54_1.testo = "~h~Fly Animal"
function L55_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "trasformazioneAnimale"
  L0_2(L1_2)
end
L54_1.funzione = L55_1
L54_1.fx = nil
L54_1.fx2 = nil
L54_1.myalpha = 1.0
L54_1.myalpha2 = 1.0
L54_1.vicino = true
L54_1.visibile = false
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L4_1[5] = L9_1
L4_1[6] = L10_1
L4_1[7] = L11_1
L4_1[8] = L12_1
L4_1[9] = L13_1
L4_1[10] = L14_1
L4_1[11] = L15_1
L4_1[12] = L16_1
L4_1[13] = L17_1
L4_1[14] = L18_1
L4_1[15] = L19_1
L4_1[16] = L20_1
L4_1[17] = L21_1
L4_1[18] = L22_1
L4_1[19] = L23_1
L4_1[20] = L24_1
L4_1[21] = L25_1
L4_1[22] = L26_1
L4_1[23] = L27_1
L4_1[24] = L28_1
L4_1[25] = L29_1
L4_1[26] = L30_1
L4_1[27] = L31_1
L4_1[28] = L32_1
L4_1[29] = L33_1
L4_1[30] = L34_1
L4_1[31] = L35_1
L4_1[32] = L36_1
L4_1[33] = L37_1
L4_1[34] = L38_1
L4_1[35] = L39_1
L4_1[36] = L40_1
L4_1[37] = L41_1
L4_1[38] = L42_1
L4_1[39] = L43_1
L4_1[40] = L44_1
L4_1[41] = L45_1
L4_1[42] = L46_1
L4_1[43] = L47_1
L4_1[44] = L48_1
L4_1[45] = L49_1
L4_1[46] = L50_1
L4_1[47] = L51_1
L4_1[48] = L52_1
L4_1[49] = L53_1
L4_1[50] = L54_1
listaNubi = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = HasAnimDictLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDict
    L3_2 = L1_2
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  end
end
RequestAndWaitAnim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = RequestNamedPtfxAsset
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasNamedPtfxAssetLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
RequestAndWaitParticle = L4_1
L4_1 = 0
function L5_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsEntityInWater
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = IsPedSwimming
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedSwimmingUnderWater
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = IsEntityPlayingAnim
            L2_3 = L0_3
            L3_3 = "anim@mp_yacht@shower@male@"
            L4_3 = "male_shower_idle_a"
            L5_3 = 3
            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
            if L1_3 then
              L1_3 = exports
              L1_3 = L1_3.striano_editor
              L2_3 = L1_3
              L1_3 = L1_3.ResettaSporcoSingolo
              L1_3(L2_3)
              L1_3 = GetEntityCoords
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              L2_3 = GetEntityForwardVector
              L3_3 = L0_3
              L2_3 = L2_3(L3_3)
              L3_3 = table
              L3_3 = L3_3.unpack
              L4_3 = L2_3 * 0.2
              L4_3 = L1_3 + L4_3
              L3_3, L4_3, L5_3 = L3_3(L4_3)
              L6_3 = PlayEffect
              L7_3 = "core"
              L8_3 = "water_splash_ped_wade"
              L9_3 = vector3
              L10_3 = L3_3
              L11_3 = L4_3
              L12_3 = L5_3 + 0.1
              L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3, L11_3, L12_3)
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            else
              return
            end
        end
      end
      else
        L1_3 = IsEntityPlayingAnim
        L2_3 = L0_3
        L3_3 = "anim@mp_yacht@shower@male@"
        L4_3 = "male_shower_idle_a"
        L5_3 = 3
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
        if L1_3 then
          L1_3 = InDocciaPubblica
          if not L1_3 then
            L1_3 = exports
            L1_3 = L1_3.striano_combat
            L2_3 = L1_3
            L1_3 = L1_3.submexError
            L3_3 = "Devi essere in acqua per lavarti."
            L1_3(L2_3, L3_3)
            L1_3 = ExecuteCommand
            L2_3 = "e shrug4"
            L1_3(L2_3)
            L1_3 = 0
            L4_1 = L1_3
            return
          end
        end
      end
      L1_3 = Wait
      L2_3 = 3000
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
LoopLavati = L5_1
L5_1 = false
L6_1 = RegisterCommand
L7_1 = "lavati"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  if not L2_2 then
    L2_2 = true
    L5_1 = L2_2
    L2_2 = IsEntityPlayingAnim
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = "anim@mp_yacht@shower@male@"
    L5_2 = "male_shower_idle_a"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = ExecuteCommand
      L3_2 = "e lavati"
      L2_2(L3_2)
      L2_2 = Wait
      L3_2 = 25
      L2_2(L3_2)
      L2_2 = LoopLavati
      L2_2()
    end
    L2_2 = Wait
    L3_2 = 500
    L2_2(L3_2)
    L2_2 = false
    L5_1 = L2_2
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "lavami"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "lavati"
  L2_2(L3_2)
end
L6_1(L7_1, L8_1)
InDocciaPubblica = false
L6_1 = exports
L7_1 = "indoccia"
function L8_1()
  local L0_2, L1_2
  L0_2 = InDocciaPubblica
  return L0_2
end
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L5_2 = PlayerVicino
  L5_2, L6_2 = L5_2()
  if -1 ~= L5_2 then
    L7_2 = 1.8
    if L6_2 < L7_2 then
      L7_2 = exports
      L7_2 = L7_2.striano_combat
      L8_2 = L7_2
      L7_2 = L7_2.submexError
      L9_2 = "Non devono esserci persone nelle vicinanze per fare una doccia."
      L7_2(L8_2, L9_2)
  end
  else
    L7_2 = ExecuteCommand
    L8_2 = "prova3 "
    L7_2(L8_2)
    L7_2 = vector3
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    if nil ~= A4_2 then
      L9_2 = SetEntityCoords
      L10_2 = L8_2
      L11_2 = A4_2
      L9_2(L10_2, L11_2)
    end
    L9_2 = L7_2
    L10_2 = GetEntityModel
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    InDocciaPubblica = true
    L11_2 = ClearPedTasks
    L12_2 = PlayerPedId
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L12_2()
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    if -1667301416 == L10_2 then
      L11_2 = 1
      if L11_2 then
        goto lbl_45
      end
    end
    L11_2 = 0
    ::lbl_45::
    if 1 == L11_2 then
      L12_2 = RequestAndWaitAnim
      L13_2 = "anim@mp_yacht@shower@female@"
      L12_2(L13_2)
      L12_2 = TaskPlayAnim
      L13_2 = L8_2
      L14_2 = "anim@mp_yacht@shower@female@"
      L15_2 = "shower_idle_a"
      L16_2 = 1.0
      L17_2 = -1.0
      L18_2 = 10000
      L19_2 = 0
      L20_2 = 51
      L21_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    else
      L12_2 = RequestAndWaitAnim
      L13_2 = "anim@mp_yacht@shower@male@"
      L12_2(L13_2)
      L12_2 = TaskPlayAnim
      L13_2 = L8_2
      L14_2 = "anim@mp_yacht@shower@male@"
      L15_2 = "male_shower_idle_a"
      L16_2 = 1.0
      L17_2 = -1.0
      L18_2 = 10000
      L19_2 = 0
      L20_2 = 51
      L21_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    end
    L12_2 = "sounds/shower"
    L13_2 = L12_2
    L14_2 = ".mp3"
    L13_2 = L13_2 .. L14_2
    L14_2 = exports
    L14_2 = L14_2.xsound
    L15_2 = L14_2
    L14_2 = L14_2.PlayUrlPos
    L16_2 = L12_2
    L17_2 = L13_2
    L18_2 = 0.1
    L19_2 = GetEntityCoords
    L20_2 = PlayerPedId
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L20_2()
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L14_2 = Wait
    L15_2 = 750
    L14_2(L15_2)
    L14_2 = FreezeEntityPosition
    L15_2 = L8_2
    L16_2 = true
    L14_2(L15_2, L16_2)
    L14_2 = RequestAndWaitParticle
    L15_2 = "scr_mp_house"
    L14_2(L15_2)
    L14_2 = RequestAndWaitParticle
    L15_2 = "core"
    L14_2(L15_2)
    L14_2 = SetPtfxAssetNextCall
    L15_2 = "scr_mp_house"
    L14_2(L15_2)
    L14_2 = StartParticleFxLoopedAtCoord
    L15_2 = "ent_amb_shower"
    L16_2 = L9_2
    L17_2 = -40.0
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = 1.0
    L21_2 = false
    L22_2 = false
    L23_2 = false
    L24_2 = false
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L15_2 = SetPtfxAssetNextCall
    L16_2 = "scr_mp_house"
    L15_2(L16_2)
    L15_2 = nil
    L16_2 = SetPtfxAssetNextCall
    L17_2 = "core"
    L16_2(L17_2)
    L16_2 = StartParticleFxLoopedAtCoord
    L17_2 = "ent_sht_water"
    L18_2 = L9_2.x
    L19_2 = L9_2.y
    L20_2 = L9_2.z
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 0.0
    L24_2 = 1.0
    L25_2 = false
    L26_2 = false
    L27_2 = false
    L28_2 = false
    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L15_2 = L16_2
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 1000
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = SetPedWetnessEnabledThisFrame
    L17_2 = L8_2
    L16_2(L17_2)
    L16_2 = SetPedWetnessHeight
    L17_2 = L8_2
    L18_2 = 5.0
    L16_2(L17_2, L18_2)
    L16_2 = Wait
    L17_2 = 1000
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = SetPedWetnessEnabledThisFrame
    L17_2 = L8_2
    L16_2(L17_2)
    L16_2 = SetPedWetnessHeight
    L17_2 = L8_2
    L18_2 = 5.0
    L16_2(L17_2, L18_2)
    L16_2 = Wait
    L17_2 = 1000
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 1000
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = SetPedWetnessEnabledThisFrame
    L17_2 = L8_2
    L16_2(L17_2)
    L16_2 = SetPedWetnessHeight
    L17_2 = L8_2
    L18_2 = 5.0
    L16_2(L17_2, L18_2)
    if 1 == L11_2 then
      L16_2 = RequestAndWaitAnim
      L17_2 = "anim@mp_yacht@shower@female@"
      L16_2(L17_2)
      L16_2 = TaskPlayAnim
      L17_2 = L8_2
      L18_2 = "anim@mp_yacht@shower@female@"
      L19_2 = "shower_idle_a"
      L20_2 = 1.0
      L21_2 = -1.0
      L22_2 = 10000
      L23_2 = 0
      L24_2 = 51
      L25_2 = true
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    else
      L16_2 = RequestAndWaitAnim
      L17_2 = "anim@mp_yacht@shower@male@"
      L16_2(L17_2)
      L16_2 = TaskPlayAnim
      L17_2 = L8_2
      L18_2 = "anim@mp_yacht@shower@male@"
      L19_2 = "male_shower_idle_a"
      L20_2 = 1.0
      L21_2 = -1.0
      L22_2 = 10000
      L23_2 = 0
      L24_2 = 51
      L25_2 = true
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    end
    L16_2 = TriggerServerEvent
    L17_2 = "status:remove"
    L18_2 = GetPlayerServerId
    L19_2 = PlayerId
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L19_2()
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L19_2 = "stress"
    L20_2 = 200000
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = TriggerServerEvent
    L17_2 = "status:add"
    L18_2 = GetPlayerServerId
    L19_2 = PlayerId
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L19_2()
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L19_2 = "igiene"
    L20_2 = 500000
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = StopParticleFxLooped
    L17_2 = L15_2
    L16_2(L17_2)
    L16_2 = RemoveParticleFx
    L17_2 = L15_2
    L18_2 = true
    L16_2(L17_2, L18_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = SetPtfxAssetNextCall
    L17_2 = "core"
    L16_2(L17_2)
    L16_2 = StartParticleFxLoopedAtCoord
    L17_2 = "ent_sht_water"
    L18_2 = L9_2.x
    L19_2 = L9_2.y
    L20_2 = L9_2.z
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 0.0
    L24_2 = 1.0
    L25_2 = false
    L26_2 = false
    L27_2 = false
    L28_2 = false
    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L15_2 = L16_2
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = SetPedWetnessEnabledThisFrame
    L17_2 = L8_2
    L16_2(L17_2)
    L16_2 = SetPedWetnessHeight
    L17_2 = L8_2
    L18_2 = 5.0
    L16_2(L17_2, L18_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 250
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 1000
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = SetPedWetnessEnabledThisFrame
    L17_2 = L8_2
    L16_2(L17_2)
    L16_2 = SetPedWetnessHeight
    L17_2 = L8_2
    L18_2 = 5.0
    L16_2(L17_2, L18_2)
    L16_2 = Wait
    L17_2 = 500
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = Wait
    L17_2 = 500
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = StopParticleFxLooped
    L17_2 = L15_2
    L16_2(L17_2)
    L16_2 = RemoveParticleFx
    L17_2 = L15_2
    L18_2 = true
    L16_2(L17_2, L18_2)
    L16_2 = SetPtfxAssetNextCall
    L17_2 = "core"
    L16_2(L17_2)
    L16_2 = StartParticleFxLoopedAtCoord
    L17_2 = "ent_sht_water"
    L18_2 = L9_2.x
    L19_2 = L9_2.y
    L20_2 = L9_2.z
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 0.0
    L24_2 = 1.0
    L25_2 = false
    L26_2 = false
    L27_2 = false
    L28_2 = false
    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L15_2 = L16_2
    L16_2 = Wait
    L17_2 = 1500
    L16_2(L17_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = SetPedWetnessEnabledThisFrame
    L17_2 = L8_2
    L16_2(L17_2)
    L16_2 = SetPedWetnessHeight
    L17_2 = L8_2
    L18_2 = 5.0
    L16_2(L17_2, L18_2)
    L16_2 = TriggerServerEvent
    L17_2 = "status:remove"
    L18_2 = GetPlayerServerId
    L19_2 = PlayerId
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L19_2()
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L19_2 = "stress"
    L20_2 = 200000
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = TriggerServerEvent
    L17_2 = "status:add"
    L18_2 = GetPlayerServerId
    L19_2 = PlayerId
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L19_2()
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L19_2 = "igiene"
    L20_2 = 500000
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = Wait
    L17_2 = 1500
    L16_2(L17_2)
    L16_2 = ClearPedTasks
    L17_2 = PlayerPedId
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L17_2()
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L16_2 = ExecuteCommand
    L17_2 = "shakeoff"
    L16_2(L17_2)
    L16_2 = TriggerEvent
    L17_2 = "esx_ambulancejjj:cleanme"
    L16_2(L17_2)
    L16_2 = SetPedWetnessEnabledThisFrame
    L17_2 = L8_2
    L16_2(L17_2)
    L16_2 = SetPedWetnessHeight
    L17_2 = L8_2
    L18_2 = 5.0
    L16_2(L17_2, L18_2)
    L16_2 = exports
    L16_2 = L16_2.striano_editor
    L17_2 = L16_2
    L16_2 = L16_2.ResettaSporcoSingolo
    L16_2(L17_2)
    L16_2 = StopParticleFxLooped
    L17_2 = L14_2
    L16_2(L17_2)
    L16_2 = RemoveParticleFx
    L17_2 = L14_2
    L18_2 = true
    L16_2(L17_2, L18_2)
    L16_2 = StopParticleFxLooped
    L17_2 = L15_2
    L16_2(L17_2)
    L16_2 = RemoveParticleFx
    L17_2 = L15_2
    L18_2 = true
    L16_2(L17_2, L18_2)
    if nil ~= A3_2 then
      L16_2 = SetEntityCollision
      L17_2 = PlayerPedId
      L17_2 = L17_2()
      L18_2 = true
      L19_2 = true
      L16_2(L17_2, L18_2, L19_2)
      L16_2 = SetEntityCoords
      L17_2 = PlayerPedId
      L17_2 = L17_2()
      L18_2 = A3_2
      L16_2(L17_2, L18_2)
    end
    L16_2 = FreezeEntityPosition
    L17_2 = L8_2
    L18_2 = false
    L16_2(L17_2, L18_2)
    InDocciaPubblica = false
    L16_2 = exports
    L16_2 = L16_2.striano_core
    L17_2 = L16_2
    L16_2 = L16_2.EndOrbitCam
    L16_2(L17_2)
    L16_2 = TriggerEvent
    L17_2 = "xnTattoos:resetsporco"
    L16_2(L17_2)
    L16_2 = ExecuteCommand
    L17_2 = "prova3 "
    L16_2(L17_2)
  end
end
DocciaPubblica = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = 3.0
  if A3_2 then
    L4_2 = A3_2
  end
  L5_2 = HasNamedPtfxAssetLoaded
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestNamedPtfxAsset
    L6_2 = A0_2
    L5_2(L6_2)
  end
  while true do
    L5_2 = HasNamedPtfxAssetLoaded
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = SetPtfxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = StartParticleFxLoopedAtCoord
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = L4_2
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  return L5_2
end
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  if nil == A6_2 then
    L7_2 = vector3
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    A6_2 = L7_2
  end
  L7_2 = TriggerServerEvent
  L8_2 = "PlayEffectServer"
  L9_2 = {}
  L9_2.a = A0_2
  L9_2.b = A1_2
  L9_2.pos = A2_2
  L9_2.s = A3_2
  L9_2.o = 1.0
  L9_2.rot = A6_2
  L9_2.c = A5_2
  L7_2(L8_2, L9_2)
end
DISTANCECHECKING = 1.7
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = RequestCollisionAtCoord
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = ExecuteCommand
  L6_2 = "e teleport"
  L5_2(L6_2)
  L5_2 = "sounds/menu_open"
  L6_2 = L5_2
  L7_2 = ".mp3"
  L6_2 = L6_2 .. L7_2
  L7_2 = exports
  L7_2 = L7_2.xsound
  L8_2 = L7_2
  L7_2 = L7_2.PlayUrlPos
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = 0.1
  L12_2 = GetEntityCoords
  L13_2 = PlayerPedId
  L13_2 = L13_2()
  L12_2, L13_2 = L12_2(L13_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L6_1
  L8_2 = "cut_josh_4"
  L9_2 = "scr_josh3_house_smoked"
  L10_2 = GetEntityCoords
  L11_2 = L4_2
  L10_2 = L10_2(L11_2)
  L11_2 = 2.0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 5000
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L7_2
    L0_3(L1_3)
    L0_3 = RemoveParticleFx
    L1_3 = L7_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2)
  L8_2 = exports
  L8_2 = L8_2.striano_editor
  L9_2 = L8_2
  L8_2 = L8_2.setbloccoanim
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = Wait
  L9_2 = 1550
  L8_2(L9_2)
  L8_2 = DoScreenFadeOut
  L9_2 = 550
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 650
  L8_2(L9_2)
  L8_2 = ExecuteCommand
  L9_2 = "e c"
  L8_2(L9_2)
  L8_2 = SetEntityCoords
  L9_2 = L4_2
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = math
  L8_2 = L8_2.random
  L9_2 = 1
  L10_2 = 359
  L8_2 = L8_2(L9_2, L10_2)
  if A3_2 then
    L8_2 = A3_2
  end
  L9_2 = SetEntityHeading
  L10_2 = L4_2
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = Wait
  L10_2 = 2450
  L9_2(L10_2)
  L9_2 = L6_1
  L10_2 = "cut_josh_4"
  L11_2 = "scr_josh3_house_smoked"
  L12_2 = GetEntityCoords
  L13_2 = L4_2
  L12_2 = L12_2(L13_2)
  L13_2 = 2.5
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 5000
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L9_2
    L0_3(L1_3)
    L0_3 = RemoveParticleFx
    L1_3 = L9_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L10_2(L11_2)
  L10_2 = Wait
  L11_2 = 750
  L10_2(L11_2)
  L10_2 = exports
  L10_2 = L10_2.striano_editor
  L11_2 = L10_2
  L10_2 = L10_2.setbloccoanim
  L12_2 = false
  L10_2(L11_2, L12_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 250
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "loadtattoo"
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 250
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "e endladderdown"
    L0_3(L1_3)
    L0_3 = DoScreenFadeIn
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "atmosfera"
    L0_3(L1_3)
    L0_3 = FreezeEntityPosition
    L1_3 = L4_2
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L10_2(L11_2)
end
gotopos = L8_1
L8_1 = RegisterKeyMapping
L9_1 = "actionCore"
L10_1 = "Azione"
L11_1 = "keyboard"
L12_1 = "h"
L8_1(L9_1, L10_1, L11_1, L12_1)
L8_1 = RegisterCommand
L9_1 = "actionCore"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = canCore
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = pairs
    L3_2 = listaNubi
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = DISTANCECHECKING
      L9_2 = IsEntityInWater
      L10_2 = L0_2
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = IsPedSwimming
        L10_2 = L0_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = IsPedSwimmingUnderWater
          L10_2 = L0_2
          L9_2 = L9_2(L10_2)
          if not L9_2 then
            goto lbl_33
          end
        end
      end
      L9_2 = DISTANCECHECKING
      L8_2 = L9_2 * 2
      ::lbl_33::
      L9_2 = L7_2.pos
      L9_2 = L1_2 - L9_2
      L9_2 = #L9_2
      if L8_2 > L9_2 then
        L9_2 = IsNuiFocused
        L9_2 = L9_2()
        if not L9_2 then
          L9_2 = IsEntityAttached
          L10_2 = L0_2
          L9_2 = L9_2(L10_2)
          if not L9_2 then
            L9_2 = IsPedRagdoll
            L10_2 = L0_2
            L9_2 = L9_2(L10_2)
            if not L9_2 then
              L9_2 = IsPedFatallyInjured
              L10_2 = L0_2
              L9_2 = L9_2(L10_2)
              if not L9_2 then
                L9_2 = L7_2.visibile
                if L9_2 then
                  L9_2 = exports
                  L9_2 = L9_2.striano_editor
                  L10_2 = L9_2
                  L9_2 = L9_2.HintHud_SetVisible
                  L11_2 = false
                  L9_2(L10_2, L11_2)
                end
                L9_2 = L7_2.funzione
                L9_2()
                break
              end
            end
          end
        end
      end
    end
  end
end
L8_1(L9_1, L10_1)
function L8_1()
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
  L2_2 = "Edit Ped Character"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "PersonalizzaPed"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Save Character"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "SaveMySkin"
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "shakeoff"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
fastMenuPed = L8_1
function L8_1()
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
  L2_2 = "Editor Tattoo"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "PersonalizzaTattoo"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Your Tattoo List"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "mytattoo"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
fastMenuTattoo = L8_1
function L8_1()
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
  L2_2 = "Create New Outfit"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "editVestiti"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Manage Outfit"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "ApriAbbigliamento"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
fastMenuVestiti = L8_1
L8_1 = false
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L8_1
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsNuiFocused
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 NUI Focus"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.editorattivo
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 Prop Editor"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.isopen
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 Inventory Open"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.inCombat
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 In Combat"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.menuaperto
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 Menu Aperto"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.intattooedit
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 Tattoo Edit"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.opened
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 Fast Menu"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.striano_ridehorse
  L2_2 = L1_2
  L1_2 = L1_2.inShopAnimals
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 Horse Shop"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = IsEntityPositionFrozen
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L9_1
    L2_2 = "\226\157\140 Ped Frozen"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
canCore = L10_1
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = pairs
    L3_2 = listaNubi
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.pos
      L8_2 = L1_2 - L8_2
      L8_2 = #L8_2
      if L8_2 < 25.0 then
        L8_2 = L7_2.fx
        if nil == L8_2 then
          L8_2 = canCore
          L8_2 = L8_2()
          if L8_2 then
            L8_2 = vector3
            L9_2 = L7_2.pos
            L9_2 = L9_2.x
            L10_2 = L7_2.pos
            L10_2 = L10_2.y
            L11_2 = L7_2.pos
            L11_2 = L11_2.z
            L11_2 = L11_2 - 0.1
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L7_2.pos = L8_2
            L8_2 = exports
            L8_2 = L8_2.striano_core
            L9_2 = L8_2
            L8_2 = L8_2.StartFxCoord
            L10_2 = "scr_rcbarry1"
            L11_2 = "scr_alien_charging"
            L12_2 = vector3
            L13_2 = L7_2.pos
            L13_2 = L13_2.x
            L14_2 = L7_2.pos
            L14_2 = L14_2.y
            L15_2 = L7_2.pos
            L15_2 = L15_2.z
            L15_2 = L15_2 + 0.5
            L12_2 = L12_2(L13_2, L14_2, L15_2)
            L13_2 = vector3
            L14_2 = 0
            L15_2 = 0
            L16_2 = 0
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            L14_2 = 0.1
            L15_2 = 0.9
            L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
            L7_2.fx = L8_2
          end
        end
        L8_2 = DISTANCECHECKING
        L9_2 = IsEntityInWater
        L10_2 = L0_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = IsPedSwimming
          L10_2 = L0_2
          L9_2 = L9_2(L10_2)
          if not L9_2 then
            L9_2 = IsPedSwimmingUnderWater
            L10_2 = L0_2
            L9_2 = L9_2(L10_2)
            if not L9_2 then
              goto lbl_80
            end
          end
        end
        L9_2 = DISTANCECHECKING
        L8_2 = L9_2 * 2
        ::lbl_80::
        L9_2 = L7_2.pos
        L9_2 = L1_2 - L9_2
        L9_2 = #L9_2
        L10_2 = DISTANCECHECKING
        if L9_2 < L10_2 then
          L9_2 = L7_2.visibile
          if not L9_2 then
            L9_2 = canCore
            L9_2 = L9_2()
            if L9_2 then
              L9_2 = exports
              L9_2 = L9_2.striano_editor
              L10_2 = L9_2
              L9_2 = L9_2.HintHud_SetPosition
              L11_2 = L7_2.pos
              L11_2 = L11_2.x
              L12_2 = L7_2.pos
              L12_2 = L12_2.y
              L13_2 = L7_2.pos
              L13_2 = L13_2.z
              L14_2 = 0.95
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
              L9_2 = exports
              L9_2 = L9_2.striano_editor
              L10_2 = L9_2
              L9_2 = L9_2.HintHud_RefreshButtons
              L11_2 = {}
              L12_2 = {}
              L12_2.control = 74
              L13_2 = L7_2.testo
              L12_2.label = L13_2
              L11_2[1] = L12_2
              L9_2(L10_2, L11_2)
              L9_2 = exports
              L9_2 = L9_2.striano_editor
              L10_2 = L9_2
              L9_2 = L9_2.HintHud_SetMaxDistance
              L11_2 = 80.0
              L9_2(L10_2, L11_2)
              L9_2 = exports
              L9_2 = L9_2.striano_editor
              L10_2 = L9_2
              L9_2 = L9_2.HintHud_SetVisible
              L11_2 = true
              L9_2(L10_2, L11_2)
              L7_2.visibile = true
            end
          end
        else
          L9_2 = L7_2.visibile
          if L9_2 then
            L7_2.visibile = false
            L9_2 = exports
            L9_2 = L9_2.striano_editor
            L10_2 = L9_2
            L9_2 = L9_2.HintHud_SetVisible
            L11_2 = false
            L9_2(L10_2, L11_2)
          end
        end
      else
        L8_2 = L7_2.fx
        if nil ~= L8_2 then
          L8_2 = exports
          L8_2 = L8_2.striano_core
          L9_2 = L8_2
          L8_2 = L8_2.StopFxCoord
          L10_2 = L7_2.fx
          L8_2(L9_2, L10_2)
          L7_2.fx = nil
        end
      end
    end
  end
end
L10_1(L11_1)
L10_1 = RegisterCommand
L11_1 = "animfreez"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = "mp_player_intdrink"
  L4_2 = "intro_bottle"
  L5_2 = A1_2[1]
  if nil ~= L5_2 then
    L3_2 = A1_2[1]
  end
  L5_2 = A1_2[2]
  if nil ~= L5_2 then
    L4_2 = A1_2[2]
  end
  L5_2 = false
  L6_2 = 0
  L7_2 = faiAnim
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = -1
  L11_2 = A1_2[3]
  if not L11_2 then
    L11_2 = 1
  end
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = IsEntityPlayingAnim
      L1_3 = L2_2
      L2_3 = L3_2
      L3_3 = L4_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L5_2
      if not L0_3 then
        L0_3 = IsEntityPlayingAnim
        L1_3 = L2_2
        L2_3 = L3_2
        L3_3 = L4_2
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = IsControlJustPressed
          L1_3 = 0
          L2_3 = 74
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlJustPressed
            L1_3 = 0
            L2_3 = 74
            L0_3 = L0_3(L1_3, L2_3)
          end
          if L0_3 then
            L0_3 = SetEntityAnimSpeed
            L1_3 = L2_2
            L2_3 = L3_2
            L3_3 = L4_2
            L4_3 = 0.0
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = GetEntityAnimCurrentTime
            L1_3 = L2_2
            L2_3 = L3_2
            L3_3 = L4_2
            L0_3 = L0_3(L1_3, L2_3, L3_3)
            L6_2 = L0_3
            L0_3 = print
            L1_3 = "Current frame: "
            L2_3 = L6_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
            L0_3 = true
            L5_2 = L0_3
          end
        end
      else
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 74
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 74
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            goto lbl_104
          end
        end
        L0_3 = ClearPedTasks
        L1_3 = L2_2
        L0_3(L1_3)
        L0_3 = faiAnim
        L1_3 = L3_2
        L2_3 = L4_2
        L3_3 = -1
        L4_3 = 49
        L0_3(L1_3, L2_3, L3_3, L4_3)
        while true do
          L0_3 = IsEntityPlayingAnim
          L1_3 = L2_2
          L2_3 = L3_2
          L3_3 = L4_2
          L4_3 = 3
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          if L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
        L0_3 = SetEntityAnimCurrentTime
        L1_3 = L2_2
        L2_3 = L3_2
        L3_3 = L4_2
        L4_3 = L6_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = SetEntityAnimSpeed
        L1_3 = L2_2
        L2_3 = L3_2
        L3_3 = L4_2
        L4_3 = 0.0
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = print
        L1_3 = "Tempo riconfermato."
        L0_3(L1_3)
        return
      end
      ::lbl_104::
    end
  end
  L7_2(L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = nil
L11_1 = nil
L12_1 = RegisterCommand
L13_1 = "eteris"
function L14_1()
  local L0_2, L1_2
  L0_2 = EterisFunc
  L0_2()
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "eteris"
function L14_1()
  local L0_2, L1_2
  L0_2 = L10_1
  return L0_2
end
L12_1(L13_1, L14_1)
L12_1 = RegisterKeyMapping
L13_1 = "eteris"
L14_1 = "Drink Eteris"
L15_1 = "keyboard"
L16_1 = "f1"
L12_1(L13_1, L14_1, L15_1, L16_1)
L12_1 = false
L13_1 = RegisterNetEvent
L14_1 = "drinkEteris"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "drinkEteris"
function L15_1()
  local L0_2, L1_2
  L0_2 = EterisFunc
  L0_2()
end
L13_1(L14_1, L15_1)
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L0_2 = L12_1
  if not L0_2 then
    L0_2 = true
    L12_1 = L0_2
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 24
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsControlPressed
      L2_2 = 0
      L3_2 = 25
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = IsPedFatallyInjured
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedRagdoll
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_combat
            L2_2 = L1_2
            L1_2 = L1_2.inFinisher
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = exports
              L1_2 = L1_2.striano_combat
              L2_2 = L1_2
              L1_2 = L1_2.inCombat
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = exports
                L1_2 = L1_2.striano_inventory
                L2_2 = L1_2
                L1_2 = L1_2.HasItem
                L3_2 = "eteris"
                L4_2 = 1
                L5_2 = "player"
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if L1_2 then
                  L2_2 = 250
                  L3_2 = GetEntityHealth
                  L4_2 = L0_2
                  L3_2 = L3_2(L4_2)
                  L4_2 = exports
                  L4_2 = L4_2.striano_core
                  L5_2 = L4_2
                  L4_2 = L4_2.getliferank
                  L4_2 = L4_2(L5_2)
                  if L3_2 < L4_2 then
                    L5_2 = TriggerServerEvent
                    L6_2 = "inv3d:removeItemByName"
                    L7_2 = "player"
                    L8_2 = "eteris"
                    L9_2 = 1
                    L5_2(L6_2, L7_2, L8_2, L9_2)
                    L5_2 = Wait
                    L6_2 = 75
                    L5_2(L6_2)
                    L5_2 = DoesEntityExist
                    L6_2 = L10_1
                    L5_2 = L5_2(L6_2)
                    if L5_2 then
                      L5_2 = SetEntityAsMissionEntity
                      L6_2 = L10_1
                      L5_2(L6_2)
                      L5_2 = DeleteEntity
                      L6_2 = L10_1
                      L5_2(L6_2)
                    end
                    L5_2 = DoesEntityExist
                    L6_2 = L11_1
                    L5_2 = L5_2(L6_2)
                    if L5_2 then
                      L5_2 = SetEntityAsMissionEntity
                      L6_2 = L11_1
                      L5_2(L6_2)
                      L5_2 = DeleteEntity
                      L6_2 = L11_1
                      L5_2(L6_2)
                    end
                    L5_2 = ClearPedTasks
                    L6_2 = L0_2
                    L5_2(L6_2)
                    L5_2 = "striano_eteris"
                    L6_2 = "striano_eteris_2"
                    L7_2 = RequestModelStriano
                    L8_2 = GetHashKey
                    L9_2 = L6_2
                    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L8_2(L9_2)
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                    L7_2 = CreateObject
                    L8_2 = GetHashKey
                    L9_2 = L6_2
                    L8_2 = L8_2(L9_2)
                    L9_2 = GetEntityCoords
                    L10_2 = L0_2
                    L9_2 = L9_2(L10_2)
                    L10_2 = false
                    L7_2 = L7_2(L8_2, L9_2, L10_2)
                    L11_1 = L7_2
                    L7_2 = 0
                    while true do
                      L8_2 = DoesEntityExist
                      L9_2 = L11_1
                      L8_2 = L8_2(L9_2)
                      if not (not L8_2 and L7_2 < 100) then
                        break
                      end
                      L7_2 = L7_2 + 1
                      L8_2 = Wait
                      L9_2 = 0
                      L8_2(L9_2)
                    end
                    L8_2 = SetModelAsNoLongerNeeded
                    L9_2 = GetHashKey
                    L10_2 = L6_2
                    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L9_2(L10_2)
                    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                    L8_2 = SetEntityVisible
                    L9_2 = L11_1
                    L10_2 = false
                    L8_2(L9_2, L10_2)
                    L8_2 = RequestModelStriano
                    L9_2 = GetHashKey
                    L10_2 = L5_2
                    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L9_2(L10_2)
                    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                    L8_2 = CreateObject
                    L9_2 = GetHashKey
                    L10_2 = L5_2
                    L9_2 = L9_2(L10_2)
                    L10_2 = GetEntityCoords
                    L11_2 = L0_2
                    L10_2 = L10_2(L11_2)
                    L11_2 = true
                    L8_2 = L8_2(L9_2, L10_2, L11_2)
                    L10_1 = L8_2
                    L8_2 = 0
                    while true do
                      L9_2 = DoesEntityExist
                      L10_2 = L10_1
                      L9_2 = L9_2(L10_2)
                      if not (not L9_2 and L8_2 < 100) then
                        break
                      end
                      L8_2 = L8_2 + 1
                      L9_2 = Wait
                      L10_2 = 0
                      L9_2(L10_2)
                    end
                    L9_2 = AttachEntityToEntity
                    L10_2 = L10_1
                    L11_2 = L0_2
                    L12_2 = GetPedBoneIndex
                    L13_2 = L0_2
                    L14_2 = 18905
                    L12_2 = L12_2(L13_2, L14_2)
                    L13_2 = 0.06
                    L14_2 = -0.19
                    L15_2 = 0.09
                    L16_2 = -69.0
                    L17_2 = 108.5
                    L18_2 = -10.0
                    L19_2 = true
                    L20_2 = true
                    L21_2 = false
                    L22_2 = true
                    L23_2 = 1
                    L24_2 = true
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                    L9_2 = SetModelAsNoLongerNeeded
                    L10_2 = GetHashKey
                    L11_2 = L5_2
                    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L10_2(L11_2)
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                    L9_2 = AttachEntityToEntity
                    L10_2 = L11_1
                    L11_2 = L10_1
                    L12_2 = 0
                    L13_2 = 0
                    L14_2 = 0
                    L15_2 = 0
                    L16_2 = 0
                    L17_2 = 0
                    L18_2 = 0
                    L19_2 = true
                    L20_2 = true
                    L21_2 = false
                    L22_2 = true
                    L23_2 = 1
                    L24_2 = true
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                    L9_2 = CreateThread
                    function L10_2()
                      local L0_3, L1_3, L2_3
                      while true do
                        L0_3 = L10_1
                        if not L0_3 then
                          break
                        end
                        L0_3 = Wait
                        L1_3 = 0
                        L0_3(L1_3)
                        L0_3 = DisableControlAction
                        L1_3 = 0
                        L2_3 = 24
                        L0_3(L1_3, L2_3)
                        L0_3 = DisableControlAction
                        L1_3 = 0
                        L2_3 = 25
                        L0_3(L1_3, L2_3)
                      end
                    end
                    L9_2(L10_2)
                    L9_2 = "mp_player_inteat@pnq"
                    L10_2 = "loop"
                    L11_2 = faiAnim
                    L12_2 = L9_2
                    L13_2 = L10_2
                    L14_2 = 1500
                    L15_2 = 49
                    L11_2(L12_2, L13_2, L14_2, L15_2)
                    L11_2 = exports
                    L11_2 = L11_2.striano_combat
                    L12_2 = L11_2
                    L11_2 = L11_2.e_shareSound
                    L13_2 = "sounds/striano_combat/magic/soulsteal"
                    L14_2 = 0.1
                    L15_2 = PlayerPedId
                    L15_2 = L15_2()
                    L16_2 = 3.0
                    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                    L11_2 = Wait
                    L12_2 = 7
                    L11_2(L12_2)
                    L11_2 = SetEntityAnimSpeed
                    L12_2 = L0_2
                    L13_2 = L9_2
                    L14_2 = L10_2
                    L15_2 = 1.1
                    L11_2(L12_2, L13_2, L14_2, L15_2)
                    while true do
                      L11_2 = IsEntityPlayingAnim
                      L12_2 = L0_2
                      L13_2 = L9_2
                      L14_2 = L10_2
                      L15_2 = 3
                      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
                      if not L11_2 then
                        break
                      end
                      L11_2 = IsPedFatallyInjured
                      L12_2 = L0_2
                      L11_2 = L11_2(L12_2)
                      if L11_2 then
                        break
                      end
                      L11_2 = IsPedRagdoll
                      L12_2 = L0_2
                      L11_2 = L11_2(L12_2)
                      if L11_2 then
                        break
                      end
                      L11_2 = Wait
                      L12_2 = 0
                      L11_2(L12_2)
                    end
                    L11_2 = "mp_player_inteat@pnq"
                    L12_2 = "outro"
                    L13_2 = faiAnim
                    L14_2 = L11_2
                    L15_2 = L12_2
                    L16_2 = 500
                    L17_2 = 49
                    L13_2(L14_2, L15_2, L16_2, L17_2)
                    L13_2 = L7_1
                    L14_2 = "scr_rcbarry1"
                    L15_2 = "scr_alien_teleport"
                    L16_2 = GetEntityCoords
                    L17_2 = L0_2
                    L16_2 = L16_2(L17_2)
                    L17_2 = 0.5
                    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
                    L14_2 = CreateThread
                    function L15_2()
                      local L0_3, L1_3, L2_3
                      L0_3 = Wait
                      L1_3 = 2500
                      L0_3(L1_3)
                      L0_3 = StopParticleFxLooped
                      L1_3 = L13_2
                      L0_3(L1_3)
                      L0_3 = RemoveParticleFx
                      L1_3 = L13_2
                      L2_3 = true
                      L0_3(L1_3, L2_3)
                    end
                    L14_2(L15_2)
                    L14_2 = Wait
                    L15_2 = 7
                    L14_2(L15_2)
                    while true do
                      L14_2 = IsEntityPlayingAnim
                      L15_2 = L0_2
                      L16_2 = L11_2
                      L17_2 = L12_2
                      L18_2 = 3
                      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
                      if not L14_2 then
                        break
                      end
                      L14_2 = IsPedFatallyInjured
                      L15_2 = L0_2
                      L14_2 = L14_2(L15_2)
                      if L14_2 then
                        break
                      end
                      L14_2 = IsPedRagdoll
                      L15_2 = L0_2
                      L14_2 = L14_2(L15_2)
                      if L14_2 then
                        break
                      end
                      L14_2 = Wait
                      L15_2 = 0
                      L14_2(L15_2)
                    end
                    L14_2 = L3_2 + L2_2
                    if L4_2 <= L14_2 then
                      L14_2 = L4_2
                      L15_2 = CreateThread
                      function L16_2()
                        local L0_3, L1_3
                        L0_3 = Wait
                        L1_3 = 2500
                        L0_3(L1_3)
                        L0_3 = ExecuteCommand
                        L1_3 = "resync"
                        L0_3(L1_3)
                      end
                      L15_2(L16_2)
                    end
                    L15_2 = SetEntityHealth
                    L16_2 = L0_2
                    L17_2 = L14_2
                    L15_2(L16_2, L17_2)
                    L15_2 = TriggerServerEvent
                    L16_2 = "status:set"
                    L17_2 = GetPlayerServerId
                    L18_2 = PlayerId
                    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L18_2()
                    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                    L18_2 = "vitapl"
                    L19_2 = GetEntityHealth
                    L20_2 = L0_2
                    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L19_2(L20_2)
                    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                    L15_2 = exports
                    L15_2 = L15_2.striano_inventory
                    L16_2 = L15_2
                    L15_2 = L15_2.HasItem
                    L17_2 = "eteris"
                    L18_2 = 1
                    L19_2 = "player"
                    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
                    if L15_2 then
                      L16_2 = "gestures@f@standing@casual"
                      L17_2 = "gesture_hand_down"
                      L18_2 = faiAnim
                      L19_2 = L16_2
                      L20_2 = L17_2
                      L21_2 = 500
                      L22_2 = 49
                      L18_2(L19_2, L20_2, L21_2, L22_2)
                      L18_2 = Wait
                      L19_2 = 7
                      L18_2(L19_2)
                      while true do
                        L18_2 = IsEntityPlayingAnim
                        L19_2 = L0_2
                        L20_2 = L16_2
                        L21_2 = L17_2
                        L22_2 = 3
                        L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
                        if not L18_2 then
                          break
                        end
                        L18_2 = IsPedFatallyInjured
                        L19_2 = L0_2
                        L18_2 = L18_2(L19_2)
                        if L18_2 then
                          break
                        end
                        L18_2 = IsPedRagdoll
                        L19_2 = L0_2
                        L18_2 = L18_2(L19_2)
                        if L18_2 then
                          break
                        end
                        L18_2 = Wait
                        L19_2 = 0
                        L18_2(L19_2)
                      end
                      L18_2 = DetachEntity
                      L19_2 = L11_1
                      L18_2(L19_2)
                      L18_2 = SetEntityVisible
                      L19_2 = L11_1
                      L20_2 = true
                      L18_2(L19_2, L20_2)
                      L18_2 = SetEntityAsMissionEntity
                      L19_2 = L10_1
                      L18_2(L19_2)
                      L18_2 = DeleteEntity
                      L19_2 = L10_1
                      L18_2(L19_2)
                      L18_2 = nil
                      L10_1 = L18_2
                      L18_2 = ApplyForceToEntity
                      L19_2 = L11_1
                      L20_2 = 1
                      L21_2 = 0.0
                      L22_2 = 0.0
                      L23_2 = -0.2
                      L24_2 = 0.0
                      L25_2 = 0.0
                      L26_2 = 0.0
                      L27_2 = 0
                      L28_2 = true
                      L29_2 = true
                      L30_2 = true
                      L31_2 = false
                      L32_2 = true
                      L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                      L18_2 = Wait
                      L19_2 = 25
                      L18_2(L19_2)
                      while true do
                        L18_2 = DoesEntityExist
                        L19_2 = L11_1
                        L18_2 = L18_2(L19_2)
                        if not L18_2 then
                          break
                        end
                        L18_2 = GetEntitySpeed
                        L19_2 = L11_1
                        L18_2 = L18_2(L19_2)
                        L19_2 = 0.02
                        if not (L18_2 > L19_2) then
                          break
                        end
                        L18_2 = Wait
                        L19_2 = 0
                        L18_2(L19_2)
                      end
                      L18_2 = Wait
                      L19_2 = 25
                      L18_2(L19_2)
                      L18_2 = SetEntityAsNoLongerNeeded
                      L19_2 = L11_1
                      L18_2(L19_2)
                      L18_2 = false
                      L12_1 = L18_2
                    else
                      L16_2 = SetEntityAsMissionEntity
                      L17_2 = L10_1
                      L16_2(L17_2)
                      L16_2 = DeleteEntity
                      L17_2 = L10_1
                      L16_2(L17_2)
                      L16_2 = nil
                      L10_1 = L16_2
                      L16_2 = SetEntityAsMissionEntity
                      L17_2 = L11_1
                      L16_2(L17_2)
                      L16_2 = DeleteEntity
                      L17_2 = L11_1
                      L16_2(L17_2)
                      L16_2 = nil
                      L11_1 = L16_2
                      L16_2 = false
                      L12_1 = L16_2
                    end
                  else
                    L5_2 = ExecuteCommand
                    L6_2 = "e no3"
                    L5_2(L6_2)
                    L5_2 = ExecuteCommand
                    L6_2 = "prova3 ~y~You don't need drink Eteris."
                    L5_2(L6_2)
                    L5_2 = Wait
                    L6_2 = 1000
                    L5_2(L6_2)
                    L5_2 = false
                    L12_1 = L5_2
                  end
                else
                  L2_2 = ExecuteCommand
                  L3_2 = "e shrug6"
                  L2_2(L3_2)
                  L2_2 = exports
                  L2_2 = L2_2.striano_combat
                  L3_2 = L2_2
                  L2_2 = L2_2.testo3d
                  L4_2 = "You don't have an Eteris."
                  L2_2(L3_2, L4_2)
                  L2_2 = Wait
                  L3_2 = 1000
                  L2_2(L3_2)
                  L2_2 = false
                  L12_1 = L2_2
                end
            end
          end
        end
      end
    end
    else
      L1_2 = false
      L12_1 = L1_2
    end
  end
end
EterisFunc = L13_1
L13_1 = AddEventHandler
L14_1 = "onResourceStop"
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L10_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L10_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L10_1
      L1_2(L2_2)
      L1_2 = nil
      L10_1 = L1_2
    end
  end
end
L13_1(L14_1, L15_1)
