local L0_1, L1_1, L2_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = tostring
    L3_2 = L1_2
    return L2_2(L3_2)
  end
  L2_2 = tostring
  L3_2 = A0_2
  return L2_2(L3_2)
end
_normId = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 - 2000
  L2_2 = tostring
  L3_2 = _normId
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = PlayerData
  L4_2 = PlayerData
  L4_2 = L4_2.spells
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.spells = L4_2
  L3_2 = PlayerData
  L4_2 = PlayerData
  L4_2 = L4_2.activeSpells
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.activeSpells = L4_2
  L3_2 = PlayerData
  L3_2 = L3_2.spells
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L3_2 = PlayerData
    L3_2 = L3_2.spells
    L4_2 = tonumber
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2[L4_2]
  end
  if L3_2 then
    L4_2 = L3_2.disabled
    if not L4_2 then
      goto lbl_50
    end
  end
  L4_2 = print
  L5_2 = "Spell ID %s not exist or disabled"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = false
  do return L4_2 end
  ::lbl_50::
  L4_2 = PlayerData
  L4_2 = L4_2.activeSpells
  L4_2[L2_2] = L1_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.type = "updateActiveSpells"
  L6_2 = PlayerData
  L6_2 = L6_2.activeSpells
  L5_2.activeSpells = L6_2
  L5_2.currentGameTime = L1_2
  L4_2(L5_2)
  L4_2 = true
  return L4_2
end
CastSpellGrimorie = L0_1
L0_1 = RegisterNUICallback
L1_1 = "closeGrimoire"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CloseGrimoire
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "assignSpell"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerData
  L3_2 = PlayerData
  L3_2 = L3_2.assignedSpells
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.assignedSpells = L3_2
  L2_2 = PlayerData
  L3_2 = PlayerData
  L3_2 = L3_2.spells
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.spells = L3_2
  L2_2 = A0_2.slot
  if L2_2 then
    L2_2 = tostring
    L3_2 = A0_2.slot
    L2_2 = L2_2(L3_2)
  end
  L3_2 = A0_2.spellId
  if L3_2 then
    L3_2 = _normId
    L4_2 = A0_2.spellId
    L3_2 = L3_2(L4_2)
  end
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = PlayerData
    L4_2 = L4_2.spells
    L4_2 = L4_2[L3_2]
  end
  if L2_2 and L4_2 then
    L5_2 = L4_2.disabled
    if not L5_2 then
      L5_2 = PlayerData
      L5_2 = L5_2.assignedSpells
      L5_2[L2_2] = L4_2
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.type = "updateAssignedSpells"
      L7_2 = CreateCleanAssignedSpells
      L7_2 = L7_2()
      L6_2.assignedSpells = L7_2
      L5_2(L6_2)
    end
  end
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "unassignSpell"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.slot
  if L2_2 then
    L2_2 = tostring
    L3_2 = A0_2.slot
    L2_2 = L2_2(L3_2)
  end
  if L2_2 then
    L3_2 = PlayerData
    L4_2 = PlayerData
    L4_2 = L4_2.assignedSpells
    if not L4_2 then
      L4_2 = {}
    end
    L3_2.assignedSpells = L4_2
    L3_2 = PlayerData
    L3_2 = L3_2.assignedSpells
    L3_2[L2_2] = nil
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.type = "updateAssignedSpells"
    L5_2 = CreateCleanAssignedSpells
    L5_2 = L5_2()
    L4_2.assignedSpells = L5_2
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerData
  L1_2 = {}
  L0_2.assignedSpells = L1_2
  L0_2 = PlayerData
  L0_2 = L0_2.grimoireOpen
  if L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.type = "updateAssignedSpells"
    L2_2 = CreateCleanAssignedSpells
    L2_2 = L2_2()
    L1_2.assignedSpells = L2_2
    L0_2(L1_2)
  end
  L0_2 = print
  L1_2 = "^2[Spell System] ^7All spells have been reset!"
  L0_2(L1_2)
end
ResetAllSpells = L0_1
L0_1 = RegisterNUICallback
L1_1 = "toggleVisibility"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ToggleGrimoireVisibility
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "resetAllSpells"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ResetAllSpells
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = PlayerData
  L2_2 = L2_2.spells
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = {}
    L8_2 = L6_2.id
    L7_2.id = L8_2
    L8_2 = L6_2.name
    L7_2.name = L8_2
    L8_2 = L6_2.description
    L7_2.description = L8_2
    L8_2 = L6_2.cooldown
    L8_2 = L8_2 - 2000
    L7_2.cooldown = L8_2
    L8_2 = L6_2.manaCost
    L7_2.manaCost = L8_2
    L8_2 = L6_2.disabled
    L7_2.disabled = L8_2
    L0_2[L5_2] = L7_2
  end
  return L0_2
end
CreateCleanSpells = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = PlayerData
  L2_2 = L2_2.assignedSpells
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = {}
      L8_2 = L6_2.id
      L7_2.id = L8_2
      L8_2 = L6_2.name
      L7_2.name = L8_2
      L8_2 = L6_2.description
      L7_2.description = L8_2
      L8_2 = L6_2.cooldown
      L8_2 = L8_2 - 2000
      L7_2.cooldown = L8_2
      L8_2 = L6_2.manaCost
      L7_2.manaCost = L8_2
      L8_2 = L6_2.disabled
      L7_2.disabled = L8_2
      L0_2[L5_2] = L7_2
    end
  end
  return L0_2
end
CreateCleanAssignedSpells = L0_1
L0_1 = RegisterNetEvent
L1_1 = "spells:ManagerGiveSpells"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.getSpellList
  L4_2 = L4_2(L5_2)
  if nil == A3_2 or "adder" == A3_2 then
    L5_2 = SpellAdder
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = L4_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  elseif "enabler" == A3_2 then
    L5_2 = SpellEnabler
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = L4_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  elseif "disabler" == A3_2 then
    L5_2 = SpellDisabler
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = L4_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  elseif "remover" == A3_2 then
    L5_2 = SpellRemover
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = L4_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1(L1_1, L2_1)
