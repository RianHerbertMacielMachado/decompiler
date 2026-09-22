local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1
L0_1 = {}
L0_1.active = false
L0_1.mode = nil
L0_1.entity = nil
L0_1.leftTarget = nil
L0_1.rightTarget = nil
L0_1.leftIndex = 3
L0_1.rightIndex = 4
L0_1.targetBone = -1
L0_1.flags = 0
L0_1.blendIn = 120
L0_1.blendOut = 180
L0_1.stationaryUpForward = 0.25
L0_1.forwardRightOffset = 0.2
L0_1.currentForwardRightOffset = 0.0
L1_1 = propHeadingOffset
if not L1_1 then
  L1_1 = 0.0
end
L2_1 = propPitchOffset
if not L2_1 then
  L2_1 = 0.0
end
L0_1.drawDebug = false
L0_1.drawLines = false
L0_1.horizontalMaxOffsetLeft = 0.55
L0_1.horizontalMaxOffsetRight = 0.55
L0_1.horizontalMoveMultiplier = 0.35
L0_1.horizontalAdaptSpeed = 6.0
L0_1.currentMoveMultiplier = 1.0
L0_1.horizontalMaxAngle = 75.0
L0_1.verticalDown = -0.25
L0_1.verticalUp = 0.8
L0_1.cameraPitchMin = -55.0
L0_1.cameraPitchMax = 35.0
L0_1.propMoveSpeed = 15.0
L0_1.propCurrentPos = nil
L0_1.propBaseDistance = 0.42
L0_1.propHeight = 0.18
L0_1.propNearDistance = 0.18
L0_1.propFarDistance = 0.48
L0_1.cameraPitchMin = -55.0
L0_1.cameraPitchMax = 10.0
L0_1.gripExtraWidth = 0.04
L0_1.gripMinHalfWidth = 0.1
L0_1.gripMaxHalfWidth = 0.6
L0_1.cameraDistance = 5.0
L0_1.propDistance = 0.65
L0_1.propHeight = 0.2
L0_1.gripPadding = 0.03
L0_1.maxGripWidth = 0.7
L3_1 = {}
L3_1.enabled = true
L3_1.startAngle = 50.0
L3_1.movingStartAngle = 25.0
L3_1.stopAngle = 35.0
L3_1.movingStopAngle = 12.0
L3_1.maxSpeed = 150.0
L3_1.movingMaxSpeed = 180.0
L3_1.tracking = false
L0_1.bodyTurn = L3_1
L0_1.limitReach = false
L0_1.leftMaxReach = 0.75
L0_1.rightMaxReach = 0.75
L0_1.circleRadius = 0.3
L0_1.circleSpeed = 1.5
L3_1 = vec3
L4_1 = -0.15
L5_1 = 0.0
L6_1 = 0.0
L3_1 = L3_1(L4_1, L5_1, L6_1)
L0_1.leftGrip = L3_1
L3_1 = vec3
L4_1 = 0.15
L5_1 = 0.0
L6_1 = 0.0
L3_1 = L3_1(L4_1, L5_1, L6_1)
L0_1.rightGrip = L3_1
L0_1.netId = nil
L0_1[1] = L1_1
L0_1[2] = L2_1
function L1_1(A0_2)
  local L1_2, L2_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L1_2 = NetworkGetEntityIsNetworked
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = NetworkGetNetworkIdFromEntity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 or 0 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
GetValidNetId = L1_1
L1_1 = "move_strafe@first_person@generic"
L2_1 = "walk_"
L3_1 = L2_1
L4_1 = "fwd_0_loop"
L3_1 = L3_1 .. L4_1
L4_1 = L2_1
L5_1 = "bwd_180_loop"
L4_1 = L4_1 .. L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L0_1.active
  if L0_2 then
    L0_2 = ped
    if nil == L0_2 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      ped = L0_2
    end
    L0_2 = "impexp_int-0"
    L1_2 = "mp_m_waremech_01_dual-0"
    L2_2 = LoadAnim
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = TaskPlayAnim
    L3_2 = ped
    L4_2 = L0_2
    L5_2 = L1_2
    L6_2 = 4.0
    L7_2 = -4.0
    L8_2 = -1
    L9_2 = 49
    L10_2 = 0.0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = A0_2
    L3_2 = L1_1
    L4_2 = L4_1
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = A0_2
      L3_2 = L1_1
      L4_2 = L3_1
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = A0_2
        L3_2 = L1_1
        L4_2 = L4_1
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = A0_2
          L3_2 = L1_1
          L4_2 = "walk_bwd_-90_loop"
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = A0_2
            L3_2 = L1_1
            L4_2 = "walk_fwd_90_loop"
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = L1_1
              L4_2 = "walk_bwd_135_loop"
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = L1_1
                L4_2 = "walk_bwd_-135_loop"
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = L1_1
                  L4_2 = "walk_fwd_45_loop"
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = L1_1
                    L4_2 = "walk_fwd_-45_loop"
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if not L1_2 then
                      L1_2 = IsEntityPlayingAnim
                      L2_2 = A0_2
                      L3_2 = L1_1
                      L4_2 = "run_bwd_-90_loop"
                      L5_2 = 3
                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                      if not L1_2 then
                        L1_2 = IsEntityPlayingAnim
                        L2_2 = A0_2
                        L3_2 = L1_1
                        L4_2 = "run_fwd_90_loop"
                        L5_2 = 3
                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                        if not L1_2 then
                          L1_2 = IsEntityPlayingAnim
                          L2_2 = A0_2
                          L3_2 = L1_1
                          L4_2 = "run_bwd_135_loop"
                          L5_2 = 3
                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                          if not L1_2 then
                            L1_2 = IsEntityPlayingAnim
                            L2_2 = A0_2
                            L3_2 = L1_1
                            L4_2 = "run_bwd_-135_loop"
                            L5_2 = 3
                            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                            if not L1_2 then
                              L1_2 = IsEntityPlayingAnim
                              L2_2 = A0_2
                              L3_2 = L1_1
                              L4_2 = "run_fwd_45_loop"
                              L5_2 = 3
                              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                              if not L1_2 then
                                L1_2 = IsEntityPlayingAnim
                                L2_2 = A0_2
                                L3_2 = L1_1
                                L4_2 = "run_fwd_-45_loop"
                                L5_2 = 3
                                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                if not L1_2 then
                                  L1_2 = IsEntityPlayingAnim
                                  L2_2 = A0_2
                                  L3_2 = "move_strafe@grenade"
                                  L4_2 = "walk_fwd_0_loop"
                                  L5_2 = 3
                                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                  if not L1_2 then
                                    L1_2 = IsEntityPlayingAnim
                                    L2_2 = A0_2
                                    L3_2 = "move_strafe@grenade"
                                    L4_2 = "run_fwd_0_loop"
                                    L5_2 = 3
                                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                    if not L1_2 then
                                      L1_2 = IsEntityPlayingAnim
                                      L2_2 = A0_2
                                      L3_2 = "melee@wfire@beast_werewolf_animset"
                                      L4_2 = "wfire_wmg_were_beast_slow_right45_walk_clip"
                                      L5_2 = 3
                                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                      if not L1_2 then
                                        L1_2 = IsEntityPlayingAnim
                                        L2_2 = A0_2
                                        L3_2 = "melee@wfire@beast_werewolf_animset"
                                        L4_2 = "wfire_wmg_were_beast_slow_left45_walk_clip"
                                        L5_2 = 3
                                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                        if not L1_2 then
                                          L1_2 = IsEntityPlayingAnim
                                          L2_2 = A0_2
                                          L3_2 = "melee@wfire@beast_werewolf_animset"
                                          L4_2 = "wfire_wmg_werewolf_beast_forward_walk_clip"
                                          L5_2 = 3
                                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                          if not L1_2 then
                                            L1_2 = IsEntityPlayingAnim
                                            L2_2 = A0_2
                                            L3_2 = "melee@wfire@beast_werewolf_animset"
                                            L4_2 = "wfire_wmg_were_beast_right_slow_walk_clip"
                                            L5_2 = 3
                                            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                            if not L1_2 then
                                              L1_2 = IsEntityPlayingAnim
                                              L2_2 = A0_2
                                              L3_2 = "melee@wfire@beast_werewolf_animset"
                                              L4_2 = "wfire_wmg_were_beast_slow_left_walk_clip"
                                              L5_2 = 3
                                              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                              if not L1_2 then
                                                goto lbl_190
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    L1_2 = ClearPedSecondaryTask
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = L5_1
    L1_2()
  end
  ::lbl_190::
end
ResetStrafeImmediately_Grinder = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = ResetStrafeImmediately_Grinder
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = IsEntityPlayingAnim
    L2_2 = A0_2
    L3_2 = "hit_react_heavy_front_knockback_stagger"
    L4_2 = "hit_react_heavy_front_knockback_stagger_clip"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = A0_2
      L3_2 = L1_1
      L4_2 = L3_1
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = A0_2
        L3_2 = L1_1
        L4_2 = L4_1
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = A0_2
          L3_2 = L1_1
          L4_2 = "walk_bwd_-90_loop"
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = A0_2
            L3_2 = L1_1
            L4_2 = "walk_fwd_90_loop"
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = L1_1
              L4_2 = "walk_bwd_135_loop"
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = L1_1
                L4_2 = "walk_bwd_-135_loop"
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = L1_1
                  L4_2 = "walk_fwd_45_loop"
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = L1_1
                    L4_2 = "walk_fwd_-45_loop"
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if not L1_2 then
                      L1_2 = IsEntityPlayingAnim
                      L2_2 = A0_2
                      L3_2 = L1_1
                      L4_2 = "run_bwd_-90_loop"
                      L5_2 = 3
                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                      if not L1_2 then
                        L1_2 = IsEntityPlayingAnim
                        L2_2 = A0_2
                        L3_2 = L1_1
                        L4_2 = "run_fwd_90_loop"
                        L5_2 = 3
                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                        if not L1_2 then
                          L1_2 = IsEntityPlayingAnim
                          L2_2 = A0_2
                          L3_2 = L1_1
                          L4_2 = "run_bwd_135_loop"
                          L5_2 = 3
                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                          if not L1_2 then
                            L1_2 = IsEntityPlayingAnim
                            L2_2 = A0_2
                            L3_2 = L1_1
                            L4_2 = "run_bwd_-135_loop"
                            L5_2 = 3
                            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                            if not L1_2 then
                              L1_2 = IsEntityPlayingAnim
                              L2_2 = A0_2
                              L3_2 = L1_1
                              L4_2 = "run_fwd_45_loop"
                              L5_2 = 3
                              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                              if not L1_2 then
                                L1_2 = IsEntityPlayingAnim
                                L2_2 = A0_2
                                L3_2 = L1_1
                                L4_2 = "run_fwd_-45_loop"
                                L5_2 = 3
                                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                if not L1_2 then
                                  L1_2 = IsEntityPlayingAnim
                                  L2_2 = A0_2
                                  L3_2 = "move_strafe@grenade"
                                  L4_2 = "walk_fwd_0_loop"
                                  L5_2 = 3
                                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                  if not L1_2 then
                                    L1_2 = IsEntityPlayingAnim
                                    L2_2 = A0_2
                                    L3_2 = "move_strafe@grenade"
                                    L4_2 = "run_fwd_0_loop"
                                    L5_2 = 3
                                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                    if not L1_2 then
                                      L1_2 = IsEntityPlayingAnim
                                      L2_2 = A0_2
                                      L3_2 = "melee@wfire@beast_werewolf_animset"
                                      L4_2 = "wfire_wmg_were_beast_slow_right45_walk_clip"
                                      L5_2 = 3
                                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                      if not L1_2 then
                                        L1_2 = IsEntityPlayingAnim
                                        L2_2 = A0_2
                                        L3_2 = "melee@wfire@beast_werewolf_animset"
                                        L4_2 = "wfire_wmg_were_beast_slow_left45_walk_clip"
                                        L5_2 = 3
                                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                        if not L1_2 then
                                          L1_2 = IsEntityPlayingAnim
                                          L2_2 = A0_2
                                          L3_2 = "melee@wfire@beast_werewolf_animset"
                                          L4_2 = "wfire_wmg_werewolf_beast_forward_walk_clip"
                                          L5_2 = 3
                                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                          if not L1_2 then
                                            L1_2 = IsEntityPlayingAnim
                                            L2_2 = A0_2
                                            L3_2 = "melee@wfire@beast_werewolf_animset"
                                            L4_2 = "wfire_wmg_were_beast_right_slow_walk_clip"
                                            L5_2 = 3
                                            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                            if not L1_2 then
                                              L1_2 = IsEntityPlayingAnim
                                              L2_2 = A0_2
                                              L3_2 = "melee@wfire@beast_werewolf_animset"
                                              L4_2 = "wfire_wmg_were_beast_slow_left_walk_clip"
                                              L5_2 = 3
                                              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                              if not L1_2 then
                                                goto lbl_241
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L1_2 = IsControlJustReleased
      L2_2 = 0
      L3_2 = 32
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = IsControlJustReleased
        L2_2 = 0
        L3_2 = 33
        L1_2 = L1_2(L2_2, L3_2)
        if not L1_2 then
          L1_2 = IsControlJustReleased
          L2_2 = 0
          L3_2 = 34
          L1_2 = L1_2(L2_2, L3_2)
          if not L1_2 then
            L1_2 = IsControlJustReleased
            L2_2 = 0
            L3_2 = 35
            L1_2 = L1_2(L2_2, L3_2)
          end
        end
      end
      if L1_2 then
        L2_2 = IsControlPressed
        L3_2 = 0
        L4_2 = 32
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = IsControlPressed
          L3_2 = 0
          L4_2 = 33
          L2_2 = L2_2(L3_2, L4_2)
          if not L2_2 then
            L2_2 = IsControlPressed
            L3_2 = 0
            L4_2 = 34
            L2_2 = L2_2(L3_2, L4_2)
            if not L2_2 then
              L2_2 = IsControlPressed
              L3_2 = 0
              L4_2 = 35
              L2_2 = L2_2(L3_2, L4_2)
            end
          end
        end
        if not L2_2 then
          L3_2 = ClearPedSecondaryTask
          L4_2 = A0_2
          L3_2(L4_2)
          L3_2 = ClearPedTasks
          L4_2 = A0_2
          L3_2(L4_2)
          L3_2 = L5_1
          L3_2()
        end
      end
    end
  end
  ::lbl_241::
end
ResetStrafe_Grinder = L6_1
L6_1 = 0
L7_1 = 250
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L6_1
  L1_2 = L0_2 - L1_2
  L2_2 = L7_1
  if L1_2 < L2_2 then
    L1_2 = false
    return L1_2
  end
  L6_1 = L0_2
  L1_2 = true
  return L1_2
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if nil ~= A1_2 then
    L2_2 = GetGameplayCamRot
    L3_2 = 2
    L2_2 = L2_2(L3_2)
    L3_2 = SetEntityHeading
    L4_2 = A0_2
    L5_2 = L2_2.z
    L3_2(L4_2, L5_2)
  end
  L2_2 = IsControlPressed
  L3_2 = 0
  L4_2 = 32
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsControlPressed
    L3_2 = 0
    L4_2 = 33
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = IsControlPressed
      L3_2 = 0
      L4_2 = 34
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsControlPressed
        L3_2 = 0
        L4_2 = 35
        L2_2 = L2_2(L3_2, L4_2)
      end
    end
  end
  L3_2 = L8_1
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = IsEntityInWater
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = IsPedSwimming
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsPedSwimmingUnderWater
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = IsPedOnFoot
          L4_2 = A0_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = IsEntityPositionFrozen
            L4_2 = A0_2
            L3_2 = L3_2(L4_2)
            if not L3_2 then
              L3_2 = IsEntityAttached
              L4_2 = A0_2
              L3_2 = L3_2(L4_2)
              if not L3_2 then
                L3_2 = IsPedSwimming
                L4_2 = A0_2
                L3_2 = L3_2(L4_2)
                if not L3_2 then
                  L3_2 = IsPedSwimmingUnderWater
                  L4_2 = A0_2
                  L3_2 = L3_2(L4_2)
                  if not L3_2 then
                    L3_2 = IsEntityInWater
                    L4_2 = A0_2
                    L3_2 = L3_2(L4_2)
                    if not L3_2 then
                      L3_2 = IsControlPressed
                      L4_2 = 0
                      L5_2 = 21
                      L3_2 = L3_2(L4_2, L5_2)
                      if not L3_2 then
                        L3_2 = IsDisabledControlPressed
                        L4_2 = 0
                        L5_2 = 21
                        L3_2 = L3_2(L4_2, L5_2)
                        if not L3_2 then
                          goto lbl_107
                        end
                      end
                      L3_2 = L2_1
                      if "walk_" == L3_2 then
                        L3_2 = "run_"
                        L2_1 = L3_2
                        L3_2 = L2_1
                        L4_2 = "fwd_0_loop"
                        L3_2 = L3_2 .. L4_2
                        L3_1 = L3_2
                        L3_2 = L2_1
                        L4_2 = "bwd_180_loop"
                        L3_2 = L3_2 .. L4_2
                        L4_1 = L3_2
                        goto lbl_122
                        ::lbl_107::
                        if L2_2 then
                          L3_2 = L2_1
                          if "run_" == L3_2 then
                            L3_2 = "walk_"
                            L2_1 = L3_2
                            L3_2 = L2_1
                            L4_2 = "fwd_0_loop"
                            L3_2 = L3_2 .. L4_2
                            L3_1 = L3_2
                            L3_2 = L2_1
                            L4_2 = "bwd_180_loop"
                            L3_2 = L3_2 .. L4_2
                            L4_1 = L3_2
                          end
                        end
                      end
                      ::lbl_122::
                      L3_2 = IsControlPressed
                      L4_2 = 0
                      L5_2 = 32
                      L3_2 = L3_2(L4_2, L5_2)
                      if L3_2 then
                        L3_2 = IsControlPressed
                        L4_2 = 0
                        L5_2 = 35
                        L3_2 = L3_2(L4_2, L5_2)
                        if L3_2 then
                          L3_2 = IsControlPressed
                          L4_2 = 0
                          L5_2 = 33
                          L3_2 = L3_2(L4_2, L5_2)
                          if not L3_2 then
                            L3_2 = L2_1
                            L4_2 = "fwd_45_loop"
                            L3_2 = L3_2 .. L4_2
                            L4_2 = LoadAnim
                            L5_2 = L1_1
                            L4_2(L5_2)
                            L4_2 = IsEntityPlayingAnim
                            L5_2 = A0_2
                            L6_2 = L1_1
                            L7_2 = L3_2
                            L8_2 = 3
                            L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                            if not L4_2 then
                              L4_2 = TaskPlayAnim
                              L5_2 = A0_2
                              L6_2 = L1_1
                              L7_2 = L3_2
                              L8_2 = 3.0
                              L9_2 = 1.0
                              L10_2 = -1
                              L11_2 = 1
                              L12_2 = 0
                              L13_2 = 0
                              L14_2 = 0
                              L15_2 = 0
                              L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                            end
                        end
                        else
                          L3_2 = IsControlPressed
                          L4_2 = 0
                          L5_2 = 34
                          L3_2 = L3_2(L4_2, L5_2)
                          if L3_2 then
                            L3_2 = IsControlPressed
                            L4_2 = 0
                            L5_2 = 33
                            L3_2 = L3_2(L4_2, L5_2)
                            if not L3_2 then
                              L3_2 = L2_1
                              L4_2 = "fwd_-45_loop"
                              L3_2 = L3_2 .. L4_2
                              L4_2 = LoadAnim
                              L5_2 = L1_1
                              L4_2(L5_2)
                              L4_2 = IsEntityPlayingAnim
                              L5_2 = A0_2
                              L6_2 = L1_1
                              L7_2 = L3_2
                              L8_2 = 3
                              L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                              if not L4_2 then
                                L4_2 = TaskPlayAnim
                                L5_2 = A0_2
                                L6_2 = L1_1
                                L7_2 = L3_2
                                L8_2 = 3.0
                                L9_2 = 1.0
                                L10_2 = -1
                                L11_2 = 1
                                L12_2 = 0
                                L13_2 = 0
                                L14_2 = 0
                                L15_2 = 0
                                L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                              end
                          end
                          else
                            L3_2 = IsControlPressed
                            L4_2 = 0
                            L5_2 = 21
                            L3_2 = L3_2(L4_2, L5_2)
                            if not L3_2 then
                              L3_2 = IsDisabledControlPressed
                              L4_2 = 0
                              L5_2 = 21
                              L3_2 = L3_2(L4_2, L5_2)
                              if not L3_2 then
                                goto lbl_247
                              end
                            end
                            L3_2 = "move_strafe@grenade"
                            L4_2 = "run_fwd_0_loop"
                            L5_2 = LoadAnim
                            L6_2 = L3_2
                            L5_2(L6_2)
                            L5_2 = IsEntityPlayingAnim
                            L6_2 = A0_2
                            L7_2 = L3_2
                            L8_2 = L4_2
                            L9_2 = 3
                            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
                            if not L5_2 then
                              L5_2 = TaskPlayAnim
                              L6_2 = A0_2
                              L7_2 = L3_2
                              L8_2 = L4_2
                              L9_2 = 3.0
                              L10_2 = 1.0
                              L11_2 = -1
                              L12_2 = 1
                              L13_2 = 0
                              L14_2 = 0
                              L15_2 = 0
                              L16_2 = 0
                              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                              goto lbl_480
                              ::lbl_247::
                              L3_2 = "move_strafe@grenade"
                              L4_2 = "walk_fwd_0_loop"
                              L5_2 = LoadAnim
                              L6_2 = L3_2
                              L5_2(L6_2)
                              L5_2 = IsEntityPlayingAnim
                              L6_2 = A0_2
                              L7_2 = L3_2
                              L8_2 = L4_2
                              L9_2 = 3
                              L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
                              if not L5_2 then
                                L5_2 = TaskPlayAnim
                                L6_2 = A0_2
                                L7_2 = L3_2
                                L8_2 = L4_2
                                L9_2 = 3.0
                                L10_2 = 1.0
                                L11_2 = -1
                                L12_2 = 1
                                L13_2 = 0
                                L14_2 = 0
                                L15_2 = 0
                                L16_2 = 0
                                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                              end
                            end
                          end
                        end
                      else
                        L3_2 = IsControlPressed
                        L4_2 = 0
                        L5_2 = 33
                        L3_2 = L3_2(L4_2, L5_2)
                        if L3_2 then
                          L3_2 = IsControlPressed
                          L4_2 = 0
                          L5_2 = 35
                          L3_2 = L3_2(L4_2, L5_2)
                          if L3_2 then
                            L3_2 = IsControlPressed
                            L4_2 = 0
                            L5_2 = 32
                            L3_2 = L3_2(L4_2, L5_2)
                            if not L3_2 then
                              L3_2 = L2_1
                              L4_2 = "bwd_135_loop"
                              L3_2 = L3_2 .. L4_2
                              L4_2 = LoadAnim
                              L5_2 = L1_1
                              L4_2(L5_2)
                              L4_2 = IsEntityPlayingAnim
                              L5_2 = A0_2
                              L6_2 = L1_1
                              L7_2 = L3_2
                              L8_2 = 3
                              L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                              if not L4_2 then
                                L4_2 = TaskPlayAnim
                                L5_2 = A0_2
                                L6_2 = L1_1
                                L7_2 = L3_2
                                L8_2 = 3.0
                                L9_2 = 1.0
                                L10_2 = -1
                                L11_2 = 1
                                L12_2 = 0
                                L13_2 = 0
                                L14_2 = 0
                                L15_2 = 0
                                L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                              end
                          end
                          else
                            L3_2 = IsControlPressed
                            L4_2 = 0
                            L5_2 = 34
                            L3_2 = L3_2(L4_2, L5_2)
                            if L3_2 then
                              L3_2 = IsControlPressed
                              L4_2 = 0
                              L5_2 = 32
                              L3_2 = L3_2(L4_2, L5_2)
                              if not L3_2 then
                                L3_2 = L2_1
                                L4_2 = "bwd_-135_loop"
                                L3_2 = L3_2 .. L4_2
                                L4_2 = LoadAnim
                                L5_2 = L1_1
                                L4_2(L5_2)
                                L4_2 = IsEntityPlayingAnim
                                L5_2 = A0_2
                                L6_2 = L1_1
                                L7_2 = L3_2
                                L8_2 = 3
                                L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                                if not L4_2 then
                                  L4_2 = TaskPlayAnim
                                  L5_2 = A0_2
                                  L6_2 = L1_1
                                  L7_2 = L3_2
                                  L8_2 = 3.0
                                  L9_2 = 1.0
                                  L10_2 = -1
                                  L11_2 = 1
                                  L12_2 = 0
                                  L13_2 = 0
                                  L14_2 = 0
                                  L15_2 = 0
                                  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                                end
                            end
                            else
                              L3_2 = LoadAnim
                              L4_2 = L1_1
                              L3_2(L4_2)
                              L3_2 = IsEntityPlayingAnim
                              L4_2 = A0_2
                              L5_2 = L1_1
                              L6_2 = L4_1
                              L7_2 = 3
                              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                              if not L3_2 then
                                L3_2 = TaskPlayAnim
                                L4_2 = A0_2
                                L5_2 = L1_1
                                L6_2 = L4_1
                                L7_2 = 3.0
                                L8_2 = 1.0
                                L9_2 = -1
                                L10_2 = 1
                                L11_2 = 0
                                L12_2 = 0
                                L13_2 = 0
                                L14_2 = 0
                                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
                              end
                            end
                          end
                        else
                          L3_2 = IsControlPressed
                          L4_2 = 0
                          L5_2 = 35
                          L3_2 = L3_2(L4_2, L5_2)
                          if L3_2 then
                            L3_2 = IsControlPressed
                            L4_2 = 0
                            L5_2 = 32
                            L3_2 = L3_2(L4_2, L5_2)
                            if not L3_2 then
                              L3_2 = IsControlPressed
                              L4_2 = 0
                              L5_2 = 33
                              L3_2 = L3_2(L4_2, L5_2)
                              if not L3_2 then
                                L3_2 = L2_1
                                L4_2 = "fwd_90_loop"
                                L3_2 = L3_2 .. L4_2
                                L4_2 = LoadAnim
                                L5_2 = L1_1
                                L4_2(L5_2)
                                L4_2 = IsEntityPlayingAnim
                                L5_2 = A0_2
                                L6_2 = L1_1
                                L7_2 = L3_2
                                L8_2 = 3
                                L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                                if not L4_2 then
                                  L4_2 = TaskPlayAnim
                                  L5_2 = A0_2
                                  L6_2 = L1_1
                                  L7_2 = L3_2
                                  L8_2 = 3.0
                                  L9_2 = 1.0
                                  L10_2 = -1
                                  L11_2 = 1
                                  L12_2 = 0
                                  L13_2 = 0
                                  L14_2 = 0
                                  L15_2 = 0
                                  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                                end
                            end
                          end
                          else
                            L3_2 = IsControlPressed
                            L4_2 = 0
                            L5_2 = 34
                            L3_2 = L3_2(L4_2, L5_2)
                            if L3_2 then
                              L3_2 = IsControlPressed
                              L4_2 = 0
                              L5_2 = 32
                              L3_2 = L3_2(L4_2, L5_2)
                              if not L3_2 then
                                L3_2 = IsControlPressed
                                L4_2 = 0
                                L5_2 = 33
                                L3_2 = L3_2(L4_2, L5_2)
                                if not L3_2 then
                                  L3_2 = L2_1
                                  L4_2 = "bwd_-90_loop"
                                  L3_2 = L3_2 .. L4_2
                                  L4_2 = LoadAnim
                                  L5_2 = L1_1
                                  L4_2(L5_2)
                                  L4_2 = IsEntityPlayingAnim
                                  L5_2 = A0_2
                                  L6_2 = L1_1
                                  L7_2 = L3_2
                                  L8_2 = 3
                                  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                                  if not L4_2 then
                                    L4_2 = TaskPlayAnim
                                    L5_2 = A0_2
                                    L6_2 = L1_1
                                    L7_2 = L3_2
                                    L8_2 = 3.0
                                    L9_2 = 1.0
                                    L10_2 = -1
                                    L11_2 = 1
                                    L12_2 = 0
                                    L13_2 = 0
                                    L14_2 = 0
                                    L15_2 = 0
                                    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                                  end
                              end
                            end
                            else
                              L3_2 = ResetStrafe_Grinder
                              L4_2 = A0_2
                              L3_2(L4_2)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_480::
  L3_2 = IsEntityInWater
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 or not L2_2 then
    L3_2 = ResetStrafeImmediately_Grinder
    L4_2 = A0_2
    L3_2(L4_2)
  end
end
StrafeLoop_Grinder = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  FollowHandsRunning = false
  L2_2 = L0_1.entity
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = L0_1.entity
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = L0_1.entity
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L0_1.active = false
  L0_1.mode = nil
  L0_1.leftTarget = nil
  L0_1.rightTarget = nil
  L0_1.propCurrentPos = nil
  L4_2 = L0_1.bodyTurn
  L4_2.tracking = false
  L0_1.entity = nil
  L4_2 = ClearPedSecondaryTask
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = ClearPedTasks
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = faiAnim
  L5_2 = "missfbi4prepp1"
  L6_2 = "_bag_pickup_garbage_man"
  L7_2 = 750
  L8_2 = 49
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = 64781110
  L5_2 = RequestModelStriano
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = GetEntityHeading
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityCoords
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L2_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityCollision
  L8_2 = L2_2
  L9_2 = false
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityVelocity
  L8_2 = L2_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = SetEntityAngularVelocity
  L8_2 = L2_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = nil
  L8_2 = GetEntityModel
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L9_2 = GetHashKey
  L10_2 = "prop_ld_jerrycan_01"
  L9_2 = L9_2(L10_2)
  if L8_2 ~= L9_2 then
    L8_2 = CreateObject
    L9_2 = L4_2
    L10_2 = L6_2.x
    L11_2 = L6_2.y
    L12_2 = L6_2.z
    L13_2 = true
    L14_2 = true
    L15_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L7_2 = L8_2
  else
    L7_2 = L2_2
  end
  L8_2 = DoesEntityExist
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = print
    L9_2 = "^1[IK V2] ERROR CREATING PHYSICS PROXY^7"
    L8_2(L9_2)
    return
  end
  L8_2 = SetEntityHeading
  L9_2 = L7_2
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L8_2 = SetEntityAsMissionEntity
  L9_2 = L7_2
  L10_2 = true
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  if L7_2 ~= L2_2 then
    L8_2 = SetEntityVisible
    L9_2 = L7_2
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityAlpha
    L9_2 = L7_2
    L10_2 = 0
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = SetEntityVelocity
  L9_2 = L7_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = SetEntityAngularVelocity
  L9_2 = L7_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L8_2(L9_2, L10_2, L11_2, L12_2)
  if L7_2 ~= L2_2 then
    L8_2 = GetEntityRotation
    L9_2 = L2_2
    L10_2 = 2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = GetEntityRotation
    L10_2 = L7_2
    L11_2 = 2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L8_2.x
    L11_2 = L9_2.x
    L10_2 = L10_2 - L11_2
    L11_2 = L8_2.y
    L12_2 = L9_2.y
    L11_2 = L11_2 - L12_2
    L12_2 = L8_2.z
    L13_2 = L9_2.z
    L12_2 = L12_2 - L13_2
    L13_2 = AttachEntityToEntity
    L14_2 = L2_2
    L15_2 = L7_2
    L16_2 = 0
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = L10_2
    L21_2 = L11_2
    L22_2 = L12_2
    L23_2 = true
    L24_2 = true
    L25_2 = false
    L26_2 = false
    L27_2 = 2
    L28_2 = true
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  end
  L8_2 = SetEntityCollision
  L9_2 = L7_2
  L10_2 = true
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L7_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = ActivatePhysics
  L9_2 = L7_2
  L8_2(L9_2)
  if nil ~= A0_2 then
    L8_2 = IsEntityAVehicle
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = IsEntityAnObject
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        goto lbl_301
      end
    end
  end
  L8_2 = GetEntityForwardVector
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = ApplyForceToEntity
  L10_2 = L7_2
  L11_2 = 1
  L12_2 = L8_2.x
  L12_2 = L12_2 * 0.5
  L13_2 = L8_2.y
  L13_2 = L13_2 * 0.5
  L14_2 = -0.03
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 0
  L19_2 = false
  L20_2 = true
  L21_2 = true
  L22_2 = false
  L23_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L9_2 = Wait
  L10_2 = 7
  L9_2(L10_2)
  L9_2 = GetGameTimer
  L9_2 = L9_2()
  L9_2 = L9_2 + 3000
  while true do
    L10_2 = GetEntitySpeed
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    L11_2 = 0.2
    if not (L10_2 > L11_2) then
      break
    end
    L10_2 = GetEntityCoords
    L11_2 = L3_2
    L10_2 = L10_2(L11_2)
    L11_2 = GetEntityCoords
    L12_2 = L7_2
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 - L11_2
    L10_2 = #L10_2
    if not (L10_2 < 15.0) then
      break
    end
    L10_2 = Wait
    L11_2 = 0
    L10_2(L11_2)
    L10_2 = SetEntityAngularVelocity
    L11_2 = L7_2
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L10_2(L11_2, L12_2, L13_2, L14_2)
    L10_2 = GetGameTimer
    L10_2 = L10_2()
    if L9_2 <= L10_2 then
      L10_2 = GetOffsetFromEntityInWorldCoords
      L11_2 = L3_2
      L12_2 = 0.0
      L13_2 = 1.5
      L14_2 = 0.0
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L11_2 = SetEntityCoordsNoOffset
      L12_2 = L7_2
      L13_2 = L10_2.x
      L14_2 = L10_2.y
      L15_2 = L10_2.z
      L16_2 = false
      L17_2 = false
      L18_2 = false
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L11_2 = SetEntityVelocity
      L12_2 = L7_2
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = 0.0
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = SetEntityAngularVelocity
      L12_2 = L7_2
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = 0.0
      L11_2(L12_2, L13_2, L14_2, L15_2)
      break
    end
  end
  L10_2 = DoesEntityExist
  L11_2 = L7_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    return
  end
  L10_2 = DoesEntityExist
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = DetachEntity
    L11_2 = L2_2
    L12_2 = true
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = DeleteEntity
    L11_2 = L7_2
    L10_2(L11_2)
    return
  end
  ::lbl_301::
  L8_2 = Wait
  L9_2 = 75
  L8_2(L9_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L7_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetEntityCollision
  L9_2 = L7_2
  L10_2 = false
  L11_2 = false
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = DetachEntity
  L9_2 = L2_2
  L10_2 = true
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  if L7_2 ~= L2_2 then
    L8_2 = SetEntityAsMissionEntity
    L9_2 = L7_2
    L10_2 = true
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = DeleteEntity
    L9_2 = L7_2
    L8_2(L9_2)
  end
  L8_2 = Entity
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.state
  L8_2 = L8_2.worldContainer
  L8_2 = true == L8_2
  if L8_2 then
    L9_2 = FreezeEntityPosition
    L10_2 = L2_2
    L11_2 = true
    L9_2(L10_2, L11_2)
  else
    L9_2 = FreezeEntityPosition
    L10_2 = L2_2
    L11_2 = false
    L9_2(L10_2, L11_2)
  end
  L9_2 = SetEntityCollision
  L10_2 = L2_2
  L11_2 = true
  L12_2 = true
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = ClearPedTasks
  L10_2 = L3_2
  L9_2(L10_2)
end
function L10_1(A0_2, A1_2, A2_2)
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
function L11_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 - A0_2
  L2_2 = L2_2 % 360.0
  L3_2 = 180.0
  if L2_2 > L3_2 then
    L2_2 = L2_2 - 360.0
  end
  return L2_2
end
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityModel
  L2_2 = L0_1.entity
  L1_2 = L1_2(L2_2)
  L2_2 = GetModelDimensions
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L3_2.y
  L5_2 = L2_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = L4_2 * 0.5
  L6_2 = GetGameplayCamRot
  L7_2 = 2
  L6_2 = L6_2(L7_2)
  L7_2 = GetEntityHeading
  L8_2 = L0_2
  L7_2 = L7_2(L8_2)
  L8_2 = L12_1
  L9_2 = L7_2
  L10_2 = L6_2.z
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L10_1
  L10_2 = L0_1.horizontalMaxAngle
  L10_2 = L8_2 / L10_2
  L11_2 = -1.0
  L12_2 = 1.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = GetEntitySpeed
  L11_2 = L0_2
  L10_2 = L10_2(L11_2)
  L11_2 = 0.15
  L10_2 = L10_2 > L11_2
  if L10_2 then
    L11_2 = L0_1.horizontalMoveMultiplier
    if L11_2 then
      goto lbl_46
    end
  end
  L11_2 = 1.0
  ::lbl_46::
  L12_2 = math
  L12_2 = L12_2.min
  L13_2 = GetFrameTime
  L13_2 = L13_2()
  L14_2 = 0.05
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = L11_1
  L14_2 = L0_1.currentMoveMultiplier
  L15_2 = L11_2
  L16_2 = math
  L16_2 = L16_2.min
  L17_2 = L0_1.horizontalAdaptSpeed
  L17_2 = L17_2 * L12_2
  L18_2 = 1.0
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L16_2(L17_2, L18_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L0_1.currentMoveMultiplier = L13_2
  L13_2 = nil
  if not L10_2 then
    if L9_2 > 0.0 then
      L13_2 = L0_1.horizontalMaxOffsetLeft
    else
      L13_2 = L0_1.horizontalMaxOffsetRight
    end
  elseif L9_2 > 0.0 then
    L13_2 = L0_1.horizontalMaxOffsetRight
  else
    L13_2 = L0_1.horizontalMaxOffsetLeft
  end
  L14_2 = L0_1.currentMoveMultiplier
  L13_2 = L13_2 * L14_2
  L14_2 = nil
  if L10_2 then
    L14_2 = L9_2 * L13_2
  else
    L15_2 = -L9_2
    L14_2 = L15_2 * L13_2
  end
  L15_2 = IsControlPressed
  L16_2 = 0
  L17_2 = 32
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = IsControlPressed
  L17_2 = 0
  L18_2 = 35
  L16_2 = L16_2(L17_2, L18_2)
  if L15_2 or L16_2 then
    L17_2 = L0_1.forwardRightOffset
    if L17_2 then
      goto lbl_106
    end
  end
  L17_2 = 0.0
  ::lbl_106::
  L18_2 = L11_1
  L19_2 = L0_1.currentForwardRightOffset
  L20_2 = L17_2
  L21_2 = math
  L21_2 = L21_2.min
  L22_2 = L0_1.horizontalAdaptSpeed
  L22_2 = L22_2 * L12_2
  L23_2 = 1.0
  L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L21_2(L22_2, L23_2)
  L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L0_1.currentForwardRightOffset = L18_2
  L18_2 = L0_1.currentForwardRightOffset
  L14_2 = L14_2 + L18_2
  L18_2 = L10_1
  L19_2 = L6_2.x
  L20_2 = L0_1.cameraPitchMin
  L19_2 = L19_2 - L20_2
  L20_2 = L0_1.cameraPitchMax
  L21_2 = L0_1.cameraPitchMin
  L20_2 = L20_2 - L21_2
  L19_2 = L19_2 / L20_2
  L20_2 = 0.0
  L21_2 = 1.0
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L19_2 = L11_1
  L20_2 = L0_1.verticalDown
  L21_2 = L0_1.verticalUp
  L22_2 = L18_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L20_2 = L11_1
  L21_2 = L0_1.propNearDistance
  L22_2 = L0_1.propFarDistance
  L23_2 = L18_2
  L20_2 = L20_2(L21_2, L22_2, L23_2)
  L21_2 = GetEntitySpeed
  L22_2 = L0_2
  L21_2 = L21_2(L22_2)
  L22_2 = 0.15
  L21_2 = L21_2 > L22_2
  if not L21_2 then
    L22_2 = L0_1.stationaryUpForward
    L22_2 = L22_2 * L18_2
    L20_2 = L20_2 + L22_2
  end
  L22_2 = L20_2 + L5_2
  L23_2 = GetOffsetFromEntityInWorldCoords
  L24_2 = L0_2
  L25_2 = L14_2
  L26_2 = L22_2
  L27_2 = L19_2
  return L23_2(L24_2, L25_2, L26_2, L27_2)
end
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1.entity
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L0_1.entity
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = GetEntityModel
  L1_2 = L0_1.entity
  L0_2 = L0_2(L1_2)
  L1_2 = GetModelDimensions
  L2_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = L2_2.x
  L4_2 = L1_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = L3_2 * 0.5
  L5_2 = L0_1.gripExtraWidth
  L4_2 = L4_2 + L5_2
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L0_1.gripMinHalfWidth
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = L0_1.gripMaxHalfWidth
  L9_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2 = L5_2
  L5_2 = vec3
  L6_2 = L4_2
  L7_2 = 0.0
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L0_1.leftGrip = L5_2
  L5_2 = vec3
  L6_2 = -L4_2
  L7_2 = 0.0
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L0_1.rightGrip = L5_2
end
function L15_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 - A0_2
  L2_2 = L2_2 + 180.0
  L2_2 = L2_2 % 360.0
  L2_2 = L2_2 - 180.0
  return L2_2
end
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = L0_1.bodyTurn
  L0_2 = L0_2.enabled
  if not L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetGameplayCamRot
  L2_2 = 2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.z
  L3_2 = GetEntityHeading
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L15_1
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = GetEntitySpeed
  L6_2 = L0_2
  L5_2 = L5_2(L6_2)
  L6_2 = 0.15
  L5_2 = L5_2 > L6_2
  if L5_2 then
    L6_2 = L0_1.bodyTurn
    L6_2 = L6_2.movingStartAngle
    if L6_2 then
      goto lbl_35
    end
  end
  L6_2 = L0_1.bodyTurn
  L6_2 = L6_2.startAngle
  ::lbl_35::
  if L5_2 then
    L7_2 = L0_1.bodyTurn
    L7_2 = L7_2.movingStopAngle
    if L7_2 then
      goto lbl_43
    end
  end
  L7_2 = L0_1.bodyTurn
  L7_2 = L7_2.stopAngle
  ::lbl_43::
  if L5_2 then
    L8_2 = L0_1.bodyTurn
    L8_2 = L8_2.movingMaxSpeed
    if L8_2 then
      goto lbl_51
    end
  end
  L8_2 = L0_1.bodyTurn
  L8_2 = L8_2.maxSpeed
  ::lbl_51::
  L9_2 = L0_1.bodyTurn
  L9_2 = L9_2.tracking
  if L9_2 then
    L9_2 = math
    L9_2 = L9_2.abs
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    if L7_2 >= L9_2 then
      L9_2 = L0_1.bodyTurn
      L9_2.tracking = false
      return
    end
    L9_2 = math
    L9_2 = L9_2.min
    L10_2 = GetFrameTime
    L10_2 = L10_2()
    L11_2 = 0.05
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L8_2 * L9_2
    L11_2 = math
    L11_2 = L11_2.max
    L12_2 = -L10_2
    L13_2 = math
    L13_2 = L13_2.min
    L14_2 = L10_2
    L15_2 = L4_2
    L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L12_2 = SetEntityHeading
    L13_2 = L0_2
    L14_2 = L3_2 + L11_2
    L12_2(L13_2, L14_2)
  else
    L9_2 = math
    L9_2 = L9_2.abs
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    if L6_2 <= L9_2 then
      L9_2 = L0_1.bodyTurn
      L9_2.tracking = true
    end
  end
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = vec3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L3_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = L17_1
  L4_2 = GetGameplayCamRot
  L5_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = L3_2 * A0_2
  L4_2 = L2_2 + L4_2
  L5_2 = StartShapeTestRay
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = L2_2.z
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = -1
  L13_2 = L1_2
  L14_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = GetShapeTestResult
  L7_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L9_2 = L8_2 or L9_2
  if 1 ~= L7_2 or not L8_2 then
    L9_2 = L4_2
  end
  return L9_2
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = A0_2
  L4_2 = A1_2.x
  L5_2 = A1_2.y
  L6_2 = A1_2.z
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L20_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  if not A0_2 then
    return
  end
  L4_2 = DrawMarker
  L5_2 = 28
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.045
  L16_2 = 0.045
  L17_2 = 0.045
  L18_2 = A1_2
  L19_2 = A2_2
  L20_2 = A3_2
  L21_2 = 220
  L22_2 = false
  L23_2 = false
  L24_2 = 2
  L25_2 = false
  L26_2 = nil
  L27_2 = nil
  L28_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPedBoneIndex
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetWorldPositionOfEntityBone
  L4_2 = A0_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L0_1.drawDebug
  if not L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L21_1
  L2_2 = L0_2
  L3_2 = 18905
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L21_1
  L3_2 = L0_2
  L4_2 = 57005
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L0_1.leftTarget
  if L3_2 then
    L3_2 = L20_1
    L4_2 = L0_1.leftTarget
    L5_2 = 50
    L6_2 = 150
    L7_2 = 255
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = L0_1.drawLines
    if L3_2 then
      L3_2 = DrawLine
      L4_2 = L1_2.x
      L5_2 = L1_2.y
      L6_2 = L1_2.z
      L7_2 = L0_1.leftTarget
      L7_2 = L7_2.x
      L8_2 = L0_1.leftTarget
      L8_2 = L8_2.y
      L9_2 = L0_1.leftTarget
      L9_2 = L9_2.z
      L10_2 = 50
      L11_2 = 150
      L12_2 = 255
      L13_2 = 200
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L3_2 = L0_1.rightTarget
  if L3_2 then
    L3_2 = L20_1
    L4_2 = L0_1.rightTarget
    L5_2 = 255
    L6_2 = 80
    L7_2 = 80
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = L0_1.drawLines
    if L3_2 then
      L3_2 = DrawLine
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L6_2 = L2_2.z
      L7_2 = L0_1.rightTarget
      L7_2 = L7_2.x
      L8_2 = L0_1.rightTarget
      L8_2 = L8_2.y
      L9_2 = L0_1.rightTarget
      L9_2 = L9_2.z
      L10_2 = 255
      L11_2 = 80
      L12_2 = 80
      L13_2 = 200
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
end
function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L3_2 = L0_1.limitReach
    if L3_2 then
      goto lbl_7
    end
  end
  do return A0_2 end
  ::lbl_7::
  L3_2 = GetEntityCoords
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2 - L3_2
  L5_2 = #L4_2
  if not (A1_2 >= L5_2) then
    L6_2 = 0.001
    if not (L5_2 <= L6_2) then
      goto lbl_19
    end
  end
  do return A0_2 end
  ::lbl_19::
  L6_2 = L4_2 / L5_2
  L6_2 = L6_2 * A1_2
  L6_2 = L3_2 + L6_2
  return L6_2
end
function L24_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A0_2 and 0 ~= A0_2 then
    L4_2 = DoesEntityExist
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 and A2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L4_2 = L23_1
  L5_2 = A2_2
  L6_2 = A3_2
  L7_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A2_2 = L4_2
  L4_2 = IsEntityPlayingAnim
  L5_2 = A0_2
  L6_2 = "impexp_int-0"
  L7_2 = "mp_m_waremech_01_dual-0"
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = L5_1
    L5_2 = A0_2
    L4_2(L5_2)
  end
  L4_2 = SetIkTarget
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = 0
  L8_2 = L0_1.targetBone
  L9_2 = A2_2.x
  L10_2 = A2_2.y
  L11_2 = A2_2.z
  L12_2 = L0_1.flags
  L13_2 = L0_1.blendIn
  L14_2 = L0_1.blendOut
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L0_1.leftTarget
  if L1_2 then
    L1_2 = L24_1
    L2_2 = L0_2
    L3_2 = L0_1.leftIndex
    L4_2 = L0_1.leftTarget
    L5_2 = L0_1.leftMaxReach
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = L0_1.rightTarget
  if L1_2 then
    L1_2 = L24_1
    L2_2 = L0_2
    L3_2 = L0_1.rightIndex
    L4_2 = L0_1.rightTarget
    L5_2 = L0_1.rightMaxReach
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
function L26_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 and 0 ~= A0_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  if A1_2 and 0 ~= A1_2 then
    L3_2 = DoesEntityExist
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L3_2 = getPropTargets
  L4_2 = A1_2
  L5_2 = A2_2.leftGrip
  L6_2 = A2_2.rightGrip
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L5_2 = L24_1
    L6_2 = A0_2
    L7_2 = L0_1.leftIndex
    L8_2 = L3_2
    L9_2 = L0_1.leftMaxReach
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  if L4_2 then
    L5_2 = L24_1
    L6_2 = A0_2
    L7_2 = L0_1.rightIndex
    L8_2 = L4_2
    L9_2 = L0_1.rightMaxReach
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
function L27_1()
  local L0_2, L1_2
  L0_1.active = false
  L0_1.mode = nil
  L0_1.leftTarget = nil
  L0_1.rightTarget = nil
  L0_1.propCurrentPos = nil
  L0_2 = L0_1.bodyTurn
  L0_2.tracking = false
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
end
function L28_1(A0_2)
  local L1_2
  L1_2 = L27_1
  L1_2()
  L1_2 = L5_1
  L1_2()
  L0_1.mode = A0_2
  L0_1.active = true
end
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_10
    end
  end
  L3_2 = nil
  L4_2 = nil
  do return L3_2, L4_2 end
  ::lbl_10::
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = L19_1
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L19_1
  L6_2 = A0_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L4_2 or not L5_2 then
    L6_2 = L4_2
    L7_2 = L5_2
    return L6_2, L7_2
  end
  L6_2 = GetOffsetFromEntityGivenWorldCoords
  L7_2 = L3_2
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = GetOffsetFromEntityGivenWorldCoords
  L8_2 = L3_2
  L9_2 = L5_2.x
  L10_2 = L5_2.y
  L11_2 = L5_2.z
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L6_2.x
  L9_2 = L7_2.x
  if L8_2 <= L9_2 then
    L8_2 = L4_2
    L9_2 = L5_2
    return L8_2, L9_2
  else
    L8_2 = L5_2
    L9_2 = L4_2
    return L8_2, L9_2
  end
end
function L30_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1.entity
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L0_1.entity
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = L29_1
  L1_2 = L0_1.entity
  L2_2 = L0_1.leftGrip
  L3_2 = L0_1.rightGrip
  L0_2, L1_2 = L0_2(L1_2, L2_2, L3_2)
  L0_1.rightTarget = L1_2
  L0_1.leftTarget = L0_2
end
L31_1 = 0
L32_1 = 70
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = L0_1.entity
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L0_1.entity
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = 0.85
  L1_2 = -0.85
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.fodera2
  L2_2(L3_2)
  L2_2 = StrafeLoop_Grinder
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L2_2 = L16_1
  L2_2()
  L2_2 = L0_1.propHeadingOffset
  if not L2_2 then
    L2_2 = 0.0
  end
  L0_1.propHeadingOffset = L2_2
  L2_2 = L0_1.propPitchOffset
  if not L2_2 then
    L2_2 = 0.0
  end
  L0_1.propPitchOffset = L2_2
  L2_2 = L0_1.propVerticalOffset
  if not L2_2 then
    L2_2 = 0.0
  end
  L0_1.propVerticalOffset = L2_2
  L2_2 = L0_1.propDistanceOffset
  if not L2_2 then
    L2_2 = 0.0
  end
  L0_1.propDistanceOffset = L2_2
  L2_2 = IsControlPressed
  L3_2 = 0
  L4_2 = 21
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsDisabledControlPressed
    L3_2 = 0
    L4_2 = 21
    L2_2 = L2_2(L3_2, L4_2)
  end
  L3_2 = IsControlPressed
  L4_2 = 0
  L5_2 = 36
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = IsDisabledControlPressed
    L4_2 = 0
    L5_2 = 36
    L3_2 = L3_2(L4_2, L5_2)
  end
  L4_2 = IsDisabledControlJustPressed
  L5_2 = 0
  L6_2 = 14
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = IsControlJustPressed
    L5_2 = 0
    L6_2 = 14
    L4_2 = L4_2(L5_2, L6_2)
  end
  L5_2 = IsDisabledControlJustPressed
  L6_2 = 0
  L7_2 = 15
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = IsControlJustPressed
    L6_2 = 0
    L7_2 = 15
    L5_2 = L5_2(L6_2, L7_2)
  end
  if L4_2 then
    if L3_2 and L2_2 then
      L6_2 = L10_1
      L7_2 = L0_1.propDistanceOffset
      L7_2 = L7_2 - 0.05
      L8_2 = -0.15
      L9_2 = L0_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L0_1.propDistanceOffset = L6_2
    elseif L3_2 then
      L6_2 = L10_1
      L7_2 = L0_1.propVerticalOffset
      L7_2 = L7_2 - 0.05
      L8_2 = L1_2
      L9_2 = L0_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L0_1.propVerticalOffset = L6_2
    elseif L2_2 then
      L6_2 = L0_1.propPitchOffset
      L6_2 = L6_2 - 5.0
      L0_1.propPitchOffset = L6_2
      L6_2 = L0_1.propPitchOffset
      L7_2 = -180.0
      if L6_2 < L7_2 then
        L6_2 = L0_1.propPitchOffset
        L6_2 = L6_2 + 360.0
        L0_1.propPitchOffset = L6_2
      end
    else
      L6_2 = L0_1.propHeadingOffset
      L6_2 = L6_2 - 5.0
      L0_1.propHeadingOffset = L6_2
      L6_2 = L0_1.propHeadingOffset
      if L6_2 < 0.0 then
        L6_2 = L0_1.propHeadingOffset
        L6_2 = L6_2 + 360.0
        L0_1.propHeadingOffset = L6_2
      end
    end
  end
  if L5_2 then
    if L3_2 and L2_2 then
      L6_2 = L10_1
      L7_2 = L0_1.propDistanceOffset
      L7_2 = L7_2 + 0.05
      L8_2 = L1_2
      L9_2 = L0_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L0_1.propDistanceOffset = L6_2
    elseif L3_2 then
      L6_2 = L10_1
      L7_2 = L0_1.propVerticalOffset
      L7_2 = L7_2 + 0.05
      L8_2 = L1_2
      L9_2 = L0_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L0_1.propVerticalOffset = L6_2
    elseif L2_2 then
      L6_2 = L0_1.propPitchOffset
      L6_2 = L6_2 + 5.0
      L0_1.propPitchOffset = L6_2
      L6_2 = L0_1.propPitchOffset
      L7_2 = 180.0
      if L6_2 > L7_2 then
        L6_2 = L0_1.propPitchOffset
        L6_2 = L6_2 - 360.0
        L0_1.propPitchOffset = L6_2
      end
    else
      L6_2 = L0_1.propHeadingOffset
      L6_2 = L6_2 + 5.0
      L0_1.propHeadingOffset = L6_2
      L6_2 = L0_1.propHeadingOffset
      L7_2 = 360.0
      if L6_2 >= L7_2 then
        L6_2 = L0_1.propHeadingOffset
        L6_2 = L6_2 - 360.0
        L0_1.propHeadingOffset = L6_2
      end
    end
  end
  L6_2 = L13_1
  L6_2 = L6_2()
  L7_2 = vec3
  L8_2 = L6_2.x
  L9_2 = L6_2.y
  L10_2 = L6_2.z
  L11_2 = L0_1.propVerticalOffset
  L10_2 = L10_2 + L11_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L7_2
  L7_2 = math
  L7_2 = L7_2.abs
  L8_2 = L0_1.propDistanceOffset
  L7_2 = L7_2(L8_2)
  L8_2 = 0.001
  if L7_2 > L8_2 then
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L6_2.x
    L10_2 = L8_2.x
    L9_2 = L9_2 - L10_2
    L10_2 = L6_2.y
    L11_2 = L8_2.y
    L10_2 = L10_2 - L11_2
    L11_2 = L6_2.z
    L12_2 = L8_2.z
    L11_2 = L11_2 - L12_2
    L12_2 = math
    L12_2 = L12_2.sqrt
    L13_2 = L9_2 * L9_2
    L14_2 = L10_2 * L10_2
    L13_2 = L13_2 + L14_2
    L14_2 = L11_2 * L11_2
    L13_2 = L13_2 + L14_2
    L12_2 = L12_2(L13_2)
    L13_2 = 0.001
    if L12_2 > L13_2 then
      L9_2 = L9_2 / L12_2
      L10_2 = L10_2 / L12_2
      L11_2 = L11_2 / L12_2
      L13_2 = vec3
      L14_2 = L6_2.x
      L15_2 = L0_1.propDistanceOffset
      L15_2 = L9_2 * L15_2
      L14_2 = L14_2 + L15_2
      L15_2 = L6_2.y
      L16_2 = L0_1.propDistanceOffset
      L16_2 = L10_2 * L16_2
      L15_2 = L15_2 + L16_2
      L16_2 = L6_2.z
      L17_2 = L0_1.propDistanceOffset
      L17_2 = L11_2 * L17_2
      L16_2 = L16_2 + L17_2
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L6_2 = L13_2
    end
  end
  L7_2 = L0_1.propCurrentPos
  if not L7_2 then
    L7_2 = GetEntityCoords
    L8_2 = L0_1.entity
    L7_2 = L7_2(L8_2)
    L0_1.propCurrentPos = L7_2
  end
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = GetFrameTime
  L8_2 = L8_2()
  L9_2 = 0.05
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L10_1
  L9_2 = L0_1.propMoveSpeed
  L9_2 = L9_2 * L7_2
  L10_2 = 0.0
  L11_2 = 1.0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = vec3
  L10_2 = L11_1
  L11_2 = L0_1.propCurrentPos
  L11_2 = L11_2.x
  L12_2 = L6_2.x
  L13_2 = L8_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = L11_1
  L12_2 = L0_1.propCurrentPos
  L12_2 = L12_2.y
  L13_2 = L6_2.y
  L14_2 = L8_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = L11_1
  L13_2 = L0_1.propCurrentPos
  L13_2 = L13_2.z
  L14_2 = L6_2.z
  L15_2 = L8_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2(L13_2, L14_2, L15_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L0_1.propCurrentPos = L9_2
  L9_2 = SetEntityCoordsNoOffset
  L10_2 = L0_1.entity
  L11_2 = L0_1.propCurrentPos
  L11_2 = L11_2.x
  L12_2 = L0_1.propCurrentPos
  L12_2 = L12_2.y
  L13_2 = L0_1.propCurrentPos
  L13_2 = L13_2.z
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = GetEntityCoords
  L11_2 = L0_1.entity
  L10_2 = L10_2(L11_2)
  L11_2 = GetEntityCoords
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L12_2 = L11_2.x
  L13_2 = L10_2.x
  L12_2 = L12_2 - L13_2
  L13_2 = L11_2.y
  L14_2 = L10_2.y
  L13_2 = L13_2 - L14_2
  L14_2 = GetHeadingFromVector_2d
  L15_2 = L12_2
  L16_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = L0_1.propHeadingOffset
  L15_2 = L14_2 + L15_2
  L16_2 = 360.0
  if L15_2 >= L16_2 then
    L15_2 = L15_2 - 360.0
  elseif L15_2 < 0.0 then
    L15_2 = L15_2 + 360.0
  end
  L16_2 = SetEntityRotation
  L17_2 = L0_1.entity
  L18_2 = L0_1.propPitchOffset
  L19_2 = 0.0
  L20_2 = L15_2
  L21_2 = 2
  L22_2 = true
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L16_2 = L30_1
  L16_2()
  L16_2 = GetGameTimer
  L16_2 = L16_2()
  L17_2 = L0_1.netId
  if L17_2 then
    L17_2 = L0_1.netId
    if 0 ~= L17_2 then
      L17_2 = L31_1
      L17_2 = L16_2 - L17_2
      L18_2 = L32_1
      if L17_2 >= L18_2 then
        L31_1 = L16_2
        L17_2 = TriggerServerEvent
        L18_2 = "striano_ik:grabSync"
        L19_2 = L0_1.netId
        L20_2 = {}
        L21_2 = L0_1.propCurrentPos
        L21_2 = L21_2.x
        L20_2.x = L21_2
        L21_2 = L0_1.propCurrentPos
        L21_2 = L21_2.y
        L20_2.y = L21_2
        L21_2 = L0_1.propCurrentPos
        L21_2 = L21_2.z
        L20_2.z = L21_2
        L21_2 = L15_2
        L17_2(L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
end
function L34_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "striano_ik:grabStop"
  L0_2(L1_2)
  L0_1.netId = nil
end
stopFollowHands = L34_1
FollowHandsRunning = false
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = FollowHandsRunning
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L0_1.entity = A0_2
      L1_2 = FreezeEntityPosition
      L2_2 = L0_1.entity
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityCollision
      L2_2 = L0_1.entity
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DetachEntity
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = L14_1
      L1_2()
      L0_1.mode = "prop_camera"
      L0_1.active = true
  end
  else
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "string" == L1_2 then
      L0_1.model = A0_2
      L1_2 = L28_1
      L2_2 = "prop_camera"
      L1_2(L2_2)
      L1_2 = L0_1.active
      if L1_2 then
        L1_2 = L0_1.entity
        if L1_2 then
          L1_2 = DoesEntityExist
          L2_2 = L0_1.entity
          L1_2 = L1_2(L2_2)
        end
      end
      if not L1_2 then
        L1_2 = stopFollowHands
        L1_2()
        L1_2 = false
        return L1_2
      end
    elseif nil == A0_2 then
      L1_2 = L28_1
      L2_2 = "prop_camera"
      L1_2(L2_2)
      L1_2 = L0_1.active
      if L1_2 then
        L1_2 = L0_1.entity
        if L1_2 then
          L1_2 = DoesEntityExist
          L2_2 = L0_1.entity
          L1_2 = L1_2(L2_2)
        end
      end
      if not L1_2 then
        L1_2 = stopFollowHands
        L1_2()
        L1_2 = false
        return L1_2
      end
    else
      L1_2 = print
      L2_2 = "^1[IK] StartFollowHandsProp: invalid prop/entity^0"
      L1_2(L2_2)
      L1_2 = stopFollowHands
      L1_2()
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = GetValidNetId
  L2_2 = L0_1.entity
  L1_2 = L1_2(L2_2)
  L0_1.netId = L1_2
  L1_2 = 0
  L31_1 = L1_2
  L1_2 = L0_1.netId
  if L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "striano_ik:grabStart"
    L3_2 = L0_1.netId
    L4_2 = L0_1.leftGrip
    L5_2 = L0_1.rightGrip
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L0_1.propCurrentPos = nil
  L1_2 = L0_1.bodyTurn
  L1_2.tracking = false
  FollowHandsRunning = true
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = FollowHandsRunning
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 23
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableFirstPersonCamThisFrame
      L0_3()
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsEntityDead
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = IsPedFatallyInjured
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedRagdoll
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = L0_1.entity
            if L1_3 then
              L1_3 = DoesEntityExist
              L2_3 = L0_1.entity
              L1_3 = L1_3(L2_3)
              if L1_3 then
                goto lbl_43
              end
            end
          end
        end
      end
      FollowHandsRunning = false
      L1_3 = L27_1
      L1_3()
      do break end
      ::lbl_43::
      L1_3 = L0_1.entity
      if L1_3 then
        L1_3 = DoesEntityExist
        L2_3 = L0_1.entity
        L1_3 = L1_3(L2_3)
        if L1_3 then
          goto lbl_55
        end
      end
      FollowHandsRunning = false
      L0_1.active = false
      L0_1.mode = nil
      do break end
      ::lbl_55::
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 22
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsDisabledControlJustPressed
        L2_3 = 0
        L3_3 = 22
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          goto lbl_70
        end
      end
      L1_3 = TaskClimb
      L2_3 = L0_3
      L1_3(L2_3)
      ::lbl_70::
      L1_3 = FollowHandsRunning
      if not L1_3 then
        L1_3 = stopFollowHands
        L1_3()
        return
      end
      L1_3 = L33_1
      L1_3()
      L1_3 = IsPedClimbing
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = IsPedSwimming
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedSwimmingUnderWater
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = L25_1
            L1_3()
          end
        end
      end
      L1_3 = L22_1
      L1_3()
    end
    FollowHandsRunning = false
  end
  L1_2(L2_2)
end
StartFollowHandsProp = L34_1
L34_1 = exports
L35_1 = "releaseProp"
L36_1 = L9_1
L34_1(L35_1, L36_1)
L34_1 = exports
L35_1 = "StartFollowHandsProp"
L36_1 = StartFollowHandsProp
L34_1(L35_1, L36_1)
L34_1 = exports
L35_1 = "IsFollowHandsPropActive"
function L36_1()
  local L0_2, L1_2
  L0_2 = FollowHandsRunning
  L0_2 = true == L0_2
  return L0_2
end
L34_1(L35_1, L36_1)
L34_1 = AddEventHandler
L35_1 = "onResourceStop"
function L36_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L27_1
  L1_2()
end
L34_1(L35_1, L36_1)
L34_1 = {}
L35_1 = false
function L36_1()
  local L0_2, L1_2
  L0_2 = L35_1
  if L0_2 then
    return
  end
  L0_2 = true
  L35_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    while true do
      L0_3 = next
      L1_3 = L34_1
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = math
      L0_3 = L0_3.min
      L1_3 = GetFrameTime
      L1_3 = L1_3()
      L2_3 = 0.05
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = pairs
      L2_3 = L34_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.entity
        if L7_3 then
          L7_3 = DoesEntityExist
          L8_3 = L6_3.entity
          L7_3 = L7_3(L8_3)
          if L7_3 then
            L7_3 = L6_3.targetPos
            if L7_3 then
              L7_3 = L6_3.currentPos
              if not L7_3 then
                L7_3 = GetEntityCoords
                L8_3 = L6_3.entity
                L7_3 = L7_3(L8_3)
                L6_3.currentPos = L7_3
              end
              L7_3 = L10_1
              L8_3 = 12.0 * L0_3
              L9_3 = 0.0
              L10_3 = 1.0
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              L8_3 = vec3
              L9_3 = L11_1
              L10_3 = L6_3.currentPos
              L10_3 = L10_3.x
              L11_3 = L6_3.targetPos
              L11_3 = L11_3.x
              L12_3 = L7_3
              L9_3 = L9_3(L10_3, L11_3, L12_3)
              L10_3 = L11_1
              L11_3 = L6_3.currentPos
              L11_3 = L11_3.y
              L12_3 = L6_3.targetPos
              L12_3 = L12_3.y
              L13_3 = L7_3
              L10_3 = L10_3(L11_3, L12_3, L13_3)
              L11_3 = L11_1
              L12_3 = L6_3.currentPos
              L12_3 = L12_3.z
              L13_3 = L6_3.targetPos
              L13_3 = L13_3.z
              L14_3 = L7_3
              L11_3, L12_3, L13_3, L14_3, L15_3 = L11_3(L12_3, L13_3, L14_3)
              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
              L6_3.currentPos = L8_3
              L8_3 = SetEntityCoordsNoOffset
              L9_3 = L6_3.entity
              L10_3 = L6_3.currentPos
              L10_3 = L10_3.x
              L11_3 = L6_3.currentPos
              L11_3 = L11_3.y
              L12_3 = L6_3.currentPos
              L12_3 = L12_3.z
              L13_3 = false
              L14_3 = false
              L15_3 = false
              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
              L8_3 = SetEntityHeading
              L9_3 = L6_3.entity
              L10_3 = L6_3.heading
              L8_3(L9_3, L10_3)
              L8_3 = GetPlayerFromServerId
              L9_3 = L5_3
              L8_3 = L8_3(L9_3)
              if -1 ~= L8_3 then
                L9_3 = GetPlayerPed
                L10_3 = L8_3
                L9_3 = L9_3(L10_3)
                if 0 ~= L9_3 then
                  L10_3 = DoesEntityExist
                  L11_3 = L9_3
                  L10_3 = L10_3(L11_3)
                  if L10_3 then
                    L10_3 = L26_1
                    L11_3 = L9_3
                    L12_3 = L6_3.entity
                    L13_3 = L6_3
                    L10_3(L11_3, L12_3, L13_3)
                  end
                end
              end
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L0_3 = false
    L35_1 = L0_3
  end
  L0_2(L1_2)
end
L37_1 = RegisterNetEvent
L38_1 = "striano_ik:grabSync"
function L39_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if A0_2 == L4_2 then
    return
  end
  L4_2 = NetToObj
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L5_2 = L34_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L6_2 = {}
    L6_2.entity = L4_2
    L7_2 = vec3
    L8_2 = A2_2.x
    L9_2 = A2_2.y
    L10_2 = A2_2.z
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.targetPos = L7_2
    L7_2 = GetEntityCoords
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2.currentPos = L7_2
    L6_2.heading = A3_2
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    L6_2.lastUpdate = L7_2
    L5_2 = L6_2
    L6_2 = L34_1
    L6_2[A0_2] = L5_2
  else
    L5_2.entity = L4_2
    L6_2 = vec3
    L7_2 = A2_2.x
    L8_2 = A2_2.y
    L9_2 = A2_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.targetPos = L6_2
    L5_2.heading = A3_2
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L5_2.lastUpdate = L6_2
  end
  L6_2 = L36_1
  L6_2()
end
L37_1(L38_1, L39_1)
L37_1 = RegisterNetEvent
L38_1 = "striano_ik:grabStop"
function L39_1(A0_2)
  local L1_2
  L1_2 = L34_1
  L1_2[A0_2] = nil
end
L37_1(L38_1, L39_1)
L37_1 = false
L38_1 = 14201
L39_1 = 52301
L40_1 = 0.18
L41_1 = 0.65
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = GetPedBoneCoords
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = vector3
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = L40_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_2 + L3_2
  L4_2 = vector3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = L41_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2 = L2_2 - L4_2
  L5_2 = _ENV
  L6_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L5_2 = L5_2[L6_2]
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = 1
  L13_2 = A0_2
  L14_2 = 7
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = GetShapeTestResult
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L11_2 = 2 == L6_2 and 1 == L7_2
  L12_2 = L3_2
  L13_2 = L4_2
  L14_2 = L8_2
  L15_2 = L9_2
  L16_2 = L10_2
  return L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
end
function L43_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  if A2_2 then
    L5_2 = DrawLine
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L9_2 = A3_2.x
    L10_2 = A3_2.y
    L11_2 = A3_2.z
    L12_2 = 0
    L13_2 = 255
    L14_2 = 80
    L15_2 = 255
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L5_2 = DrawLine
    L6_2 = A3_2.x
    L7_2 = A3_2.y
    L8_2 = A3_2.z
    L9_2 = A3_2.x
    L10_2 = A4_2.x
    L10_2 = L10_2 * 0.35
    L9_2 = L9_2 + L10_2
    L10_2 = A3_2.y
    L11_2 = A4_2.y
    L11_2 = L11_2 * 0.35
    L10_2 = L10_2 + L11_2
    L11_2 = A3_2.z
    L12_2 = A4_2.z
    L12_2 = L12_2 * 0.35
    L11_2 = L11_2 + L12_2
    L12_2 = 255
    L13_2 = 200
    L14_2 = 0
    L15_2 = 255
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L5_2 = DrawMarker
    L6_2 = 28
    L7_2 = A3_2.x
    L8_2 = A3_2.y
    L9_2 = A3_2.z
    L9_2 = L9_2 + 0.01
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.045
    L17_2 = 0.045
    L18_2 = 0.045
    L19_2 = 0
    L20_2 = 255
    L21_2 = 80
    L22_2 = 220
    L23_2 = false
    L24_2 = false
    L25_2 = 2
    L26_2 = false
    L27_2 = nil
    L28_2 = nil
    L29_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  else
    L5_2 = DrawLine
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L9_2 = A1_2.x
    L10_2 = A1_2.y
    L11_2 = A1_2.z
    L12_2 = 255
    L13_2 = 40
    L14_2 = 40
    L15_2 = 255
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
L44_1 = false
function L45_1()
  local L0_2, L1_2
  L0_2 = L37_1
  if L0_2 then
    return
  end
  L0_2 = true
  L37_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    while true do
      L0_3 = L37_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = DoesEntityExist
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = IsEntityDead
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedInAnyVehicle
          L2_3 = L0_3
          L3_3 = false
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = L42_1
            L2_3 = L0_3
            L3_3 = L38_1
            L1_3, L2_3, L3_3, L4_3, L5_3 = L1_3(L2_3, L3_3)
            L6_3 = L42_1
            L7_3 = L0_3
            L8_3 = L39_1
            L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3, L8_3)
            L11_3 = SetPedLegIkMode
            L12_3 = L0_3
            L13_3 = 2
            L11_3(L12_3, L13_3)
            L11_3 = L44_1
            if L11_3 then
              L11_3 = L43_1
              L12_3 = L2_3
              L13_3 = L3_3
              L14_3 = L1_3
              L15_3 = L4_3
              L16_3 = L5_3
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
              L11_3 = L43_1
              L12_3 = L7_3
              L13_3 = L8_3
              L14_3 = L6_3
              L15_3 = L9_3
              L16_3 = L10_3
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
              L11_3 = exports
              L11_3 = L11_3.striano_core
              L12_3 = L11_3
              L11_3 = L11_3.Debug
              L13_3 = "Foot IK left"
              L14_3 = L1_3
              L11_3(L12_3, L13_3, L14_3)
              L11_3 = exports
              L11_3 = L11_3.striano_core
              L12_3 = L11_3
              L11_3 = L11_3.Debug
              L13_3 = "Foot IK right"
              L14_3 = L6_3
              L11_3(L12_3, L13_3, L14_3)
              if L1_3 then
                L11_3 = exports
                L11_3 = L11_3.striano_core
                L12_3 = L11_3
                L11_3 = L11_3.Debug
                L13_3 = "Left normal"
                L14_3 = "%.2f %.2f %.2f"
                L15_3 = L14_3
                L14_3 = L14_3.format
                L16_3 = L5_3.x
                L17_3 = L5_3.y
                L18_3 = L5_3.z
                L14_3, L15_3, L16_3, L17_3, L18_3 = L14_3(L15_3, L16_3, L17_3, L18_3)
                L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
              end
              if L6_3 then
                L11_3 = exports
                L11_3 = L11_3.striano_core
                L12_3 = L11_3
                L11_3 = L11_3.Debug
                L13_3 = "Right normal"
                L14_3 = "%.2f %.2f %.2f"
                L15_3 = L14_3
                L14_3 = L14_3.format
                L16_3 = L10_3.x
                L17_3 = L10_3.y
                L18_3 = L10_3.z
                L14_3, L15_3, L16_3, L17_3, L18_3 = L14_3(L15_3, L16_3, L17_3, L18_3)
                L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
              end
            end
        end
      end
      else
        L1_3 = SetPedLegIkMode
        L2_3 = L0_3
        L3_3 = 0
        L1_3(L2_3, L3_3)
        L1_3 = Wait
        L2_3 = 250
        L1_3(L2_3)
      end
    end
    L0_3 = SetPedLegIkMode
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = L44_1
    if L0_3 then
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.RemoveDebug
      L2_3 = "Foot IK left"
      L0_3(L1_3, L2_3)
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.RemoveDebug
      L2_3 = "Foot IK right"
      L0_3(L1_3, L2_3)
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.RemoveDebug
      L2_3 = "Left normal"
      L0_3(L1_3, L2_3)
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.RemoveDebug
      L2_3 = "Right normal"
      L0_3(L1_3, L2_3)
    end
  end
  L0_2(L1_2)
end
function L46_1()
  local L0_2, L1_2
  L0_2 = false
  L37_1 = L0_2
end
L47_1 = L45_1
L47_1()
