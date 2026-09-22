local L0_1, L1_1, L2_1, L3_1, L4_1
LANGUAGE = nil
L0_1 = {}
Books = L0_1
L0_1 = {}
CachedBookList = L0_1
L0_1 = {}
CachedBookIndex = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  CachedBookList = L0_2
  L0_2 = {}
  CachedBookIndex = L0_2
  L0_2 = type
  L1_2 = Books
  L0_2 = L0_2(L1_2)
  if "table" ~= L0_2 then
    L0_2 = print
    L1_2 = "^1[BOOKS] ERROR: Books list not loaded!^7"
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = pairs
  L1_2 = Books
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2 in L0_2, L1_2, L2_2, L3_2 do
    L5_2 = CachedBookList
    L6_2 = CachedBookList
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    L5_2[L6_2] = L4_2
  end
  L0_2 = table
  L0_2 = L0_2.sort
  L1_2 = CachedBookList
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = CachedBookList
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = CachedBookList
    L4_2 = L4_2[L3_2]
    L5_2 = CachedBookIndex
    L5_2[L4_2] = L3_2
  end
  L0_2 = true
  return L0_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if "eng" ~= A0_2 and "ita" ~= A0_2 then
    L1_2 = false
    return L1_2
  end
  LANGUAGE = A0_2
  if "eng" == A0_2 then
    L1_2 = Books_ENG
    if L1_2 then
      goto lbl_14
    end
  end
  L1_2 = Books_ITA
  ::lbl_14::
  Books = L1_2
  L1_2 = print
  L2_2 = "[BOOKS] LANGUAGE:"
  L3_2 = LANGUAGE
  L1_2(L2_2, L3_2)
  L1_2 = print
  L2_2 = "[BOOKS] Books_ITA:"
  L3_2 = type
  L4_2 = Books_ITA
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "[BOOKS] Books_ENG:"
  L3_2 = type
  L4_2 = Books_ENG
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "[BOOKS] Books selezionato:"
  L3_2 = type
  L4_2 = Books
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L1_2()
  L1_2 = true
  return L1_2
end
SetBookLanguage = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = ExecuteCommand
  L1_2 = "prova Select Language | Seleziona Lingua"
  L0_2(L1_2)
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
  L2_2 = "Leggi Italiano"
  function L3_2()
    local L0_3, L1_3
    L0_3 = SetBookLanguage
    L1_3 = "ita"
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.closeMenu
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "prova3 Trascina gli angoli delle pagine per sfogliarle."
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Read English"
  function L3_2()
    local L0_3, L1_3
    L0_3 = SetBookLanguage
    L1_3 = "eng"
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "prova3 Drag the corners to turn the pages."
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.closeMenu
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 75
  L0_2(L1_2)
  while true do
    L0_2 = exports
    L0_2 = L0_2.striano_fastmenu
    L1_2 = L0_2
    L0_2 = L0_2.isopen
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Event_Message_Purple"
  L3_2 = "GTAO_FM_Events_Soundset"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = ExecuteCommand
  L1_2 = "prova "
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "Language choosed: use /langBook to change if you need."
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "Lingua scelta: usa /langBook per cambiarla se serve."
  L0_2(L1_2)
end
SelectLanguage = L1_1
L1_1 = RegisterCommand
L2_1 = "langBook"
function L3_1()
  local L0_2, L1_2
  L0_2 = SelectLanguage
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "booklist"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 75
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Books
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = #L0_2
    L6_2 = L6_2 + 1
    L0_2[L6_2] = L5_2
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = "["
    L8_2 = L5_2
    L9_2 = "] "
    L10_2 = L6_2
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    L8_2 = exports
    L8_2 = L8_2.striano_fastmenu
    L9_2 = L8_2
    L8_2 = L8_2.addMenuItem
    L10_2 = L7_2
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = LocalPlayer
      L0_3 = L0_3.state
      L0_3 = L0_3.adminLevel
      if not L0_3 then
        L0_3 = 0
      end
      if L0_3 > 0 then
        L1_3 = TriggerEvent
        L2_3 = "gmm-books:client:OpenBook"
        L3_3 = exports
        L3_3 = L3_3.striano_inventory
        L4_3 = L3_3
        L3_3 = L3_3.getBookName
        L5_3 = L5_2
        L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3)
        L1_3(L2_3, L3_3, L4_3, L5_3)
      else
        L1_3 = exports
        L1_3 = L1_3.striano_combat
        L2_3 = L1_3
        L1_3 = L1_3.testo3d
        L3_3 = "No perm."
        L1_3(L2_3, L3_3)
      end
    end
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = CachedBookList
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = CachedBookList
    L1_2 = L1_2[1]
    return L1_2
  end
  L1_2 = CachedBookList
  L1_2 = L1_2[A0_2]
  return L1_2
end
GetBookName = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CachedBookIndex
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = CachedBookIndex
  L1_2 = L1_2[A0_2]
  return L1_2
end
GetBookIndex = L1_1
L1_1 = exports
L2_1 = "getBookName"
L3_1 = GetBookName
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "getBookIndex"
L3_1 = GetBookIndex
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "setBookLanguage"
L3_1 = SetBookLanguage
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "selectLanguage"
L3_1 = SelectLanguage
L1_1(L2_1, L3_1)
L1_1 = false
L2_1 = exports
L3_1 = "OpenBook"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = print
    L2_2 = "^1[INVENTORY BOOK] DATA INVALID^7"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  L1_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "book:open"
  L3_2 = A0_2.mode
  L2_2.mode = L3_2
  L3_2 = A0_2.book
  L2_2.book = L3_2
  L3_2 = A0_2.size
  L2_2.size = L3_2
  L3_2 = A0_2.title
  L2_2.title = L3_2
  L3_2 = A0_2.author
  L2_2.author = L3_2
  L3_2 = A0_2.text
  L2_2.text = L3_2
  L3_2 = A0_2.style
  L2_2.style = L3_2
  L3_2 = A0_2.pages
  L2_2.pages = L3_2
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "CloseBook"
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L1_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "book:close"
  L0_2(L1_2)
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "book:close"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = false
  L1_1 = L2_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = TriggerEvent
  L3_2 = "striano_inventory:bookClosed"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "pageflip"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Shard_Disappear"
  L5_2 = "GTAO_Boss_Goons_FM_Shard_Sounds"
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
