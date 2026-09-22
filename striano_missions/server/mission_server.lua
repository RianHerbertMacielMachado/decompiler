local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
BusyMission = L0_1
L0_1 = 10
L1_1 = 1
L2_1 = L0_1
L3_1 = 1
for L4_1 = L1_1, L2_1, L3_1 do
  L5_1 = BusyMission
  L5_1[L4_1] = false
  L5_1 = BusyMission
  L5_1[L4_1] = false
  L5_1 = BusyMission
  L5_1[L4_1] = false
end
L1_1 = {}
GlobalTimer = L1_1
L1_1 = {}
PlayerOwnerMis = L1_1
L1_1 = {}
PropsMis = L1_1
L1_1 = RegisterServerEvent
L2_1 = "getBackBusyMission"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "getBackBusyMission"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "getBackBusyMission"
  L3_2 = A0_2
  L4_2 = BusyMission
  L1_2(L2_2, L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "setBusy"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "setBusy"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = BusyMission
  L3_2[A1_2] = A2_2
  L3_2 = TriggerClientEvent
  L4_2 = "getBackBusyMission"
  L5_2 = -1
  L6_2 = BusyMission
  L3_2(L4_2, L5_2, L6_2)
  if not A2_2 then
    L3_2 = GlobalTimer
    L3_2[A1_2] = 0
    L3_2 = PlayerOwnerMis
    L3_2[A1_2] = nil
  else
    L3_2 = PlayerOwnerMis
    L3_2[A1_2] = A0_2
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "addPropMiss"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "addPropMiss"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropsMis
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = PropsMis
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = PropsMis
  L3_2 = L3_2[A0_2]
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "delPropMiss"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "delPropMiss"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PropsMis
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = PropsMis
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = 1
      L3_2 = PropsMis
      L3_2 = L3_2[A0_2]
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = tostring
        L7_2 = PropsMis
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2[L5_2]
        L6_2 = L6_2(L7_2)
        L7_2 = tostring
        L8_2 = A1_2
        L7_2 = L7_2(L8_2)
        if L6_2 == L7_2 then
          L6_2 = table
          L6_2 = L6_2.remove
          L7_2 = PropsMis
          L7_2 = L7_2[A0_2]
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
          break
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "timerMissioneServer"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "timerMissioneServer"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GlobalTimer
  L2_2[A0_2] = A1_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = GlobalTimer
      L1_3 = A0_2
      L0_3 = L0_3[L1_3]
      if L0_3 > 0 then
        L0_3 = GetPlayerName
        L1_3 = PlayerOwnerMis
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3(L1_3)
        if nil ~= L0_3 then
          L0_3 = GlobalTimer
          L1_3 = A0_2
          L2_3 = GlobalTimer
          L3_3 = A0_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3 - 1
          L0_3[L1_3] = L2_3
      end
      else
        L0_3 = BusyMission
        L1_3 = A0_2
        L0_3[L1_3] = false
        L0_3 = TriggerClientEvent
        L1_3 = "getBackBusyMission"
        L2_3 = -1
        L3_3 = BusyMission
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = PropsMis
        L1_3 = A0_2
        L0_3 = L0_3[L1_3]
        if nil ~= L0_3 then
          L0_3 = PropsMis
          L1_3 = A0_2
          L0_3 = L0_3[L1_3]
          L0_3 = #L0_3
          if L0_3 > 0 then
            L0_3 = TriggerClientEvent
            L1_3 = "delPropMiss"
            L2_3 = -1
            L3_3 = PropsMis
            L4_3 = A0_2
            L3_3 = L3_3[L4_3]
            L0_3(L1_3, L2_3, L3_3)
          end
          L0_3 = PropsMis
          L1_3 = A0_2
          L0_3[L1_3] = nil
        end
        L0_3 = print
        L1_3 = "Timer Mission "
        L2_3 = A0_2
        L3_3 = " closed."
        L1_3 = L1_3 .. L2_3 .. L3_3
        L0_3(L1_3)
        return
      end
    end
  end
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
