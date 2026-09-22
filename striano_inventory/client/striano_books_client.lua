local L0_1, L1_1, L2_1, L3_1
L0_1 = false
function L1_1(A0_2)
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
OpenInput = L1_1
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = L0_1
  if L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_inventory
    L2_2 = L1_2
    L1_2 = L1_2.CloseBook
    L1_2(L2_2)
    L1_2 = false
    L0_1 = L1_2
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "striano_inventory:bookClosed"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L0_1 = L0_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submex
  L2_2 = ""
  L0_2(L1_2, L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "gmm-books:client:OpenBook"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = LANGUAGE
  if nil == L1_2 then
    L1_2 = SelectLanguage
    L1_2()
    L1_2 = LANGUAGE
    if nil == L1_2 then
      L1_2 = ExecuteCommand
      L2_2 = "e madai"
      L1_2(L2_2)
      return
    end
    if nil == A0_2 then
      L1_2 = GetBookName
      L2_2 = 1
      L1_2 = L1_2(L2_2)
      A0_2 = L1_2
    end
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L3_2 = IsPedFatallyInjured
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = IsPedFalling
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = IsPedClimbing
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsPedJumping
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          goto lbl_46
        end
      end
    end
  end
  L3_2 = print
  L4_2 = "^1[BOOK TEST STOP] PED STATE BLOCKED^7"
  L3_2(L4_2)
  do return end
  ::lbl_46::
  L3_2 = Books
  if L3_2 then
    L3_2 = Books
    L3_2 = L3_2[A0_2]
    if L3_2 then
      goto lbl_54
    end
  end
  L3_2 = nil
  ::lbl_54::
  if not L3_2 then
    L4_2 = print
    L5_2 = "^1[BOOK TEST STOP] BOOK NOT FOUND:^7"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = ExecuteCommand
    L5_2 = "e shrug5"
    L4_2(L5_2)
    return
  end
  L4_2 = L0_1
  if L4_2 then
    L4_2 = exports
    L4_2 = L4_2.striano_inventory
    L5_2 = L4_2
    L4_2 = L4_2.CloseBook
    L4_2(L5_2)
    L4_2 = false
    L0_1 = L4_2
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
  end
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.submex
  L6_2 = ""
  L4_2(L5_2, L6_2)
  L4_2 = type
  L5_2 = L3_2.pages
  L4_2 = L4_2(L5_2)
  L4_2 = "table" == L4_2
  L5_2 = L3_2.mode
  L5_2 = "text" == L5_2
  if L4_2 then
    L6_2 = L3_2.pages
    L6_2 = #L6_2
    if L6_2 <= 1 then
      L2_2 = true
    end
  end
  L6_2 = {}
  L6_2.book = A0_2
  L7_2 = L3_2.size
  L6_2.size = L7_2
  if L5_2 then
    L6_2.mode = "text"
    L7_2 = L3_2.title
    L6_2.title = L7_2
    L7_2 = L3_2.author
    L6_2.author = L7_2
    L7_2 = L3_2.text
    L6_2.text = L7_2
    L7_2 = L3_2.style
    L6_2.style = L7_2
  elseif L4_2 then
    L6_2.mode = "images"
    L7_2 = L3_2.pages
    L6_2.pages = L7_2
  else
    L7_2 = print
    L8_2 = "^1[BOOK TEST STOP] INVALID BOOK CONFIG^7"
    L7_2(L8_2)
    return
  end
  L7_2 = exports
  L7_2 = L7_2.striano_inventory
  L8_2 = L7_2
  L7_2 = L7_2.OpenBook
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L8_2 = print
    L9_2 = "^1[BOOK] Impossibile aprire il libro nell'inventory.^7"
    L8_2(L9_2)
    return
  end
  L8_2 = ExecuteCommand
  L9_2 = "pointingstop"
  L8_2(L9_2)
  L8_2 = true
  L0_1 = L8_2
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = L0_1
      if not L0_3 then
        break
      end
      L0_3 = IsPedFatallyInjured
      L1_3 = L1_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = IsPedOnFoot
      L1_3 = L1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L2_2
      if not L0_3 then
        L0_3 = IsEntityPlayingAnim
        L1_3 = L1_2
        L2_3 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
        L3_3 = "idle_a"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if not L0_3 then
          L0_3 = ExecuteCommand
          L1_3 = "e libro"
          L0_3(L1_3)
          L0_3 = Wait
          L1_3 = 1000
          L0_3(L1_3)
        end
      else
        L0_3 = IsEntityPlayingAnim
        L1_3 = L1_2
        L2_3 = "missheistdockssetup1clipboard@base"
        L3_3 = "base"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if not L0_3 then
          L0_3 = ExecuteCommand
          L1_3 = "e nota"
          L0_3(L1_3)
          L0_3 = Wait
          L1_3 = 1000
          L0_3(L1_3)
        end
      end
    end
    L0_3 = L0_1
    if L0_3 then
      L0_3 = false
      L0_1 = L0_3
      L0_3 = exports
      L0_3 = L0_3.striano_inventory
      L1_3 = L0_3
      L0_3 = L0_3.CloseBook
      L0_3(L1_3)
    end
    L0_3 = ExecuteCommand
    L1_3 = "e posatasca"
    L0_3(L1_3)
  end
  L8_2(L9_2)
end
L1_1(L2_1, L3_1)
