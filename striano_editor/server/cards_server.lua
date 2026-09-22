local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "UpdateCardID"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "UpdateCardID"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = TriggerClientEvent
  L6_2 = "UpdateCardID"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "DelCartaID"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "DelCartaID"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "DelCartaID"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "striano_cards:resetCards"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "striano_cards:resetCards"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "striano_cards:resetCards"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "striano_cards:sendNote"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "striano_cards:sendNote"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = TriggerClientEvent
  L4_2 = "confirmSendCard"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if A0_2 then
    L3_2 = #A0_2
    if L3_2 > 0 then
      L3_2 = 1
      L4_2 = #A0_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = A0_2[L6_2]
        if L7_2 then
          L7_2 = TriggerClientEvent
          L8_2 = "addNoteCard"
          L9_2 = A0_2[L6_2]
          L10_2 = L2_2
          L11_2 = ": "
          L12_2 = A1_2
          L10_2 = L10_2 .. L11_2 .. L12_2
          L7_2(L8_2, L9_2, L10_2)
        end
      end
      L3_2 = TriggerClientEvent
      L4_2 = "addNoteCard"
      L5_2 = L2_2
      L6_2 = "Tu: "
      L7_2 = A1_2
      L6_2 = L6_2 .. L7_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    L3_2 = TriggerClientEvent
    L4_2 = "addNoteCard"
    L5_2 = L2_2
    L6_2 = "Tu: "
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
