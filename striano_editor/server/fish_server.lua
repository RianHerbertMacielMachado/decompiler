local L0_1, L1_1, L2_1
L0_1 = RegisterServerEvent
L1_1 = "getFishPrice"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "getFishPrice"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil == A0_2 then
    L1_2 = TriggerClientEvent
    L2_2 = "getFishPrice"
    L3_2 = -1
    L4_2 = PriceMarketFish
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = TriggerClientEvent
    L2_2 = "getFishPrice"
    L3_2 = A0_2
    L4_2 = PriceMarketFish
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = {}
BusyFish = L0_1
L0_1 = RegisterServerEvent
L1_1 = "sendFishSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "sendFishSync"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L8_2 = BusyFish
  L8_2 = L8_2[A1_2]
  if nil == L8_2 then
    L8_2 = BusyFish
    L8_2[A1_2] = true
    L8_2 = TriggerClientEvent
    L9_2 = "sendFishSync"
    L10_2 = -1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = A2_2
    L14_2 = A3_2
    L15_2 = A4_2
    L16_2 = A5_2
    L17_2 = A6_2
    L18_2 = A7_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = Wait
    L9_2 = 25
    L8_2(L9_2)
    L8_2 = BusyFish
    L8_2[A1_2] = nil
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fivem_netstatus"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fivem_netstatus"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "fivem_netstatus"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
BusyBox = L0_1
L0_1 = RegisterServerEvent
L1_1 = "sendBoxSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "sendBoxSync"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L9_2 = BusyBox
  L9_2 = L9_2[A1_2]
  if nil == L9_2 then
    L9_2 = BusyBox
    L9_2[A1_2] = true
    L9_2 = TriggerClientEvent
    L10_2 = "sendBoxSync"
    L11_2 = -1
    L12_2 = A0_2
    L13_2 = A1_2
    L14_2 = A2_2
    L15_2 = A3_2
    L16_2 = A4_2
    L17_2 = A5_2
    L18_2 = A6_2
    L19_2 = A7_2
    L20_2 = A8_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L9_2 = Wait
    L10_2 = 25
    L9_2(L10_2)
    L9_2 = BusyBox
    L9_2[A1_2] = nil
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "updateTrascinaFisher"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "updateTrascinaFisher"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = TriggerClientEvent
  L6_2 = "updateTrascinaFisher"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1(L1_1, L2_1)
