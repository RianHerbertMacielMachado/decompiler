local L0_1, L1_1, L2_1, L3_1
L0_1 = RegisterNetEvent
L1_1 = "striano_keys:cl:notify"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = "Unknown message"
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.testo3d
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddStateBagChangeHandler
L1_1 = "keysHeld"
L2_1 = nil
function L3_1(A0_2, A1_2, A2_2)
end
L0_1(L1_1, L2_1, L3_1)
