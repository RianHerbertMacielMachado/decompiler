local L0_1, L1_1, L2_1, L3_1
L0_1 = RegisterServerEvent
L1_1 = "sp_menuperso:ApplicaDonna"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "sp_menuperso:ApplicaDonna"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = identOf
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = SetVarDB
  L4_2 = L2_2
  L5_2 = "skin"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = string
  L2_2 = L2_2.rep
  L3_2 = " "
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = "{\r\n"
  L2_2 = L2_2 .. L3_2
  A1_2 = A1_2 + 2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2
    L10_2 = string
    L10_2 = L10_2.rep
    L11_2 = " "
    L12_2 = A1_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2 = L9_2 .. L10_2
    L2_2 = L9_2
    L9_2 = type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if "number" == L9_2 then
      L9_2 = L2_2
      L10_2 = "["
      L11_2 = L7_2
      L12_2 = "] = "
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L2_2 = L9_2
    else
      L9_2 = type
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if "string" == L9_2 then
        L9_2 = L2_2
        L10_2 = L7_2
        L11_2 = "= "
        L9_2 = L9_2 .. L10_2 .. L11_2
        L2_2 = L9_2
      end
    end
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "number" == L9_2 then
      L9_2 = L2_2
      L10_2 = L8_2
      L11_2 = ",\r\n"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L2_2 = L9_2
    else
      L9_2 = type
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if "string" == L9_2 then
        L9_2 = L2_2
        L10_2 = "\""
        L11_2 = L8_2
        L12_2 = "\",\r\n"
        L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
        L2_2 = L9_2
      else
        L9_2 = type
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if "table" == L9_2 then
          L9_2 = L2_2
          L10_2 = L0_1
          L11_2 = L8_2
          L12_2 = A1_2 + 2
          L10_2 = L10_2(L11_2, L12_2)
          L11_2 = ",\r\n"
          L9_2 = L9_2 .. L10_2 .. L11_2
          L2_2 = L9_2
        else
          L9_2 = L2_2
          L10_2 = "\""
          L11_2 = tostring
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          L12_2 = "\",\r\n"
          L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
          L2_2 = L9_2
        end
      end
    end
  end
  L3_2 = L2_2
  L4_2 = string
  L4_2 = L4_2.rep
  L5_2 = " "
  L6_2 = A1_2 - 2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = "}"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2 = L3_2
  return L2_2
end
L1_1 = RegisterServerCallback
L2_1 = "sp_menuperso:getGiacca"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = identOf
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = A1_2
  L4_2 = UserData
  L4_2 = L4_2.GetValue
  L5_2 = L2_2
  L6_2 = "giacca"
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "menuperso:putInVehicle"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "menuperso:putInVehicle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "esx_ambulancejjj:revive3"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = TriggerClientEvent
  L2_2 = "menuperso:putInVehicle"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "menuperso:OutVehicle"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "menuperso:OutVehicle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "menuperso:OutVehicle"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "esx_ambulancejjj:revive"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx_ambulancejjj:revive"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "esx_ambulancejjj:revive"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "explosionEvent"
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = CancelEvent
  L2_2()
end
L1_1(L2_1, L3_1)
