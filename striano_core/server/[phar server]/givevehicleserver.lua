local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.label
    if L8_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = UserData
  L1_2 = L1_2.Get
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = type
  L3_2 = L1_2.vehicles
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    L1_2.vehicles = L2_2
    L2_2 = SetVarDB
    L3_2 = A0_2
    L4_2 = "vehicles"
    L5_2 = L1_2.vehicles
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L1_2.vehicles
  return L2_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    L1_2 = nil
    L2_2 = nil
    return L1_2, L2_2
  end
  L1_2 = pairs
  L2_2 = UserData
  L2_2 = L2_2.GetAll
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = type
      L8_2 = L6_2.vehicles
      L7_2 = L7_2(L8_2)
      if "table" == L7_2 then
        L7_2 = L6_2.vehicles
        L7_2 = L7_2[A0_2]
        if L7_2 then
          L7_2 = L5_2
          L8_2 = L6_2.vehicles
          L8_2 = L8_2[A0_2]
          return L7_2, L8_2
        end
      end
    end
  end
  L1_2 = nil
  L2_2 = nil
  return L1_2, L2_2
end
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = pairs
  L1_2 = UserData
  L1_2 = L1_2.GetAll
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L1_2()
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      L6_2 = type
      L7_2 = L5_2.vehicles
      L6_2 = L6_2(L7_2)
      if "table" == L6_2 then
        L6_2 = false
        L7_2 = pairs
        L8_2 = L5_2.vehicles
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = L12_2.fuori
          if 1 == L13_2 then
            L12_2.fuori = 0
            L6_2 = true
          end
        end
        if L6_2 then
          L7_2 = SetVarDB
          L8_2 = L4_2
          L9_2 = "vehicles"
          L10_2 = L5_2.vehicles
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L3_1(L4_1)
L3_1 = RegisterServerCallback
L4_1 = "garage:fetchPlayerVehicles"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = GetPrimaryIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "Player non rilevato per caricare i veicoli che possiede."
    L4_2(L5_2)
    return
  end
  L4_2 = L1_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  if L4_2 then
    L6_2 = pairs
    L7_2 = L4_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = #L5_2
      L12_2 = L12_2 + 1
      L13_2 = {}
      L13_2.plate = L10_2
      L14_2 = L11_2.props
      if not L14_2 then
        L14_2 = {}
      end
      L13_2.props = L14_2
      L14_2 = L11_2.garage
      L13_2.garage = L14_2
      L14_2 = L11_2.sporco
      L13_2.sporco = L14_2
      L14_2 = L11_2.benzina
      L13_2.benzina = L14_2
      L14_2 = L11_2.posizione
      if not L14_2 then
        L14_2 = {}
      end
      L13_2.posizione = L14_2
      L5_2[L12_2] = L13_2
    end
  end
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerCallback
L4_1 = "garage:validateVehicle"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = A2_2.plate
    if L5_2 then
      goto lbl_13
    end
  end
  L5_2 = A1_2
  L6_2 = false
  L5_2(L6_2)
  do return end
  ::lbl_13::
  L5_2 = L2_1
  L6_2 = A2_2.plate
  L5_2, L6_2 = L5_2(L6_2)
  if not L6_2 then
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
    return
  end
  L7_2 = UpdateGarage
  L8_2 = A2_2
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
  L7_2 = A1_2
  L8_2 = true
  L7_2(L8_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerCallback
L4_1 = "garage:validateVehicle2"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1
  L4_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = A1_2
  L6_2 = nil ~= L4_2
  L5_2(L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerCallback
L4_1 = "garage:elimina"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L2_1
  L4_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 or not L4_2 then
    L5_2 = A1_2
    L6_2 = false
    L5_2(L6_2)
    return
  end
  L5_2 = L1_1
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = A1_2
    L7_2 = false
    L6_2(L7_2)
    return
  end
  L5_2[A2_2] = nil
  L6_2 = SetVarDB
  L7_2 = L3_2
  L8_2 = "vehicles"
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A1_2
  L7_2 = true
  L6_2(L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerCallback
L4_1 = "garage:mettifuori"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = L2_1
  L6_2 = A2_2
  L5_2, L6_2 = L5_2(L6_2)
  if not L6_2 then
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
    return
  end
  L7_2 = UpdateGarageFuori
  L8_2 = A2_2
  L9_2 = A4_2
  L10_2 = A3_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A1_2
  L8_2 = true
  L7_2(L8_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 or not L4_2 then
    L5_2 = false
    return L5_2
  end
  L4_2.fuori = 1
  L4_2.posizione = A1_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0
  end
  L5_2 = L5_2(L6_2)
  L4_2.benzina = L5_2
  L5_2 = L1_1
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = SetVarDB
  L7_2 = L3_2
  L8_2 = "vehicles"
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = true
  return L6_2
end
UpdateGarageFuori = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A0_2.plate
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_11::
  L2_2 = L2_1
  L3_2 = A0_2.plate
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 or not L3_2 then
    L4_2 = false
    return L4_2
  end
  L3_2.props = A0_2
  L4_2 = tonumber
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L3_2.benzina
    if not L4_2 then
      L4_2 = 0
    end
  end
  L3_2.benzina = L4_2
  L4_2 = L1_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = SetVarDB
  L6_2 = L2_2
  L7_2 = "vehicles"
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = print
  L6_2 = "Veicolo aggiornato: "
  L7_2 = A0_2.plate
  L6_2 = L6_2 .. L7_2
  L5_2(L6_2)
  L5_2 = true
  return L5_2
end
UpdateGarage = L3_1
L3_1 = RegisterServerCallback
L4_1 = "garage:totvehplayer"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L3_2(L4_2)
    L3_2 = print
    L4_2 = "PROBLEMA CONTEGGIO VEICOLI GIOCATORE: identifier non rilevato"
    L3_2(L4_2)
    return
  end
  L3_2 = L1_1
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  if L3_2 then
    L5_2 = pairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2 in L5_2, L6_2, L7_2, L8_2 do
      L10_2 = #L4_2
      L10_2 = L10_2 + 1
      L11_2 = {}
      L11_2.plate = L9_2
      L4_2[L10_2] = L11_2
    end
  end
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerCallback
L4_1 = "garage:totvehplayer2"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L3_2(L4_2)
    L3_2 = print
    L4_2 = "PROBLEMA CONTEGGIO VEICOLI GIOCATORE: identifier non rilevato"
    L3_2(L4_2)
    return
  end
  L3_2 = L1_1
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  if L3_2 then
    L5_2 = pairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = #L4_2
      L11_2 = L11_2 + 1
      L12_2 = {}
      L12_2.plate = L9_2
      L13_2 = L10_2.modelname
      if not L13_2 then
        L13_2 = L10_2.props
        if L13_2 then
          L13_2 = L10_2.props
          L13_2 = L13_2.modelname
        end
      end
      L12_2.modelname = L13_2
      L4_2[L11_2] = L12_2
    end
  end
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L3_1(L4_1, L5_1)
