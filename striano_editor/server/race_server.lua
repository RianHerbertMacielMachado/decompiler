local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = 0
L2_1 = RegisterServerEvent
L3_1 = "sendRace"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "sendRace"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if nil == L3_2 then
    L3_2 = L0_1
    L4_2 = {}
    L3_2[A0_2] = L4_2
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L4_2 = {}
    L3_2[A1_2] = L4_2
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2.Laps = 1
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L4_2 = {}
    L3_2.Checks = L4_2
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2.Checks = A2_2
    L3_2 = print
    L4_2 = "New race created ID "
    L5_2 = A1_2
    L6_2 = " with "
    L7_2 = #A2_2
    L8_2 = " checkpoints."
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2)
  else
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L4_2 = {}
    L3_2[A1_2] = L4_2
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2.Laps = 1
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L4_2 = {}
    L3_2.Checks = L4_2
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2.Checks = A2_2
    L3_2 = print
    L4_2 = "New race created ID "
    L5_2 = A1_2
    L6_2 = " with "
    L7_2 = #A2_2
    L8_2 = " checkpoints."
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "updateLAP"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "updateLAP"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L3_2.Laps = A2_2
  L3_2 = print
  L4_2 = "Race ID "
  L5_2 = A1_2
  L6_2 = " updated with "
  L7_2 = A2_2
  L8_2 = " laps."
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "startRace"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "startRace"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerClientEvent
  L4_2 = "PreparaCorsa"
  L5_2 = -1
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.Checks
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_1
  if 0 == L3_2 then
    L3_2 = 10
    L1_1 = L3_2
  end
  if nil ~= A2_2 then
    L1_1 = A2_2
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = L1_1
      if 0 == L0_3 then
        L0_3 = TriggerClientEvent
        L1_3 = "AvviaCorsa"
        L2_3 = -1
        L4_3 = A0_2
        L3_3 = L0_1
        L3_3 = L3_3[L4_3]
        L4_3 = A1_2
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.Checks
        L5_3 = A0_2
        L4_3 = L0_1
        L4_3 = L4_3[L5_3]
        L5_3 = A1_2
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.Laps
        L0_3(L1_3, L2_3, L3_3, L4_3)
        return
      end
      L0_3 = L1_1
      L0_3 = L0_3 - 1
      L1_1 = L0_3
      L0_3 = TriggerClientEvent
      L1_3 = "updateTimerRace"
      L2_3 = -1
      L3_3 = L1_1
      L5_3 = A0_2
      L4_3 = L0_1
      L4_3 = L4_3[L5_3]
      L5_3 = A1_2
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.Checks
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "StrianoEndRace"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "StrianoEndRace"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = TriggerClientEvent
  L3_2 = "WinnerRaceCreator"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = GetPlayerName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1(L3_1, L4_1)
