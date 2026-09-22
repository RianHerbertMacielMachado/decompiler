local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = "bags.json"
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.identOf
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L0_1
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 or "" == L0_2 then
    L1_2 = {}
    L1_1 = L1_2
    L1_2 = SaveResourceFile
    L2_2 = GetCurrentResourceName
    L2_2 = L2_2()
    L3_2 = L0_1
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = L1_1
    L4_2 = L4_2(L5_2)
    L5_2 = -1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = json
  L1_2 = L1_2.decode
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L1_1 = L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pairs
  L3_2 = L1_1
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.owner
    if L8_2 == L1_2 then
      L8_2 = AttachBagToPlayer
      L9_2 = L7_2.id
      L10_2 = A0_2
      L8_2(L9_2, L10_2)
      L8_2 = true
      L9_2 = L7_2.id
      return L8_2, L9_2
    end
  end
  L2_2 = false
  return L2_2
end
L5_1 = AddEventHandler
L6_1 = "playerJoining"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = SetTimeout
  L2_2 = 3000
  function L3_2()
    local L0_3, L1_3
    L0_3 = GetPlayerName
    L1_3 = L0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L4_1
      L1_3 = L0_2
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = SaveResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L1_1
  L5_2 = {}
  L5_2.indent = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = -1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = 1
  while true do
    L1_2 = tostring
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1
    L1_2 = L2_2[L1_2]
    if nil == L1_2 then
      break
    end
    L0_2 = L0_2 + 1
  end
  return L0_2
end
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L6_1
  L3_2 = L3_2()
  L4_2 = tostring
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L1_1
  L6_2 = {}
  L6_2.id = L3_2
  L6_2.model = A0_2
  L7_2 = A1_2 or L7_2
  if not A1_2 then
    L7_2 = nil
  end
  L6_2.owner = L7_2
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = nil
  end
  L6_2.coords = L7_2
  L5_2[L4_2] = L6_2
  L4_2 = L5_1
  L4_2()
  L4_2 = TriggerClientEvent
  L5_2 = "bags:client:updateBag"
  L6_2 = -1
  L7_2 = L3_2
  L8_2 = tostring
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = L1_1
  L8_2 = L9_2[L8_2]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  return L3_2
end
CreateBag = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L1_2 = L2_2[L1_2]
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2[L2_2] = nil
  L2_2 = print
  L3_2 = "Bag ID "
  L4_2 = A0_2
  L5_2 = " removed."
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = L5_1
  L2_2()
  L2_2 = TriggerClientEvent
  L3_2 = "bags:client:removeBag"
  L4_2 = -1
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = true
  return L2_2
end
DeleteBag = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L1_2 = L2_2[L1_2]
  return L1_2
end
GetBag = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = GetBag
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L2_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L2_2.owner = L3_2
  L2_2.coords = nil
  L4_2 = L5_1
  L4_2()
  L4_2 = TriggerClientEvent
  L5_2 = "bags:client:attachBag"
  L6_2 = A1_2
  L7_2 = A0_2
  L8_2 = L2_2.model
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = true
  return L4_2
end
AttachBagToPlayer = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = GetBag
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L2_2.owner = nil
  L2_2.coords = A1_2
  L3_2 = L5_1
  L3_2()
  L3_2 = TriggerClientEvent
  L4_2 = "bags:client:updateBag"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = true
  return L3_2
end
DropBagToWorld = L7_1
L7_1 = RegisterNetEvent
L8_1 = "bags:server:noOwner"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = GetBag
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2.owner = nil
  L3_2 = L5_1
  L3_2()
  L3_2 = TriggerClientEvent
  L4_2 = "bags:client:updateBag"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerClientEvent
  L4_2 = "bags:client:detachBag"
  L5_2 = L1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "CreateBag"
L9_1 = CreateBag
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "DeleteBag"
L9_1 = DeleteBag
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "GetBag"
L9_1 = GetBag
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "AttachBagToPlayer"
L9_1 = AttachBagToPlayer
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "DropBagToWorld"
L9_1 = DropBagToWorld
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "bags:server:createBag"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = CreateBag
  L3_2 = A0_2
  L4_2 = L2_1
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = AttachBagToPlayer
  L4_2 = L2_2
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = CreateThread
function L8_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2()
end
L7_1(L8_1)
L7_1 = RegisterNetEvent
L8_1 = "bags:server:requestSync"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "bags:client:fullSync"
  L3_2 = L0_2
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetTimeout
  L2_2 = 500
  function L3_2()
    local L0_3, L1_3
    L0_3 = GetPlayerName
    L1_3 = L0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L4_1
      L1_3 = L0_2
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "bags:server:openBag"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = GetBag
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "bags:client:openBagInventory"
  L5_2 = L1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "bags:server:pickupEmptyBag"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = GetBag
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = "bag_"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.IsInventoryEmpty
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = TriggerEvent
    L6_2 = "striano_combat:giveItem"
    L7_2 = L1_2
    L8_2 = "bag"
    L9_2 = A0_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    return
  end
  L5_2 = TriggerEvent
  L6_2 = "striano_combat:giveItem"
  L7_2 = L1_2
  L8_2 = "empty_bag"
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = DeleteBag
  L6_2 = A0_2
  L5_2(L6_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "bags:server:DeleteBag"
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = DeleteBag
  L2_2 = A0_2
  L1_2(L2_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "bags:server:dropBagToWorld"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if not A0_2 then
    return
  end
  L3_2 = GetBag
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L2_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.owner
  if L5_2 and L4_2 then
    L5_2 = L3_2.owner
    if L5_2 ~= L4_2 then
      return
    end
  end
  L5_2 = DropBagToWorld
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = TriggerClientEvent
  L6_2 = "bags:client:detachBag"
  L7_2 = L2_2
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "bags:server:attachBagToPlayer"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = AttachBagToPlayer
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L7_1(L8_1, L9_1)
