local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = ipairs
  L3_2 = GetPlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = GetPlayerName
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L9_2 = tonumber
        L10_2 = A0_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = tonumber
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          L10_2 = tonumber
          L11_2 = A0_2
          L10_2 = L10_2(L11_2)
          if L9_2 == L10_2 then
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L1_2
            L11_2 = tonumber
            L12_2 = L7_2
            L11_2, L12_2, L13_2 = L11_2(L12_2)
            L9_2(L10_2, L11_2, L12_2, L13_2)
            break
          end
        end
        L9_2 = string
        L9_2 = L9_2.sub
        L10_2 = A0_2
        L11_2 = 1
        L12_2 = 1
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        if "#" == L9_2 then
          L9_2 = tonumber
          L10_2 = string
          L10_2 = L10_2.sub
          L11_2 = A0_2
          L12_2 = 2
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2)
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
          if L9_2 then
            L10_2 = tonumber
            L11_2 = L7_2
            L10_2 = L10_2(L11_2)
            if L10_2 == L9_2 then
              L10_2 = table
              L10_2 = L10_2.insert
              L11_2 = L1_2
              L12_2 = tonumber
              L13_2 = L7_2
              L12_2, L13_2 = L12_2(L13_2)
              L10_2(L11_2, L12_2, L13_2)
              break
            end
          end
        end
        L9_2 = string
        L9_2 = L9_2.match
        L11_2 = L8_2
        L10_2 = L8_2.lower
        L10_2 = L10_2(L11_2)
        L12_2 = A0_2
        L11_2 = A0_2.lower
        L11_2, L12_2, L13_2 = L11_2(L12_2)
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        if L9_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L1_2
          L11_2 = tonumber
          L12_2 = L7_2
          L11_2, L12_2, L13_2 = L11_2(L12_2)
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
      end
    end
  end
  return L1_2
end
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = #A1_2
  if 1 == L3_2 then
    L3_2 = true
    return L3_2
  else
    L3_2 = #A1_2
    if 0 == L3_2 then
      L3_2 = false
      return L3_2
    else
      L3_2 = false
      return L3_2
    end
  end
end
L3_1 = RegisterCommand
L4_1 = "getback"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Not allowed."
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = #A1_2
  if 1 == L2_2 then
    L2_2 = A1_2[1]
    if nil == L2_2 then
      return
    end
    L2_2 = L1_1
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    L3_2 = L2_1
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = L2_2[1]
      L4_2 = L0_1
      L4_2 = L4_2[L3_2]
      if nil ~= L4_2 then
        L5_2 = L0_1
        L6_2 = GetEntityCoords
        L7_2 = GetPlayerPed
        L8_2 = L3_2
        L7_2, L8_2 = L7_2(L8_2)
        L6_2 = L6_2(L7_2, L8_2)
        L5_2[L3_2] = L6_2
        L5_2 = TriggerClientEvent
        L6_2 = "_teleport:setCoords"
        L7_2 = L3_2
        L8_2 = L4_2
        L5_2(L6_2, L7_2, L8_2)
      else
      end
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "tpp"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Not allowed."
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = #A1_2
  if 1 == L2_2 then
    L2_2 = L1_1
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    L3_2 = L2_1
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = L2_2[1]
      if L3_2 ~= A0_2 then
        L4_2 = GetEntityCoords
        L5_2 = GetPlayerPed
        L6_2 = L3_2
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        L5_2 = L0_1
        L6_2 = GetEntityCoords
        L7_2 = GetPlayerPed
        L8_2 = A0_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        L5_2[A0_2] = L6_2
        L5_2 = TriggerClientEvent
        L6_2 = "_teleport:setCoords"
        L7_2 = A0_2
        L8_2 = L4_2
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  else
    L2_2 = #A1_2
    if 2 == L2_2 then
      L2_2 = L1_1
      L3_2 = A1_2[1]
      L2_2 = L2_2(L3_2)
      L3_2 = L2_1
      L4_2 = A0_2
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = L1_1
        L4_2 = A1_2[2]
        L3_2 = L3_2(L4_2)
        L4_2 = L2_1
        L5_2 = A0_2
        L6_2 = L3_2
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          L4_2 = L2_2[1]
          L5_2 = L3_2[1]
          if L4_2 ~= L5_2 then
            L6_2 = GetEntityCoords
            L7_2 = GetPlayerPed
            L8_2 = L5_2
            L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
            L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
            L7_2 = L0_1
            L8_2 = GetEntityCoords
            L9_2 = GetPlayerPed
            L10_2 = L4_2
            L9_2, L10_2 = L9_2(L10_2)
            L8_2 = L8_2(L9_2, L10_2)
            L7_2[L4_2] = L8_2
            L7_2 = TriggerClientEvent
            L8_2 = "_teleport:setCoords"
            L9_2 = L4_2
            L10_2 = L6_2
            L7_2(L8_2, L9_2, L10_2)
            if L5_2 ~= A0_2 then
              L7_2 = print
              L8_2 = L5_2
              L9_2 = A0_2
              L7_2(L8_2, L9_2)
            end
          end
        end
      end
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "tpp2"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Not allowed."
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = #A1_2
  if 1 == L2_2 then
    L2_2 = A1_2[1]
    if nil == L2_2 then
      return
    end
    if L2_2 ~= A0_2 then
      L3_2 = GetEntityCoords
      L4_2 = GetPlayerPed
      L5_2 = L2_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = L0_1
      L5_2 = GetEntityCoords
      L6_2 = GetPlayerPed
      L7_2 = A0_2
      L6_2, L7_2 = L6_2(L7_2)
      L5_2 = L5_2(L6_2, L7_2)
      L4_2[A0_2] = L5_2
      L4_2 = TriggerClientEvent
      L5_2 = "_teleport:setCoords"
      L6_2 = A0_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "[Use] ~q~/tpp2 ~w~ID"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "tpp3"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "Not allowed."
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = #A1_2
  if 1 == L2_2 then
    L2_2 = A1_2[1]
    if nil == L2_2 then
      return
    end
    if L2_2 ~= A0_2 then
      L3_2 = GetEntityCoords
      L4_2 = GetPlayerPed
      L5_2 = A0_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = L0_1
      L5_2 = GetEntityCoords
      L6_2 = GetPlayerPed
      L7_2 = A0_2
      L6_2, L7_2 = L6_2(L7_2)
      L5_2 = L5_2(L6_2, L7_2)
      L4_2[A0_2] = L5_2
      L4_2 = TriggerClientEvent
      L5_2 = "_teleport:setCoords"
      L6_2 = L2_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "/tpp3 ID"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L3_1(L4_1, L5_1)
