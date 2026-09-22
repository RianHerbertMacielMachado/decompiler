local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1
currentwalkingstyle = "default"
function L0_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = ClonedPedSit
    if not L0_2 then
      goto lbl_17
    end
    L0_2 = DoesEntityExist
    L1_2 = ClonedPedSit
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_17
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_17::
  L0_2 = true
  return L0_2
end
canOpenEmote = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if L0_2 > 0 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
canPlacePeds = L0_1
L0_1 = RegisterKeyMapping
L1_1 = "emotes"
L2_1 = "Emotes Menu"
L3_1 = "keyboard"
L4_1 = "f3"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterCommand
L1_1 = "emotes"
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = ShowMenuAnim
  L2_2()
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.OpenInput
  L3_2 = A0_2
  L4_2 = ""
  L5_2 = {}
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
OpenInput = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = OpenInput
  L1_2 = "Search..."
  L0_2 = L0_2(L1_2)
  L1_2 = tostring
  L2_2 = L0_2 or L2_2
  if not L0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.lower
  L1_2 = L1_2(L2_2)
  L0_2 = L1_2
  if "" ~= L0_2 then
    L1_2 = #L0_2
    if not (L1_2 < 3) then
      goto lbl_21
    end
  end
  L1_2 = ExecuteCommand
  L2_2 = "animcat"
  L1_2(L2_2)
  do return end
  ::lbl_21::
  L1_2 = {}
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = SortAnimList
    L2_3 = GetEmoteTable
    L3_3 = A0_3
    L4_3 = nil
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L2_3(L3_3, L4_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L2_3 = 1
    L3_3 = #L1_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L1_3[L5_3]
      if L6_3 then
        L6_3 = L1_3[L5_3]
        L6_3 = L6_3.label
        if L6_3 then
          L6_3 = L1_3[L5_3]
          L6_3 = L6_3.value
          if L6_3 then
            L6_3 = L1_2
            L6_3 = #L6_3
            L7_3 = L6_3 + 1
            L6_3 = L1_2
            L8_3 = {}
            L9_3 = L1_3[L5_3]
            L9_3 = L9_3.label
            L8_3.label = L9_3
            L9_3 = L1_3[L5_3]
            L9_3 = L9_3.value
            L8_3.value = L9_3
            L6_3[L7_3] = L8_3
          end
        end
      end
    end
  end
  L3_2 = L2_2
  L4_2 = DP
  L4_2 = L4_2.Emotes
  L3_2(L4_2)
  L3_2 = L2_2
  L4_2 = DP
  L4_2 = L4_2.Prays
  L3_2(L4_2)
  L3_2 = L2_2
  L4_2 = DP
  L4_2 = L4_2.Seduto
  L3_2(L4_2)
  L3_2 = L2_2
  L4_2 = DP
  L4_2 = L4_2.Lavori
  L3_2(L4_2)
  L3_2 = L2_2
  L4_2 = DP
  L4_2 = L4_2.Dances
  L3_2(L4_2)
  L3_2 = L2_2
  L4_2 = DP
  L4_2 = L4_2.Adult
  L3_2(L4_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = tostring
    L9_2 = L1_2[L7_2]
    L9_2 = L9_2.label
    if not L9_2 then
      L9_2 = ""
    end
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.lower
    L8_2 = L8_2(L9_2)
    L9_2 = tostring
    L10_2 = L1_2[L7_2]
    L10_2 = L10_2.value
    if not L10_2 then
      L10_2 = ""
    end
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2
    L9_2 = L9_2.lower
    L9_2 = L9_2(L10_2)
    L11_2 = L8_2
    L10_2 = L8_2.find
    L12_2 = L0_2
    L13_2 = 1
    L14_2 = true
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    if not L10_2 then
      L11_2 = L9_2
      L10_2 = L9_2.find
      L12_2 = L0_2
      L13_2 = 1
      L14_2 = true
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      if not L10_2 then
        goto lbl_91
      end
    end
    L10_2 = #L3_2
    L10_2 = L10_2 + 1
    L11_2 = L1_2[L7_2]
    L3_2[L10_2] = L11_2
    ::lbl_91::
  end
  L4_2 = SortAnimList
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = OpenAnimFastMenu
  L5_2 = "Search result ["
  L6_2 = #L3_2
  L7_2 = "]"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L3_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
end
SearchAllAnimsFastMenu = L0_1
L0_1 = RegisterNetEvent
L1_1 = "searchAnimFastMenu"
function L2_1()
  local L0_2, L1_2
  L0_2 = SearchAllAnimsFastMenu
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "animcat"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  PedMenuZoomMode = "body"
  L0_2 = ShowPedMenu
  L0_2()
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = {}
  L1_2.label = "SEARCH ANIMS"
  L1_2.event = "searchAnimFastMenu"
  L2_2 = {}
  L3_2 = "FULL LIST [%s]"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = CountAnims
  L6_2 = DP
  L6_2 = L6_2.Emotes
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2.label = L3_2
  L2_2.cmd = "animlist"
  L3_2 = {}
  L4_2 = "ANIM PRAY [%s]"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = CountAnims
  L7_2 = DP
  L7_2 = L7_2.Prays
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2.label = L4_2
  L3_2.cmd = "prays"
  L4_2 = {}
  L5_2 = "ANIM SIT [%s]"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = CountAnims
  L8_2 = DP
  L8_2 = L8_2.Seduto
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2.label = L5_2
  L4_2.cmd = "animseduto"
  L5_2 = {}
  L6_2 = "ANIM WORK [%s]"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = CountAnims
  L9_2 = DP
  L9_2 = L9_2.Lavori
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2.label = L6_2
  L5_2.cmd = "animlavori"
  L6_2 = {}
  L7_2 = "ANIM DANCE [%s]"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = CountAnims
  L10_2 = DP
  L10_2 = L10_2.Dances
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.label = L7_2
  L6_2.cmd = "ballare"
  L7_2 = {}
  L8_2 = "ANIM +18 [%s]"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = CountAnims
  L11_2 = DP
  L11_2 = L11_2.Adult
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L7_2.label = L8_2
  L7_2.cmd = "animadult"
  L8_2 = {}
  L9_2 = "FACE ANIMS [%s]"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = CountAnims
  L12_2 = DP
  L12_2 = L12_2.Expressions
  L11_2, L12_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.label = L9_2
  L8_2.cmd = "espressioni"
  L9_2 = {}
  L9_2.label = "WALK STYLE"
  L9_2.cmd = "apriCamminate"
  L10_2 = {}
  L10_2.label = "ADD LAST AS RAPID"
  L10_2.cmd = "lastAsRapid"
  L11_2 = {}
  L11_2.label = "RAPID ACTIONS"
  L11_2.cmd = "apriRapide"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L0_2[10] = L10_2
  L0_2[11] = L11_2
  L1_2 = ipairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItem
    L9_2 = L6_2.label
    function L10_2()
      local L0_3, L1_3
      L0_3 = L6_2.cmd
      if L0_3 then
        L0_3 = ExecuteCommand
        L1_3 = L6_2.cmd
        L0_3(L1_3)
      else
        L0_3 = L6_2.event
        if L0_3 then
          L0_3 = TriggerEvent
          L1_3 = L6_2.event
          L0_3(L1_3)
        end
      end
    end
    L11_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "espressioni"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  PedMenuZoomMode = "face"
  L0_2 = SortAnimList
  L1_2 = GetEmoteTable
  L2_2 = DP
  L2_2 = L2_2.Expressions
  L3_2 = true
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "< ("
  L4_2 = #L0_2
  L5_2 = " Facial Anims)"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "animcat"
    L0_3(L1_3)
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L5_2 = L5_2.value
    L6_2 = L0_2[L4_2]
    L6_2 = L6_2.label
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItemAdvanced
    L9_2 = {}
    L10_2 = "["
    L11_2 = L4_2
    L12_2 = "] "
    L13_2 = L6_2
    L14_2 = " (/e "
    L15_2 = L5_2
    L16_2 = ")"
    L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L9_2.label = L10_2
    L9_2.autoClose = false
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = ShowPed
      if L0_3 then
        L0_3 = ClonedPed
        if L0_3 then
          L0_3 = DoesEntityExist
          L1_3 = ClonedPed
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = SetFacialIdleAnimOverride
            L1_3 = ClonedPed
            L2_3 = L5_2
            L3_3 = 0
            L0_3(L1_3, L2_3, L3_3)
          end
        end
      end
    end
    L9_2.onHover = L10_2
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = TriggerEvent
      L1_3 = "FaiEspressione"
      L2_3 = {}
      L3_3 = L5_2
      L2_3[1] = L3_3
      L0_3(L1_3, L2_3)
    end
    L9_2.onClick = L10_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.clearMenu
  L3_2(L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = "< "
  L6_2 = A0_2
  L5_2 = L5_2 .. L6_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "animcat"
    L0_3(L1_3)
  end
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    if A2_2 then
      L7_2 = A1_2[L6_2]
      L7_2 = L7_2.label
      if L7_2 then
        goto lbl_26
      end
    end
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.value
    ::lbl_26::
    if A2_2 then
      L8_2 = "/e "
      L9_2 = A1_2[L6_2]
      L9_2 = L9_2.label
      L8_2 = L8_2 .. L9_2
      if L8_2 then
        goto lbl_41
      end
    end
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.label
    L9_2 = " (/e "
    L10_2 = A1_2[L6_2]
    L10_2 = L10_2.value
    L11_2 = ")"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
    ::lbl_41::
    L9_2 = exports
    L9_2 = L9_2.striano_fastmenu
    L10_2 = L9_2
    L9_2 = L9_2.addMenuItemAdvanced
    L11_2 = {}
    L12_2 = "["
    L13_2 = L6_2
    L14_2 = "] "
    L15_2 = L8_2
    L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
    L11_2.label = L12_2
    L11_2.autoClose = false
    function L12_2()
      local L0_3, L1_3
      L0_3 = ShowPed
      if L0_3 then
        L0_3 = ClonedPed
        if L0_3 then
          L0_3 = DoesEntityExist
          L1_3 = ClonedPed
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = ClearPedTasksImmediately
            L1_3 = ClonedPed
            L0_3(L1_3)
            L0_3 = EmoteCommandStart
            L1_3 = L7_2
            L0_3(L1_3)
          end
        end
      end
    end
    L11_2.onHover = L12_2
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = TriggerEvent
      L1_3 = "FaiAnimazione"
      L2_3 = {}
      L3_3 = L7_2
      L2_3[1] = L3_3
      L0_3(L1_3, L2_3)
    end
    L11_2.onClick = L12_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.openMenu
  L3_2(L4_2)
end
OpenAnimFastMenu = L0_1
L0_1 = RegisterCommand
L1_1 = "prays"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SortAnimList
  L1_2 = GetEmoteTable
  L2_2 = DP
  L2_2 = L2_2.Prays
  L3_2 = nil
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = OpenAnimFastMenu
  L2_2 = "("
  L3_2 = #L0_2
  L4_2 = " anims)"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = L0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "ballare"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SortAnimList
  L1_2 = GetEmoteTable
  L2_2 = DP
  L2_2 = L2_2.Dances
  L3_2 = nil
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = OpenAnimFastMenu
  L2_2 = "("
  L3_2 = #L0_2
  L4_2 = " anims)"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = L0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "animlavori"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SortAnimList
  L1_2 = GetEmoteTable
  L2_2 = DP
  L2_2 = L2_2.Lavori
  L3_2 = nil
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = OpenAnimFastMenu
  L2_2 = "("
  L3_2 = #L0_2
  L4_2 = " anims)"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = L0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "animseduto"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SortAnimList
  L1_2 = GetEmoteTable
  L2_2 = DP
  L2_2 = L2_2.Seduto
  L3_2 = nil
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = OpenAnimFastMenu
  L2_2 = "("
  L3_2 = #L0_2
  L4_2 = " anims)"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = L0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "animadult"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SortAnimList
  L1_2 = GetEmoteTable
  L2_2 = DP
  L2_2 = L2_2.Adult
  L3_2 = nil
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = OpenAnimFastMenu
  L2_2 = "("
  L3_2 = #L0_2
  L4_2 = " anims)"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = L0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "camminata"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenWalkMenu
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "camminate"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenWalkMenu
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "walk"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenWalkMenu
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "walks"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenWalkMenu
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = {}
L1_1.label = "Default"
L1_1.value = "default"
L2_1 = {}
L2_1.label = "MP"
L2_1.value = "move_m@multiplayer"
L3_1 = {}
L3_1.label = "Casual"
L3_1.value = "move_m@casual@a"
L4_1 = {}
L4_1.label = "Casual2"
L4_1.value = "move_m@casual@b"
L5_1 = {}
L5_1.label = "Casual3"
L5_1.value = "move_m@casual@c"
L6_1 = {}
L6_1.label = "Casual4"
L6_1.value = "move_m@casual@d"
L7_1 = {}
L7_1.label = "Casual5"
L7_1.value = "move_m@casual@e"
L8_1 = {}
L8_1.label = "Casual6"
L8_1.value = "move_m@casual@f"
L9_1 = {}
L9_1.label = "Casual7"
L9_1.value = "move_m@generic"
L10_1 = {}
L10_1.label = "Casual8"
L10_1.value = "move_f@generic"
L11_1 = {}
L11_1.label = "Alien"
L11_1.value = "move_m@alien"
L12_1 = {}
L12_1.label = "Confident"
L12_1.value = "move_m@confident"
L13_1 = {}
L13_1.label = "Business"
L13_1.value = "move_m@business@a"
L14_1 = {}
L14_1.label = "Business2"
L14_1.value = "move_m@business@b"
L15_1 = {}
L15_1.label = "Business3"
L15_1.value = "move_m@business@c"
L16_1 = {}
L16_1.label = "Femminy"
L16_1.value = "move_m@femme@"
L17_1 = {}
L17_1.label = "Fast"
L17_1.value = "move_m@quick"
L18_1 = {}
L18_1.label = "Heavy"
L18_1.value = "move_m@bag"
L19_1 = {}
L19_1.label = "Muscle"
L19_1.value = "move_m@muscle@a"
L20_1 = {}
L20_1.label = "Brave"
L20_1.value = "move_m@coward"
L21_1 = {}
L21_1.label = "Brave2"
L21_1.value = "move_m@brave"
L22_1 = {}
L22_1.label = "Brave3"
L22_1.value = "move_m@brave@a"
L23_1 = {}
L23_1.label = "Drunk"
L23_1.value = "move_m@drunk@slightlydrunk"
L24_1 = {}
L24_1.label = "Drunk2"
L24_1.value = "move_m@drunk@a"
L25_1 = {}
L25_1.label = "Drunk3"
L25_1.value = "move_m@drunk@moderatedrunk"
L26_1 = {}
L26_1.label = "Drunk4"
L26_1.value = "move_m@drunk@moderatedrunk_head_up"
L27_1 = {}
L27_1.label = "Drunk5"
L27_1.value = "move_m@drunk@verydrunk"
L28_1 = {}
L28_1.label = "Elegant "
L28_1.value = "move_m@posh@"
L29_1 = {}
L29_1.label = "Hobo"
L29_1.value = "move_m@hobo@a"
L30_1 = {}
L30_1.label = "Hobo2"
L30_1.value = "move_m@hobo@b"
L31_1 = {}
L31_1.label = "Rich"
L31_1.value = "move_m@money"
L32_1 = {}
L32_1.label = "Shady"
L32_1.value = "move_m@shadyped@a"
L33_1 = {}
L33_1.label = "Beltef"
L33_1.value = "move_f@tool_belt@a"
L34_1 = {}
L34_1.label = "Fammy"
L34_1.value = "move_f@arrogant@a"
L35_1 = {}
L35_1.label = "Female Base"
L35_1.value = "move_f@multiplayer"
L36_1 = {}
L36_1.label = "Femmy"
L36_1.value = "move_f@femme@"
L37_1 = {}
L37_1.label = "Heel"
L37_1.value = "move_f@heels@c"
L38_1 = {}
L38_1.label = "Heel2"
L38_1.value = "move_f@heels@d"
L39_1 = {}
L39_1.label = "Hiking2"
L39_1.value = "move_f@hiking"
L40_1 = {}
L40_1.label = "Flee"
L40_1.value = "move_f@scared"
L41_1 = {}
L41_1.label = "Elegant2"
L41_1.value = "move_f@posh@"
L42_1 = {}
L42_1.label = "Buzzed"
L42_1.value = "move_m@buzzed"
L43_1 = {}
L43_1.label = "Casey"
L43_1.value = "move_casey"
L44_1 = {}
L44_1.label = "Sad"
L44_1.value = "move_m@depressed@a"
L45_1 = {}
L45_1.label = "Sad2"
L45_1.value = "move_m@depressed@b"
L46_1 = {}
L46_1.label = "Big"
L46_1.value = "move_m@fat@a"
L47_1 = {}
L47_1.label = "Fire"
L47_1.value = "move_m@fire"
L48_1 = {}
L48_1.label = "Belt"
L48_1.value = "move_m@tool_belt@a"
L49_1 = {}
L49_1.label = "Truth"
L49_1.value = "move_m@hipster@a"
L50_1 = {}
L50_1.label = "Bulky"
L50_1.value = "move_m@fat@bulky"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L0_1[14] = L14_1
L0_1[15] = L15_1
L0_1[16] = L16_1
L0_1[17] = L17_1
L0_1[18] = L18_1
L0_1[19] = L19_1
L0_1[20] = L20_1
L0_1[21] = L21_1
L0_1[22] = L22_1
L0_1[23] = L23_1
L0_1[24] = L24_1
L0_1[25] = L25_1
L0_1[26] = L26_1
L0_1[27] = L27_1
L0_1[28] = L28_1
L0_1[29] = L29_1
L0_1[30] = L30_1
L0_1[31] = L31_1
L0_1[32] = L32_1
L0_1[33] = L33_1
L0_1[34] = L34_1
L0_1[35] = L35_1
L0_1[36] = L36_1
L0_1[37] = L37_1
L0_1[38] = L38_1
L0_1[39] = L39_1
L0_1[40] = L40_1
L0_1[41] = L41_1
L0_1[42] = L42_1
L0_1[43] = L43_1
L0_1[44] = L44_1
L0_1[45] = L45_1
L0_1[46] = L46_1
L0_1[47] = L47_1
L0_1[48] = L48_1
L0_1[49] = L49_1
L0_1[50] = L50_1
L1_1 = {}
L1_1.label = "High"
L1_1.value = "move_f@maneater"
L2_1 = {}
L2_1.label = "ChiChi"
L2_1.value = "move_f@chichi"
L3_1 = {}
L3_1.label = "Sad3"
L3_1.value = "move_f@depressed@a"
L4_1 = {}
L4_1.label = "Sad4"
L4_1.value = "move_f@depressed@c"
L5_1 = {}
L5_1.label = "Big2"
L5_1.value = "move_f@fat@a"
L6_1 = {}
L6_1.label = "Big4"
L6_1.value = "move_f@fat@a_no_add"
L7_1 = {}
L7_1.label = "Gangster"
L7_1.value = "move_m@gangster@generic"
L8_1 = {}
L8_1.label = "Gangster2"
L8_1.value = "move_m@gangster@ng"
L9_1 = {}
L9_1.label = "Gangster3"
L9_1.value = "move_m@gangster@var_e"
L10_1 = {}
L10_1.label = "Gangster4"
L10_1.value = "move_m@gangster@var_f"
L11_1 = {}
L11_1.label = "Gangster5"
L11_1.value = "move_m@gangster@var_i"
L12_1 = {}
L12_1.label = "Gangster6"
L12_1.value = "move_gangster"
L13_1 = {}
L13_1.label = "Gangster7"
L13_1.value = "move_m@gangster@var_a"
L14_1 = {}
L14_1.label = "Gangster8"
L14_1.value = "move_m@gangster@var_b"
L15_1 = {}
L15_1.label = "Gangster9"
L15_1.value = "move_m@gangster@var_c"
L16_1 = {}
L16_1.label = "Gangster10"
L16_1.value = "move_m@gangster@var_d"
L17_1 = {}
L17_1.label = "Gangster11"
L17_1.value = "move_m@gangster@var_g"
L18_1 = {}
L18_1.label = "Gangster12"
L18_1.value = "move_m@gangster@var_h"
L19_1 = {}
L19_1.label = "Gangster13"
L19_1.value = "move_m@gangster@var_j"
L20_1 = {}
L20_1.label = "Gangster14"
L20_1.value = "move_m@gangster@var_k"
L21_1 = {}
L21_1.label = "Injured"
L21_1.value = "move_m@injured"
L22_1 = {}
L22_1.label = "Injured2"
L22_1.value = "move_f@injured"
L23_1 = {}
L23_1.label = "Scared"
L23_1.value = "move_f@flee@a"
L24_1 = {}
L24_1.label = "Scared2"
L24_1.value = "move_f@flee@c"
L25_1 = {}
L25_1.label = "Scared3"
L25_1.value = "move_m@flee@a"
L26_1 = {}
L26_1.label = "Scared4"
L26_1.value = "move_m@flee@b"
L27_1 = {}
L27_1.label = "Scared5"
L27_1.value = "move_m@flee@c"
L28_1 = {}
L28_1.label = "Scared6"
L28_1.value = "move_m@intimidation@1h"
L29_1 = {}
L29_1.label = "Scared7"
L29_1.value = "move_m@intimidation@cop@unarmed"
L30_1 = {}
L30_1.label = "Scared8"
L30_1.value = "move_m@intimidation@unarmed"
L31_1 = {}
L31_1.label = "Janitor"
L31_1.value = "move_p_m_zero_janitor"
L32_1 = {}
L32_1.label = "Janitor2"
L32_1.value = "move_p_m_zero_slow"
L33_1 = {}
L33_1.label = "Jog"
L33_1.value = "move_m@jog@"
L34_1 = {}
L34_1.label = "Lester"
L34_1.value = "move_heist_lester"
L35_1 = {}
L35_1.label = "Lester2"
L35_1.value = "move_lester_caneup"
L36_1 = {}
L36_1.label = "Medico"
L36_1.value = "move_paramedic"
L37_1 = {}
L37_1.label = "Svelto"
L37_1.value = "move_m@sassy"
L38_1 = {}
L38_1.label = "Svelto2"
L38_1.value = "move_f@sassy"
L39_1 = {}
L39_1.label = "Sadly"
L39_1.value = "move_m@sad@a"
L40_1 = {}
L40_1.label = "Sadly2"
L40_1.value = "move_m@sad@b"
L41_1 = {}
L41_1.label = "Sadly3"
L41_1.value = "move_m@sad@c"
L42_1 = {}
L42_1.label = "Sadly4"
L42_1.value = "move_f@sad@a"
L43_1 = {}
L43_1.label = "Sadly5"
L43_1.value = "move_f@sad@b"
L44_1 = {}
L44_1.label = "Slow"
L44_1.value = "move_characters@jimmy@slow@"
L45_1 = {}
L45_1.label = "Slow2"
L45_1.value = "move_m@leaf_blower"
L46_1 = {}
L46_1.label = "Sexy"
L46_1.value = "move_f@sexy@a"
L47_1 = {}
L47_1.label = "Sexy2"
L47_1.value = "move_f@stripper@a"
L48_1 = {}
L48_1.label = "Conor"
L48_1.value = "move_m@swagger"
L49_1 = {}
L49_1.label = "Conor2"
L49_1.value = "move_m@swagger@b"
L50_1 = {}
L50_1.label = "Harder"
L50_1.value = "move_m@tough_guy@"
L0_1[51] = L1_1
L0_1[52] = L2_1
L0_1[53] = L3_1
L0_1[54] = L4_1
L0_1[55] = L5_1
L0_1[56] = L6_1
L0_1[57] = L7_1
L0_1[58] = L8_1
L0_1[59] = L9_1
L0_1[60] = L10_1
L0_1[61] = L11_1
L0_1[62] = L12_1
L0_1[63] = L13_1
L0_1[64] = L14_1
L0_1[65] = L15_1
L0_1[66] = L16_1
L0_1[67] = L17_1
L0_1[68] = L18_1
L0_1[69] = L19_1
L0_1[70] = L20_1
L0_1[71] = L21_1
L0_1[72] = L22_1
L0_1[73] = L23_1
L0_1[74] = L24_1
L0_1[75] = L25_1
L0_1[76] = L26_1
L0_1[77] = L27_1
L0_1[78] = L28_1
L0_1[79] = L29_1
L0_1[80] = L30_1
L0_1[81] = L31_1
L0_1[82] = L32_1
L0_1[83] = L33_1
L0_1[84] = L34_1
L0_1[85] = L35_1
L0_1[86] = L36_1
L0_1[87] = L37_1
L0_1[88] = L38_1
L0_1[89] = L39_1
L0_1[90] = L40_1
L0_1[91] = L41_1
L0_1[92] = L42_1
L0_1[93] = L43_1
L0_1[94] = L44_1
L0_1[95] = L45_1
L0_1[96] = L46_1
L0_1[97] = L47_1
L0_1[98] = L48_1
L0_1[99] = L49_1
L0_1[100] = L50_1
L1_1 = {}
L1_1.label = "Harder2"
L1_1.value = "move_f@tough_guy@"
L2_1 = {}
L2_1.label = "Harder3"
L2_1.value = "clipset@move@trash_fast_turn"
L3_1 = {}
L3_1.label = "Harder4"
L3_1.value = "missfbi4prepp1_garbageman"
L4_1 = {}
L4_1.label = "Harder5"
L4_1.value = "move_characters@tracey"
L5_1 = {}
L5_1.label = "Chubby"
L5_1.value = "move_f@chubby@a"
L6_1 = {}
L6_1.label = "Hurry"
L6_1.value = "move_m@hurry_butch@a"
L7_1 = {}
L7_1.label = "Hurry2"
L7_1.value = "move_m@hurry_butch@b"
L8_1 = {}
L8_1.label = "Hurry3"
L8_1.value = "move_m@hurry_butch@c"
L9_1 = {}
L9_1.label = "Two"
L9_1.value = "move_p_m_two"
L10_1 = {}
L10_1.label = "Dreyfuss"
L10_1.value = "move_dreyfuss"
L11_1 = {}
L11_1.label = "Svelto3"
L11_1.value = "female_fast_runner"
L12_1 = {}
L12_1.label = "Music"
L12_1.value = "anim@move_m@grooving@"
L13_1 = {}
L13_1.label = "Music2"
L13_1.value = "anim@move_f@grooving@"
L14_1 = {}
L14_1.label = "Jackson"
L14_1.value = "move_characters@jimmy@nervous@"
L15_1 = {}
L16_1 = "Michael"
L15_1.label = L16_1
L16_1 = "move_ped_bucket"
L15_1.value = L16_1
L16_1 = {}
L17_1 = "Franklin"
L16_1.label = L17_1
L17_1 = "move_p_m_one"
L16_1.value = L17_1
L17_1 = {}
L18_1 = "Highy4"
L17_1.label = L18_1
L18_1 = "move_chubby"
L17_1.value = L18_1
L18_1 = {}
L19_1 = "Highy"
L18_1.label = L19_1
L19_1 = "move_characters@franklin@fire"
L18_1.value = L19_1
L19_1 = {}
L20_1 = "Highy2"
L19_1.label = L20_1
L20_1 = "move_characters@michael@fire"
L19_1.value = L20_1
L20_1 = {}
L21_1 = "Hiking"
L20_1.label = L21_1
L21_1 = "move_m@hiking"
L20_1.value = L21_1
L21_1 = {}
L22_1 = "Lamar"
L21_1.label = L22_1
L22_1 = "move_characters@lamar"
L21_1.value = L22_1
L22_1 = {}
L23_1 = "Alley"
L22_1.label = L23_1
L23_1 = "anim_group_move_lemar_alley"
L22_1.value = L23_1
L23_1 = {}
L24_1 = "Jimmy"
L23_1.label = L24_1
L24_1 = "move_characters@jimmy"
L23_1.value = L24_1
L24_1 = {}
L25_1 = "Patricia"
L24_1.label = L25_1
L25_1 = "move_characters@patricia"
L24_1.value = L25_1
L25_1 = {}
L26_1 = "Dave"
L25_1.label = L26_1
L26_1 = "move_characters@dave_n"
L25_1.value = L26_1
L26_1 = {}
L27_1 = "Floyd"
L26_1.label = L27_1
L27_1 = "move_characters@floyd"
L26_1.value = L27_1
L27_1 = {}
L28_1 = "Ron"
L27_1.label = L28_1
L28_1 = "move_characters@ron"
L27_1.value = L28_1
L0_1[101] = L1_1
L0_1[102] = L2_1
L0_1[103] = L3_1
L0_1[104] = L4_1
L0_1[105] = L5_1
L0_1[106] = L6_1
L0_1[107] = L7_1
L0_1[108] = L8_1
L0_1[109] = L9_1
L0_1[110] = L10_1
L0_1[111] = L11_1
L0_1[112] = L12_1
L0_1[113] = L13_1
L0_1[114] = L14_1
L0_1[115] = L15_1
L0_1[116] = L16_1
L0_1[117] = L17_1
L0_1[118] = L18_1
L0_1[119] = L19_1
L0_1[120] = L20_1
L0_1[121] = L21_1
L0_1[122] = L22_1
L0_1[123] = L23_1
L0_1[124] = L24_1
L0_1[125] = L25_1
L0_1[126] = L26_1
L0_1[127] = L27_1
stilewalk = L0_1
L0_1 = _ENV
L1_1 = "OpenWalkMenu"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.header = "WALKS STYLE LIST"
  L2_2.subheader = "Press SHIFT to enable mouse selector."
  L2_2.hover_information = "You can reload your main walk style with F5."
  L2_2.icon = "fa-solid fa-user"
  L3_2 = {}
  L3_2.search = true
  L3_2.disabled = false
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2 = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_2
  L3_2 = {}
  L3_2.header = "TEMP WALKS"
  L3_2.subheader = "List of provisional walks."
  L3_2.hover_information = "This type of walk is useful for short scenes, such as simulating injury. You can reload your fixed walk with F5."
  L3_2.icon = "fa-solid fa-male"
  L3_2.event = "camminataProvvisoria"
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = stilewalk
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.label
    L8_2 = L7_2
    L7_2 = L7_2.upper
    L7_2 = L7_2(L8_2)
    L8_2 = L6_2.value
    L9_2 = currentwalkingstyle
    if L8_2 == L9_2 then
      L8_2 = L7_2
      L9_2 = " --> (YOURS)"
      L8_2 = L8_2 .. L9_2
      L7_2 = L8_2
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L0_2
    L10_2 = {}
    L10_2.header = L7_2
    L10_2.subheader = ""
    L10_2.searchable = true
    L10_2.event = "setCamminata"
    L11_2 = {}
    L12_2 = L6_2.value
    L11_2[1] = L12_2
    L10_2.args = L11_2
    L8_2(L9_2, L10_2)
  end
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.moveable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.createMenu
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
L0_1[L1_1] = L2_1
L0_1 = _ENV
L1_1 = "exports"
L0_1 = L0_1[L1_1]
L1_1 = "setcamminata"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.stealth
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L1_2 = setwalkstyleInterior
    L2_2 = currentwalkingstyle
    L1_2(L2_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "w"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2[1]
  if nil == L3_2 then
    return
  end
  L3_2 = ApplicaCamminata
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "shakeoff"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 1
  L2_2 = 7
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "e shakeoff"
  L3_2 = L0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "stopanim"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.isProne
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.IsFollowHandsPropActive
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = exports
  L1_2 = L1_2.striano_boat
  L2_2 = L1_2
  L1_2 = L1_2.getMyBoat
  L1_2 = L1_2(L2_2)
  if nil ~= L1_2 then
    return
  end
  L1_2 = exports
  L1_2 = L1_2.striano_ridehorse
  L2_2 = L1_2
  L1_2 = L1_2.aCavallo
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = cassaChePorto
  if nil ~= L1_2 then
    return
  end
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = "melee@wfire@beast_werewolf_animset"
  L4_2 = "wfire_wmg_werewolf_beast_forward_sprint_anim"
  L5_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "anim@move_m@prisoner_cuffed_fp"
    L4_2 = "aim_low_loop"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = L0_2
      L3_2 = "melee@wfire@beast_werewolf_animset"
      L4_2 = "wfire_wmg_werewolf_beast_forward_idle_clip"
      L5_2 = 1
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = L0_2
        L3_2 = "melee@wfire@beast_werewolf_animset"
        L4_2 = "wfire_wmg_were_beast_intro_roar_v1_clip"
        L5_2 = 1
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = L0_2
          L3_2 = "sefiro_climb_idlestatic"
          L4_2 = "sefiro_climb_idlestatic_clip"
          L5_2 = 1
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_editor
            L2_2 = L1_2
            L1_2 = L1_2.IsPlayerProne
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = exports
              L1_2 = L1_2.striano_editor
              L2_2 = L1_2
              L1_2 = L1_2.stopescando
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = exports
                L1_2 = L1_2.striano_editor
                L2_2 = L1_2
                L1_2 = L1_2.editorattivo
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = exports
                  L1_2 = L1_2.striano_core
                  L2_2 = L1_2
                  L1_2 = L1_2.gettutorial
                  L1_2 = L1_2(L2_2)
                  if L1_2 then
                    L1_2 = 73
                    L2_2 = GetGameTimer
                    L2_2 = L2_2()
                    timerXAnim = L2_2
                    L2_2 = CreateThread
                    function L3_2()
                      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
                      while true do
                        L0_3 = IsControlPressed
                        L1_3 = 0
                        L2_3 = L1_2
                        L0_3 = L0_3(L1_3, L2_3)
                        if not L0_3 then
                          L0_3 = IsDisabledControlPressed
                          L1_3 = 0
                          L2_3 = L1_2
                          L0_3 = L0_3(L1_3, L2_3)
                          if not L0_3 then
                            goto lbl_76
                          end
                        end
                        L0_3 = GetGameTimer
                        L0_3 = L0_3()
                        L1_3 = timerXAnim
                        L0_3 = L0_3 - L1_3
                        L1_3 = 500
                        if L0_3 > L1_3 then
                          L0_3 = GetPedBoneIndex
                          L1_3 = L0_2
                          L2_3 = 12844
                          L0_3 = L0_3(L1_3, L2_3)
                          L1_3 = GetEntityBonePosition_2
                          L2_3 = L0_2
                          L3_3 = L0_3
                          L1_3 = L1_3(L2_3, L3_3)
                          L2_3 = GetEntityCoords
                          L3_3 = L0_2
                          L2_3 = L2_3(L3_3)
                          L3_3 = L1_3.z
                          L4_3 = L2_3.z
                          if L3_3 < L4_3 then
                            L3_3 = exports
                            L3_3 = L3_3.striano_editor
                            L4_3 = L3_3
                            L3_3 = L3_3.IsPlayerProne
                            L3_3 = L3_3(L4_3)
                            if not L3_3 then
                              L3_3 = exports
                              L3_3 = L3_3.striano_editor
                              L4_3 = L3_3
                              L3_3 = L3_3.cloned
                              L3_3 = L3_3(L4_3)
                              if nil == L3_3 then
                                L3_3 = ClearPedTasks
                                L4_3 = L0_2
                                L3_3(L4_3)
                                L3_3 = ClonedPed
                                if L3_3 then
                                  L3_3 = DoesEntityExist
                                  L4_3 = ClonedPed
                                  L3_3 = L3_3(L4_3)
                                  if L3_3 then
                                    L3_3 = ClearPedTasks
                                    L4_3 = ClonedPed
                                    L3_3(L4_3)
                                  end
                                end
                              else
                                L3_3 = ClearPedTasks
                                L4_3 = exports
                                L4_3 = L4_3.striano_editor
                                L5_3 = L4_3
                                L4_3 = L4_3.cloned
                                L4_3, L5_3 = L4_3(L5_3)
                                L3_3(L4_3, L5_3)
                              end
                            end
                          else
                            L3_3 = EmoteCancel
                            L4_3 = true
                            L3_3(L4_3)
                          end
                          timerXAnim = 0
                          do return end
                          goto lbl_81
                          ::lbl_76::
                          L0_3 = EmoteCancel
                          L1_3 = true
                          L0_3(L1_3)
                          timerXAnim = 0
                          return
                        end
                        ::lbl_81::
                        L0_3 = Wait
                        L1_3 = 0
                        L0_3(L1_3)
                      end
                    end
                    L2_2(L3_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "x"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "e c"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterKeyMapping
L1_1 = "stopanim"
L2_1 = "Stop Animation"
L3_1 = "keyboard"
L4_1 = "x"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterCommand
L1_1 = "testata"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = PlayerVicinoPed
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if -1 ~= L3_2 and L4_2 <= 3.0 then
    L5_2 = GetEntityCoords
    L6_2 = GetPlayerPed
    L7_2 = L3_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = GetEntityForwardVector
    L7_2 = GetPlayerPed
    L8_2 = L3_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L7_2 = GetPlayerServerId
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = L6_2 * -1.0
    L9_2 = L5_2 + L9_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    if -1 ~= L7_2 then
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2, L14_2, L15_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L12_2 = vector3
      L13_2 = L8_2
      L14_2 = L9_2
      L15_2 = L10_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L11_2 - L12_2
      L11_2 = #L11_2
      L12_2 = 1.8
      if L11_2 < L12_2 then
        L11_2 = TaskTurnPedToFaceEntity
        L12_2 = PlayerPedId
        L12_2 = L12_2()
        L13_2 = GetPlayerPed
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = 1000
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = Wait
        L12_2 = 1000
        L11_2(L12_2)
        L11_2 = ExecuteCommand
        L12_2 = "e testata"
        L11_2(L12_2)
        L11_2 = Wait
        L12_2 = 1300
        L11_2(L12_2)
        L11_2 = TriggerServerEvent
        L12_2 = "anim:playAnim"
        L13_2 = L7_2
        L14_2 = "malditesta3"
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "schiaffo"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = PlayerVicinoPed
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if -1 ~= L3_2 and L4_2 <= 3.0 then
    L5_2 = GetEntityCoords
    L6_2 = GetPlayerPed
    L7_2 = L3_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = GetEntityForwardVector
    L7_2 = GetPlayerPed
    L8_2 = L3_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L7_2 = GetPlayerServerId
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = L6_2 * -1.0
    L9_2 = L5_2 + L9_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    if -1 ~= L7_2 then
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2, L14_2, L15_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L12_2 = vector3
      L13_2 = L8_2
      L14_2 = L9_2
      L15_2 = L10_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L11_2 - L12_2
      L11_2 = #L11_2
      L12_2 = 1.8
      if L11_2 < L12_2 then
        L11_2 = TaskTurnPedToFaceEntity
        L12_2 = PlayerPedId
        L12_2 = L12_2()
        L13_2 = GetPlayerPed
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = 1000
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = Wait
        L12_2 = 1000
        L11_2(L12_2)
        L11_2 = ExecuteCommand
        L12_2 = "e slap"
        L11_2(L12_2)
        L11_2 = Wait
        L12_2 = 500
        L11_2(L12_2)
        L11_2 = TriggerServerEvent
        L12_2 = "anim:playAnim"
        L13_2 = L7_2
        L14_2 = "malditesta4"
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "mano"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = PlayerVicinoPed
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if -1 ~= L3_2 and L4_2 <= 3.0 then
    L5_2 = GetEntityCoords
    L6_2 = GetPlayerPed
    L7_2 = L3_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = GetEntityForwardVector
    L7_2 = GetPlayerPed
    L8_2 = L3_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L7_2 = GetPlayerServerId
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = L6_2 * -1.0
    L9_2 = L5_2 + L9_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    if -1 ~= L7_2 then
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2, L14_2, L15_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L12_2 = vector3
      L13_2 = L8_2
      L14_2 = L9_2
      L15_2 = L10_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L11_2 - L12_2
      L11_2 = #L11_2
      L12_2 = 1.8
      if L11_2 < L12_2 then
        L11_2 = TaskTurnPedToFaceEntity
        L12_2 = PlayerPedId
        L12_2 = L12_2()
        L13_2 = GetPlayerPed
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = 1000
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = Wait
        L12_2 = 1000
        L11_2(L12_2)
        L11_2 = ExecuteCommand
        L12_2 = "e salve"
        L11_2(L12_2)
        L11_2 = TriggerServerEvent
        L12_2 = "anim:playAnim"
        L13_2 = L7_2
        L14_2 = "salve"
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "e"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = EmoteCommandStart
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "emote"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = EmoteCommandStart
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "face"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = EspCommandStart
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "espr"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = EspCommandStart
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "resetface"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ClearFacialClipsetOverride
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L2_2(L3_2)
  L2_2 = ClearFacialIdleAnimOverride
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "addazione"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = lastAnim
  if nil == L0_2 then
    L0_2 = notify
    L1_2 = "No anim selected from list to add as rapid."
    L0_2(L1_2)
    return
  end
  L0_2 = OpenInput
  L1_2 = "Add "
  L2_2 = lastAnim
  L3_2 = " to rapid? Type \"yes\""
  L1_2 = L1_2 .. L2_2 .. L3_2
  L0_2 = L0_2(L1_2)
  L1_2 = tostring
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if "si" == L1_2 or "yes" == L1_2 or "Yes" == L1_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_editor
    L3_2 = L2_2
    L2_2 = L2_2.addazionerapida
    L4_2 = "e "
    L5_2 = data
    L5_2 = L5_2.anim
    L5_2 = L5_2.value
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = _ENV
L1_1 = "exports"
L0_1 = L0_1[L1_1]
L1_1 = "setbloccoanim"
function L2_1(A0_2)
  local L1_2
  bloccoAnim = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = _ENV
L1_1 = "exports"
L0_1 = L0_1[L1_1]
L1_1 = "getbloccoanim"
function L2_1()
  local L0_2, L1_2
  L0_2 = bloccoAnim
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "getbloccoanim"
function L2_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.getbloccoanim
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = print
    L1_2 = "A"
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "B"
    L0_2(L1_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "striscia"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.inCombat
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedSwimming
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedSwimmingUnderWater
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedRagdoll
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedGettingUp
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsPedFatallyInjured
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = exports
              L1_2 = L1_2.striano_core
              L2_2 = L1_2
              L1_2 = L1_2.gettutorial
              L1_2 = L1_2(L2_2)
              if L1_2 then
                goto lbl_42
              end
            end
          end
        end
      end
    end
  end
  isProne = false
  do return end
  ::lbl_42::
  L1_2 = isProne
  if not L1_2 then
    L1_2 = isProne
    if not L1_2 then
      L1_2 = IsEntityPositionFrozen
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsNuiFocused
        L1_2 = L1_2()
        if not L1_2 then
          L1_2 = IsPedHuman
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if L1_2 then
            L1_2 = IsObjectTooClose
            L1_2, L2_2 = L1_2()
            if L1_2 then
              L3_2 = print
              L4_2 = "CRAWL LOCKED BY ENTITY!"
              L3_2(L4_2)
              L3_2 = ExecuteCommand
              L4_2 = "e shrug5"
              L3_2(L4_2)
              return
            end
            L3_2 = ClearPedTasks
            L4_2 = L0_2
            L3_2(L4_2)
            L3_2 = ClearPedSecondaryTask
            L4_2 = L0_2
            L3_2(L4_2)
            isProne = true
            L3_2 = CreateThread
            function L4_2()
              local L0_3, L1_3
              L0_3 = CrawlLoop
              L0_3()
            end
            L3_2(L4_2)
            return
          end
        end
      end
    end
  else
    isProne = false
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterKeyMapping
L1_1 = "striscia"
L2_1 = "Striscia"
L3_1 = "keyboard"
L4_1 = "RCONTROL"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = _ENV
L1_1 = "exports"
L0_1 = L0_1[L1_1]
L1_1 = "isProne"
function L2_1()
  local L0_2, L1_2
  L0_2 = isProne
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterKeyMapping
L1_1 = "crouch"
L2_1 = "Crouch"
L3_1 = "keyboard"
L4_1 = "C"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterCommand
L1_1 = "crouch"
function L2_1()
  local L0_2, L1_2
  L0_2 = vaiCrouch
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "fixcrouch"
function L2_1()
  local L0_2, L1_2
  L0_2 = AnnullaTuttoCrouch
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "vaiStealth"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = canCrouch
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = IsEntityAttached
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    if not L0_2 then
      L0_2 = SetPedStealthMovement
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = true
      L3_2 = "DEFAULT_ACTION"
      L0_2(L1_2, L2_2, L3_2)
      crouched = false
      inStealth = true
      L0_2 = loopMorte
      L0_2()
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "vaiCrouch"
function L2_1()
  local L0_2, L1_2
  L0_2 = vaiCrouch
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = _ENV
L1_1 = "AnnullaTuttoCrouch"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = inStealth
  if L1_2 then
    L1_2 = SetPedStealthMovement
    L2_2 = L0_2
    L3_2 = false
    L4_2 = "DEFAULT_ACTION"
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = ResetPedMovementClipset
    L2_2 = L0_2
    L3_2 = 0.25
    L1_2(L2_2, L3_2)
    L1_2 = ResetPedStrafeClipset
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = ResetPedWeaponMovementClipset
    L2_2 = L0_2
    L1_2(L2_2)
  end
  crouched = false
  inStealth = false
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = "amb@world_human_bum_wash@male@low@idle_a"
  L4_2 = "idle_a"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 then
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = ClearPedSecondaryTask
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = "get_up@directional@movement@from_knees@standard"
    L2_2 = "getup_l_0"
    L3_2 = faiAnim
    L4_2 = L1_2
    L5_2 = L2_2
    L6_2 = 550
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = Wait
    L4_2 = 50
    L3_2(L4_2)
  end
  L1_2 = Wait
  L2_2 = 50
  L1_2(L2_2)
  L1_2 = TriggerEvent
  L2_2 = "CaricamiCamminata"
  L1_2(L2_2)
end
L0_1[L1_1] = L2_1
L0_1 = RegisterCommand
L1_1 = "animlist"
function L2_1()
  local L0_2, L1_2
  L0_2 = OpenAnimListPage
  L1_2 = 1
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "apriCamminate"
function L2_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 25
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "prova "
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "camminata"
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "apriRapide"
function L2_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "rapide"
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "lastAsRapid"
function L2_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "addazione"
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
L0_1 = _ENV
L1_1 = "notifyCancel"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_ridehorse
  L2_2 = L1_2
  L1_2 = L1_2.ShowInstructionalButtonsTimed
  L3_2 = A0_2
  L4_2 = {}
  L5_2 = 73
  L4_2[1] = L5_2
  L5_2 = 7500
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1[L1_1] = L2_1
L0_1 = _ENV
L1_1 = "notify"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = exports
  L2_2 = L2_2.striano_ridehorse
  L3_2 = L2_2
  L2_2 = L2_2.ShowInstructionalButtonsTimed
  L4_2 = A0_2
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = {}
  end
  L6_2 = 7500
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1[L1_1] = L2_1
L0_1 = _ENV
L1_1 = "ImAdmin"
function L2_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1[L1_1] = L2_1
L0_1 = _ENV
L1_1 = "slide_hashes"
L2_1 = {}
L3_1 = -1833527165
L4_1 = 1333033863
L5_1 = -700658213
L6_1 = 1109728704
L7_1 = -642658848
L8_1 = -1885547121
L9_1 = -1942898710
L10_1 = 951832588
L11_1 = 510490462
L12_1 = 1635937914
L13_1 = -840216541
L14_1 = 2128369009
L15_1 = -1286696947
L16_1 = -124769592
L17_1 = -1775485061
L18_1 = -461750719
L19_1 = -913351839
L20_1 = 815762359
L21_1 = 1584636462
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L2_1[10] = L12_1
L2_1[11] = L13_1
L2_1[12] = L14_1
L2_1[13] = L15_1
L2_1[14] = L16_1
L2_1[15] = L17_1
L2_1[16] = L18_1
L2_1[17] = L19_1
L2_1[18] = L20_1
L2_1[19] = L21_1
L0_1[L1_1] = L2_1
L0_1 = _ENV
L1_1 = "canSlide"
function L2_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1[L1_1] = L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = StartShapeTestRay
  L2_2 = L0_2
  L3_2 = vector3
  L4_2 = L0_2.x
  L5_2 = L0_2.y
  L6_2 = L0_2.z
  L6_2 = L6_2 - 2.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = 17
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = 7
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = GetShapeTestResultIncludingMaterial
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  if L3_2 then
    if -1833527165 == L6_2 or 1333033863 == L6_2 or -700658213 == L6_2 or 1109728704 == L6_2 or -642658848 == L6_2 or -1885547121 == L6_2 or -1942898710 == L6_2 or 951832588 == L6_2 or 510490462 == L6_2 or 1635937914 == L6_2 or -1286696947 == L6_2 then
      L8_2 = true
      return L8_2
    else
      L8_2 = false
      return L8_2
    end
  else
    L8_2 = false
    return L8_2
  end
  L8_2 = false
  return L8_2
end
L1_1 = RegisterCommand
L2_1 = "stopscivola"
function L3_1()
  local L0_2, L1_2
  L0_2 = DelFrameSlider
  L0_2()
  L0_2 = StopScivola
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "IsSlideable"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = StartShapeTestRay
  L2_2 = L0_2
  L3_2 = vector3
  L4_2 = L0_2.x
  L5_2 = L0_2.y
  L6_2 = L0_2.z
  L6_2 = L6_2 - 2.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = 17
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = 7
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = GetShapeTestResultIncludingMaterial
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  if L3_2 then
    L8_2 = 1
    L9_2 = slide_hashes
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = slide_hashes
      L12_2 = L12_2[L11_2]
      if L6_2 == L12_2 then
        L12_2 = true
        return L12_2
      end
    end
    L8_2 = false
    return L8_2
  else
    L8_2 = false
    return L8_2
  end
  L8_2 = false
  return L8_2
end
L1_1[L2_1] = L3_1
L1_1 = RegisterCommand
L2_1 = "slide"
function L3_1()
  local L0_2, L1_2
  L0_2 = StartScivola
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "ApriCamminateProvvisorie"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.header = "CAMMINATE PROVVISORIE"
  L2_2.subheader = "Press <span>SHIFT</span> for select mode."
  L2_2.hover_information = "Useful walkstyle for short scene."
  L2_2.icon = "fa-solid fa-user"
  L3_2 = {}
  L3_2.search = true
  L3_2.disabled = false
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2 = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_2
  L3_2 = {}
  L3_2.header = "PERM WALK"
  L3_2.subheader = "Back to perm walks."
  L3_2.icon = "fa-solid fa-lock"
  L3_2.event = "camminataFissa"
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = stilewalk
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = {}
    L10_2 = "Temp - "
    L11_2 = L6_2.label
    L12_2 = L11_2
    L11_2 = L11_2.upper
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 .. L11_2
    L9_2.header = L10_2
    L9_2.subheader = ""
    L9_2.searchable = true
    L9_2.event = "setCamminataProvvisoria"
    L10_2 = {}
    L11_2 = L6_2.value
    L12_2 = false
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L9_2.args = L10_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.createMenu
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
L1_1[L2_1] = L3_1
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "setCamminata"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = print
  L2_2 = "Camminata selezionata: "
  L3_2 = A0_2[1]
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = setwalkstyle
  L2_2 = A0_2[1]
  L1_2(L2_2)
  L1_2 = A0_2[1]
  currentwalkingstyle = L1_2
  L1_2 = TriggerServerEvent
  L2_2 = "saveWalkStyle"
  L3_2 = currentwalkingstyle
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "camminataProvvisoria"
function L3_1()
  local L0_2, L1_2
  L0_2 = ApriCamminateProvvisorie
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "camminataFissa"
function L3_1()
  local L0_2, L1_2
  L0_2 = OpenWalkMenu
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "ApplicaCamminata"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = stilewalk
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.label
    L8_2 = L7_2
    L7_2 = L7_2.lower
    L7_2 = L7_2(L8_2)
    L9_2 = A0_2
    L8_2 = A0_2.lower
    L8_2 = L8_2(L9_2)
    L9_2 = L6_2.label
    if L9_2 == A0_2 or L7_2 == L8_2 then
      L9_2 = setwalkstyle
      L10_2 = L6_2.value
      L9_2(L10_2)
    end
  end
end
L1_1[L2_1] = L3_1
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "setCamminataProvvisoria"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = setwalkstyle
  L2_2 = A0_2[1]
  L1_2(L2_2)
  L1_2 = notify
  L2_2 = "Reload saved walk style."
  L3_2 = {}
  L4_2 = 166
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "setwalkstyle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.stealth
  L1_2 = L1_2(L2_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if "default" == A0_2 then
    L3_2 = ResetPedMovementClipset
    L4_2 = L2_2
    L5_2 = 0.5
    L3_2(L4_2, L5_2)
    L3_2 = ResetPedWeaponMovementClipset
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = ResetPedStrafeClipset
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L3_2 = RequestAnimSet
    L4_2 = A0_2
    L3_2(L4_2)
    while true do
      L3_2 = HasAnimSetLoaded
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 1
      L3_2(L4_2)
    end
    L3_2 = SetPedMovementClipset
    L4_2 = L2_2
    L5_2 = A0_2
    L6_2 = 0.5
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = ResetPedWeaponMovementClipset
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = ResetPedStrafeClipset
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = RemoveAnimSet
    L4_2 = A0_2
    L3_2(L4_2)
  end
end
L1_1[L2_1] = L3_1
L1_1 = _ENV
L2_1 = "CreateThread"
L1_1 = L1_1[L2_1]
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "face reset"
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  while true do
    L1_2 = HasCollisionLoadedAroundEntity
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  while true do
    L1_2 = NetworkIsSessionStarted
    L1_2 = L1_2()
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = TriggerServerEvent
  L2_2 = "getBackWalkStyle"
  L1_2(L2_2)
  L1_2 = setwalkstyleInterior
  L2_2 = currentwalkingstyle
  L1_2(L2_2)
end
L1_1(L2_1)
L1_1 = _ENV
L2_1 = "setwalkstyleInterior"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = exports
  L2_2 = L2_2.striano_editor
  L3_2 = L2_2
  L2_2 = L2_2.stealth
  L2_2 = L2_2(L3_2)
  L3_2 = exports
  L3_2 = L3_2.striano_editor
  L4_2 = L3_2
  L3_2 = L3_2.crouchato
  L3_2 = L3_2(L4_2)
  if not L2_2 and not L3_2 then
    if "default" == A0_2 then
      L4_2 = ResetPedMovementClipset
      L5_2 = L1_2
      L6_2 = 0.5
      L4_2(L5_2, L6_2)
      L4_2 = ResetPedWeaponMovementClipset
      L5_2 = L1_2
      L4_2(L5_2)
      L4_2 = ResetPedStrafeClipset
      L5_2 = L1_2
      L4_2(L5_2)
    else
      L4_2 = RequestAnimSet
      L5_2 = A0_2
      L4_2(L5_2)
      while true do
        L4_2 = HasAnimSetLoaded
        L5_2 = A0_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 1
        L4_2(L5_2)
      end
      L4_2 = SetPedMovementClipset
      L5_2 = L1_2
      L6_2 = A0_2
      L7_2 = 0.5
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = ResetPedWeaponMovementClipset
      L5_2 = L1_2
      L4_2(L5_2)
      L4_2 = ResetPedStrafeClipset
      L5_2 = L1_2
      L4_2(L5_2)
      L4_2 = RemoveAnimSet
      L5_2 = A0_2
      L4_2(L5_2)
    end
  end
end
L1_1[L2_1] = L3_1
L1_1 = RegisterNetEvent
L2_1 = "CaricamiCamminata"
L1_1(L2_1)
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "CaricamiCamminata"
function L3_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = setwalkstyleInterior
    L1_2 = currentwalkingstyle
    L0_2(L1_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "getBackWalkStyle"
L1_1(L2_1)
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "getBackWalkStyle"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = setwalkstyleInterior
  L2_2 = A0_2
  L1_2(L2_2)
  currentwalkingstyle = A0_2
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "onResourceStart"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "getBackWalkStyle"
    L1_2(L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterKeyMapping
L2_1 = "svieni"
L3_1 = "Ragdoll"
L4_1 = "keyboard"
L5_1 = "f6"
L1_1(L2_1, L3_1, L4_1, L5_1)
L1_1 = RegisterCommand
L2_1 = "svieni"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsPedHuman
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = isInRagdoll
    if L2_2 then
      L2_2 = ExecuteCommand
      L3_2 = "stopragdoll"
      L2_2(L3_2)
    else
      L2_2 = IsControlPressed
      L3_2 = 0
      L4_2 = 21
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsDisabledControlPressed
        L3_2 = 0
        L4_2 = 21
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          goto lbl_31
        end
      end
      L2_2 = ExecuteCommand
      L3_2 = "slide"
      L2_2(L3_2)
      goto lbl_34
      ::lbl_31::
      L2_2 = ExecuteCommand
      L3_2 = "vairagdoll"
      L2_2(L3_2)
    end
  end
  ::lbl_34::
end
L1_1(L2_1, L3_1)
L1_1 = RegisterKeyMapping
L2_1 = "stopragdoll"
L3_1 = "Getup Ragdoll"
L4_1 = "keyboard"
L5_1 = "e"
L1_1(L2_1, L3_1, L4_1, L5_1)
L1_1 = RegisterCommand
L2_1 = "vairagdoll"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = 3836.253
  L4_2 = 6438.734
  L5_2 = 0.613
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2 - L2_2
  L3_2 = #L3_2
  if L3_2 > 25.0 then
    L4_2 = isInRagdoll
    if not L4_2 then
      L4_2 = IsPedFatallyInjured
      L5_2 = L0_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = exports
        L4_2 = L4_2.striano_combat
        L5_2 = L4_2
        L4_2 = L4_2.isflying
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          L4_2 = canOpenEmote
          L4_2 = L4_2()
          if L4_2 then
            L4_2 = exports
            L4_2 = L4_2.striano_editor
            L5_2 = L4_2
            L4_2 = L4_2.inscivola
            L4_2 = L4_2(L5_2)
            if not L4_2 then
              isInRagdoll = true
              L4_2 = loopRagPlayer
              L4_2()
            end
          end
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "stopragdoll"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = isInRagdoll
  if L0_2 then
    L0_2 = IsEntityPlayingAnim
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = "combat@damage@rb_writhe"
    L3_2 = "rb_writhe_loop"
    L4_2 = 3
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if not L0_2 then
      L0_2 = IsPedFatallyInjured
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      if not L0_2 then
        L0_2 = IsPedInAnyVehicle
        L1_2 = PlayerPedId
        L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
        L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        if not L0_2 then
          isInRagdoll = false
          L0_2 = SetPedToRagdoll
          L1_2 = PlayerPedId
          L1_2 = L1_2()
          L2_2 = 0
          L3_2 = 0
          L4_2 = 4
          L5_2 = 0
          L6_2 = 0
          L7_2 = 0
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
          L0_2 = ClearRagdollBlockingFlags
          L1_2 = PlayerPedId
          L1_2 = L1_2()
          L2_2 = 26
          L0_2(L1_2, L2_2)
          L0_2 = ResetPedRagdollTimer
          L1_2 = PlayerPedId
          L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
          L0_2 = IsPedFalling
          L1_2 = PlayerPedId
          L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
          L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
          if not L0_2 then
            L0_2 = IsEntityInWater
            L1_2 = PlayerPedId
            L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
            L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
            if not L0_2 then
              L0_2 = IsPedSwimming
              L1_2 = PlayerPedId
              L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
              L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
              if not L0_2 then
                L0_2 = IsPedSwimmingUnderWater
                L1_2 = PlayerPedId
                L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
                L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
                if not L0_2 then
                  L0_2 = IsEntityPlayingAnim
                  L1_2 = PlayerPedId
                  L1_2 = L1_2()
                  L2_2 = "combat@damage@rb_writhe"
                  L3_2 = "rb_writhe_loop"
                  L4_2 = 3
                  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
                  if not L0_2 then
                    L0_2 = IsPedShooting
                    L1_2 = PlayerPedId
                    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
                    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
                    L1_2 = GetPedConfigFlag
                    L2_2 = PlayerPedId
                    L2_2 = L2_2()
                    L3_2 = 78
                    L1_2 = L1_2(L2_2, L3_2)
                    L2_2 = IsPedInMeleeCombat
                    L3_2 = PlayerPedId
                    L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
                    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                    if not L0_2 and not L1_2 and not L2_2 then
                      L3_2 = math
                      L3_2 = L3_2.random
                      L4_2 = 1
                      L5_2 = 2
                      L3_2 = L3_2(L4_2, L5_2)
                      if 1 == L3_2 then
                        L4_2 = ExecuteCommand
                        L5_2 = "e puliscimani"
                        L4_2(L5_2)
                      else
                        L4_2 = ExecuteCommand
                        L5_2 = "shakeoff"
                        L4_2(L5_2)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "AddEventHandler"
L1_1 = L1_1[L2_1]
L2_1 = "esx:onPlayerDeath"
function L3_1(A0_2)
  local L1_2
  L1_2 = isInRagdoll
  if L1_2 then
    isInRagdoll = false
  end
  L1_2 = AnnullaSit
  L1_2()
end
L1_1(L2_1, L3_1)
L1_1 = _ENV
L2_1 = "canParkour"
function L3_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.insuperjump
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end
L1_1[L2_1] = L3_1
