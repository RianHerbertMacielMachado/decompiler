local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = SetVarDB
  L3_2 = A0_2
  L4_2 = "ped"
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
L1_1 = RegisterNetEvent
L2_1 = "tornaUmano"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "tornaUmano"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2 or nil
  if not A0_2 then
    L2_2 = "none"
  end
  L3_2 = identOf
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = print
    L5_2 = "^1[tornaUmano]^7 Identifier not found for ID:"
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = L0_1
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  if "none" == L2_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "no1-playerped:client:ResetPlayerPed"
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = TriggerClientEvent
    L5_2 = "no1-playerped:client:SetPlayerPed"
    L6_2 = A1_2
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "myskinped:applyPed"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "myskinped:applyPed"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "no1-playerped:client:SetPlayerPed"
  L4_2 = A1_2
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "myskinped:resetPed"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "myskinped:resetPed"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "no1-playerped:client:ResetPlayerPed"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "setped"
function L3_1(A0_2, A1_2)
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
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = GetPlayerName
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L3_2 = tostring
  L4_2 = A1_2[2]
  if not L4_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  if "" == L3_2 then
    return
  end
  L4_2 = identOf
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  if "mp_m_freemode_01" == L3_2 or "mp_f_freemode_01" == L3_2 or "none" == L3_2 or "no" == L3_2 or "nessuno" == L3_2 then
    L5_2 = L0_1
    L6_2 = L4_2
    L7_2 = "none"
    L5_2(L6_2, L7_2)
    L5_2 = TriggerClientEvent
    L6_2 = "no1-playerped:client:ResetPlayerPed"
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = L0_1
    L6_2 = L4_2
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = TriggerClientEvent
    L6_2 = "no1-playerped:client:SetPlayerPed"
    L7_2 = L2_2
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "editped"
function L3_1(A0_2, A1_2)
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
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = GetPlayerName
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L3_2 = TriggerClientEvent
  L4_2 = "no1-playerped:client:ModificaSkin"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerCallback
L2_1 = "no1-playerped:server:GetPlayerPed"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = identOf
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = A1_2
  L4_2 = UserData
  L4_2 = L4_2.GetValue
  L5_2 = L2_2
  L6_2 = "ped"
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "myskinped:updatePlayerSkin"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "myskinped:updatePlayerSkin"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = identOf
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = SetVarDB
  L3_2 = L1_2
  L4_2 = "myskinped"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "myskinped:resetPlayerSkin"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "myskinped:resetPlayerSkin"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = identOf
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = SetVarDB
  L3_2 = L1_2
  L4_2 = "myskinped"
  L5_2 = "none"
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerCallback
L2_1 = "myskinped:GETSKIN"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = identOf
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = A1_2
  L4_2 = UserData
  L4_2 = L4_2.GetValue
  L5_2 = L2_2
  L6_2 = "myskinped"
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L1_1(L2_1, L3_1)
