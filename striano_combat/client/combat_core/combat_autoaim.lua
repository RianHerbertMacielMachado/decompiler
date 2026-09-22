local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
currentTarget = nil
L0_1 = {}
targetsAround = L0_1
currentTargetIndex = 1
L0_1 = 420.0
L1_1 = 14.0
L2_1 = 220
L3_1 = 0.2
L4_1 = 0
function L5_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 - A0_2
  L2_2 = L2_2 % 360.0
  L3_2 = 180.0
  if L2_2 > L3_2 then
    L2_2 = L2_2 - 360.0
  end
  return L2_2
end
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = L7_1
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = 0.8
  if L6_2 < L7_2 then
    return A0_2
  end
  L6_2 = A3_2 * A2_2
  L7_2 = L5_1
  L8_2 = L5_2
  L9_2 = -L6_2
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L5_2 = L7_2
  L7_2 = L5_1
  L8_2 = A4_2 * A2_2
  L9_2 = 0.0
  L10_2 = 1.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L5_2 * L7_2
  L8_2 = A0_2 + L8_2
  L8_2 = L8_2 % 360.0
  return L8_2
end
L9_1 = TARGET_RANGE
if L9_1 then
  L9_1 = TARGET_RANGE
  L10_1 = TARGET_RANGE
  L9_1 = L9_1 * L10_1
  if L9_1 then
    goto lbl_26
  end
end
L9_1 = 100.0
::lbl_26::
L10_1 = 0.5
L11_1 = 550
L12_1 = 0
L13_1 = {}
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = L2_2 * L2_2
  L6_2 = L3_2 * L3_2
  L5_2 = L5_2 + L6_2
  L6_2 = L4_2 * L4_2
  L5_2 = L5_2 + L6_2
  return L5_2
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = IsPedDeadOrDying
  L2_2 = A0_2
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsEntityDead
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedFatallyInjured
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        goto lbl_32
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_32::
  L1_2 = GetEntityHealth
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 <= 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = IsPedInAnyVehicle
  L2_2 = A0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetEntityAlpha
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 254
  if L1_2 <= L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = ipairs
  L5_2 = GetActivePlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerPed
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = GetPlayerServerId
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    if L11_2 ~= L3_2 then
      L12_2 = PartyAllyMembers
      L12_2 = L12_2[L11_2]
      if not L12_2 then
        L12_2 = L15_1
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = GetEntityCoords
          L13_2 = L10_2
          L12_2 = L12_2(L13_2)
          L13_2 = L14_1
          L14_2 = L12_2
          L15_2 = L1_2
          L13_2 = L13_2(L14_2, L15_2)
          L14_2 = L9_1
          if L13_2 <= L14_2 then
            L14_2 = #L2_2
            L14_2 = L14_2 + 1
            L15_2 = {}
            L15_2.ped = L10_2
            L15_2.distSq = L13_2
            L2_2[L14_2] = L15_2
          end
        end
      end
    end
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L12_1
  L5_2 = L4_2 - L5_2
  L6_2 = L11_1
  if L5_2 > L6_2 then
    L5_2 = GetGamePool
    L6_2 = "CPed"
    L5_2 = L5_2(L6_2)
    L13_1 = L5_2
    L12_1 = L4_2
  end
  L5_2 = ipairs
  L6_2 = L13_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = IsPedAPlayer
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = IsPedHuman
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = L15_1
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = GetEntityCoords
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L12_2 = L14_1
          L13_2 = L11_2
          L14_2 = L1_2
          L12_2 = L12_2(L13_2, L14_2)
          L13_2 = L9_1
          if L12_2 <= L13_2 then
            L13_2 = #L2_2
            L13_2 = L13_2 + 1
            L14_2 = {}
            L14_2.ped = L10_2
            L14_2.distSq = L12_2
            L2_2[L13_2] = L14_2
          end
        end
      end
    end
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L2_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.distSq
    L3_3 = A1_3.distSq
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L5_2(L6_2, L7_2)
  return L2_2
end
BuildTargetsList = L16_1
lastCoordsBuild = nil
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = currentTarget
  if nil ~= L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = currentTarget
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = GetEntityAlpha
      L3_2 = currentTarget
      L2_2 = L2_2(L3_2)
      L3_2 = 254
      if L2_2 > L3_2 then
        L2_2 = L15_1
        L3_2 = currentTarget
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = GetGameTimer
          L2_2 = L2_2()
          L4_1 = L2_2
        else
          L2_2 = GetGameTimer
          L2_2 = L2_2()
          L3_2 = L4_1
          L2_2 = L2_2 - L3_2
          L3_2 = L2_1
          if L2_2 > L3_2 then
            currentTarget = nil
            currentTargetIndex = 1
            L2_2 = {}
            targetsAround = L2_2
            lastCoordsBuild = nil
          end
        end
      end
    end
  end
  L2_2 = IsControlJustPressed
  L3_2 = 0
  L4_2 = TARGET_SWITCH_KEY
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsDisabledControlJustPressed
    L3_2 = 0
    L4_2 = TARGET_SWITCH_KEY
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      goto lbl_84
    end
  end
  L2_2 = targetsAround
  L2_2 = #L2_2
  if L2_2 > 1 then
    L2_2 = currentTargetIndex
    L2_2 = L2_2 + 1
    currentTargetIndex = L2_2
    L2_2 = currentTargetIndex
    L3_2 = targetsAround
    L3_2 = #L3_2
    if L2_2 > L3_2 then
      currentTargetIndex = 1
    end
    L2_2 = targetsAround
    L3_2 = currentTargetIndex
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.ped
    currentTarget = L2_2
    L2_2 = IsDisabledControlPressed
    L3_2 = 0
    L4_2 = 24
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = IdleStrafe
      L2_2()
    end
    L2_2 = currentTarget
    return L2_2
  end
  ::lbl_84::
  L2_2 = currentTarget
  if nil ~= L2_2 then
    L2_2 = currentTarget
    return L2_2
  end
  L2_2 = lastCoordsBuild
  if nil == L2_2 then
    lastCoordsBuild = L1_2
    L2_2 = BuildTargetsList
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    targetsAround = L2_2
  end
  L2_2 = targetsAround
  L2_2 = #L2_2
  if L2_2 > 0 then
    currentTargetIndex = 1
    L2_2 = targetsAround
    L2_2 = L2_2[1]
    L2_2 = L2_2.ped
    currentTarget = L2_2
  end
  L2_2 = currentTarget
  return L2_2
end
GetClosestTarget = L16_1
aimBotON = true
L16_1 = 0
L17_1 = 350
function L18_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3
    while true do
      L0_3 = CombatActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = aimbotEnabled
      if L0_3 then
        L0_3 = camBow
        if nil == L0_3 then
          L0_3 = PlayerPedId
          L0_3 = L0_3()
          L1_3 = false
          L2_3 = IsControlJustPressed
          L3_3 = 0
          L4_3 = 22
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsDisabledControlJustPressed
            L3_3 = 0
            L4_3 = 22
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              goto lbl_37
            end
          end
          L2_3 = indashfunc
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L1_3 = true
            L2_3 = Wait
            L3_3 = 225
            L2_3(L3_3)
          end
          ::lbl_37::
          L2_3 = IsDisabledControlJustPressed
          L3_3 = 0
          L4_3 = 74
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsControlJustPressed
            L3_3 = 0
            L4_3 = 74
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              goto lbl_75
            end
          end
          L2_3 = exports
          L2_3 = L2_3.striano_combat
          L3_3 = L2_3
          L2_3 = L2_3.incombatmenumanager
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = aimBotON
            L2_3 = not L2_3
            aimBotON = L2_3
            L2_3 = aimBotON
            if L2_3 then
              L2_3 = ExecuteCommand
              L3_3 = "prova3 Autoaim \226\128\162 ON \226\128\162"
              L2_3(L3_3)
            else
              L2_3 = ExecuteCommand
              L3_3 = "prova3 Autoaim \226\128\162 OFF \226\128\162"
              L2_3(L3_3)
              currentTarget = nil
            end
            L2_3 = PlaySoundFrontend
            L3_3 = -1
            L4_3 = "10_SEC_WARNING"
            L5_3 = "HUD_MINI_GAME_SOUNDSET"
            L6_3 = true
            L2_3(L3_3, L4_3, L5_3, L6_3)
          end
          ::lbl_75::
          if not L1_3 then
            L2_3 = aimBotON
            if L2_3 then
              L2_3 = inBowAnims
              L3_3 = L0_3
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = SfoggiatoBow
                if not L2_3 then
                  L2_3 = GetGameTimer
                  L2_3 = L2_3()
                  L3_3 = GetEntityCoords
                  L4_3 = L0_3
                  L3_3 = L3_3(L4_3)
                  L4_3 = IsControlJustPressed
                  L5_3 = 0
                  L6_3 = TARGET_SWITCH_KEY
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsDisabledControlJustPressed
                    L5_3 = 0
                    L6_3 = TARGET_SWITCH_KEY
                    L4_3 = L4_3(L5_3, L6_3)
                    if not L4_3 then
                      goto lbl_218
                    end
                  end
                  L4_3 = BuildTargetsList
                  L5_3 = L0_3
                  L4_3 = L4_3(L5_3)
                  if not L4_3 then
                    L4_3 = {}
                  end
                  targetsAround = L4_3
                  lastCoordsBuild = L3_3
                  L4_3 = {}
                  L5_3 = ipairs
                  L6_3 = targetsAround
                  L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
                  for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
                    L11_3 = L10_3.ped
                    if L11_3 then
                      L12_3 = DoesEntityExist
                      L13_3 = L11_3
                      L12_3 = L12_3(L13_3)
                      if L12_3 then
                        L12_3 = IsEntityDead
                        L13_3 = L11_3
                        L12_3 = L12_3(L13_3)
                        if not L12_3 then
                          L12_3 = IsPedDeadOrDying
                          L13_3 = L11_3
                          L14_3 = true
                          L12_3 = L12_3(L13_3, L14_3)
                          if not L12_3 then
                            L12_3 = IsPedFatallyInjured
                            L13_3 = L11_3
                            L12_3 = L12_3(L13_3)
                            if not L12_3 then
                              L12_3 = L15_1
                              L13_3 = L11_3
                              L12_3 = L12_3(L13_3)
                              if L12_3 then
                                L12_3 = GetEntityCoords
                                L13_3 = L11_3
                                L12_3 = L12_3(L13_3)
                                L13_3 = L14_1
                                L14_3 = L3_3
                                L15_3 = L12_3
                                L13_3 = L13_3(L14_3, L15_3)
                                L14_3 = L9_1
                                if L13_3 < L14_3 then
                                  L13_3 = #L4_3
                                  L13_3 = L13_3 + 1
                                  L4_3[L13_3] = L10_3
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                  targetsAround = L4_3
                  L5_3 = targetsAround
                  L5_3 = #L5_3
                  if L5_3 > 1 then
                    L5_3 = 0
                    L6_3 = ipairs
                    L7_3 = targetsAround
                    L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
                    for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
                      L12_3 = L11_3.ped
                      L13_3 = currentTarget
                      if L12_3 == L13_3 then
                        L5_3 = L10_3
                        break
                      end
                    end
                    L6_3 = L5_3 + 1
                    currentTargetIndex = L6_3
                    L6_3 = currentTargetIndex
                    L7_3 = targetsAround
                    L7_3 = #L7_3
                    if L6_3 > L7_3 then
                      currentTargetIndex = 1
                    end
                    L6_3 = targetsAround
                    L7_3 = currentTargetIndex
                    L6_3 = L6_3[L7_3]
                    L6_3 = L6_3.ped
                    currentTarget = L6_3
                    L6_3 = PlaySoundFrontend
                    L7_3 = -1
                    L8_3 = "NAV_UP_DOWN"
                    L9_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                    L10_3 = true
                    L6_3(L7_3, L8_3, L9_3, L10_3)
                  else
                    L5_3 = targetsAround
                    L5_3 = #L5_3
                    if 1 == L5_3 then
                      currentTargetIndex = 1
                      L5_3 = targetsAround
                      L5_3 = L5_3[1]
                      L5_3 = L5_3.ped
                      currentTarget = L5_3
                    else
                      currentTargetIndex = 1
                      currentTarget = nil
                    end
                  end
                  ::lbl_218::
                  L4_3 = false
                  L5_3 = currentTarget
                  if L5_3 then
                    L5_3 = DoesEntityExist
                    L6_3 = currentTarget
                    L5_3 = L5_3(L6_3)
                    if L5_3 then
                      L5_3 = IsEntityDead
                      L6_3 = currentTarget
                      L5_3 = L5_3(L6_3)
                      if not L5_3 then
                        L5_3 = IsPedDeadOrDying
                        L6_3 = currentTarget
                        L7_3 = true
                        L5_3 = L5_3(L6_3, L7_3)
                        if not L5_3 then
                          L5_3 = IsPedFatallyInjured
                          L6_3 = currentTarget
                          L5_3 = L5_3(L6_3)
                          if not L5_3 then
                            L5_3 = L15_1
                            L6_3 = currentTarget
                            L5_3 = L5_3(L6_3)
                            if L5_3 then
                              L5_3 = GetEntityCoords
                              L6_3 = currentTarget
                              L5_3 = L5_3(L6_3)
                              L6_3 = L14_1
                              L7_3 = L3_3
                              L8_3 = L5_3
                              L6_3 = L6_3(L7_3, L8_3)
                              L7_3 = L9_1
                              if L6_3 < L7_3 then
                                L4_3 = true
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                  if not L4_3 then
                    currentTarget = nil
                  end
                  L5_3 = false
                  if not L4_3 then
                    L6_3 = targetsAround
                    if L6_3 then
                      L6_3 = targetsAround
                      L6_3 = #L6_3
                      if 0 ~= L6_3 then
                        goto lbl_273
                      end
                    end
                    L5_3 = true
                    ::lbl_273::
                    L6_3 = L16_1
                    if L2_3 >= L6_3 then
                      L6_3 = L17_1
                      L6_3 = L2_3 + L6_3
                      L16_1 = L6_3
                      L5_3 = true
                    end
                    L6_3 = lastCoordsBuild
                    if L6_3 then
                      L6_3 = L14_1
                      L7_3 = L3_3
                      L8_3 = lastCoordsBuild
                      L6_3 = L6_3(L7_3, L8_3)
                      L7_3 = L10_1
                      if L6_3 > L7_3 then
                        L5_3 = true
                      end
                    else
                      L5_3 = true
                    end
                  end
                  if L5_3 then
                    L6_3 = BuildTargetsList
                    L7_3 = L0_3
                    L6_3 = L6_3(L7_3)
                    if not L6_3 then
                      L6_3 = {}
                    end
                    targetsAround = L6_3
                    lastCoordsBuild = L3_3
                    L6_3 = {}
                    L7_3 = ipairs
                    L8_3 = targetsAround
                    L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
                    for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
                      L13_3 = L12_3.ped
                      if L13_3 then
                        L14_3 = DoesEntityExist
                        L15_3 = L13_3
                        L14_3 = L14_3(L15_3)
                        if L14_3 then
                          L14_3 = IsEntityDead
                          L15_3 = L13_3
                          L14_3 = L14_3(L15_3)
                          if not L14_3 then
                            L14_3 = IsPedDeadOrDying
                            L15_3 = L13_3
                            L16_3 = true
                            L14_3 = L14_3(L15_3, L16_3)
                            if not L14_3 then
                              L14_3 = IsPedFatallyInjured
                              L15_3 = L13_3
                              L14_3 = L14_3(L15_3)
                              if not L14_3 then
                                L14_3 = L15_1
                                L15_3 = L13_3
                                L14_3 = L14_3(L15_3)
                                if L14_3 then
                                  L14_3 = GetEntityCoords
                                  L15_3 = L13_3
                                  L14_3 = L14_3(L15_3)
                                  L15_3 = L14_1
                                  L16_3 = L3_3
                                  L17_3 = L14_3
                                  L15_3 = L15_3(L16_3, L17_3)
                                  L16_3 = L9_1
                                  if L15_3 < L16_3 then
                                    L16_3 = #L6_3
                                    L16_3 = L16_3 + 1
                                    L6_3[L16_3] = L12_3
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    targetsAround = L6_3
                    L7_3 = targetsAround
                    L7_3 = #L7_3
                    if L7_3 > 0 then
                      L7_3 = math
                      L7_3 = L7_3.max
                      L8_3 = 1
                      L9_3 = math
                      L9_3 = L9_3.min
                      L10_3 = currentTargetIndex
                      if not L10_3 then
                        L10_3 = 1
                      end
                      L11_3 = targetsAround
                      L11_3 = #L11_3
                      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L9_3(L10_3, L11_3)
                      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
                      currentTargetIndex = L7_3
                      L7_3 = targetsAround
                      L8_3 = currentTargetIndex
                      L7_3 = L7_3[L8_3]
                      L7_3 = L7_3.ped
                      currentTarget = L7_3
                    else
                      currentTargetIndex = 1
                      currentTarget = nil
                    end
                  end
                  L6_3 = currentTarget
                  if L6_3 then
                    L7_3 = DoesEntityExist
                    L8_3 = L6_3
                    L7_3 = L7_3(L8_3)
                    if L7_3 then
                      L7_3 = IsEntityDead
                      L8_3 = L6_3
                      L7_3 = L7_3(L8_3)
                      if not L7_3 then
                        L7_3 = IsPedDeadOrDying
                        L8_3 = L6_3
                        L9_3 = true
                        L7_3 = L7_3(L8_3, L9_3)
                        if not L7_3 then
                          L7_3 = IsPedFatallyInjured
                          L8_3 = L6_3
                          L7_3 = L7_3(L8_3)
                          if not L7_3 then
                            L7_3 = L15_1
                            L8_3 = L6_3
                            L7_3 = L7_3(L8_3)
                            if L7_3 then
                              L7_3 = IsPedRagdoll
                              L8_3 = L0_3
                              L7_3 = L7_3(L8_3)
                              if not L7_3 then
                                L7_3 = IsPedFatallyInjured
                                L8_3 = L0_3
                                L7_3 = L7_3(L8_3)
                                if not L7_3 then
                                  L7_3 = GetEntityCoords
                                  L8_3 = L6_3
                                  L7_3 = L7_3(L8_3)
                                  L8_3 = L14_1
                                  L9_3 = L3_3
                                  L10_3 = L7_3
                                  L8_3 = L8_3(L9_3, L10_3)
                                  L9_3 = L9_1
                                  if L8_3 < L9_3 then
                                    L9_3 = L7_3 - L3_3
                                    L10_3 = GetHeadingFromVector_2d
                                    L11_3 = L9_3.x
                                    L12_3 = L9_3.y
                                    L10_3 = L10_3(L11_3, L12_3)
                                    L11_3 = GetFrameTime
                                    L11_3 = L11_3()
                                    if L11_3 <= 0.0 then
                                      L11_3 = 0.016
                                    end
                                    L12_3 = GetEntityHeading
                                    L13_3 = L0_3
                                    L12_3 = L12_3(L13_3)
                                    L13_3 = L7_1
                                    L14_3 = L12_3
                                    L15_3 = L10_3
                                    L13_3 = L13_3(L14_3, L15_3)
                                    L14_3 = math
                                    L14_3 = L14_3.abs
                                    L15_3 = L13_3
                                    L14_3 = L14_3(L15_3)
                                    L15_3 = L3_1
                                    if L14_3 > L15_3 then
                                      L14_3 = L0_1
                                      L14_3 = L14_3 * L11_3
                                      L15_3 = L5_1
                                      L16_3 = L13_3
                                      L17_3 = -L14_3
                                      L18_3 = L14_3
                                      L15_3 = L15_3(L16_3, L17_3, L18_3)
                                      L16_3 = SetEntityHeading
                                      L17_3 = L0_3
                                      L18_3 = L12_3 + L15_3
                                      L18_3 = L18_3 % 360.0
                                      L16_3(L17_3, L18_3)
                                    end
                                    L14_3 = targetsAround
                                    if L14_3 then
                                      L14_3 = targetsAround
                                      L14_3 = #L14_3
                                      if L14_3 > 0 then
                                        L14_3 = ipairs
                                        L15_3 = targetsAround
                                        L14_3, L15_3, L16_3, L17_3 = L14_3(L15_3)
                                        for L18_3, L19_3 in L14_3, L15_3, L16_3, L17_3 do
                                          L20_3 = L19_3.ped
                                          if L20_3 then
                                            L21_3 = DoesEntityExist
                                            L22_3 = L20_3
                                            L21_3 = L21_3(L22_3)
                                            if L21_3 then
                                              L21_3 = IsEntityDead
                                              L22_3 = L20_3
                                              L21_3 = L21_3(L22_3)
                                              if not L21_3 then
                                                L21_3 = IsPedDeadOrDying
                                                L22_3 = L20_3
                                                L23_3 = true
                                                L21_3 = L21_3(L22_3, L23_3)
                                                if not L21_3 then
                                                  L21_3 = L15_1
                                                  L22_3 = L20_3
                                                  L21_3 = L21_3(L22_3)
                                                  if L21_3 then
                                                    L21_3 = GetEntityCoords
                                                    L22_3 = L20_3
                                                    L21_3 = L21_3(L22_3)
                                                    L22_3 = L14_1
                                                    L23_3 = L21_3
                                                    L24_3 = L3_3
                                                    L22_3 = L22_3(L23_3, L24_3)
                                                    L23_3 = L9_1
                                                    if L22_3 < L23_3 then
                                                      L23_3 = markerFirstTarget
                                                      L24_3 = L21_3.x
                                                      L25_3 = L21_3.y
                                                      L26_3 = L21_3.z
                                                      L26_3 = L26_3 + 1.0
                                                      L27_3 = L20_3
                                                      L23_3(L24_3, L25_3, L26_3, L27_3)
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                    L14_3 = true
                                    L15_3 = pushForwardOnlyForNPC
                                    if L15_3 then
                                      L15_3 = IsPedAPlayer
                                      L16_3 = currentTarget
                                      L15_3 = L15_3(L16_3)
                                      if L15_3 then
                                        L14_3 = false
                                      end
                                    end
                                    L15_3 = PushFrwdFightInAim
                                    if L15_3 and L14_3 then
                                      L15_3 = IsControlPressed
                                      L16_3 = 0
                                      L17_3 = 32
                                      L15_3 = L15_3(L16_3, L17_3)
                                      if not L15_3 then
                                        L15_3 = IsDisabledControlPressed
                                        L16_3 = 0
                                        L17_3 = 32
                                        L15_3 = L15_3(L16_3, L17_3)
                                      end
                                      L16_3 = IsControlPressed
                                      L17_3 = 0
                                      L18_3 = 34
                                      L16_3 = L16_3(L17_3, L18_3)
                                      if not L16_3 then
                                        L16_3 = IsDisabledControlPressed
                                        L17_3 = 0
                                        L18_3 = 34
                                        L16_3 = L16_3(L17_3, L18_3)
                                      end
                                      L17_3 = IsControlPressed
                                      L18_3 = 0
                                      L19_3 = 35
                                      L17_3 = L17_3(L18_3, L19_3)
                                      if not L17_3 then
                                        L17_3 = IsDisabledControlPressed
                                        L18_3 = 0
                                        L19_3 = 35
                                        L17_3 = L17_3(L18_3, L19_3)
                                      end
                                      L18_3 = IsDisabledControlPressed
                                      L19_3 = 0
                                      L20_3 = 24
                                      L18_3 = L18_3(L19_3, L20_3)
                                      if not L18_3 then
                                        L18_3 = IsControlPressed
                                        L19_3 = 0
                                        L20_3 = 24
                                        L18_3 = L18_3(L19_3, L20_3)
                                      end
                                      if L18_3 and (L15_3 or L16_3 or L17_3) then
                                        L19_3 = math
                                        L19_3 = L19_3.sqrt
                                        L20_3 = L8_3
                                        L19_3 = L19_3(L20_3)
                                        L20_3 = OPTIMAL_DISTANCE
                                        L20_3 = L20_3 + 1.0
                                        if L19_3 > L20_3 then
                                          L20_3 = vec3
                                          L21_3 = L9_3.x
                                          L22_3 = L9_3.y
                                          L23_3 = 0.0
                                          L20_3 = L20_3(L21_3, L22_3, L23_3)
                                          L21_3 = APPROACH_SPEED
                                          L20_3 = L20_3 * L21_3
                                          L21_3 = SetEntityVelocity
                                          L22_3 = L0_3
                                          L23_3 = L20_3.x
                                          L24_3 = L20_3.y
                                          L25_3 = L20_3.z
                                          L21_3(L22_3, L23_3, L24_3, L25_3)
                                        end
                                      end
                                    end
                                  else
                                    currentTarget = nil
                                    currentTargetIndex = 1
                                    L9_3 = 0
                                    L16_1 = L9_3
                                  end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                  else
                    currentTarget = nil
                    currentTargetIndex = 1
                    L7_3 = 0
                    L16_1 = L7_3
                  end
                end
              end
            end
          end
        end
      end
    end
    currentTarget = nil
    currentTargetIndex = 1
    L0_3 = {}
    targetsAround = L0_3
    lastCoordsBuild = nil
    L0_3 = 0
    L16_1 = L0_3
  end
  L0_2(L1_2)
end
LoopAimBotCombat = L18_1
