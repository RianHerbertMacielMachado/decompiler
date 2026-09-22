local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = 10
    L2_2 = L2_2 ^ A1_2
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 * L2_2
    L4_2 = L4_2 + 0.5
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 / L2_2
    return L3_2
  else
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2 + 0.5
    return L2_2(L3_2)
  end
end
L1_1 = false
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Wait
  L1_2 = 5000
  L0_2(L1_2)
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsEntityVisible
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsPedHuman
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = exports
        L1_2 = L1_2.striano_core
        L2_2 = L1_2
        L1_2 = L1_2.gettutorial
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = IsPedFatallyInjured
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if L1_2 then
            L1_2 = L1_1
            if not L1_2 then
              L1_2 = true
              L1_1 = L1_2
              L1_2 = TriggerServerEvent
              L2_2 = "Immortale"
              L3_2 = GetPlayerServerId
              L4_2 = PlayerId
              L4_2, L5_2, L6_2, L7_2 = L4_2()
              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
              L4_2 = true
              L1_2(L2_2, L3_2, L4_2)
              L1_2 = GetPedSourceOfDeath
              L2_2 = L0_2
              L1_2 = L1_2(L2_2)
              L2_2 = GetPedCauseOfDeath
              L3_2 = L0_2
              L2_2 = L2_2(L3_2)
              L3_2 = NetworkGetPlayerIndexFromPed
              L4_2 = L1_2
              L3_2 = L3_2(L4_2)
              if L1_2 ~= L0_2 and L3_2 then
                L4_2 = NetworkIsPlayerActive
                L5_2 = L3_2
                L4_2 = L4_2(L5_2)
                if L4_2 then
                  L4_2 = PlayerKilledByPlayer
                  L5_2 = GetPlayerServerId
                  L6_2 = L3_2
                  L5_2 = L5_2(L6_2)
                  L6_2 = L3_2
                  L7_2 = L2_2
                  L4_2(L5_2, L6_2, L7_2)
              end
              else
                L4_2 = PlayerKilled
                L5_2 = L2_2
                L4_2(L5_2)
              end
            end
          else
            L1_2 = L1_1
            if L1_2 then
              L1_2 = false
              L1_1 = L1_2
              L1_2 = TriggerServerEvent
              L2_2 = "Immortale"
              L3_2 = GetPlayerServerId
              L4_2 = PlayerId
              L4_2, L5_2, L6_2, L7_2 = L4_2()
              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
              L4_2 = false
              L1_2(L2_2, L3_2, L4_2)
            end
          end
        end
      end
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L2_1(L3_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = NetworkResurrectLocalPlayer
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2
  L8_2 = true
  L9_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = SetEntityCoordsNoOffset
  L4_2 = L0_2
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L11_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = SetEntityHeading
  L4_2 = L0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "...[RINASCO DA INVISIBILE]"
  L3_2(L4_2)
end
Rinasci = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if not (A0_2 and A1_2) or -1 == A0_2 or -1 == A1_2 then
    L4_2 = print
    L5_2 = "[PlayerKilledByPlayer] invalid killer ids"
    L6_2 = A0_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetPlayerPed
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = DoesEntityExist
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = print
    L7_2 = "[PlayerKilledByPlayer] killer ped does not exist"
    L6_2(L7_2)
    return
  end
  L6_2 = GetEntityCoords
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2 - L6_2
  L7_2 = #L7_2
  L8_2 = {}
  L9_2 = {}
  L10_2 = L0_1
  L11_2 = L4_2.x
  L12_2 = 1
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.x = L10_2
  L10_2 = L0_1
  L11_2 = L4_2.y
  L12_2 = 1
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.y = L10_2
  L10_2 = L0_1
  L11_2 = L4_2.z
  L12_2 = 1
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.z = L10_2
  L8_2.victimCoords = L9_2
  L9_2 = {}
  L10_2 = L0_1
  L11_2 = L6_2.x
  L12_2 = 1
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.x = L10_2
  L10_2 = L0_1
  L11_2 = L6_2.y
  L12_2 = 1
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.y = L10_2
  L10_2 = L0_1
  L11_2 = L6_2.z
  L12_2 = 1
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.z = L10_2
  L8_2.killerCoords = L9_2
  L8_2.killedByPlayer = true
  L8_2.deathCause = A2_2
  L9_2 = L0_1
  L10_2 = L7_2
  L11_2 = 1
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.distance = L9_2
  L8_2.killerServerId = A0_2
  L8_2.killerClientId = A1_2
  L9_2 = print
  L10_2 = "SONO STATO UCCISO DA ID: "
  L11_2 = tostring
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L10_2 = L10_2 .. L11_2
  L9_2(L10_2)
  L9_2 = TriggerServerEvent
  L10_2 = "legacy:ucciso"
  L11_2 = GetPlayerServerId
  L12_2 = PlayerId
  L12_2, L13_2 = L12_2()
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = A0_2
  L13_2 = A2_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = IsEntityVisible
  L10_2 = L3_2
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = TriggerEvent
    L10_2 = "esx:onPlayerDeath"
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  else
    L9_2 = Rinasci
    L9_2()
  end
end
PlayerKilledByPlayer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L5_2 = L0_1
  L6_2 = L2_2.x
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.x = L5_2
  L5_2 = L0_1
  L6_2 = L2_2.y
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.y = L5_2
  L5_2 = L0_1
  L6_2 = L2_2.z
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.z = L5_2
  L3_2.victimCoords = L4_2
  L3_2.killedByPlayer = false
  L3_2.deathCause = A0_2
  L4_2 = IsEntityVisible
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = TriggerEvent
    L5_2 = "esx:onPlayerDeath"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = Rinasci
    L4_2()
  end
end
PlayerKilled = L2_1
