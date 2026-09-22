local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
function L0_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.crouchato
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_editor
    L1_2 = L0_2
    L0_2 = L0_2.stealth
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_16
    end
  end
  L0_2 = true
  do return L0_2 end
  goto lbl_18
  ::lbl_16::
  L0_2 = false
  do return L0_2 end
  ::lbl_18::
end
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsPedRunning
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedSprinting
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_14
    end
  end
  L1_2 = true
  do return L1_2 end
  goto lbl_16
  ::lbl_14::
  L1_2 = false
  do return L1_2 end
  ::lbl_16::
end
L2_1 = exports
L3_1 = "spawnHorrorActive"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsPedFatallyInjured
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = "s_m_m_strperf_01"
    L3_2 = GetHashKey
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = RequestModelStriano
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = A0_2
    if nil == L4_2 then
      L5_2 = GetEntityCoords
      L6_2 = L1_2
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
    end
    L5_2 = 0
    L6_2 = nil
    L7_2 = CreatePed
    L8_2 = 26
    L9_2 = L3_2
    L10_2 = L4_2.x
    L11_2 = L4_2.y
    L12_2 = L4_2.z
    L13_2 = 0.0
    L14_2 = false
    L15_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = L7_2
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if not (not L7_2 and L5_2 < 100) then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
      L5_2 = L5_2 + 1
    end
    L7_2 = SetEntityHealth
    L8_2 = L6_2
    L9_2 = 150
    L7_2(L8_2, L9_2)
    if L5_2 < 100 then
      L7_2 = FightAttribute
      L8_2 = L6_2
      L7_2(L8_2)
    end
    L7_2 = SetModelAsNoLongerNeeded
    L8_2 = L3_2
    L7_2(L8_2)
    if L5_2 < 100 then
      L7_2 = IsPedAPlayer
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = LoopFollowHorror
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "spawnHorror"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = "s_m_m_strperf_01"
  L3_2 = GetHashKey
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = RequestModelStriano
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = A0_2
  if nil == L5_2 then
    L6_2 = GetEntityCoords
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = 0
  L7_2 = nil
  L8_2 = CreatePed
  L9_2 = 26
  L10_2 = L3_2
  L11_2 = L5_2.x
  L12_2 = L5_2.y
  L13_2 = L5_2.z
  L14_2 = 0.0
  L15_2 = false
  L16_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = L8_2
  while true do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if not (not L8_2 and L6_2 < 100) then
      break
    end
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
    L6_2 = L6_2 + 1
  end
  L8_2 = SetEntityHealth
  L9_2 = L7_2
  L10_2 = 150
  L8_2(L9_2, L10_2)
  if L6_2 < 100 then
    L8_2 = FightAttribute
    L9_2 = L7_2
    L8_2(L9_2)
  end
  L8_2 = SetModelAsNoLongerNeeded
  L9_2 = L3_2
  L8_2(L9_2)
  if L6_2 < 100 then
    L8_2 = IsPedAPlayer
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = faiAnim
      L9_2 = "nightmare_anim"
      L10_2 = "idle_bound"
      L11_2 = -1
      L12_2 = 1
      L13_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L8_2 = Wait
      L9_2 = 1000
      L8_2(L9_2)
      L8_2 = 7.5
      L9_2 = CreateThread
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        L0_3 = false
        L1_3 = nil
        L2_3 = 2
        while true do
          L3_3 = DoesEntityExist
          L4_3 = L7_2
          L3_3 = L3_3(L4_3)
          if not L3_3 then
            break
          end
          L3_3 = Wait
          L4_3 = 250
          L3_3(L4_3)
          L3_3 = IsEntityPlayingAnim
          L4_3 = L7_2
          L5_3 = "nightmare_anim"
          L6_3 = "idle_bound"
          L7_3 = 3
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
          if not L3_3 then
            L3_3 = IsEntityPlayingAnim
            L4_3 = L7_2
            L5_3 = "nightmare_anim"
            L6_3 = "bound_headshake"
            L7_3 = 3
            L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
            if not L3_3 then
              L3_3 = IsEntityPlayingAnim
              L4_3 = L7_2
              L5_3 = "nightmare_anim"
              L6_3 = "lookbck_a"
              L7_3 = 3
              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
              if not L3_3 then
                L3_3 = IsEntityPlayingAnim
                L4_3 = L7_2
                L5_3 = "nightmare_anim"
                L6_3 = "headshake_2"
                L7_3 = 3
                L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                if not L3_3 then
                  return
                end
              end
            end
          end
          L3_3 = GetEntityCoords
          L4_3 = L4_2
          L3_3 = L3_3(L4_3)
          L4_3 = GetEntityCoords
          L5_3 = L7_2
          L4_3 = L4_3(L5_3)
          L3_3 = L3_3 - L4_3
          L3_3 = #L3_3
          if not (L3_3 > 100.0) then
            L3_3 = IsPedFatallyInjured
            L4_3 = L7_2
            L3_3 = L3_3(L4_3)
            if not L3_3 then
              goto lbl_65
            end
          end
          L3_3 = CreateThread
          function L4_3()
            local L0_4, L1_4, L2_4
            L0_4 = Wait
            L1_4 = 9000
            L0_4(L1_4)
            L0_4 = DetachAndDelete
            L1_4 = L7_2
            L2_4 = nil
            L0_4(L1_4, L2_4)
          end
          L3_3(L4_3)
          do return end
          ::lbl_65::
          L3_3 = L1_1
          L4_3 = L4_2
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L2_3 = 4
          else
            L2_3 = 2
          end
          L3_3 = GetEntitySpeed
          L4_3 = L4_2
          L3_3 = L3_3(L4_3)
          L4_3 = 0.1
          if L3_3 > L4_3 then
            L3_3 = IsPedFatallyInjured
            L4_3 = L7_2
            L3_3 = L3_3(L4_3)
            if not L3_3 then
              L3_3 = IsPedFatallyInjured
              L4_3 = L4_2
              L3_3 = L3_3(L4_3)
              if not L3_3 then
                L3_3 = GetEntityCoords
                L4_3 = L4_2
                L3_3 = L3_3(L4_3)
                L4_3 = GetEntityCoords
                L5_3 = L7_2
                L4_3 = L4_3(L5_3)
                L3_3 = L3_3 - L4_3
                L3_3 = #L3_3
                L4_3 = L8_2
                L4_3 = L4_3 * L2_3
                if L3_3 < L4_3 then
                  L3_3 = GetEntityCoords
                  L4_3 = L4_2
                  L3_3 = L3_3(L4_3)
                  L4_3 = GetEntityCoords
                  L5_3 = L7_2
                  L4_3 = L4_3(L5_3)
                  L3_3 = L3_3 - L4_3
                  L3_3 = #L3_3
                  L4_3 = L8_2
                  L4_3 = L4_3 / 2
                  L4_3 = L4_3 * L2_3
                  if L3_3 >= L4_3 then
                    L3_3 = IsEntityPlayingAnim
                    L4_3 = L7_2
                    L5_3 = "nightmare_anim"
                    L6_3 = "bound_headshake"
                    L7_3 = 3
                    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                    if not L3_3 then
                      L3_3 = faiAnim
                      L4_3 = "nightmare_anim"
                      L5_3 = "bound_headshake"
                      L6_3 = -1
                      L7_3 = 1
                      L8_3 = L7_2
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                      L1_3 = nil
                    end
                    L3_3 = Wait
                    L4_3 = 1000
                    L3_3(L4_3)
                end
                else
                  L3_3 = GetEntityCoords
                  L4_3 = L4_2
                  L3_3 = L3_3(L4_3)
                  L4_3 = GetEntityCoords
                  L5_3 = L7_2
                  L4_3 = L4_3(L5_3)
                  L3_3 = L3_3 - L4_3
                  L3_3 = #L3_3
                  L4_3 = L8_2
                  L4_3 = L4_3 / 2
                  L4_3 = L4_3 * L2_3
                  if L3_3 < L4_3 then
                    if nil ~= L1_3 then
                      L3_3 = GetGameTimer
                      L3_3 = L3_3()
                      L3_3 = L3_3 - L1_3
                      L4_3 = 3000
                      if L3_3 >= L4_3 and not L0_3 then
                        L3_3 = L0_1
                        L3_3 = L3_3()
                        if not L3_3 then
                          L3_3 = LoopFollowHorror
                          L4_3 = L7_2
                          L3_3(L4_3)
                          return
                      end
                    end
                    else
                      L3_3 = IsEntityPlayingAnim
                      L4_3 = L7_2
                      L5_3 = "nightmare_anim"
                      L6_3 = "headshake_2"
                      L7_3 = 3
                      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                      if not L3_3 then
                        L3_3 = faiAnim
                        L4_3 = "nightmare_anim"
                        L5_3 = "headshake_2"
                        L6_3 = -1
                        L7_3 = 1
                        L8_3 = L7_2
                        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                        L3_3 = GetGameTimer
                        L3_3 = L3_3()
                        L1_3 = L3_3
                      end
                    end
                  else
                    L3_3 = IsEntityPlayingAnim
                    L4_3 = L7_2
                    L5_3 = "nightmare_anim"
                    L6_3 = "idle_bound"
                    L7_3 = 3
                    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                    if not L3_3 then
                      L1_3 = nil
                      L3_3 = faiAnim
                      L4_3 = "nightmare_anim"
                      L5_3 = "idle_bound"
                      L6_3 = -1
                      L7_3 = 1
                      L8_3 = L7_2
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                    end
                  end
                end
              end
            end
          end
        end
      end
      L9_2(L10_2)
    end
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 7.5
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = 1.0
    L1_3 = LoadAnim
    L2_3 = "nightmare_anim"
    L1_3(L2_3)
    L1_3 = 0
    while true do
      L2_3 = DoesEntityExist
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        break
      end
      L2_3 = IsPedFatallyInjured
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if L2_3 then
        break
      end
      L2_3 = IsPedFatallyInjured
      L3_3 = L2_2
      L2_3 = L2_3(L3_3)
      if L2_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = GetEntityCoords
      L3_3 = L2_2
      L2_3 = L2_3(L3_3)
      L3_3 = GetEntityCoords
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      L2_3 = L2_3 - L3_3
      L2_3 = #L2_3
      if not (L2_3 > 100.0) then
        L2_3 = IsPedFatallyInjured
        L3_3 = L2_2
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          goto lbl_45
        end
      end
      L2_3 = DetachAndDelete
      L3_3 = A0_2
      L4_3 = nil
      L2_3(L3_3, L4_3)
      do return end
      ::lbl_45::
      L2_3 = GetEntityCoords
      L3_3 = L2_2
      L2_3 = L2_3(L3_3)
      L3_3 = GetEntityCoords
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      L2_3 = L2_3 - L3_3
      L2_3 = #L2_3
      L3_3 = 1.5
      L2_3 = L2_3 < L3_3
      if L2_3 then
        if 0 == L1_3 then
          L3_3 = GetGameTimer
          L3_3 = L3_3()
          L1_3 = L3_3
        end
        L3_3 = faiAnim
        L4_3 = "nightmare_anim"
        L5_3 = "ghost_walk_faster"
        L6_3 = -1
        L7_3 = 1
        L8_3 = A0_2
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        L3_3 = GetGameTimer
        L3_3 = L3_3()
        L3_3 = L3_3 - L1_3
        L4_3 = 750
        if L3_3 >= L4_3 then
          L3_3 = exports
          L3_3 = L3_3.striano_combat
          L4_3 = L3_3
          L3_3 = L3_3.gengrunt
          L3_3(L4_3)
          L3_3 = BloodActive
          if L3_3 then
            L3_3 = ApplyDamageToPedLegacy
            L4_3 = L2_2
            L5_3 = 25
            L3_3(L4_3, L5_3)
            L3_3 = PunchBlood
            L4_3 = L2_2
            L3_3(L4_3)
          end
          L3_3 = Wait
          L4_3 = 3000
          L3_3(L4_3)
        end
      else
        L1_3 = 0
        L3_3 = makeEntityFaceEntity
        L4_3 = A0_2
        L5_3 = L2_2
        L3_3(L4_3, L5_3)
        L3_3 = GetEntityCoords
        L4_3 = L2_2
        L3_3 = L3_3(L4_3)
        L4_3 = GetEntityCoords
        L5_3 = A0_2
        L4_3 = L4_3(L5_3)
        L3_3 = L3_3 - L4_3
        L3_3 = #L3_3
        L4_3 = L1_2
        L4_3 = L4_3 / 2
        if L3_3 > L4_3 then
          L3_3 = IsEntityPlayingAnim
          L4_3 = A0_2
          L5_3 = "nightmare_anim"
          L6_3 = "ghost_walk_faster"
          L7_3 = 3
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
          if not L3_3 then
            L3_3 = faiAnim
            L4_3 = "nightmare_anim"
            L5_3 = "ghost_walk_faster"
            L6_3 = -1
            L7_3 = 1
            L8_3 = A0_2
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          end
          if L0_3 < 3.0 then
            L0_3 = L0_3 + 0.3
          end
          if L0_3 < 3.0 then
            L3_3 = L1_1
            L4_3 = L2_2
            L3_3 = L3_3(L4_3)
            if L3_3 then
              L0_3 = L0_3 + 0.3
            end
          end
          L3_3 = SetEntityAnimSpeed
          L4_3 = A0_2
          L5_3 = "nightmare_anim"
          L6_3 = "ghost_walk_faster"
          L7_3 = L0_3
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = Wait
          L4_3 = 1000
          L3_3(L4_3)
        else
          if L0_3 < 3.0 then
            L0_3 = L0_3 + 0.3
          end
          if L0_3 < 3.0 then
            L3_3 = L1_1
            L4_3 = L2_2
            L3_3 = L3_3(L4_3)
            if L3_3 then
              L0_3 = L0_3 + 0.3
            end
          end
          L3_3 = TaskPlayAnim
          L4_3 = A0_2
          L5_3 = "nightmare_anim"
          L6_3 = "scare_run_start_1"
          L7_3 = 2.0
          L8_3 = 2.0
          L9_3 = 850
          L10_3 = 1
          L11_3 = false
          L12_3 = false
          L13_3 = false
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
          L3_3 = Wait
          L4_3 = 750
          L3_3(L4_3)
          L3_3 = SetEntityAnimSpeed
          L4_3 = A0_2
          L5_3 = "nightmare_anim"
          L6_3 = "ghost_walk_faster"
          L7_3 = L0_3
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = SpawnLightPulseAtPed
          L4_3 = A0_2
          L5_3 = 0.3
          L6_3 = 0.1
          L3_3(L4_3, L5_3, L6_3)
        end
      end
    end
    L2_3 = DoesEntityExist
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = DetachAndDelete
      L3_3 = A0_2
      L4_3 = nil
      L2_3(L3_3, L4_3)
    end
  end
  L3_2(L4_2)
end
LoopFollowHorror = L2_1
L2_1 = {}
dummyObj = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = RequestModelStriano
  L7_2 = dummyPropModel
  L6_2(L7_2)
  L6_2 = CreateObject
  L7_2 = GetHashKey
  L8_2 = dummyPropModel
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  while true do
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = PlayEffect
  L8_2 = "scr_agencyheistb"
  L9_2 = "scr_agency3b_linger_smoke"
  L10_2 = GetEntityCoords
  L11_2 = L6_2
  L10_2 = L10_2(L11_2)
  L11_2 = 0.5
  L12_2 = 0.8
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  if nil ~= A3_2 then
    L7_2 = SetEntityRotation
    L8_2 = L6_2
    L9_2 = vector3
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2, L12_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L7_2 = SetEntityInvincible
  L8_2 = L6_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityCanBeDamaged
  L8_2 = L6_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L6_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = dummyObj
  L9_2 = {}
  L9_2.o = L6_2
  L9_2.health = 100
  L7_2(L8_2, L9_2)
  L7_2 = Wait
  L8_2 = 25
  L7_2(L8_2)
  L7_2 = loopDummy
  L7_2()
end
spawnDummy = L2_1
loopDummyActive = false
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = loopDummyActive
  if L0_2 then
    return
  end
  loopDummyActive = true
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    while true do
      L0_3 = dummyObj
      L0_3 = #L0_3
      if not (L0_3 > 0) then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      L1_3 = ipairs
      L2_3 = dummyObj
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.o
        if L7_3 then
          L7_3 = DoesEntityExist
          L8_3 = L6_3.o
          L7_3 = L7_3(L8_3)
          if L7_3 then
            L7_3 = GetEntityCoords
            L8_3 = L6_3.o
            L7_3 = L7_3(L8_3)
            L8_3 = L0_3 - L7_3
            L8_3 = #L8_3
            if L8_3 < 50.0 then
              L9_3 = DrawSpotLightWithShadow
              L10_3 = L7_3.x
              L11_3 = L7_3.y
              L12_3 = L7_3.z
              L12_3 = L12_3 + 2.1
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 90.0
              L16_3 = 255
              L17_3 = 255
              L18_3 = 190
              L19_3 = watFisse
              L20_3 = 0.7
              L21_3 = 5.0
              L22_3 = 150.0
              L23_3 = 10.0
              L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
              L9_3 = DrawLightWithRange
              L10_3 = L7_3.x
              L11_3 = L7_3.y
              L12_3 = L7_3.z
              L12_3 = L12_3 + 2.1
              L13_3 = 255
              L14_3 = 255
              L15_3 = 190
              L16_3 = 0.2
              L17_3 = 0.7
              L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            end
            L9_3 = 500.0
            if L8_3 > L9_3 then
              L9_3 = L6_3.o
              L10_3 = SetEntityAsMissionEntity
              L11_3 = L9_3
              L10_3(L11_3)
              L10_3 = DeleteEntity
              L11_3 = L9_3
              L10_3(L11_3)
              L10_3 = table
              L10_3 = L10_3.remove
              L11_3 = dummyObj
              L12_3 = L5_3
              L10_3(L11_3, L12_3)
              break
            end
            L9_3 = 2.5
            if L8_3 < L9_3 then
              L9_3 = DrawText3DCombat
              L10_3 = L7_3.x
              L11_3 = L7_3.y
              L12_3 = L7_3.z
              L12_3 = L12_3 + 0.3
              L13_3 = "~h~~y~"
              L14_3 = L6_3.health
              L15_3 = "%"
              L13_3 = L13_3 .. L14_3 .. L15_3
              L9_3(L10_3, L11_3, L12_3, L13_3)
              L9_3 = L6_3.lastAtk
              if not L9_3 then
                L9_3 = 0
              end
              L6_3.lastAtk = L9_3
              L9_3 = GetGameTimer
              L9_3 = L9_3()
              L10_3 = L6_3.lastAtk
              L10_3 = L9_3 - L10_3
              if L10_3 >= 77 then
                L10_3 = exports
                L10_3 = L10_3.striano_combat
                L11_3 = L10_3
                L10_3 = L10_3.inanim
                L10_3 = L10_3(L11_3)
                if L10_3 then
                  L10_3 = exports
                  L10_3 = L10_3.striano_combat
                  L11_3 = L10_3
                  L10_3 = L10_3.gethitted
                  L10_3 = L10_3(L11_3)
                  if L10_3 then
                    L6_3.lastAtk = L9_3
                    L10_3 = L6_3.health
                    L10_3 = L10_3 - 10
                    L6_3.health = L10_3
                    L10_3 = Sfoggiate
                    if L10_3 then
                      L10_3 = L6_3.health
                      L10_3 = L10_3 - 10
                      L6_3.health = L10_3
                    end
                    L10_3 = PlayEffect
                    L11_3 = "core"
                    L12_3 = "bul_wood_splinter"
                    L13_3 = vector3
                    L14_3 = L7_3.x
                    L15_3 = L7_3.y
                    L16_3 = L7_3.z
                    L16_3 = L16_3 + 1.0
                    L13_3 = L13_3(L14_3, L15_3, L16_3)
                    L14_3 = 1.5
                    L10_3(L11_3, L12_3, L13_3, L14_3)
                    L10_3 = L6_3.health
                    if L10_3 <= 0 then
                      L10_3 = L6_3.o
                      L11_3 = OnActiveDummy
                      L11_3()
                      L11_3 = table
                      L11_3 = L11_3.remove
                      L12_3 = dummyObj
                      L13_3 = L5_3
                      L11_3(L12_3, L13_3)
                      L11_3 = FreezeEntityPosition
                      L12_3 = L10_3
                      L13_3 = false
                      L11_3(L12_3, L13_3)
                      L11_3 = SetEntityVelocity
                      L12_3 = L10_3
                      L13_3 = 0.01
                      L14_3 = 0.01
                      L15_3 = 0.01
                      L11_3(L12_3, L13_3, L14_3, L15_3)
                      L11_3 = CreateThread
                      function L12_3()
                        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
                        L0_4 = Wait
                        L1_4 = 5000
                        L0_4(L1_4)
                        L0_4 = 255
                        L1_4 = 0
                        L2_4 = -10
                        for L3_4 = L0_4, L1_4, L2_4 do
                          L4_4 = DoesEntityExist
                          L5_4 = L10_3
                          L4_4 = L4_4(L5_4)
                          if not L4_4 then
                            return
                          end
                          L4_4 = SetEntityAlpha
                          L5_4 = L10_3
                          L6_4 = L3_4
                          L7_4 = false
                          L4_4(L5_4, L6_4, L7_4)
                          L4_4 = Wait
                          L5_4 = 25
                          L4_4(L5_4)
                        end
                        L0_4 = DoesEntityExist
                        L1_4 = L10_3
                        L0_4 = L0_4(L1_4)
                        if L0_4 then
                          L0_4 = GetEntityCoords
                          L1_4 = L10_3
                          L0_4 = L0_4(L1_4)
                          L1_4 = PlayEffect
                          L2_4 = "scr_agencyheistb"
                          L3_4 = "scr_agency3b_linger_smoke"
                          L4_4 = L0_4
                          L5_4 = 1.0
                          L6_4 = 0.8
                          L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
                          L1_4 = SetEntityAsMissionEntity
                          L2_4 = L10_3
                          L1_4(L2_4)
                          L1_4 = DeleteEntity
                          L2_4 = L10_3
                          L1_4(L2_4)
                        end
                      end
                      L11_3(L12_3)
                      break
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    loopDummyActive = false
  end
  L1_2(L2_2)
end
loopDummy = L2_1
L2_1 = {}
L3_1 = {}
L4_1 = 100
L5_1 = 3.0
L6_1 = 5000
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A1_2
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A2_2
  L7_2 = A0_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L8_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = 1.0
  L1_2 = L1_2 - A0_2
  L1_2 = L1_2 ^ 3
  L2_2 = 1.0
  L1_2 = L2_2 - L1_2
  return L1_2
end
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  L1_2 = L1_2 * A0_2
  return L1_2
end
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.cos
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 * A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 - 1.0
  L1_2 = -L1_2
  L1_2 = L1_2 / 2.0
  return L1_2
end
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = SetEntityRotation
  L5_2 = A0_2
  L6_2 = A1_2.x
  L6_2 = L6_2 + A2_2
  L7_2 = A1_2.y
  L7_2 = L7_2 + A3_2
  L8_2 = A1_2.z
  L9_2 = 2
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 1.0
  end
  L1_2 = 1.0
  L2_2 = 20.0
  L3_2 = 0.12
  L4_2 = 1.0
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L1_2
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = A0_2
  L9_2 = L2_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  A0_2 = L5_2
  L5_2 = A0_2 - L1_2
  L6_2 = L2_2 - L1_2
  L5_2 = L5_2 / L6_2
  L5_2 = L5_2 ^ 1.15
  L6_2 = L4_2 - L3_2
  L6_2 = L6_2 * L5_2
  L6_2 = L3_2 + L6_2
  return L6_2
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_12::
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2 or A1_2
  if not L2_2 then
    A1_2 = L4_1
  end
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 1
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  L2_2 = GetEntityRotation
  L3_2 = A0_2
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_1
  L4_2 = {}
  L4_2.entity = A0_2
  L4_2.health = A1_2
  L4_2.maxHealth = A1_2
  L4_2.dead = false
  L4_2.falling = false
  L5_2 = vector3
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = L2_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.baseRotation = L5_2
  L3_2[A0_2] = L4_2
  L3_2 = L3_1
  L4_2 = {}
  L5_2 = L2_1
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.baseRotation
  L4_2.baseRotation = L5_2
  L4_2.animationId = 0
  L3_2[A0_2] = L4_2
  L3_2 = FreezeEntityPosition
  L4_2 = A0_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
RegisterTrainingDummy = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.dead
    if not L3_2 then
      goto lbl_10
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_10::
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L2_1
    L3_2[A0_2] = nil
    L3_2 = L3_1
    L3_2[A0_2] = nil
    L3_2 = false
    return L3_2
  end
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 1.0
  end
  L3_2 = L7_1
  L4_2 = A1_2
  L5_2 = 0.1
  L6_2 = 3.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A1_2 = L3_2
  L3_2 = L3_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L4_2 = {}
    L5_2 = L2_2.baseRotation
    L4_2.baseRotation = L5_2
    L4_2.animationId = 0
    L3_2 = L4_2
    L4_2 = L3_1
    L4_2[A0_2] = L3_2
  end
  L4_2 = L3_2.animationId
  L4_2 = L4_2 + 1
  L3_2.animationId = L4_2
  L4_2 = L3_2.animationId
  L5_2 = L3_2.baseRotation
  L6_2 = 18.0 * A1_2
  L7_2 = 2.5 * A1_2
  L8_2 = 100
  L9_2 = 650
  L10_2 = 2.3
  L11_2 = L2_1
  L11_2 = L11_2[A0_2]
  L12_2 = DoesEntityExist
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  if L12_2 then
    L12_2 = L11_2.health
    if L12_2 > 0 then
      L12_2 = testo3d2
      L13_2 = "~h~~r~"
      L14_2 = L11_2.health
      L13_2 = L13_2 .. L14_2
      L14_2 = A0_2
      L12_2(L13_2, L14_2)
    end
  end
  L12_2 = CreateThread
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    while true do
      L1_3 = DoesEntityExist
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        break
      end
      L1_3 = L3_2.animationId
      L2_3 = L4_2
      if L1_3 ~= L2_3 then
        return
      end
      L1_3 = L2_2.dead
      if L1_3 then
        return
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 - L0_3
      L2_3 = L7_1
      L3_3 = L8_2
      L3_3 = L1_3 / L3_3
      L4_3 = 0.0
      L5_3 = 1.0
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L3_3 = L9_1
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = L8_1
      L5_3 = 0.0
      L6_3 = L6_2
      L7_3 = L3_3
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = math
      L5_3 = L5_3.sin
      L6_3 = math
      L6_3 = L6_3.pi
      L6_3 = L2_3 * L6_3
      L5_3 = L5_3(L6_3)
      L6_3 = L7_2
      L5_3 = L5_3 * L6_3
      L6_3 = L12_1
      L7_3 = A0_2
      L8_3 = L5_2
      L9_3 = L4_3
      L10_3 = L5_3
      L6_3(L7_3, L8_3, L9_3, L10_3)
      if L2_3 >= 1.0 then
        break
      end
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
    end
    L1_3 = L3_2.animationId
    L2_3 = L4_2
    if L1_3 == L2_3 then
      L1_3 = L2_2.dead
      if not L1_3 then
        goto lbl_66
      end
    end
    do return end
    ::lbl_66::
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L0_3 = L1_3
    while true do
      L1_3 = DoesEntityExist
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        break
      end
      L1_3 = L3_2.animationId
      L2_3 = L4_2
      if L1_3 ~= L2_3 then
        return
      end
      L1_3 = L2_2.dead
      if L1_3 then
        return
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 - L0_3
      L2_3 = L7_1
      L3_3 = L9_2
      L3_3 = L1_3 / L3_3
      L4_3 = 0.0
      L5_3 = 1.0
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L3_3 = L11_1
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = 1.0
      L4_3 = L4_3 - L3_3
      L5_3 = math
      L5_3 = L5_3.cos
      L6_3 = math
      L6_3 = L6_3.pi
      L6_3 = L2_3 * L6_3
      L6_3 = L6_3 * 2.0
      L7_3 = L10_2
      L6_3 = L6_3 * L7_3
      L5_3 = L5_3(L6_3)
      L6_3 = L6_2
      L6_3 = L6_3 * L5_3
      L6_3 = L6_3 * L4_3
      L7_3 = L7_2
      L8_3 = math
      L8_3 = L8_3.sin
      L9_3 = math
      L9_3 = L9_3.pi
      L9_3 = L2_3 * L9_3
      L9_3 = L9_3 * 2.0
      L10_3 = L10_2
      L9_3 = L9_3 * L10_3
      L8_3 = L8_3(L9_3)
      L7_3 = L7_3 * L8_3
      L7_3 = L7_3 * L4_3
      L8_3 = L12_1
      L9_3 = A0_2
      L10_3 = L5_2
      L11_3 = L6_3
      L12_3 = L7_3
      L8_3(L9_3, L10_3, L11_3, L12_3)
      if L2_3 >= 1.0 then
        break
      end
      L8_3 = Wait
      L9_3 = 0
      L8_3(L9_3)
    end
    L1_3 = DoesEntityExist
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = L3_2.animationId
      L2_3 = L4_2
      if L1_3 == L2_3 then
        L1_3 = L2_2.dead
        if not L1_3 then
          L1_3 = L12_1
          L2_3 = A0_2
          L3_3 = L5_2
          L4_3 = 0.0
          L5_3 = 0.0
          L1_3(L2_3, L3_3, L4_3, L5_3)
        end
      end
    end
  end
  L12_2(L13_2)
  L12_2 = true
  return L12_2
end
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L3_2.dead
    if not L4_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L4_2 = DoesEntityExist
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L3_2.dead = true
  L4_2 = L3_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L5_2 = L4_2.animationId
    if not L5_2 then
      L5_2 = 0
    end
    L5_2 = L5_2 + 1
    L4_2.animationId = L5_2
  end
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  A2_2 = L5_2 or A2_2
  if not L5_2 then
    A2_2 = 1.0
  end
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0.5
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = A2_2
  L9_2 = 2.5
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  A2_2 = L5_2
  if not A1_2 then
    L5_2 = GetEntityForwardVector
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    A1_2 = L5_2
  end
  L5_2 = math
  L5_2 = L5_2.sqrt
  L6_2 = A1_2.x
  L7_2 = A1_2.x
  L6_2 = L6_2 * L7_2
  L7_2 = A1_2.y
  L8_2 = A1_2.y
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = 0.001
  if L5_2 <= L6_2 then
    L6_2 = GetEntityForwardVector
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    A1_2 = L6_2
    L6_2 = math
    L6_2 = L6_2.sqrt
    L7_2 = A1_2.x
    L8_2 = A1_2.x
    L7_2 = L7_2 * L8_2
    L8_2 = A1_2.y
    L9_2 = A1_2.y
    L8_2 = L8_2 * L9_2
    L7_2 = L7_2 + L8_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = 0.001
  if L5_2 <= L6_2 then
    L5_2 = 1.0
  end
  L6_2 = A1_2.x
  L6_2 = L6_2 / L5_2
  L7_2 = A1_2.y
  L7_2 = L7_2 / L5_2
  L8_2 = DetachEntity
  L9_2 = A0_2
  L10_2 = true
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityAsMissionEntity
  L9_2 = A0_2
  L10_2 = true
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityCollision
  L9_2 = A0_2
  L10_2 = true
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityDynamic
  L9_2 = A0_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = FreezeEntityPosition
  L9_2 = A0_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = ActivatePhysics
  L9_2 = A0_2
  L8_2(L9_2)
  L8_2 = SetEntityVelocity
  L9_2 = A0_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = Wait
  L9_2 = 25
  L8_2(L9_2)
  L8_2 = 8.0 * A2_2
  L9_2 = 1.2 * A2_2
  L10_2 = 0.9
  L11_2 = ApplyForceToEntity
  L12_2 = A0_2
  L13_2 = 1
  L14_2 = L6_2 * L8_2
  L15_2 = L7_2 * L8_2
  L16_2 = L9_2
  L17_2 = 0.0
  L18_2 = 0.0
  L19_2 = L10_2
  L20_2 = 0
  L21_2 = false
  L22_2 = false
  L23_2 = true
  L24_2 = false
  L25_2 = true
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L11_2 = CreateThread
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = Wait
    L1_3 = 5000
    L0_3(L1_3)
    L0_3 = DoesEntityExist
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L1_3 = A0_2
      L0_3 = L2_1
      L0_3[L1_3] = nil
      L1_3 = A0_2
      L0_3 = L3_1
      L0_3[L1_3] = nil
      return
    end
    L0_3 = SetEntityVelocity
    L1_3 = A0_2
    L2_3 = 0.0
    L3_3 = 0.0
    L4_3 = 0.0
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = FreezeEntityPosition
    L1_3 = A0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = 255
    L1_3 = 0
    L2_3 = -10
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = DoesEntityExist
      L5_3 = A0_2
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        break
      end
      L4_3 = SetEntityAlpha
      L5_3 = A0_2
      L6_3 = L3_3
      L7_3 = false
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = Wait
      L5_3 = 35
      L4_3(L5_3)
    end
    L0_3 = DoesEntityExist
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = DeleteEntity
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L1_3 = A0_2
    L0_3 = L2_1
    L0_3[L1_3] = nil
    L1_3 = A0_2
    L0_3 = L3_1
    L0_3[L1_3] = nil
  end
  L11_2(L12_2)
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L3_2.dead
    if not L4_2 then
      goto lbl_10
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_10::
  L4_2 = DoesEntityExist
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L2_1
    L4_2[A0_2] = nil
    L4_2 = L3_1
    L4_2[A0_2] = nil
    L4_2 = false
    return L4_2
  end
  L4_2 = tonumber
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2 or A1_2
  if not L4_2 then
    A1_2 = 1
  end
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 1
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A1_2 = L4_2
  L4_2 = L13_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0
  L7_2 = L3_2.health
  L7_2 = L7_2 - A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L3_2.health = L5_2
  L5_2 = GetEntityCoords
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = PlayEffect
  L7_2 = "core"
  L8_2 = "bul_wood_splinter"
  L9_2 = vector3
  L10_2 = L5_2.x
  L11_2 = L5_2.y
  L12_2 = L5_2.z
  L12_2 = L12_2 + 1.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = 1.5
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2.health
  if L6_2 <= 0 then
    L6_2 = inHeavyCombat
    if L6_2 then
      L6_2 = Wait
      L7_2 = 125
      L6_2(L7_2)
      L6_2 = PlayEffect
      L7_2 = "des_french_doors"
      L8_2 = "ent_ray_fam3_glass_break"
      L9_2 = GetEntityCoords
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      L10_2 = 1.2
      L11_2 = 0.9
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = L15_1
      L7_2 = A0_2
      L8_2 = A2_2
      L6_2(L7_2, L8_2)
  end
  else
    L6_2 = L14_1
    L7_2 = A0_2
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = true
  return L6_2
end
function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  if not A0_2 then
    L5_2 = GetEntityCoords
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    A0_2 = L5_2
  end
  if not A1_2 then
    L5_2 = GetEntityForwardVector
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    A1_2 = L5_2
  end
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  A2_2 = L5_2 or A2_2
  if not L5_2 then
    A2_2 = L5_1
  end
  L5_2 = tonumber
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2 or A3_2
  if not L5_2 then
    A3_2 = 1
  end
  L5_2 = 0
  L6_2 = pairs
  L7_2 = L2_1
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = DoesEntityExist
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    if not L12_2 then
      L12_2 = L2_1
      L12_2[L10_2] = nil
      L12_2 = L3_1
      L12_2[L10_2] = nil
    else
      L12_2 = L11_2.dead
      if not L12_2 then
        L12_2 = GetEntityCoords
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L13_2 = L12_2 - A0_2
        L14_2 = #L13_2
        if A2_2 >= L14_2 then
          L15_2 = nil
          L16_2 = 0.001
          if L14_2 > L16_2 then
            L15_2 = L13_2 / L14_2
          else
            L15_2 = A1_2
          end
          L16_2 = L15_2.x
          L17_2 = A1_2.x
          L16_2 = L16_2 * L17_2
          L17_2 = L15_2.y
          L18_2 = A1_2.y
          L17_2 = L17_2 * L18_2
          L16_2 = L16_2 + L17_2
          L17_2 = L15_2.z
          L18_2 = A1_2.z
          L17_2 = L17_2 * L18_2
          L16_2 = L16_2 + L17_2
          L17_2 = 0.25
          if L16_2 >= L17_2 then
            L17_2 = L16_1
            L18_2 = L10_2
            L19_2 = A3_2
            L20_2 = A1_2
            L17_2(L18_2, L19_2, L20_2)
            L5_2 = L5_2 + 1
          end
        end
      end
    end
  end
  return L5_2
end
HitNearbyTrainingDummies = L17_1
