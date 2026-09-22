local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1
L0_1 = GetCurrentResourceName
L0_1 = L0_1()
L1_1 = "inventories.json"
L2_1 = "holders.json"
L3_1 = 3000
L4_1 = 1500
L5_1 = 1500
L6_1 = 35.0
L7_1 = 35.0
L8_1 = inventories
if not L8_1 then
  L8_1 = {}
end
L9_1 = runtimeInv
if not L9_1 then
  L9_1 = {}
end
L10_1 = {}
L11_1 = {}
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.IsAdmin
  L3_2 = A0_2
  L4_2 = 2
  return L1_2(L2_2, L3_2, L4_2)
end
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L11_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L10_1
    L4_2[L3_2] = nil
  end
  L4_2 = "adminview:%s:%s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A0_2
  L7_2 = math
  L7_2 = L7_2.random
  L8_2 = 100000
  L9_2 = 999999
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L10_1
  L6_2 = {}
  L6_2.src = A0_2
  L6_2.ownerKey = A1_2
  L6_2.invName = A2_2
  L7_2 = os
  L7_2 = L7_2.time
  L7_2 = L7_2()
  L7_2 = L7_2 + 1800
  L6_2.expiresAt = L7_2
  L5_2[L4_2] = L6_2
  L5_2 = L11_1
  L5_2[A0_2] = L4_2
  return L4_2
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tostring
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = "player"
  end
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = L10_1
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L3_2 = L2_2.src
    if L3_2 == A0_2 then
      L3_2 = L2_2.expiresAt
      L4_2 = os
      L4_2 = L4_2.time
      L4_2 = L4_2()
      if not (L3_2 < L4_2) then
        L3_2 = L12_1
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          goto lbl_35
        end
      end
    end
    L3_2 = L10_1
    L3_2[A1_2] = nil
    L3_2 = L11_1
    L3_2 = L3_2[A0_2]
    if L3_2 == A1_2 then
      L3_2 = L11_1
      L3_2[A0_2] = nil
    end
    L3_2 = nil
    L4_2 = nil
    do return L3_2, L4_2 end
    ::lbl_35::
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L3_2 = L3_2 + 1800
    L2_2.expiresAt = L3_2
    L3_2 = L2_2.ownerKey
    L4_2 = L2_2.invName
    return L3_2, L4_2
  end
  if "police_shared" == A1_2 then
    L3_2 = "society:police"
    L4_2 = A1_2
    return L3_2, L4_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.sub
  L5_2 = 1
  L6_2 = 5
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if "loot:" == L3_2 then
    L3_2 = nil
    L4_2 = A1_2
    return L3_2, L4_2
  end
  L3_2 = getPlayerKey
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  return L3_2, L4_2
end
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L10_1
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.src
  if L3_2 == A0_2 then
    L3_2 = L2_2.expiresAt
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
    if not (L3_2 < L4_2) then
      L3_2 = L12_1
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_31
      end
    end
  end
  L3_2 = L10_1
  L3_2[A1_2] = nil
  L3_2 = L11_1
  L3_2 = L3_2[A0_2]
  if L3_2 == A1_2 then
    L3_2 = L11_1
    L3_2[A0_2] = nil
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_31::
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L3_2 = L3_2 + 1800
  L2_2.expiresAt = L3_2
  return L2_2
end
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = L10_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = L1_2.invName
    return L2_2
  end
  return A0_2
end
L17_1 = chestState
if not L17_1 then
  L17_1 = {}
end
L18_1 = chestLock
if not L18_1 then
  L18_1 = {}
end
L19_1 = {}
L20_1 = nil
L21_1 = false
L22_1 = false
L23_1 = nil
L24_1 = false
L25_1 = false
function L26_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = Config
  L4_2 = L4_2.CraftPairs
  if not L4_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.CraftPairs
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.items
    if L10_2 then
      L10_2 = L9_2.items
      L10_2 = L10_2[1]
    end
    L11_2 = L9_2.items
    if L11_2 then
      L11_2 = L9_2.items
      L11_2 = L11_2[2]
    end
    L12_2 = A0_2 == L10_2 and A1_2 == L11_2
    L13_2 = A0_2 == L11_2 and A1_2 == L10_2
    if (L12_2 or L13_2) and A2_2 == A3_2 then
      L14_2 = {}
      L15_2 = L9_2.result
      L14_2.result = L15_2
      return L14_2
    end
  end
  L4_2 = nil
  return L4_2
end
getCraftPairResultServer = L26_1
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2.items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.items
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = L6_2.uid
      if L7_2 == A1_2 then
        return L5_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
findInvItemIndexByUid = L26_1
function L26_1()
  local L0_2, L1_2
  L0_2 = GetGameTimer
  return L0_2()
end
nowMs = L26_1
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "string" == L1_2
  return L1_2
end
isRuntimeInv = L26_1
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = tonumber
  L2_2 = A0_2.x
  if not L2_2 then
    L2_2 = A0_2[1]
  end
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = A0_2.y
  if not L3_2 then
    L3_2 = A0_2[2]
  end
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A0_2.z
  if not L4_2 then
    L4_2 = A0_2[3]
  end
  L3_2 = L3_2(L4_2)
  if nil == L1_2 or nil == L2_2 or nil == L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = {}
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  return L4_2
end
sanitizeVec3 = L26_1
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = sanitizeVec3
  L2_2 = A0_2
  return L1_2(L2_2)
end
sanitizeOffAny = L26_1
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.find
    L9_2 = "license:"
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L6_2
    end
  end
  L1_2 = "src:%d"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
getPlayerKey = L26_1
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = "%s#%d%06d"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = A0_2
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 0
  L7_2 = 999999
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
makeUid = L26_1
L26_1 = "striano_inventory"
L27_1 = "player"
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = exports
  L4_2 = L26_1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.HasItem
  L5_2 = A0_2
  L6_2 = L27_1
  L7_2 = A1_2
  L8_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = exports
  L4_2 = L26_1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.RemoveItem
  L5_2 = A0_2
  L6_2 = L27_1
  L7_2 = A1_2
  L8_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = exports
  L4_2 = L26_1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.GiveItem
  L5_2 = A0_2
  L6_2 = L27_1
  L7_2 = A1_2
  L8_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = RecyclerChange
  if L2_2 then
    L2_2 = RecyclerChange
    L2_2 = L2_2[A0_2]
  end
  if L2_2 then
    L3_2 = type
    L4_2 = L2_2.itemsRequest
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_15
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_15::
  L3_2 = ipairs
  L4_2 = L2_2.itemsRequest
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2[1]
    if L9_2 == A1_2 then
      L9_2 = math
      L9_2 = L9_2.floor
      L10_2 = tonumber
      L11_2 = L8_2[2]
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = 0
      end
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      return L9_2, L10_2, L11_2
    end
  end
  L3_2 = nil
  return L3_2
end
L32_1 = RegisterNetEvent
L33_1 = "recycler:tryInsertItem"
function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if A2_2 <= 0 or "" == A0_2 or "" == A1_2 then
    return
  end
  L4_2 = L31_1
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 or L4_2 <= 0 then
    return
  end
  L5_2 = L28_1
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "recycler:insertResult"
    L7_2 = L3_2
    L8_2 = false
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L5_2 = L29_1
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "recycler:insertResult"
    L8_2 = L3_2
    L9_2 = false
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = A2_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  L6_2 = TriggerClientEvent
  L7_2 = "recycler:insertResult"
  L8_2 = L3_2
  L9_2 = true
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNetEvent
L33_1 = "recycler:refundItems"
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = tostring
    L9_2 = L6_2 or L9_2
    if not L6_2 then
      L9_2 = ""
    end
    L8_2 = L8_2(L9_2)
    L6_2 = L8_2
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = tonumber
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L9_2 = 0
    end
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
    if "" ~= L6_2 and L7_2 > 0 then
      L8_2 = L30_1
      L9_2 = L1_2
      L10_2 = L6_2
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L32_1(L33_1, L34_1)
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = RecyclerChange
  if L2_2 then
    L2_2 = RecyclerChange
    L2_2 = L2_2[A0_2]
  end
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = ipairs
  L4_2 = L2_2.itemsRequest
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tostring
    L10_2 = L8_2[1]
    L9_2 = L9_2(L10_2)
    if L9_2 == A1_2 then
      L9_2 = tonumber
      L10_2 = L8_2[2]
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = 0
      end
      return L9_2
    end
  end
  L3_2 = nil
  return L3_2
end
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = RecyclerChange
  if L2_2 then
    L2_2 = RecyclerChange
    L2_2 = L2_2[A0_2]
  end
  if L2_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_15
    end
  end
  L3_2 = 0
  do return L3_2 end
  ::lbl_15::
  L3_2 = 0
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tostring
    L11_2 = L8_2 or L11_2
    if not L8_2 then
      L11_2 = ""
    end
    L10_2 = L10_2(L11_2)
    L8_2 = L10_2
    L10_2 = math
    L10_2 = L10_2.floor
    L11_2 = tonumber
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = 0
    end
    L10_2 = L10_2(L11_2)
    L9_2 = L10_2
    L10_2 = L32_1
    L11_2 = A0_2
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 and L10_2 > 0 and L9_2 > 0 then
      L11_2 = L9_2 * L10_2
      L3_2 = L3_2 + L11_2
    end
  end
  return L3_2
end
L34_1 = RegisterNetEvent
L35_1 = "recycler:completeCraft"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = RecyclerChange
  if L3_2 then
    L3_2 = RecyclerChange
    L3_2 = L3_2[A0_2]
  end
  if not L3_2 then
    return
  end
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    return
  end
  L4_2 = L33_1
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = tonumber
  L6_2 = L3_2.completeAt
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 100
  end
  if L4_2 < L5_2 then
    L6_2 = print
    L7_2 = "[Recycler] Not complete: %s progress %s/%s"
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = A0_2
    L10_2 = L4_2
    L11_2 = L5_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L6_2 = L30_1
  L7_2 = L2_2
  L8_2 = A0_2
  L9_2 = L3_2.amountFinal
  if not L9_2 then
    L9_2 = 1
  end
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = TriggerClientEvent
  L7_2 = "CraftRecyclerGet"
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
end
L34_1(L35_1, L36_1)
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L20_1
  if L0_2 then
    L0_2 = L20_1
    return L0_2
  end
  L0_2 = LoadResourceFile
  L1_2 = L0_1
  L2_2 = L1_1
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 or "" == L0_2 then
    L1_2 = {}
    L20_1 = L1_2
    L1_2 = L20_1
    return L1_2
  end
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 and L2_2 then
      goto lbl_35
      L3_2 = L2_2 or L3_2
    end
  end
  L3_2 = {}
  ::lbl_35::
  L20_1 = L3_2
  L3_2 = L20_1
  return L3_2
end
readDB = L34_1
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L20_1
  if not L0_2 then
    return
  end
  L0_2 = SaveResourceFile
  L1_2 = L0_1
  L2_2 = L1_1
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L20_1
  L3_2 = L3_2(L4_2)
  L4_2 = -1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = false
  L21_1 = L0_2
  L0_2 = false
  L22_1 = L0_2
end
flushDBNow = L34_1
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = L22_1
  if L0_2 then
    return
  end
  L0_2 = true
  L22_1 = L0_2
  L0_2 = SetTimeout
  L1_2 = L4_1
  function L2_2()
    local L0_3, L1_3
    L0_3 = L21_1
    if L0_3 then
      L0_3 = flushDBNow
      L0_3()
    else
      L0_3 = false
      L22_1 = L0_3
    end
  end
  L0_2(L1_2, L2_2)
end
scheduleDBFlush = L34_1
function L34_1()
  local L0_2, L1_2
  L0_2 = true
  L21_1 = L0_2
  L0_2 = scheduleDBFlush
  L0_2()
end
markDBDirty = L34_1
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L23_1
  if L0_2 then
    L0_2 = L23_1
    return L0_2
  end
  L0_2 = LoadResourceFile
  L1_2 = L0_1
  L2_2 = L2_1
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 or "" == L0_2 then
    L1_2 = {}
    L23_1 = L1_2
    L1_2 = L23_1
    return L1_2
  end
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 and L2_2 then
      goto lbl_35
      L3_2 = L2_2 or L3_2
    end
  end
  L3_2 = {}
  ::lbl_35::
  L23_1 = L3_2
  L3_2 = L23_1
  return L3_2
end
readHoldersDB = L34_1
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L23_1
  if not L0_2 then
    return
  end
  L0_2 = SaveResourceFile
  L1_2 = L0_1
  L2_2 = L2_1
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L23_1
  L3_2 = L3_2(L4_2)
  L4_2 = -1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = false
  L24_1 = L0_2
  L0_2 = false
  L25_1 = L0_2
end
flushHoldersNow = L34_1
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = L25_1
  if L0_2 then
    return
  end
  L0_2 = true
  L25_1 = L0_2
  L0_2 = SetTimeout
  L1_2 = L5_1
  function L2_2()
    local L0_3, L1_3
    L0_3 = L24_1
    if L0_3 then
      L0_3 = flushHoldersNow
      L0_3()
    else
      L0_3 = false
      L25_1 = L0_3
    end
  end
  L0_2(L1_2, L2_2)
end
scheduleHoldersFlush = L34_1
function L34_1()
  local L0_2, L1_2
  L0_2 = true
  L24_1 = L0_2
  L0_2 = scheduleHoldersFlush
  L0_2()
end
markHoldersDirty = L34_1
L34_1 = AddEventHandler
L35_1 = "onResourceStop"
function L36_1(A0_2)
  local L1_2
  L1_2 = L0_1
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L21_1
  if L1_2 then
    L1_2 = flushDBNow
    L1_2()
  end
  L1_2 = L24_1
  if L1_2 then
    L1_2 = flushHoldersNow
    L1_2()
  end
end
L34_1(L35_1, L36_1)
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = getPlayerKey
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 == A0_2 then
        return L7_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if "society:police" == A0_2 then
    L1_2 = "Deposito Polizia"
    return L1_2
  end
  if "__shared" == A0_2 then
    L1_2 = "Inventario condiviso"
    return L1_2
  end
  L1_2 = L34_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = GetPlayerName
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = "Player %s"
      L3_2 = L2_2
      L2_2 = L2_2.format
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.sub
  L4_2 = 1
  L5_2 = 22
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = "..."
  L2_2 = L2_2 .. L3_2
  return L2_2
end
L36_1 = RegisterNetEvent
L37_1 = "inv3d:adminRequestInventoryList"
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = source
  L1_2 = L12_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = readDB
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = L35_1
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = L34_1
      L11_2 = L7_2
      L10_2 = L10_2(L11_2)
      L11_2 = pairs
      L12_2 = L8_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        L17_2 = type
        L18_2 = L16_2
        L17_2 = L17_2(L18_2)
        if "table" == L17_2 then
          L17_2 = type
          L18_2 = L16_2.items
          L17_2 = L17_2(L18_2)
          if "table" == L17_2 then
            L17_2 = 0
            L18_2 = ipairs
            L19_2 = L16_2.items
            L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
            for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
              L24_2 = math
              L24_2 = L24_2.floor
              L25_2 = tonumber
              L26_2 = L23_2.count
              L25_2 = L25_2(L26_2)
              if not L25_2 then
                L25_2 = 1
              end
              L24_2 = L24_2(L25_2)
              L17_2 = L17_2 + L24_2
            end
            L18_2 = #L2_2
            L18_2 = L18_2 + 1
            L19_2 = {}
            L19_2.ownerKey = L7_2
            L19_2.ownerName = L9_2
            L19_2.invName = L15_2
            L20_2 = L16_2.items
            L20_2 = #L20_2
            L19_2.totalTypes = L20_2
            L19_2.totalUnits = L17_2
            L20_2 = nil ~= L10_2
            L19_2.online = L20_2
            L19_2.serverId = L10_2
            L2_2[L18_2] = L19_2
          end
        end
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.online
    L3_3 = A1_3.online
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.online
      return L2_3
    end
    L2_3 = tostring
    L3_3 = A0_3.ownerName
    if not L3_3 then
      L3_3 = ""
    end
    L2_3 = L2_3(L3_3)
    L3_3 = L2_3
    L2_3 = L2_3.lower
    L2_3 = L2_3(L3_3)
    L3_3 = tostring
    L4_3 = A1_3.ownerName
    if not L4_3 then
      L4_3 = ""
    end
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 < L3_3
      return L4_3
    end
    L4_3 = tostring
    L5_3 = A0_3.invName
    L4_3 = L4_3(L5_3)
    L5_3 = L4_3
    L4_3 = L4_3.lower
    L4_3 = L4_3(L5_3)
    L5_3 = tostring
    L6_3 = A1_3.invName
    L5_3 = L5_3(L6_3)
    L6_3 = L5_3
    L5_3 = L5_3.lower
    L5_3 = L5_3(L6_3)
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "inv3d:adminInventoryList"
  L5_2 = L0_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L36_1(L37_1, L38_1)
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L14_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
getOwnerKeyForInv = L36_1
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L14_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  return L3_2
end
function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = L9_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L1_2.rev
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  L1_2.rev = L2_2
  L2_2 = L1_2.rev
  return L2_2
end
bumpRevRuntime = L37_1
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L16_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = readDB
  L2_2 = L2_2()
  L3_2 = L2_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[A0_2] = L3_2
  L3_2 = L2_2[A0_2]
  L4_2 = L2_2[A0_2]
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = {}
    L5_2 = {}
    L4_2.items = L5_2
    L5_2 = {}
    L4_2.layout = L5_2
    L4_2.rev = 0
  end
  L3_2[A1_2] = L4_2
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2.rev
  if not L4_2 then
    L4_2 = 0
  end
  L4_2 = L4_2 + 1
  L3_2.rev = L4_2
  L4_2 = markDBDirty
  L4_2()
  L4_2 = L3_2.rev
  return L4_2
end
bumpRevDB = L37_1
function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2 or A2_2
  if not L3_2 then
    A2_2 = 25.0
  end
  L3_2 = GetPlayerPed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = ipairs
  L6_2 = GetPlayers
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2()
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = tonumber
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L10_2 = L11_2
    if L10_2 then
      L11_2 = GetPlayerPed
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 and 0 ~= L11_2 then
        L12_2 = GetEntityCoords
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = L12_2.x
        L14_2 = L4_2.x
        L13_2 = L13_2 - L14_2
        L14_2 = L12_2.y
        L15_2 = L4_2.y
        L14_2 = L14_2 - L15_2
        L15_2 = L12_2.z
        L16_2 = L4_2.z
        L15_2 = L15_2 - L16_2
        L16_2 = math
        L16_2 = L16_2.sqrt
        L17_2 = L13_2 * L13_2
        L18_2 = L14_2 * L14_2
        L17_2 = L17_2 + L18_2
        L18_2 = L15_2 * L15_2
        L17_2 = L17_2 + L18_2
        L16_2 = L16_2(L17_2)
        if A2_2 >= L16_2 then
          L17_2 = TriggerClientEvent
          L18_2 = "inv3d:invChanged"
          L19_2 = L10_2
          L20_2 = A1_2
          L17_2(L18_2, L19_2, L20_2)
        end
      end
    end
  end
end
notifyInvChangedNear = L37_1
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if "police_shared" == A0_2 and A1_2 then
    L2_2 = notifyInvChangedNear
    L3_2 = A1_2
    L4_2 = A0_2
    L5_2 = L6_1
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = isRuntimeInv
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 and A1_2 then
    L2_2 = notifyInvChangedNear
    L3_2 = A1_2
    L4_2 = A0_2
    L5_2 = L7_1
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "inv3d:invChanged"
  L4_2 = -1
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
notifyInvChanged = L37_1
function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.layout
  if not L3_2 then
    L3_2 = {}
  end
  A0_2.layout = L3_2
  L3_2 = A0_2.layout
  L4_2 = A0_2.layout
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[A1_2] = L4_2
  L3_2 = A0_2.layout
  L3_2 = L3_2[A1_2]
  L4_2 = sanitizeOffAny
  L5_2 = L3_2.off
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = sanitizeOffAny
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = {}
      L5_2 = 0.0
      L6_2 = 0.0
      L7_2 = 0.0
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
    end
  end
  L3_2.off = L4_2
  L4_2 = L3_2.placed
  L4_2 = true == L4_2
  L3_2.placed = L4_2
  L4_2 = L3_2.pending
  if true ~= L4_2 then
    L3_2.pending = false
  end
  return L3_2
end
ensureLayoutEntry = L37_1
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L9_1
  L2_2 = L9_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
    L3_2 = {}
    L2_2.items = L3_2
    L3_2 = {}
    L2_2.layout = L3_2
    L3_2 = {}
    L2_2.meta = L3_2
    L2_2.rev = 0
  end
  L1_2[A0_2] = L2_2
  L1_2 = L9_1
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.items
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.items = L2_2
  L2_2 = L1_2.layout
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.layout = L2_2
  L2_2 = L1_2.meta
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.meta = L2_2
  L2_2 = L1_2.rev
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.rev = L2_2
  return L1_2
end
ensureRuntimeInventory = L37_1
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L16_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  if not A0_2 or "" == A0_2 or "1" == A0_2 then
    L2_2 = print
    L3_2 = "^1[inv3d] OWNERKEY STRANO:^0"
    L4_2 = tostring
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = "inv:"
    L6_2 = tostring
    L7_2 = A1_2
    L6_2, L7_2 = L6_2(L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = readDB
  L2_2 = L2_2()
  L3_2 = L2_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[A0_2] = L3_2
  L3_2 = L2_2[A0_2]
  L4_2 = L2_2[A0_2]
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = {}
    L5_2 = {}
    L4_2.items = L5_2
    L5_2 = {}
    L4_2.layout = L5_2
    L4_2.rev = 0
  end
  L3_2[A1_2] = L4_2
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2.items
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.items = L4_2
  L4_2 = L3_2.layout
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.layout = L4_2
  L4_2 = L3_2.rev
  if not L4_2 then
    L4_2 = 0
  end
  L3_2.rev = L4_2
  return L3_2
end
ensureInv = L37_1
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = {}
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = Config
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Items
    if L3_2 then
      L3_2 = Config
      L3_2 = L3_2.Items
      L3_2 = L3_2[A0_2]
    end
  end
  if L3_2 then
    L4_2 = type
    L5_2 = L3_2.d
    L4_2 = L4_2(L5_2)
    if "table" == L4_2 then
      L4_2 = {}
      L5_2 = tonumber
      L6_2 = L3_2.d
      L6_2 = L6_2[1]
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = 0.0
      end
      L6_2 = tonumber
      L7_2 = L3_2.d
      L7_2 = L7_2[2]
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = 0.0
      end
      L7_2 = tonumber
      L8_2 = L3_2.d
      L8_2 = L8_2[3]
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = 0.0
      end
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L1_2 = L4_2
      L4_2 = {}
      L5_2 = tonumber
      L6_2 = L3_2.d
      L6_2 = L6_2[4]
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = 0.0
      end
      L6_2 = tonumber
      L7_2 = L3_2.d
      L7_2 = L7_2[5]
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = 0.0
      end
      L7_2 = tonumber
      L8_2 = L3_2.d
      L8_2 = L8_2[6]
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = 0.0
      end
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L2_2 = L4_2
    else
      L4_2 = type
      L5_2 = L3_2.off
      L4_2 = L4_2(L5_2)
      if "table" == L4_2 then
        L4_2 = {}
        L5_2 = tonumber
        L6_2 = L3_2.off
        L6_2 = L6_2[1]
        if not L6_2 then
          L6_2 = L3_2.off
          L6_2 = L6_2.x
        end
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L5_2 = 0.0
        end
        L6_2 = tonumber
        L7_2 = L3_2.off
        L7_2 = L7_2[2]
        if not L7_2 then
          L7_2 = L3_2.off
          L7_2 = L7_2.y
        end
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = 0.0
        end
        L7_2 = tonumber
        L8_2 = L3_2.off
        L8_2 = L8_2[3]
        if not L8_2 then
          L8_2 = L3_2.off
          L8_2 = L8_2.z
        end
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = 0.0
        end
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L4_2[3] = L7_2
        L1_2 = L4_2
      end
      L4_2 = type
      L5_2 = L3_2.rot
      L4_2 = L4_2(L5_2)
      if "table" == L4_2 then
        L4_2 = {}
        L5_2 = tonumber
        L6_2 = L3_2.rot
        L6_2 = L6_2[1]
        if not L6_2 then
          L6_2 = L3_2.rot
          L6_2 = L6_2.x
        end
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L5_2 = 0.0
        end
        L6_2 = tonumber
        L7_2 = L3_2.rot
        L7_2 = L7_2[2]
        if not L7_2 then
          L7_2 = L3_2.rot
          L7_2 = L7_2.y
        end
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = 0.0
        end
        L7_2 = tonumber
        L8_2 = L3_2.rot
        L8_2 = L8_2[3]
        if not L8_2 then
          L8_2 = L3_2.rot
          L8_2 = L8_2.z
        end
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = 0.0
        end
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L4_2[3] = L7_2
        L2_2 = L4_2
      end
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
defaultTransformForItem = L37_1
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = ensureRuntimeInventory
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L1_2.items = L2_2
  L2_2 = {}
  L1_2.layout = L2_2
  L2_2 = L1_2.meta
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.meta = L2_2
  L2_2 = {}
  L3_2 = "moneta"
  L4_2 = "mweapon_pistol"
  L5_2 = "mweapon_smg"
  L6_2 = "mweapon_pumpshotgun"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = 5
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = #L2_2
    L8_2 = L8_2(L9_2)
    L8_2 = L2_2[L8_2]
    L9_2 = Config
    L9_2 = L9_2.Items
    L9_2 = L9_2[L8_2]
    if L9_2 then
      L10_2 = defaultTransformForItem
      L11_2 = L8_2
      L10_2, L11_2 = L10_2(L11_2)
      L12_2 = makeUid
      L13_2 = L8_2
      L12_2 = L12_2(L13_2)
      if "moneta" == L8_2 then
        L13_2 = math
        L13_2 = L13_2.random
        L14_2 = 1
        L15_2 = 5
        L13_2 = L13_2(L14_2, L15_2)
        if L13_2 then
          goto lbl_58
        end
      end
      L13_2 = 1
      ::lbl_58::
      L14_2 = L1_2.items
      L15_2 = L1_2.items
      L15_2 = #L15_2
      L15_2 = L15_2 + 1
      L16_2 = {}
      L16_2.uid = L12_2
      L16_2.item = L8_2
      L16_2.count = L13_2
      L16_2.off = L10_2
      L16_2.rot = L11_2
      L16_2.meta = nil
      L14_2[L15_2] = L16_2
      L14_2 = L1_2.layout
      L15_2 = {}
      L15_2.off = L10_2
      L15_2.placed = true
      L15_2.pending = false
      L14_2[L12_2] = L15_2
    end
  end
  L4_2 = L1_2.meta
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L6_2 = L1_2.meta
  L6_2 = L6_2.respawnSeconds
  if not L6_2 then
    L6_2 = 900
  end
  L5_2 = L5_2 + L6_2
  L4_2.nextRespawnAt = L5_2
  L4_2 = L1_2.meta
  L4_2.generated = true
  L4_2 = bumpRevRuntime
  L5_2 = A0_2
  L4_2(L5_2)
end
generateLootFor = L37_1
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ensureRuntimeInventory
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.meta
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.meta = L2_2
  L2_2 = L1_2.meta
  L2_2 = L2_2.generated
  if true ~= L2_2 then
    L2_2 = generateLootFor
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = L1_2.meta
    L2_2.generated = true
  end
end
ensureLootReady = L37_1
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  if A0_2 then
    L2_2 = A0_2.layout
    if L2_2 then
      L2_2 = pairs
      L3_2 = A0_2.layout
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        if L7_2 then
          L8_2 = L7_2.placed
          if false == L8_2 then
            L1_2 = L1_2 + 1
          end
        end
      end
    end
  end
  return L1_2
end
countNotPlaced = L37_1
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2.items
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 then
      L9_2 = L8_2.item
      if L9_2 == A1_2 then
        L9_2 = tonumber
        L10_2 = L8_2.count
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = 1
        end
        L2_2 = L2_2 + L9_2
      end
    end
  end
  return L2_2
end
countTotalUnits = L37_1
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2.items
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
function L38_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = Config
  L4_2 = L4_2.Items
  L4_2 = L4_2[A2_2]
  if not L4_2 then
    L5_2 = false
    L6_2 = "bad_item"
    return L5_2, L6_2
  end
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2
  if A3_2 <= 0 then
    L5_2 = false
    L6_2 = "bad_count"
    return L5_2, L6_2
  end
  L5_2 = ensureInv
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = nil
  L7_2 = L4_2.stackable
  if true == L7_2 then
    L7_2 = false
    L8_2 = pairs
    L9_2 = L5_2.items
    if not L9_2 then
      L9_2 = {}
    end
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2.item
      if L14_2 == A2_2 then
        L7_2 = true
        break
      end
    end
    if L7_2 then
      L8_2 = 0
      L6_2 = L8_2 or L6_2
    end
    if not L8_2 then
      L6_2 = 1
    end
  else
    L6_2 = A3_2
  end
  L7_2 = Config
  L7_2 = L7_2.InvMaxSlots
  if not L7_2 then
    L7_2 = 100
  end
  L8_2 = L37_1
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2 + L6_2
  if L7_2 < L9_2 then
    L9_2 = false
    L10_2 = "full"
    return L9_2, L10_2
  end
  L9_2 = nil
  L10_2 = L4_2.maxInInventory
  if L10_2 then
    L10_2 = tonumber
    L11_2 = L4_2.maxInInventory
    L10_2 = L10_2(L11_2)
    L9_2 = L10_2
  else
    L10_2 = Config
    L10_2 = L10_2.MaxPerInv
    if L10_2 then
      L10_2 = Config
      L10_2 = L10_2.MaxPerInv
      L10_2 = L10_2[A2_2]
      if L10_2 then
        L10_2 = tonumber
        L11_2 = Config
        L11_2 = L11_2.MaxPerInv
        L11_2 = L11_2[A2_2]
        L10_2 = L10_2(L11_2)
        L9_2 = L10_2
      end
    end
  end
  if L9_2 and L9_2 > 0 then
    L10_2 = countTotalUnits
    L11_2 = L5_2
    L12_2 = A2_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L10_2 + A3_2
    if L9_2 < L11_2 then
      L11_2 = false
      L12_2 = "item_limit"
      return L11_2, L12_2
    end
  end
  L10_2 = Config
  L10_2 = L10_2.InvMaxNotPlaced
  if not L10_2 then
    L10_2 = 12
  end
  L11_2 = countNotPlaced
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  L12_2 = L11_2 + L6_2
  if L10_2 < L12_2 then
    L12_2 = false
    L13_2 = "full"
    return L12_2, L13_2
  end
  L12_2 = true
  return L12_2
end
canReceiveIntoInv = L38_1
function L38_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = Config
  L4_2 = L4_2.Items
  L4_2 = L4_2[A2_2]
  if not L4_2 then
    L5_2 = false
    L6_2 = "bad_item"
    return L5_2, L6_2
  end
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2
  if A3_2 <= 0 then
    L5_2 = false
    L6_2 = "bad_count"
    return L5_2, L6_2
  end
  L5_2 = ensureInv
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = canReceiveIntoInv
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L8_2 = false
    L9_2 = L7_2
    return L8_2, L9_2
  end
  L8_2 = defaultTransformForItem
  L9_2 = A2_2
  L8_2, L9_2 = L8_2(L9_2)
  L10_2 = L4_2.stackable
  if true == L10_2 then
    L10_2 = makeUid
    L11_2 = A2_2
    L10_2 = L10_2(L11_2)
    L11_2 = L5_2.items
    L12_2 = L5_2.items
    L12_2 = #L12_2
    L12_2 = L12_2 + 1
    L13_2 = {}
    L13_2.uid = L10_2
    L13_2.item = A2_2
    L13_2.count = A3_2
    L13_2.off = L8_2
    L13_2.rot = L9_2
    L13_2.meta = nil
    L11_2[L12_2] = L13_2
    L11_2 = ensureLayoutEntry
    L12_2 = L5_2
    L13_2 = L10_2
    L14_2 = L8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L11_2.off = L8_2
    L11_2.placed = false
    L12_2 = bumpRevDB
    L13_2 = A0_2
    L14_2 = A1_2
    L12_2(L13_2, L14_2)
    L12_2 = true
    return L12_2
  end
  L10_2 = 1
  L11_2 = A3_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = makeUid
    L15_2 = A2_2
    L14_2 = L14_2(L15_2)
    L15_2 = L5_2.items
    L16_2 = L5_2.items
    L16_2 = #L16_2
    L16_2 = L16_2 + 1
    L17_2 = {}
    L17_2.uid = L14_2
    L17_2.item = A2_2
    L17_2.count = 1
    L17_2.off = L8_2
    L17_2.rot = L9_2
    L17_2.meta = nil
    L15_2[L16_2] = L17_2
    L15_2 = ensureLayoutEntry
    L16_2 = L5_2
    L17_2 = L14_2
    L18_2 = L8_2
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L15_2.off = L8_2
    L15_2.placed = false
  end
  L10_2 = bumpRevDB
  L11_2 = A0_2
  L12_2 = A1_2
  L10_2(L11_2, L12_2)
  L10_2 = true
  return L10_2
end
giveIntoInv = L38_1
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L19_1
  L3_2 = L19_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[A0_2] = L3_2
  L2_2 = L19_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = nowMs
  L3_2 = L3_2()
  if L2_2 then
    L4_2 = L3_2 - L2_2
    L5_2 = L3_1
    if L4_2 < L5_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = L19_1
  L4_2 = L4_2[A0_2]
  L4_2[A1_2] = L3_2
  L4_2 = true
  return L4_2
end
canDoLoad = L38_1
L38_1 = RegisterNetEvent
L39_1 = "inv3d:load"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = source
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = "player"
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = canDoLoad
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = isRuntimeInv
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = ensureLootReady
      L3_2 = A0_2
      L2_2(L3_2)
      L2_2 = ensureRuntimeInventory
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = TriggerClientEvent
      L4_2 = "inv3d:loadResult"
      L5_2 = L1_2
      L6_2 = A0_2
      L7_2 = L2_2.items
      if not L7_2 then
        L7_2 = {}
      end
      L8_2 = L2_2.layout
      if not L8_2 then
        L8_2 = {}
      end
      L9_2 = L2_2.rev
      if not L9_2 then
        L9_2 = 0
      end
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      return
    end
    L2_2 = getOwnerKeyForInv
    L3_2 = L1_2
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = ensureInv
    L4_2 = L2_2
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = TriggerClientEvent
    L5_2 = "inv3d:loadResult"
    L6_2 = L1_2
    L7_2 = A0_2
    L8_2 = L3_2.items
    if not L8_2 then
      L8_2 = {}
    end
    L9_2 = L3_2.layout
    if not L9_2 then
      L9_2 = {}
    end
    L10_2 = L3_2.rev
    if not L10_2 then
      L10_2 = 0
    end
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L2_2 = isRuntimeInv
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = ensureLootReady
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = ensureRuntimeInventory
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = TriggerClientEvent
    L4_2 = "inv3d:loadResult"
    L5_2 = L1_2
    L6_2 = A0_2
    L7_2 = L2_2.items
    if not L7_2 then
      L7_2 = {}
    end
    L8_2 = L2_2.layout
    if not L8_2 then
      L8_2 = {}
    end
    L9_2 = L2_2.rev
    if not L9_2 then
      L9_2 = 0
    end
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L2_2 = getOwnerKeyForInv
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ensureInv
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = false
  L5_2 = Config
  L5_2 = L5_2.starterPack
  if L5_2 then
    L5_2 = getPlayerKey
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    if L2_2 == L5_2 then
      L5_2 = L3_2.items
      if not L5_2 then
        L5_2 = {}
      end
      L5_2 = #L5_2
      if 0 == L5_2 then
        L5_2 = {}
        L3_2.items = L5_2
        L5_2 = ipairs
        L6_2 = Config
        L6_2 = L6_2.DefaultLoadout
        if not L6_2 then
          L6_2 = {}
        end
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = Config
          L11_2 = L11_2.Items
          L11_2 = L11_2[L10_2]
          if L11_2 then
            L11_2 = defaultTransformForItem
            L12_2 = L10_2
            L11_2, L12_2 = L11_2(L12_2)
            L13_2 = L3_2.items
            L14_2 = L3_2.items
            L14_2 = #L14_2
            L14_2 = L14_2 + 1
            L15_2 = {}
            L16_2 = makeUid
            L17_2 = L10_2
            L16_2 = L16_2(L17_2)
            L15_2.uid = L16_2
            L15_2.item = L10_2
            L15_2.count = 1
            L15_2.off = L11_2
            L15_2.rot = L12_2
            L13_2[L14_2] = L15_2
          end
        end
        L4_2 = true
      end
    end
  end
  L5_2 = 1
  L6_2 = L3_2.items
  if not L6_2 then
    L6_2 = {}
  end
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2.items
    L9_2 = L9_2[L8_2]
    if L9_2 then
      L10_2 = L9_2.count
      if nil == L10_2 then
        L9_2.count = 1
        L4_2 = true
      end
      L10_2 = L9_2.off
      if not L10_2 then
        L10_2 = defaultTransformForItem
        L11_2 = L9_2.item
        L10_2 = L10_2(L11_2)
        L9_2.off = L10_2
        L4_2 = true
      end
      L10_2 = ensureLayoutEntry
      L11_2 = L3_2
      L12_2 = L9_2.uid
      L13_2 = L9_2.off
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  if L4_2 then
    L5_2 = bumpRevDB
    L6_2 = L2_2
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  end
  if "player" == A0_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "inv3d:clientRebuildWeaponHolsters"
    L7_2 = L1_2
    L8_2 = L3_2.items
    if not L8_2 then
      L8_2 = {}
    end
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = TriggerClientEvent
  L6_2 = "inv3d:loadResult"
  L7_2 = L1_2
  L8_2 = A0_2
  L9_2 = L3_2.items
  if not L9_2 then
    L9_2 = {}
  end
  L10_2 = L3_2.layout
  if not L10_2 then
    L10_2 = {}
  end
  L11_2 = L3_2.rev
  if not L11_2 then
    L11_2 = 0
  end
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:sync"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = "player"
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 0
  end
  L3_2 = isRuntimeInv
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = ensureRuntimeInventory
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.rev
    if not L4_2 then
      L4_2 = 0
    end
    if A1_2 == L4_2 then
      L4_2 = TriggerClientEvent
      L5_2 = "inv3d:syncNoChange"
      L6_2 = L2_2
      L7_2 = A0_2
      L8_2 = L3_2.rev
      if not L8_2 then
        L8_2 = 0
      end
      L4_2(L5_2, L6_2, L7_2, L8_2)
    else
      L4_2 = TriggerClientEvent
      L5_2 = "inv3d:loadResult"
      L6_2 = L2_2
      L7_2 = A0_2
      L8_2 = L3_2.items
      if not L8_2 then
        L8_2 = {}
      end
      L9_2 = L3_2.layout
      if not L9_2 then
        L9_2 = {}
      end
      L10_2 = L3_2.rev
      if not L10_2 then
        L10_2 = 0
      end
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    return
  end
  L3_2 = getOwnerKeyForInv
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = ensureInv
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.rev
  if not L5_2 then
    L5_2 = 0
  end
  if A1_2 == L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "inv3d:syncNoChange"
    L7_2 = L2_2
    L8_2 = A0_2
    L9_2 = L4_2.rev
    if not L9_2 then
      L9_2 = 0
    end
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = TriggerClientEvent
    L6_2 = "inv3d:loadResult"
    L7_2 = L2_2
    L8_2 = A0_2
    L9_2 = L4_2.items
    if not L9_2 then
      L9_2 = {}
    end
    L10_2 = L4_2.layout
    if not L10_2 then
      L10_2 = {}
    end
    L11_2 = L4_2.rev
    if not L11_2 then
      L11_2 = 0
    end
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:saveLayout"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = "player"
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = next
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    return
  end
  L3_2 = isRuntimeInv
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = ensureRuntimeInventory
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.layout
    if not L4_2 then
      L4_2 = {}
    end
    L3_2.layout = L4_2
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = tostring
      L11_2 = L8_2 or L11_2
      if not L8_2 then
        L11_2 = ""
      end
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
      if "" ~= L8_2 then
        L10_2 = type
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if "table" == L10_2 then
          L10_2 = L3_2.layout
          L11_2 = L3_2.layout
          L11_2 = L11_2[L8_2]
          if not L11_2 then
            L11_2 = {}
          end
          L10_2[L8_2] = L11_2
          L10_2 = L9_2.off
          if L10_2 then
            L10_2 = sanitizeVec3
            L11_2 = L9_2.off
            L10_2 = L10_2(L11_2)
            if L10_2 then
              L11_2 = L3_2.layout
              L11_2 = L11_2[L8_2]
              L11_2.off = L10_2
            end
          end
          L10_2 = L9_2.placed
          if nil ~= L10_2 then
            L10_2 = L3_2.layout
            L10_2 = L10_2[L8_2]
            L11_2 = L9_2.placed
            L11_2 = true == L11_2
            L10_2.placed = L11_2
          end
          L10_2 = L9_2.pending
          if nil ~= L10_2 then
            L10_2 = L3_2.layout
            L10_2 = L10_2[L8_2]
            L11_2 = L9_2.pending
            L11_2 = true == L11_2
            L10_2.pending = L11_2
          end
        end
      end
    end
    L4_2 = bumpRevRuntime
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = notifyInvChanged
    L5_2 = A0_2
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    return
  end
  L3_2 = getOwnerKeyForInv
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = ensureInv
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.layout
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.layout = L5_2
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = tostring
    L12_2 = L9_2 or L12_2
    if not L9_2 then
      L12_2 = ""
    end
    L11_2 = L11_2(L12_2)
    L9_2 = L11_2
    if "" ~= L9_2 then
      L11_2 = type
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if "table" == L11_2 then
        L11_2 = L4_2.layout
        L12_2 = L4_2.layout
        L12_2 = L12_2[L9_2]
        if not L12_2 then
          L12_2 = {}
        end
        L11_2[L9_2] = L12_2
        L11_2 = L10_2.off
        if L11_2 then
          L11_2 = sanitizeVec3
          L12_2 = L10_2.off
          L11_2 = L11_2(L12_2)
          if L11_2 then
            L12_2 = L4_2.layout
            L12_2 = L12_2[L9_2]
            L12_2.off = L11_2
          end
        end
        L11_2 = L10_2.placed
        if nil ~= L11_2 then
          L11_2 = L4_2.layout
          L11_2 = L11_2[L9_2]
          L12_2 = L10_2.placed
          L12_2 = true == L12_2
          L11_2.placed = L12_2
        end
        L11_2 = L10_2.pending
        if nil ~= L11_2 then
          L11_2 = L4_2.layout
          L11_2 = L11_2[L9_2]
          L12_2 = L10_2.pending
          L12_2 = true == L12_2
          L11_2.pending = L12_2
        end
      end
    end
  end
  L5_2 = bumpRevDB
  L6_2 = L3_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = flushDBNow
  L5_2()
  L5_2 = notifyInvChanged
  L6_2 = A0_2
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:setPlaced"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  A2_2 = true == A2_2
  if "" == A1_2 then
    return
  end
  L4_2 = isRuntimeInv
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = ensureRuntimeInventory
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.layout
    if not L5_2 then
      L5_2 = {}
    end
    L4_2.layout = L5_2
    L5_2 = L4_2.layout
    L6_2 = L4_2.layout
    L6_2 = L6_2[A1_2]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[A1_2] = L6_2
    L5_2 = L4_2.layout
    L5_2 = L5_2[A1_2]
    L5_2.placed = A2_2
    if A2_2 then
      L5_2 = L4_2.layout
      L5_2 = L5_2[A1_2]
      L5_2.pending = false
    end
    L5_2 = bumpRevRuntime
    L6_2 = A0_2
    L5_2(L6_2)
    L5_2 = notifyInvChanged
    L6_2 = A0_2
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    return
  end
  L4_2 = getOwnerKeyForInv
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.layout
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.layout = L6_2
  L6_2 = L5_2.layout
  L7_2 = L5_2.layout
  L7_2 = L7_2[A1_2]
  if not L7_2 then
    L7_2 = {}
  end
  L6_2[A1_2] = L7_2
  L6_2 = L5_2.layout
  L6_2 = L6_2[A1_2]
  L6_2.placed = A2_2
  if A2_2 then
    L6_2 = L5_2.layout
    L6_2 = L6_2[A1_2]
    L6_2.pending = false
  end
  L6_2 = bumpRevDB
  L7_2 = L4_2
  L8_2 = A0_2
  L6_2(L7_2, L8_2)
  L6_2 = flushDBNow
  L6_2()
  L6_2 = notifyInvChanged
  L7_2 = A0_2
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:setTransform"
function L40_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = source
  L5_2 = tostring
  L6_2 = A0_2 or L6_2
  if not A0_2 then
    L6_2 = "player"
  end
  L5_2 = L5_2(L6_2)
  A0_2 = L5_2
  L5_2 = tostring
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  if "" == A1_2 then
    return
  end
  L5_2 = sanitizeVec3
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  A2_2 = L5_2
  L5_2 = sanitizeVec3
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2
  if not A2_2 or not A3_2 then
    return
  end
  L5_2 = isRuntimeInv
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = ensureRuntimeInventory
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = false
    L7_2 = 1
    L8_2 = L5_2.items
    if not L8_2 then
      L8_2 = {}
    end
    L8_2 = #L8_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L5_2.items
      L11_2 = L11_2[L10_2]
      if L11_2 then
        L12_2 = L11_2.uid
        if L12_2 == A1_2 then
          L11_2.off = A2_2
          L11_2.rot = A3_2
          L6_2 = true
          break
        end
      end
    end
    if not L6_2 then
      return
    end
    L7_2 = L5_2.layout
    L8_2 = L5_2.layout
    L8_2 = L8_2[A1_2]
    if not L8_2 then
      L8_2 = {}
    end
    L7_2[A1_2] = L8_2
    L7_2 = L5_2.layout
    L7_2 = L7_2[A1_2]
    L7_2.off = A2_2
    L7_2 = L5_2.layout
    L7_2 = L7_2[A1_2]
    L7_2.placed = true
    L7_2 = L5_2.layout
    L7_2 = L7_2[A1_2]
    L7_2.pending = false
    L7_2 = bumpRevRuntime
    L8_2 = A0_2
    L7_2(L8_2)
    L7_2 = notifyInvChanged
    L8_2 = A0_2
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
    return
  end
  L5_2 = getOwnerKeyForInv
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = ensureInv
  L7_2 = L5_2
  L8_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = false
  L8_2 = 1
  L9_2 = L6_2.items
  if not L9_2 then
    L9_2 = {}
  end
  L9_2 = #L9_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L6_2.items
    L12_2 = L12_2[L11_2]
    if L12_2 then
      L13_2 = L12_2.uid
      if L13_2 == A1_2 then
        L12_2.off = A2_2
        L12_2.rot = A3_2
        L7_2 = true
        break
      end
    end
  end
  if not L7_2 then
    return
  end
  L8_2 = L6_2.layout
  L9_2 = L6_2.layout
  L9_2 = L9_2[A1_2]
  if not L9_2 then
    L9_2 = {}
  end
  L8_2[A1_2] = L9_2
  L8_2 = L6_2.layout
  L8_2 = L8_2[A1_2]
  L8_2.off = A2_2
  L8_2 = L6_2.layout
  L8_2 = L8_2[A1_2]
  L8_2.placed = true
  L8_2 = L6_2.layout
  L8_2 = L8_2[A1_2]
  L8_2.pending = false
  L8_2 = bumpRevDB
  L9_2 = L5_2
  L10_2 = A0_2
  L8_2(L9_2, L10_2)
  L8_2 = flushDBNow
  L8_2()
  L8_2 = notifyInvChanged
  L9_2 = A0_2
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:removeItem"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if "" == A1_2 or A2_2 <= 0 then
    return
  end
  L4_2 = isRuntimeInv
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = getOwnerKeyForInv
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.items
  L6_2 = #L6_2
  L7_2 = 1
  L8_2 = -1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2.items
    L10_2 = L10_2[L9_2]
    if L10_2 then
      L11_2 = L10_2.uid
      if L11_2 == A1_2 then
        L11_2 = L10_2.item
        L12_2 = math
        L12_2 = L12_2.floor
        L13_2 = tonumber
        L14_2 = L10_2.count
        L13_2 = L13_2(L14_2)
        if not L13_2 then
          L13_2 = 1
        end
        L12_2 = L12_2(L13_2)
        L12_2 = L12_2 - A2_2
        L10_2.count = L12_2
        L12_2 = L10_2.count
        L13_2 = L10_2.count
        if L13_2 <= 0 then
          L13_2 = table
          L13_2 = L13_2.remove
          L14_2 = L5_2.items
          L15_2 = L9_2
          L13_2(L14_2, L15_2)
          L13_2 = L5_2.layout
          L13_2[A1_2] = nil
          L12_2 = 0
        end
        L13_2 = bumpRevDB
        L14_2 = L4_2
        L15_2 = A0_2
        L13_2(L14_2, L15_2)
        L13_2 = TriggerClientEvent
        L14_2 = "inv3d:removeResult"
        L15_2 = L3_2
        L16_2 = A0_2
        L17_2 = A1_2
        L18_2 = L12_2
        L19_2 = L11_2
        L20_2 = A2_2
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        if "police_shared" == A0_2 then
          L13_2 = notifyInvChangedNear
          L14_2 = L3_2
          L15_2 = A0_2
          L16_2 = L6_1
          L13_2(L14_2, L15_2, L16_2)
        end
        return
      end
    end
  end
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:saveItems"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = source
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = "player"
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = isRuntimeInv
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = getOwnerKeyForInv
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L4_2 = ensureInv
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.layout
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = {}
  L7_2 = 1
  L8_2 = #A1_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A1_2[L10_2]
    L12_2 = type
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if "table" == L12_2 then
      L12_2 = type
      L13_2 = L11_2.uid
      L12_2 = L12_2(L13_2)
      if "string" == L12_2 then
        L12_2 = type
        L13_2 = L11_2.item
        L12_2 = L12_2(L13_2)
        if "string" == L12_2 then
          L12_2 = math
          L12_2 = L12_2.floor
          L13_2 = tonumber
          L14_2 = L11_2.count
          L13_2 = L13_2(L14_2)
          if not L13_2 then
            L13_2 = 1
          end
          L12_2 = L12_2(L13_2)
          if L12_2 < 1 then
            L12_2 = 1
          end
          L13_2 = sanitizeVec3
          L14_2 = L11_2.off
          L13_2 = L13_2(L14_2)
          L14_2 = sanitizeVec3
          L15_2 = L11_2.rot
          L14_2 = L14_2(L15_2)
          if not L13_2 or not L14_2 then
            L15_2 = defaultTransformForItem
            L16_2 = L11_2.item
            L15_2, L16_2 = L15_2(L16_2)
            if not L13_2 then
              L13_2 = L15_2
            end
            if not L14_2 then
              L14_2 = L16_2
            end
          end
          L15_2 = #L6_2
          L15_2 = L15_2 + 1
          L16_2 = {}
          L17_2 = L11_2.uid
          L16_2.uid = L17_2
          L17_2 = L11_2.item
          L16_2.item = L17_2
          L16_2.count = L12_2
          L17_2 = L11_2.meta
          L16_2.meta = L17_2
          L16_2.off = L13_2
          L16_2.rot = L14_2
          L6_2[L15_2] = L16_2
          L15_2 = L11_2.uid
          L16_2 = L11_2.uid
          L16_2 = L5_2[L16_2]
          if not L16_2 then
            L16_2 = {}
            L16_2.off = L13_2
            L16_2.placed = false
            L16_2.pending = false
          end
          L5_2[L15_2] = L16_2
        end
      end
    end
  end
  L4_2.items = L6_2
  L4_2.layout = L5_2
  L7_2 = bumpRevDB
  L8_2 = L3_2
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = flushDBNow
  L7_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:merge"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = tostring
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if "" == A1_2 or "" == A2_2 or A1_2 == A2_2 then
    return
  end
  L4_2 = L14_1
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if not L4_2 or not L5_2 then
    return
  end
  L6_2 = ensureInv
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = nil
  L8_2 = nil
  L9_2 = 1
  L10_2 = L6_2.items
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L6_2.items
    L13_2 = L13_2[L12_2]
    if L13_2 then
      L14_2 = L13_2.uid
      if L14_2 == A1_2 then
        L7_2 = L12_2
      end
    end
    if L13_2 then
      L14_2 = L13_2.uid
      if L14_2 == A2_2 then
        L8_2 = L12_2
      end
    end
  end
  if not L7_2 or not L8_2 then
    return
  end
  L9_2 = L6_2.items
  L9_2 = L9_2[L7_2]
  L10_2 = L6_2.items
  L10_2 = L10_2[L8_2]
  if not L9_2 or not L10_2 then
    return
  end
  L11_2 = L9_2.item
  L12_2 = L10_2.item
  if L11_2 ~= L12_2 then
    return
  end
  L11_2 = Config
  L11_2 = L11_2.Items
  L12_2 = L9_2.item
  L11_2 = L11_2[L12_2]
  if L11_2 then
    L12_2 = L11_2.stackable
    if true == L12_2 then
      L12_2 = L11_2.noMerge
      if not L12_2 then
        goto lbl_93
      end
    end
  end
  do return end
  ::lbl_93::
  L12_2 = tonumber
  L13_2 = L11_2.maxStack
  if not L13_2 then
    L13_2 = L11_2.maxstack
    if not L13_2 then
      L13_2 = 1
    end
  end
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = 1
  end
  L13_2 = math
  L13_2 = L13_2.floor
  L14_2 = tonumber
  L15_2 = L9_2.count
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = 1
  end
  L13_2 = L13_2(L14_2)
  L9_2.count = L13_2
  L13_2 = math
  L13_2 = L13_2.floor
  L14_2 = tonumber
  L15_2 = L10_2.count
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = 1
  end
  L13_2 = L13_2(L14_2)
  L10_2.count = L13_2
  L13_2 = L10_2.count
  L13_2 = L12_2 - L13_2
  if L13_2 <= 0 then
    return
  end
  L14_2 = math
  L14_2 = L14_2.min
  L15_2 = L9_2.count
  L16_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2)
  if L14_2 <= 0 then
    return
  end
  L15_2 = L10_2.count
  L15_2 = L15_2 + L14_2
  L10_2.count = L15_2
  L15_2 = L9_2.count
  L15_2 = L15_2 - L14_2
  L9_2.count = L15_2
  L15_2 = L9_2.count
  if L15_2 <= 0 then
    L15_2 = table
    L15_2 = L15_2.remove
    L16_2 = L6_2.items
    L17_2 = L7_2
    L15_2(L16_2, L17_2)
    L15_2 = L6_2.layout
    L15_2[A1_2] = nil
  end
  L15_2 = bumpRevDB
  L16_2 = L4_2
  L17_2 = L5_2
  L15_2(L16_2, L17_2)
  L15_2 = TriggerClientEvent
  L16_2 = "inv3d:mergeResult"
  L17_2 = L3_2
  L18_2 = A0_2
  L19_2 = A1_2
  L20_2 = A2_2
  L21_2 = L10_2.count
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:split"
function L40_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = source
  L5_2 = tostring
  L6_2 = A0_2 or L6_2
  if not A0_2 then
    L6_2 = "player"
  end
  L5_2 = L5_2(L6_2)
  A0_2 = L5_2
  L5_2 = tostring
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0
  end
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2
  if "" == A1_2 or A3_2 <= 0 then
    return
  end
  L5_2 = L14_1
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if not L5_2 or not L6_2 then
    return
  end
  L7_2 = ensureInv
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = nil
  L9_2 = 1
  L10_2 = L7_2.items
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L7_2.items
    L13_2 = L13_2[L12_2]
    if L13_2 then
      L13_2 = L7_2.items
      L13_2 = L13_2[L12_2]
      L13_2 = L13_2.uid
      if L13_2 == A1_2 then
        L8_2 = L12_2
        break
      end
    end
  end
  if not L8_2 then
    return
  end
  L9_2 = L7_2.items
  L9_2 = L9_2[L8_2]
  L10_2 = math
  L10_2 = L10_2.floor
  L11_2 = tonumber
  L12_2 = L9_2.count
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = 1
  end
  L10_2 = L10_2(L11_2)
  if A3_2 >= L10_2 then
    return
  end
  L11_2 = L10_2 - A3_2
  L9_2.count = L11_2
  L11_2 = makeUid
  L12_2 = L9_2.item
  L11_2 = L11_2(L12_2)
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if "table" ~= L1_3 then
      return A0_3
    end
    L1_3 = {}
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = deepCopy
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      L1_3[L6_3] = L8_3
    end
    return L1_3
  end
  deepCopy = L12_2
  L12_2 = L7_2.items
  L13_2 = L7_2.items
  L13_2 = #L13_2
  L13_2 = L13_2 + 1
  L14_2 = {}
  L14_2.uid = L11_2
  L15_2 = L9_2.item
  L14_2.item = L15_2
  L14_2.count = A3_2
  L15_2 = deepCopy
  L16_2 = L9_2.meta
  L15_2 = L15_2(L16_2)
  L14_2.meta = L15_2
  L15_2 = L9_2.off
  L14_2.off = L15_2
  L15_2 = L9_2.rot
  L14_2.rot = L15_2
  L12_2[L13_2] = L14_2
  L12_2 = ensureLayoutEntry
  L13_2 = L7_2
  L14_2 = L11_2
  L15_2 = L9_2.off
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = L7_2.layout
  L12_2 = L12_2[L11_2]
  L13_2 = {}
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L12_2.off = L13_2
  L12_2 = L7_2.layout
  L12_2 = L12_2[L11_2]
  L12_2.placed = false
  L12_2 = L7_2.layout
  L12_2 = L12_2[L11_2]
  L12_2.pending = true
  L12_2 = bumpRevDB
  L13_2 = L5_2
  L14_2 = L6_2
  L12_2(L13_2, L14_2)
  L12_2 = TriggerClientEvent
  L13_2 = "inv3d:splitResult"
  L14_2 = L4_2
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = L11_2
  L18_2 = A3_2
  L19_2 = L9_2.count
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L12_2 = TriggerClientEvent
  L13_2 = "inv3d:reload"
  L14_2 = L4_2
  L15_2 = A0_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = TriggerClientEvent
  L13_2 = "inv3d:forceSyncNow"
  L14_2 = L4_2
  L15_2 = A0_2
  L12_2(L13_2, L14_2, L15_2)
end
L38_1(L39_1, L40_1)
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2.items
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 then
      L9_2 = L8_2.item
      if L9_2 == A1_2 then
        L9_2 = tonumber
        L10_2 = L8_2.count
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = 1
        end
        L2_2 = L2_2 + L9_2
      end
    end
  end
  return L2_2
end
countItem = L38_1
function L38_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A2_2
  L4_2 = A0_2.items
  if not L4_2 then
    L4_2 = {}
  end
  L4_2 = #L4_2
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2.items
    L8_2 = L8_2[L7_2]
    if L8_2 then
      L9_2 = L8_2.item
      if L9_2 == A1_2 then
        L9_2 = tonumber
        L10_2 = L8_2.count
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = 1
        end
        if L3_2 < L9_2 then
          L10_2 = L9_2 - L3_2
          L8_2.count = L10_2
          L10_2 = true
          return L10_2
        else
          L3_2 = L3_2 - L9_2
          L10_2 = table
          L10_2 = L10_2.remove
          L11_2 = A0_2.items
          L12_2 = L7_2
          L10_2(L11_2, L12_2)
          if L3_2 <= 0 then
            L10_2 = true
            return L10_2
          end
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
consumeItem = L38_1
L38_1 = RegisterNetEvent
L39_1 = "inv3d:ammoRequest"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  if A1_2 <= 0 then
    return
  end
  if "mweapon_pistol" ~= A0_2 and "mweapon_smg" ~= A0_2 and "mweapon_pumpshotgun" ~= A0_2 then
    return
  end
  L4_2 = L14_1
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if not L4_2 or not L5_2 then
    return
  end
  L6_2 = ensureInv
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = countItem
  L8_2 = L6_2
  L9_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = L7_2
  L10_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 <= 0 then
    L9_2 = TriggerClientEvent
    L10_2 = "inv3d:ammoResult"
    L11_2 = L3_2
    L12_2 = false
    L13_2 = 0
    L9_2(L10_2, L11_2, L12_2, L13_2)
    return
  end
  L9_2 = consumeItem
  L10_2 = L6_2
  L11_2 = A0_2
  L12_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  if not L9_2 then
    L10_2 = TriggerClientEvent
    L11_2 = "inv3d:ammoResult"
    L12_2 = L3_2
    L13_2 = false
    L14_2 = 0
    L10_2(L11_2, L12_2, L13_2, L14_2)
    return
  end
  L10_2 = bumpRevDB
  L11_2 = L4_2
  L12_2 = L5_2
  L10_2(L11_2, L12_2)
  L10_2 = TriggerClientEvent
  L11_2 = "inv3d:ammoResult"
  L12_2 = L3_2
  L13_2 = true
  L14_2 = L8_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = TriggerClientEvent
  L11_2 = "inv3d:reload"
  L12_2 = L3_2
  L13_2 = A2_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = TriggerClientEvent
  L11_2 = "inv3d:forceSyncNow"
  L12_2 = L3_2
  L13_2 = A2_2
  L10_2(L11_2, L12_2, L13_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "inv3d:giveShared"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "stash_default"
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = tonumber
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2 or A2_2
  if not L4_2 then
    A2_2 = 1
  end
  if "" == A1_2 then
    return
  end
  L4_2 = "__shared"
  L5_2 = giveIntoInv
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    return
  end
  L7_2 = notifyInvChanged
  L8_2 = A0_2
  L9_2 = L3_2
  L7_2(L8_2, L9_2)
end
L38_1(L39_1, L40_1)
function L38_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^([^#]+)"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
  end
  return A0_2
end
L39_1 = RegisterNetEvent
L40_1 = "inv3d:giveItem"
function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = source
  L5_2 = tonumber
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = L4_2
  end
  L6_2 = tostring
  L7_2 = A1_2 or L7_2
  if not A1_2 then
    L7_2 = "player"
  end
  L6_2 = L6_2(L7_2)
  A1_2 = L6_2
  L6_2 = L38_1
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  A2_2 = L6_2
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = tonumber
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 1
  end
  L6_2 = L6_2(L7_2)
  A3_2 = L6_2
  if L5_2 <= 0 or "" == A2_2 or A3_2 <= 0 then
    L6_2 = print
    L7_2 = "Amount not valid to give:"
    L8_2 = A2_2
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = GetPlayerName
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = print
    L7_2 = "^1[inv3d] target not valid:^0"
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = Config
  if L6_2 then
    L6_2 = Config
    L6_2 = L6_2.Items
    if L6_2 then
      L6_2 = Config
      L6_2 = L6_2.Items
      L6_2 = L6_2[A2_2]
      if L6_2 then
        goto lbl_66
      end
    end
  end
  L6_2 = print
  L7_2 = "This item not exist: "
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  do return end
  ::lbl_66::
  L6_2 = pcall
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = getPlayerKey
    L1_3 = L5_2
    L0_3 = L0_3(L1_3)
    L1_3 = A1_2
    if "player" ~= L1_3 then
      L1_3 = getOwnerKeyForInv
      L2_3 = L5_2
      L3_3 = A1_2
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        goto lbl_14
      end
    end
    L1_3 = L0_3
    ::lbl_14::
    L2_3 = giveIntoInv
    L3_3 = L1_3
    L4_3 = A1_2
    L5_3 = A2_2
    L6_3 = A3_2
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    if not L2_3 then
      if "full" == L3_3 then
        L4_3 = Config
        L4_3 = L4_3.Items
        L5_3 = A2_2
        L4_3 = L4_3[L5_3]
        L5_3 = TriggerClientEvent
        L6_3 = "inv3d:fullInventory"
        L7_3 = L5_2
        L8_3 = A2_2
        L9_3 = L4_3 or L9_3
        if L4_3 then
          L9_3 = L4_3.model
        end
        L5_3(L6_3, L7_3, L8_3, L9_3)
      elseif "item_limit" == L3_3 then
        L4_3 = TriggerClientEvent
        L5_3 = "inv3d:limitHit"
        L6_3 = L5_2
        L7_3 = A2_2
        L8_3 = maxInInv
        L4_3(L5_3, L6_3, L7_3, L8_3)
      end
      return
    end
    L4_3 = TriggerClientEvent
    L5_3 = "inv3d:notifyInv"
    L6_3 = L5_2
    L7_3 = A1_2
    L8_3 = A2_2
    L9_3 = A3_2
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L4_3 = TriggerClientEvent
    L5_3 = "inv3d:reload"
    L6_3 = L5_2
    L7_3 = A1_2
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = TriggerClientEvent
    L5_3 = "inv3d:forceSyncNow"
    L6_3 = L5_2
    L7_3 = A1_2
    L4_3(L5_3, L6_3, L7_3)
  end
  L6_2, L7_2 = L6_2(L7_2)
  if not L6_2 then
    L8_2 = print
    L9_2 = "^1[inv3d:giveItem ERROR]^0"
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L39_1(L40_1, L41_1)
L39_1 = exports
L40_1 = "GiveItem"
function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = tostring
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A3_2 = L4_2
  if not A0_2 or A0_2 <= 0 then
    L4_2 = false
    L5_2 = "bad_target"
    return L4_2, L5_2
  end
  if "" ~= A2_2 then
    L4_2 = Config
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.Items
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.Items
        L4_2 = L4_2[A2_2]
        if L4_2 then
          goto lbl_51
        end
      end
    end
  end
  L4_2 = false
  L5_2 = "bad_item"
  do return L4_2, L5_2 end
  ::lbl_51::
  if A3_2 <= 0 then
    L4_2 = false
    L5_2 = "bad_count"
    return L4_2, L5_2
  end
  L4_2 = getPlayerKey
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "player" ~= A1_2 then
    L5_2 = getOwnerKeyForInv
    L6_2 = A0_2
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_68
    end
  end
  L5_2 = L4_2
  ::lbl_68::
  L6_2 = giveIntoInv
  L7_2 = L5_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L8_2 = false
    L9_2 = L7_2 or L9_2
    if not L7_2 then
      L9_2 = "give_failed"
    end
    return L8_2, L9_2
  end
  L8_2 = TriggerClientEvent
  L9_2 = "inv3d:reload"
  L10_2 = A0_2
  L11_2 = A1_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = TriggerClientEvent
  L9_2 = "inv3d:forceSyncNow"
  L10_2 = A0_2
  L11_2 = A1_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = true
  return L8_2
end
L39_1(L40_1, L41_1)
L39_1 = RegisterNetEvent
L40_1 = "inv3d:serverGiveItem"
function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = source
  L5_2 = tonumber
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  A0_2 = L5_2 or A0_2
  if not L5_2 then
    A0_2 = L4_2
  end
  L5_2 = exports
  L6_2 = L0_1
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2
  L5_2 = L5_2.GiveItem
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if not L5_2 then
    L7_2 = print
    L8_2 = "[inv3d:serverGiveItem] failed:"
    L9_2 = L6_2
    L10_2 = "item:"
    L11_2 = A2_2
    L12_2 = "count:"
    L13_2 = A3_2
    L14_2 = "target:"
    L15_2 = A0_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
L39_1(L40_1, L41_1)
L39_1 = exports
L40_1 = "getItemCount"
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = "player"
  end
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  L3_2 = tostring
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2
  L3_2 = getPlayerKey
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = ensureInv
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = countItem
  L6_2 = L4_2
  L7_2 = A2_2
  return L5_2(L6_2, L7_2)
end
L39_1(L40_1, L41_1)
L39_1 = exports
L40_1 = "HasItem"
function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = tonumber
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  A3_2 = L4_2 or A3_2
  if not L4_2 then
    A3_2 = 1
  end
  L4_2 = exports
  L5_2 = L0_1
  L4_2 = L4_2[L5_2]
  L5_2 = L4_2
  L4_2 = L4_2.getItemCount
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A3_2 <= L4_2
  return L4_2
end
L39_1(L40_1, L41_1)
L39_1 = exports
L40_1 = "isInventoryEmpty"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = tostring
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = "player"
  end
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = getPlayerKey
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = ensureInv
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = ipairs
  L5_2 = L3_2.items
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tonumber
    L11_2 = L9_2.count
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = 0
    end
    if L10_2 > 0 then
      L10_2 = false
      return L10_2
    end
  end
  L4_2 = true
  return L4_2
end
L39_1(L40_1, L41_1)
L39_1 = RegisterNetEvent
L40_1 = "inv3d:removeItemByName"
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if not (A2_2 <= 0) and "" ~= A1_2 then
    L4_2 = isRuntimeInv
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      goto lbl_34
    end
  end
  do return end
  ::lbl_34::
  L4_2 = getOwnerKeyForInv
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = countItem
  L7_2 = L5_2
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  if A2_2 > L6_2 then
    L7_2 = TriggerClientEvent
    L8_2 = "inv3d:removeItemByNameResult"
    L9_2 = L3_2
    L10_2 = A1_2
    L11_2 = false
    L12_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L7_2 = A2_2
  L8_2 = L5_2.items
  L8_2 = #L8_2
  L9_2 = 1
  L10_2 = -1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L5_2.items
    L12_2 = L12_2[L11_2]
    if L12_2 then
      L13_2 = L12_2.item
      if L13_2 == A1_2 then
        L13_2 = tostring
        L14_2 = L12_2.uid
        if not L14_2 then
          L14_2 = ""
        end
        L13_2 = L13_2(L14_2)
        L14_2 = math
        L14_2 = L14_2.floor
        L15_2 = tonumber
        L16_2 = L12_2.count
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 1
        end
        L14_2 = L14_2(L15_2)
        L15_2 = math
        L15_2 = L15_2.min
        L16_2 = L14_2
        L17_2 = L7_2
        L15_2 = L15_2(L16_2, L17_2)
        L16_2 = L14_2 - L15_2
        L12_2.count = L16_2
        L7_2 = L7_2 - L15_2
        L16_2 = L12_2.count
        if L16_2 <= 0 then
          L16_2 = table
          L16_2 = L16_2.remove
          L17_2 = L5_2.items
          L18_2 = L11_2
          L16_2(L17_2, L18_2)
          if "" ~= L13_2 then
            L16_2 = L5_2.layout
            L16_2[L13_2] = nil
          end
        end
        if L7_2 <= 0 then
          break
        end
      end
    end
  end
  L8_2 = bumpRevDB
  L9_2 = L4_2
  L10_2 = A0_2
  L8_2(L9_2, L10_2)
  L8_2 = countItem
  L9_2 = L5_2
  L10_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = TriggerClientEvent
  L10_2 = "inv3d:removeItemByNameResult"
  L11_2 = L3_2
  L12_2 = A1_2
  L13_2 = true
  L14_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = TriggerClientEvent
  L10_2 = "inv3d:reload"
  L11_2 = L3_2
  L12_2 = A0_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = TriggerClientEvent
  L10_2 = "inv3d:forceSyncNow"
  L11_2 = L3_2
  L12_2 = A0_2
  L9_2(L10_2, L11_2, L12_2)
  if "police_shared" == A0_2 then
    L9_2 = notifyInvChangedNear
    L10_2 = L3_2
    L11_2 = A0_2
    L12_2 = L6_1
    L9_2(L10_2, L11_2, L12_2)
  end
end
L39_1(L40_1, L41_1)
L39_1 = exports
L40_1 = "RemoveItem"
function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = tostring
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A3_2 = L4_2
  if not A0_2 or A0_2 <= 0 or A3_2 <= 0 or "" == A2_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = getOwnerKeyForInv
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = countItem
  L7_2 = L5_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  if A3_2 > L6_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = A3_2
  L7_2 = L5_2.items
  L7_2 = #L7_2
  L8_2 = 1
  L9_2 = -1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L5_2.items
    L11_2 = L11_2[L10_2]
    if L11_2 then
      L12_2 = L11_2.item
      if L12_2 == A2_2 then
        L12_2 = tostring
        L13_2 = L11_2.uid
        if not L13_2 then
          L13_2 = ""
        end
        L12_2 = L12_2(L13_2)
        L13_2 = math
        L13_2 = L13_2.floor
        L14_2 = tonumber
        L15_2 = L11_2.count
        L14_2 = L14_2(L15_2)
        if not L14_2 then
          L14_2 = 1
        end
        L13_2 = L13_2(L14_2)
        L14_2 = math
        L14_2 = L14_2.min
        L15_2 = L13_2
        L16_2 = L6_2
        L14_2 = L14_2(L15_2, L16_2)
        L15_2 = L13_2 - L14_2
        L11_2.count = L15_2
        L6_2 = L6_2 - L14_2
        L15_2 = L11_2.count
        if L15_2 <= 0 then
          L15_2 = table
          L15_2 = L15_2.remove
          L16_2 = L5_2.items
          L17_2 = L10_2
          L15_2(L16_2, L17_2)
          if "" ~= L12_2 then
            L15_2 = L5_2.layout
            L15_2[L12_2] = nil
          end
        end
        if L6_2 <= 0 then
          break
        end
      end
    end
  end
  L7_2 = bumpRevDB
  L8_2 = L4_2
  L9_2 = A1_2
  L7_2(L8_2, L9_2)
  L7_2 = TriggerClientEvent
  L8_2 = "inv3d:reload"
  L9_2 = A0_2
  L10_2 = A1_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = TriggerClientEvent
  L8_2 = "inv3d:forceSyncNow"
  L9_2 = A0_2
  L10_2 = A1_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = true
  return L7_2
end
L39_1(L40_1, L41_1)
L39_1 = false
function L40_1(A0_2)
  local L1_2, L2_2
  L1_2 = L39_1
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
dprint = L40_1
L40_1 = RegisterNetEvent
L41_1 = "inv3d:tryPayCoins"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = source
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2 or A0_2
  if not L4_2 then
    A0_2 = 0
  end
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = tostring
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  L4_2 = getPlayerKey
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = countItem
  L7_2 = L5_2
  L8_2 = "moneta"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = dprint
  L8_2 = "[inv3d:tryPayCoins] src=%s pkey=%s invName=%s price=%s have=%s invType=%s invLen=%s"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = L3_2
  L11_2 = tostring
  L12_2 = L4_2
  L11_2 = L11_2(L12_2)
  L12_2 = A2_2
  L13_2 = A1_2
  L14_2 = tostring
  L15_2 = L6_2
  L14_2 = L14_2(L15_2)
  L15_2 = type
  L16_2 = L5_2
  L15_2 = L15_2(L16_2)
  L16_2 = tostring
  L17_2 = L5_2 or L17_2
  if not L5_2 then
    L17_2 = {}
  end
  L17_2 = #L17_2
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2 = type
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if "table" == L7_2 then
    L7_2 = 0
    L8_2 = pairs
    L9_2 = L5_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = type
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if "table" == L14_2 then
        L14_2 = L13_2.name
        if not L14_2 then
          L14_2 = L13_2.item
          if not L14_2 then
            L14_2 = L13_2.id
            if not L14_2 then
              L14_2 = L13_2.key
            end
          end
        end
        if "moneta" == L14_2 then
          L15_2 = dprint
          L16_2 = "[inv3d:tryPayCoins] FOUND moneta slot=%s amount=%s count=%s qty=%s"
          L17_2 = L16_2
          L16_2 = L16_2.format
          L18_2 = tostring
          L19_2 = L12_2
          L18_2 = L18_2(L19_2)
          L19_2 = tostring
          L20_2 = L13_2.amount
          L19_2 = L19_2(L20_2)
          L20_2 = tostring
          L21_2 = L13_2.count
          L20_2 = L20_2(L21_2)
          L21_2 = tostring
          L22_2 = L13_2.qty
          L21_2, L22_2 = L21_2(L22_2)
          L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
          L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
          L7_2 = L7_2 + 1
          if L7_2 >= 10 then
            break
          end
        end
      end
    end
  end
  if A1_2 <= 0 then
    L7_2 = TriggerClientEvent
    L8_2 = "inv3d:payCoinsResult"
    L9_2 = L3_2
    L10_2 = A0_2
    L11_2 = true
    L12_2 = 0
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  if A1_2 > L6_2 then
    L7_2 = dprint
    L8_2 = "[inv3d:tryPayCoins] FAIL have < price"
    L7_2(L8_2)
    L7_2 = TriggerClientEvent
    L8_2 = "inv3d:payCoinsResult"
    L9_2 = L3_2
    L10_2 = A0_2
    L11_2 = false
    L12_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  L7_2 = consumeItem
  L8_2 = L5_2
  L9_2 = "moneta"
  L10_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = dprint
  L9_2 = "[inv3d:tryPayCoins] consumeItem ok=%s"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = tostring
  L12_2 = L7_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L11_2(L12_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  if not L7_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "inv3d:payCoinsResult"
    L10_2 = L3_2
    L11_2 = A0_2
    L12_2 = false
    L13_2 = L6_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    return
  end
  L8_2 = bumpRevDB
  L9_2 = L4_2
  L10_2 = A2_2
  L8_2(L9_2, L10_2)
  L8_2 = TriggerClientEvent
  L9_2 = "inv3d:reload"
  L10_2 = L3_2
  L11_2 = A2_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = TriggerClientEvent
  L9_2 = "inv3d:payCoinsResult"
  L10_2 = L3_2
  L11_2 = A0_2
  L12_2 = true
  L13_2 = L6_2 - A1_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:checkEmptyInv"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = exports
  L3_2 = L0_1
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.isInventoryEmpty
  L4_2 = L1_2
  L5_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "inv3d:checkEmptyInvResult"
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:clearInventory"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = "player"
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = getPlayerKey
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = ensureInv
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L4_2.items = L5_2
  L5_2 = {}
  L4_2.layout = L5_2
  L5_2 = bumpRevDB
  L6_2 = L3_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = TriggerClientEvent
  L6_2 = "inv3d:reload"
  L7_2 = L2_2
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerClientEvent
  L6_2 = "inv3d:cleared"
  L7_2 = L2_2
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:clearWeaponSlot"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  if nil ~= A0_2 then
    L1_2 = A0_2
  end
  L2_2 = TriggerClientEvent
  L3_2 = "inv3d:clearWeaponSlot"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L40_1(L41_1, L42_1)
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2.items
  if not L3_2 then
    L3_2 = {}
  end
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.items
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = L6_2.uid
      if L7_2 == A1_2 then
        L7_2 = L5_2
        L8_2 = L6_2
        return L7_2, L8_2
      end
    end
  end
  L2_2 = nil
  L3_2 = nil
  return L2_2, L3_2
end
findItemByUid = L40_1
L40_1 = RegisterNetEvent
L41_1 = "inv3d:holderEquip"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = tostring
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if "primary" ~= A0_2 and "secondry" ~= A0_2 then
    return
  end
  if "" == A2_2 then
    return
  end
  L4_2 = getPlayerKey
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = findItemByUid
  L7_2 = L5_2
  L8_2 = A2_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if not L6_2 or not L7_2 then
    return
  end
  L8_2 = Config
  L8_2 = L8_2.Items
  L9_2 = L7_2.item
  L8_2 = L8_2[L9_2]
  if L8_2 then
    L9_2 = L8_2.weapon
    if L9_2 then
      goto lbl_59
    end
  end
  L9_2 = TriggerClientEvent
  L10_2 = "inv3d:holderError"
  L11_2 = L3_2
  L12_2 = "not_a_weapon"
  L9_2(L10_2, L11_2, L12_2)
  do return end
  ::lbl_59::
  L9_2 = readHoldersDB
  L9_2 = L9_2()
  L10_2 = L9_2[L4_2]
  if not L10_2 then
    L10_2 = {}
  end
  L9_2[L4_2] = L10_2
  L10_2 = L9_2[L4_2]
  L10_2 = L10_2[A0_2]
  if L10_2 then
    L11_2 = L10_2.item
    if L11_2 then
      L11_2 = "%s_%s_%s"
      L12_2 = L11_2
      L11_2 = L11_2.format
      L13_2 = L10_2.item
      L14_2 = os
      L14_2 = L14_2.time
      L14_2 = L14_2()
      L15_2 = math
      L15_2 = L15_2.random
      L16_2 = 100000
      L17_2 = 999999
      L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2)
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L5_2.items
      L14_2 = {}
      L14_2.uid = L11_2
      L15_2 = L10_2.item
      L14_2.item = L15_2
      L14_2.count = 1
      L15_2 = L10_2.meta
      if not L15_2 then
        L15_2 = nil
      end
      L14_2.meta = L15_2
      L12_2(L13_2, L14_2)
    end
  end
  L11_2 = L7_2.item
  L12_2 = L7_2.meta
  if not L12_2 then
    L12_2 = nil
  end
  L13_2 = math
  L13_2 = L13_2.floor
  L14_2 = tonumber
  L15_2 = L7_2.count
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = 1
  end
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2 - 1
  L7_2.count = L13_2
  L13_2 = L7_2.count
  if L13_2 <= 0 then
    L13_2 = table
    L13_2 = L13_2.remove
    L14_2 = L5_2.items
    L15_2 = L6_2
    L13_2(L14_2, L15_2)
    L13_2 = L5_2.layout
    L13_2[A2_2] = nil
  end
  L13_2 = L9_2[L4_2]
  L14_2 = {}
  L14_2.item = L11_2
  L14_2.meta = L12_2
  L13_2[A0_2] = L14_2
  L13_2 = bumpRevDB
  L14_2 = L4_2
  L15_2 = A1_2
  L13_2(L14_2, L15_2)
  L13_2 = markHoldersDirty
  L13_2()
  L13_2 = TriggerClientEvent
  L14_2 = "inv3d:holdersResult"
  L15_2 = L3_2
  L16_2 = L9_2[L4_2]
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = TriggerClientEvent
  L14_2 = "inv3d:reload"
  L15_2 = L3_2
  L16_2 = A1_2
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = TriggerClientEvent
  L14_2 = "inv3d:forceSyncNow"
  L15_2 = L3_2
  L16_2 = A1_2
  L13_2(L14_2, L15_2, L16_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:holderUnequip"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = "player"
  end
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if "primary" ~= A0_2 and "secondry" ~= A0_2 then
    return
  end
  L3_2 = getPlayerKey
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = readHoldersDB
  L4_2 = L4_2()
  L5_2 = L4_2[L3_2]
  if L5_2 then
    L5_2 = L4_2[L3_2]
    L5_2 = L5_2[A0_2]
  end
  if L5_2 then
    L6_2 = L5_2.item
    if L6_2 then
      goto lbl_35
    end
  end
  do return end
  ::lbl_35::
  L6_2 = giveIntoInv
  L7_2 = L3_2
  L8_2 = A1_2
  L9_2 = L5_2.item
  L10_2 = 1
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L7_2 = TriggerClientEvent
    L8_2 = "inv3d:reload"
    L9_2 = L2_2
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = TriggerClientEvent
    L8_2 = "inv3d:forceSyncNow"
    L9_2 = L2_2
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = L4_2[L3_2]
  L7_2[A0_2] = nil
  L7_2 = markHoldersDirty
  L7_2()
  L7_2 = TriggerClientEvent
  L8_2 = "inv3d:holdersResult"
  L9_2 = L2_2
  L10_2 = L4_2[L3_2]
  if not L10_2 then
    L10_2 = {}
  end
  L7_2(L8_2, L9_2, L10_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:requestHolders"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = source
  end
  L2_2 = getPlayerKey
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = readHoldersDB
  L3_2 = L3_2()
  L4_2 = TriggerClientEvent
  L5_2 = "inv3d:holdersResult"
  L6_2 = L1_2
  L7_2 = L3_2[L2_2]
  if not L7_2 then
    L7_2 = {}
  end
  L4_2(L5_2, L6_2, L7_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:updateHolderMeta"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if "primary" ~= A0_2 and "secondry" ~= A0_2 then
    return
  end
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = getPlayerKey
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = readHoldersDB
  L4_2 = L4_2()
  L5_2 = L4_2[L3_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2[L3_2] = L5_2
  L5_2 = L4_2[L3_2]
  L6_2 = L4_2[L3_2]
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    L6_2 = {}
  end
  L5_2[A0_2] = L6_2
  L5_2 = L4_2[L3_2]
  L5_2 = L5_2[A0_2]
  L6_2 = L4_2[L3_2]
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.meta
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.meta = L6_2
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L4_2[L3_2]
    L11_2 = L11_2[A0_2]
    L11_2 = L11_2.meta
    L11_2[L9_2] = L10_2
  end
  L5_2 = markHoldersDirty
  L5_2()
end
L40_1(L41_1, L42_1)
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = lootChests
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = {}
    L9_2 = {}
    L10_2 = L7_2.pos
    L10_2 = L10_2.x
    L11_2 = L7_2.pos
    L11_2 = L11_2.y
    L12_2 = L7_2.pos
    L12_2 = L12_2.z
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L8_2.pos = L9_2
    L9_2 = {}
    L10_2 = L7_2.rot
    L10_2 = L10_2.x
    L11_2 = L7_2.rot
    L11_2 = L11_2.y
    L12_2 = L7_2.rot
    L12_2 = L12_2.z
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L8_2.rot = L9_2
    L9_2 = L17_1
    L9_2 = L9_2[L6_2]
    L9_2 = true == L9_2
    L8_2.open = L9_2
    L1_2[L6_2] = L8_2
  end
  L2_2 = TriggerClientEvent
  L3_2 = "inv3d:chestsSync"
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
sendChestSync = L40_1
L40_1 = RegisterNetEvent
L41_1 = "inv3d:requestChestsSync"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = sendChestSync
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = source
  end
  L1_2(L2_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:openChestRequest"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = lootChests
  if L2_2 then
    L2_2 = lootChests
    L2_2 = L2_2[A0_2]
  end
  if not L2_2 then
    return
  end
  L3_2 = L18_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "inv3d:openChestDenied"
    L5_2 = L1_2
    L6_2 = A0_2
    L7_2 = "busy"
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = L18_1
  L3_2[A0_2] = true
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    L4_2 = L18_1
    L4_2[A0_2] = nil
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.x
  L6_2 = L2_2.pos
  L6_2 = L6_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = L4_2.y
  L7_2 = L2_2.pos
  L7_2 = L7_2.y
  L6_2 = L6_2 - L7_2
  L7_2 = L4_2.z
  L8_2 = L2_2.pos
  L8_2 = L8_2.z
  L7_2 = L7_2 - L8_2
  L8_2 = math
  L8_2 = L8_2.sqrt
  L9_2 = L5_2 * L5_2
  L10_2 = L6_2 * L6_2
  L9_2 = L9_2 + L10_2
  L10_2 = L7_2 * L7_2
  L9_2 = L9_2 + L10_2
  L8_2 = L8_2(L9_2)
  if L8_2 > 2.0 then
    L8_2 = L18_1
    L8_2[A0_2] = nil
    L8_2 = TriggerClientEvent
    L9_2 = "inv3d:openChestDenied"
    L10_2 = L1_2
    L11_2 = A0_2
    L12_2 = "too_far"
    L8_2(L9_2, L10_2, L11_2, L12_2)
    return
  end
  L8_2 = L17_1
  L8_2 = L8_2[A0_2]
  if true ~= L8_2 then
    L8_2 = L17_1
    L8_2[A0_2] = true
    L8_2 = TriggerClientEvent
    L9_2 = "inv3d:chestState"
    L10_2 = -1
    L11_2 = A0_2
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L8_2 = "loot:chest%d"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = A0_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = TriggerClientEvent
  L10_2 = "inv3d:openInvByName"
  L11_2 = L1_2
  L12_2 = L8_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = SetTimeout
  L10_2 = 350
  function L11_2()
    local L0_3, L1_3
    L1_3 = A0_2
    L0_3 = L18_1
    L0_3[L1_3] = nil
  end
  L9_2(L10_2, L11_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:takeFromInvToPlayer"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if "" == A0_2 or "" == A1_2 or A2_2 <= 0 then
    return
  end
  L4_2 = getPlayerKey
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = isRuntimeInv
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = ensureLootReady
    L6_2 = A0_2
    L5_2(L6_2)
    L5_2 = ensureRuntimeInventory
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = nil
    L7_2 = nil
    L8_2 = 1
    L9_2 = L5_2.items
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L5_2.items
      L12_2 = L12_2[L11_2]
      if L12_2 then
        L13_2 = L12_2.uid
        if L13_2 == A1_2 then
          L13_2 = L11_2
          L7_2 = L12_2
          L6_2 = L13_2
          break
        end
      end
    end
    if not L6_2 or not L7_2 then
      return
    end
    L8_2 = tostring
    L9_2 = L7_2.item
    if not L9_2 then
      L9_2 = ""
    end
    L8_2 = L8_2(L9_2)
    L9_2 = Config
    L9_2 = L9_2.Items
    L9_2 = L9_2[L8_2]
    if not L9_2 then
      return
    end
    L10_2 = math
    L10_2 = L10_2.floor
    L11_2 = tonumber
    L12_2 = L7_2.count
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = 1
    end
    L10_2 = L10_2(L11_2)
    L11_2 = math
    L11_2 = L11_2.min
    L12_2 = A2_2
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L9_2.stackable
    if true ~= L12_2 then
      L12_2 = math
      L12_2 = L12_2.min
      L13_2 = 1
      L14_2 = L10_2
      L12_2 = L12_2(L13_2, L14_2)
      L11_2 = L12_2
    end
    if L11_2 <= 0 then
      return
    end
    L12_2 = canReceiveIntoInv
    L13_2 = L4_2
    L14_2 = "player"
    L15_2 = L8_2
    L16_2 = L11_2
    L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    if not L12_2 then
      if "full" == L13_2 then
        L14_2 = TriggerClientEvent
        L15_2 = "inv3d:fullInventory"
        L16_2 = L3_2
        L17_2 = L8_2
        L18_2 = L9_2 or L18_2
        if L9_2 then
          L18_2 = L9_2.model
        end
        L14_2(L15_2, L16_2, L17_2, L18_2)
      end
      return
    end
    L14_2 = giveIntoInv
    L15_2 = L4_2
    L16_2 = "player"
    L17_2 = L8_2
    L18_2 = L11_2
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    if not L14_2 then
      return
    end
    L15_2 = L10_2 - L11_2
    L7_2.count = L15_2
    L15_2 = L7_2.count
    if L15_2 <= 0 then
      L15_2 = table
      L15_2 = L15_2.remove
      L16_2 = L5_2.items
      L17_2 = L6_2
      L15_2(L16_2, L17_2)
      L15_2 = L5_2.layout
      if L15_2 then
        L15_2 = L5_2.layout
        L15_2[A1_2] = nil
      end
    end
    L15_2 = bumpRevRuntime
    L16_2 = A0_2
    L15_2(L16_2)
    L15_2 = TriggerClientEvent
    L16_2 = "inv3d:reload"
    L17_2 = L3_2
    L18_2 = "player"
    L15_2(L16_2, L17_2, L18_2)
    L15_2 = TriggerClientEvent
    L16_2 = "inv3d:forceSyncNow"
    L17_2 = L3_2
    L18_2 = "player"
    L15_2(L16_2, L17_2, L18_2)
    L15_2 = notifyInvChanged
    L16_2 = A0_2
    L17_2 = L3_2
    L15_2(L16_2, L17_2)
    return
  end
  L5_2 = getOwnerKeyForInv
  L6_2 = L3_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = ensureInv
  L7_2 = L5_2
  L8_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = nil
  L8_2 = nil
  L9_2 = 1
  L10_2 = L6_2.items
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L6_2.items
    L13_2 = L13_2[L12_2]
    if L13_2 then
      L14_2 = L13_2.uid
      if L14_2 == A1_2 then
        L14_2 = L12_2
        L8_2 = L13_2
        L7_2 = L14_2
        break
      end
    end
  end
  if not L7_2 or not L8_2 then
    return
  end
  L9_2 = tostring
  L10_2 = L8_2.item
  if not L10_2 then
    L10_2 = ""
  end
  L9_2 = L9_2(L10_2)
  L10_2 = Config
  L10_2 = L10_2.Items
  L10_2 = L10_2[L9_2]
  if not L10_2 then
    return
  end
  L11_2 = math
  L11_2 = L11_2.floor
  L12_2 = tonumber
  L13_2 = L8_2.count
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = 1
  end
  L11_2 = L11_2(L12_2)
  L12_2 = math
  L12_2 = L12_2.min
  L13_2 = A2_2
  L14_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = L10_2.stackable
  if true ~= L13_2 then
    L13_2 = math
    L13_2 = L13_2.min
    L14_2 = 1
    L15_2 = L11_2
    L13_2 = L13_2(L14_2, L15_2)
    L12_2 = L13_2
  end
  if L12_2 <= 0 then
    return
  end
  L13_2 = canReceiveIntoInv
  L14_2 = L4_2
  L15_2 = "player"
  L16_2 = L9_2
  L17_2 = L12_2
  L13_2, L14_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  if not L13_2 then
    if "full" == L14_2 then
      L15_2 = TriggerClientEvent
      L16_2 = "inv3d:fullInventory"
      L17_2 = L3_2
      L18_2 = L9_2
      L19_2 = L10_2 or L19_2
      if L10_2 then
        L19_2 = L10_2.model
      end
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
    return
  end
  L15_2 = giveIntoInv
  L16_2 = L4_2
  L17_2 = "player"
  L18_2 = L9_2
  L19_2 = L12_2
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
  if not L15_2 then
    return
  end
  L16_2 = L11_2 - L12_2
  L8_2.count = L16_2
  L16_2 = L8_2.count
  if L16_2 <= 0 then
    L16_2 = table
    L16_2 = L16_2.remove
    L17_2 = L6_2.items
    L18_2 = L7_2
    L16_2(L17_2, L18_2)
    L16_2 = L6_2.layout
    L16_2[A1_2] = nil
  end
  L16_2 = bumpRevDB
  L17_2 = L5_2
  L18_2 = A0_2
  L16_2(L17_2, L18_2)
  L16_2 = TriggerClientEvent
  L17_2 = "inv3d:reload"
  L18_2 = L3_2
  L19_2 = "player"
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = TriggerClientEvent
  L17_2 = "inv3d:reload"
  L18_2 = L3_2
  L19_2 = A0_2
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = TriggerClientEvent
  L17_2 = "inv3d:forceSyncNow"
  L18_2 = L3_2
  L19_2 = "player"
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = TriggerClientEvent
  L17_2 = "inv3d:forceSyncNow"
  L18_2 = L3_2
  L19_2 = A0_2
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = notifyInvChanged
  L17_2 = A0_2
  L18_2 = L3_2
  L16_2(L17_2, L18_2)
end
L40_1(L41_1, L42_1)
L40_1 = exports
L41_1 = "GetAllItems"
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = Config
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Items
    if L1_2 then
      goto lbl_11
    end
  end
  do return L0_2 end
  ::lbl_11::
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Items
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if "string" == L7_2 then
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "table" == L7_2 then
        L7_2 = L6_2.model
        L8_2 = type
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if "string" == L8_2 then
          L8_2 = GetHashKey
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          L7_2 = L8_2
        else
          L8_2 = type
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if "number" ~= L8_2 then
            L7_2 = nil
          end
        end
        L8_2 = #L0_2
        L8_2 = L8_2 + 1
        L9_2 = {}
        L9_2.name = L5_2
        L10_2 = L6_2.label
        if not L10_2 then
          L10_2 = L5_2
        end
        L9_2.label = L10_2
        L9_2.model = L7_2
        L10_2 = tonumber
        L11_2 = L6_2.radius
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = 0.05
        end
        L9_2.radius = L10_2
        L10_2 = L6_2.stackable
        L10_2 = true == L10_2
        L9_2.stackable = L10_2
        L10_2 = tonumber
        L11_2 = L6_2.maxStack
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = L6_2.stackable
          if L10_2 then
            L10_2 = 1
            if L10_2 then
              goto lbl_80
            end
          end
          L10_2 = 1
        end
        ::lbl_80::
        L9_2.maxStack = L10_2
        L10_2 = L6_2.weapon
        L10_2 = true == L10_2
        L9_2.weapon = L10_2
        L0_2[L8_2] = L9_2
      end
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = L0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.name
    if not L2_3 then
      L2_3 = ""
    end
    L3_3 = L2_3
    L2_3 = L2_3.lower
    L2_3 = L2_3(L3_3)
    L3_3 = A1_3.name
    if not L3_3 then
      L3_3 = ""
    end
    L4_3 = L3_3
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  return L0_2
end
L40_1(L41_1, L42_1)
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = tostring
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = ipairs
  L3_2 = Config
  L3_2 = L3_2.CraftPairs
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.items
    if not L8_2 then
      L8_2 = {}
    end
    L9_2 = #L8_2
    if L9_2 >= 2 then
      L9_2 = tostring
      L10_2 = L8_2[1]
      if not L10_2 then
        L10_2 = ""
      end
      L9_2 = L9_2(L10_2)
      L10_2 = tostring
      L11_2 = L8_2[2]
      if not L11_2 then
        L11_2 = ""
      end
      L10_2 = L10_2(L11_2)
      if L9_2 == A0_2 and L10_2 == A1_2 or L9_2 == A1_2 and L10_2 == A0_2 then
        L11_2 = L7_2.result
        return L11_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
findCraftResult = L40_1
L40_1 = RegisterNetEvent
L41_1 = "inv3d:craft"
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L4_2 = source
  L5_2 = tostring
  L6_2 = A0_2 or L6_2
  if not A0_2 then
    L6_2 = "player"
  end
  L5_2 = L5_2(L6_2)
  A0_2 = L5_2
  L5_2 = tostring
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  L5_2 = tostring
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  A2_2 = L5_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2
  if A3_2 < 1 then
    A3_2 = 1
  end
  if "" == A1_2 or "" == A2_2 or A1_2 == A2_2 then
    return
  end
  L5_2 = L14_1
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if not L5_2 or not L6_2 then
    return
  end
  L7_2 = ensureInv
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L8_2 = L7_2.items
    if L8_2 then
      goto lbl_59
    end
  end
  do return end
  ::lbl_59::
  L8_2 = nil
  L9_2 = nil
  L10_2 = 1
  L11_2 = L7_2.items
  L11_2 = #L11_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L7_2.items
    L14_2 = L14_2[L13_2]
    if L14_2 then
      L15_2 = L14_2.uid
      if L15_2 == A1_2 then
        L8_2 = L13_2
      end
    end
    if L14_2 then
      L15_2 = L14_2.uid
      if L15_2 == A2_2 then
        L9_2 = L13_2
      end
    end
  end
  if not L8_2 or not L9_2 then
    return
  end
  L10_2 = L7_2.items
  L10_2 = L10_2[L8_2]
  L11_2 = L7_2.items
  L11_2 = L11_2[L9_2]
  if not L10_2 or not L11_2 then
    return
  end
  L12_2 = tostring
  L13_2 = L10_2.item
  if not L13_2 then
    L13_2 = ""
  end
  L12_2 = L12_2(L13_2)
  L13_2 = tostring
  L14_2 = L11_2.item
  if not L14_2 then
    L14_2 = ""
  end
  L13_2 = L13_2(L14_2)
  L14_2 = findCraftResult
  L15_2 = L12_2
  L16_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2)
  if not L14_2 or "" == L14_2 then
    return
  end
  L15_2 = math
  L15_2 = L15_2.max
  L16_2 = L8_2
  L17_2 = L9_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = math
  L16_2 = L16_2.min
  L17_2 = L8_2
  L18_2 = L9_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = L7_2.items
  L17_2 = L17_2[L15_2]
  if L17_2 then
    L17_2 = L7_2.items
    L17_2 = L17_2[L15_2]
    L17_2 = L17_2.uid
  end
  L18_2 = L7_2.items
  L18_2 = L18_2[L16_2]
  if L18_2 then
    L18_2 = L7_2.items
    L18_2 = L18_2[L16_2]
    L18_2 = L18_2.uid
  end
  L19_2 = table
  L19_2 = L19_2.remove
  L20_2 = L7_2.items
  L21_2 = L15_2
  L19_2(L20_2, L21_2)
  L19_2 = table
  L19_2 = L19_2.remove
  L20_2 = L7_2.items
  L21_2 = L16_2
  L19_2(L20_2, L21_2)
  L19_2 = L7_2.layout
  if not L19_2 then
    L19_2 = {}
  end
  L7_2.layout = L19_2
  if L17_2 then
    L19_2 = L7_2.layout
    L19_2[L17_2] = nil
  end
  if L18_2 then
    L19_2 = L7_2.layout
    L19_2[L18_2] = nil
  end
  L19_2 = L14_2
  L20_2 = "#"
  L21_2 = tostring
  L22_2 = math
  L22_2 = L22_2.random
  L23_2 = 1000000000
  L24_2 = 9999999999
  L22_2, L23_2, L24_2, L25_2 = L22_2(L23_2, L24_2)
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
  L19_2 = L19_2 .. L20_2 .. L21_2
  L20_2 = defaultTransformForItem
  L21_2 = L14_2
  L20_2, L21_2 = L20_2(L21_2)
  L22_2 = table
  L22_2 = L22_2.insert
  L23_2 = L7_2.items
  L24_2 = {}
  L24_2.uid = L19_2
  L24_2.item = L14_2
  L24_2.count = A3_2
  L24_2.off = L20_2
  L24_2.rot = L21_2
  L22_2(L23_2, L24_2)
  L22_2 = L7_2.layout
  L23_2 = {}
  L23_2.off = L20_2
  L23_2.placed = false
  L23_2.pending = false
  L22_2[L19_2] = L23_2
  L22_2 = bumpRevDB
  L23_2 = L5_2
  L24_2 = L6_2
  L22_2(L23_2, L24_2)
  L22_2 = TriggerClientEvent
  L23_2 = "inv3d:reload"
  L24_2 = L4_2
  L25_2 = A0_2
  L22_2(L23_2, L24_2, L25_2)
  L22_2 = TriggerClientEvent
  L23_2 = "inv3d:forceSyncNow"
  L24_2 = L4_2
  L25_2 = A0_2
  L22_2(L23_2, L24_2, L25_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "lootpoints:recraft"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.LootPoints
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.recraft
    if L3_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if 0 == L3_2 then
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2.coords
  L5_2 = L4_2 - L5_2
  L5_2 = #L5_2
  if L5_2 > 2.0 then
    return
  end
  L5_2 = "player"
  L6_2 = {}
  L7_2 = 1
  L8_2 = L2_2.YouGive
  if not L8_2 then
    L8_2 = {}
  end
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L2_2.YouGive
    L11_2 = L11_2[L10_2]
    L12_2 = tostring
    L13_2 = L11_2[1]
    if not L13_2 then
      L13_2 = ""
    end
    L12_2 = L12_2(L13_2)
    L13_2 = tonumber
    L14_2 = L11_2[2]
    if not L14_2 then
      L14_2 = 1
    end
    L13_2 = L13_2(L14_2)
    if not L13_2 then
      L13_2 = 1
    end
    if "" ~= L12_2 and L13_2 > 0 then
      L14_2 = L6_2[L12_2]
      if not L14_2 then
        L14_2 = 0
      end
      L14_2 = L14_2 + L13_2
      L6_2[L12_2] = L14_2
    end
  end
  L7_2 = pairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = exports
    L13_2 = L13_2.striano_inventory
    L14_2 = L13_2
    L13_2 = L13_2.getItemCount
    L15_2 = L1_2
    L16_2 = L5_2
    L17_2 = L11_2
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    if not L13_2 then
      L13_2 = 0
    end
    if L12_2 > L13_2 then
      L14_2 = TriggerClientEvent
      L15_2 = "anim:cmd"
      L16_2 = L1_2
      L17_2 = "e shrug5"
      L14_2(L15_2, L16_2, L17_2)
      return
    end
  end
  L7_2 = pairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = exports
    L13_2 = L13_2.striano_inventory
    L14_2 = L13_2
    L13_2 = L13_2.RemoveItem
    L15_2 = L1_2
    L16_2 = L5_2
    L17_2 = L11_2
    L18_2 = L12_2
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L7_2 = 1
  L8_2 = L2_2.AndGet
  if not L8_2 then
    L8_2 = {}
  end
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L2_2.AndGet
    L11_2 = L11_2[L10_2]
    L12_2 = tostring
    L13_2 = L11_2[1]
    if not L13_2 then
      L13_2 = ""
    end
    L12_2 = L12_2(L13_2)
    L13_2 = tonumber
    L14_2 = L11_2[2]
    if not L14_2 then
      L14_2 = 1
    end
    L13_2 = L13_2(L14_2)
    if not L13_2 then
      L13_2 = 1
    end
    if "" ~= L12_2 and L13_2 > 0 then
      L14_2 = exports
      L14_2 = L14_2.striano_inventory
      L15_2 = L14_2
      L14_2 = L14_2.GiveItem
      L16_2 = L1_2
      L17_2 = L5_2
      L18_2 = L12_2
      L19_2 = L13_2
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      L14_2 = TriggerClientEvent
      L15_2 = "anim:cmd"
      L16_2 = L1_2
      L17_2 = "e posatasca"
      L14_2(L15_2, L16_2, L17_2)
    end
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:sendToLastShared"
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L4_2 = source
  L5_2 = tostring
  L6_2 = A0_2 or L6_2
  if not A0_2 then
    L6_2 = "player"
  end
  L5_2 = L5_2(L6_2)
  A0_2 = L5_2
  L5_2 = tostring
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2
  L5_2 = tostring
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2(L6_2)
  A2_2 = L5_2
  if "" == A0_2 or "" == A3_2 or "" == A1_2 or A2_2 <= 0 then
    return
  end
  L5_2 = isRuntimeInv
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = isRuntimeInv
    L6_2 = A3_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      goto lbl_50
    end
  end
  do return end
  ::lbl_50::
  if A0_2 == A3_2 then
    return
  end
  L5_2 = L14_1
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  L7_2 = L14_1
  L8_2 = L4_2
  L9_2 = A3_2
  L7_2, L8_2 = L7_2(L8_2, L9_2)
  if not L5_2 or not L6_2 then
    return
  end
  if not L7_2 or not L8_2 then
    return
  end
  L9_2 = ensureInv
  L10_2 = L5_2
  L11_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = ensureInv
  L11_2 = L7_2
  L12_2 = L8_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L9_2.items
  L11_2 = #L11_2
  L12_2 = 1
  L13_2 = -1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = L9_2.items
    L15_2 = L15_2[L14_2]
    if L15_2 then
      L16_2 = L15_2.uid
      if L16_2 == A1_2 then
        L16_2 = math
        L16_2 = L16_2.min
        L17_2 = A2_2
        L18_2 = math
        L18_2 = L18_2.floor
        L19_2 = tonumber
        L20_2 = L15_2.count
        L19_2 = L19_2(L20_2)
        if not L19_2 then
          L19_2 = 1
        end
        L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L18_2(L19_2)
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        if L16_2 <= 0 then
          return
        end
        L17_2 = L15_2.item
        L18_2 = L15_2.metadata
        if not L18_2 then
          L18_2 = L15_2.meta
        end
        L19_2 = math
        L19_2 = L19_2.floor
        L20_2 = tonumber
        L21_2 = L15_2.count
        L20_2 = L20_2(L21_2)
        if not L20_2 then
          L20_2 = 1
        end
        L19_2 = L19_2(L20_2)
        L19_2 = L19_2 - L16_2
        L15_2.count = L19_2
        L19_2 = L15_2.count
        L20_2 = L15_2.count
        if L20_2 <= 0 then
          L20_2 = table
          L20_2 = L20_2.remove
          L21_2 = L9_2.items
          L22_2 = L14_2
          L20_2(L21_2, L22_2)
          L20_2 = L9_2.layout
          L20_2[A1_2] = nil
          L19_2 = 0
        end
        L20_2 = "%s#%s"
        L21_2 = L20_2
        L20_2 = L20_2.format
        L22_2 = L17_2
        L23_2 = tostring
        L24_2 = math
        L24_2 = L24_2.random
        L25_2 = 100000000
        L26_2 = 999999999
        L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L24_2(L25_2, L26_2)
        L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        L24_2 = tostring
        L25_2 = os
        L25_2 = L25_2.time
        L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L25_2()
        L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        L23_2 = L23_2 .. L24_2
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        L21_2 = defaultTransformForItem
        L22_2 = L17_2
        L21_2, L22_2 = L21_2(L22_2)
        L23_2 = table
        L23_2 = L23_2.insert
        L24_2 = L10_2.items
        L25_2 = {}
        L25_2.uid = L20_2
        L25_2.item = L17_2
        L25_2.count = L16_2
        L25_2.metadata = L18_2
        L25_2.meta = L18_2
        L25_2.off = L21_2
        L25_2.rot = L22_2
        L23_2(L24_2, L25_2)
        L23_2 = L10_2.layout
        if not L23_2 then
          L23_2 = {}
        end
        L10_2.layout = L23_2
        L23_2 = L10_2.layout
        L24_2 = {}
        L24_2.off = L21_2
        L24_2.placed = false
        L24_2.pending = false
        L23_2[L20_2] = L24_2
        L23_2 = bumpRevDB
        L24_2 = L5_2
        L25_2 = L6_2
        L23_2(L24_2, L25_2)
        L23_2 = bumpRevDB
        L24_2 = L7_2
        L25_2 = L8_2
        L23_2(L24_2, L25_2)
        L23_2 = TriggerClientEvent
        L24_2 = "inv3d:removeResult"
        L25_2 = L4_2
        L26_2 = A0_2
        L27_2 = A1_2
        L28_2 = L19_2
        L29_2 = L17_2
        L30_2 = A2_2
        L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        L23_2 = TriggerClientEvent
        L24_2 = "inv3d:addResult"
        L25_2 = L4_2
        L26_2 = A3_2
        L27_2 = {}
        L27_2.uid = L20_2
        L27_2.item = L17_2
        L27_2.count = L16_2
        L27_2.metadata = L18_2
        L27_2.meta = L18_2
        L27_2.off = L21_2
        L27_2.rot = L22_2
        L23_2(L24_2, L25_2, L26_2, L27_2)
        L23_2 = TriggerClientEvent
        L24_2 = "inv3d:forceSyncNow"
        L25_2 = L4_2
        L26_2 = A0_2
        L23_2(L24_2, L25_2, L26_2)
        L23_2 = TriggerClientEvent
        L24_2 = "inv3d:forceSyncNow"
        L25_2 = L4_2
        L26_2 = A3_2
        L23_2(L24_2, L25_2, L26_2)
        return
      end
    end
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:server:setLastShared"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  if not A0_2 or "" == A0_2 then
    return
  end
  L2_2 = Player
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L3_2 = L2_2
  L2_2 = L2_2.set
  L4_2 = "lastSharedInv"
  L5_2 = A0_2
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:sendToPlayer"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if "" == A0_2 or "" == A1_2 or A2_2 <= 0 then
    return
  end
  if "player" ~= A0_2 then
    L4_2 = isRuntimeInv
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      goto lbl_39
    end
  end
  do return end
  ::lbl_39::
  L4_2 = L14_1
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = L14_1
  L7_2 = L3_2
  L8_2 = "player"
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if not L4_2 or not L5_2 then
    return
  end
  if not L6_2 or not L7_2 then
    return
  end
  L8_2 = ensureInv
  L9_2 = L4_2
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = ensureInv
  L10_2 = L6_2
  L11_2 = L7_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L8_2.items
  L10_2 = #L10_2
  L11_2 = 1
  L12_2 = -1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L8_2.items
    L14_2 = L14_2[L13_2]
    if L14_2 then
      L15_2 = L14_2.uid
      if L15_2 == A1_2 then
        L15_2 = math
        L15_2 = L15_2.min
        L16_2 = A2_2
        L17_2 = math
        L17_2 = L17_2.floor
        L18_2 = tonumber
        L19_2 = L14_2.count
        L18_2 = L18_2(L19_2)
        if not L18_2 then
          L18_2 = 1
        end
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L17_2(L18_2)
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        if L15_2 <= 0 then
          return
        end
        L16_2 = tostring
        L17_2 = L14_2.item
        if not L17_2 then
          L17_2 = ""
        end
        L16_2 = L16_2(L17_2)
        L17_2 = L14_2.metadata
        if not L17_2 then
          L17_2 = L14_2.meta
        end
        L18_2 = Config
        L18_2 = L18_2.Items
        L18_2 = L18_2[L16_2]
        if not L18_2 then
          return
        end
        L19_2 = canReceiveIntoInv
        L20_2 = L6_2
        L21_2 = L7_2
        L22_2 = L16_2
        L23_2 = L15_2
        L19_2, L20_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
        if not L19_2 then
          if "full" == L20_2 then
            L21_2 = TriggerClientEvent
            L22_2 = "inv3d:fullInventory"
            L23_2 = L3_2
            L24_2 = L16_2
            L25_2 = L18_2.model
            L21_2(L22_2, L23_2, L24_2, L25_2)
          elseif "item_limit" == L20_2 then
            L21_2 = TriggerClientEvent
            L22_2 = "inv3d:limitHit"
            L23_2 = L3_2
            L24_2 = L16_2
            L21_2(L22_2, L23_2, L24_2)
          end
          return
        end
        L21_2 = math
        L21_2 = L21_2.floor
        L22_2 = tonumber
        L23_2 = L14_2.count
        L22_2 = L22_2(L23_2)
        if not L22_2 then
          L22_2 = 1
        end
        L21_2 = L21_2(L22_2)
        L21_2 = L21_2 - L15_2
        L14_2.count = L21_2
        L21_2 = L14_2.count
        L22_2 = L14_2.count
        if L22_2 <= 0 then
          L22_2 = table
          L22_2 = L22_2.remove
          L23_2 = L8_2.items
          L24_2 = L13_2
          L22_2(L23_2, L24_2)
          L22_2 = L8_2.layout
          if not L22_2 then
            L22_2 = {}
          end
          L8_2.layout = L22_2
          L22_2 = L8_2.layout
          L22_2[A1_2] = nil
          L21_2 = 0
        end
        L22_2 = makeUid
        L23_2 = L16_2
        L22_2 = L22_2(L23_2)
        L23_2 = defaultTransformForItem
        L24_2 = L16_2
        L23_2, L24_2 = L23_2(L24_2)
        L25_2 = L9_2.items
        L26_2 = L9_2.items
        L26_2 = #L26_2
        L26_2 = L26_2 + 1
        L27_2 = {}
        L27_2.uid = L22_2
        L27_2.item = L16_2
        L27_2.count = L15_2
        L27_2.metadata = L17_2
        L27_2.meta = L17_2
        L27_2.off = L23_2
        L27_2.rot = L24_2
        L25_2[L26_2] = L27_2
        L25_2 = L9_2.layout
        if not L25_2 then
          L25_2 = {}
        end
        L9_2.layout = L25_2
        L25_2 = L9_2.layout
        L26_2 = {}
        L26_2.off = L23_2
        L26_2.placed = false
        L26_2.pending = false
        L25_2[L22_2] = L26_2
        L25_2 = bumpRevDB
        L26_2 = L4_2
        L27_2 = L5_2
        L25_2(L26_2, L27_2)
        L25_2 = bumpRevDB
        L26_2 = L6_2
        L27_2 = L7_2
        L25_2(L26_2, L27_2)
        L25_2 = TriggerClientEvent
        L26_2 = "inv3d:removeResult"
        L27_2 = L3_2
        L28_2 = A0_2
        L29_2 = A1_2
        L30_2 = L21_2
        L31_2 = L16_2
        L32_2 = L15_2
        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        L25_2 = TriggerClientEvent
        L26_2 = "inv3d:addResult"
        L27_2 = L3_2
        L28_2 = "player"
        L29_2 = {}
        L29_2.uid = L22_2
        L29_2.item = L16_2
        L29_2.count = L15_2
        L29_2.metadata = L17_2
        L29_2.meta = L17_2
        L29_2.off = L23_2
        L29_2.rot = L24_2
        L25_2(L26_2, L27_2, L28_2, L29_2)
        L25_2 = TriggerClientEvent
        L26_2 = "inv3d:forceSyncNow"
        L27_2 = L3_2
        L28_2 = A0_2
        L25_2(L26_2, L27_2, L28_2)
        L25_2 = TriggerClientEvent
        L26_2 = "inv3d:forceSyncNow"
        L27_2 = L3_2
        L28_2 = "player"
        L25_2(L26_2, L27_2, L28_2)
        return
      end
    end
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "inv3d:destroyItem"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if "" == A1_2 then
    return
  end
  if A2_2 < 1 then
    A2_2 = 1
  end
  L4_2 = isRuntimeInv
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = getPlayerKey
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = type
    L7_2 = L5_2.items
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      goto lbl_51
    end
  end
  do return end
  ::lbl_51::
  L6_2 = L5_2.items
  L6_2 = #L6_2
  L7_2 = 1
  L8_2 = -1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2.items
    L10_2 = L10_2[L9_2]
    if L10_2 then
      L11_2 = L10_2.uid
      if L11_2 == A1_2 then
        L11_2 = math
        L11_2 = L11_2.floor
        L12_2 = tonumber
        L13_2 = L10_2.count
        L12_2 = L12_2(L13_2)
        if not L12_2 then
          L12_2 = 1
        end
        L11_2 = L11_2(L12_2)
        if A2_2 < L11_2 then
          L12_2 = L11_2 - A2_2
          L10_2.count = L12_2
        else
          L12_2 = table
          L12_2 = L12_2.remove
          L13_2 = L5_2.items
          L14_2 = L9_2
          L12_2(L13_2, L14_2)
        end
        L12_2 = bumpRevDB
        L13_2 = L4_2
        L14_2 = A0_2
        L12_2(L13_2, L14_2)
        L12_2 = TriggerClientEvent
        L13_2 = "inv3d:reload"
        L14_2 = L3_2
        L15_2 = "player"
        L12_2(L13_2, L14_2, L15_2)
        return
      end
    end
  end
end
L40_1(L41_1, L42_1)
L40_1 = {}
function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TradeConfig
  L0_2 = L0_2.Items
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = TradeConfig
  L3_2 = L3_2.Items
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2[L1_2]
  return L0_2
end
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L40_1 = L0_2
  L0_2 = 1
  L1_2 = TradeConfig
  L1_2 = L1_2.OffersCount
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L41_1
    L4_2 = L4_2()
    L5_2 = L41_1
    L5_2 = L5_2()
    L6_2 = TradeConfig
    L6_2 = L6_2.AvoidSameItem
    if L6_2 then
      L6_2 = 0
      while L5_2 == L4_2 and L6_2 < 20 do
        L7_2 = L41_1
        L7_2 = L7_2()
        L5_2 = L7_2
        L6_2 = L6_2 + 1
      end
    end
    L6_2 = L40_1
    L6_2 = #L6_2
    L7_2 = L6_2 + 1
    L6_2 = L40_1
    L8_2 = {}
    L8_2.id = L3_2
    L8_2.needItem = L4_2
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = TradeConfig
    L10_2 = L10_2.MinRequest
    L11_2 = TradeConfig
    L11_2 = L11_2.MaxRequest
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.needAmount = L9_2
    L8_2.giveItem = L5_2
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = TradeConfig
    L10_2 = L10_2.MinReward
    L11_2 = TradeConfig
    L11_2 = L11_2.MaxReward
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.giveAmount = L9_2
    L6_2[L7_2] = L8_2
  end
end
L43_1 = CreateThread
function L44_1()
  local L0_2, L1_2
  L0_2 = math
  L0_2 = L0_2.randomseed
  L1_2 = os
  L1_2 = L1_2.time
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = L42_1
  L0_2()
end
L43_1(L44_1)
L43_1 = RegisterNetEvent
L44_1 = "randomTrade:requestMenu"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "randomTrade:openMenu"
  L3_2 = L0_2
  L4_2 = L40_1
  L1_2(L2_2, L3_2, L4_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "randomTrade:doTrade"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = L40_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = L40_1
  L2_2 = L2_2[A0_2]
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.HasItem
  L5_2 = L1_2
  L6_2 = "player"
  L7_2 = L2_2.needItem
  L8_2 = L2_2.needAmount
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "randomTrade:notify"
    L6_2 = L1_2
    L7_2 = "You need %sx %s."
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = L2_2.needAmount
    L10_2 = L2_2.needItem
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.RemoveItem
  L6_2 = L1_2
  L7_2 = "player"
  L8_2 = L2_2.needItem
  L9_2 = L2_2.needAmount
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.GiveItem
  L6_2 = L1_2
  L7_2 = "player"
  L8_2 = L2_2.giveItem
  L9_2 = L2_2.giveAmount
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = TriggerClientEvent
  L5_2 = "randomTrade:notify"
  L6_2 = L1_2
  L7_2 = "Trade complete: -%sx %s / +%sx %s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L2_2.needAmount
  L10_2 = L2_2.needItem
  L11_2 = L2_2.giveAmount
  L12_2 = L2_2.giveItem
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L43_1(L44_1, L45_1)
L43_1 = {}
function L44_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.HasItem
  L5_2 = A0_2
  L6_2 = "player"
  L7_2 = A1_2
  L8_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L45_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.RemoveItem
  L5_2 = A0_2
  L6_2 = "player"
  L7_2 = A1_2
  L8_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L46_1 = exports
L46_1 = L46_1.striano_core
L47_1 = L46_1
L46_1 = L46_1.RegisterServerCallback
L48_1 = "weaponcraft:craft"
function L49_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2
  L3_2 = L43_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L4_2.msg = "You still crafting."
    L3_2(L4_2)
    return
  end
  L3_2 = WeaponCraft
  L3_2 = L3_2.Weapons
  L3_2 = L3_2[A2_2]
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L5_2.msg = "Weapon not valid."
    L4_2(L5_2)
    return
  end
  L4_2 = L43_1
  L4_2[A0_2] = true
  L4_2 = TriggerClientEvent
  L5_2 = "printWeapCraft"
  L6_2 = A0_2
  L7_2 = "|-------|"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerClientEvent
  L5_2 = "printWeapCraft"
  L6_2 = A0_2
  L7_2 = "Crafting: "
  L8_2 = L3_2.Name
  L7_2 = L7_2 .. L8_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = WeaponCraft
  L4_2 = L4_2.BuildRecipe
  L5_2 = A2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = false
  L6_2 = ipairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L44_1
    L13_2 = A0_2
    L14_2 = L11_2.item
    L15_2 = L11_2.amount
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    if not L12_2 then
      L12_2 = WeaponCraft
      L12_2 = L12_2.ItemLabels
      L13_2 = L11_2.item
      L12_2 = L12_2[L13_2]
      if not L12_2 then
        L12_2 = L11_2.item
      end
      L13_2 = TriggerClientEvent
      L14_2 = "printWeapCraft"
      L15_2 = A0_2
      L16_2 = "You need: x"
      L17_2 = L11_2.amount
      L18_2 = " of "
      L19_2 = L12_2
      L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
      L13_2(L14_2, L15_2, L16_2)
      L5_2 = true
    end
  end
  L6_2 = TriggerClientEvent
  L7_2 = "printWeapCraft"
  L8_2 = A0_2
  L9_2 = "|-------|"
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L43_1
  L6_2[A0_2] = nil
  if L5_2 then
    L6_2 = A1_2
    L7_2 = {}
    L7_2.ok = false
    L6_2(L7_2)
    return
  end
  L6_2 = ipairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L45_1
    L13_2 = A0_2
    L14_2 = L11_2.item
    L15_2 = L11_2.amount
    L12_2(L13_2, L14_2, L15_2)
  end
  L6_2 = L43_1
  L6_2[A0_2] = nil
  L6_2 = TriggerClientEvent
  L7_2 = "weaponcraft:crafted"
  L8_2 = A0_2
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A1_2
  L7_2 = {}
  L7_2.ok = true
  L7_2.weaponId = A2_2
  L6_2(L7_2)
end
L46_1(L47_1, L48_1, L49_1)
L46_1 = RegisterNetEvent
L47_1 = "inv3d:adminOpenInventory"
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = L12_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if "" == A0_2 or "" == A1_2 then
    return
  end
  L3_2 = readDB
  L3_2 = L3_2()
  L4_2 = type
  L5_2 = L3_2[A0_2]
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = type
    L5_2 = L3_2[A0_2]
    L5_2 = L5_2[A1_2]
    L4_2 = L4_2(L5_2)
    if "table" == L4_2 then
      goto lbl_44
    end
  end
  L4_2 = TriggerClientEvent
  L5_2 = "inv3d:adminInventoryError"
  L6_2 = L2_2
  L7_2 = "Inventario non trovato."
  L4_2(L5_2, L6_2, L7_2)
  do return end
  ::lbl_44::
  L4_2 = L13_1
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = TriggerClientEvent
  L6_2 = "inv3d:adminOpenInventoryResult"
  L7_2 = L2_2
  L8_2 = L4_2
  L9_2 = {}
  L9_2.ownerKey = A0_2
  L10_2 = L35_1
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  L9_2.ownerName = L10_2
  L9_2.invName = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L46_1(L47_1, L48_1)
L46_1 = AddEventHandler
L47_1 = "playerDropped"
function L48_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L43_1
  L1_2[L0_2] = nil
  L1_2 = L11_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L2_2 = L10_1
    L2_2[L1_2] = nil
  end
  L2_2 = L11_1
  L2_2[L0_2] = nil
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "inv3d:setHolderDirect"
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if "primary" ~= A0_2 and "secondry" ~= A0_2 then
    return
  end
  if "" == A1_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Items
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L4_2 = L3_2.weapon
    if L4_2 then
      goto lbl_36
    end
  end
  L4_2 = TriggerClientEvent
  L5_2 = "inv3d:holderError"
  L6_2 = L2_2
  L7_2 = "not_a_weapon"
  L4_2(L5_2, L6_2, L7_2)
  do return end
  ::lbl_36::
  L4_2 = getPlayerKey
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = readHoldersDB
  L5_2 = L5_2()
  L6_2 = L5_2[L4_2]
  if not L6_2 then
    L6_2 = {}
  end
  L5_2[L4_2] = L6_2
  L6_2 = L5_2[L4_2]
  L7_2 = {}
  L7_2.item = A1_2
  L7_2.meta = nil
  L6_2[A0_2] = L7_2
  L6_2 = markHoldersDirty
  L6_2()
  L6_2 = TriggerClientEvent
  L7_2 = "inv3d:holdersResult"
  L8_2 = L2_2
  L9_2 = L5_2[L4_2]
  L6_2(L7_2, L8_2, L9_2)
end
L46_1(L47_1, L48_1)
