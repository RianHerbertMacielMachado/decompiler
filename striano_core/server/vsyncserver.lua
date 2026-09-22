local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.IsAdmin
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
isAllowedToChange = L0_1
L0_1 = true
L1_1 = false
L2_1 = true
L3_1 = "SNOWLIGHT"
L4_1 = 20
L5_1 = false
L6_1 = 0
L7_1 = 10
L8_1 = 19
nebbiaAttiva = 0
L9_1 = RegisterNetEvent
L10_1 = "startNebbia"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "startNebbia"
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = GlobalState
  L0_2.SafeModeActive = true
  L0_2 = SafeMode
  L0_2.active = true
  L0_2 = SafeMode
  L1_2 = os
  L1_2 = L1_2.time
  L1_2 = L1_2()
  L2_2 = SAFE_MODE_ACTIVE_SECONDS
  L1_2 = L1_2 + L2_2
  L0_2.endsAt = L1_2
  nebbiaAttiva = 1
  L0_2 = TriggerClientEvent
  L1_2 = "startNebbia"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "stopNebbia"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "stopNebbia"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  nebbiaAttiva = 0
  L0_2 = TriggerClientEvent
  L1_2 = "endNebbia"
  L2_2 = -1
  L0_2(L1_2, L2_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = 19
  L8_1 = L0_2
  L0_2 = 0
  L7_1 = L0_2
  L0_2 = TriggerClientEvent
  L1_2 = "vSync:setOrario"
  L2_2 = -1
  L3_2 = 19
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = "SNOWLIGHT"
  L3_1 = L0_2
  L0_2 = TriggerClientEvent
  L1_2 = "vSync:setMeteo"
  L2_2 = -1
  L3_2 = L3_1
  L0_2(L1_2, L2_2, L3_2)
end
L9_1(L10_1, L11_1)
L9_1 = {}
L10_1 = "EXTRASUNNY"
L11_1 = "CLEAR"
L12_1 = "NEUTRAL"
L13_1 = "SMOG"
L14_1 = "FOGGY"
L15_1 = "OVERCAST"
L16_1 = "CLOUDS"
L17_1 = "CLEARING"
L18_1 = "RAIN"
L19_1 = "THUNDER"
L20_1 = "SNOW"
L21_1 = "BLIZZARD"
L22_1 = "SNOWLIGHT"
L23_1 = "HALLOWEEN"
L24_1 = "XMAS"
L9_1[1] = L10_1
L9_1[2] = L11_1
L9_1[3] = L12_1
L9_1[4] = L13_1
L9_1[5] = L14_1
L9_1[6] = L15_1
L9_1[7] = L16_1
L9_1[8] = L17_1
L9_1[9] = L18_1
L9_1[10] = L19_1
L9_1[11] = L20_1
L9_1[12] = L21_1
L9_1[13] = L22_1
L9_1[14] = L23_1
L9_1[15] = L24_1
L10_1 = RegisterServerEvent
L11_1 = "vSync:getSync"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "vSync:getSync"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil ~= A0_2 then
    L1_2 = TriggerClientEvent
    L2_2 = "vSync:setMeteo"
    L3_2 = A0_2
    L4_2 = L3_1
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = TriggerClientEvent
    L2_2 = "vSync:setOrario"
    L3_2 = A0_2
    L4_2 = L8_1
    L5_2 = L7_1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = "freezetime"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_1
    L2_2 = not L2_2
    L2_1 = L2_2
    L2_2 = L2_1
    if L2_2 then
      L2_2 = TriggerClientEvent
      L3_2 = "anim:cmd"
      L4_2 = A0_2
      L5_2 = "prova3 Clock Locked."
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = TriggerClientEvent
      L3_2 = "vSync:setOrario"
      L4_2 = -1
      L5_2 = L8_1
      L6_2 = L7_1
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = 0
      L6_1 = L2_2
    else
      L2_2 = TriggerClientEvent
      L3_2 = "anim:cmd"
      L4_2 = A0_2
      L5_2 = "prova3 Clock Unlocked."
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "anim:cmd"
    L4_2 = A0_2
    L5_2 = "prova3 No Perm."
    L2_2(L3_2, L4_2, L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = "fasttime"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L5_1
    L2_2 = not L2_2
    L5_1 = L2_2
    L2_2 = L5_1
    if L2_2 then
      L2_2 = TriggerClientEvent
      L3_2 = "anim:cmd"
      L4_2 = A0_2
      L5_2 = "prova3 Fast Time Active."
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = TriggerClientEvent
      L3_2 = "anim:cmd"
      L4_2 = A0_2
      L5_2 = "prova3 Fast Time Stopped."
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = "freezeweather"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L1_1
    L2_2 = not L2_2
    L1_1 = L2_2
    L2_2 = L1_1
    if not L2_2 then
      L2_2 = TriggerClientEvent
      L3_2 = "anim:cmd"
      L4_2 = A0_2
      L5_2 = "prova3 Dinamyc Weather Active."
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = TriggerClientEvent
      L3_2 = "anim:cmd"
      L4_2 = A0_2
      L5_2 = "prova3 Dinamyc Weather Stopped."
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = "weather"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = isAllowedToChange
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = false
    L3_2 = A1_2[1]
    if nil == L3_2 then
    else
      L3_2 = ipairs
      L4_2 = L9_1
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = string
        L9_2 = L9_2.upper
        L10_2 = A1_2[1]
        L9_2 = L9_2(L10_2)
        if L8_2 == L9_2 then
          L2_2 = true
        end
      end
      if L2_2 then
        L3_2 = string
        L3_2 = L3_2.upper
        L4_2 = A1_2[1]
        L3_2 = L3_2(L4_2)
        L3_1 = L3_2
        L3_2 = A1_2[2]
        if L3_2 then
          L3_2 = tonumber
          L4_2 = A1_2[2]
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = tonumber
            L4_2 = A1_2[2]
            L3_2 = L3_2(L4_2)
            L4_1 = L3_2
        end
        else
          L3_2 = 10
          L4_1 = L3_2
        end
        L3_2 = TriggerClientEvent
        L4_2 = "vSync:setMeteo"
        L5_2 = -1
        L6_2 = L3_1
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = "time"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = isAllowedToChange
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = tonumber
    L4_2 = A1_2[1]
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      L3_2 = tonumber
      L4_2 = A1_2[2]
      L3_2 = L3_2(L4_2)
      if nil ~= L3_2 then
        L3_2 = tonumber
        L4_2 = A1_2[1]
        L3_2 = L3_2(L4_2)
        L4_2 = tonumber
        L5_2 = A1_2[2]
        L4_2 = L4_2(L5_2)
        if L3_2 > 23 then
          L3_2 = 0
        end
        if L4_2 > 60 then
          L4_2 = 0
        end
        if L3_2 < 0 then
          L3_2 = 0
        end
        if L4_2 < 0 then
          L4_2 = 0
        end
        L8_1 = L3_2
        L7_1 = L4_2
        L5_2 = L8_1
        if 19 == L5_2 then
          L5_2 = L7_1
          if 0 == L5_2 then
            L5_2 = 10
            L7_1 = L5_2
          end
        end
        L5_2 = L8_1
        if 20 == L5_2 then
          L5_2 = L7_1
          if L5_2 > 29 then
            L5_2 = 22
            L8_1 = L5_2
          end
        end
        L5_2 = L8_1
        if 21 == L5_2 then
          L5_2 = 22
          L8_1 = L5_2
        end
        L5_2 = 0
        L6_1 = L5_2
        L5_2 = TriggerClientEvent
        L6_2 = "vSync:setOrario"
        L7_2 = -1
        L8_2 = L8_1
        L9_2 = L7_1
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
function L10_1()
  local L0_2, L1_2
  L0_2 = L8_1
  if L0_2 >= 22 then
    L0_2 = L8_1
    if L0_2 <= 23 then
      goto lbl_10
    end
  end
  L0_2 = L8_1
  ::lbl_10::
  if 0 == L0_2 then
    L0_2 = false
    return L0_2
  else
    L0_2 = L8_1
    if L0_2 > 0 then
      L0_2 = L8_1
      if L0_2 <= 9 then
        L0_2 = false
        return L0_2
    end
    else
      L0_2 = true
      return L0_2
    end
  end
end
EGiorno = L10_1
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = L5_1
    if L0_2 then
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    else
      L0_2 = EGiorno
      L0_2 = L0_2()
      if not L0_2 then
        L0_2 = Wait
        L1_2 = 7000
        L0_2(L1_2)
      else
        L0_2 = Wait
        L1_2 = 7000
        L0_2(L1_2)
      end
    end
    L0_2 = L2_1
    if not L0_2 then
      L0_2 = L6_1
      if L0_2 < 50 then
        L0_2 = L5_1
        if L0_2 then
          L0_2 = L6_1
          L0_2 = L0_2 + 30
          L6_1 = L0_2
        else
          L0_2 = L6_1
          L0_2 = L0_2 + 10
          L6_1 = L0_2
        end
      else
        L0_2 = 0
        L6_1 = L0_2
        L0_2 = L7_1
        if L0_2 < 50 then
          L0_2 = L5_1
          if L0_2 then
            L0_2 = L7_1
            L0_2 = L0_2 + 30
            L7_1 = L0_2
          else
            L0_2 = L7_1
            L0_2 = L0_2 + 10
            L7_1 = L0_2
          end
          L0_2 = L7_1
          if L0_2 > 55 then
            L0_2 = 55
            L7_1 = L0_2
          end
        else
          L0_2 = L8_1
          L0_2 = L0_2 + 1
          L8_1 = L0_2
          L0_2 = L8_1
          if 7 == L0_2 then
            L0_2 = 5
            L7_1 = L0_2
          end
          L0_2 = L8_1
          if L0_2 > 23 then
            L0_2 = 0
            L8_1 = L0_2
          end
          L0_2 = L8_1
          if 21 == L0_2 then
            L0_2 = 22
            L8_1 = L0_2
          end
        end
        L0_2 = TriggerClientEvent
        L1_2 = "vSync:setOrario"
        L2_2 = -1
        L3_2 = L8_1
        L4_2 = L7_1
        L0_2(L1_2, L2_2, L3_2, L4_2)
      end
    else
      L0_2 = Wait
      L1_2 = 7000
      L0_2(L1_2)
      L0_2 = TriggerClientEvent
      L1_2 = "vSync:setOrario"
      L2_2 = -1
      L3_2 = L8_1
      L4_2 = L7_1
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
  end
end
L10_1(L11_1)
SAFE_MODE_WAIT_SECONDS = 1800
SAFE_MODE_ACTIVE_SECONDS = 180
L10_1 = {}
L10_1.enabled = true
L10_1.active = false
L11_1 = os
L11_1 = L11_1.time
L11_1 = L11_1()
L12_1 = SAFE_MODE_WAIT_SECONDS
L11_1 = L11_1 + L12_1
L10_1.endsAt = L11_1
SafeMode = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SafeMode
  L0_2 = L0_2.enabled
  if not L0_2 then
    L0_2 = 0
    return L0_2
  end
  L0_2 = math
  L0_2 = L0_2.max
  L1_2 = 0
  L2_2 = SafeMode
  L2_2 = L2_2.endsAt
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L2_2 = L2_2 - L3_2
  return L0_2(L1_2, L2_2)
end
GetSafeModeSecondsLeft = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerClientEvent
  L2_2 = "sod:safemode:update"
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = -1
  end
  L4_2 = {}
  L5_2 = SafeMode
  L5_2 = L5_2.enabled
  L4_2.enabled = L5_2
  L5_2 = SafeMode
  L5_2 = L5_2.active
  L4_2.active = L5_2
  L5_2 = GetSafeModeSecondsLeft
  L5_2 = L5_2()
  L4_2.seconds = L5_2
  L1_2(L2_2, L3_2, L4_2)
end
BroadcastSafeMode = L10_1
L10_1 = false
L11_1 = CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GlobalState
  L0_2.SafeModeActive = false
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = SafeMode
    L0_2 = L0_2.enabled
    if L0_2 then
      L0_2 = pauseNebbia
      if L0_2 then
        L0_2 = SafeMode
        L1_2 = os
        L1_2 = L1_2.time
        L1_2 = L1_2()
        L2_2 = SAFE_MODE_ACTIVE_SECONDS
        L1_2 = L1_2 + L2_2
        L0_2.endsAt = L1_2
      else
        L0_2 = GetSafeModeSecondsLeft
        L0_2 = L0_2()
        L1_2 = SafeMode
        L1_2 = L1_2.active
        if not L1_2 and L0_2 <= 120 then
          L1_2 = L10_1
          if not L1_2 then
            L1_2 = true
            L10_1 = L1_2
            L1_2 = TriggerClientEvent
            L2_2 = "fogComing"
            L3_2 = -1
            L1_2(L2_2, L3_2)
          end
        end
        L1_2 = SafeMode
        L1_2 = L1_2.active
        if not L1_2 and L0_2 > 120 then
          L1_2 = false
          L10_1 = L1_2
        end
        if L0_2 <= 0 then
          L1_2 = SafeMode
          L1_2 = L1_2.active
          if L1_2 then
            L1_2 = SafeMode
            L1_2.active = false
            L1_2 = GlobalState
            L1_2.SafeModeActive = false
            L1_2 = SafeMode
            L2_2 = os
            L2_2 = L2_2.time
            L2_2 = L2_2()
            L3_2 = SAFE_MODE_WAIT_SECONDS
            L2_2 = L2_2 + L3_2
            L1_2.endsAt = L2_2
            L1_2 = TriggerEvent
            L2_2 = "stopNebbia"
            L1_2(L2_2)
          else
            L1_2 = TriggerEvent
            L2_2 = "startNebbia"
            L1_2(L2_2)
          end
        end
      end
      L0_2 = BroadcastSafeMode
      L0_2()
    end
  end
end
L11_1(L12_1)
L11_1 = RegisterCommand
L12_1 = "startNebbia"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 > 0 then
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.IsAdmin
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = TriggerEvent
  L2_2 = "startNebbia"
  L1_2(L2_2)
  L1_2 = BroadcastSafeMode
  L1_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "stopNebbia"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 > 0 then
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.IsAdmin
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = nebbiaAttiva
  if 1 == L1_2 then
    L1_2 = SafeMode
    L1_2.active = false
    L1_2 = GlobalState
    L1_2.SafeModeActive = false
    L1_2 = SafeMode
    L2_2 = os
    L2_2 = L2_2.time
    L2_2 = L2_2()
    L3_2 = SAFE_MODE_WAIT_SECONDS
    L2_2 = L2_2 + L3_2
    L1_2.endsAt = L2_2
    L1_2 = TriggerEvent
    L2_2 = "stopNebbia"
    L1_2(L2_2)
    L1_2 = BroadcastSafeMode
    L1_2()
  end
end
L11_1(L12_1, L13_1)
pauseNebbia = false
L11_1 = RegisterCommand
L12_1 = "pauseNebbia"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 > 0 then
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.IsAdmin
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = SafeMode
  L1_2 = L1_2.active
  if L1_2 then
    L1_2 = pauseNebbia
    L1_2 = not L1_2
    pauseNebbia = L1_2
    L1_2 = pauseNebbia
    if L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "anim:cmd"
      L3_2 = A0_2
      L4_2 = "prova Night Mode is paused."
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = TriggerClientEvent
      L2_2 = "anim:cmd"
      L3_2 = A0_2
      L4_2 = "prova Night Mode is resumed."
      L1_2(L2_2, L3_2, L4_2)
    end
  else
    L1_2 = TriggerClientEvent
    L2_2 = "anim:cmd"
    L3_2 = A0_2
    L4_2 = "prova Night Mode not active to pause!"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "timerNebbia"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if 0 ~= A0_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_core
    L3_2 = L2_2
    L2_2 = L2_2.IsAdmin
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      return
    end
  end
  L2_2 = SafeMode
  L2_2 = L2_2.active
  if L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "anim:cmd"
    L4_2 = A0_2
    L5_2 = "prova Night Mode must be ended to change timers."
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = A1_2[2]
    if nil ~= L2_2 then
      goto lbl_28
    end
  end
  do return end
  ::lbl_28::
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A1_2[2]
  L3_2 = L3_2(L4_2)
  if L2_2 < 1 or L2_2 > 60 or L3_2 < 1 or L3_2 > 60 then
    L4_2 = TriggerClientEvent
    L5_2 = "anim:cmd"
    L6_2 = A0_2
    L7_2 = "prova [min_to_night] and [min_to_end] can be 1-60."
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  if not L2_2 or not L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "anim:cmd"
    L6_2 = A0_2
    L7_2 = "prova /timerNebbia [min_to_night] [min_to_end]"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L2_2 * 60
  L4_2 = L4_2(L5_2)
  SAFE_MODE_WAIT_SECONDS = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L3_2 * 60
  L4_2 = L4_2(L5_2)
  SAFE_MODE_ACTIVE_SECONDS = L4_2
  L4_2 = TriggerClientEvent
  L5_2 = "anim:cmd"
  L6_2 = A0_2
  L7_2 = "prova Timer Night upadated [Comes in "
  L8_2 = L2_2
  L9_2 = "] - [Ends in "
  L10_2 = L3_2
  L11_2 = "]"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SafeMode
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L6_2 = SAFE_MODE_WAIT_SECONDS
  L5_2 = L5_2 + L6_2
  L4_2.endsAt = L5_2
  L4_2 = BroadcastSafeMode
  L4_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "sod:safemode:getNebbia"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "GetNebbiaBack"
  L2_2 = source
  L3_2 = nebbiaAttiva
  L0_2(L1_2, L2_2, L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "sod:safemode:requestSync"
function L13_1()
  local L0_2, L1_2
  L0_2 = BroadcastSafeMode
  L1_2 = source
  L0_2(L1_2)
end
L11_1(L12_1, L13_1)
