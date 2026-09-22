local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = "rapidactions.json"
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.find
    L9_2 = "license:"
    L10_2 = 1
    L11_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if 1 == L7_2 then
      return L6_2
    end
  end
  L1_2 = ipairs
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.find
    L9_2 = "fivem:"
    L10_2 = 1
    L11_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if 1 ~= L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.find
      L9_2 = "steam:"
      L10_2 = 1
      L11_2 = true
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      if 1 ~= L7_2 then
        goto lbl_39
      end
    end
    do return L6_2 end
    ::lbl_39::
  end
  L1_2 = nil
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = type
    L6_2 = A0_2[L4_2]
    L5_2 = L5_2(L6_2)
    if "string" ~= L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
    L4_2 = "{}"
    L5_2 = -1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
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
    if "table" == L3_2 then
      L1_1 = L2_2
  end
  else
    L3_2 = print
    L4_2 = "^1[RAPID ACTIONS]^7 "
    L5_2 = L0_1
    L6_2 = " non valido, caricamento annullato."
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = {}
    L1_1 = L3_2
  end
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = json
  L0_2 = L0_2.encode
  L1_2 = L1_1
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = SaveResourceFile
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = L0_1
  L4_2 = L0_2
  L5_2 = -1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = true
  return L1_2
end
L6_1 = CreateThread
function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
end
L6_1(L7_1)
L6_1 = RegisterNetEvent
L7_1 = "devanim:req"
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = #A0_2
    if 0 ~= L4_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  if "saveAnims" == A1_2 then
    L4_2 = A2_2 or L4_2
    if A2_2 then
      L4_2 = A2_2.list
    end
    L5_2 = L3_1
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "devanim:resp"
      L7_2 = L3_2
      L8_2 = A0_2
      L9_2 = false
      L10_2 = {}
      L10_2.error = "Invalid payload: expected array of strings"
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      return
    end
    L5_2 = L2_1
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "devanim:resp"
      L8_2 = L3_2
      L9_2 = A0_2
      L10_2 = false
      L11_2 = {}
      L11_2.error = "No valid identifier"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      return
    end
    L6_2 = L1_1
    L6_2[L5_2] = L4_2
    L6_2 = L5_1
    L6_2()
    L6_2 = TriggerClientEvent
    L7_2 = "devanim:resp"
    L8_2 = L3_2
    L9_2 = A0_2
    L10_2 = true
    L11_2 = {}
    L11_2.saved = true
    L12_2 = #L4_2
    L11_2.count = L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  elseif "getAnims" == A1_2 then
    L4_2 = L2_1
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "devanim:resp"
      L7_2 = L3_2
      L8_2 = A0_2
      L9_2 = true
      L10_2 = {}
      L11_2 = {}
      L10_2.list = L11_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      return
    end
    L5_2 = TriggerClientEvent
    L6_2 = "devanim:resp"
    L7_2 = L3_2
    L8_2 = A0_2
    L9_2 = true
    L10_2 = {}
    L11_2 = L1_1
    L11_2 = L11_2[L4_2]
    if not L11_2 then
      L11_2 = {}
    end
    L10_2.list = L11_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = TriggerClientEvent
    L5_2 = "devanim:resp"
    L6_2 = L3_2
    L7_2 = A0_2
    L8_2 = false
    L9_2 = {}
    L10_2 = "Unknown callback: "
    L11_2 = tostring
    L12_2 = A1_2
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 .. L11_2
    L9_2.error = L10_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L6_1(L7_1, L8_1)
