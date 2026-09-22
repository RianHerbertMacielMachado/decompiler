local L0_1, L1_1, L2_1, L3_1, L4_1
MAXRAPIDE = 10
drawVisible = true
DatabaseEnabled = true
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = drawVisible
  if L0_2 then
    L0_2 = index2
    if L0_2 > 0 then
      L0_2 = draw
      L1_2 = 24
      L2_2 = "\226\150\182\239\184\143"
      L3_2 = 15
      L4_2 = "\226\172\134\239\184\143"
      L5_2 = 14
      L6_2 = "\226\172\135\239\184\143"
      L7_2 = 73
      L8_2 = "\240\159\155\145"
      L9_2 = 74
      L10_2 = "\240\159\171\163"
      L11_2 = 25
      L12_2 = "\226\157\140"
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
LoopDrawRapid = L0_1
commandRapidName = "ar"
L0_1 = RegisterKeyMapping
L1_1 = commandRapidName
L2_1 = "Rapid Actions"
L3_1 = "MOUSE_BUTTON"
L4_1 = "MOUSE_MIDDLE"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterCommand
L1_1 = commandRapidName
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = canOpenRapidMenu
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = LoopRotellaAnimDev
    L2_2()
    L2_2 = GetPedParachuteState
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if -1 == L2_2 then
      L2_2 = IsControlPressed
      L3_2 = 0
      L4_2 = 25
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsDisabledControlPressed
        L3_2 = 0
        L4_2 = 25
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = IsControlPressed
          L3_2 = 0
          L4_2 = 37
          L2_2 = L2_2(L3_2, L4_2)
          if not L2_2 then
            L2_2 = options2
            L2_2 = L2_2[1]
            L2_2 = L2_2.func
            L3_2 = options2
            L3_2 = L3_2[1]
            L3_2 = L3_2.onlymenouno
            L2_2(L3_2)
          end
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2
  L0_2 = DevAnim_Get
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = A0_3 or nil
    if not A0_3 then
      L1_3 = {}
    end
    preferite = L1_3
    L1_3 = preferite
    L1_3 = #L1_3
    if L1_3 > 0 then
    else
      L1_3 = {}
      L2_3 = "e tasche"
      L3_3 = "e hey"
      L4_3 = "e argue10"
      L5_3 = "e handsup"
      L6_3 = "e shrug4"
      L7_3 = "e pray22"
      L8_3 = "e pray23"
      L9_3 = "e pray20"
      L1_3[1] = L2_3
      L1_3[2] = L3_3
      L1_3[3] = L4_3
      L1_3[4] = L5_3
      L1_3[5] = L6_3
      L1_3[6] = L7_3
      L1_3[7] = L8_3
      L1_3[8] = L9_3
      preferite = L1_3
      L1_3 = DatabaseEnabled
      if L1_3 then
        L1_3 = DevAnim_Save
        L2_3 = preferite
        function L3_3(A0_4)
          local L1_4
          if not A0_4 then
          end
        end
        L1_3(L2_3, L3_3)
      end
    end
  end
  L0_2(L1_2)
end
Starter_Anim = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.entScelta
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.inghost
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.stoposizionando
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.stopescando
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.IsOrbitCamActive
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.menuCombatOpen
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_ridehorse
  L2_2 = L1_2
  L1_2 = L1_2.IsOrbitCamActive
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.ineditfreecam
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.binocoloattivo
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.inCombat
  L1_2 = L1_2(L2_2)
  L1_2 = IsNuiFocused
  L1_2 = L1_2()
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedFatallyInjured
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedHuman
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsEntityPositionFrozen
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = IsPedSittingInAnyVehicle
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = IsNuiFocusKeepingInput
    L1_2 = L1_2()
    L1_2 = drawf
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 24
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = IsPauseMenuActive
    L1_2 = L1_2()
    L1_2 = GetPedConfigFlag
    L2_2 = A0_2
    L3_2 = 78
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = nil == L1_2 and L1_2
  end
  return L1_2
end
canManageRapids = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.stoposizionando
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.ineditfreecam
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.menuCombatOpen
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_ridehorse
  L2_2 = L1_2
  L1_2 = L1_2.IsOrbitCamActive
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.induskfalls
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.cameraskin
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.binocoloattivo
  L1_2 = L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.inCombat
  L1_2 = L1_2(L2_2)
  L1_2 = IsNuiFocused
  L1_2 = L1_2()
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedFatallyInjured
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedHuman
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsEntityPositionFrozen
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = IsPedSittingInAnyVehicle
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = IsNuiFocusKeepingInput
    L1_2 = L1_2()
    L1_2 = drawf
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 24
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = IsPauseMenuActive
    L1_2 = L1_2()
    L1_2 = GetPedConfigFlag
    L2_2 = A0_2
    L3_2 = 78
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = not L1_2 and L1_2
  end
  return L1_2
end
canOpenRapidMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "NAV_UP_DOWN"
  L3_2 = "HUD_FREEMODE_SOUNDSET"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
SuonoScroll = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2["pma-voice"]
  L1_2 = L0_2
  L0_2 = L0_2.inChangeVoice
  L0_2 = L0_2(L1_2)
  L0_2 = 0 == L0_2
  return L0_2
end
getVoiceChanger = L0_1
L0_1 = RegisterCommand
L1_1 = "rapide"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenPreferite
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "rapid"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenPreferite
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "actions"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenPreferite
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "azioni"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenPreferite
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "preferite"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenPreferite
  L0_2()
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = GetResourceState
  L1_2 = "striano_fastmenu"
  L0_2 = L0_2(L1_2)
  L0_2 = not L0_2
  if "started" == L0_2 then
    L0_2 = print
    L1_2 = "HEY! READ ME! YOU NEED striano_fastmenu TO MANAGE YOUR RAPID ACTIONS!"
    L0_2(L1_2)
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.opened
  L0_2 = L0_2(L1_2)
  if L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = false
  L2_2 = preferite
  L2_2 = #L2_2
  if 0 == L2_2 then
    L1_2 = true
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = 0
  if L1_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "You dont have rapid action in your list."
    L3_2(L4_2, L5_2)
  else
    L3_2 = 1
    L4_2 = 1
    L5_2 = preferite
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = "["
      L9_2 = L3_2
      L10_2 = "] "
      L11_2 = preferite
      L11_2 = L11_2[L7_2]
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
      L3_2 = L3_2 + 1
      L2_2 = L2_2 + 1
      L9_2 = exports
      L9_2 = L9_2.striano_fastmenu
      L10_2 = L9_2
      L9_2 = L9_2.addMenuItem
      L11_2 = L8_2
      function L12_2()
        local L0_3, L1_3, L2_3
        L0_3 = ExecuteCommand
        L1_3 = preferite
        L2_3 = L7_2
        L1_3 = L1_3[L2_3]
        L0_3(L1_3)
      end
      L13_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = "Remove Rapid Command"
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = preferite
    L0_3 = #L0_3
    if L0_3 <= 3 then
      L0_3 = exports
      L0_3 = L0_3.striano_combat
      L1_3 = L0_3
      L0_3 = L0_3.submex
      L2_3 = "You need to have min. 3 rapid actions."
      L0_3(L1_3, L2_3)
    else
      L0_3 = CreateThread
      function L1_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
        L0_4 = OpenInput
        L1_4 = "Insert a valid ID from the list."
        L0_4 = L0_4(L1_4)
        L1_4 = tonumber
        L2_4 = L0_4
        L1_4 = L1_4(L2_4)
        L2_4 = preferite
        L2_4 = L2_4[L1_4]
        if nil ~= L2_4 then
          L2_4 = preferite
          L2_4 = #L2_4
          if not (L1_4 > L2_4) then
            goto lbl_21
          end
        end
        L2_4 = exports
        L2_4 = L2_4.striano_combat
        L3_4 = L2_4
        L2_4 = L2_4.submex
        L4_4 = "ID not found in list."
        L2_4(L3_4, L4_4)
        goto lbl_48
        ::lbl_21::
        L2_4 = exports
        L2_4 = L2_4.striano_combat
        L3_4 = L2_4
        L2_4 = L2_4.submex
        L4_4 = "Rapid Action ID "
        L5_4 = L1_4
        L6_4 = " ("
        L7_4 = preferite
        L7_4 = L7_4[L1_4]
        L8_4 = ") deleted."
        L4_4 = L4_4 .. L5_4 .. L6_4 .. L7_4 .. L8_4
        L2_4(L3_4, L4_4)
        L2_4 = table
        L2_4 = L2_4.remove
        L3_4 = preferite
        L4_4 = L1_4
        L2_4(L3_4, L4_4)
        L2_4 = exports
        L2_4 = L2_4.striano_core
        L3_4 = L2_4
        L2_4 = L2_4.TriggerServerCallback
        L4_4 = "devanim:updateAnim"
        function L5_4(A0_5)
          local L1_5
        end
        L6_4 = preferite
        L2_4(L3_4, L4_4, L5_4, L6_4)
        index2 = 1
        L2_4 = ExecuteCommand
        L3_4 = "rapide"
        L2_4(L3_4)
        ::lbl_48::
      end
      L0_3(L1_3)
    end
  end
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = "Add New Rapid Command"
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = MAXRAPIDE
    if L0_3 >= L1_3 then
      L0_3 = exports
      L0_3 = L0_3.striano_combat
      L1_3 = L0_3
      L0_3 = L0_3.submex
      L2_3 = "Rapid action full."
      L0_3(L1_3, L2_3)
    else
      L0_3 = CreateThread
      function L1_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
        L0_4 = Wait
        L1_4 = 125
        L0_4(L1_4)
        L0_4 = OpenInput
        L1_4 = "Insert rapid command without slash"
        L0_4 = L0_4(L1_4)
        if nil ~= L0_4 then
          L1_4 = #L0_4
          if not (L1_4 < 2) then
            L1_4 = #L0_4
            if not (L1_4 > 16) then
              goto lbl_21
            end
          end
        end
        L1_4 = exports
        L1_4 = L1_4.striano_combat
        L2_4 = L1_4
        L1_4 = L1_4.submex
        L3_4 = "Invalid command name."
        L1_4(L2_4, L3_4)
        goto lbl_65
        ::lbl_21::
        L1_4 = false
        L2_4 = 1
        L3_4 = preferite
        L3_4 = #L3_4
        L4_4 = 1
        for L5_4 = L2_4, L3_4, L4_4 do
          L6_4 = preferite
          L6_4 = L6_4[L5_4]
          L7_4 = stringa
          if L6_4 == L7_4 then
            L1_4 = true
          end
        end
        if not L1_4 then
          L2_4 = exports
          L2_4 = L2_4.striano_combat
          L3_4 = L2_4
          L2_4 = L2_4.submex
          L4_4 = "Rapid action /"
          L5_4 = L0_4
          L6_4 = " added."
          L4_4 = L4_4 .. L5_4 .. L6_4
          L2_4(L3_4, L4_4)
          L2_4 = table
          L2_4 = L2_4.insert
          L3_4 = preferite
          L4_4 = L0_4
          L2_4(L3_4, L4_4)
          L2_4 = exports
          L2_4 = L2_4.striano_core
          L3_4 = L2_4
          L2_4 = L2_4.TriggerServerCallback
          L4_4 = "devanim:updateAnim"
          function L5_4(A0_5)
            local L1_5
          end
          L6_4 = preferite
          L2_4(L3_4, L4_4, L5_4, L6_4)
          L2_4 = ExecuteCommand
          L3_4 = "rapide"
          L2_4(L3_4)
        else
          L2_4 = exports
          L2_4 = L2_4.striano_combat
          L3_4 = L2_4
          L2_4 = L2_4.submex
          L4_4 = "This rapid action already exists."
          L2_4(L3_4, L4_4)
        end
        ::lbl_65::
      end
      L0_3(L1_3)
    end
  end
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.openMenu
  L3_2(L4_2)
end
OpenPreferite = L0_1
imDEAD = false
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedDeadOrDying
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        goto lbl_25
      end
    end
    L1_2 = IsPedHuman
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = imDEAD
      if not L1_2 then
        imDEAD = true
        L1_2 = ChiudiTuttoRapid
        L1_2()
        goto lbl_32
        ::lbl_25::
        L1_2 = imDEAD
        if L1_2 then
          imDEAD = false
          L1_2 = Wait
          L2_2 = 2000
          L1_2(L2_2)
        end
      end
    end
    ::lbl_32::
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L0_1(L1_1)
L0_1 = exports
L1_1 = "addazionerapida"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Invalid rapid action."
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = preferite
  L1_2 = #L1_2
  L2_2 = MAXRAPIDE
  if L1_2 >= L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Rapid actions list full."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = false
  L3_2 = 1
  L4_2 = preferite
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = preferite
    L7_2 = L7_2[L6_2]
    if L7_2 == A0_2 then
      L2_2 = true
      break
    end
  end
  if L2_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submex
    L5_2 = "This rapid action already exists in list."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = preferite
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.submex
  L5_2 = "Rapid action /"
  L6_2 = A0_2
  L7_2 = " added."
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L3_2 = DatabaseEnabled
  if L3_2 then
    L3_2 = DevAnim_Save
    L4_2 = preferite
    function L5_2(A0_3)
      local L1_3, L2_3
      if not A0_3 then
        L1_3 = print
        L2_3 = "[striano_rapidactions] Error to update and save the list!"
        L1_3(L2_3)
      end
    end
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  if A0_2 then
    L2_2 = timerDev
    if -1 == L2_2 then
      L1_2 = true
    end
  end
  if not L1_2 then
    L2_2 = SecondiAttesa
    timerDev = L2_2
    L2_2 = index2
    if 0 == L2_2 then
    else
      L2_2 = string
      L2_2 = L2_2.find
      L3_2 = preferite
      L4_2 = index2
      L3_2 = L3_2[L4_2]
      L4_2 = "e "
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = ExecuteCommand
        L3_2 = preferite
        L4_2 = index2
        L3_2 = L3_2[L4_2]
        L2_2(L3_2)
        L2_2 = ChiudiTuttoRapid
        L2_2()
      else
        L2_2 = ExecuteCommand
        L3_2 = preferite
        L4_2 = index2
        L3_2 = L3_2[L4_2]
        L2_2(L3_2)
      end
    end
  end
end
PlayCommand = L0_1
L0_1 = exports
L1_1 = "devanimopen"
function L2_1()
  local L0_2, L1_2
  L0_2 = index2
  if 0 == L0_2 then
    L0_2 = false
    return L0_2
  else
    L0_2 = true
    return L0_2
  end
end
L0_1(L1_1, L2_1)
