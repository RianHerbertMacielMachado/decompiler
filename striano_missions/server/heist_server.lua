local L0_1, L1_1, L2_1
L0_1 = {}
vHA = L0_1
L0_1 = RegisterServerEvent
L1_1 = "fleecaheist:server:startFleeca"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:server:startFleeca"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = vHA
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = vHA
    L1_2[A0_2] = true
    L1_2 = TriggerClientEvent
    L2_2 = "fleecaheist:client:startFleeca"
    L3_2 = -1
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = TriggerClientEvent
    L2_2 = "fleecaheist:client:busyFleeca"
    L3_2 = -1
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fleecaheist:server:resetHeist"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:server:resetHeist"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "fleecaheist:client:resetHeist"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Wait
  L2_2 = 300000
  L1_2(L2_2)
  L1_2 = vHA
  L1_2[A0_2] = nil
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fleecaheist:server:doorSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:server:doorSync"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "fleecaheist:client:doorSync"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fleecaheist:server:lootSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:server:lootSync"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "fleecaheist:client:lootSync"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fleecaheist:server:modelSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:server:modelSync"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "fleecaheist:client:modelSync"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fleecaheist:server:grabSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:server:grabSync"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "fleecaheist:client:grabSync"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
