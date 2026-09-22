local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.upper
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "[^%w_%-%:]"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  return A0_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = #A0_2
  if not (L1_2 < 3) then
    L1_2 = #A0_2
    if not (L1_2 > 64) then
      goto lbl_16
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_16::
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^[%w_%-%:]+$"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "[^%w_%-%:]"
  L5_2 = "_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2 = L2_2
  if not A1_2 then
    L2_2 = tostring
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = 1000
    L5_2 = 9999
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A1_2 = L2_2
  end
  L2_2 = "TMP_%s_%s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = UserData
  L1_2 = L1_2.GetAll
  L1_2 = L1_2()
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = nil
    L3_2 = nil
    return L2_2, L3_2
  end
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = type
      L9_2 = L7_2.keys
      L8_2 = L8_2(L9_2)
      if "table" == L8_2 then
        L8_2 = L7_2.keys
        L8_2 = L8_2[A0_2]
        if L8_2 then
          L9_2 = L6_2
          L10_2 = L8_2
          return L9_2, L10_2
        end
      end
    end
  end
  L2_2 = nil
  L3_2 = nil
  return L2_2, L3_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = UserData
  L1_2 = L1_2.Get
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = type
  L3_2 = L1_2.keys
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    L1_2.keys = L2_2
    L2_2 = SetVarDB
    L3_2 = A0_2
    L4_2 = "keys"
    L5_2 = L1_2.keys
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L1_2.keys
  return L2_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  if not A0_2 then
    return L1_2
  end
  L2_2 = UserData
  L2_2 = L2_2.GetAll
  L2_2 = L2_2()
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = type
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if "table" == L9_2 then
        L9_2 = type
        L10_2 = L8_2.keys
        L9_2 = L9_2(L10_2)
        if "table" == L9_2 then
          L9_2 = pairs
          L10_2 = L8_2.keys
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = type
            L16_2 = L14_2
            L15_2 = L15_2(L16_2)
            if "table" == L15_2 then
              L15_2 = L14_2.holder
              if L15_2 == A0_2 then
                L1_2[L13_2] = true
              end
            end
          end
        end
      end
    end
  end
  L3_2 = pairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.holder
    if L9_2 == A0_2 then
      L1_2[L7_2] = true
    end
  end
  return L1_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L1_2 = GetPlayerName
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.identOf
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L2_2 = L7_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Player
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L4_2 = L3_2
  L3_2 = L3_2.set
  L5_2 = "keysHeld"
  L6_2 = L2_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
SyncKeysState = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = exports
      L8_2 = L8_2.striano_core
      L9_2 = L8_2
      L8_2 = L8_2.identOf
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 == A0_2 then
        L8_2 = SyncKeysState
        L9_2 = L7_2
        L8_2(L9_2)
      end
    end
  end
end
SyncByIdentifier = L8_1
L8_1 = AddEventHandler
L9_1 = "playerJoining"
function L10_1()
  local L0_2, L1_2
  L0_2 = SyncKeysState
  L1_2 = source
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = "onResourceStart"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SyncKeysState
    L8_2 = tonumber
    L9_2 = L6_2
    L8_2, L9_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2)
  end
end
L8_1(L9_1, L10_1)
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = L3_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil ~= L1_2
  return L2_2
end
L0_1.Exists = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = L2_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  L5_2 = L3_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = false
    L6_2 = "INVALID_KEY_ID"
    return L5_2, L6_2
  end
  L5_2 = L0_1.Exists
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = false
    L6_2 = "KEY_ALREADY_EXISTS"
    return L5_2, L6_2
  end
  L5_2 = A3_2
  if not L5_2 and A0_2 then
    L6_2 = exports
    L6_2 = L6_2.striano_core
    L7_2 = L6_2
    L6_2 = L6_2.identOf
    L8_2 = A0_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  if not L5_2 then
    L6_2 = false
    L7_2 = "MISSING_OWNER"
    return L6_2, L7_2
  end
  L6_2 = UserData
  L6_2 = L6_2.Get
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = false
    L8_2 = "OWNER_NOT_FOUND"
    return L7_2, L8_2
  end
  L7_2 = L6_1
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L8_2 = false
    L9_2 = "OWNER_NOT_FOUND"
    return L8_2, L9_2
  end
  L8_2 = A4_2 or L8_2
  if not A4_2 then
    L8_2 = L5_2
  end
  L9_2 = {}
  L10_2 = A2_2 or L10_2
  if not A2_2 then
    L10_2 = ""
  end
  L9_2.label = L10_2
  L9_2.holder = L8_2
  L10_2 = os
  L10_2 = L10_2.time
  L10_2 = L10_2()
  L9_2.created_at = L10_2
  L7_2[A1_2] = L9_2
  L9_2 = SetVarDB
  L10_2 = L5_2
  L11_2 = "keys"
  L12_2 = L7_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = SyncByIdentifier
  L10_2 = L8_2
  L9_2(L10_2)
  L9_2 = true
  return L9_2
end
L0_1.Create = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L6_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L10_2.key_id = L7_2
    L10_2.owner = A0_2
    L11_2 = L8_2.label
    if not L11_2 then
      L11_2 = ""
    end
    L10_2.label = L11_2
    L11_2 = L8_2.holder
    L10_2.holder = L11_2
    L11_2 = L8_2.created_at
    L10_2.created_at = L11_2
    L2_2[L9_2] = L10_2
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.created_at
    if not L2_3 then
      L2_3 = 0
    end
    L3_3 = A1_3.created_at
    if not L3_3 then
      L3_3 = 0
    end
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1.ListOwned = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L2_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  L3_2 = L3_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = "INVALID_KEY_ID"
    return L3_2, L4_2
  end
  if A2_2 then
    L3_2 = GetPlayerName
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_23
    end
  end
  L3_2 = false
  L4_2 = "INVALID_TARGET"
  do return L3_2, L4_2 end
  ::lbl_23::
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.identOf
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.identOf
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L3_2 or not L4_2 then
    L5_2 = false
    L6_2 = "INVALID_IDENTIFIER"
    return L5_2, L6_2
  end
  L5_2 = L5_1
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  if not L5_2 or not L6_2 then
    L7_2 = false
    L8_2 = "KEY_NOT_FOUND"
    return L7_2, L8_2
  end
  L7_2 = L6_2.holder
  if L7_2 ~= L3_2 then
    L7_2 = false
    L8_2 = "NOT_HOLDER"
    return L7_2, L8_2
  end
  L6_2.holder = L4_2
  L7_2 = SetVarDB
  L8_2 = L5_2
  L9_2 = "keys"
  L10_2 = UserData
  L10_2 = L10_2.Get
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2.keys
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SyncKeysState
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = SyncKeysState
  L8_2 = A2_2
  L7_2(L8_2)
  L7_2 = true
  return L7_2
end
L0_1.Give = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L2_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = L3_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    L3_2 = "INVALID_KEY_ID"
    return L2_2, L3_2
  end
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.identOf
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = "INVALID_IDENTIFIER"
    return L3_2, L4_2
  end
  L3_2 = L5_1
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 or not L4_2 then
    L5_2 = false
    L6_2 = "KEY_NOT_FOUND"
    return L5_2, L6_2
  end
  if L3_2 ~= L2_2 then
    L5_2 = false
    L6_2 = "NOT_OWNER"
    return L5_2, L6_2
  end
  L5_2 = L4_2.holder
  L6_2 = L6_1
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = false
    L8_2 = "OWNER_NOT_FOUND"
    return L7_2, L8_2
  end
  L6_2[A1_2] = nil
  L7_2 = SetVarDB
  L8_2 = L3_2
  L9_2 = "keys"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  if L5_2 then
    L7_2 = SyncByIdentifier
    L8_2 = L5_2
    L7_2(L8_2)
  end
  L7_2 = true
  return L7_2
end
L0_1.DestroyIfOwner = L8_1
L8_1 = exports
L9_1 = "KeysExists"
L10_1 = L0_1.Exists
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "KeysCreate"
L10_1 = L0_1.Create
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "KeysListOwned"
L10_1 = L0_1.ListOwned
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "KeysGive"
L10_1 = L0_1.Give
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "KeysDestroyIfOwner"
L10_1 = L0_1.DestroyIfOwner
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "MakeTempKeyId"
L10_1 = L4_1
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "KeysListHeld"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = {}
  L2_2 = UserData
  L2_2 = L2_2.GetAll
  L2_2 = L2_2()
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = type
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if "table" == L9_2 then
        L9_2 = type
        L10_2 = L8_2.keys
        L9_2 = L9_2(L10_2)
        if "table" == L9_2 then
          L9_2 = pairs
          L10_2 = L8_2.keys
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = type
            L16_2 = L14_2
            L15_2 = L15_2(L16_2)
            if "table" == L15_2 then
              L15_2 = L14_2.holder
              if L15_2 == A0_2 then
                L15_2 = #L1_2
                L15_2 = L15_2 + 1
                L16_2 = {}
                L16_2.key_id = L13_2
                L16_2.owner = L7_2
                L17_2 = L14_2.holder
                L16_2.holder = L17_2
                L17_2 = L14_2.label
                if not L17_2 then
                  L17_2 = ""
                end
                L16_2.label = L17_2
                L17_2 = L14_2.created_at
                L16_2.created_at = L17_2
                L1_2[L15_2] = L16_2
              end
            end
          end
        end
      end
    end
  end
  L3_2 = pairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.holder
    if L9_2 == A0_2 then
      L9_2 = #L1_2
      L9_2 = L9_2 + 1
      L10_2 = {}
      L10_2.key_id = L7_2
      L11_2 = L8_2.owner
      L10_2.owner = L11_2
      L11_2 = L8_2.holder
      L10_2.holder = L11_2
      L11_2 = L8_2.label
      if not L11_2 then
        L11_2 = ""
      end
      L12_2 = " [TEMP]"
      L11_2 = L11_2 .. L12_2
      L10_2.label = L11_2
      L10_2.created_at = "TEMP"
      L1_2[L9_2] = L10_2
    end
  end
  return L1_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "KeysDestroyAny"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = L0_1.DestroyIfOwner
    L3_2 = A1_2
    L4_2 = A0_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.holder
    L4_2 = L1_1
    L4_2[A0_2] = nil
    if L3_2 then
      L4_2 = SyncByIdentifier
      L5_2 = L3_2
      L4_2(L5_2)
    end
    L4_2 = true
    return L4_2
  end
  L3_2 = L5_1
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 or not L4_2 then
    L5_2 = false
    L6_2 = "KEY_NOT_FOUND"
    return L5_2, L6_2
  end
  L5_2 = L4_2.holder
  L6_2 = L6_1
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = false
    L8_2 = "OWNER_NOT_FOUND"
    return L7_2, L8_2
  end
  L6_2[A0_2] = nil
  L7_2 = SetVarDB
  L8_2 = L3_2
  L9_2 = "keys"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  if L5_2 then
    L7_2 = SyncByIdentifier
    L8_2 = L5_2
    L7_2(L8_2)
  end
  L7_2 = true
  return L7_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "KeysSetHolderAdmin"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = L3_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    L3_2 = "INVALID_KEY_ID"
    return L2_2, L3_2
  end
  L2_2 = L5_1
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 or not L3_2 then
    L4_2 = false
    L5_2 = "KEY_NOT_FOUND"
    return L4_2, L5_2
  end
  L4_2 = L3_2.holder
  L3_2.holder = A1_2
  L5_2 = SetVarDB
  L6_2 = L2_2
  L7_2 = "keys"
  L8_2 = UserData
  L8_2 = L8_2.Get
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.keys
  L5_2(L6_2, L7_2, L8_2)
  if L4_2 then
    L5_2 = SyncByIdentifier
    L6_2 = L4_2
    L5_2(L6_2)
  end
  if A1_2 then
    L5_2 = SyncByIdentifier
    L6_2 = A1_2
    L5_2(L6_2)
  end
  L5_2 = true
  return L5_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "TempKeyCreate"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "string" ~= L4_2 then
    L4_2 = false
    L5_2 = "INVALID_KEY_ID"
    return L4_2, L5_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.sub
  L6_2 = 1
  L7_2 = 4
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if "TMP_" ~= L4_2 then
    L4_2 = false
    L5_2 = "TEMP_KEYS_MUST_START_WITH_TMP_"
    return L4_2, L5_2
  end
  L4_2 = L0_1.Exists
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = false
    L5_2 = "KEY_EXISTS_IN_DB"
    return L4_2, L5_2
  end
  L4_2 = L1_1
  L5_2 = {}
  L5_2.owner = A1_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = A1_2
  end
  L5_2.holder = L6_2
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = "Temporary key"
  end
  L5_2.label = L6_2
  L4_2[A0_2] = L5_2
  L4_2 = SyncByIdentifier
  L5_2 = L1_1
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.holder
  L4_2(L5_2)
  L4_2 = true
  return L4_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "TempKeyGive"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = false
    L4_2 = "TEMP_KEY_NOT_FOUND"
    return L3_2, L4_2
  end
  L3_2 = L2_2.holder
  L2_2.holder = A1_2
  L4_2 = SyncByIdentifier
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = SyncByIdentifier
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = true
  return L4_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "HasKey"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = L1_1
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L3_2 = L2_2.holder
    if L3_2 == A0_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = L5_1
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = nil ~= L4_2
  return L5_2
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "striano_keys:sv:adminGiveTempKey"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if A0_2 then
    L3_2 = GetPlayerName
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.identOf
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.identOf
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = "TMP_"
  L6_2 = tostring
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L6_2 = exports
  L6_2 = L6_2.striano_core
  L7_2 = L6_2
  L6_2 = L6_2.TempKeyCreate
  L8_2 = L5_2
  L9_2 = L4_2
  L10_2 = L3_2
  L11_2 = L5_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L8_2 = TriggerClientEvent
  L9_2 = "striano_keys:cl:notify"
  L10_2 = L2_2
  if L6_2 then
    L11_2 = "Temp key: "
    L12_2 = L5_2
    L11_2 = L11_2 .. L12_2
    if L11_2 then
      goto lbl_52
    end
  end
  L11_2 = "Errore: "
  L12_2 = tostring
  L13_2 = L7_2
  L12_2 = L12_2(L13_2)
  L11_2 = L11_2 .. L12_2
  ::lbl_52::
  L8_2(L9_2, L10_2, L11_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "striano_keys:sv:adminGiveKey"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if A0_2 then
    L3_2 = GetPlayerName
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = L2_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  L3_2 = L3_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "striano_keys:cl:notify"
    L5_2 = L2_2
    L6_2 = "Errore: INVALID_KEY_ID ("
    L7_2 = tostring
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L8_2 = ")"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.identOf
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.identOf
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L0_1.Create
  L6_2 = nil
  L7_2 = A1_2
  L8_2 = "Admin key"
  L9_2 = L3_2
  L10_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if not L5_2 and "KEY_ALREADY_EXISTS" == L6_2 then
    L7_2 = exports
    L7_2 = L7_2.striano_core
    L8_2 = L7_2
    L7_2 = L7_2.KeysSetHolderAdmin
    L9_2 = A1_2
    L10_2 = L4_2
    L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L8_2
    L5_2 = L7_2
  end
  L7_2 = TriggerClientEvent
  L8_2 = "striano_keys:cl:notify"
  L9_2 = L2_2
  if L5_2 then
    L10_2 = "Key: "
    L11_2 = A1_2
    L10_2 = L10_2 .. L11_2
    if L10_2 then
      goto lbl_78
    end
  end
  L10_2 = "Errore: "
  L11_2 = tostring
  L12_2 = L6_2
  L11_2 = L11_2(L12_2)
  L10_2 = L10_2 .. L11_2
  ::lbl_78::
  L7_2(L8_2, L9_2, L10_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "striano_keys:sv:adminDestroyKey"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.KeysDestroyAny
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = TriggerClientEvent
  L5_2 = "striano_keys:cl:notify"
  L6_2 = L1_2
  if L2_2 then
    L7_2 = "Key destroyed: "
    L8_2 = A0_2
    L7_2 = L7_2 .. L8_2
    if L7_2 then
      goto lbl_27
    end
  end
  L7_2 = "Errore: "
  L8_2 = tostring
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  ::lbl_27::
  L4_2(L5_2, L6_2, L7_2)
end
L8_1(L9_1, L10_1)
