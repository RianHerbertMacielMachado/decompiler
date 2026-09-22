local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = 900000
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 2000
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
  L2_2 = "striano_quest:requestGivenQuests"
  L1_2(L2_2)
end
L2_1(L3_1)
L2_1 = RegisterNetEvent
L3_1 = "striano_quest:restoreGivenQuests"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = tonumber
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L5_2 = L7_2
      if L5_2 then
        L7_2 = QuestList
        L7_2 = L7_2[L5_2]
        if L7_2 then
          L7_2 = TriggerEvent
          L8_2 = "striano_missions:addQuest"
          L9_2 = QuestList
          L9_2 = L9_2[L5_2]
          L9_2 = L9_2.desc
          L10_2 = QuestList
          L10_2 = L10_2[L5_2]
          L10_2 = L10_2.name
          L11_2 = L5_2
          L12_2 = true
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = QuestList
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = QuestList
    L1_2 = L1_2[A0_2]
    L1_2.active = false
  end
  L1_2 = activeQuest
  if L1_2 then
    L1_2 = tonumber
    L2_2 = activeQuest
    L2_2 = L2_2.idQuest
    L1_2 = L1_2(L2_2)
    if L1_2 == A0_2 then
      L1_2 = {}
      activeQuest = L1_2
      varQuestComplete = 0
      L1_2 = ClearQuestTracker
      L1_2()
    end
  end
  L1_2 = idDelleQuest
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = tonumber
    L6_2 = idDelleQuest
    L6_2 = L6_2[L4_2]
    L5_2 = L5_2(L6_2)
    if L5_2 == A0_2 then
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = dispatches
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = titles
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = idDelleQuest
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = TriggerServerEvent
      L6_2 = "striano_quest:removeGivenQuest"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
      L5_2 = dispatches
      L5_2 = #L5_2
      if L5_2 <= 0 then
        CurDispId = 0
        pocet = ""
        L5_2 = QuestMenuOpen
        if L5_2 then
          L5_2 = SendNUIMessage
          L6_2 = {}
          L6_2.action = "Escape"
          L5_2(L6_2)
          QuestMenuOpen = false
        end
        L5_2 = true
        return L5_2
      end
      L5_2 = CurDispId
      L6_2 = dispatches
      L6_2 = #L6_2
      if L5_2 > L6_2 then
        L5_2 = dispatches
        L5_2 = #L5_2
        CurDispId = L5_2
      end
      L5_2 = CurDispId
      if L5_2 < 1 then
        CurDispId = 1
      end
      L5_2 = basePocet
      L6_2 = CurDispId
      L7_2 = "/"
      L8_2 = dispatches
      L8_2 = #L8_2
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      pocet = L5_2
      L5_2 = QuestMenuOpen
      if L5_2 then
        L5_2 = updateDispatch
        L5_2()
      end
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = print
  L2_2 = "[QUEST] RemoveQuestById non trovata:"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = false
  return L1_2
end
RemoveQuestById = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = QuestList
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  if 1 == A0_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submex
    L4_2 = "Quest completed! You are a real SOD."
    L2_2(L3_2, L4_2)
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submex
    L4_2 = "Quest ["
    L5_2 = A0_2
    L6_2 = "] completed!"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = TriggerServerEvent
  L3_2 = "PlayEffectEnt"
  L4_2 = {}
  L4_2.a = "scr_rcbarry1"
  L4_2.b = "scr_alien_teleport"
  L5_2 = PedToNet
  L6_2 = PlayerPedId
  L6_2, L7_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.ent = L5_2
  L4_2.s = 0.9
  L2_2(L3_2, L4_2)
  L2_2 = "sounds/striano_combat/magic/soulsteal.mp3"
  L3_2 = exports
  L3_2 = L3_2.xsound
  L4_2 = L3_2
  L3_2 = L3_2.PlayUrl
  L5_2 = "sounds/striano_combat/magic/soulsteal"
  L6_2 = L2_2
  L7_2 = 0.1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 1500
    L0_3(L1_3)
    L0_3 = QuestList
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.rewardFunc
    L0_3()
    L0_3 = RemoveQuestById
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = {}
    activeQuest = L0_3
  end
  L3_2(L4_2)
end
questComplete = L2_1
L2_1 = {}
activeQuest = L2_1
varQuestComplete = 0
L2_1 = exports
L3_1 = "pushCompleteQuest"
function L4_1(A0_2)
  local L1_2
  varQuestComplete = A0_2
end
L2_1(L3_1, L4_1)
QuestMenuOpen = false
L2_1 = exports
L3_1 = "isOpenQuest"
function L4_1()
  local L0_2, L1_2
  L0_2 = QuestMenuOpen
  return L0_2
end
L2_1(L3_1, L4_1)
L2_1 = {}
dispatches = L2_1
L2_1 = {}
idDelleQuest = L2_1
CurDispId = 0
pocet = ""
L2_1 = {}
titles = L2_1
basePocet = "QUEST MENU [<b><font color='yellow'>L</font></b> close]"
function L2_1()
  local L0_2, L1_2
  L0_2 = activeQuest
  L0_2 = L0_2.title
  if nil == L0_2 then
  else
  end
end
LibroAnim = L2_1
L2_1 = false
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPositionFrozen
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = IsControlPressed
  L2_2 = 0
  L3_2 = 25
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsPedRunning
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedSprinting
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = L2_1
        if not L1_2 then
          goto lbl_29
        end
      end
    end
  end
  do return end
  ::lbl_29::
  QuestMenuOpen = true
  L1_2 = true
  L2_1 = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = QuestMenuOpen
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 25
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 25
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_31
        end
      end
      L0_3 = false
      L2_1 = L0_3
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "Escape"
      L0_3(L1_3)
      QuestMenuOpen = false
      CurDispId = 0
      L0_3 = ExecuteCommand
      L1_3 = "e cc"
      L0_3(L1_3)
      ::lbl_31::
    end
  end
  L1_2(L2_2)
  L1_2 = LibroAnim
  L1_2()
  L1_2 = dispatches
  L1_2 = #L1_2
  if L1_2 > 0 then
    L1_2 = dispatches
    L1_2 = #L1_2
    CurDispId = L1_2
    L1_2 = basePocet
    L2_2 = CurDispId
    L3_2 = "/"
    L4_2 = dispatches
    L4_2 = #L4_2
    L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
    pocet = L1_2
    L1_2 = updateDispatch
    L1_2()
  else
    L1_2 = activeQuest
    L1_2 = L1_2.title
    if nil ~= L1_2 then
      CurDispId = 0
      L1_2 = updateDispatch
      L1_2()
    else
      CurDispId = 0
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "updateAcceptKey"
      L2_2.value = "..."
      L1_2(L2_2)
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "GetCall"
      L2_2.message = "<br>No quests in waiting available..."
      L2_2.pocet = "QUEST MENU [<b><font color='yellow'>L</font></b> close]"
      L2_2.CurDispId = 1
      L2_2.title = "<b><font color='yellow'>No quests</font></b>"
      L1_2(L2_2)
    end
  end
  L1_2 = Wait
  L2_2 = 75
  L1_2(L2_2)
  L1_2 = false
  L2_1 = L1_2
end
openDispatch = L3_1
L3_1 = RegisterKeyMapping
L4_1 = "striano_quest:respond"
L5_1 = "Quest Menu"
L6_1 = "keyboard"
L7_1 = "L"
L3_1(L4_1, L5_1, L6_1, L7_1)
L3_1 = RegisterCommand
L4_1 = "striano_quest:respond"
function L5_1()
  local L0_2, L1_2
  L0_2 = QuestMenuOpen
  if not L0_2 then
    L0_2 = openDispatch
    L0_2()
  else
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "button"
    L1_2.key = "G"
    L0_2(L1_2)
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "Escape"
    L0_2(L1_2)
    QuestMenuOpen = false
    CurDispId = 0
    L0_2 = ExecuteCommand
    L1_2 = "e cc"
    L0_2(L1_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "striano_quest:close"
function L5_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "Escape"
  L0_2(L1_2)
  QuestMenuOpen = false
  CurDispId = 0
  L0_2 = ExecuteCommand
  L1_2 = "e cc"
  L0_2(L1_2)
end
L3_1(L4_1, L5_1)
L3_1 = false
L4_1 = RegisterKeyMapping
L5_1 = "striano_quest:accept"
L6_1 = "Accept quest"
L7_1 = "keyboard"
L8_1 = "J"
L4_1(L5_1, L6_1, L7_1, L8_1)
L4_1 = RegisterCommand
L5_1 = "striano_quest:accept"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = QuestMenuOpen
  if not L0_2 then
    return
  end
  L0_2 = L3_1
  if L0_2 then
    return
  end
  L0_2 = tonumber
  L1_2 = idDelleQuest
  L2_2 = CurDispId
  L1_2 = L1_2[L2_2]
  L0_2 = L0_2(L1_2)
  L1_2 = activeQuest
  if L1_2 then
    L1_2 = tonumber
    L2_2 = activeQuest
    L2_2 = L2_2.idQuest
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_24
    end
  end
  L1_2 = nil
  ::lbl_24::
  if L1_2 then
    if L0_2 == L1_2 then
      L2_2 = OpenInput
      L3_2 = "Decline quest? type 'yes' (Will be locked for 15 min)"
      L2_2 = L2_2(L3_2)
      if "yes" == L2_2 or "YES" == L2_2 then
        L3_2 = CancelActiveQuest
        L3_2()
        L3_2 = L0_1
        L4_2 = GetGameTimer
        L4_2 = L4_2()
        L5_2 = L1_1
        L4_2 = L4_2 + L5_2
        L3_2[L1_2] = L4_2
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.testo3d
        L5_2 = "~c~~h~Quest declined."
        L3_2(L4_2, L5_2)
        L3_2 = PlaySoundFrontend
        L4_2 = -1
        L5_2 = "Turn"
        L6_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
        L7_2 = 1
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L3_2 = SendNUIMessage
        L4_2 = {}
        L4_2.action = "Escape"
        L3_2(L4_2)
        QuestMenuOpen = false
        CurDispId = 0
        L3_2 = ExecuteCommand
        L4_2 = "e posatasca"
        L3_2(L4_2)
      end
      return
    else
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.testo3d
      L4_2 = "~r~~h~You already have an active quest."
      L2_2(L3_2, L4_2)
      L2_2 = PlaySoundFrontend
      L3_2 = -1
      L4_2 = "ERROR"
      L5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L6_2 = 0
      L2_2(L3_2, L4_2, L5_2, L6_2)
      return
    end
  end
  L2_2 = CurDispId
  if L2_2 > 0 then
    L2_2 = titles
    L3_2 = CurDispId
    L2_2 = L2_2[L3_2]
    if nil ~= L2_2 then
      L2_2 = titles
      L3_2 = CurDispId
      L2_2 = L2_2[L3_2]
      if "" ~= L2_2 then
        L2_2 = CurDispId
        L3_2 = tonumber
        L4_2 = idDelleQuest
        L4_2 = L4_2[L2_2]
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L4_2 = QuestList
          L4_2 = L4_2[L3_2]
          if L4_2 then
            goto lbl_110
          end
        end
        L4_2 = print
        L5_2 = "QUEST ID NON VALIDO:"
        L6_2 = L3_2
        L7_2 = "slot:"
        L8_2 = L2_2
        L4_2(L5_2, L6_2, L7_2, L8_2)
        do return end
        ::lbl_110::
        L4_2 = L0_1
        L4_2 = L4_2[L3_2]
        L5_2 = GetGameTimer
        L5_2 = L5_2()
        if L4_2 and L4_2 > L5_2 then
          L6_2 = math
          L6_2 = L6_2.ceil
          L7_2 = L4_2 - L5_2
          L7_2 = L7_2 / 1000
          L6_2 = L6_2(L7_2)
          L7_2 = math
          L7_2 = L7_2.floor
          L8_2 = L6_2 / 60
          L7_2 = L7_2(L8_2)
          L8_2 = L6_2 % 60
          L9_2 = true
          L3_1 = L9_2
          L9_2 = exports
          L9_2 = L9_2.striano_combat
          L10_2 = L9_2
          L9_2 = L9_2.testo3d
          L11_2 = "~r~~h~Quest locked for %02d:%02d min"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = L7_2
          L14_2 = L8_2
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          L9_2 = PlaySoundFrontend
          L10_2 = -1
          L11_2 = "ERROR"
          L12_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          L13_2 = 0
          L9_2(L10_2, L11_2, L12_2, L13_2)
          L9_2 = Wait
          L10_2 = 1000
          L9_2(L10_2)
          L9_2 = false
          L3_1 = L9_2
          return
        end
        L6_2 = L0_1
        L6_2[L3_2] = nil
        L6_2 = {}
        L7_2 = titles
        L7_2 = L7_2[L2_2]
        L6_2.title = L7_2
        L7_2 = dispatches
        L7_2 = L7_2[L2_2]
        L6_2.msg = L7_2
        L6_2.idQuest = L3_2
        L7_2 = QuestList
        L7_2 = L7_2[L3_2]
        L7_2 = L7_2.descAccepted
        L6_2.MissionDesc = L7_2
        activeQuest = L6_2
        L6_2 = loopQuestTracker
        L6_2()
        L6_2 = exports
        L6_2 = L6_2.striano_combat
        L7_2 = L6_2
        L6_2 = L6_2.testo3d
        L8_2 = "~g~~h~Quest accepted."
        L6_2(L7_2, L8_2)
        L6_2 = PlaySoundFrontend
        L7_2 = -1
        L8_2 = "1st_Person_Transition"
        L9_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
        L10_2 = 0
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = QuestList
        L6_2 = L6_2[L3_2]
        L6_2.active = true
        L6_2 = QuestList
        L6_2 = L6_2[L3_2]
        L6_2 = L6_2.onQuestAccepted
        L6_2()
        L6_2 = QuestList
        L6_2 = L6_2[L3_2]
        L6_2 = L6_2.tickFunc
        L6_2()
        L6_2 = SendNUIMessage
        L7_2 = {}
        L7_2.action = "Escape"
        L6_2(L7_2)
        QuestMenuOpen = false
        CurDispId = 0
        L6_2 = ExecuteCommand
        L7_2 = "e posatasca"
        L6_2(L7_2)
    end
  end
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.testo3d
    L4_2 = "~r~~h~Quest not valid."
    L2_2(L3_2, L4_2)
  end
end
L4_1(L5_1, L6_1)
function L4_1()
  local L0_2, L1_2
  L0_2 = activeQuest
  if L0_2 then
    L0_2 = activeQuest
    L0_2 = L0_2.idQuest
    if L0_2 then
      L0_2 = tonumber
      L1_2 = activeQuest
      L1_2 = L1_2.idQuest
      L0_2 = L0_2(L1_2)
      L1_2 = QuestList
      L1_2 = L1_2[L0_2]
      if L1_2 then
        L1_2 = QuestList
        L1_2 = L1_2[L0_2]
        L1_2.active = false
      end
    end
  end
  L0_2 = {}
  activeQuest = L0_2
  varQuestComplete = 0
  CurDispId = 0
  QuestMenuOpen = false
  L0_2 = ClearQuestTracker
  L0_2()
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "Escape"
  L0_2(L1_2)
end
CancelActiveQuest = L4_1
L4_1 = RegisterKeyMapping
L5_1 = "striano_quest:prev"
L6_1 = "Previous quest"
L7_1 = "keyboard"
L8_1 = "LEFT"
L4_1(L5_1, L6_1, L7_1, L8_1)
L4_1 = RegisterCommand
L5_1 = "striano_quest:prev"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CurDispId
  if L0_2 > 0 then
    L0_2 = dispatches
    L0_2 = #L0_2
    if 0 ~= L0_2 then
      L0_2 = titles
      L0_2 = L0_2[1]
      if "" ~= L0_2 then
        L0_2 = CurDispId
        L0_2 = L0_2 - 1
        CurDispId = L0_2
        L0_2 = CurDispId
        if L0_2 < 1 then
          L0_2 = dispatches
          L0_2 = #L0_2
          CurDispId = L0_2
        end
        L0_2 = basePocet
        L1_2 = CurDispId
        L2_2 = "/"
        L3_2 = dispatches
        L3_2 = #L3_2
        L0_2 = L0_2 .. L1_2 .. L2_2 .. L3_2
        pocet = L0_2
        L0_2 = updateDispatch
        L0_2()
        L0_2 = SendNUIMessage
        L1_2 = {}
        L1_2.action = "button"
        L1_2.key = "L"
        L0_2(L1_2)
      end
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterKeyMapping
L5_1 = "striano_quest:next"
L6_1 = "Next quest"
L7_1 = "keyboard"
L8_1 = "RIGHT"
L4_1(L5_1, L6_1, L7_1, L8_1)
L4_1 = RegisterCommand
L5_1 = "striano_quest:next"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CurDispId
  if L0_2 > 0 then
    L0_2 = dispatches
    L0_2 = #L0_2
    if 0 ~= L0_2 then
      L0_2 = titles
      L0_2 = L0_2[1]
      if "" ~= L0_2 then
        L0_2 = CurDispId
        L0_2 = L0_2 + 1
        CurDispId = L0_2
        L0_2 = CurDispId
        L1_2 = dispatches
        L1_2 = #L1_2
        if L0_2 > L1_2 then
          CurDispId = 1
        end
        L0_2 = basePocet
        L1_2 = CurDispId
        L2_2 = "/"
        L3_2 = dispatches
        L3_2 = #L3_2
        L0_2 = L0_2 .. L1_2 .. L2_2 .. L3_2
        pocet = L0_2
        L0_2 = updateDispatch
        L0_2()
        L0_2 = SendNUIMessage
        L1_2 = {}
        L1_2.action = "button"
        L1_2.key = "R"
        L0_2(L1_2)
      end
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "striano_missions:addQuest"
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = tonumber
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if not A2_2 or A2_2 <= 0 then
    L4_2 = print
    L5_2 = "[QUEST] addQuest ignorata, id non valido:"
    L6_2 = A2_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = QuestList
  L4_2 = L4_2[A2_2]
  if not L4_2 then
    L4_2 = print
    L5_2 = "[QUEST] addQuest ignorata, QuestList non esiste:"
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = ipairs
  L5_2 = idDelleQuest
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tonumber
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 == A2_2 then
      L10_2 = exports
      L10_2 = L10_2.striano_combat
      L11_2 = L10_2
      L10_2 = L10_2.testo3d
      L12_2 = "~c~~h~Quest "
      L13_2 = A2_2
      L14_2 = " already in list."
      L12_2 = L12_2 .. L13_2 .. L14_2
      L10_2(L11_2, L12_2)
      return
    end
  end
  L4_2 = IsEntityPositionFrozen
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L4_2 then
    L4_2 = print
    L5_2 = "Can't recive Quest when you are frozen."
    L4_2(L5_2)
    return
  end
  L4_2 = notify
  if L4_2 then
    L4_2 = activeQuest
    L4_2 = L4_2.title
    if nil == L4_2 then
      L4_2 = SendNUIMessage
      L5_2 = {}
      L5_2.action = "showQuestAlert"
      L5_2.title = "New Quest Added"
      L5_2.text = ""
      L4_2(L5_2)
      L4_2 = PlaySoundFrontend
      L5_2 = -1
      L6_2 = "MP_IDLE_KICK"
      L7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L8_2 = 1
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = dispatches
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = titles
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = idDelleQuest
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2.phar
  L5_2 = L4_2
  L4_2 = L4_2.gettutorial
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "striano_quest:saveGivenQuest"
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
  if nil == A3_2 then
    L4_2 = dispatches
    L4_2 = #L4_2
    CurDispId = L4_2
    L4_2 = basePocet
    L5_2 = CurDispId
    L6_2 = "/"
    L7_2 = dispatches
    L7_2 = #L7_2
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    pocet = L4_2
    L4_2 = openDispatch
    L4_2()
  end
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = dispatches
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = titles
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = idDelleQuest
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = ClearQuestTracker
  L1_2()
end
deletedispatch = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = dispatches
  L0_2 = #L0_2
  if L0_2 > 0 then
    L0_2 = CurDispId
    if L0_2 > 0 then
      L0_2 = tonumber
      L1_2 = idDelleQuest
      L2_2 = CurDispId
      L1_2 = L1_2[L2_2]
      L0_2 = L0_2(L1_2)
      L1_2 = activeQuest
      if L1_2 then
        L1_2 = tonumber
        L2_2 = activeQuest
        L2_2 = L2_2.idQuest
        L1_2 = L1_2(L2_2)
        if L1_2 then
          goto lbl_23
        end
      end
      L1_2 = nil
      ::lbl_23::
      L2_2 = dispatches
      L3_2 = CurDispId
      L2_2 = L2_2[L3_2]
      L3_2 = titles
      L4_2 = CurDispId
      L3_2 = L3_2[L4_2]
      L4_2 = "yellow"
      if L1_2 and L0_2 == L1_2 then
        L5_2 = activeQuest
        L5_2 = L5_2.MissionDesc
        L2_2 = L5_2 or L2_2
        if not L5_2 then
        end
        L5_2 = activeQuest
        L5_2 = L5_2.title
        L3_2 = L5_2 or L3_2
        if not L5_2 then
        end
        L4_2 = "green"
        L5_2 = SendNUIMessage
        L6_2 = {}
        L6_2.action = "updateAcceptKey"
        L6_2.value = "<b><font color='red'>J</font></b> (Decline)"
        L5_2(L6_2)
      else
        L5_2 = SendNUIMessage
        L6_2 = {}
        L6_2.action = "updateAcceptKey"
        L6_2.value = "<b><font color='green'>J</font></b> (Accept)"
        L5_2(L6_2)
      end
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.action = "GetCall"
      L7_2 = "<br>"
      L8_2 = L2_2 or L8_2
      if not L2_2 then
        L8_2 = ""
      end
      L7_2 = L7_2 .. L8_2
      L6_2.message = L7_2
      L7_2 = basePocet
      L8_2 = CurDispId
      L9_2 = "/"
      L10_2 = dispatches
      L10_2 = #L10_2
      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
      L6_2.pocet = L7_2
      L7_2 = CurDispId
      L6_2.CurDispId = L7_2
      L7_2 = "<b><font color='"
      L8_2 = L4_2
      L9_2 = "'>"
      L10_2 = L3_2 or L10_2
      if not L3_2 then
        L10_2 = ""
      end
      L11_2 = "</font></b>"
      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
      L6_2.title = L7_2
      L5_2(L6_2)
      return
    end
  end
  L0_2 = activeQuest
  L0_2 = L0_2.title
  if nil ~= L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "updateAcceptKey"
    L1_2.value = "<b><font color='red'>J</font></b> (Decline)"
    L0_2(L1_2)
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "GetCall"
    L2_2 = "<br>"
    L3_2 = activeQuest
    L3_2 = L3_2.MissionDesc
    if not L3_2 then
      L3_2 = ""
    end
    L2_2 = L2_2 .. L3_2
    L1_2.message = L2_2
    L1_2.pocet = "ACTIVE QUEST [<b><font color='yellow'>L</font></b> close]"
    L1_2.CurDispId = 1
    L2_2 = "<b><font color='green'>"
    L3_2 = activeQuest
    L3_2 = L3_2.title
    if not L3_2 then
      L3_2 = ""
    end
    L4_2 = "</font></b>"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2.title = L2_2
    L0_2(L1_2)
    return
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "Escape"
  L0_2(L1_2)
  CurDispId = 0
end
updateDispatch = L4_1
L4_1 = RegisterCommand
L5_1 = "newQuestTest"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = exports
  L3_2 = L3_2.striano_missions
  L4_2 = L3_2
  L3_2 = L3_2.activeQuest
  L5_2 = A1_2[1]
  if not L5_2 then
    L5_2 = 1
  end
  L3_2(L4_2, L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "activeQuest"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = QuestList
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = print
    L3_2 = "QUEST NOT EXIST -> ID "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = QuestList
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.active
    if not L2_2 then
      L2_2 = TriggerEvent
      L3_2 = "my_quests:newQuest"
      L4_2 = QuestList
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.desc
      L5_2 = QuestList
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.name
      L6_2 = true
      L7_2 = A0_2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    else
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.testo3d
      L4_2 = "~c~~h~Quest "
      L5_2 = A0_2
      L6_2 = " already active."
      L4_2 = L4_2 .. L5_2 .. L6_2
      L2_2(L3_2, L4_2)
      L2_2 = ExecuteCommand
      L3_2 = "e shrug5"
      L2_2(L3_2)
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "my_quests:newQuest"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "my_quests:newQuest"
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = TriggerEvent
  L6_2 = "striano_missions:addQuest"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A3_2
  L10_2 = A2_2
  L11_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L4_1(L5_1, L6_1)
