local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = RegisterNetEvent
L1_1 = "striano_quest:checkItem"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.getItemCount
  L5_2 = L2_2
  L6_2 = "player"
  L7_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = TriggerClientEvent
  L5_2 = "striano_quest:itemResult"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = L3_2
  L9_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.sub
    L9_2 = 1
    L10_2 = 7
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if "license" == L7_2 then
      return L6_2
    end
  end
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2[1]
  return L1_2
end
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = SetResourceKvp
  L3_2 = "given_quests_"
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = L1_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = GetResourceKvpString
  L3_2 = "given_quests_"
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = {}
  L3_2[A0_2] = L4_2
  if L2_2 then
    L3_2 = pcall
    L4_2 = json
    L4_2 = L4_2.decode
    L5_2 = L2_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if "table" == L5_2 then
        L4_2[1] = nil
        L4_2["1"] = nil
        L5_2 = L1_1
        L5_2[A0_2] = L4_2
      end
    end
  end
end
L4_1 = RegisterNetEvent
L5_1 = "striano_quest:saveGivenQuest"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = tostring
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" == A0_2 then
    return
  end
  L2_2 = L1_1
  L3_2 = L1_1
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[L1_2] = L3_2
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2[A0_2]
  if L2_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  L2_2[A0_2] = true
  L2_2 = L2_1
  L3_2 = L1_2
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "striano_quest:removeGivenQuest"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = tostring
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" == A0_2 then
    return
  end
  L2_2 = L1_1
  L3_2 = L1_1
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[L1_2] = L3_2
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  L2_2[A0_2] = nil
  L2_2 = L2_1
  L3_2 = L1_2
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "striano_quest:requestGivenQuests"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L3_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = TriggerClientEvent
  L2_2 = "striano_quest:restoreGivenQuests"
  L3_2 = L0_2
  L4_2 = L1_1
  L4_2 = L4_2[L0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L1_2(L2_2, L3_2, L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "playerDropped"
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L2_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = L1_1
  L1_2[L0_2] = nil
end
L4_1(L5_1, L6_1)
