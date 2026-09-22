local L0_1, L1_1, L2_1
L0_1 = RegisterServerEvent
L1_1 = "esx_eden_clotheshop:saveOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_eden_clotheshop:saveOutfit"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = source
  L4_2 = tonumber
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2 or A2_2
  if not L4_2 then
    A2_2 = L3_2
  end
  L4_2 = GetPlayerOutfits
  L5_2 = A2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = {}
      A0_3 = L1_3
    end
    L1_3 = #A0_3
    if L1_3 >= 10 then
      L1_3 = TriggerClientEvent
      L2_3 = "LimitOutfitMex"
      L3_3 = A2_2
      L1_3(L2_3, L3_3)
      return
    end
    L1_3 = TriggerClientEvent
    L2_3 = "salvaNuovoOutfit"
    L3_3 = A2_2
    L4_3 = A0_2
    L5_3 = A1_2
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_eden_clotheshop:deleteOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_eden_clotheshop:deleteOutfit"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "eliminaOutfit"
  L3_2 = source
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_eden_clotheshop:renameOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_eden_clotheshop:renameOutfit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "rinominaOutfit"
  L4_2 = source
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_eden_clotheshop:indossaOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_eden_clotheshop:indossaOutfit"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "indossaOutfit"
  L3_2 = source
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "condividiOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "condividiOutfit"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerClientEvent
  L4_2 = "condividiOutfit"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "riceviOutfit"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "riceviOutfit"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerClientEvent
  L4_2 = "riceviOutfit"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "aggiornaSecondario"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "aggiornaSecondario"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "aggiornaSecondario"
  L3_2 = source
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerCallback
L1_1 = "esx_eden_clotheshop:getPlayerOutfit"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = GetPlayerOutfits
  L5_2 = A3_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3 or nil
    if A0_3 then
      L1_3 = tonumber
      L2_3 = A2_2
      L1_3 = L1_3(L2_3)
      L1_3 = A0_3[L1_3]
    end
    L2_3 = A1_2
    if L1_3 then
      L3_3 = L1_3.skin
      if L3_3 then
        goto lbl_14
      end
    end
    L3_3 = nil
    ::lbl_14::
    L2_3(L3_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1(L1_1, L2_1)
