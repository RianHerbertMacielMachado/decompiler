local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
OgniDieciMin = 0
timerPEN = 0
ScatolaPresa = 0
PlayerPEN = 0
timerScatola = 0
tipoMissione = 0
timerCorsa = 0
PartecipantiGara = 0
CashBoxEvent = false
AttesaEvento = false
CashBoxCoords = nil
GaraCoords = nil
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = #L0_2
    L7_2 = L7_2 + 1
    L8_2 = tonumber
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L0_2[L7_2] = L8_2
  end
  return L0_2
end
GetPlayersNative = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ScatolaPresa
  if 0 == L1_2 then
    L1_2 = timerScatola
    if 0 == L1_2 then
      L1_2 = PartecipantiGara
      if 0 == L1_2 then
        L1_2 = AttesaEvento
        if not L1_2 then
          L1_2 = timerCorsa
          if 0 == L1_2 then
            L1_2 = CashBoxEvent
            if not L1_2 then
              timerPEN = 0
              if nil == A0_2 then
                L1_2 = math
                L1_2 = L1_2.random
                L2_2 = 1
                L3_2 = 2
                L1_2 = L1_2(L2_2, L3_2)
                tipoMissione = L1_2
              else
                L1_2 = tonumber
                L2_2 = A0_2
                L1_2 = L1_2(L2_2)
                tipoMissione = L1_2
              end
              AttesaEvento = true
              L1_2 = TriggerClientEvent
              L2_2 = "striano_pen1:AvvisoGiocatori"
              L3_2 = -1
              L1_2(L2_2, L3_2)
              L1_2 = Wait
              L2_2 = 30000
              L1_2(L2_2)
              AttesaEvento = false
              L1_2 = tipoMissione
              if 1 == L1_2 then
                L1_2 = math
                L1_2 = L1_2.random
                L2_2 = 1
                L3_2 = PositionsPen
                L4_2 = tipoMissione
                L3_2 = L3_2[L4_2]
                L3_2 = L3_2.posPrendi
                L3_2 = #L3_2
                L1_2 = L1_2(L2_2, L3_2)
                L2_2 = math
                L2_2 = L2_2.random
                L3_2 = 1
                L4_2 = PositionsPen
                L5_2 = tipoMissione
                L4_2 = L4_2[L5_2]
                L4_2 = L4_2.posConsegna
                L4_2 = #L4_2
                L2_2 = L2_2(L3_2, L4_2)
                L3_2 = TriggerClientEvent
                L4_2 = "striano_pen1:AvviaMissione"
                L5_2 = -1
                L6_2 = PositionsPen
                L7_2 = tipoMissione
                L6_2 = L6_2[L7_2]
                L6_2 = L6_2.posPrendi
                L6_2 = L6_2[L1_2]
                L6_2 = L6_2.pos
                L7_2 = PositionsPen
                L8_2 = tipoMissione
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.posConsegna
                L7_2 = L7_2[L2_2]
                L7_2 = L7_2.pos
                L3_2(L4_2, L5_2, L6_2, L7_2)
                L3_2 = PositionsPen
                L4_2 = tipoMissione
                L3_2 = L3_2[L4_2]
                L3_2 = L3_2.posPrendi
                L3_2 = L3_2[L1_2]
                L3_2 = L3_2.pos
                CashBoxCoords = L3_2
                CashBoxEvent = true
              else
                L1_2 = tipoMissione
                if 2 == L1_2 then
                  L1_2 = TriggerClientEvent
                  L2_2 = "striano_pen1:fineEvento"
                  L3_2 = -1
                  L4_2 = 0
                  L1_2(L2_2, L3_2, L4_2)
                  L1_2 = math
                  L1_2 = L1_2.random
                  L2_2 = 1
                  L3_2 = PositionsPen
                  L4_2 = tipoMissione
                  L3_2 = L3_2[L4_2]
                  L3_2 = L3_2.ListaGare
                  L3_2 = #L3_2
                  L1_2 = L1_2(L2_2, L3_2)
                  L2_2 = TriggerClientEvent
                  L3_2 = "striano_pen1:PreparaCorsa"
                  L4_2 = -1
                  L5_2 = PositionsPen
                  L6_2 = tipoMissione
                  L5_2 = L5_2[L6_2]
                  L5_2 = L5_2.ListaGare
                  L5_2 = L5_2[L1_2]
                  L2_2(L3_2, L4_2, L5_2)
                  L2_2 = PositionsPen
                  L3_2 = tipoMissione
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2.ListaGare
                  L2_2 = L2_2[L1_2]
                  L2_2 = L2_2.startpos
                  GaraCoords = L2_2
                  L2_2 = timerCorsa
                  if 0 == L2_2 then
                    timerCorsa = 300
                  end
                  L2_2 = CreateThread
                  function L3_2()
                    local L0_3, L1_3, L2_3, L3_3, L4_3
                    while true do
                      L0_3 = Wait
                      L1_3 = 1000
                      L0_3(L1_3)
                      L0_3 = timerCorsa
                      if 0 == L0_3 then
                        L0_3 = TriggerClientEvent
                        L1_3 = "striano_pen1:AvviaCorsa"
                        L2_3 = -1
                        L3_3 = PositionsPen
                        L4_3 = tipoMissione
                        L3_3 = L3_3[L4_3]
                        L3_3 = L3_3.ListaGare
                        L4_3 = L1_2
                        L3_3 = L3_3[L4_3]
                        L0_3(L1_3, L2_3, L3_3)
                        return
                      end
                      L0_3 = timerCorsa
                      L0_3 = L0_3 - 1
                      timerCorsa = L0_3
                      L0_3 = TriggerClientEvent
                      L1_3 = "AggiornaTimerCorsa"
                      L2_3 = -1
                      L3_3 = timerCorsa
                      L0_3(L1_3, L2_3, L3_3)
                    end
                  end
                  L2_2(L3_2)
                else
                end
              end
            end
          end
        end
      end
    end
  end
end
StartPEN1 = L0_1
L0_1 = RegisterServerEvent
L1_1 = "striano_pen1:AssegnaCashbox"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "striano_pen1:AssegnaCashbox"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ScatolaPresa
  if 0 == L1_2 then
    L1_2 = timerScatola
    if 0 == L1_2 then
      timerScatola = 900
    end
    ScatolaPresa = A0_2
    L1_2 = TriggerClientEvent
    L2_2 = "striano_pen1:avviso"
    L3_2 = ScatolaPresa
    L4_2 = "CashBox get! Delivery in "
    L5_2 = timerScatola
    L6_2 = " sec! You will be visible on map every 30 sec."
    L4_2 = L4_2 .. L5_2 .. L6_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = TriggerClientEvent
    L2_2 = "striano_pen1:scatolaPresa"
    L3_2 = -1
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    CashBoxCoords = nil
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      while true do
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = ScatolaPresa
        if L0_3 > 0 then
          L0_3 = timerScatola
          if 0 == L0_3 then
            ScatolaPresa = 0
            timerScatola = 0
            return
          end
          L0_3 = timerScatola
          L0_3 = L0_3 - 1
          timerScatola = L0_3
          L0_3 = TriggerClientEvent
          L1_3 = "anim:cmd"
          L2_3 = ScatolaPresa
          L3_3 = "prova2 "
          L4_3 = timerScatola
          L5_3 = "s"
          L3_3 = L3_3 .. L4_3 .. L5_3
          L0_3(L1_3, L2_3, L3_3)
        else
          return
        end
      end
    end
    L1_2(L2_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "striano_pen1:updateCashBoxPos"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "striano_pen1:updateCashBoxPos"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  timerScatola = 900
  ScatolaPresa = 0
  L2_2 = TriggerClientEvent
  L3_2 = "striano_pen1:avviso"
  L4_2 = -1
  L5_2 = "PEN1 is dead! Timer updated to "
  L6_2 = timerScatola
  L7_2 = " sec."
  L5_2 = L5_2 .. L6_2 .. L7_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Wait
  L3_2 = 10000
  L2_2(L3_2)
  L2_2 = TriggerClientEvent
  L3_2 = "striano_pen1:AvviaMissione"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "striano_pen1:CashBoxConsegnata"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "striano_pen1:CashBoxConsegnata"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = TriggerClientEvent
  L2_2 = "striano_pen1:ricompensaCashBox"
  L3_2 = ScatolaPresa
  L1_2(L2_2, L3_2)
  L1_2 = TriggerClientEvent
  L2_2 = "striano_pen1:fineEvento"
  L3_2 = -1
  L4_2 = A0_2
  L5_2 = GetPlayerName
  L6_2 = ScatolaPresa
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  CashBoxCoords = nil
  ScatolaPresa = 0
  timerScatola = 0
  CashBoxEvent = false
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "striano_pen1:sharePos"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "striano_pen1:sharePos"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "striano_pen1:sharePos"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = false
L2_1 = 0
L3_1 = RegisterServerEvent
L4_1 = "ControlloPEN"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "ControlloPEN"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = false
  L2_2 = L0_1
  L2_2 = #L2_2
  if L2_2 > 0 then
    L2_2 = 1
    L3_2 = L0_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L0_1
      L6_2 = L6_2[L5_2]
      if L6_2 == A0_2 then
        L1_2 = true
        break
      end
    end
  end
  if not L1_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L0_1
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = Wait
    L3_2 = 9000
    L2_2(L3_2)
    L2_2 = GetPlayersNative
    L2_2 = L2_2()
    L2_2 = #L2_2
    if L2_2 < 2 then
      L3_2 = TriggerClientEvent
      L4_2 = "striano_pen1:avviso"
      L5_2 = -1
      L6_2 = "Not enough player to choose the PEN1."
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = ScegliPEN
      L4_2 = A0_2
      L3_2(L4_2)
    end
  end
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  if not L1_2 then
    L1_2 = true
    L1_1 = L1_2
    L1_2 = Wait
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 9000
    L4_2 = 18000
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = math
    L1_2 = L1_2.random
    L2_2 = 1
    L3_2 = L0_1
    L3_2 = #L3_2
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L2_1 = L2_2
    L2_2 = false
    L1_1 = L2_2
    L2_2 = {}
    L0_1 = L2_2
    L2_2 = print
    L3_2 = "Ho scelto il PEN1 "
    L4_2 = GetPlayerName
    L5_2 = L2_1
    L4_2 = L4_2(L5_2)
    L5_2 = "("
    L6_2 = L2_1
    L7_2 = ")"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2(L3_2)
    L2_2 = L2_1
    if L2_2 == A0_2 then
      L2_2 = TriggerClientEvent
      L3_2 = "striano_pen1:avviso"
      L4_2 = -1
      L5_2 = "Hey "
      L6_2 = GetPlayerName
      L7_2 = L2_1
      L6_2 = L6_2(L7_2)
      L7_2 = "! You are the Public Enemy N1! (PEN1) Survive for 6 min!"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = TriggerClientEvent
      L3_2 = "striano_pen1:avviso"
      L4_2 = -1
      L5_2 = GetPlayerName
      L6_2 = L2_1
      L5_2 = L5_2(L6_2)
      L6_2 = " it's the Public Enemy N1! (PEN1) find and kill in 6 min!"
      L5_2 = L5_2 .. L6_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
ScegliPEN = L3_1
L3_1 = AddEventHandler
L4_1 = "playerDropped"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = ScatolaPresa
  if L1_2 == L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "striano_pen1:avviso"
    L4_2 = -1
    L5_2 = "PEN1 disconnected, new box coming in 10 sec."
    L2_2(L3_2, L4_2, L5_2)
    CashBoxEvent = false
    CashBoxCoords = nil
    ScatolaPresa = 0
    L2_2 = Wait
    L3_2 = 10000
    L2_2(L3_2)
    L2_2 = StartPEN1
    L3_2 = 1
    L2_2(L3_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerEvent
L4_1 = "AggiornaPartecipanti"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "AggiornaPartecipanti"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  if 1 == A0_2 then
    L1_2 = PartecipantiGara
    L1_2 = L1_2 + 1
    PartecipantiGara = L1_2
  else
    L1_2 = PartecipantiGara
    L1_2 = L1_2 - 1
    PartecipantiGara = L1_2
  end
  L1_2 = PartecipantiGara
  if L1_2 < 0 then
    PartecipantiGara = 0
  end
  L1_2 = GetPlayersNative
  L1_2 = L1_2()
  L1_2 = #L1_2
  L2_2 = PartecipantiGara
  if L2_2 == L1_2 then
    timerCorsa = 10
    L2_2 = Wait
    L3_2 = 500
    L2_2(L3_2)
    timerCorsa = 10
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerEvent
L4_1 = "GaraFinita"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "GaraFinita"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  PartecipantiGara = 0
  GaraCoords = nil
  L2_2 = TriggerClientEvent
  L3_2 = "DicoVincitore"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = GetPlayerName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = PositionsPen
  L7_2 = L7_2.ListaGare
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2.startpos
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "clearpen1"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = exports
  L2_2 = L2_2.striano_admin
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = ResetAllPEN
    L2_2()
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "infopen1"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PenInfoFunc
  L3_2 = A0_2
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "infopen"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PenInfoFunc
  L3_2 = A0_2
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "peninfo"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PenInfoFunc
  L3_2 = A0_2
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = timerCorsa
  if L1_2 > 0 then
    L1_2 = PartecipantiGara
    if 0 == L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "striano_pen1:avviso"
      L3_2 = A0_2
      L4_2 = "Race start in "
      L5_2 = timerCorsa
      L6_2 = "s."
      L4_2 = L4_2 .. L5_2 .. L6_2
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = TriggerClientEvent
      L2_2 = "AggiornaPercorsoPen"
      L3_2 = A0_2
      L4_2 = GaraCoords
      L1_2(L2_2, L3_2, L4_2)
  end
  else
    L1_2 = PartecipantiGara
    if L1_2 > 0 then
      L1_2 = timerCorsa
      if L1_2 > 0 then
        L1_2 = TriggerClientEvent
        L2_2 = "striano_pen1:avviso"
        L3_2 = A0_2
        L4_2 = "There are "
        L5_2 = PartecipantiGara
        L6_2 = " racers and race starts in "
        L7_2 = timerCorsa
        L8_2 = "s."
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = TriggerClientEvent
        L2_2 = "AggiornaPercorsoPen"
        L3_2 = A0_2
        L4_2 = GaraCoords
        L1_2(L2_2, L3_2, L4_2)
    end
    else
      L1_2 = CashBoxEvent
      if L1_2 then
        L1_2 = ScatolaPresa
        if 0 == L1_2 then
          L1_2 = TriggerClientEvent
          L2_2 = "striano_pen1:avviso"
          L3_2 = A0_2
          L4_2 = "CashBox active!"
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = TriggerClientEvent
          L2_2 = "AggiornaPercorsoPen"
          L3_2 = A0_2
          L4_2 = CashBoxCoords
          L1_2(L2_2, L3_2, L4_2)
      end
      else
        L1_2 = CashBoxEvent
        if L1_2 then
          L1_2 = ScatolaPresa
          if L1_2 > 0 then
            L1_2 = TriggerClientEvent
            L2_2 = "striano_pen1:avviso"
            L3_2 = A0_2
            L4_2 = "CashBox delivering, kill the PEN1!"
            L1_2(L2_2, L3_2, L4_2)
        end
        else
          L1_2 = AttesaEvento
          if L1_2 then
            L1_2 = TriggerClientEvent
            L2_2 = "striano_pen1:avviso"
            L3_2 = A0_2
            L4_2 = "Random event coming in 30 sec."
            L1_2(L2_2, L3_2, L4_2)
          else
            L1_2 = TriggerClientEvent
            L2_2 = "striano_pen1:avviso"
            L3_2 = A0_2
            L4_2 = "No event active, check every 10 min."
            L1_2(L2_2, L3_2, L4_2)
          end
        end
      end
    end
  end
end
PenInfoFunc = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "DicoVincitore"
  L2_2 = -1
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  PartecipantiGara = 0
  L0_2 = TriggerClientEvent
  L1_2 = "striano_pen1:fineEvento"
  L2_2 = -1
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  ScatolaPresa = 0
  timerScatola = 0
  CashBoxEvent = false
end
ResetAllPEN = L3_1
L3_1 = RegisterCommand
L4_1 = "startpen1"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_admin
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = 1
    L3_2 = A1_2[1]
    if nil ~= L3_2 then
      L3_2 = tonumber
      L4_2 = A1_2[1]
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
    L3_2 = StartPEN1
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "anim:cmd"
    L4_2 = ScatolaPresa
    L5_2 = "prova2 No permission."
    L2_2(L3_2, L4_2, L5_2)
  end
end
L3_1(L4_1, L5_1)
