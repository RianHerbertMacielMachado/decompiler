local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.IsAdmin
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
isAllowedToChange = L0_1
L0_1 = {}
ServerCallbacks = L0_1
function L0_1(A0_2, A1_2)
  local L2_2
  L2_2 = ServerCallbacks
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L0_1
L0_1 = RegisterNetEvent
L1_1 = "standalone_callback:trigger"
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "string" ~= L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "standalone_callback:return"
    L5_2 = L2_2
    L6_2 = A1_2
    L7_2 = nil
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = ServerCallbacks
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L4_2 = print
    L5_2 = "[standalone_callback] Callback non trovata: %s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = A0_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = TriggerClientEvent
    L5_2 = "standalone_callback:return"
    L6_2 = L2_2
    L7_2 = A1_2
    L8_2 = nil
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = L3_2
  L5_2 = L2_2
  function L6_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = TriggerClientEvent
    L1_3 = "standalone_callback:return"
    L2_3 = L2_2
    L3_3 = A1_2
    L4_3 = ...
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L7_2, L8_2 = ...
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "RegisterServerCallback"
L2_1 = RegisterServerCallback
L0_1(L1_1, L2_1)
L0_1 = RegisterServerCallback
L1_1 = "esx_Pharmacy:getVarDB"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPrimaryIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = A1_2
  L5_2 = UserData
  L5_2 = L5_2.GetValue
  L6_2 = L3_2
  L7_2 = tostring
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = ""
  end
  L7_2, L8_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "D_Ancorata:set"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = Entity
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.state
      L4_2 = L3_2
      L3_2 = L3_2.set
      L5_2 = "D_Ancorata"
      L6_2 = true == A1_2
      L7_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.find
    L3_2 = ":"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      return A0_2
    end
    L1_2 = nil
    return L1_2
  end
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetPlayerIdentifiers
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = #L2_2
    if 0 ~= L3_2 then
      goto lbl_31
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_31::
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.sub
    L9_2 = 1
    L10_2 = 8
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if "license:" == L7_2 then
      L7_2 = L2_2[L6_2]
      return L7_2
    end
  end
  L3_2 = L2_2[1]
  return L3_2
end
identOf = L0_1
L0_1 = exports
L1_1 = "identOf"
L2_1 = identOf
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = "0"
L2_1 = "1"
L0_1[1] = L1_1
L0_1[2] = L2_1
RoutingBuckets = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 1
  L1_2 = RoutingBuckets
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = SetRoutingBucketPopulationEnabled
    L5_2 = tonumber
    L6_2 = RoutingBuckets
    L6_2 = L6_2[L3_2]
    L5_2 = L5_2(L6_2)
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1(L1_1)
L0_1 = RegisterServerEvent
L1_1 = "fixamiVeicolo"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fixamiVeicolo"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "esx:fixVehicle"
  L2_2 = source
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "boolean" == L2_2 then
    if A0_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_12
      end
    end
    L3_2 = 0
    ::lbl_12::
    return L3_2
  end
  if "number" == L2_2 then
    return A0_2
  end
  if "string" == L2_2 then
    if A1_2 then
      L3_2 = #A0_2
      if A1_2 < L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.sub
        L5_2 = 1
        L6_2 = A1_2
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        A0_2 = L3_2
      end
    end
    return A0_2
  end
  if "table" == L2_2 then
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if A1_2 then
      L4_2 = #L3_2
      if A1_2 < L4_2 then
        L4_2 = nil
        return L4_2
      end
    end
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
normalizeValue = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 or "" == A0_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if "" == A1_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = UserData
  L3_2 = L3_2.Get
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = print
    L5_2 = "^1[SetVarDB]^7 Utente non trovato: %s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = UserData
  L4_2 = L4_2.SetValue
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = UserData
  L4_2 = L4_2.Save
  return L4_2()
end
SetVarDB = L0_1
L0_1 = RegisterNetEvent
L1_1 = "updateNomeCognome"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = GetPlayerName
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = identOf
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 or not L1_2 then
    L3_2 = print
    L4_2 = "^1[UPDATE NOME]^7 Identifier or name not found!"
    L3_2(L4_2)
    return
  end
  L3_2 = print
  L4_2 = "^2[UPDATE NOME]^7 TUTORIAL DONE ->"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = SetVarDB
  L4_2 = L2_2
  L5_2 = "firstname"
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerCallback
L1_1 = "soldi:check"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.getItemCount
  L5_2 = A0_2
  L6_2 = "moneta"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if A2_2 <= L3_2 then
    L4_2 = A1_2
    L5_2 = true
    L4_2(L5_2)
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerCallback
L1_1 = "item:check"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = tostring
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  L4_2 = tonumber
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  A3_2 = L4_2 or A3_2
  if not L4_2 then
    A3_2 = 1
  end
  L4_2 = exports
  L4_2 = L4_2.striano_inventory
  L5_2 = L4_2
  L4_2 = L4_2.getItemCount
  L6_2 = A0_2
  L7_2 = "player"
  L8_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = A1_2
  L6_2 = A3_2 <= L4_2
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "bogdan"
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
  L2_2 = A1_2[1]
  if L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = GetPlayerName
      L3_2 = tonumber
      L4_2 = A1_2[1]
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if L2_2 then
        L2_2 = tonumber
        L3_2 = A1_2[1]
        L2_2 = L2_2(L3_2)
        L3_2 = TriggerClientEvent
        L4_2 = "spawnaBogdan"
        L5_2 = L2_2
        L6_2 = A1_2[2]
        L3_2(L4_2, L5_2, L6_2)
    end
    else
      L2_2 = TriggerClientEvent
      L3_2 = "esx:showNotification"
      L4_2 = A0_2
      L5_2 = "Player ID non valido."
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Inserisci un Player ID."
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "kick"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2[1]
    L3_2 = A1_2[2]
    if nil == L2_2 then
      return
    end
    L4_2 = TriggerClientEvent
    L5_2 = "esx:showNotification"
    L6_2 = A0_2
    L7_2 = "Player kicked."
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = Wait
    L5_2 = 1000
    L4_2(L5_2)
    L4_2 = DropPlayer
    L5_2 = L2_2
    L6_2 = "Kicked."
    L4_2(L5_2, L6_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Player not valid."
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "setuomo"
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
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2[1]
    if nil == L2_2 then
      return
    end
    L3_2 = TriggerClientEvent
    L4_2 = "esx:showNotification"
    L5_2 = A0_2
    L6_2 = "Player set as man."
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetVarDB
    L4_2 = identOf
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = "sex"
    L6_2 = "M"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = TriggerClientEvent
    L4_2 = "skinchanger:setuomo"
    L5_2 = L2_2
    L6_2 = "mp_m_freemode_01"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Wait
    L4_2 = 1500
    L3_2(L4_2)
    L3_2 = TriggerClientEvent
    L4_2 = "skinchanger:setuomo"
    L5_2 = L2_2
    L6_2 = "mp_m_freemode_01"
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Player not valid."
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "setdonna"
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
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2[1]
    if nil == L2_2 then
      return
    end
    L3_2 = TriggerClientEvent
    L4_2 = "esx:showNotification"
    L5_2 = A0_2
    L6_2 = "Player set as woman."
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetVarDB
    L4_2 = identOf
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = "sex"
    L6_2 = "F"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = TriggerClientEvent
    L4_2 = "skinchanger:setuomo"
    L5_2 = L2_2
    L6_2 = "mp_f_freemode_01"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Wait
    L4_2 = 1500
    L3_2(L4_2)
    L3_2 = TriggerClientEvent
    L4_2 = "skinchanger:setuomo"
    L5_2 = L2_2
    L6_2 = "mp_f_freemode_01"
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Player not valid."
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "legacy:ucciso"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "legacy:ucciso"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if not A0_2 or not A1_2 then
    L3_2 = print
    L4_2 = "[legacy:ucciso] invalid ids:"
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerName
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L3_2 or not L4_2 then
    L5_2 = print
    L6_2 = "[legacy:ucciso] missing names:"
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = "unknown"
  end
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "%s[%d] killed -> %s[%d] (cause: %s)"
  L8_2 = L4_2
  L9_2 = A1_2
  L10_2 = L3_2
  L11_2 = A0_2
  L12_2 = tostring
  L13_2 = L5_2
  L12_2, L13_2 = L12_2(L13_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = print
  L8_2 = "[legacy:ucciso] LOG:"
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = TriggerClientEvent
  L8_2 = "PlayerKilled:Notification"
  L9_2 = A1_2
  L7_2(L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "CreaCordaAll"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "CreaCordaAll"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = TriggerClientEvent
  L5_2 = "CreaCordaAll"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "updateCopia"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "updateCopia"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = TriggerClientEvent
  L5_2 = "updateCopia"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "AggiornaPedCopia"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "AggiornaPedCopia"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "AggiornaPedCopia"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "EliminaRope"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "EliminaRope"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "EliminaRope"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "EliminaPedCopia"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "EliminaPedCopia"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "EliminaPedCopia"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "setEntityBucket"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetEntityRoutingBucket
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "setBucketLegacy"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetPlayerRoutingBucket
  L3_2 = source
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "setvirtual"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L2_2 = A1_2[2]
  if nil == L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = GetVehiclePedIsIn
    L4_2 = GetPlayerPed
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = SetPlayerRoutingBucket
    L5_2 = L2_2
    L6_2 = tonumber
    L7_2 = A1_2[2]
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
    if 0 ~= L3_2 then
      L4_2 = SetEntityRoutingBucket
      L5_2 = L3_2
      L6_2 = tonumber
      L7_2 = A1_2[2]
      L6_2, L7_2 = L6_2(L7_2)
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "getvirtual"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "anim:cmd"
  L5_2 = A0_2
  L6_2 = "prova Virtual of "
  L7_2 = GetPlayerName
  L8_2 = L2_2
  L7_2 = L7_2(L8_2)
  L8_2 = ": "
  L9_2 = GetPlayerRoutingBucket
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "abilitaskin"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "abilitaskin"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = TriggerClientEvent
    L4_2 = "esx:showNotification"
    L5_2 = A0_2
    L6_2 = "/setskin enabled to ID "
    L7_2 = A1_2[1]
    L6_2 = L6_2 .. L7_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "updateOutfits"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "updateOutfits"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = identOf
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = SetVarDB
  L3_2 = L1_2
  L4_2 = "legacy_outfits"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = identOf
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = print
    L4_2 = "^1[GetPlayerOutfits]^0 identifier nil, playerID:"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = A1_2
    L4_2 = {}
    L3_2(L4_2)
    return
  end
  L3_2 = UserData
  L3_2 = L3_2.GetValue
  L4_2 = L2_2
  L5_2 = "legacy_outfits"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L4_2(L5_2)
    return
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
GetPlayerOutfits = L0_1
L0_1 = RegisterServerCallback
L1_1 = "getPlayerOutfits"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2 or A2_2
  if not L3_2 then
    A2_2 = A0_2
  end
  L3_2 = GetPlayerOutfits
  L4_2 = A2_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fxAll"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fxAll"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "fxAll:client"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fxAllsize"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fxAllsize"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "fxAllsize:client"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fxAllcore"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fxAllcore"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "fxAllcore:client"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "smb:breath"
L0_1(L1_1)
L0_1 = RegisterNetEvent
L1_1 = "smb:breath"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "smb:breath"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx:aggiornaPos"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx:aggiornaPos"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if nil == A3_2 then
    return
  end
  L4_2 = identOf
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = {}
  L6_2 = tonumber
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L6_2 = tonumber
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2.y = L6_2
  L6_2 = tonumber
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L5_2.z = L6_2
  L6_2 = L5_2.x
  if L6_2 then
    L6_2 = L5_2.y
    if L6_2 then
      L6_2 = L5_2.z
      if L6_2 then
        goto lbl_34
      end
    end
  end
  do return end
  ::lbl_34::
  L6_2 = SetVarDB
  L7_2 = L4_2
  L8_2 = "position"
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "ca"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "esx:showNotification"
  L5_2 = A0_2
  L6_2 = "Player "
  L7_2 = GetPlayerName
  L8_2 = L2_2
  L7_2 = L7_2(L8_2)
  L8_2 = " tagged on discord."
  L6_2 = L6_2 .. L7_2 .. L8_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerClientEvent
  L4_2 = "esx:showNotification"
  L5_2 = L2_2
  L6_2 = "You has beed tagged on discord by an admin."
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerClientEvent
  L4_2 = "mexImportante"
  L5_2 = L2_2
  L6_2 = "Please come on Discord."
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
AdminPlayers = L0_1
L0_1 = RegisterCommand
L1_1 = "stato"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = AdminPlayers
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = A1_2[1]
    if nil ~= L2_2 then
      L2_2 = A1_2[1]
      L2_2 = #L2_2
      if 0 ~= L2_2 then
        goto lbl_13
      end
    end
    do return end
    ::lbl_13::
    L2_2 = AdminPlayers
    L3_2 = {}
    L3_2.source = A0_2
    L4_2 = A1_2[1]
    L3_2.stato = L4_2
    L2_2[A0_2] = L3_2
  else
    L2_2 = AdminPlayers
    L2_2[A0_2] = nil
  end
  L2_2 = TriggerClientEvent
  L3_2 = "relisoft_tag:set_admins"
  L4_2 = -1
  L5_2 = AdminPlayers
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerCallback
L1_1 = "getAdminsPlayers"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = AdminPlayers
  if not L3_2 then
    L3_2 = {}
  end
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "playerDropped"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = AdminPlayers
  L3_2 = source
  L2_2 = L2_2[L3_2]
  if nil ~= L2_2 then
    L2_2 = AdminPlayers
    L3_2 = source
    L2_2[L3_2] = nil
  end
  L2_2 = TriggerClientEvent
  L3_2 = "relisoft_tag:set_admins"
  L4_2 = -1
  L5_2 = AdminPlayers
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "FaCrashare:editskin"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "FaCrashare:editskin"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "no1-playerped:client:ModificaSkinVestiti"
  L2_2 = source
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "ff:staccaAnimale"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "ff:staccaAnimale"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = TriggerClientEvent
  L5_2 = "ff:staccaAnimale"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "leva:rbv"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "leva:rbv"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "c_leva:rbv"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "campanaserver"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "campanaserver"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "campanaclient"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "freezeprop:sync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "freezeprop:sync"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "freezeprop:syncAll"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "FaCrashare:msgAdmin"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "FaCrashare:msgAdmin"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = print
  L4_2 = "REPORT: "
  L5_2 = A0_2
  L6_2 = " "
  L7_2 = A1_2
  L8_2 = " "
  L9_2 = A2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  L3_2 = GetPlayers
  L3_2 = L3_2()
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = xPlayers
    L8_2 = L8_2[L7_2]
    L9_2 = exports
    L9_2 = L9_2.striano_core
    L10_2 = L9_2
    L9_2 = L9_2.IsAdmin
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "chat:addMessage"
      L11_2 = L8_2
      L12_2 = {}
      L12_2.template = "<div style=\"padding: 0.1vw; margin: 0.1vw; background-color: rgba(255, 26, 26, 0.5); border-radius: 2px;\"> REPORT da {0}[{1}] -> {2} [{3}] {4}<br></div>"
      L13_2 = {}
      L14_2 = GetPlayerName
      L15_2 = source
      L14_2 = L14_2(L15_2)
      L15_2 = source
      L16_2 = A0_2
      L17_2 = A1_2
      L18_2 = A2_2
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L13_2[5] = L18_2
      L12_2.args = L13_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "FaCrashare:syncCarLights"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "FaCrashare:syncCarLights"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerClientEvent
  L2_2 = "FaCrashare:syncCarLights"
  L3_2 = -1
  L4_2 = source
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "editoratt"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = A1_2[1]
    if "" ~= L2_2 then
      goto lbl_21
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "esx:showNotification"
  L4_2 = A0_2
  L5_2 = "Insert object name."
  L2_2(L3_2, L4_2, L5_2)
  do return end
  ::lbl_21::
  L2_2 = A1_2[2]
  if nil ~= L2_2 then
    L2_2 = A1_2[2]
    if "" ~= L2_2 then
      goto lbl_33
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "esx:showNotification"
  L4_2 = A0_2
  L5_2 = "Insert bone id."
  L2_2(L3_2, L4_2, L5_2)
  do return end
  ::lbl_33::
  L2_2 = tostring
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A1_2[2]
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerClientEvent
  L5_2 = "ff:avviaEditorPlayer"
  L6_2 = A0_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "veditoratt"
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
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = A1_2[1]
    if "" ~= L2_2 then
      goto lbl_21
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "esx:showNotification"
  L4_2 = A0_2
  L5_2 = "Insert object name."
  L2_2(L3_2, L4_2, L5_2)
  do return end
  ::lbl_21::
  L2_2 = tostring
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerClientEvent
  L4_2 = "ff:avviaEditorVeicolo"
  L5_2 = A0_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "PoliceVehicleWeaponDeleter:askDropWeapon"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "PoliceVehicleWeaponDeleter:askDropWeapon"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "PoliceVehicleWeaponDeleter:drop"
  L3_2 = source
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "ff:report"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "ff:report"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2
  if nil == L2_2 then
    return
  end
  L3_2 = source
  if nil == L3_2 then
    return
  end
  L4_2 = print
  L5_2 = "**REPORT-GAME: "
  L6_2 = GetPlayerName
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = "["
  L8_2 = L3_2
  L9_2 = "]** "
  L10_2 = " reported -> **"
  L11_2 = GetPlayerName
  L12_2 = L2_2
  L11_2 = L11_2(L12_2)
  L12_2 = "["
  L13_2 = L2_2
  L14_2 = "]** "
  L15_2 = A1_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "createped"
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
  L3_2 = "esx:spawnPed2"
  L4_2 = A0_2
  L5_2 = tostring
  L6_2 = A1_2[1]
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "creaPed"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "creaPed"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.IsAdmin
  L3_2 = source
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = TriggerClientEvent
  L2_2 = "esx:spawnPed2"
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "startSoundArena"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "startSoundArena"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "startSoundArena"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "stopSoundArena"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "stopSoundArena"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "stopSoundArena"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "car"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if not L2_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "striano_SpawnVehicle"
  L4_2 = A0_2
  L5_2 = A1_2[1]
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "veh"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if not L2_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "striano_SpawnVehicle"
  L4_2 = A0_2
  L5_2 = A1_2[1]
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "striano_SpawnVehicle"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "striano_SpawnVehicle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "striano_SpawnVehicle"
  L3_2 = source
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "dv"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if L2_2 then
    L2_2 = A1_2[1]
    if nil ~= L2_2 then
      goto lbl_16
    end
  end
  A1_2[1] = 1.5
  ::lbl_16::
  L2_2 = TriggerClientEvent
  L3_2 = "esx:deleteVehicle"
  L4_2 = A0_2
  L5_2 = A1_2[1]
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "spawnobject"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L3_2 = "esx:spawnObject"
  L4_2 = A0_2
  L5_2 = A1_2[1]
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "sobj"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = A1_2[2]
    if nil ~= L2_2 then
      L2_2 = A1_2[3]
      if nil ~= L2_2 then
        L2_2 = A1_2[4]
        if nil ~= L2_2 then
          goto lbl_27
        end
      end
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "esx:showNotification"
  L4_2 = A0_2
  L5_2 = "Args not valid (4 requested)."
  L2_2(L3_2, L4_2, L5_2)
  do return end
  ::lbl_27::
  L2_2 = TriggerClientEvent
  L3_2 = "esx:spawnObject2"
  L4_2 = A0_2
  L5_2 = A1_2[1]
  L6_2 = tonumber
  L7_2 = A1_2[2]
  L6_2 = L6_2(L7_2)
  L7_2 = tonumber
  L8_2 = A1_2[3]
  L7_2 = L7_2(L8_2)
  L8_2 = tonumber
  L9_2 = A1_2[4]
  L8_2, L9_2 = L8_2(L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "clear"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerClientEvent
  L3_2 = "chat:clear"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "clearall"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
  L3_2 = "chat:clear"
  L4_2 = -1
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "fixveh"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
  L3_2 = "esx:fixVehicle"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "delped"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L3_2 = "esx:clearPedZona"
  L4_2 = -1
  L5_2 = A1_2[1]
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "group"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "aniim:cmd"
    L4_2 = A0_2
    L5_2 = "Group: Admin"
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "aniim:cmd"
    L4_2 = A0_2
    L5_2 = "Group: User"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "cleanveh"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
  L3_2 = "esx:cleanVehicle"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "goto"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "anim:cmd"
  L5_2 = A0_2
  L6_2 = "tpp2 "
  L7_2 = tonumber
  L8_2 = A1_2[1]
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "bring"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "anim:cmd"
  L5_2 = A0_2
  L6_2 = "tpp3 "
  L7_2 = tonumber
  L8_2 = A1_2[1]
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if not (A0_2 and A1_2) or not A2_2 then
    L3_2 = false
    return L3_2
  end
  if A0_2 ~= A0_2 or A1_2 ~= A1_2 or A2_2 ~= A2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.huge
  if L3_2 ~= L4_2 then
    L3_2 = math
    L3_2 = L3_2.abs
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = math
    L4_2 = L4_2.huge
    if L3_2 ~= L4_2 then
      L3_2 = math
      L3_2 = L3_2.abs
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      L4_2 = math
      L4_2 = L4_2.huge
      if L3_2 ~= L4_2 then
        goto lbl_43
      end
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_43::
  L3_2 = true
  return L3_2
end
IsValidCoords = L0_1
L0_1 = RegisterCommand
L1_1 = "tp"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = ","
  L5_2 = " "
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.match
  L5_2 = "([%-%.%d]+)%s+([%-%.%d]+)%s+([%-%.%d]+)"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L6_2 = tonumber
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = tonumber
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = tonumber
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L5_2 = L8_2
  L4_2 = L7_2
  L3_2 = L6_2
  L6_2 = IsValidCoords
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    return
  end
  L6_2 = TriggerClientEvent
  L7_2 = "esx:teleport"
  L8_2 = A0_2
  L9_2 = {}
  L9_2.x = L3_2
  L9_2.y = L4_2
  L9_2.z = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L3_1 = false
L0_1(L1_1, L2_1, L3_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_Pharmacy:EliminaPG"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_Pharmacy:EliminaPG"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = identOf
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if nil ~= L1_2 then
    L2_2 = DeleteUserFromDB
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_Pharmacy:EliminaPG2"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_Pharmacy:EliminaPG2"
function L2_1(A0_2)
  local L1_2, L2_2
  if nil ~= A0_2 then
    L1_2 = DeleteUserFromDB
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2
  if nil ~= A0_2 then
    L1_2 = UserData
    L1_2 = L1_2.Delete
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = UserData
      L1_2 = L1_2.Save
      L1_2()
    end
  end
end
DeleteUserFromDB = L0_1
L0_1 = RegisterNetEvent
L1_1 = "callonPlayerJoined"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = GetPrimaryIdentifier
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 or "" == L1_2 then
    L2_2 = print
    L3_2 = "^1[CORE]^7 Identifier non trovato per ID %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "core:receivePrimaryIdentifier"
  L4_2 = L0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
