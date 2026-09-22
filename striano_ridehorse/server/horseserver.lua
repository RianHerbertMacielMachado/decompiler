local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  if A0_2 then
    L2_2 = A0_2.passengers
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = 0
  do return L2_2 end
  ::lbl_9::
  L2_2 = pairs
  L3_2 = A0_2.passengers
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L1_1
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = L6_2.seats
    if L7_2 < L8_2 then
      L8_2 = #L0_2
      L8_2 = L8_2 + 1
      L9_2 = {}
      L10_2 = tonumber
      L11_2 = L5_2
      L10_2 = L10_2(L11_2)
      L9_2.serverId = L10_2
      L10_2 = L6_2.seats
      L9_2.seats = L10_2
      L9_2.occupied = L7_2
      L0_2[L8_2] = L9_2
    end
  end
  L1_2 = TriggerClientEvent
  L2_2 = "horse:updateActiveRiders"
  L3_2 = -1
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.passengers
    L8_2 = L8_2[A0_2]
    if L8_2 then
      L8_2 = L7_2.passengers
      L8_2[A0_2] = nil
      L1_2 = true
    end
  end
  if L1_2 then
    L2_2 = L2_1
    L2_2()
  end
end
L4_1 = RegisterNetEvent
L5_1 = "horse:syncCava"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "horse:syncCava"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 1
  end
  if not A0_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "horse:syncCava"
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "horse:stop"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "horse:stop"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = L2_2.passengers
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L3_2 = L2_2.passengers
    L3_2[L1_2] = nil
    L3_2 = L2_1
    L3_2()
  end
  L3_2 = TriggerClientEvent
  L4_2 = "horse:passengerStopped"
  L5_2 = A0_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "Striano:AssignHorse"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "Striano:AssignHorse"
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = TriggerClientEvent
  L5_2 = "AssignClient"
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = print
  L5_2 = "^2[Striano_RideHorse] ^7"
  L6_2 = GetPlayerName
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  L7_2 = " assign ride animal ("
  L8_2 = A2_2
  L9_2 = ") to "
  L10_2 = GetPlayerName
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L4_2(L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "srtHorse"
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L8_2 = TriggerClientEvent
  L9_2 = "srtHorse"
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
end
L4_1(L5_1, L6_1)
L4_1 = RegisterServerEvent
L5_1 = "fivem_netstats"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "fivem_netstats"
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "fivem_netstats"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "horse:setMounted"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "horse:setMounted"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0
  end
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  A0_2 = L2_2
  L2_2 = L3_1
  L3_2 = L1_2
  L2_2(L3_2)
  if A0_2 > 0 then
    L2_2 = L0_1
    L3_2 = {}
    L3_2.seats = A0_2
    L4_2 = {}
    L3_2.passengers = L4_2
    L2_2[L1_2] = L3_2
  else
    L2_2 = L0_1
    L2_2[L1_2] = nil
  end
  L2_2 = L2_1
  L2_2()
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "horse:setUnmounted"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "horse:setUnmounted"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L2_2 = pairs
    L3_2 = L1_2.passengers
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2 = TriggerClientEvent
      L8_2 = "horse:forcePassengerStop"
      L9_2 = L6_2
      L10_2 = L0_2
      L7_2(L8_2, L9_2, L10_2)
    end
    L2_2 = L0_1
    L2_2[L0_2] = nil
    L2_2 = L2_1
    L2_2()
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "horse:requestPassenger"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "horse:requestPassenger"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or A0_2 == L1_2 then
    L2_2 = print
    L3_2 = "[REQUEST STOP] rider non valido/stesso player"
    L2_2(L3_2)
    return
  end
  L2_2 = GetPlayerName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetPlayerName
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_28
    end
  end
  L2_2 = print
  L3_2 = "[REQUEST STOP] player non online"
  L2_2(L3_2)
  do return end
  ::lbl_28::
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = print
    L4_2 = "[REQUEST STOP] RIDER NON PRESENTE IN ActiveHorseRiders"
    L3_2(L4_2)
    return
  end
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.passengers
    L9_2 = L9_2[L1_2]
    if L9_2 then
      L9_2 = print
      L10_2 = "[REQUEST STOP] PASSEGGERO RISULTA ANCORA OCCUPATO DA RIDER:"
      L11_2 = L7_2
      L12_2 = "seat:"
      L13_2 = L8_2.passengers
      L13_2 = L13_2[L1_2]
      L9_2(L10_2, L11_2, L12_2, L13_2)
      return
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L3_2 = print
    L4_2 = "[REQUEST STOP] PASSEGGERO RISULTA ANCHE RIDER"
    L3_2(L4_2)
    return
  end
  L3_2 = L1_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.seats
  if L3_2 >= L4_2 then
    L4_2 = print
    L5_2 = "[REQUEST STOP] CAVALLO PIENO:"
    L6_2 = L3_2
    L7_2 = "/"
    L8_2 = L2_2.seats
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = L2_1
    L4_2()
    return
  end
  L4_2 = nil
  L5_2 = 1
  L6_2 = L2_2.seats
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = false
    L10_2 = pairs
    L11_2 = L2_2.passengers
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      if L15_2 == L8_2 then
        L9_2 = true
        break
      end
    end
    if not L9_2 then
      L4_2 = L8_2
      break
    end
  end
  if not L4_2 then
    L5_2 = print
    L6_2 = "[REQUEST STOP] NESSUN SEAT INDEX LIBERO"
    L5_2(L6_2)
    return
  end
  L5_2 = L2_2.passengers
  L5_2[L1_2] = L4_2
  L5_2 = L2_1
  L5_2()
  L5_2 = TriggerClientEvent
  L6_2 = "horse:acceptPassenger"
  L7_2 = A0_2
  L8_2 = L1_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "horse:cancelPassenger"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "horse:cancelPassenger"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    return
  end
  L3_2 = L2_2.passengers
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L2_2.passengers
    L3_2[A0_2] = nil
    L3_2 = L2_1
    L3_2()
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "horse:leavePassenger"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "horse:leavePassenger"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = L2_2.passengers
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L3_2 = L2_2.passengers
    L3_2[L1_2] = nil
    L3_2 = L2_1
    L3_2()
  end
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "playerDropped"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = source
  L1_2 = false
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  if L2_2 then
    L3_2 = pairs
    L4_2 = L2_2.passengers
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2 in L3_2, L4_2, L5_2, L6_2 do
      L8_2 = TriggerClientEvent
      L9_2 = "horse:forcePassengerStop"
      L10_2 = L7_2
      L11_2 = L0_2
      L8_2(L9_2, L10_2, L11_2)
    end
    L3_2 = L0_1
    L3_2[L0_2] = nil
    L1_2 = true
  end
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.passengers
    L9_2 = L9_2[L0_2]
    if L9_2 then
      L9_2 = L8_2.passengers
      L9_2[L0_2] = nil
      L1_2 = true
    end
  end
  if L1_2 then
    L3_2 = L2_1
    L3_2()
  end
end
L4_1(L5_1, L6_1)
