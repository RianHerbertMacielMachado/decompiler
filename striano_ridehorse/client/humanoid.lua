local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = IsRidingAnimal
  if not L1_2 then
    IsRidingAnimal = true
    L1_2 = StartOrbitCam
    L2_2 = vector3
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.5
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = Animal
    L3_2 = L3_2.Handle
    L1_2(L2_2, L3_2)
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = AttachedEntity2
    if nil == L2_2 then
      L2_2 = GetEntityAttachedTo
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      AttachedEntity2 = L2_2
    end
    L2_2 = false
    L3_2 = DoesEntityExist
    L4_2 = AttachedEntity2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = ipairs
      L4_2 = AnimalsModel
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2.superJumpPower
        if nil ~= L9_2 then
          L9_2 = L8_2.superJumpPower
          superJump = L9_2
        else
          superJump = nil
        end
      end
    end
    L3_2 = dicBase
    L4_2 = HasAnimDictLoaded
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = RequestAnimDict
      L5_2 = L3_2
      L4_2(L5_2)
      while true do
        L4_2 = HasAnimDictLoaded
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 10
        L4_2(L5_2)
      end
    end
    L4_2 = dicFast
    L4_2 = #L4_2
    if L4_2 > 0 then
      L4_2 = dicFast
      L5_2 = HasAnimDictLoaded
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = RequestAnimDict
        L6_2 = L4_2
        L5_2(L6_2)
        while true do
          L5_2 = HasAnimDictLoaded
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          if L5_2 then
            break
          end
          L5_2 = Wait
          L6_2 = 10
          L5_2(L6_2)
        end
      end
    end
    L4_2 = DisablePlayerFiring
    L5_2 = PlayerId
    L5_2 = L5_2()
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetEnableHandcuffs
    L5_2 = L1_2
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetPedCanPlayGestureAnims
    L5_2 = L1_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetPedCanPlayAmbientAnims
    L5_2 = L1_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetPedCanSwitchWeapon
    L5_2 = L1_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetPedCurrentWeaponVisible
    L5_2 = L1_2
    L6_2 = true
    L7_2 = true
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = ResetPedWeaponMovementClipset
    L5_2 = L1_2
    L4_2(L5_2)
    L4_2 = ResetPedStrafeClipset
    L5_2 = L1_2
    L4_2(L5_2)
    L4_2 = SetPedDiesInWater
    L5_2 = AttachedEntity
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetPedDiesInstantlyInWater
    L5_2 = AttachedEntity
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetPedConfigFlag
    L5_2 = AttachedEntity
    L6_2 = 8
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetPedConfigFlag
    L5_2 = AttachedEntity
    L6_2 = 54
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetPedConfigFlag
    L5_2 = AttachedEntity
    L6_2 = 164
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetPedConfigFlag
    L5_2 = AttachedEntity
    L6_2 = 160
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = Animal
        L0_3 = L0_3.Handle
        if nil == L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = mostraInfo
        if L0_3 then
          L0_3 = eroVeloce
          if not L0_3 then
            L0_3 = TutorialHorseInfo
            L0_3()
          else
            L0_3 = TutorialHorseInfo
            L0_3()
          end
        end
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 22
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlPressed
          L1_3 = 0
          L2_3 = 22
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            goto lbl_36
          end
        end
        L0_3 = isJumping
        if not L0_3 then
          isJumping = true
          goto lbl_37
          ::lbl_36::
          isJumping = false
        end
        ::lbl_37::
      end
    end
    L4_2(L5_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3
      L0_3 = dhorseprint
      L1_3 = "Inizio il Loop Riding!"
      L0_3(L1_3)
      while true do
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = Wait
        L2_3 = 9
        L1_3(L2_3)
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        L1_3 = L1_3 - L0_3
        L1_3 = L1_3 / 1000
        L1_3 = L1_3 * 65
        L2_3 = IsEntityAttached
        L3_3 = L1_2
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          AnimalChecksOkay = false
          L2_3 = "laddersbase"
          L3_3 = HasAnimDictLoaded
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if not L3_3 then
            L3_3 = RequestAnimDict
            L4_3 = L2_3
            L3_3(L4_3)
            while true do
              L3_3 = HasAnimDictLoaded
              L4_3 = L2_3
              L3_3 = L3_3(L4_3)
              if L3_3 then
                break
              end
              L3_3 = Wait
              L4_3 = 10
              L3_3(L4_3)
            end
          end
          L3_3 = TaskPlayAnim
          L4_3 = L1_2
          L5_3 = "laddersbase"
          L6_3 = "get_off_bottom_front_stand"
          L7_3 = 8.0
          L8_3 = 8.0
          L9_3 = 1000
          L10_3 = 0
          L11_3 = 0
          L12_3 = false
          L13_3 = false
          L14_3 = false
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L3_3 = Wait
          L4_3 = 800
          L3_3(L4_3)
          L3_3 = ClearPedTasks
          L4_3 = L1_2
          L3_3(L4_3)
          L3_3 = OnPlayerLeaveAnimal
          L3_3()
          return
        end
        L2_3 = IsRidingAnimal
        if L2_3 then
          L2_3 = IsPedRagdoll
          L3_3 = L1_2
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = AttachedEntity
            if nil == L2_3 then
              L2_3 = GetEntityAttachedTo
              L3_3 = L1_2
              L2_3 = L2_3(L3_3)
              AttachedEntity = L2_3
            end
            L2_3 = IsControlJustPressed
            L3_3 = 0
            L4_3 = 23
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = mostraInfo
              L2_3 = not L2_3
              mostraInfo = L2_3
            end
            L2_3 = DoesEntityExist
            L3_3 = AttachedEntity
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              goto lbl_1126
            end
            AnimalChecksOkay = true
            L2_3 = IsPedFatallyInjured
            L3_3 = AttachedEntity
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = IsPedFatallyInjured
              L3_3 = L1_2
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = IsPedSwimming
                L3_3 = AttachedEntity
                L2_3 = L2_3(L3_3)
                if not L2_3 then
                  L2_3 = IsPedSwimmingUnderWater
                  L3_3 = AttachedEntity
                  L2_3 = L2_3(L3_3)
                  if not L2_3 then
                    goto lbl_125
                  end
                end
              end
            end
            AnimalChecksOkay = false
            L2_3 = SetPedCanRagdoll
            L3_3 = AttachedEntity
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = DropPlayerFromAnimal
            L3_3 = AttachedEntity
            L2_3(L3_3)
            L2_3 = dhorseprint
            L3_3 = "Chiudo per cavallo morto!"
            L2_3(L3_3)
            do return end
            ::lbl_125::
            L2_3 = IsEntityPlayingAnim
            L3_3 = L1_2
            L4_3 = "laddersbase"
            L5_3 = "get_off_bottom_front_stand"
            L6_3 = 3
            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
            if not L2_3 then
              L2_3 = increasedflag
              L3_3 = faiAnim
              L4_3 = dicBase
              L5_3 = animBase
              L6_3 = -1
              L7_3 = L2_3
              L3_3(L4_3, L5_3, L6_3, L7_3)
              L3_3 = IsControlPressed
              L4_3 = 0
              L5_3 = 25
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                L3_3 = IsDisabledControlPressed
                L4_3 = 0
                L5_3 = 25
                L3_3 = L3_3(L4_3, L5_3)
                if not L3_3 then
                  L3_3 = IsPedMoving
                  L4_3 = AttachedEntity
                  L3_3 = L3_3(L4_3)
                  if L3_3 then
                    L3_3 = faiAnim
                    L4_3 = "cover@move@base@rpg"
                    L5_3 = "high_idle_l"
                    L6_3 = -1
                    L7_3 = 49
                    L3_3(L4_3, L5_3, L6_3, L7_3)
                  end
              end
              else
                L3_3 = AttachedEntity
                if nil ~= L3_3 then
                  L3_3 = AttachedEntity
                  if 0 ~= L3_3 then
                    L3_3 = DoesEntityExist
                    L4_3 = AttachedEntity
                    L3_3 = L3_3(L4_3)
                    if L3_3 then
                      L3_3 = IsPedMoving
                      L4_3 = AttachedEntity
                      L3_3 = L3_3(L4_3)
                      if L3_3 then
                        L3_3 = eroVeloce
                        if L3_3 then
                          L3_3 = GetGameplayCamRot
                          L4_3 = 2
                          L3_3 = L3_3(L4_3)
                          L4_3 = cam
                          if nil ~= L4_3 then
                            L4_3 = GetCamRot
                            L5_3 = cam
                            L6_3 = 2
                            L4_3 = L4_3(L5_3, L6_3)
                            L3_3 = L4_3
                          end
                          L4_3 = L3_3.z
                          L5_3 = GetEntityHeading
                          L6_3 = AttachedEntity
                          L5_3 = L5_3(L6_3)
                          L6_3 = L4_3 - L5_3
                          L6_3 = L6_3 + 360.0
                          L6_3 = L6_3 % 360.0
                          L7_3 = 180.0
                          if L6_3 > L7_3 then
                            L6_3 = L6_3 - 360.0
                          end
                          L7_3 = 3.0
                          L8_3 = math
                          L8_3 = L8_3.abs
                          L9_3 = L6_3
                          L8_3 = L8_3(L9_3)
                          L9_3 = 0.3
                          if L8_3 > L9_3 then
                            L8_3 = math
                            L8_3 = L8_3.min
                            L9_3 = L7_3
                            L10_3 = math
                            L10_3 = L10_3.abs
                            L11_3 = L6_3
                            L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L10_3(L11_3)
                            L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                            if L6_3 > 0 then
                              L9_3 = 1
                              if L9_3 then
                                goto lbl_231
                              end
                            end
                            L9_3 = -1
                            ::lbl_231::
                            L10_3 = L8_3 * L9_3
                            L10_3 = L5_3 + L10_3
                            L11_3 = SetEntityHeading
                            L12_3 = AttachedEntity
                            L13_3 = L10_3
                            L11_3(L12_3, L13_3)
                            L11_3 = syncRot
                            L12_3 = AttachedEntity
                            L11_3(L12_3)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            L2_3 = DisableControlAction
            L3_3 = 0
            L4_3 = 73
            L2_3(L3_3, L4_3)
            L2_3 = DisableControlAction
            L3_3 = 1
            L4_3 = 73
            L2_3(L3_3, L4_3)
            L2_3 = DisableControlAction
            L3_3 = 2
            L4_3 = 73
            L2_3(L3_3, L4_3)
            L2_3 = isJumping
            if L2_3 then
              eroVeloce = false
              backward = false
              pedVelocizzato = false
              L2_3 = SetPedCanRagdoll
              L3_3 = AttachedEntity
              L4_3 = false
              L2_3(L3_3, L4_3)
              L2_3 = ClearPedTasksImmediately
              L3_3 = AttachedEntity
              L2_3(L3_3)
              L2_3 = ClearPedSecondaryTask
              L3_3 = AttachedEntity
              L2_3(L3_3)
              L2_3 = ClearPedTasks
              L3_3 = AttachedEntity
              L2_3(L3_3)
              L2_3 = TaskJump
              L3_3 = AttachedEntity
              L2_3(L3_3)
              L2_3 = superJump
              if nil ~= L2_3 then
                L2_3 = MakeNpcSuperJump
                L3_3 = AttachedEntity
                L4_3 = superJump
                L2_3(L3_3, L4_3)
              end
            end
            L2_3 = AnimalChecksOkay
            if not L2_3 then
              goto lbl_1126
            end
            L2_3 = Animal
            L2_3 = L2_3.InControl
            if not L2_3 then
              goto lbl_1126
            end
            L2_3 = WhileOnHorse
            L2_3()
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 25
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsDisabledControlPressed
              L3_3 = 0
              L4_3 = 25
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = 21
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = 21
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = IsControlPressed
                    L3_3 = 0
                    L4_3 = LeftKeyHorseRot
                    L2_3 = L2_3(L3_3, L4_3)
                    if L2_3 then
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = RightKeyHorseRot
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        L2_3 = 180.0
                        L3_3 = 0.03
                        L4_3 = IsDisabledControlPressed
                        L5_3 = 0
                        L6_3 = RunHorseKey
                        L4_3 = L4_3(L5_3, L6_3)
                        if not L4_3 then
                          L4_3 = IsControlPressed
                          L5_3 = 0
                          L6_3 = RunHorseKey
                          L4_3 = L4_3(L5_3, L6_3)
                          if not L4_3 then
                            L4_3 = eroVeloce
                            if not L4_3 then
                              goto lbl_346
                            end
                          end
                        end
                        L2_3 = 220.0
                        ::lbl_346::
                        L4_3 = GetFrameTime
                        L4_3 = L4_3()
                        if L3_3 < L4_3 then
                          L4_3 = L3_3
                        end
                        L5_3 = GetEntityRotation
                        L6_3 = Animal
                        L6_3 = L6_3.Handle
                        L7_3 = 2
                        L5_3 = L5_3(L6_3, L7_3)
                        L6_3 = backward
                        if L6_3 then
                          L6_3 = -1.0
                          if L6_3 then
                            goto lbl_363
                          end
                        end
                        L6_3 = 1.0
                        ::lbl_363::
                        L7_3 = L5_3.z
                        L8_3 = L6_3 * L2_3
                        L8_3 = L8_3 * L4_3
                        L7_3 = L7_3 + L8_3
                        L7_3 = L7_3 % 360.0
                        L8_3 = SetEntityHeading
                        L9_3 = Animal
                        L9_3 = L9_3.Handle
                        L10_3 = L7_3
                        L8_3(L9_3, L10_3)
                        L8_3 = SetEntityRotation
                        L9_3 = Animal
                        L9_3 = L9_3.Handle
                        L10_3 = L5_3.x
                        L11_3 = L5_3.y
                        L12_3 = L7_3
                        L13_3 = 2
                        L14_3 = false
                        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                        L8_3 = syncRot
                        L9_3 = Animal
                        L9_3 = L9_3.Handle
                        L8_3(L9_3)
                        L8_3 = IsControlPressed
                        L9_3 = 0
                        L10_3 = RightKeyHorseRot
                        L8_3 = L8_3(L9_3, L10_3)
                        if not L8_3 then
                          L8_3 = eroVeloce
                          if not L8_3 then
                            L8_3 = IsControlPressed
                            L9_3 = 0
                            L10_3 = RightKeyHorseRot
                            L8_3 = L8_3(L9_3, L10_3)
                            if not L8_3 then
                              L8_3 = IsControlPressed
                              L9_3 = 0
                              L10_3 = GoForwardKey
                              L8_3 = L8_3(L9_3, L10_3)
                              if not L8_3 then
                                L8_3 = turnAnim_L
                                L8_3 = L8_3.a
                                L9_3 = turnAnim_L
                                L9_3 = L9_3.b
                                L10_3 = HasAnimDictLoaded
                                L11_3 = L8_3
                                L10_3 = L10_3(L11_3)
                                if not L10_3 then
                                  L10_3 = RequestAnimDict
                                  L11_3 = L8_3
                                  L10_3(L11_3)
                                  while true do
                                    L10_3 = HasAnimDictLoaded
                                    L11_3 = L8_3
                                    L10_3 = L10_3(L11_3)
                                    if L10_3 then
                                      break
                                    end
                                    L10_3 = Wait
                                    L11_3 = 10
                                    L10_3(L11_3)
                                  end
                                end
                                L10_3 = IsEntityPlayingAnim
                                L11_3 = Animal
                                L11_3 = L11_3.Handle
                                L12_3 = L8_3
                                L13_3 = L9_3
                                L14_3 = 3
                                L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
                                if not L10_3 then
                                  L10_3 = TaskPlayAnim
                                  L11_3 = Animal
                                  L11_3 = L11_3.Handle
                                  L12_3 = L8_3
                                  L13_3 = L9_3
                                  L14_3 = 2.4
                                  L15_3 = 2.4
                                  L16_3 = 700
                                  L17_3 = 1
                                  L18_3 = 0
                                  L19_3 = false
                                  L20_3 = false
                                  L21_3 = false
                                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    L2_3 = IsControlJustReleased
                    L3_3 = 0
                    L4_3 = LeftKeyHorseRot
                    L2_3 = L2_3(L3_3, L4_3)
                    if L2_3 then
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = GoForwardKey
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        L2_3 = eroVeloce
                        if not L2_3 then
                          L2_3 = IsControlPressed
                          L3_3 = 0
                          L4_3 = 21
                          L2_3 = L2_3(L3_3, L4_3)
                          if not L2_3 then
                            L2_3 = IsDisabledControlPressed
                            L3_3 = 0
                            L4_3 = 21
                            L2_3 = L2_3(L3_3, L4_3)
                            if not L2_3 then
                              L2_3 = ResetCavalloMove
                              L3_3 = Animal
                              L3_3 = L3_3.Handle
                              L2_3(L3_3)
                            end
                          end
                        end
                      end
                    end
                    L2_3 = IsControlPressed
                    L3_3 = 0
                    L4_3 = RightKeyHorseRot
                    L2_3 = L2_3(L3_3, L4_3)
                    if L2_3 then
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = LeftKeyHorseRot
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        L2_3 = IsControlPressed
                        L3_3 = 0
                        L4_3 = 21
                        L2_3 = L2_3(L3_3, L4_3)
                        if not L2_3 then
                          L2_3 = IsDisabledControlPressed
                          L3_3 = 0
                          L4_3 = 21
                          L2_3 = L2_3(L3_3, L4_3)
                          if not L2_3 then
                            L2_3 = 180.0
                            L3_3 = 0.03
                            L4_3 = IsDisabledControlPressed
                            L5_3 = 0
                            L6_3 = RunHorseKey
                            L4_3 = L4_3(L5_3, L6_3)
                            if not L4_3 then
                              L4_3 = IsControlPressed
                              L5_3 = 0
                              L6_3 = RunHorseKey
                              L4_3 = L4_3(L5_3, L6_3)
                              if not L4_3 then
                                L4_3 = eroVeloce
                                if not L4_3 then
                                  goto lbl_528
                                end
                              end
                            end
                            L2_3 = 220.0
                            ::lbl_528::
                            L4_3 = GetFrameTime
                            L4_3 = L4_3()
                            if L3_3 < L4_3 then
                              L4_3 = L3_3
                            end
                            L5_3 = GetEntityRotation
                            L6_3 = Animal
                            L6_3 = L6_3.Handle
                            L7_3 = 2
                            L5_3 = L5_3(L6_3, L7_3)
                            L6_3 = nil
                            L7_3 = backward
                            if L7_3 then
                              L6_3 = 1.0
                            else
                              L6_3 = -1.0
                            end
                            L7_3 = L5_3.z
                            L8_3 = L6_3 * L2_3
                            L8_3 = L8_3 * L4_3
                            L7_3 = L7_3 + L8_3
                            L7_3 = L7_3 % 360.0
                            L8_3 = SetEntityHeading
                            L9_3 = Animal
                            L9_3 = L9_3.Handle
                            L10_3 = L7_3
                            L8_3(L9_3, L10_3)
                            L8_3 = SetEntityRotation
                            L9_3 = Animal
                            L9_3 = L9_3.Handle
                            L10_3 = L5_3.x
                            L11_3 = L5_3.y
                            L12_3 = L7_3
                            L13_3 = 2
                            L14_3 = false
                            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                            L8_3 = syncRot
                            L9_3 = Animal
                            L9_3 = L9_3.Handle
                            L8_3(L9_3)
                            L8_3 = IsControlPressed
                            L9_3 = 0
                            L10_3 = LeftKeyHorseRot
                            L8_3 = L8_3(L9_3, L10_3)
                            if not L8_3 then
                              L8_3 = eroVeloce
                              if not L8_3 then
                                L8_3 = IsControlPressed
                                L9_3 = 0
                                L10_3 = LeftKeyHorseRot
                                L8_3 = L8_3(L9_3, L10_3)
                                if not L8_3 then
                                  L8_3 = IsControlPressed
                                  L9_3 = 0
                                  L10_3 = GoForwardKey
                                  L8_3 = L8_3(L9_3, L10_3)
                                  if not L8_3 then
                                    L8_3 = turnAnim_R
                                    L8_3 = L8_3.a
                                    L9_3 = turnAnim_R
                                    L9_3 = L9_3.b
                                    L10_3 = HasAnimDictLoaded
                                    L11_3 = L8_3
                                    L10_3 = L10_3(L11_3)
                                    if not L10_3 then
                                      L10_3 = RequestAnimDict
                                      L11_3 = L8_3
                                      L10_3(L11_3)
                                      while true do
                                        L10_3 = HasAnimDictLoaded
                                        L11_3 = L8_3
                                        L10_3 = L10_3(L11_3)
                                        if L10_3 then
                                          break
                                        end
                                        L10_3 = Wait
                                        L11_3 = 10
                                        L10_3(L11_3)
                                      end
                                    end
                                    L10_3 = IsEntityPlayingAnim
                                    L11_3 = Animal
                                    L11_3 = L11_3.Handle
                                    L12_3 = L8_3
                                    L13_3 = L9_3
                                    L14_3 = 3
                                    L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
                                    if not L10_3 then
                                      L10_3 = TaskPlayAnim
                                      L11_3 = Animal
                                      L11_3 = L11_3.Handle
                                      L12_3 = L8_3
                                      L13_3 = L9_3
                                      L14_3 = 2.4
                                      L15_3 = 2.4
                                      L16_3 = 700
                                      L17_3 = 1
                                      L18_3 = 0
                                      L19_3 = false
                                      L20_3 = false
                                      L21_3 = false
                                      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    L2_3 = IsControlJustReleased
                    L3_3 = 0
                    L4_3 = RightKeyHorse
                    L2_3 = L2_3(L3_3, L4_3)
                    if L2_3 then
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = GoForwardKey
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        L2_3 = eroVeloce
                        if not L2_3 then
                          L2_3 = IsControlPressed
                          L3_3 = 0
                          L4_3 = 21
                          L2_3 = L2_3(L3_3, L4_3)
                          if not L2_3 then
                            L2_3 = IsDisabledControlPressed
                            L3_3 = 0
                            L4_3 = 21
                            L2_3 = L2_3(L3_3, L4_3)
                            if not L2_3 then
                              L2_3 = ResetCavalloMove
                              L3_3 = Animal
                              L3_3 = L3_3.Handle
                              L2_3(L3_3)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            L2_3 = eroVeloce
            if not L2_3 then
              L2_3 = backward
              if not L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = RunHorseKey
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsControlPressed
                  L3_3 = 0
                  L4_3 = GoForwardKey
                  L2_3 = L2_3(L3_3, L4_3)
                  if L2_3 then
                    L2_3 = IsControlPressed
                    L3_3 = 0
                    L4_3 = 210
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      L2_3 = IsDisabledControlPressed
                      L3_3 = 0
                      L4_3 = 45
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        L2_3 = animBaseAnimale
                        L2_3 = L2_3.a
                        L3_3 = animBaseAnimale
                        L3_3 = L3_3.b
                        L4_3 = IsEntityPlayingAnim
                        L5_3 = Animal
                        L5_3 = L5_3.Handle
                        L6_3 = L2_3
                        L7_3 = L3_3
                        L8_3 = 3
                        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                        if not L4_3 then
                          L4_3 = HasAnimDictLoaded
                          L5_3 = L2_3
                          L4_3 = L4_3(L5_3)
                          if not L4_3 then
                            L4_3 = RequestAnimDict
                            L5_3 = L2_3
                            L4_3(L5_3)
                            while true do
                              L4_3 = HasAnimDictLoaded
                              L5_3 = L2_3
                              L4_3 = L4_3(L5_3)
                              if L4_3 then
                                break
                              end
                              L4_3 = Wait
                              L5_3 = 10
                              L4_3(L5_3)
                            end
                          end
                          L4_3 = TaskPlayAnim
                          L5_3 = Animal
                          L5_3 = L5_3.Handle
                          L6_3 = L2_3
                          L7_3 = L3_3
                          L8_3 = 3.0
                          L9_3 = 3.0
                          L10_3 = -1
                          L11_3 = 1
                          L12_3 = 0
                          L13_3 = false
                          L14_3 = false
                          L15_3 = false
                          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                        end
                        L4_3 = GetControlNormal
                        L5_3 = 0
                        L6_3 = RightKeyHorse
                        L4_3 = L4_3(L5_3, L6_3)
                        L5_3 = GetControlNormal
                        L6_3 = 0
                        L7_3 = LeftKeyHorse
                        L5_3 = L5_3(L6_3, L7_3)
                        L6_3 = GetOffsetFromEntityInWorldCoords
                        L7_3 = Animal
                        L7_3 = L7_3.Handle
                        L8_3 = L4_3
                        L9_3 = L5_3 * -1.0
                        L9_3 = L9_3 * 0.5
                        L10_3 = -0.5
                        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                        L7_3 = TaskLookAtCoord
                        L8_3 = L1_2
                        L9_3 = L6_3.x
                        L10_3 = L6_3.y
                        L11_3 = L6_3.z
                        L12_3 = 1000
                        L13_3 = 0
                        L14_3 = 2
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                        L7_3 = TaskLookAtCoord
                        L8_3 = Animal
                        L8_3 = L8_3.Handle
                        L9_3 = L6_3.x
                        L10_3 = L6_3.y
                        L11_3 = L6_3.z
                        L12_3 = 1000
                        L13_3 = 0
                        L14_3 = 2
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                        L7_3 = horsedebug
                        if L7_3 then
                          L7_3 = GetOffsetFromEntityInWorldCoords
                          L8_3 = Animal
                          L8_3 = L8_3.Handle
                          L9_3 = 0.0
                          L10_3 = Range
                          L10_3 = L10_3 + 20.5
                          L11_3 = -0.5
                          L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                          L8_3 = DrawMarker
                          L9_3 = 1
                          L10_3 = L7_3.x
                          L11_3 = L7_3.y
                          L12_3 = L7_3.z
                          L13_3 = 0.0
                          L14_3 = 0.0
                          L15_3 = 0.0
                          L16_3 = 0
                          L17_3 = 0.0
                          L18_3 = 0.0
                          L19_3 = 0.05
                          L20_3 = 0.05
                          L21_3 = 2.0
                          L22_3 = 255
                          L23_3 = 255
                          L24_3 = 255
                          L25_3 = 255
                          L26_3 = false
                          L27_3 = true
                          L28_3 = 2
                          L29_3 = false
                          L30_3 = false
                          L31_3 = false
                          L32_3 = false
                          L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                        end
                    end
                  end
                  else
                    L2_3 = standIdleHuman
                    L3_3 = Animal
                    L3_3 = L3_3.Handle
                    L2_3(L3_3)
                  end
                else
                  eroVeloce = true
                  L2_3 = CreateThread
                  function L3_3()
                    local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4
                    L0_4 = Wait
                    L1_4 = 125
                    L0_4(L1_4)
                    while true do
                      L0_4 = eroVeloce
                      if not L0_4 then
                        break
                      end
                      L0_4 = IsPedMoving
                      L1_4 = Animal
                      L1_4 = L1_4.Handle
                      L0_4 = L0_4(L1_4)
                      if not L0_4 then
                        break
                      end
                      L0_4 = isJumping
                      if L0_4 then
                        break
                      end
                      L0_4 = Wait
                      L1_4 = 0
                      L0_4(L1_4)
                      L0_4 = GetEntityCoords
                      L1_4 = Animal
                      L1_4 = L1_4.Handle
                      L0_4 = L0_4(L1_4)
                      L1_4 = GetEntityForwardVector
                      L2_4 = Animal
                      L2_4 = L2_4.Handle
                      L1_4 = L1_4(L2_4)
                      L2_4 = table
                      L2_4 = L2_4.unpack
                      L3_4 = L1_4 * 4.0
                      L3_4 = L0_4 + L3_4
                      L2_4, L3_4, L4_4 = L2_4(L3_4)
                      L5_4 = GetEntityCoords
                      L6_4 = Animal
                      L6_4 = L6_4.Handle
                      L5_4 = L5_4(L6_4)
                      L6_4 = GetEntityForwardVector
                      L7_4 = Animal
                      L7_4 = L7_4.Handle
                      L6_4 = L6_4(L7_4)
                      L7_4 = table
                      L7_4 = L7_4.unpack
                      L8_4 = L6_4 * 2.5
                      L8_4 = L5_4 + L8_4
                      L7_4, L8_4, L9_4 = L7_4(L8_4)
                      L10_4 = dustballa
                      if nil == L10_4 then
                        L10_4 = PlayEffect
                        L11_4 = "core"
                        L12_4 = "ped_foot_sand_deep"
                        L13_4 = vector3
                        L14_4 = L2_4
                        L15_4 = L3_4
                        L16_4 = L4_4 - 1.3
                        L13_4 = L13_4(L14_4, L15_4, L16_4)
                        L14_4 = 4.5
                        L15_4 = vector3
                        L16_4 = 0.0
                        L17_4 = 0.0
                        L18_4 = 0.0
                        L15_4, L16_4, L17_4, L18_4 = L15_4(L16_4, L17_4, L18_4)
                        L10_4 = L10_4(L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
                        dustballa = L10_4
                        L10_4 = PlayEffect
                        L11_4 = "core"
                        L12_4 = "ped_foot_sand_deep"
                        L13_4 = vector3
                        L14_4 = L7_4
                        L15_4 = L8_4
                        L16_4 = L9_4 - 1.3
                        L13_4 = L13_4(L14_4, L15_4, L16_4)
                        L14_4 = 4.5
                        L15_4 = vector3
                        L16_4 = 0.0
                        L17_4 = 0.0
                        L18_4 = 0.0
                        L15_4, L16_4, L17_4, L18_4 = L15_4(L16_4, L17_4, L18_4)
                        L10_4 = L10_4(L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
                        dustballa2 = L10_4
                        L10_4 = GetGameTimer
                        L10_4 = L10_4()
                        dusttimer = L10_4
                      else
                        L10_4 = GetGameTimer
                        L10_4 = L10_4()
                        L11_4 = dusttimer
                        L10_4 = L10_4 - L11_4
                        L11_4 = 255
                        if L10_4 >= L11_4 then
                          L10_4 = StopParticleFxLooped
                          L11_4 = dustballa
                          L12_4 = 0
                          L10_4(L11_4, L12_4)
                          L10_4 = StopParticleFxLooped
                          L11_4 = dustballa
                          L12_4 = 0
                          L10_4(L11_4, L12_4)
                          dusttimer = 0
                          dustballa = nil
                          dustballa2 = nil
                        end
                      end
                      L10_4 = FastAnim
                      if L10_4 > 0.0 then
                        L10_4 = SetEntityAnimSpeed
                        L11_4 = Animal
                        L11_4 = L11_4.Handle
                        L12_4 = runAnim
                        L12_4 = L12_4.a
                        L13_4 = runAnim
                        L13_4 = L13_4.b
                        L14_4 = FastAnim
                        L10_4(L11_4, L12_4, L13_4, L14_4)
                      end
                      L10_4 = VelocizzaPed
                      L10_4()
                    end
                    eroVeloce = false
                    backward = false
                  end
                  L2_3(L3_3)
                  L2_3 = runAnim
                  L2_3 = L2_3.a
                  L3_3 = runAnim
                  L3_3 = L3_3.b
                  L4_3 = HasAnimDictLoaded
                  L5_3 = L2_3
                  L4_3 = L4_3(L5_3)
                  if not L4_3 then
                    L4_3 = RequestAnimDict
                    L5_3 = L2_3
                    L4_3(L5_3)
                    while true do
                      L4_3 = HasAnimDictLoaded
                      L5_3 = L2_3
                      L4_3 = L4_3(L5_3)
                      if L4_3 then
                        break
                      end
                      L4_3 = Wait
                      L5_3 = 10
                      L4_3(L5_3)
                    end
                  end
                  L4_3 = TaskPlayAnim
                  L5_3 = Animal
                  L5_3 = L5_3.Handle
                  L6_3 = L2_3
                  L7_3 = L3_3
                  L8_3 = 15.0
                  L9_3 = 15.0
                  L10_3 = -1
                  L11_3 = 1
                  L12_3 = 0
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                end
              end
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = 33
              L2_3 = L2_3(L3_3, L4_3)
              if L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = 210
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = 45
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = SonoInAria
                    if not L2_3 then
                      L2_3 = backward
                      if not L2_3 then
                        backward = true
                      end
                      L2_3 = backwardAnim
                      L2_3 = L2_3.a
                      L3_3 = backwardAnim
                      L3_3 = L3_3.b
                      L4_3 = IsEntityPlayingAnim
                      L5_3 = Animal
                      L5_3 = L5_3.Handle
                      L6_3 = backwardAnim
                      L6_3 = L6_3.a
                      L7_3 = backwardAnim
                      L7_3 = L7_3.b
                      L8_3 = 3
                      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                      if not L4_3 then
                        L4_3 = HasAnimDictLoaded
                        L5_3 = L2_3
                        L4_3 = L4_3(L5_3)
                        if not L4_3 then
                          L4_3 = RequestAnimDict
                          L5_3 = L2_3
                          L4_3(L5_3)
                          while true do
                            L4_3 = HasAnimDictLoaded
                            L5_3 = L2_3
                            L4_3 = L4_3(L5_3)
                            if L4_3 then
                              break
                            end
                            L4_3 = Wait
                            L5_3 = 10
                            L4_3(L5_3)
                          end
                        end
                        L4_3 = TaskPlayAnim
                        L5_3 = Animal
                        L5_3 = L5_3.Handle
                        L6_3 = L2_3
                        L7_3 = L3_3
                        L8_3 = 3.0
                        L9_3 = 3.0
                        L10_3 = -1
                        L11_3 = 1
                        L12_3 = 0
                        L13_3 = false
                        L14_3 = false
                        L15_3 = false
                        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                        L4_3 = GetEntityCoords
                        L5_3 = Animal
                        L5_3 = L5_3.Handle
                        L4_3 = L4_3(L5_3)
                        L5_3 = GetEntityForwardVector
                        L6_3 = Animal
                        L6_3 = L6_3.Handle
                        L5_3 = L5_3(L6_3)
                        L6_3 = table
                        L6_3 = L6_3.unpack
                        L7_3 = L5_3 * 0.7
                        L7_3 = L7_3 * -1
                        L7_3 = L4_3 + L7_3
                        L6_3, L7_3, L8_3 = L6_3(L7_3)
                        L9_3 = PlayEffect
                        L10_3 = "core"
                        L11_3 = "ent_anim_dusty_hands"
                        L12_3 = vector3
                        L13_3 = L6_3
                        L14_3 = L7_3
                        L15_3 = L8_3 - 1.1
                        L12_3 = L12_3(L13_3, L14_3, L15_3)
                        L13_3 = 3.5
                        L14_3 = vector3
                        L15_3 = 0.0
                        L16_3 = 0.0
                        L17_3 = 0.0
                        L14_3 = L14_3(L15_3, L16_3, L17_3)
                        L15_3 = true
                        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                      end
                      while true do
                        L4_3 = IsEntityPlayingAnim
                        L5_3 = Animal
                        L5_3 = L5_3.Handle
                        L6_3 = L2_3.b
                        L7_3 = 3
                        L4_3 = L4_3(L5_3, L6_3, L7_3)
                        if not L4_3 then
                          break
                        end
                        L4_3 = Wait
                        L5_3 = 0
                        L4_3(L5_3)
                      end
                      while true do
                        L4_3 = IsControlPressed
                        L5_3 = 0
                        L6_3 = 33
                        L4_3 = L4_3(L5_3, L6_3)
                        if not L4_3 then
                          break
                        end
                        L4_3 = IsControlPressed
                        L5_3 = 0
                        L6_3 = 210
                        L4_3 = L4_3(L5_3, L6_3)
                        if L4_3 then
                          break
                        end
                        L4_3 = IsDisabledControlPressed
                        L5_3 = 0
                        L6_3 = 45
                        L4_3 = L4_3(L5_3, L6_3)
                        if L4_3 then
                          break
                        end
                        L4_3 = Wait
                        L5_3 = 0
                        L4_3(L5_3)
                      end
                      L4_3 = ClearPedTasks
                      L5_3 = Animal
                      L5_3 = L5_3.Handle
                      L4_3(L5_3)
                      backward = false
                    end
                  end
                end
              end
            end
            L2_3 = eroVeloce
            if not L2_3 then
              goto lbl_1126
            end
            L2_3 = backward
            if L2_3 then
              goto lbl_1126
            end
            L2_3 = GetControlNormal
            L3_3 = 0
            L4_3 = RightKeyHorse
            L2_3 = L2_3(L3_3, L4_3)
            L3_3 = GetControlNormal
            L4_3 = 0
            L5_3 = LeftKeyHorse
            L3_3 = L3_3(L4_3, L5_3)
            L4_3 = GetOffsetFromEntityInWorldCoords
            L5_3 = Animal
            L5_3 = L5_3.Handle
            L6_3 = L2_3 * 1.5
            L7_3 = Range
            L7_3 = L7_3 - 50.5
            L8_3 = -0.5
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
            L5_3 = L4_3.x
            L6_3 = L4_3.y
            L7_3 = L4_3.z
            L8_3 = horsedebug
            if L8_3 then
              L8_3 = DrawMarker
              L9_3 = 1
              L10_3 = L5_3
              L11_3 = L6_3
              L12_3 = L7_3
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = 0
              L17_3 = 0.0
              L18_3 = 0.0
              L19_3 = 0.05
              L20_3 = 0.05
              L21_3 = 2.0
              L22_3 = 0
              L23_3 = 0
              L24_3 = 0
              L25_3 = 255
              L26_3 = false
              L27_3 = true
              L28_3 = 2
              L29_3 = false
              L30_3 = false
              L31_3 = false
              L32_3 = false
              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
            end
            L8_3 = IsControlPressed
            L9_3 = 0
            L10_3 = 33
            L8_3 = L8_3(L9_3, L10_3)
            if not L8_3 then
              goto lbl_1126
            end
            eroVeloce = false
            backward = false
            L8_3 = faiAnim
            L9_3 = "mp_character_creation@lineup@female_b"
            L10_3 = "loop"
            L11_3 = 550
            L12_3 = 49
            L8_3(L9_3, L10_3, L11_3, L12_3)
            L8_3 = Wait
            L9_3 = 350
            L8_3(L9_3)
            L8_3 = IsEntityPlayingAnim
            L9_3 = L1_2
            L10_3 = "cover@move@base@rpg"
            L11_3 = "high_idle_l"
            L12_3 = 3
            L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
            if not L8_3 then
              L8_3 = "cover@move@base@rpg"
              L9_3 = HasAnimDictLoaded
              L10_3 = L8_3
              L9_3 = L9_3(L10_3)
              if not L9_3 then
                L9_3 = RequestAnimDict
                L10_3 = L8_3
                L9_3(L10_3)
                while true do
                  L9_3 = HasAnimDictLoaded
                  L10_3 = L8_3
                  L9_3 = L9_3(L10_3)
                  if L9_3 then
                    break
                  end
                  L9_3 = Wait
                  L10_3 = 10
                  L9_3(L10_3)
                end
              end
              L9_3 = TaskPlayAnim
              L10_3 = L1_2
              L11_3 = "cover@move@base@rpg"
              L12_3 = "high_idle_l"
              L13_3 = 8.0
              L14_3 = 8.0
              L15_3 = -1
              L16_3 = 49
              L17_3 = 0
              L18_3 = false
              L19_3 = false
              L20_3 = false
              L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
            end
            L8_3 = Wait
            L9_3 = 225
            L8_3(L9_3)
        end
        else
          L2_3 = dhorseprint
          L3_3 = "Loop Riding terminato da return!"
          L2_3(L3_3)
          return
        end
        ::lbl_1126::
      end
      L0_3 = dhorseprint
      L1_3 = "Loop Riding terminato!"
      L0_3(L1_3)
    end
    L4_2(L5_2)
  end
end
LoopHumanoid = L0_1
