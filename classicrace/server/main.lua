local L0_1, L1_1, L2_1
L0_1 = {}
HostCross = L0_1
L0_1 = {}
CorsaCross = L0_1
L0_1 = {}
VincitoreCross = L0_1
L0_1 = RegisterNetEvent
L1_1 = "corsa:crossvincitore"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "corsa:crossvincitore"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = VincitoreCross
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = VincitoreCross
    L2_2[A0_2] = 1
    L2_2 = TriggerClientEvent
    L3_2 = "corsa:crossvincitore"
    L4_2 = -1
    L5_2 = m
    L5_2 = L5_2.WinnerIs
    L6_2 = getIdentity
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.firstname
    L7_2 = " "
    L8_2 = getIdentity
    L9_2 = L1_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.lastname
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    L6_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = Wait
    L3_2 = 5000
    L2_2(L3_2)
    L2_2 = VincitoreCross
    L2_2[A0_2] = nil
    L2_2 = CorsaCross
    L2_2[A0_2] = nil
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "corsa:stopcross"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "corsa:stopcross"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "corsa:stopcross"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = ESX
L0_1 = L0_1.RegisterServerCallback
L1_1 = "corsa:cross"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2
  L4_2 = CorsaCross
  L4_2 = L4_2[A2_2]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = ESX
L0_1 = L0_1.RegisterServerCallback
L1_1 = "corsa:checkhostcross"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2
  L4_2 = HostCross
  L4_2 = L4_2[A2_2]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "corsa:hostcross"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "corsa:hostcross"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = ESX
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.identifier
  L4_2 = HostCross
  L4_2[A0_2] = L3_2
  L4_2 = TriggerClientEvent
  L5_2 = "esx:showNotification"
  L6_2 = L2_2.source
  L7_2 = m
  L7_2 = L7_2.YouHost
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerClientEvent
  L5_2 = "esx:showNotification"
  L6_2 = L2_2.source
  L7_2 = m
  L7_2 = L7_2.RaceID
  L8_2 = A0_2
  L7_2 = L7_2 .. L8_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "corsa:delhostcross"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "corsa:delhostcross"
function L2_1(A0_2)
  local L1_2
  L1_2 = HostCross
  L1_2[A0_2] = nil
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = StartRaceCommand
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2[1]
  if nil == L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "esx:showNotification"
    L5_2 = A0_2
    L6_2 = m
    L6_2 = L6_2.InsertIDRace
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L4_2 = ESX
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.identifier
  L6_2 = HostCross
  L6_2 = L6_2[L3_2]
  if nil == L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "esx:showNotification"
    L8_2 = L4_2.source
    L9_2 = m
    L9_2 = L9_2.NoRaceAv
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = HostCross
  L6_2 = L6_2[L3_2]
  if L6_2 ~= L5_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "esx:showNotification"
    L8_2 = L4_2.source
    L9_2 = m
    L9_2 = L9_2.YouNotHost
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = CorsaCross
  L6_2 = L6_2[L3_2]
  if 1 == L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "esx:showNotification"
    L8_2 = L4_2.source
    L9_2 = m
    L9_2 = L9_2.AlredyRace
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = CorsaCross
  L6_2[L3_2] = 1
  L6_2 = TriggerClientEvent
  L7_2 = "corsa:startcross"
  L8_2 = -1
  L9_2 = L3_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = StopRaceCommand
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2[1]
  if nil == L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "esx:showNotification"
    L5_2 = A0_2
    L6_2 = m
    L6_2 = L6_2.InsertIDRace
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L4_2 = ESX
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.identifier
  L6_2 = HostCross
  L6_2 = L6_2[L3_2]
  if nil == L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "esx:showNotification"
    L8_2 = L4_2.source
    L9_2 = m
    L9_2 = L9_2.NoRaceAv
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = HostCross
  L6_2 = L6_2[L3_2]
  if L6_2 ~= L5_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "esx:showNotification"
    L8_2 = L4_2.source
    L9_2 = m
    L9_2 = L9_2.YouNotHost
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = CorsaCross
  L6_2 = L6_2[L3_2]
  if nil == L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "esx:showNotification"
    L8_2 = L4_2.source
    L9_2 = m
    L9_2 = L9_2.AlredyRace
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = CorsaCross
  L6_2[L3_2] = nil
  L6_2 = HostCross
  L6_2[L3_2] = nil
  L6_2 = TriggerClientEvent
  L7_2 = "corsa:stopcross"
  L8_2 = -1
  L9_2 = L3_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
