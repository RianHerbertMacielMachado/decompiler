local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "salvaNuovoOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "salvaNuovoOutfit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = TriggerServerCallback
  L4_2 = "getPlayerOutfits"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L2_2 = A0_3
    L1_3 = L2_2
    if nil ~= L1_3 then
      L1_3 = L2_2
      L1_3 = #L1_3
      if 0 ~= L1_3 then
        goto lbl_12
      end
    end
    L1_3 = {}
    L2_2 = L1_3
    ::lbl_12::
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L2_2
    L3_3 = {}
    L4_3 = A0_2
    L3_3.label = L4_3
    L4_3 = A1_2
    L3_3.skin = L4_3
    L1_3(L2_3, L3_3)
    L1_3 = TriggerServerEvent
    L2_3 = "updateOutfits"
    L3_3 = L2_2
    L1_3(L2_3, L3_3)
  end
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2 = L7_2()
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "LimitOutfitMex"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "LimitOutfitMex"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submex
  L2_2 = "You reach the limit of outfit."
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
