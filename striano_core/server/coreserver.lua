local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = RegisterNetEvent
L1_1 = "core:qtUpdate"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = Entity
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.state
      L5_2 = L4_2
      L4_2 = L4_2.set
      L6_2 = A1_2
      L7_2 = A2_2
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "WE:LavaPavimento"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "WE:LavaPavimento"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "WE:LavaPavimento_c"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "delprop"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "FindAttachedClampByEntity"
  L4_2 = -1
  L5_2 = A1_2[1]
  L6_2 = A1_2[2]
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerCallback
L1_1 = "getphonenumber"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.identOf
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = UserData
  L3_2 = L3_2.GetValue
  L4_2 = L2_2
  L5_2 = "phone_number"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 and "" ~= L3_2 then
    L4_2 = tostring
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L4_2 = #L4_2
    if not (L4_2 <= 1) then
      goto lbl_35
    end
  end
  L4_2 = TriggerEvent
  L5_2 = "strianoSim:NewAndApply"
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = nil
  L4_2(L5_2)
  goto lbl_38
  ::lbl_35::
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
  ::lbl_38::
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = "casate.json"
L2_1 = "territori.json"
L0_1[1] = L1_1
L0_1[2] = L2_1
L1_1 = {}
L1_1.owner = true
L1_1.identifier = true
L1_1.license = true
L2_1 = {}
L3_1 = false
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "string" == L1_2
  return L1_2
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L2_1 = L0_2
  L0_2 = UserData
  L0_2 = L0_2.IsStorageValid
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = print
    L1_2 = "^1[%s CLEANUP]^7 users.json non valido. Pulizia annullata per sicurezza."
    L2_2 = L1_2
    L1_2 = L1_2.format
    L3_2 = GetCurrentResourceName
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = UserData
  L0_2 = L0_2.GetAll
  L0_2 = L0_2()
  L1_2 = type
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = print
    L2_2 = "^1[%s CLEANUP]^7 Errore lettura users.json. Pulizia annullata per sicurezza."
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = GetCurrentResourceName
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "string" == L6_2 and "" ~= L5_2 then
      L6_2 = L2_1
      L6_2[L5_2] = true
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  L2_2 = true
  return L2_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = A1_2[A0_2]
  if L2_2 then
    L2_2 = nil
    return L2_2
  end
  A1_2[A0_2] = true
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if "string" == L8_2 then
      L9_2 = L6_2
      L8_2 = L6_2.lower
      L8_2 = L8_2(L9_2)
      L9_2 = L1_1
      L9_2 = L9_2[L8_2]
      if L9_2 then
        L9_2 = L4_1
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          return L7_2
        end
      end
    end
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = L6_1
      L9_2 = L7_2
      L10_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        return L8_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L4_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return A0_2
  end
  L2_2 = L6_1
  L3_2 = A1_2
  return L2_2(L3_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = LoadResourceFile
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 or "" == L2_2 then
    L3_2 = print
    L4_2 = "^3[%s CLEANUP]^7 File vuoto o non trovato: ^5%s^7"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L1_2
    L7_2 = A0_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L3_2 = 0
    return L3_2
  end
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
      goto lbl_41
    end
  end
  L5_2 = print
  L6_2 = "^1[%s CLEANUP]^7 JSON non valido: ^5%s^7"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = L1_2
  L9_2 = A0_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = 0
  do return L5_2 end
  ::lbl_41::
  L5_2 = 0
  L6_2 = false
  L7_2 = pairs
  L8_2 = L4_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L7_1
    L14_2 = L11_2
    L15_2 = L12_2
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 then
      L14_2 = L2_1
      L14_2 = L14_2[L13_2]
      if not L14_2 then
        L4_2[L11_2] = nil
        L5_2 = L5_2 + 1
        L14_2 = print
        L15_2 = "^3[%s CLEANUP]^7 Rimosso ^1%s^7 da ^5%s^7"
        L16_2 = L15_2
        L15_2 = L15_2.format
        L17_2 = L1_2
        L18_2 = L13_2
        L19_2 = A0_2
        L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        if not L6_2 then
          L6_2 = true
          L14_2 = TriggerEvent
          L15_2 = "esx_Pharmacy:EliminaPG2"
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  if 0 == L5_2 then
    L7_2 = 0
    return L7_2
  end
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L8_2 = print
    L9_2 = "^1[%s CLEANUP]^7 Errore json.encode: ^5%s^7"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = L1_2
    L12_2 = A0_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L8_2 = 0
    return L8_2
  end
  L8_2 = SaveResourceFile
  L9_2 = L1_2
  L10_2 = A0_2
  L11_2 = L7_2
  L12_2 = #L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = LoadResourceFile
  L9_2 = L1_2
  L10_2 = A0_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 ~= L7_2 then
    L9_2 = print
    L10_2 = "^1[%s CLEANUP]^7 Scrittura fallita: ^5%s^7"
    L11_2 = L10_2
    L10_2 = L10_2.format
    L12_2 = L1_2
    L13_2 = A0_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L9_2 = 0
    return L9_2
  end
  L9_2 = print
  L10_2 = "^2[%s CLEANUP]^7 Rimossi ^3%d^7 elementi da ^5%s^7"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = L1_2
  L13_2 = L5_2
  L14_2 = A0_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  return L5_2
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L3_1
  if L0_2 then
    return
  end
  L0_2 = true
  L3_1 = L0_2
  L0_2 = GetCurrentResourceName
  L0_2 = L0_2()
  L1_2 = L5_1
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = print
    L2_2 = "^1[%s CLEANUP]^7 Pulizia annullata."
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = L0_2
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L8_1
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L1_2 = L1_2 + L8_2
  end
  if L1_2 > 0 then
    L2_2 = print
    L3_2 = "^2[%s CLEANUP]^7 Pulizia terminata. Eliminati: ^3%d^7"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L0_2
    L6_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 2000
  L0_2(L1_2)
  L0_2 = L9_1
  L0_2()
end
L10_1(L11_1)
