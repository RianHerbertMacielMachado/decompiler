local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = "tattoos.json"
L1_1 = {}
L2_1 = {}
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = GetResourceState
  L2_2 = "striano_core"
  L1_2 = L1_2(L2_2)
  if "started" == L1_2 then
    L1_2 = pcall
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.identOf
      L2_3 = A0_2
      return L0_3(L1_3, L2_3)
    end
    L1_2, L2_2 = L1_2(L2_2)
    if L1_2 and L2_2 then
      return L2_2
    end
  end
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = #L1_2
    if 0 ~= L2_2 then
      goto lbl_32
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_32::
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.find
    L10_2 = "license:"
    L11_2 = 1
    L12_2 = true
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    if 1 == L8_2 then
      return L7_2
    end
  end
  L2_2 = L1_2[1]
  return L2_2
end
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetPlayerPing
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 > 0
  return L1_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  if 0 == A0_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = GetResourceState
  L2_2 = "striano_core"
  L1_2 = L1_2(L2_2)
  if "started" == L1_2 then
    L1_2 = pcall
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.IsAdmin
      L2_3 = A0_2
      return L0_3(L1_3, L2_3)
    end
    L1_2, L2_2 = L1_2(L2_2)
    if L1_2 and L2_2 then
      L3_2 = true
      return L3_2
    end
  end
  L1_2 = IsPlayerAceAllowed
  L2_2 = A0_2
  L3_2 = "command"
  return L1_2(L2_2, L3_2)
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "anim:cmd"
  L4_2 = A0_2
  L5_2 = "prova "
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L2_2(L3_2, L4_2, L5_2)
end
function L7_1()
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
    L4_2 = "^1[TATTOOS]^7 "
    L5_2 = L0_1
    L6_2 = " non valido. Caricamento annullato."
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = {}
    L1_1 = L3_2
  end
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = json
  L0_2 = L0_2.encode
  L1_2 = L1_1
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L1_2 = print
    L2_2 = "^1[TATTOOS]^7 Errore durante json.encode."
    L1_2(L2_2)
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
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    return A0_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 and "" ~= A0_2 then
    L1_2 = pcall
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = A0_2
    L1_2, L2_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L3_2 = type
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if "table" == L3_2 then
        return L2_2
      end
    end
  end
  L1_2 = {}
  return L1_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = type
  L3_2 = L1_2.tattoos
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = L1_2.tattoos
    if L2_2 then
      goto lbl_26
    end
  end
  L2_2 = {}
  ::lbl_26::
  return L2_2
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_1
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[A0_2] = L3_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L3_2 = L9_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2.tattoos = L3_2
  L2_2 = L8_1
  return L2_2()
end
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = L9_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = #A0_2
  if 0 == L1_2 then
    L1_2 = ""
    return L1_2
  end
  L1_2 = json
  L1_2 = L1_2.encode
  L2_2 = A0_2
  return L1_2(L2_2)
end
L13_1 = CreateThread
function L14_1()
  local L0_2, L1_2
  L0_2 = L7_1
  L0_2()
end
L13_1(L14_1)
L13_1 = RegisterNetEvent
L14_1 = "SmallTattoos:GetPlayerTattoos"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = source
  L2_2 = L3_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "SmallTattoos:GetPlayerTattoos:cb"
    L5_2 = L1_2
    L6_2 = A0_2
    L7_2 = nil
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = L10_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L12_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_1
  L5_2[L1_2] = L4_2
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = GetPlayers
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = tonumber
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L13_2 = L3_1
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L14_2 = L10_1
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L15_2 = L12_1
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L16_2 = L2_1
        L16_2[L12_2] = L15_2
        L5_2[L12_2] = L15_2
      end
    end
  end
  L6_2 = TriggerClientEvent
  L7_2 = "SmallTattoos:GetPlayerTattoos:cb"
  L8_2 = L1_2
  L9_2 = A0_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = TriggerClientEvent
  L7_2 = "SmallTattoos:syncPlayerTattoos"
  L8_2 = -1
  L9_2 = L1_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = TriggerClientEvent
  L7_2 = "SmallTattoos:syncAllTattoos"
  L8_2 = L1_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterServerEvent
L14_1 = "menuperso:resettatattoo"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "menuperso:resettatattoo"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if A0_2 then
    L1_2 = L4_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "clearMyTattoo"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterServerEvent
L14_1 = "menuperso:caricatattoo"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "menuperso:caricatattoo"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = L3_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L11_1
  L4_2 = L2_2
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = {}
  end
  L3_2(L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterServerEvent
L14_1 = "xnTattoos:resetferiteServer"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "xnTattoos:resetferiteServer"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if A0_2 then
    L1_2 = L4_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "xnTattoos:resetferite"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterServerEvent
L14_1 = "SmallTattoos:UpdateTattoo"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "SmallTattoos:UpdateTattoo"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = L2_2
  end
  L3_2 = L3_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L9_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L11_1
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L12_1
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L2_1
  L6_2[A1_2] = L5_2
  L6_2 = TriggerClientEvent
  L7_2 = "SmallTattoos:syncPlayerTattoos"
  L8_2 = -1
  L9_2 = A1_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L13_1(L14_1, L15_1)
L13_1 = AddEventHandler
L14_1 = "playerDropped"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L2_1
  L1_2[L0_2] = nil
  L1_2 = TriggerClientEvent
  L2_2 = "SmallTattoos:removePlayerTattoos"
  L3_2 = -1
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "atat"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L5_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L4_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "xnTattoos:shop"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = L6_1
    L4_2 = A0_2
    L5_2 = "Insert a valid player online."
    L3_2(L4_2, L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "resetferite"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L5_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L4_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "xnTattoos:resetferite"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = TriggerClientEvent
      L4_2 = "esx_ambulancejjj:cleanme"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = L6_1
    L4_2 = A0_2
    L5_2 = "Insert a valid player online."
    L3_2(L4_2, L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "resetsporco"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L5_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L4_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "xnTattoos:resetsporco"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = L6_1
    L4_2 = A0_2
    L5_2 = "Insert a valid player online."
    L3_2(L4_2, L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "resettattoo"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L5_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L4_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "clearMyTattoo"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L6_1
      L4_2 = L2_2
      L5_2 = "Tattoo resetted by admin ("
      L6_2 = GetPlayerName
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      L7_2 = ")"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = L6_1
    L4_2 = A0_2
    L5_2 = "Player not online."
    L3_2(L4_2, L5_2)
  end
end
L13_1(L14_1, L15_1)
