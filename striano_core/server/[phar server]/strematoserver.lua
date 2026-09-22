local L0_1, L1_1, L2_1
L0_1 = AddEventHandler
L1_1 = "playerDropped"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = GetEntityCoords
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = TriggerClientEvent
  L4_2 = "morto3d"
  L5_2 = -1
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = GetPlayerName
  L9_2 = L1_2
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_ambulancejjj:revive"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_ambulancejjj:revive"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "esx_ambulancejjj:revive3"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_ambulancejjj:heal"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_ambulancejjj:heal"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "esx_ambulancejjj:healAdmin"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_ambulancejjj:healAdmin"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_ambulancejjj:healAdmin"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "esx_ambulancejjj:healAdmin"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "revive"
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
  L2_2 = ReviveFunc
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2[1]
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L2_2 = GetPlayerName
    L3_2 = tonumber
    L4_2 = A0_2[1]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if nil ~= L2_2 then
      L2_2 = TriggerClientEvent
      L3_2 = "esx_ambulancejjj:revive3"
      L4_2 = tonumber
      L5_2 = A0_2[1]
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx_ambulancejjj:revive3"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
ReviveFunc = L0_1
L0_1 = RegisterCommand
L1_1 = "respawn"
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
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L2_2 = GetPlayerName
    L3_2 = tonumber
    L4_2 = A1_2[1]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if nil ~= L2_2 then
      L2_2 = TriggerClientEvent
      L3_2 = "esx_ambulancejjj:respawn"
      L4_2 = tonumber
      L5_2 = A1_2[1]
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx_ambulancejjj:respawn"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "heal"
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
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    if 0 ~= L2_2 then
      L2_2 = GetPlayerName
      L3_2 = tonumber
      L4_2 = A1_2[1]
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if nil ~= L2_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "esx_ambulancejjj:healAdmin"
        L4_2 = tonumber
        L5_2 = A1_2[1]
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx_ambulancejjj:healAdmin"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "pocavita"
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
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    if 0 ~= L2_2 then
      L2_2 = GetPlayerName
      L3_2 = tonumber
      L4_2 = A1_2[1]
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if nil ~= L2_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "esx_ambulancejjj:pocavitaAdmin"
        L4_2 = tonumber
        L5_2 = A1_2[1]
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx_ambulancejjj:pocavitaAdmin"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "cleanme"
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
  if nil ~= L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    if 0 ~= L2_2 then
      L2_2 = GetPlayerName
      L3_2 = tonumber
      L4_2 = A1_2[1]
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if nil ~= L2_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "esx_ambulancejjj:cleanme"
        L4_2 = tonumber
        L5_2 = A1_2[1]
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx_ambulancejjj:cleanme"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "armour"
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
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    if nil ~= L2_2 then
      L2_2 = tonumber
      L3_2 = A1_2[1]
      L2_2 = L2_2(L3_2)
      if 0 ~= L2_2 then
        L2_2 = GetPlayerName
        L3_2 = tonumber
        L4_2 = A1_2[1]
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        if nil ~= L2_2 then
          L2_2 = 100
          L3_2 = tonumber
          L4_2 = A1_2[2]
          L3_2 = L3_2(L4_2)
          if nil == L3_2 then
            L2_2 = 100
          else
            L3_2 = tonumber
            L4_2 = A1_2[2]
            L3_2 = L3_2(L4_2)
            L2_2 = L3_2
          end
          if L2_2 > 100 then
            L2_2 = 100
          end
          L3_2 = TriggerClientEvent
          L4_2 = "esx_ambulancejjj:armourAdmin"
          L5_2 = tonumber
          L6_2 = A1_2[1]
          L5_2 = L5_2(L6_2)
          L6_2 = L2_2
          L3_2(L4_2, L5_2, L6_2)
        end
      end
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx_ambulancejjj:armourAdmin"
    L4_2 = A0_2
    L5_2 = 100
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "delarmour"
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
  if nil ~= L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    if 0 ~= L2_2 then
      L2_2 = GetPlayerName
      L3_2 = tonumber
      L4_2 = A1_2[1]
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if nil ~= L2_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "esx_ambulancejjj:delarmourAdmin"
        L4_2 = tonumber
        L5_2 = A1_2[1]
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx_ambulancejjj:delarmourAdmin"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "Tackle:Server:TacklePlayer"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "Tackle:Server:TacklePlayer"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "Tackle:Client:TacklePlayer"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
