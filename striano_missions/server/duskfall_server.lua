local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = true
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = print
    L2_2 = "[DUSKFALLS] "
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = ...
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L2_1 = {}
Classifica = L2_1
L2_1 = players
if not L2_1 then
  L2_1 = {}
end
players = L2_1
L2_1 = nil
L3_1 = false
L4_1 = 0
L5_1 = 60
L6_1 = 900
L7_1 = 0
L8_1 = false
L9_1 = 50
L10_1 = L9_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = GetPlayerName
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = nil ~= L1_2
  end
  return L1_2
end
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = players
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = players
    L2_2 = {}
    L1_2[A0_2] = L2_2
  end
  L1_2 = players
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.deposited
  if nil == L2_2 then
    L1_2.deposited = 0
  end
  L2_2 = L1_2.kills
  if nil == L2_2 then
    L1_2.kills = 0
  end
  L2_2 = L1_2.death
  if nil == L2_2 then
    L1_2.death = 0
  end
  L2_2 = L1_2.partecipante
  if nil == L2_2 then
    L1_2.partecipante = false
  end
  return L1_2
end
function L13_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = players
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.partecipante
    if L7_2 then
      L7_2 = TriggerClientEvent
      L8_2 = A0_2
      L9_2 = L5_2
      L10_2 = ...
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
TriggerToPartecipanti = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L11_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "striano_missions:setHUDPosition"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
SetPlayerHUDPosition = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerToPartecipanti
  L2_2 = "striano_missions:setHUDPosition"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
SetAllPlayersHUDPosition = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "left"
  if "combat" == A0_2 then
    L1_2 = "center"
  elseif "menu" == A0_2 then
    L1_2 = "right"
  elseif "exploration" == A0_2 then
    L1_2 = "left"
  end
  L2_2 = SetAllPlayersHUDPosition
  L3_2 = L1_2
  L2_2(L3_2)
end
SetHUDPositionByContext = L13_1
L13_1 = RegisterCommand
L14_1 = "hud"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if 0 == A0_2 then
    return
  end
  L2_2 = A1_2[1]
  if not L2_2 then
    L2_2 = "left"
  end
  if "test" == L2_2 then
    L3_2 = GetPlayerName
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = SetPlayerHUDPosition
    L5_2 = A0_2
    L6_2 = "left"
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 2000
    L4_2(L5_2)
    L4_2 = SetPlayerHUDPosition
    L5_2 = A0_2
    L6_2 = "center"
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 2000
    L4_2(L5_2)
    L4_2 = SetPlayerHUDPosition
    L5_2 = A0_2
    L6_2 = "right"
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 2000
    L4_2(L5_2)
    L4_2 = SetPlayerHUDPosition
    L5_2 = A0_2
    L6_2 = "left"
    L4_2(L5_2, L6_2)
    return
  end
  if "reset" == L2_2 then
    L3_2 = SetPlayerHUDPosition
    L4_2 = A0_2
    L5_2 = "left"
    L3_2(L4_2, L5_2)
    return
  end
  if "left" == L2_2 or "center" == L2_2 or "right" == L2_2 then
    L3_2 = SetPlayerHUDPosition
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
  end
end
L16_1 = false
L13_1(L14_1, L15_1, L16_1)
L13_1 = RegisterCommand
L14_1 = "hudleft"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0 == A0_2 then
    L2_2 = SetAllPlayersHUDPosition
    L3_2 = "left"
    L2_2(L3_2)
  else
    L2_2 = SetPlayerHUDPosition
    L3_2 = A0_2
    L4_2 = "left"
    L2_2(L3_2, L4_2)
  end
end
L16_1 = false
L13_1(L14_1, L15_1, L16_1)
L13_1 = RegisterCommand
L14_1 = "hudcenter"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0 == A0_2 then
    L2_2 = SetAllPlayersHUDPosition
    L3_2 = "center"
    L2_2(L3_2)
  else
    L2_2 = SetPlayerHUDPosition
    L3_2 = A0_2
    L4_2 = "center"
    L2_2(L3_2, L4_2)
  end
end
L16_1 = false
L13_1(L14_1, L15_1, L16_1)
L13_1 = RegisterCommand
L14_1 = "hudright"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0 == A0_2 then
    L2_2 = SetAllPlayersHUDPosition
    L3_2 = "right"
    L2_2(L3_2)
  else
    L2_2 = SetPlayerHUDPosition
    L3_2 = A0_2
    L4_2 = "right"
    L2_2(L3_2, L4_2)
  end
end
L16_1 = false
L13_1(L14_1, L15_1, L16_1)
L13_1 = RegisterCommand
L14_1 = "hudtest"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0 == A0_2 then
    L2_2 = SetAllPlayersHUDPosition
    L3_2 = "left"
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 2000
    L2_2(L3_2)
    L2_2 = SetAllPlayersHUDPosition
    L3_2 = "center"
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 2000
    L2_2(L3_2)
    L2_2 = SetAllPlayersHUDPosition
    L3_2 = "right"
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 2000
    L2_2(L3_2)
    L2_2 = SetAllPlayersHUDPosition
    L3_2 = "left"
    L2_2(L3_2)
  else
    L2_2 = GetPlayerName
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetPlayerHUDPosition
    L4_2 = A0_2
    L5_2 = "left"
    L3_2(L4_2, L5_2)
    L3_2 = Wait
    L4_2 = 2000
    L3_2(L4_2)
    L3_2 = SetPlayerHUDPosition
    L4_2 = A0_2
    L5_2 = "center"
    L3_2(L4_2, L5_2)
    L3_2 = Wait
    L4_2 = 2000
    L3_2(L4_2)
    L3_2 = SetPlayerHUDPosition
    L4_2 = A0_2
    L5_2 = "right"
    L3_2(L4_2, L5_2)
    L3_2 = Wait
    L4_2 = 2000
    L3_2(L4_2)
    L3_2 = SetPlayerHUDPosition
    L4_2 = A0_2
    L5_2 = "left"
    L3_2(L4_2, L5_2)
  end
end
L16_1 = false
L13_1(L14_1, L15_1, L16_1)
L13_1 = RegisterNetEvent
L14_1 = "striano_missions:requestHUDPosition"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L11_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 and ("left" == A0_2 or "center" == A0_2 or "right" == A0_2) then
    L2_2 = SetPlayerHUDPosition
    L3_2 = L1_2
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = AddEventHandler
L14_1 = "playerDropped"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = players
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = print
    L3_2 = "[SOD DUSKFALLS] %s[%s] uscito: %s."
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = GetPlayerName
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L6_2 = L1_2 or L6_2
    if not L1_2 then
      L6_2 = "?"
    end
    L7_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = players
    L2_2[L1_2] = nil
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "countdowndusk"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "Tempo rimanente Duskfalls: "
  L2_2 = L7_1
  L3_2 = "s"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L0_2(L1_2)
end
L13_1(L14_1, L15_1)
L13_1 = 1500
L14_1 = 2500
L15_1 = 1000
L16_1 = {}
L17_1 = {}
function L18_1()
  local L0_2, L1_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = 0
  end
  return L0_2
end
L19_1 = RegisterNetEvent
L20_1 = "sod:reveal:ping"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = L18_1
  L2_2 = L2_2()
  L3_2 = L17_1
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = 0
  end
  if L2_2 < L3_2 then
    return
  end
  L3_2 = L17_1
  L4_2 = L2_2 + 200
  L3_2[L1_2] = L4_2
  if "shoot" == A0_2 then
    L3_2 = L14_1
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = L13_1
  ::lbl_22::
  L4_2 = L16_1
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L16_1
  L6_2 = L6_2[L1_2]
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = L2_2 + L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2[L1_2] = L5_2
end
L19_1(L20_1, L21_1)
L19_1 = RegisterServerEvent
L20_1 = "INIZIADUSK"
L19_1(L20_1)
L19_1 = AddEventHandler
L20_1 = "INIZIADUSK"
function L21_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L8_1
  if L0_2 then
    L0_2 = print
    L1_2 = "Il match sembra gi\195\160 attivo."
    L0_2(L1_2)
    return
  end
  L0_2 = players
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_map
    L1_2 = L0_2
    L0_2 = L0_2.addNotification
    L2_2 = "DUSKFALLS: Not enought players to start!"
    L3_2 = 10000
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = TriggerClientEvent
    L1_2 = "resetDuskfalls"
    L2_2 = -1
    L0_2(L1_2, L2_2)
    L0_2 = print
    L1_2 = "Non ci sono partecipanti per iniziare Duskfalls."
    L0_2(L1_2)
    L0_2 = {}
    players = L0_2
    return
  end
  L0_2 = math
  L0_2 = L0_2.randomseed
  L1_2 = os
  L1_2 = L1_2.time
  L1_2, L2_2, L3_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L6_1
  L7_1 = L0_2
  L0_2 = true
  L8_1 = L0_2
  L0_2 = L1_1
  L1_2 = "Match avviato. Durata %ds"
  L2_2 = L6_1
  L0_2(L1_2, L2_2)
  L0_2 = TriggerToPartecipanti
  L1_2 = "INIZIADUSK"
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_map
  L1_2 = L0_2
  L0_2 = L0_2.addNotification
  L2_2 = "DUSKFALLS: Sacrament starts."
  L3_2 = 10000
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3
    L0_3 = L6_1
    L0_3 = L0_3 - 10
    L1_3 = 600
    L2_3 = 420
    L3_3 = 300
    L4_3 = false
    L5_3 = false
    L6_3 = false
    L7_3 = false
    L8_3 = L6_1
    L9_3 = -2
    while true do
      L10_3 = L8_1
      if not L10_3 then
        break
      end
      L10_3 = L7_1
      if not (L9_3 < L10_3) then
        break
      end
      L10_3 = Wait
      L11_3 = 1000
      L10_3(L11_3)
      L10_3 = L7_1
      L10_3 = L10_3 - 1
      L7_1 = L10_3
      L10_3 = L7_1
      if L9_3 > L10_3 then
        L10_3 = 0
        L7_1 = L10_3
      end
      if not L4_3 and L0_3 < L8_3 then
        L10_3 = L7_1
        if L0_3 >= L10_3 then
          L4_3 = true
          L10_3 = L1_1
          L11_3 = "Match iniziato da ~10 secondi."
          L10_3(L11_3)
        end
      end
      if not L5_3 and L1_3 < L8_3 then
        L10_3 = L7_1
        if L1_3 >= L10_3 then
          L5_3 = true
          L10_3 = L1_1
          L11_3 = "Evento @10 minuti rimanenti."
          L10_3(L11_3)
        end
      end
      if not L6_3 and L2_3 < L8_3 then
        L10_3 = L7_1
        if L2_3 >= L10_3 then
          L6_3 = true
          L10_3 = L1_1
          L11_3 = "FASE ANIMA PERDUTA."
          L10_3(L11_3)
          L10_3 = TriggerToPartecipanti
          L11_3 = "sonsofdecay:safeTightenPhase"
          L10_3(L11_3)
        end
      end
      if not L7_3 and L3_3 < L8_3 then
        L10_3 = L7_1
        if L3_3 >= L10_3 then
          L7_3 = true
          L10_3 = L1_1
          L11_3 = "Avvio Soul Trial"
          L10_3(L11_3)
          L10_3 = TriggerEvent
          L11_3 = "sod:soul:startTrial"
          L10_3(L11_3)
        end
      end
      L8_3 = L7_1
    end
    L10_3 = L8_1
    if L10_3 then
      L10_3 = false
      L8_1 = L10_3
      L10_3 = ComputeWinner
      L11_3 = players
      L10_3, L11_3 = L10_3(L11_3)
      if L10_3 then
        L12_3 = print
        L13_3 = "\240\159\143\134 Winner: ID %s (Deposited=%d, Kills=%d, Death=%d)"
        L14_3 = L13_3
        L13_3 = L13_3.format
        L15_3 = L10_3
        L16_3 = L11_3[1]
        L16_3 = L16_3.deposited
        L17_3 = L11_3[1]
        L17_3 = L17_3.kills
        L18_3 = L11_3[1]
        L18_3 = L18_3.death
        L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
      else
        L12_3 = print
        L13_3 = "No winner detected."
        L12_3(L13_3)
      end
      L12_3 = "Unknow"
      L13_3 = {}
      L14_3 = print
      L15_3 = "=== RANKED ==="
      L14_3(L15_3)
      L14_3 = ipairs
      L15_3 = L11_3
      L14_3, L15_3, L16_3, L17_3 = L14_3(L15_3)
      for L18_3, L19_3 in L14_3, L15_3, L16_3, L17_3 do
        L20_3 = "[%d] ID %s (%s) | Ash=%d | K=%d | D=%d"
        L21_3 = L20_3
        L20_3 = L20_3.format
        L22_3 = L18_3
        L23_3 = GetPlayerName
        L24_3 = L19_3.src
        L23_3 = L23_3(L24_3)
        L24_3 = L19_3.src
        L25_3 = L19_3.deposited
        L26_3 = L19_3.kills
        L27_3 = L19_3.death
        L20_3 = L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
        L21_3 = print
        L22_3 = L20_3
        L21_3(L22_3)
        L21_3 = table
        L21_3 = L21_3.insert
        L22_3 = L13_3
        L23_3 = L20_3
        L21_3(L22_3, L23_3)
        if 1 == L18_3 then
          L21_3 = GetPlayerName
          L22_3 = L19_3.src
          L21_3 = L21_3(L22_3)
          L12_3 = L21_3
        end
      end
      Classifica = L11_3
      L14_3 = TriggerToPartecipanti
      L15_3 = "VincitoreDusk"
      L16_3 = L12_3
      L17_3 = L13_3
      L14_3(L15_3, L16_3, L17_3)
      L14_3 = TriggerToPartecipanti
      L15_3 = "FINEDUSKTIMER"
      L14_3(L15_3)
      L14_3 = nil
      L15_3 = false
      L16_3 = 0
      L4_1 = L16_3
      L3_1 = L15_3
      L2_1 = L14_3
      L14_3 = 0
      L7_1 = L14_3
      L14_3 = {}
      players = L14_3
    end
  end
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = L8_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = L15_1
      L0_3(L1_3)
      L0_3 = L18_1
      L0_3 = L0_3()
      L1_3 = {}
      L2_3 = pairs
      L3_3 = L16_1
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        if L7_3 > L0_3 then
          L8_3 = #L1_3
          L8_3 = L8_3 + 1
          L1_3[L8_3] = L6_3
        else
          L8_3 = L16_1
          L8_3[L6_3] = nil
        end
      end
      L2_3 = #L1_3
      if L2_3 > 0 then
        L2_3 = TriggerClientEvent
        L3_3 = "sod:reveal:update"
        L4_3 = -1
        L5_3 = L1_3
        L2_3(L3_3, L4_3, L5_3)
      else
        L2_3 = TriggerClientEvent
        L3_3 = "sod:reveal:update"
        L4_3 = -1
        L5_3 = {}
        L2_3(L3_3, L4_3, L5_3)
      end
    end
  end
  L0_2(L1_2)
end
L19_1(L20_1, L21_1)
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = {}
    L9_2.src = L6_2
    L10_2 = tonumber
    L11_2 = L7_2.deposited
    if not L11_2 then
      L11_2 = 0
    end
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = 0
    end
    L9_2.deposited = L10_2
    L10_2 = tonumber
    L11_2 = L7_2.kills
    if not L11_2 then
      L11_2 = 0
    end
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = 0
    end
    L9_2.kills = L10_2
    L10_2 = tonumber
    L11_2 = L7_2.death
    if not L11_2 then
      L11_2 = 0
    end
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = 0
    end
    L9_2.death = L10_2
    L1_2[L8_2] = L9_2
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.deposited
    L3_3 = A1_3.deposited
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.deposited
      L3_3 = A1_3.deposited
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L2_3 = A0_3.kills
    L3_3 = A1_3.kills
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.kills
      L3_3 = A1_3.kills
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L2_3 = A0_3.death
    L3_3 = A1_3.death
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = L1_2[1]
  if L2_2 then
    L2_2 = L1_2[1]
    L2_2 = L2_2.src
    if L2_2 then
      goto lbl_60
    end
  end
  L2_2 = nil
  ::lbl_60::
  L3_2 = L2_2
  L4_2 = L1_2
  return L3_2, L4_2
end
ComputeWinner = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = GetPlayerName
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = nil ~= L1_2
  end
  return L1_2
end
L20_1 = RegisterNetEvent
L21_1 = "duskfalls:kills"
function L22_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = source
  L6_2 = L12_1
  L7_2 = L5_2
  L6_2(L7_2)
  if A0_2 then
    L6_2 = tonumber
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_13
      A0_2 = L6_2 or A0_2
    end
  end
  A0_2 = nil
  ::lbl_13::
  if A1_2 then
    L6_2 = tonumber
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_21
      A1_2 = L6_2 or A1_2
    end
  end
  A1_2 = nil
  ::lbl_21::
  L6_2 = not A0_2 or A0_2 == L5_2
  L7_2 = players
  L7_2 = L7_2[L5_2]
  L8_2 = players
  L8_2 = L8_2[L5_2]
  L8_2 = L8_2.death
  if not L8_2 then
    L8_2 = 0
  end
  L8_2 = L8_2 + 1
  L7_2.death = L8_2
  if not L6_2 then
    L7_2 = L12_1
    L8_2 = A0_2
    L7_2(L8_2)
    L7_2 = players
    L7_2 = L7_2[A0_2]
    L8_2 = players
    L8_2 = L8_2[A0_2]
    L8_2 = L8_2.kills
    if not L8_2 then
      L8_2 = 0
    end
    L8_2 = L8_2 + 1
    L7_2.kills = L8_2
    if A4_2 then
      L7_2 = players
      L7_2 = L7_2[A0_2]
      L8_2 = players
      L8_2 = L8_2[A0_2]
      L8_2 = L8_2.hs
      if not L8_2 then
        L8_2 = 0
      end
      L8_2 = L8_2 + 1
      L7_2.hs = L8_2
    end
    L7_2 = TriggerClientEvent
    L8_2 = "RicevoCenereKiller"
    L9_2 = A0_2
    L10_2 = A2_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = GetWeaponName
  if L7_2 then
    L7_2 = GetWeaponName
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_94
    end
  end
  L7_2 = tostring
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  ::lbl_94::
  if L7_2 then
    L9_2 = L7_2
    L8_2 = L7_2.find
    L10_2 = "^Sconosciuta"
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      goto lbl_110
    end
  end
  L8_2 = type
  L9_2 = A3_2
  L8_2 = L8_2(L9_2)
  if "string" == L8_2 then
    L8_2 = A3_2
    L9_2 = " (hint)"
    L8_2 = L8_2 .. L9_2
    L7_2 = L8_2
  end
  ::lbl_110::
  if A4_2 then
    L8_2 = L7_2 or L8_2
    if not L7_2 then
      L8_2 = "ARMA"
    end
    L9_2 = " (HS)"
    L8_2 = L8_2 .. L9_2
    L7_2 = L8_2
  end
  if L6_2 then
    L8_2 = exports
    L8_2 = L8_2.striano_map
    L9_2 = L8_2
    L8_2 = L8_2.addKill
    L10_2 = L5_2
    L11_2 = L5_2
    L12_2 = "SUICIDE"
    L8_2(L9_2, L10_2, L11_2, L12_2)
  else
    L8_2 = exports
    L8_2 = L8_2.striano_map
    L9_2 = L8_2
    L8_2 = L8_2.addKill
    L10_2 = A0_2
    L11_2 = L5_2
    L12_2 = L7_2 or L12_2
    if not L7_2 then
      L12_2 = "NO WEAPON"
    end
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L8_2 = TriggerClientEvent
  L9_2 = "duskfalls:statsSync"
  L10_2 = L5_2
  L11_2 = {}
  L12_2 = players
  L12_2 = L12_2[L5_2]
  L12_2 = L12_2.kills
  if not L12_2 then
    L12_2 = 0
  end
  L11_2.kills = L12_2
  L12_2 = players
  L12_2 = L12_2[L5_2]
  L12_2 = L12_2.death
  if not L12_2 then
    L12_2 = 0
  end
  L11_2.death = L12_2
  L8_2(L9_2, L10_2, L11_2)
  if not L6_2 then
    L8_2 = L19_1
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = TriggerClientEvent
      L9_2 = "duskfalls:statsSync"
      L10_2 = A0_2
      L11_2 = {}
      L12_2 = players
      L12_2 = L12_2[A0_2]
      L12_2 = L12_2.kills
      if not L12_2 then
        L12_2 = 0
      end
      L11_2.kills = L12_2
      L12_2 = players
      L12_2 = L12_2[A0_2]
      L12_2 = L12_2.death
      if not L12_2 then
        L12_2 = 0
      end
      L11_2.death = L12_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  L8_2 = L3_1
  if L8_2 then
    L8_2 = L2_1
    if L5_2 == L8_2 then
      L8_2 = false
      L3_1 = L8_2
      L8_2 = TriggerClientEvent
      L9_2 = "sod:soul:setBoost"
      L10_2 = L2_1
      L11_2 = false
      L12_2 = 1.0
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = pairs
      L9_2 = players
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.partecipante
        if L14_2 then
          L14_2 = TriggerClientEvent
          L15_2 = "sod:soul:trialFailed"
          L16_2 = L12_2
          L17_2 = L2_1
          L18_2 = A0_2 or L18_2
          if L6_2 or not A0_2 then
            L18_2 = nil
          end
          L14_2(L15_2, L16_2, L17_2, L18_2)
        end
      end
      L8_2 = nil
      L2_1 = L8_2
    end
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterServerEvent
L21_1 = "DepositaDusk"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "DepositaDusk"
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L2_2
  end
  L4_2 = L12_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0
  end
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L5_2 = L6_2
  if L5_2 <= 0 then
    return
  end
  L6_2 = L4_2.deposited
  L6_2 = L6_2 + L5_2
  L4_2.deposited = L6_2
  L6_2 = print
  L7_2 = "Il giocatore ID %s ha depositato %d ceneri. Totale=%d"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = L4_2.deposited
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "leavePartecipante"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "leavePartecipante"
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_2
  end
  L3_2 = players
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = players
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.partecipante
    if L3_2 then
      L3_2 = players
      L3_2[L2_2] = nil
      L3_2 = print
      L4_2 = "\226\157\140 Giocatore %s \195\168 stato rimosso dai partecipanti"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = L2_2
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "addPartecipante"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "addPartecipante"
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_2
  end
  L3_2 = L12_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.partecipante
  if L4_2 then
    L4_2 = L3_2.partecipante
    if nil ~= L4_2 then
      goto lbl_40
    end
  end
  L3_2.partecipante = true
  L4_2 = print
  L5_2 = "\226\156\133 Giocatore %s \195\168 stato inserito come partecipante"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = exports
  L4_2 = L4_2.striano_map
  L5_2 = L4_2
  L4_2 = L4_2.addNotification
  L6_2 = GetPlayerName
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = " joined DUSKFALLS which starts in "
  L8_2 = L10_1
  L9_2 = "s. (Subscribers: "
  L10_2 = players
  L10_2 = #L10_2
  L11_2 = ")"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2 = 30000
  L4_2(L5_2, L6_2, L7_2)
  goto lbl_46
  ::lbl_40::
  L4_2 = print
  L5_2 = "\226\154\160\239\184\143 Giocatore %s era gi\195\160 partecipante"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  ::lbl_46::
  L4_2 = L10_1
  L5_2 = L9_1
  if L4_2 == L5_2 then
    L4_2 = L10_1
    L4_2 = L4_2 - 1
    L10_1 = L4_2
    L4_2 = exports
    L4_2 = L4_2.striano_map
    L5_2 = L4_2
    L4_2 = L4_2.addNotification
    L6_2 = "DUSKFALLS: The sacrament begins automatically between "
    L7_2 = L10_1
    L8_2 = " secs."
    L6_2 = L6_2 .. L7_2 .. L8_2
    L7_2 = 30000
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3
      while true do
        L0_3 = L10_1
        if not (L0_3 > 0) then
          break
        end
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = L10_1
        L0_3 = L0_3 - 1
        L10_1 = L0_3
        L0_3 = L10_1
        if 0 == L0_3 then
          L0_3 = L1_1
          L1_3 = "AVVIO DI DUSKFALLS IN AUTOMATICO!"
          L0_3(L1_3)
          L0_3 = L9_1
          L10_1 = L0_3
          L0_3 = TriggerEvent
          L1_3 = "INIZIADUSK"
          L0_3(L1_3)
          return
        end
      end
    end
    L4_2(L5_2)
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "sod:soul:startTrial"
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L3_1
  if L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = players
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.partecipante
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = #L1_2
  if 0 == L2_2 then
    return
  end
  if A0_2 then
    L2_2 = players
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = players
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.partecipante
      if L2_2 then
        L2_1 = A0_2
    end
  end
  else
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1
    L4_2 = #L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L1_2[L2_2]
    L2_1 = L2_2
  end
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = L5_1
  L2_2 = L2_2 + L3_2
  L4_1 = L2_2
  L2_2 = true
  L3_1 = L2_2
  L2_2 = pairs
  L3_2 = players
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.partecipante
    if L8_2 then
      L8_2 = TriggerClientEvent
      L9_2 = "sod:soul:trialBegin"
      L10_2 = L6_2
      L11_2 = L2_1
      L12_2 = L5_1
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "sod:soul:setBoost"
  L4_2 = L2_1
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = L3_1
      if not L0_3 then
        break
      end
      L0_3 = os
      L0_3 = L0_3.time
      L0_3 = L0_3()
      L1_3 = L4_1
      if L0_3 >= L1_3 then
        L0_3 = false
        L3_1 = L0_3
        L0_3 = TriggerClientEvent
        L1_3 = "sod:soul:setBoost"
        L2_3 = L2_1
        L3_3 = false
        L4_3 = 1.0
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = pairs
        L1_3 = players
        L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
        for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
          L6_3 = L5_3.partecipante
          if L6_3 then
            L6_3 = TriggerClientEvent
            L7_3 = "sod:soul:trialSuccess"
            L8_3 = L4_3
            L9_3 = L2_1
            L6_3(L7_3, L8_3, L9_3)
          end
        end
        L0_3 = nil
        L2_1 = L0_3
        break
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
end
L20_1(L21_1, L22_1)
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = math
  L4_2 = L4_2.sqrt
  L5_2 = L2_2 * L2_2
  L6_2 = L3_2 * L3_2
  L5_2 = L5_2 + L6_2
  return L4_2(L5_2)
end
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = -1
  L3_2 = ipairs
  L4_2 = posSecolari
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L20_1
    L10_2 = A0_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L2_2 < L9_2 then
      L2_2 = L9_2
      L1_2 = L7_2
    end
  end
  L3_2 = L1_2
  L4_2 = posSecolari
  L4_2 = L4_2[L1_2]
  L5_2 = L2_2
  return L3_2, L4_2, L5_2
end
L22_1 = RegisterNetEvent
L23_1 = "BenedizioneFinale"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= L1_2 then
    return
  end
  L2_2 = GetPlayerPed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 or 0 == L2_2 then
    return
  end
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L21_1
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L7_2 = L3_2.x
  L8_2 = L5_2.x
  L7_2 = L7_2 - L8_2
  L8_2 = L3_2.y
  L9_2 = L5_2.y
  L8_2 = L8_2 - L9_2
  L9_2 = L3_2.z
  L10_2 = L5_2.z
  L9_2 = L9_2 - L10_2
  L10_2 = math
  L10_2 = L10_2.sqrt
  L11_2 = L7_2 * L7_2
  L12_2 = L8_2 * L8_2
  L11_2 = L11_2 + L12_2
  L12_2 = L9_2 * L9_2
  L11_2 = L11_2 + L12_2
  L10_2 = L10_2(L11_2)
  if L10_2 <= 5.0 then
    L11_2 = print
    L12_2 = "\240\159\140\145 Il giocatore %s (%s) ha consegnato l'Anima all'Albero #%d!"
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = L1_2
    L15_2 = GetPlayerName
    L16_2 = L1_2
    L15_2 = L15_2(L16_2)
    L16_2 = L4_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L11_2 = L12_1
    L12_2 = L1_2
    L11_2 = L11_2(L12_2)
    L12_2 = L11_2.deposited
    L12_2 = L12_2 + 1000
    L11_2.deposited = L12_2
    L12_2 = false
    L8_1 = L12_2
    L12_2 = Wait
    L13_2 = 25
    L12_2(L13_2)
    L12_2 = ComputeWinner
    L13_2 = players
    L12_2, L13_2 = L12_2(L13_2)
    L14_2 = "Sconosciuto"
    L15_2 = {}
    L16_2 = ipairs
    L17_2 = L13_2
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
    for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
      L22_2 = "[%d] ID %s (%s) | Cenere Consolidata=%d | K=%d | D=%d"
      L23_2 = L22_2
      L22_2 = L22_2.format
      L24_2 = L20_2
      L25_2 = GetPlayerName
      L26_2 = L21_2.src
      L25_2 = L25_2(L26_2)
      L26_2 = L21_2.src
      L27_2 = L21_2.deposited
      L28_2 = L21_2.kills
      L29_2 = L21_2.death
      L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L23_2 = print
      L24_2 = L22_2
      L23_2(L24_2)
      L23_2 = table
      L23_2 = L23_2.insert
      L24_2 = L15_2
      L25_2 = L22_2
      L23_2(L24_2, L25_2)
      if 1 == L20_2 then
        L23_2 = GetPlayerName
        L24_2 = L21_2.src
        L23_2 = L23_2(L24_2)
        L14_2 = L23_2
      end
    end
    L16_2 = TriggerToPartecipanti
    L17_2 = "VincitoreDusk"
    L18_2 = L14_2
    L19_2 = L15_2
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = TriggerToPartecipanti
    L17_2 = "FINEDUSKTIMER"
    L16_2(L17_2)
  else
    L11_2 = print
    L12_2 = "%s (%s) voleva consegnare l'Anima all'albero ma non era quello pi\195\185 lontano."
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = L1_2
    L15_2 = GetPlayerName
    L16_2 = L1_2
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L15_2(L16_2)
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  end
end
L22_1(L23_1, L24_1)
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = pairs
  L3_2 = players
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.partecipante
    if L8_2 then
      L8_2 = TriggerClientEvent
      L9_2 = "sod:guardian:mark"
      L10_2 = L6_2
      L11_2 = A0_2
      L12_2 = A1_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
    else
      L8_2 = print
      L9_2 = "Il giocatore selezionato non era un partecipante per essere impostato come un nemico pubblico."
      L8_2(L9_2)
    end
  end
end
NemicoPubblico = L22_1
L22_1 = RegisterNetEvent
L23_1 = "setNemicoPubblico"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NemicoPubblico
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = {}
TRAPS = L22_1
L22_1 = RegisterNetEvent
L23_1 = "addTrap"
function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = {}
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L5_2.id = L6_2
  L5_2.x = A2_2
  L5_2.y = A3_2
  L5_2.z = A4_2
  L5_2.tipo = A1_2
  L5_2.owner = A0_2
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = TRAPS
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = TriggerClientEvent
  L7_2 = "addClientTrap"
  L8_2 = -1
  L9_2 = TRAPS
  L6_2(L7_2, L8_2, L9_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "removeTrap"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = TRAPS
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = TRAPS
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = TriggerClientEvent
  L2_2 = "addClientTrap"
  L3_2 = -1
  L4_2 = TRAPS
  L1_2(L2_2, L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "dusk:addExplosion"
function L24_1(...)
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "dusk:addExplosion"
  L2_2 = -1
  L3_2 = ...
  L0_2(L1_2, L2_2, L3_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "sod:loadout:giveRandom"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = source
  L1_2 = GetPlayerPed
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 or 0 == L1_2 then
    return
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = Firearms
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = Firearms
  L3_2 = L3_2[L2_2]
  L4_2 = RemoveAllPedWeapons
  L5_2 = L1_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = GiveWeaponToPed
  L5_2 = L1_2
  L6_2 = L3_2
  L7_2 = 250
  L8_2 = false
  L9_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = SetCurrentPedWeapon
  L5_2 = L1_2
  L6_2 = L3_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerClientEvent
  L5_2 = "sod:loadout:enforce"
  L6_2 = L0_2
  L7_2 = {}
  L8_2 = L3_2
  L7_2[1] = L8_2
  L4_2(L5_2, L6_2, L7_2)
end
L22_1(L23_1, L24_1)
