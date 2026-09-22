local L0_1, L1_1, L2_1, L3_1
L0_1 = RegisterServerEvent
L1_1 = "TackleServerRugby"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "TackleServerRugby"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = TriggerClientEvent
  L6_2 = "TackleClientRugby"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = RegisterNetEvent
L2_1 = "OggettoRugbySync"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "OggettoRugbySync"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L2_2 = L2_2[A1_2]
  if nil == L2_2 then
    L2_2 = L0_1
    L3_2 = {}
    L2_2[A1_2] = L3_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L0_1
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = TriggerClientEvent
  L3_2 = "OggettoRugbySync"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "DelOggettoRugbySync"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "DelOggettoRugbySync"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A1_2]
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = 1
      L3_2 = L0_1
      L3_2 = L3_2[A1_2]
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = L0_1
        L6_2 = L6_2[A1_2]
        L6_2 = L6_2[L5_2]
        if L6_2 == A0_2 then
          L6_2 = table
          L6_2 = L6_2.remove
          L7_2 = L0_1
          L7_2 = L7_2[A1_2]
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
          break
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "InviteToPlayRugby"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "InviteToPlayRugby"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "InviteToPlayRugby"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "sendBallOwner"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "sendBallOwner"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "sendBallOwner"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "playerDropped"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = 0
      L3_2 = 1
      L4_2 = L0_1
      L4_2 = L4_2[L1_2]
      L4_2 = #L4_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L0_1
        L7_2 = L7_2[L1_2]
        L7_2 = L7_2[L6_2]
        if nil ~= L7_2 then
          L2_2 = L2_2 + 1
        end
      end
      if L2_2 > 0 then
        L3_2 = print
        L4_2 = "Deleted "
        L5_2 = L2_2
        L6_2 = " object RUGBY of the player ID "
        L7_2 = L1_2
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
        L3_2(L4_2)
      end
      L3_2 = TriggerClientEvent
      L4_2 = "EliminaOggettiRugby"
      L5_2 = -1
      L6_2 = L0_1
      L6_2 = L6_2[L1_2]
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = L0_1
      L4_2 = {}
      L3_2[L1_2] = L4_2
    end
  end
end
L1_1(L2_1, L3_1)
