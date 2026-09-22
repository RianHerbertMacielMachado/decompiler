local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = 20
L2_1 = exports
L3_1 = "addKill"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = "Unknown"
  end
  L4_2 = GetPlayerName
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = "Unknown"
  end
  L5_2 = {}
  L6_2 = GenerateEntryId
  L6_2 = L6_2()
  L5_2.id = L6_2
  L5_2.type = "kill"
  L6_2 = L3_2
  L7_2 = " ha ucciso "
  L8_2 = L4_2
  L9_2 = " con "
  L10_2 = A2_2 or L10_2
  if not A2_2 then
    L10_2 = "Unknown"
  end
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L5_2.text = L6_2
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L5_2.timestamp = L6_2
  L5_2.duration = 60000
  L6_2 = addFeedEntry
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = true
  return L6_2
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "addNotification"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    A1_2 = 60000
  end
  L2_2 = {}
  L3_2 = GenerateEntryId
  L3_2 = L3_2()
  L2_2.id = L3_2
  L2_2.type = "notification"
  L2_2.text = A0_2
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L2_2.timestamp = L3_2
  L2_2.duration = A1_2
  L3_2 = addFeedEntry
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = "entry_"
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = "_"
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1000
  L5_2 = 9999
  L3_2 = L3_2(L4_2, L5_2)
  L0_2 = L0_2 .. L1_2 .. L2_2 .. L3_2
  return L0_2
end
GenerateEntryId = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = cleanupExpiredEntries
  L1_2()
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L1_2 = #L1_2
  L2_2 = L1_1
  if L1_2 > L2_2 then
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = L0_1
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  L1_2 = TriggerClientEvent
  L2_2 = "feed:update"
  L3_2 = -1
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
end
addFeedEntry = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = L0_1
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.timestamp
    L6_2 = L0_2 - L6_2
    L7_2 = L0_1
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.duration
    if L6_2 > L7_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = L0_1
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L1_2 = true
    end
  end
  if L1_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "feed:update"
    L4_2 = -1
    L5_2 = L0_1
    L2_2(L3_2, L4_2, L5_2)
  end
end
cleanupExpiredEntries = L2_1
L2_1 = exports
L3_1 = "getFeed"
function L4_1()
  local L0_2, L1_2
  L0_2 = cleanupExpiredEntries
  L0_2()
  L0_2 = L0_1
  return L0_2
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "clearFeed"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = TriggerClientEvent
  L1_2 = "feed:update"
  L2_2 = -1
  L3_2 = L0_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = true
  return L0_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "feed:request"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "feed:request"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = cleanupExpiredEntries
  L1_2()
  L1_2 = TriggerClientEvent
  L2_2 = "feed:update"
  L3_2 = L0_2
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "addkillfeed"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.addKill
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "addfeed"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_inventory
  L3_2 = L2_2
  L2_2 = L2_2.addNotification
  L4_2 = A0_2
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 60000
  end
  L2_2(L3_2, L4_2, L5_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "addfeedPL"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.addNotification
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = " "
  L7_2 = A1_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = 60000
  end
  L3_2(L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1)
