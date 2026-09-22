local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "^2[Striano Rugby] ^7Script is ready, have fun."
  L0_2(L1_2)
end
L0_1(L1_1)
libstrafe = "move_strafe@first_person@generic"
currentStance = "walk_"
L0_1 = currentStance
L1_1 = "fwd_0_loop"
L0_1 = L0_1 .. L1_1
strafe_fw = L0_1
L0_1 = currentStance
L1_1 = "bwd_180_loop"
L0_1 = L0_1 .. L1_1
strafe_bk = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = HasAnimDictLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDict
    L3_2 = L1_2
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  end
end
LoadAnim = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = canFromCombat
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = A0_2
      L3_2 = libstrafe
      L4_2 = strafe_fw
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = A0_2
        L3_2 = libstrafe
        L4_2 = strafe_bk
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = A0_2
          L3_2 = libstrafe
          L4_2 = currentStance
          L5_2 = "bwd_-90_loop"
          L4_2 = L4_2 .. L5_2
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = A0_2
            L3_2 = libstrafe
            L4_2 = currentStance
            L5_2 = "fwd_90_loop"
            L4_2 = L4_2 .. L5_2
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = libstrafe
              L4_2 = currentStance
              L5_2 = "bwd_135_loop"
              L4_2 = L4_2 .. L5_2
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = libstrafe
                L4_2 = currentStance
                L5_2 = "bwd_-135_loop"
                L4_2 = L4_2 .. L5_2
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = libstrafe
                  L4_2 = currentStance
                  L5_2 = "fwd_45_loop"
                  L4_2 = L4_2 .. L5_2
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = libstrafe
                    L4_2 = currentStance
                    L5_2 = "fwd_-45_loop"
                    L4_2 = L4_2 .. L5_2
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
                                goto lbl_132
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
    end
  end
  ::lbl_132::
end
ResetStrafeImmediately = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = ResetStrafeImmediately
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = canFromCombat
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = A0_2
      L3_2 = "hit_react_heavy_front_knockback_stagger"
      L4_2 = "hit_react_heavy_front_knockback_stagger_clip"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = A0_2
        L3_2 = libstrafe
        L4_2 = strafe_fw
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = A0_2
          L3_2 = libstrafe
          L4_2 = strafe_bk
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = A0_2
            L3_2 = libstrafe
            L4_2 = currentStance
            L5_2 = "bwd_-90_loop"
            L4_2 = L4_2 .. L5_2
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = libstrafe
              L4_2 = currentStance
              L5_2 = "fwd_90_loop"
              L4_2 = L4_2 .. L5_2
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = libstrafe
                L4_2 = currentStance
                L5_2 = "bwd_135_loop"
                L4_2 = L4_2 .. L5_2
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = libstrafe
                  L4_2 = currentStance
                  L5_2 = "bwd_-135_loop"
                  L4_2 = L4_2 .. L5_2
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = libstrafe
                    L4_2 = currentStance
                    L5_2 = "fwd_45_loop"
                    L4_2 = L4_2 .. L5_2
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if not L1_2 then
                      L1_2 = IsEntityPlayingAnim
                      L2_2 = A0_2
                      L3_2 = libstrafe
                      L4_2 = currentStance
                      L5_2 = "fwd_-45_loop"
                      L4_2 = L4_2 .. L5_2
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
                                  goto lbl_194
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
            L3_2 = inFinisher
            if not L3_2 then
              L3_2 = ClearPedSecondaryTask
              L4_2 = A0_2
              L3_2(L4_2)
              L3_2 = ClearPedTasks
              L4_2 = A0_2
              L3_2(L4_2)
            end
          end
        end
      end
    end
  end
  ::lbl_194::
end
ResetStrafe = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = print
    L2_2 = "MODEL IS NIL"
    L1_2(L2_2)
    return
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = IsModelValid
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_33
    end
  end
  L2_2 = print
  L3_2 = "MODEL NOT EXIST "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  do return end
  ::lbl_33::
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 5000
  while true do
    L3_2 = HasModelLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = print
      L4_2 = "NOT EXIST (time out) "
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      return
    end
  end
end
RequestModelStriano = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = HasAnimDictLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDict
    L3_2 = L1_2
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  end
end
loadDict = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L0_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L0_2
end
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = L0_1
  L0_2 = L0_2()
  L1_2 = -1
  L2_2 = -1
  L3_2 = nil
  L4_2 = false
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = PlayerId
  L6_2 = L6_2()
  if nil == L3_2 then
    L4_2 = true
    L7_2 = GetEntityCoords
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L3_2 = L7_2
  end
  L7_2 = 1
  L8_2 = #L0_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = GetPlayerPed
    L12_2 = L0_2[L10_2]
    L11_2 = L11_2(L12_2)
    if L4_2 then
      if not L4_2 then
        goto lbl_51
      end
      L12_2 = L0_2[L10_2]
      if L12_2 == L6_2 then
        goto lbl_51
      end
    end
    L12_2 = GetEntityCoords
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = vector3
    L14_2 = L3_2.x
    L15_2 = L3_2.y
    L16_2 = L3_2.z
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L13_2 = L12_2 - L13_2
    L13_2 = #L13_2
    if -1 == L1_2 or L1_2 > L13_2 and L13_2 < 3.0 then
      L2_2 = L0_2[L10_2]
      L1_2 = L13_2
    end
    ::lbl_51::
  end
  L7_2 = L2_2
  L8_2 = L1_2
  return L7_2, L8_2
end
DebugMode = false
L2_1 = false
L3_1 = false
L4_1 = true
L5_1 = nil
L6_1 = vector3
L7_1 = 0
L8_1 = 0
L9_1 = 0
L6_1 = L6_1(L7_1, L8_1, L9_1)
L7_1 = 0
L8_1 = 0
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L5_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = IsEntityAttachedToEntity
      L1_2 = L5_1
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L0_2 = true
        return L0_2
    end
  end
  else
    L0_2 = false
    return L0_2
  end
end
hoLaPalla = L9_1
L9_1 = RegisterNetEvent
L10_1 = "sendBallOwner"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "sendBallOwner"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2
  L2_2 = 0
  while true do
    L3_2 = NetworkDoesEntityExistWithNetworkId
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if not (not L3_2 and L2_2 < 100) then
      break
    end
    L2_2 = L2_2 + 1
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  L3_2 = NetToObj
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = NetworkRequestControlOfEntity
  L5_2 = L3_2
  L4_2(L5_2)
  L2_2 = 0
  while true do
    L4_2 = NetworkHasControlOfEntity
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not (not L4_2 and L2_2 < 100) then
      break
    end
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 1
    L4_2(L5_2)
    L4_2 = NetworkRequestControlOfEntity
    L5_2 = L3_2
    L4_2(L5_2)
    L2_2 = L2_2 + 1
  end
  L4_2 = DoesEntityExist
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = NetworkHasControlOfEntity
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = SetEntityAsMissionEntity
      L5_2 = L3_2
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = Wait
      L5_2 = 1
      L4_2(L5_2)
    end
  end
  L4_2 = L8_1
  if L4_2 then
    L4_2 = L5_1
    L5_2 = NetToObj
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L4_2 == L5_2 then
      L4_2 = NetworkRequestControlOfEntity
      L5_2 = L5_1
      L4_2(L5_2)
      while true do
        L4_2 = NetworkGetEntityIsNetworked
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 0
        L4_2(L5_2)
        L4_2 = NetworkRegisterEntityAsNetworked
        L5_2 = L5_1
        L4_2(L5_2)
      end
      L4_2 = NetworkRequestControlOfEntity
      L5_2 = L5_1
      L4_2(L5_2)
      L4_2 = print
      L5_2 = "You got the control of ball because a player exit from the match."
      L4_2(L5_2)
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "InviteToPlayRugby"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "InviteToPlayRugby"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L5_1
  if nil == L1_2 then
    L1_2 = A0_2
    L2_2 = 0
    while true do
      L3_2 = NetworkDoesEntityExistWithNetworkId
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if not (not L3_2 and L2_2 < 100) then
        break
      end
      L2_2 = L2_2 + 1
      L3_2 = Wait
      L4_2 = 10
      L3_2(L4_2)
    end
    L3_2 = NetToObj
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = NetworkRequestControlOfEntity
    L5_2 = L3_2
    L4_2(L5_2)
    L2_2 = 0
    while true do
      L4_2 = NetworkHasControlOfEntity
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not (not L4_2 and L2_2 < 100) then
        break
      end
      L4_2 = DoesEntityExist
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 1
      L4_2(L5_2)
      L4_2 = NetworkRequestControlOfEntity
      L5_2 = L3_2
      L4_2(L5_2)
      L2_2 = L2_2 + 1
    end
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = NetworkHasControlOfEntity
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = SetEntityAsMissionEntity
        L5_2 = L3_2
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = Wait
        L5_2 = 1
        L4_2(L5_2)
      end
    end
    L4_2 = NetToObj
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = print
        L6_2 = "Invite succesfully."
        L5_2(L6_2)
        L5_1 = L4_2
        L5_2 = Outlineball
        if L5_2 then
          L5_2 = SetEntityDrawOutline
          L6_2 = L4_2
          L7_2 = true
          L5_2(L6_2, L7_2)
          L5_2 = SetEntityDrawOutlineColor
          L6_2 = 255
          L7_2 = 255
          L8_2 = 255
          L9_2 = 10
          L5_2(L6_2, L7_2, L8_2, L9_2)
        end
        L5_2 = SetEntityLodDist
        L6_2 = L4_2
        L7_2 = 65535
        L5_2(L6_2, L7_2)
        L5_2 = SetEntityDynamic
        L6_2 = L4_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = SetEntityHasGravity
        L6_2 = L4_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = FreezeEntityPosition
        L6_2 = L4_2
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = LoopRaccogliPalla
        L5_2()
      end
    end
  else
    L1_2 = print
    L2_2 = "You can't be invite because you are in another play game, use /leaverugby command to clear your match."
    L1_2(L2_2)
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L8_2 = NetworkRequestControlOfEntity
  L9_2 = L5_1
  L8_2(L9_2)
  while true do
    L8_2 = NetworkGetEntityIsNetworked
    L9_2 = L5_1
    L8_2 = L8_2(L9_2)
    if L8_2 then
      break
    end
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
    L8_2 = NetworkRegisterEntityAsNetworked
    L9_2 = L5_1
    L8_2(L9_2)
  end
  L8_2 = NetworkRequestControlOfEntity
  L9_2 = L5_1
  L8_2(L9_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L5_1
  L10_2 = A0_2
  L11_2 = GetPedBoneIndex
  L12_2 = A0_2
  L13_2 = A1_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = A5_2
  L16_2 = A6_2
  L17_2 = A7_2
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L21_2 = true
  L22_2 = 1
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
end
AddPropToPlayer = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  if A0_2 >= 0 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2 + 0.5
    return L1_2(L2_2)
  else
    L1_2 = math
    L1_2 = L1_2.ceil
    L2_2 = A0_2 - 0.5
    return L1_2(L2_2)
  end
end
round = L9_1
L9_1 = false
function L10_1()
  local L0_2, L1_2
  L0_2 = L9_1
  if L0_2 then
    return
  end
  L0_2 = true
  L9_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    while true do
      L0_3 = L5_1
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = L5_1
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = L5_1
      if L1_3 then
        L1_3 = DoesEntityExist
        L2_3 = L5_1
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = IsEntityAttachedToEntity
          L2_3 = L5_1
          L3_3 = L0_3
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = DisableControlAction
            L2_3 = 0
            L3_3 = 44
            L1_3(L2_3, L3_3)
            L1_3 = DisableControlAction
            L2_3 = 1
            L3_3 = 44
            L1_3(L2_3, L3_3)
            L1_3 = DisableControlAction
            L2_3 = 2
            L3_3 = 44
            L1_3(L2_3, L3_3)
            L1_3 = SetPlayerInvincible
            L2_3 = L0_3
            L3_3 = true
            L1_3(L2_3, L3_3)
            L1_3 = SetPlayerCanUseCover
            L2_3 = L0_3
            L3_3 = false
            L1_3(L2_3, L3_3)
            L1_3 = GetEntityCoords
            L2_3 = L5_1
            L1_3 = L1_3(L2_3)
            L2_3 = GetEntityCoords
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            L1_3 = L1_3 - L2_3
            L1_3 = #L1_3
            if L1_3 < 5.0 then
              L2_3 = DisableControlAction
              L3_3 = 0
              L4_3 = aimkey
              L2_3(L3_3, L4_3)
              L2_3 = DisableControlAction
              L3_3 = 0
              L4_3 = shootkey
              L2_3(L3_3, L4_3)
              L2_3 = SetPlayerCanUseCover
              L3_3 = L0_3
              L4_3 = false
              L2_3(L3_3, L4_3)
              L2_3 = DisableCamCollisionForEntity
              L3_3 = L5_1
              L2_3(L3_3)
            end
            L2_3 = L3_1
            if not L2_3 then
              L2_3 = L2_1
              if not L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = takekey
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = takekey
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = GetEntitySpeed
                    L3_3 = L5_1
                    L2_3 = L2_3(L3_3)
                    if not (L2_3 > 2.0) then
                      L2_3 = GetEntitySpeed
                      L3_3 = L0_3
                      L2_3 = L2_3(L3_3)
                      if not (L2_3 > 3.0) then
                        goto lbl_129
                      end
                    end
                  end
                end
                L2_3 = GetEntityCoords
                L3_3 = L5_1
                L2_3 = L2_3(L3_3)
                L3_3 = GetEntityCoords
                L4_3 = L0_3
                L3_3 = L3_3(L4_3)
                L2_3 = L2_3 - L3_3
                L2_3 = #L2_3
                L3_3 = 1.11
                if L2_3 < L3_3 then
                  L3_3 = DebugMode
                  if L3_3 then
                  end
                  L3_3 = L4_1
                  if L3_3 then
                    L3_3 = false
                    L4_1 = L3_3
                    L3_3 = TakeOrLeaveBall
                    L3_3()
                    L3_3 = Wait
                    L4_3 = 500
                    L3_3(L4_3)
                    L3_3 = true
                    L4_1 = L3_3
                  end
                end
              end
            end
            ::lbl_129::
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = takelkey
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              goto lbl_254
            end
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 21
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              goto lbl_254
            end
            L2_3 = GetEntitySpeed
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            L3_3 = 0.2
            if not (L2_3 > L3_3) then
              goto lbl_254
            end
            L2_3 = IsPedRagdoll
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            if L2_3 then
              goto lbl_254
            end
            L2_3 = IsEntityDead
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            if L2_3 then
              goto lbl_254
            end
            L2_3 = IsPedDeadOrDying
            L3_3 = L0_3
            L4_3 = 1
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              goto lbl_254
            end
            L2_3 = IsPedInAnyVehicle
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            if L2_3 then
              goto lbl_254
            end
            L2_3 = GetEntityForwardVector
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            L3_3 = {}
            L4_3 = takelanim
            L5_3 = L0_3
            L4_3(L5_3)
            L4_3 = Wait
            L5_3 = 500
            L4_3(L5_3)
            L4_3 = SetPedToRagdollWithFall
            L5_3 = L0_3
            L6_3 = 100
            L7_3 = 100
            L8_3 = 0
            L9_3 = L2_3
            L10_3 = 0.0
            L11_3 = 0.0
            L12_3 = 0.0
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.0
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
            L4_3 = true
            L3_1 = L4_3
            while true do
              L4_3 = IsPedRagdoll
              L5_3 = L0_3
              L4_3 = L4_3(L5_3)
              if not L4_3 then
                break
              end
              L4_3 = Wait
              L5_3 = 0
              L4_3(L5_3)
              L4_3 = GetTouchedPlayers
              L4_3 = L4_3()
              if nil ~= L4_3 and 0 ~= L4_3 then
                L5_3 = L3_3[L4_3]
                if not L5_3 then
                  L5_3 = IsPedRagdoll
                  L6_3 = GetPlayerPed
                  L7_3 = L4_3
                  L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L6_3(L7_3)
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                  if not L5_3 then
                    L3_3[L4_3] = true
                    L5_3 = TriggerServerEvent
                    L6_3 = "TackleServerRugby"
                    L7_3 = GetPlayerServerId
                    L8_3 = L4_3
                    L7_3 = L7_3(L8_3)
                    L8_3 = L2_3.x
                    L9_3 = L2_3.y
                    L10_3 = L2_3.z
                    L11_3 = GetPlayerName
                    L12_3 = PlayerId
                    L12_3, L13_3, L14_3, L15_3, L16_3 = L12_3()
                    L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                    L5_3 = Wait
                    L6_3 = 1000
                    L5_3(L6_3)
                  end
                end
              end
            end
            L4_3 = Wait
            L5_3 = 2000
            L4_3(L5_3)
            L4_3 = false
            L3_1 = L4_3
        end
      end
      else
        L1_3 = SetPlayerInvincible
        L2_3 = L0_3
        L3_3 = false
        L1_3(L2_3, L3_3)
        L1_3 = SetPlayerCanUseCover
        L2_3 = L0_3
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = false
        L9_1 = L1_3
        return
      end
      ::lbl_254::
    end
  end
  L0_2(L1_2)
end
LoopRaccogliPalla = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetGameplayCamCoord
  L0_2 = L0_2()
  L1_2 = nil
  L2_2 = _ENV
  L3_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L2_2 = L2_2[L3_2]
  L3_2 = L0_2
  L4_2 = GetCoordsFromCam
  L5_2 = 100.0
  L6_2 = L0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = -1
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = 4
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L2_2
  L2_2 = GetShapeTestResult
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  return L4_2
end
SceneTarget = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetGameplayCamRot
  L2_2 = L2_2()
  L3_2 = vector3
  L4_2 = math
  L4_2 = L4_2.pi
  L4_2 = L4_2 / 180
  L5_2 = L2_2.x
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = L5_2 / 180
  L6_2 = L2_2.y
  L5_2 = L5_2 * L6_2
  L6_2 = math
  L6_2 = L6_2.pi
  L6_2 = L6_2 / 180
  L7_2 = L2_2.z
  L6_2 = L6_2 * L7_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L3_2[3]
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L3_2[1]
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2 * L6_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L3_2[3]
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.abs
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L3_2[1]
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 * L7_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L3_2[1]
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = vector3
  L6_2 = A1_2[1]
  L7_2 = L4_2[1]
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L7_2 = A1_2[2]
  L8_2 = L4_2[2]
  L8_2 = L8_2 * A0_2
  L7_2 = L7_2 + L8_2
  L8_2 = A1_2[3]
  L9_2 = L4_2[3]
  L9_2 = L9_2 * A0_2
  L8_2 = L8_2 + L9_2
  return L5_2(L6_2, L7_2, L8_2)
end
GetCoordsFromCam = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardX
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityForwardY
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  L5_2 = DetachEntity
  L6_2 = L5_1
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityVelocity
  L6_2 = L5_1
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L6_1.z
  L6_2 = L1_2.z
  L5_2 = L5_2 - L6_2
  L6_2 = round
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * 5.0
  if L6_2 < 5.0 then
    L6_2 = 5.0
  end
  L7_2 = L7_1
  L7_2 = L7_2 + L6_2
  L8_2 = SetEntityVelocity
  L9_2 = L5_1
  L10_2 = L3_2 * L7_2
  L11_2 = L4_2 * L7_2
  L12_2 = L7_1
  L12_2 = L12_2 / 1.8
  L12_2 = L12_2 + L6_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = 0
  L7_1 = L8_2
end
LanciaPalla = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = loadDict
  L2_2 = "weapons@projectile@"
  L1_2(L2_2)
  L1_2 = TaskPlayAnim
  L2_2 = A0_2
  L3_2 = "weapons@projectile@"
  L4_2 = "throw_h_fb_stand"
  L5_2 = 8.0
  L6_2 = 8.0
  L7_2 = 600
  L8_2 = 49
  L9_2 = 2.0
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
lanciopallaAnim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = loadDict
  L2_2 = "anim@mp_fm_event@intro"
  L3_2 = "beast_transform"
  L1_2(L2_2, L3_2)
  L1_2 = TaskPlayAnim
  L2_2 = A0_2
  L3_2 = "anim@mp_fm_event@intro"
  L4_2 = "beast_transform"
  L5_2 = 8.0
  L6_2 = 8.0
  L7_2 = 800
  L8_2 = 49
  L9_2 = 2.0
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
takelanim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = loadDict
  L2_2 = "random@domestic"
  L1_2(L2_2)
  L1_2 = TaskPlayAnim
  L2_2 = A0_2
  L3_2 = "random@domestic"
  L4_2 = "pickup_low"
  L5_2 = 8.0
  L6_2 = 8.0
  L7_2 = 1200
  L8_2 = 49
  L9_2 = 2.0
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
pickup = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = loadDict
  L2_2 = "anim@am_hold_up@male"
  L1_2(L2_2)
  L1_2 = TaskPlayAnim
  L2_2 = A0_2
  L3_2 = "anim@am_hold_up@male"
  L4_2 = "shoplift_mid"
  L5_2 = 8.0
  L6_2 = 8.0
  L7_2 = 1200
  L8_2 = 49
  L9_2 = 2.0
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
damn2 = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = ResetStrafe
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = IsEntityAttachedToEntity
  L2_2 = L5_1
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsPedRagdoll
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = L5_1
      if not L2_2 then
        goto lbl_132
      end
      L2_2 = GetEntityCoords
      L3_2 = L5_1
      L2_2 = L2_2(L3_2)
      L3_2 = GetEntityCoords
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 - L3_2
      L2_2 = #L2_2
      L3_2 = 1.11
      if not (L2_2 < L3_2) then
        goto lbl_132
      end
      L3_2 = IsEntityAttached
      L4_2 = L5_1
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_132
      end
      L3_2 = IsEntityAttached
      L4_2 = L5_1
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_132
      end
      L3_2 = DoesEntityExist
      L4_2 = L5_1
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        goto lbl_132
      end
      L3_2 = NetworkRequestControlOfEntity
      L4_2 = L5_1
      L3_2(L4_2)
      while true do
        L3_2 = NetworkGetEntityIsNetworked
        L4_2 = L5_1
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = Wait
        L4_2 = 0
        L3_2(L4_2)
        L3_2 = NetworkRegisterEntityAsNetworked
        L4_2 = L5_1
        L3_2(L4_2)
      end
      L3_2 = NetworkRequestControlOfEntity
      L4_2 = L5_1
      L3_2(L4_2)
      L3_2 = damn2
      L4_2 = L0_2
      L3_2(L4_2)
      L3_2 = Wait
      L4_2 = 300
      L3_2(L4_2)
      L3_2 = SetEntityLodDist
      L4_2 = L5_1
      L5_2 = 65535
      L3_2(L4_2, L5_2)
      L3_2 = SetEntityVelocity
      L4_2 = L5_1
      L5_2 = 0
      L6_2 = 0
      L7_2 = 0
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = AddPropToPlayer
      L4_2 = L0_2
      L5_2 = 6286
      L6_2 = 0.12
      L7_2 = -0.01
      L8_2 = -0.06
      L9_2 = 0.0
      L10_2 = 0.0
      L11_2 = -79.0
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L3_2 = OnLoopRugby
      L3_2()
      L3_2 = Wait
      L4_2 = 300
      L3_2(L4_2)
  end
  else
    L1_2 = pickup
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 500
    L1_2(L2_2)
    L1_2 = NetworkRequestControlOfEntity
    L2_2 = L5_1
    L1_2(L2_2)
    while true do
      L1_2 = NetworkGetEntityIsNetworked
      L2_2 = L5_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
      L1_2 = NetworkRegisterEntityAsNetworked
      L2_2 = L5_1
      L1_2(L2_2)
    end
    L1_2 = NetworkRequestControlOfEntity
    L2_2 = L5_1
    L1_2(L2_2)
    L1_2 = DetachEntity
    L2_2 = L5_1
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Wait
    L2_2 = 800
    L1_2(L2_2)
  end
  ::lbl_132::
end
TakeOrLeaveBall = L10_1
L10_1 = RegisterNetEvent
L11_1 = "OggettoRugbySync"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "OggettoRugbySync"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 ~= A1_2 and nil ~= A0_2 then
    L2_2 = A0_2
    L3_2 = 0
    while true do
      L4_2 = NetworkDoesEntityExistWithNetworkId
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if not (not L4_2 and L3_2 < 100) then
        break
      end
      L3_2 = L3_2 + 1
      L4_2 = Wait
      L5_2 = 10
      L4_2(L5_2)
    end
    L4_2 = NetToObj
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = NetworkRequestControlOfEntity
    L6_2 = L4_2
    L5_2(L6_2)
    L3_2 = 0
    while true do
      L5_2 = NetworkHasControlOfEntity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if not (not L5_2 and L3_2 < 100) then
        break
      end
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 1
      L5_2(L6_2)
      L5_2 = NetworkRequestControlOfEntity
      L6_2 = L4_2
      L5_2(L6_2)
      L3_2 = L3_2 + 1
    end
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = NetworkHasControlOfEntity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = SetEntityAsMissionEntity
        L6_2 = L4_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = Wait
        L6_2 = 1
        L5_2(L6_2)
      end
    end
    L5_2 = 0
    while true do
      L6_2 = NetToObj
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      if 0 ~= L6_2 then
        L6_2 = NetToObj
        L7_2 = A0_2
        L6_2 = L6_2(L7_2)
        if nil ~= L6_2 then
          break
        end
      end
      L6_2 = Wait
      L7_2 = 100
      L6_2(L7_2)
      if L5_2 < 10 then
        L5_2 = L5_2 + 1
      else
        return
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "EliminaOggettiRugby"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "EliminaOggettiRugby"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    L6_2 = 0
    while true do
      L7_2 = NetworkDoesEntityExistWithNetworkId
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if not (not L7_2 and L6_2 < 100) then
        break
      end
      L6_2 = L6_2 + 1
      L7_2 = Wait
      L8_2 = 10
      L7_2(L8_2)
    end
    L7_2 = NetToObj
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = NetworkRequestControlOfEntity
    L9_2 = L7_2
    L8_2(L9_2)
    L6_2 = 0
    while true do
      L8_2 = NetworkHasControlOfEntity
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not (not L8_2 and L6_2 < 100) then
        break
      end
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        break
      end
      L8_2 = Wait
      L9_2 = 1
      L8_2(L9_2)
      L8_2 = NetworkRequestControlOfEntity
      L9_2 = L7_2
      L8_2(L9_2)
      L6_2 = L6_2 + 1
    end
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = NetworkHasControlOfEntity
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = SetEntityAsMissionEntity
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = Wait
        L9_2 = 1
        L8_2(L9_2)
      end
    end
    L8_2 = NetToObj
    L9_2 = A0_2[L4_2]
    L8_2 = L8_2(L9_2)
    L9_2 = NetworkRequestControlOfEntity
    L10_2 = L8_2
    L9_2(L10_2)
    L9_2 = 0
    while true do
      L10_2 = NetworkHasControlOfEntity
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if not (not L10_2 and L9_2 < 100) then
        break
      end
      L10_2 = DoesEntityExist
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        break
      end
      L10_2 = Wait
      L11_2 = 1
      L10_2(L11_2)
      L10_2 = NetworkRequestControlOfEntity
      L11_2 = L8_2
      L10_2(L11_2)
      L9_2 = L9_2 + 1
    end
    L10_2 = DoesEntityExist
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = NetworkHasControlOfEntity
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = SetEntityAsMissionEntity
        L11_2 = L8_2
        L12_2 = true
        L10_2(L11_2, L12_2)
        L10_2 = DeleteEntity
        L11_2 = L8_2
        L10_2(L11_2)
        L10_2 = DoesEntityExist
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = DeleteObject
          L11_2 = L8_2
          L10_2(L11_2)
        end
        L10_2 = Wait
        L11_2 = 1
        L10_2(L11_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = print
    L1_2 = "You can't spawn a ball because you have a ball active."
    L0_2(L1_2)
    L0_2 = L8_1
    if L0_2 then
      L0_2 = print
      L1_2 = "You are the owner af a ball, use the command /"
      L2_2 = cmdDelball
      L3_2 = " if you want delete and close the match."
      L1_2 = L1_2 .. L2_2 .. L3_2
      L0_2(L1_2)
    else
      L0_2 = print
      L1_2 = "You are playing with the ball of another player, use the command /"
      L2_2 = cmdLeave
      L3_2 = " if you want exit from the match."
      L1_2 = L1_2 .. L2_2 .. L3_2
      L0_2(L1_2)
    end
  else
    L0_2 = OnBallSpawnBefore
    L0_2()
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = GetEntityHeading
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetEntityForwardX
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetEntityForwardY
    L5_2 = L0_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetHashKey
    L6_2 = "p_ld_am_ball_01"
    L5_2 = L5_2(L6_2)
    L6_2 = RequestModelStriano
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = L5_1
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_1
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = TriggerServerEvent
        L7_2 = "DelOggettoRugbySync"
        L8_2 = ObjToNet
        L9_2 = L5_1
        L8_2 = L8_2(L9_2)
        L9_2 = GetPlayerServerId
        L10_2 = PlayerId
        L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L6_2 = Outlineball
        if L6_2 then
          L6_2 = SetEntityDrawOutline
          L7_2 = L5_1
          L8_2 = false
          L6_2(L7_2, L8_2)
        end
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L5_1
        L6_2(L7_2)
        L6_2 = DeleteEntity
        L7_2 = L5_1
        L6_2(L7_2)
      end
    end
    L6_2 = CreateObjectNoOffset
    L7_2 = L5_2
    L8_2 = L1_2.x
    L9_2 = L3_2 * 0.5
    L8_2 = L8_2 + L9_2
    L9_2 = L1_2.y
    L10_2 = L4_2 * 0.5
    L9_2 = L9_2 + L10_2
    L10_2 = L1_2.z
    L10_2 = L10_2 - 0.7
    L11_2 = L2_2 - 180
    L12_2 = 1
    L13_2 = 1
    L14_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
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
    while true do
      L7_2 = ObjToNet
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if 0 ~= L7_2 then
        L7_2 = ObjToNet
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if nil ~= L7_2 then
          break
        end
      end
      L7_2 = Wait
      L8_2 = 25
      L7_2(L8_2)
    end
    L7_2 = SetNetworkIdCanMigrate
    L8_2 = ObjToNet
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = TriggerServerEvent
    L8_2 = "OggettoRugbySync"
    L9_2 = ObjToNet
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    L10_2 = GetPlayerServerId
    L11_2 = PlayerId
    L11_2, L12_2, L13_2, L14_2 = L11_2()
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = SetEntityHeading
    L8_2 = L6_2
    L9_2 = L2_2 - 180
    L7_2(L8_2, L9_2)
    L5_1 = L6_2
    L7_2 = L5_1
    L8_1 = L7_2
    L7_2 = Outlineball
    if L7_2 then
      L7_2 = SetEntityDrawOutline
      L8_2 = L6_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = SetEntityDrawOutlineColor
      L8_2 = 255
      L9_2 = 255
      L10_2 = 255
      L11_2 = 10
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
    L7_2 = SetEntityLodDist
    L8_2 = L6_2
    L9_2 = 65535
    L7_2(L8_2, L9_2)
    L7_2 = SetEntityDynamic
    L8_2 = L6_2
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = SetEntityHasGravity
    L8_2 = L6_2
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = FreezeEntityPosition
    L8_2 = L6_2
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = SetEntityVelocity
    L8_2 = L6_2
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0.3
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetModelAsNoLongerNeeded
    L8_2 = GetHashKey
    L9_2 = "p_ld_am_ball_01"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = NetworkRequestControlOfEntity
    L8_2 = L6_2
    L7_2(L8_2)
    while true do
      L7_2 = NetworkGetEntityIsNetworked
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
      L7_2 = NetworkRegisterEntityAsNetworked
      L8_2 = L6_2
      L7_2(L8_2)
    end
    L7_2 = NetworkRequestControlOfEntity
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = OnBallSpawnAfter
    L7_2()
    L7_2 = LoopRaccogliPalla
    L7_2()
  end
end
SpawnBall = L10_1
L10_1 = exports
L11_1 = "RugbySpawnBall"
function L12_1()
  local L0_2, L1_2
  L0_2 = SpawnBall
  L0_2()
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = cmdSpawnball
function L12_1()
  local L0_2, L1_2
  L0_2 = CommandActive
  if not L0_2 then
    return
  end
  L0_2 = SpawnBall
  L0_2()
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = cmdDelball
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = IsEntityAttachedToEntity
    L1_2 = L5_1
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2 = L2_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if L0_2 then
      L0_2 = DetachEntity
      L1_2 = L5_1
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = ClearPedTasksImmediately
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2 = L1_2()
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
    L0_2 = L8_1
    L1_2 = L5_1
    if L0_2 == L1_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = L5_1
      L0_2(L1_2)
      L0_2 = TriggerServerEvent
      L1_2 = "DelOggettoRugbySync"
      L2_2 = ObjToNet
      L3_2 = L5_1
      L2_2 = L2_2(L3_2)
      L3_2 = GetPlayerServerId
      L4_2 = PlayerId
      L4_2 = L4_2()
      L3_2, L4_2 = L3_2(L4_2)
      L0_2(L1_2, L2_2, L3_2, L4_2)
      L0_2 = DeleteEntity
      L1_2 = L5_1
      L0_2(L1_2)
      L0_2 = nil
      L5_1 = L0_2
      L0_2 = 0
      L8_1 = L0_2
    else
      L0_2 = print
      L1_2 = "You need to be the owner of the ball to delete, if you want leave the match use /"
      L2_2 = cmdLeave
      L1_2 = L1_2 .. L2_2
      L0_2(L1_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = 2500
L11_1 = RegisterNetEvent
L12_1 = "TackleClientRugby"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "TackleClientRugby"
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  if A3_2 ~= L4_2 then
    L4_2 = true
    L2_1 = L4_2
    L4_2 = SetPedToRagdollWithFall
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = L10_1
    L7_2 = L10_1
    L8_2 = 0
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = 10.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L4_2 = Wait
    L5_2 = L10_1
    L4_2(L5_2)
    L4_2 = false
    L2_1 = L4_2
  end
end
L11_1(L12_1, L13_1)
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
GetPlayers = L11_1
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = nil
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = IsEntityTouchingEntity
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = GetPlayerPed
    L10_2 = L6_2
    L9_2, L10_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L0_2 = L6_2
    end
  end
  return L0_2
end
GetTouchedPlayers = L11_1
L11_1 = AddEventHandler
L12_1 = "onResourceStop"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L5_1
    if L1_2 then
      L1_2 = L8_1
      if L1_2 then
        L1_2 = NetworkRequestControlOfEntity
        L2_2 = L5_1
        L1_2(L2_2)
        L1_2 = IsEntityAttachedToEntity
        L2_2 = L5_1
        L3_2 = PlayerPedId
        L3_2, L4_2 = L3_2()
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        if L1_2 then
          L1_2 = DetachEntity
          L2_2 = L5_1
          L3_2 = true
          L4_2 = true
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = ClearPedTasksImmediately
          L2_2 = PlayerPedId
          L2_2, L3_2, L4_2 = L2_2()
          L1_2(L2_2, L3_2, L4_2)
        end
        L1_2 = SetEntityAsMissionEntity
        L2_2 = L5_1
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = L5_1
        L1_2(L2_2)
      end
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = false
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = L11_1
  if L0_2 then
    return
  end
  L0_2 = true
  L11_1 = L0_2
  L0_2 = 500
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = L5_1
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = L5_1
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsEntityAttachedToEntity
      L2_3 = L5_1
      L3_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = SetPlayerCanUseCover
        L2_3 = L0_3
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = SetPlayerInvincible
        L2_3 = L0_3
        L3_3 = false
        L1_3(L2_3, L3_3)
        L1_3 = false
        L11_1 = L1_3
        L1_3 = true
        L4_1 = L1_3
        L1_3 = LoopRaccogliPalla
        L1_3()
        return
      end
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 44
      L1_3(L2_3, L3_3)
      L1_3 = DisableControlAction
      L2_3 = 1
      L3_3 = 44
      L1_3(L2_3, L3_3)
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 44
      L1_3(L2_3, L3_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 24
      L1_3(L2_3, L3_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 25
      L1_3(L2_3, L3_3)
      L1_3 = ResetPlayerStamina
      L2_3 = PlayerId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L2_3()
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3 = RestorePlayerStamina
      L2_3 = PlayerId
      L2_3 = L2_3()
      L3_3 = 1.0
      L1_3(L2_3, L3_3)
      L1_3 = SetPlayerCanUseCover
      L2_3 = L0_3
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = IsControlPressed
      L2_3 = 0
      L3_3 = aimkey
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsDisabledControlPressed
        L2_3 = 0
        L3_3 = aimkey
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          goto lbl_115
        end
      end
      L1_3 = StrafeLoop
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = IsEntityPlayingAnim
      L2_3 = L0_3
      L3_3 = "weapons@projectile@"
      L4_3 = "aim_med_live_walk"
      L5_3 = 3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        L1_3 = loadDict
        L2_3 = "weapons@projectile@"
        L1_3(L2_3)
        L1_3 = TaskPlayAnim
        L2_3 = L0_3
        L3_3 = "weapons@projectile@"
        L4_3 = "aim_med_live_walk"
        L5_3 = 8.0
        L6_3 = 1
        L7_3 = -1
        L8_3 = 51
        L9_3 = 0
        L10_3 = false
        L11_3 = false
        L12_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      end
      L1_3 = SetEntityHeading
      L2_3 = L0_3
      L3_3 = GetGameplayCamRot
      L4_3 = 0
      L3_3 = L3_3(L4_3)
      L3_3 = L3_3.z
      L1_3(L2_3, L3_3)
      goto lbl_152
      ::lbl_115::
      L1_3 = IsEntityPlayingAnim
      L2_3 = L0_3
      L3_3 = "impexp_int-0"
      L4_3 = "mp_m_waremech_01_dual-0"
      L5_3 = 3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        L1_3 = IsEntityPlayingAnim
        L2_3 = L0_3
        L3_3 = "random@domestic"
        L4_3 = "pickup_low"
        L5_3 = 3
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
        if not L1_3 then
          L1_3 = loadDict
          L2_3 = "impexp_int-0"
          L1_3(L2_3)
          L1_3 = TaskPlayAnim
          L2_3 = L0_3
          L3_3 = "impexp_int-0"
          L4_3 = "mp_m_waremech_01_dual-0"
          L5_3 = 8.0
          L6_3 = 1
          L7_3 = -1
          L8_3 = 51
          L9_3 = 0
          L10_3 = false
          L11_3 = false
          L12_3 = false
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        end
      end
      L1_3 = L7_1
      if L1_3 > 0 then
        L1_3 = 0
        L7_1 = L1_3
      end
      ::lbl_152::
      L1_3 = IsControlJustReleased
      L2_3 = 0
      L3_3 = aimkey
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsDisabledControlJustReleased
        L2_3 = 0
        L3_3 = aimkey
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          goto lbl_167
        end
      end
      L1_3 = ResetStrafe
      L2_3 = L0_3
      L1_3(L2_3)
      ::lbl_167::
      L1_3 = IsDisabledControlPressed
      L2_3 = 0
      L3_3 = aimkey
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = table
        L1_3 = L1_3.unpack
        L2_3 = SceneTarget
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L2_3()
        L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        z = L3_3
        y = L2_3
        x = L1_3
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = vector3
        L3_3 = x
        L4_3 = y
        L5_3 = z
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        L2_3 = DrawMarkerCustom
        L3_3 = L1_3
        L2_3(L3_3)
        L7_1 = L1_3
        L2_3 = L7_1
        if L2_3 > 60 then
          L2_3 = 70
          L7_1 = L2_3
        end
        L2_3 = vector3
        L3_3 = x
        L4_3 = y
        L5_3 = z
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L6_1 = L2_3
      end
      L1_3 = IsDisabledControlPressed
      L2_3 = 0
      L3_3 = takekey
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L4_1
        if L1_3 then
          L1_3 = DebugMode
          if L1_3 then
            L1_3 = print
            L2_3 = "Pallone lasciato"
            L1_3(L2_3)
          end
          L1_3 = false
          L4_1 = L1_3
          L1_3 = TakeOrLeaveBall
          L1_3()
          L1_3 = Wait
          L2_3 = L0_2
          L1_3(L2_3)
          L1_3 = true
          L4_1 = L1_3
        end
      end
      L1_3 = IsControlPressed
      L2_3 = 0
      L3_3 = shootkey
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsDisabledControlPressed
        L2_3 = 0
        L3_3 = shootkey
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          goto lbl_281
        end
      end
      L1_3 = L7_1
      if L1_3 > 3 then
        L1_3 = ResetStrafe
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = DebugMode
        if L1_3 then
          L1_3 = print
          L2_3 = "Pallone tirato"
          L1_3(L2_3)
        end
        L1_3 = GetGameplayCamRot
        L2_3 = 0
        L1_3 = L1_3(L2_3)
        L1_3 = L1_3.z
        L2_3 = SetEntityHeading
        L3_3 = L0_3
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = lanciopallaAnim
        L3_3 = L0_3
        L2_3(L3_3)
        L2_3 = Wait
        L3_3 = 150
        L2_3(L3_3)
        L2_3 = false
        L4_1 = L2_3
        L2_3 = LanciaPalla
        L2_3()
        L2_3 = Wait
        L3_3 = L0_2
        L2_3(L3_3)
        L2_3 = true
        L4_1 = L2_3
        L2_3 = Wait
        L3_3 = 800
        L2_3(L3_3)
      end
      ::lbl_281::
      L1_3 = IsPedRagdoll
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = IsEntityDead
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedFatallyInjured
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            goto lbl_305
          end
        end
      end
      L1_3 = false
      L4_1 = L1_3
      L1_3 = LanciaPalla
      L1_3()
      L1_3 = Wait
      L2_3 = L0_2
      L1_3(L2_3)
      L1_3 = true
      L4_1 = L1_3
      ::lbl_305::
    end
  end
  L1_2(L2_2)
end
OnLoopRugby = L12_1
L12_1 = 0
L13_1 = 250
function L14_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L12_1
  L1_2 = L0_2 - L1_2
  L2_2 = L13_1
  if L1_2 < L2_2 then
    L1_2 = false
    return L1_2
  end
  L12_1 = L0_2
  L1_2 = true
  return L1_2
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = hoLaPalla
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = IsPedOnFoot
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsEntityPositionFrozen
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsEntityAttached
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedSwimming
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsPedSwimmingUnderWater
            L2_2 = A0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = IsEntityInWater
              L2_2 = A0_2
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = IsControlPressed
                L2_2 = 0
                L3_2 = 21
                L1_2 = L1_2(L2_2, L3_2)
                if not L1_2 then
                  L1_2 = IsDisabledControlPressed
                  L2_2 = 0
                  L3_2 = 21
                  L1_2 = L1_2(L2_2, L3_2)
                  if not L1_2 then
                    goto lbl_60
                  end
                end
                L1_2 = currentStance
                if "walk_" == L1_2 then
                  currentStance = "run_"
                  L1_2 = currentStance
                  L2_2 = "fwd_0_loop"
                  L1_2 = L1_2 .. L2_2
                  strafe_fw = L1_2
                  L1_2 = currentStance
                  L2_2 = "bwd_180_loop"
                  L1_2 = L1_2 .. L2_2
                  strafe_bk = L1_2
                  goto lbl_72
                  ::lbl_60::
                  L1_2 = currentStance
                  if "run_" == L1_2 then
                    currentStance = "walk_"
                    L1_2 = currentStance
                    L2_2 = "fwd_0_loop"
                    L1_2 = L1_2 .. L2_2
                    strafe_fw = L1_2
                    L1_2 = currentStance
                    L2_2 = "bwd_180_loop"
                    L1_2 = L1_2 .. L2_2
                    strafe_bk = L1_2
                  end
                end
                ::lbl_72::
                L1_2 = L14_1
                L1_2 = L1_2()
                if L1_2 then
                  L1_2 = IsControlPressed
                  L2_2 = 0
                  L3_2 = 32
                  L1_2 = L1_2(L2_2, L3_2)
                  if L1_2 then
                    L1_2 = IsControlPressed
                    L2_2 = 0
                    L3_2 = 35
                    L1_2 = L1_2(L2_2, L3_2)
                    if L1_2 then
                      L1_2 = IsControlPressed
                      L2_2 = 0
                      L3_2 = 33
                      L1_2 = L1_2(L2_2, L3_2)
                      if not L1_2 then
                        L1_2 = currentStance
                        L2_2 = "fwd_45_loop"
                        L1_2 = L1_2 .. L2_2
                        L2_2 = LoadAnim
                        L3_2 = libstrafe
                        L2_2(L3_2)
                        L2_2 = IsEntityPlayingAnim
                        L3_2 = A0_2
                        L4_2 = libstrafe
                        L5_2 = L1_2
                        L6_2 = 3
                        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                        if not L2_2 then
                          L2_2 = TaskPlayAnim
                          L3_2 = A0_2
                          L4_2 = libstrafe
                          L5_2 = L1_2
                          L6_2 = 3.0
                          L7_2 = 1.0
                          L8_2 = -1
                          L9_2 = 1
                          L10_2 = 0
                          L11_2 = 0
                          L12_2 = 0
                          L13_2 = 0
                          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                        end
                    end
                    else
                      L1_2 = IsControlPressed
                      L2_2 = 0
                      L3_2 = 34
                      L1_2 = L1_2(L2_2, L3_2)
                      if L1_2 then
                        L1_2 = IsControlPressed
                        L2_2 = 0
                        L3_2 = 33
                        L1_2 = L1_2(L2_2, L3_2)
                        if not L1_2 then
                          L1_2 = currentStance
                          L2_2 = "fwd_-45_loop"
                          L1_2 = L1_2 .. L2_2
                          L2_2 = LoadAnim
                          L3_2 = libstrafe
                          L2_2(L3_2)
                          L2_2 = IsEntityPlayingAnim
                          L3_2 = A0_2
                          L4_2 = libstrafe
                          L5_2 = L1_2
                          L6_2 = 3
                          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                          if not L2_2 then
                            L2_2 = TaskPlayAnim
                            L3_2 = A0_2
                            L4_2 = libstrafe
                            L5_2 = L1_2
                            L6_2 = 3.0
                            L7_2 = 1.0
                            L8_2 = -1
                            L9_2 = 1
                            L10_2 = 0
                            L11_2 = 0
                            L12_2 = 0
                            L13_2 = 0
                            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                          end
                      end
                      else
                        L1_2 = LoadAnim
                        L2_2 = libstrafe
                        L1_2(L2_2)
                        L1_2 = IsEntityPlayingAnim
                        L2_2 = A0_2
                        L3_2 = libstrafe
                        L4_2 = strafe_fw
                        L5_2 = 3
                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                        if not L1_2 then
                          L1_2 = TaskPlayAnim
                          L2_2 = A0_2
                          L3_2 = libstrafe
                          L4_2 = strafe_fw
                          L5_2 = 3.0
                          L6_2 = 1.0
                          L7_2 = -1
                          L8_2 = 1
                          L9_2 = 0
                          L10_2 = 0
                          L11_2 = 0
                          L12_2 = 0
                          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                        end
                      end
                    end
                  else
                    L1_2 = IsControlPressed
                    L2_2 = 0
                    L3_2 = 33
                    L1_2 = L1_2(L2_2, L3_2)
                    if L1_2 then
                      L1_2 = IsControlPressed
                      L2_2 = 0
                      L3_2 = 35
                      L1_2 = L1_2(L2_2, L3_2)
                      if L1_2 then
                        L1_2 = IsControlPressed
                        L2_2 = 0
                        L3_2 = 32
                        L1_2 = L1_2(L2_2, L3_2)
                        if not L1_2 then
                          L1_2 = currentStance
                          L2_2 = "bwd_135_loop"
                          L1_2 = L1_2 .. L2_2
                          L2_2 = LoadAnim
                          L3_2 = libstrafe
                          L2_2(L3_2)
                          L2_2 = IsEntityPlayingAnim
                          L3_2 = A0_2
                          L4_2 = libstrafe
                          L5_2 = L1_2
                          L6_2 = 3
                          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                          if not L2_2 then
                            L2_2 = TaskPlayAnim
                            L3_2 = A0_2
                            L4_2 = libstrafe
                            L5_2 = L1_2
                            L6_2 = 3.0
                            L7_2 = 1.0
                            L8_2 = -1
                            L9_2 = 1
                            L10_2 = 0
                            L11_2 = 0
                            L12_2 = 0
                            L13_2 = 0
                            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                          end
                      end
                      else
                        L1_2 = IsControlPressed
                        L2_2 = 0
                        L3_2 = 34
                        L1_2 = L1_2(L2_2, L3_2)
                        if L1_2 then
                          L1_2 = IsControlPressed
                          L2_2 = 0
                          L3_2 = 32
                          L1_2 = L1_2(L2_2, L3_2)
                          if not L1_2 then
                            L1_2 = currentStance
                            L2_2 = "bwd_-135_loop"
                            L1_2 = L1_2 .. L2_2
                            L2_2 = LoadAnim
                            L3_2 = libstrafe
                            L2_2(L3_2)
                            L2_2 = IsEntityPlayingAnim
                            L3_2 = A0_2
                            L4_2 = libstrafe
                            L5_2 = L1_2
                            L6_2 = 3
                            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                            if not L2_2 then
                              L2_2 = TaskPlayAnim
                              L3_2 = A0_2
                              L4_2 = libstrafe
                              L5_2 = L1_2
                              L6_2 = 3.0
                              L7_2 = 1.0
                              L8_2 = -1
                              L9_2 = 1
                              L10_2 = 0
                              L11_2 = 0
                              L12_2 = 0
                              L13_2 = 0
                              L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                            end
                        end
                        else
                          L1_2 = LoadAnim
                          L2_2 = libstrafe
                          L1_2(L2_2)
                          L1_2 = IsEntityPlayingAnim
                          L2_2 = A0_2
                          L3_2 = libstrafe
                          L4_2 = strafe_bk
                          L5_2 = 3
                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                          if not L1_2 then
                            L1_2 = TaskPlayAnim
                            L2_2 = A0_2
                            L3_2 = libstrafe
                            L4_2 = strafe_bk
                            L5_2 = 3.0
                            L6_2 = 1.0
                            L7_2 = -1
                            L8_2 = 1
                            L9_2 = 0
                            L10_2 = 0
                            L11_2 = 0
                            L12_2 = 0
                            L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                          end
                        end
                      end
                    else
                      L1_2 = IsControlPressed
                      L2_2 = 0
                      L3_2 = 35
                      L1_2 = L1_2(L2_2, L3_2)
                      if L1_2 then
                        L1_2 = IsControlPressed
                        L2_2 = 0
                        L3_2 = 32
                        L1_2 = L1_2(L2_2, L3_2)
                        if not L1_2 then
                          L1_2 = IsControlPressed
                          L2_2 = 0
                          L3_2 = 33
                          L1_2 = L1_2(L2_2, L3_2)
                          if not L1_2 then
                            L1_2 = currentStance
                            L2_2 = "fwd_90_loop"
                            L1_2 = L1_2 .. L2_2
                            L2_2 = LoadAnim
                            L3_2 = libstrafe
                            L2_2(L3_2)
                            L2_2 = IsEntityPlayingAnim
                            L3_2 = A0_2
                            L4_2 = libstrafe
                            L5_2 = L1_2
                            L6_2 = 3
                            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                            if not L2_2 then
                              L2_2 = TaskPlayAnim
                              L3_2 = A0_2
                              L4_2 = libstrafe
                              L5_2 = L1_2
                              L6_2 = 3.0
                              L7_2 = 1.0
                              L8_2 = -1
                              L9_2 = 1
                              L10_2 = 0
                              L11_2 = 0
                              L12_2 = 0
                              L13_2 = 0
                              L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                            end
                        end
                      end
                      else
                        L1_2 = IsControlPressed
                        L2_2 = 0
                        L3_2 = 34
                        L1_2 = L1_2(L2_2, L3_2)
                        if L1_2 then
                          L1_2 = IsControlPressed
                          L2_2 = 0
                          L3_2 = 32
                          L1_2 = L1_2(L2_2, L3_2)
                          if not L1_2 then
                            L1_2 = IsControlPressed
                            L2_2 = 0
                            L3_2 = 33
                            L1_2 = L1_2(L2_2, L3_2)
                            if not L1_2 then
                              L1_2 = currentStance
                              L2_2 = "bwd_-90_loop"
                              L1_2 = L1_2 .. L2_2
                              L2_2 = LoadAnim
                              L3_2 = libstrafe
                              L2_2(L3_2)
                              L2_2 = IsEntityPlayingAnim
                              L3_2 = A0_2
                              L4_2 = libstrafe
                              L5_2 = L1_2
                              L6_2 = 3
                              L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                              if not L2_2 then
                                L2_2 = TaskPlayAnim
                                L3_2 = A0_2
                                L4_2 = libstrafe
                                L5_2 = L1_2
                                L6_2 = 3.0
                                L7_2 = 1.0
                                L8_2 = -1
                                L9_2 = 1
                                L10_2 = 0
                                L11_2 = 0
                                L12_2 = 0
                                L13_2 = 0
                                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                              end
                          end
                        end
                        else
                          L1_2 = ResetStrafe
                          L2_2 = A0_2
                          L1_2(L2_2)
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
StrafeLoop = L15_1
