local L0_1, L1_1, L2_1, L3_1, L4_1
scivolaobj = nil
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_12::
  if not A1_2 then
    A1_2 = 200
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = NetworkGetEntityIsNetworked
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = NetworkRegisterEntityAsNetworked
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = NetworkGetNetworkIdFromEntity
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  while not L3_2 or 0 == L3_2 do
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L2_2
    if not (A1_2 > L4_2) then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = NetworkGetNetworkIdFromEntity
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  if not L3_2 or 0 == L3_2 then
    L4_2 = nil
    return L4_2
  end
  return L3_2
end
SafeEntToNet = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = HasNamedPtfxAssetLoaded
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestNamedPtfxAsset
    L7_2 = A0_2
    L6_2(L7_2)
  end
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = UseParticleFxAssetNextCall
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = vector3
    L1_3 = 0.0
    L2_3 = 0.0
    L3_3 = 0.0
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = A5_2
    if nil ~= L1_3 then
      L0_3 = A5_2
    end
    L1_3 = StartParticleFxLoopedAtCoord
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = L0_3.x
    L5_3 = L0_3.y
    L6_3 = L0_3.z
    L7_3 = A3_2
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L2_3 = A4_2
    if L2_3 then
      L2_3 = SetParticleFxLoopedAlpha
      L3_3 = L1_3
      L4_3 = A4_2
      L2_3(L3_3, L4_3)
    end
    L2_3 = Wait
    L3_3 = 9000
    L2_3(L3_3)
    L2_3 = StopParticleFxLooped
    L3_3 = L1_3
    L2_3(L3_3)
    L2_3 = RemoveParticleFx
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
  end
  L6_2(L7_2)
end
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Citizen
  L0_2 = L0_2.InvokeNative
  L1_2 = -7918206464511161279
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = true
    return L0_2
  else
    L0_2 = false
    return L0_2
  end
end
inAim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = SafeEntToNet
  L2_2 = A0_2
  L3_2 = 500
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
end
MakeObjNET = L1_1
L1_1 = 0
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L0_2 = DoesEntityExist
  L1_2 = scivolaobj
  L0_2 = L0_2(L1_2)
  if L0_2 then
    return
  end
  L0_2 = 0
  L1_2 = "prop_rock_5_smash1"
  L2_2 = nil
  L3_2 = 0
  L4_2 = nil
  L5_2 = 0
  L6_2 = L1_1
  if 0 ~= L6_2 then
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L7_2 = L1_1
    L6_2 = L6_2 - L7_2
    L7_2 = 1000
    if not (L6_2 > L7_2) then
      goto lbl_199
    end
  end
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = IsEntityPositionFrozen
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = canSlide
    L7_2 = L7_2()
    if L7_2 then
      L7_2 = IsEntityPlayingAnim
      L8_2 = L6_2
      L9_2 = "combat@damage@rb_writhe"
      L10_2 = "rb_writhe_loop"
      L11_2 = 3
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      if not L7_2 then
        L7_2 = IsPedFatallyInjured
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = IsEntityInAir
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if not L7_2 then
            L7_2 = IsPedOnFoot
            L8_2 = L6_2
            L7_2 = L7_2(L8_2)
            if L7_2 then
              L7_2 = IsPedSwimming
              L8_2 = L6_2
              L7_2 = L7_2(L8_2)
              if not L7_2 then
                L7_2 = GetGameTimer
                L7_2 = L7_2()
                L8_2 = Wait
                L9_2 = 0
                L8_2(L9_2)
                L8_2 = GetGameTimer
                L8_2 = L8_2()
                L8_2 = L8_2 - L7_2
                L8_2 = L8_2 / 1000
                L8_2 = L8_2 * 80
                L9_2 = GetGameTimer
                L9_2 = L9_2()
                L1_1 = L9_2
                L9_2 = "prop_carcreeper"
                L10_2 = RequestModelStriano
                L11_2 = L9_2
                L10_2(L11_2)
                L10_2 = 5
                L11_2 = GetEntityCoords
                L12_2 = L6_2
                L11_2 = L11_2(L12_2)
                L12_2 = GetEntityHeading
                L13_2 = L6_2
                L12_2 = L12_2(L13_2)
                L13_2 = CreateObjectNoOffset
                L14_2 = GetHashKey
                L15_2 = L9_2
                L14_2 = L14_2(L15_2)
                L15_2 = L11_2
                L16_2 = true
                L17_2 = true
                L18_2 = false
                L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
                scivolaobj = L13_2
                L13_2 = SetEntityHeading
                L14_2 = scivolaobj
                L15_2 = L12_2 - 180
                L13_2(L14_2, L15_2)
                L13_2 = SetEntityAlpha
                L14_2 = scivolaobj
                L15_2 = 0
                L13_2(L14_2, L15_2)
                L13_2 = SetEntityVisible
                L14_2 = scivolaobj
                L15_2 = false
                L13_2(L14_2, L15_2)
                L13_2 = PlaceObjectOnGroundProperly
                L14_2 = scivolaobj
                L13_2(L14_2)
                L13_2 = SetEntityAsMissionEntity
                L14_2 = scivolaobj
                L15_2 = true
                L13_2(L14_2, L15_2)
                L13_2 = ClearPedTasks
                L14_2 = L6_2
                L13_2(L14_2)
                L13_2 = "missheistfbi3b_ig6_v2"
                L14_2 = "rubble_slide_franklin"
                L15_2 = LoadAnim
                L16_2 = L13_2
                L15_2(L16_2)
                L15_2 = IsEntityPlayingAnim
                L16_2 = L6_2
                L17_2 = L13_2
                L18_2 = L14_2
                L19_2 = 3
                L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
                if not L15_2 then
                  L15_2 = TaskPlayAnim
                  L16_2 = L6_2
                  L17_2 = L13_2
                  L18_2 = L14_2
                  L19_2 = 8.0
                  L20_2 = 8.0
                  L21_2 = -1
                  L22_2 = 0
                  L23_2 = 1
                  L24_2 = false
                  L25_2 = false
                  L26_2 = false
                  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                end
                L15_2 = AttachEntityToEntity
                L16_2 = L6_2
                L17_2 = scivolaobj
                L18_2 = -1
                L19_2 = 0.0
                L20_2 = 0.5
                L21_2 = 0.85
                L22_2 = 40.0
                L23_2 = 0.0
                L24_2 = 180.0
                L25_2 = true
                L26_2 = false
                L27_2 = false
                L28_2 = true
                L29_2 = true
                L30_2 = 2
                L31_2 = true
                L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                while true do
                  L15_2 = DoesEntityExist
                  L16_2 = scivolaobj
                  L15_2 = L15_2(L16_2)
                  if L15_2 then
                    break
                  end
                  L15_2 = Wait
                  L16_2 = 0
                  L15_2(L16_2)
                end
                while true do
                  L15_2 = ObjToNet
                  L16_2 = scivolaobj
                  L15_2 = L15_2(L16_2)
                  if 0 ~= L15_2 then
                    L15_2 = ObjToNet
                    L16_2 = scivolaobj
                    L15_2 = L15_2(L16_2)
                    if nil ~= L15_2 then
                      break
                    end
                  end
                  L15_2 = Wait
                  L16_2 = 25
                  L15_2(L16_2)
                end
                L15_2 = MakeObjNET
                L16_2 = scivolaobj
                L15_2(L16_2)
                L15_2 = 0
                L16_2 = CreateThread
                function L17_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
                  while true do
                    L0_3 = GetGameTimer
                    L0_3 = L0_3()
                    L5_2 = L0_3
                    L0_3 = GetGameTimer
                    L0_3 = L0_3()
                    L1_3 = Wait
                    L2_3 = 0
                    L1_3(L2_3)
                    L1_3 = GetGameTimer
                    L1_3 = L1_3()
                    L1_3 = L1_3 - L0_3
                    L1_3 = L1_3 / 1000
                    L1_3 = L1_3 * 80
                    while true do
                      L2_3 = scivolaobj
                      if not L2_3 then
                        break
                      end
                      L2_3 = DoesEntityExist
                      L3_3 = scivolaobj
                      L2_3 = L2_3(L3_3)
                      if not L2_3 then
                        break
                      end
                      L2_3 = IsEntityAttachedToEntity
                      L3_3 = L6_2
                      L4_3 = scivolaobj
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        break
                      end
                      L2_3 = Wait
                      L3_3 = 0
                      L2_3(L3_3)
                      L2_3 = L3_2
                      L2_3 = L2_3 + 1
                      L3_2 = L2_3
                      L2_3 = L0_2
                      if 0 == L2_3 then
                        L2_3 = GetGameTimer
                        L2_3 = L2_3()
                        L0_2 = L2_3
                      end
                      L2_3 = SetEntityNoCollisionEntity
                      L3_3 = L6_2
                      L4_3 = scivolaobj
                      L5_3 = true
                      L2_3(L3_3, L4_3, L5_3)
                      L2_3 = HasEntityCollidedWithAnything
                      L3_3 = scivolaobj
                      L2_3 = L2_3(L3_3)
                      if L2_3 then
                        L2_3 = GetEntityCoords
                        L3_3 = scivolaobj
                        L2_3 = L2_3(L3_3)
                        L3_3 = L0_1
                        L4_3 = "core"
                        L5_3 = "ent_anim_dusty_hands"
                        L6_3 = vector3
                        L7_3 = L2_3.x
                        L8_3 = L2_3.y
                        L9_3 = L2_3.z
                        L9_3 = L9_3 - 0.8
                        L6_3 = L6_3(L7_3, L8_3, L9_3)
                        L7_3 = 4.5
                        L8_3 = 0.2
                        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                        L3_3 = GetGameTimer
                        L3_3 = L3_3()
                        L4_3 = L0_2
                        L3_3 = L3_3 - L4_3
                        L4_3 = 250
                        if L3_3 >= L4_3 then
                          L3_3 = vector3
                          L4_3 = L2_3.x
                          L5_3 = L2_3.y
                          L6_3 = L2_3.z
                          L6_3 = L6_3 - 0.5
                          L3_3 = L3_3(L4_3, L5_3, L6_3)
                          L2_3 = L3_3
                          L3_3 = L0_1
                          L4_3 = "core"
                          L5_3 = "ent_dst_rocks_small"
                          L6_3 = L2_3
                          L7_3 = 1.5
                          L8_3 = 0.1
                          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                          L3_3 = GetEntityBonePosition_2
                          L4_3 = L6_2
                          L5_3 = GetPedBoneIndex
                          L6_3 = L6_2
                          L7_3 = 6286
                          L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L5_3(L6_3, L7_3)
                          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                          L4_3 = vector3
                          L5_3 = L3_3.x
                          L6_3 = L3_3.y
                          L7_3 = L3_3.z
                          L4_3 = L4_3(L5_3, L6_3, L7_3)
                          L3_3 = L4_3
                          L4_3 = L0_1
                          L5_3 = "core"
                          L6_3 = "ent_dst_rocks_small"
                          L7_3 = L3_3
                          L8_3 = 0.8
                          L9_3 = 0.15
                          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
                          L4_3 = GetEntityBonePosition_2
                          L5_3 = L6_2
                          L6_3 = GetPedBoneIndex
                          L7_3 = L6_2
                          L8_3 = 36029
                          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L6_3(L7_3, L8_3)
                          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                          L5_3 = vector3
                          L6_3 = L4_3.x
                          L7_3 = L4_3.y
                          L8_3 = L4_3.z
                          L5_3 = L5_3(L6_3, L7_3, L8_3)
                          L4_3 = L5_3
                          L5_3 = L0_1
                          L6_3 = "core"
                          L7_3 = "ent_dst_rocks_small"
                          L8_3 = L4_3
                          L9_3 = 0.8
                          L10_3 = 0.2
                          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
                          L5_3 = L15_2
                          L5_3 = L5_3 + 1
                          L15_2 = L5_3
                          L5_3 = L15_2
                          if 10 == L5_3 then
                            L5_3 = ApplicaSporcoRandom
                            L5_3()
                            L5_3 = 0
                            L15_2 = L5_3
                          end
                          L5_3 = L2_2
                          if L5_3 then
                            L5_3 = GetEntityCoords
                            L6_3 = L6_2
                            L5_3 = L5_3(L6_3)
                            L6_3 = L2_2
                            L5_3 = L5_3 - L6_3
                            L5_3 = #L5_3
                            L6_3 = 0.5
                            if L5_3 < L6_3 then
                              L5_3 = DelFrameSlider
                              L5_3()
                              L5_3 = StopScivola
                              L5_3()
                              return
                            end
                          end
                          L5_3 = GetEntityCoords
                          L6_3 = L6_2
                          L5_3 = L5_3(L6_3)
                          L2_2 = L5_3
                          L5_3 = 0
                          L0_2 = L5_3
                        end
                      end
                      L2_3 = L3_2
                      if L2_3 >= 100 then
                        L2_3 = 0
                        L3_2 = L2_3
                        L2_3 = math
                        L2_3 = L2_3.floor
                        L3_3 = GetEntityRotation
                        L4_3 = scivolaobj
                        L3_3 = L3_3(L4_3)
                        L3_3 = L3_3.x
                        L2_3 = L2_3(L3_3)
                        L3_3 = L10_2
                        if L2_3 > L3_3 then
                          L2_3 = IsControlPressed
                          L3_3 = 0
                          L4_3 = 33
                          L2_3 = L2_3(L3_3, L4_3)
                          if not L2_3 then
                            L2_3 = HasEntityCollidedWithAnything
                            L3_3 = scivolaobj
                            L2_3 = L2_3(L3_3)
                            if L2_3 then
                              L2_3 = GetEntityCoords
                              L3_3 = L6_2
                              L2_3 = L2_3(L3_3)
                              L3_3 = GetEntityForwardVector
                              L4_3 = L6_2
                              L3_3 = L3_3(L4_3)
                              L4_3 = 0.5
                              L5_3 = table
                              L5_3 = L5_3.unpack
                              L6_3 = L3_3 * L4_3
                              L6_3 = L2_3 + L6_3
                              L5_3, L6_3, L7_3 = L5_3(L6_3)
                              L8_3 = CreateObjectNoOffset
                              L9_3 = GetHashKey
                              L10_3 = L1_2
                              L9_3 = L9_3(L10_3)
                              L10_3 = L5_3
                              L11_3 = L6_3
                              L12_3 = L7_3 - 1.2
                              L13_3 = true
                              L14_3 = false
                              L15_3 = false
                              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                              L9_3 = CreateThread
                              function L10_3()
                                local L0_4, L1_4, L2_4
                                L0_4 = Wait
                                L1_4 = 1000
                                L0_4(L1_4)
                                L0_4 = SetEntityAsMissionEntity
                                L1_4 = L8_3
                                L2_4 = true
                                L0_4(L1_4, L2_4)
                                L0_4 = DeleteEntity
                                L1_4 = L8_3
                                L0_4(L1_4)
                              end
                              L9_3(L10_3)
                            end
                          end
                        end
                      end
                      L2_3 = DisableControlAction
                      L3_3 = 0
                      L4_3 = 21
                      L2_3(L3_3, L4_3)
                      L2_3 = DisableControlAction
                      L3_3 = 0
                      L4_3 = 22
                      L2_3(L3_3, L4_3)
                      L2_3 = DisableCamCollisionForEntity
                      L3_3 = scivolaobj
                      L2_3(L3_3)
                      L2_3 = NetworkRequestControlOfEntity
                      L3_3 = scivolaobj
                      L2_3(L3_3)
                      L2_3 = GetEntityRotation
                      L3_3 = scivolaobj
                      L2_3 = L2_3(L3_3)
                      L3_3 = IsEntityInAir
                      L4_3 = scivolaobj
                      L3_3 = L3_3(L4_3)
                      if not L3_3 then
                        L3_3 = IsEntityPlayingAnim
                        L4_3 = L6_2
                        L5_3 = L13_2
                        L6_3 = L14_2
                        L7_3 = 3
                        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                        if not L3_3 then
                          L3_3 = TaskPlayAnim
                          L4_3 = L6_2
                          L5_3 = L13_2
                          L6_3 = L14_2
                          L7_3 = 8.0
                          L8_3 = 8.0
                          L9_3 = -1
                          L10_3 = 0
                          L11_3 = 1
                          L12_3 = false
                          L13_3 = false
                          L14_3 = false
                          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                        end
                        L3_3 = GetGameTimer
                        L3_3 = L3_3()
                        L4_3 = L5_2
                        L3_3 = L3_3 - L4_3
                        L4_3 = 1200
                        if L3_3 > L4_3 then
                          L3_3 = GetGameTimer
                          L3_3 = L3_3()
                          L5_2 = L3_3
                          L3_3 = TaskPlayAnim
                          L4_3 = L6_2
                          L5_3 = L13_2
                          L6_3 = L14_2
                          L7_3 = 8.0
                          L8_3 = 8.0
                          L9_3 = -1
                          L10_3 = 0
                          L11_3 = 1
                          L12_3 = false
                          L13_3 = false
                          L14_3 = false
                          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                        end
                        L3_3 = IsControlPressed
                        L4_3 = 0
                        L5_3 = 33
                        L3_3 = L3_3(L4_3, L5_3)
                        if not L3_3 then
                          L3_3 = HasEntityCollidedWithAnything
                          L4_3 = scivolaobj
                          L3_3 = L3_3(L4_3)
                          if L3_3 then
                            L3_3 = math
                            L3_3 = L3_3.floor
                            L4_3 = GetEntityRotation
                            L5_3 = scivolaobj
                            L4_3 = L4_3(L5_3)
                            L4_3 = L4_3.x
                            L3_3 = L3_3(L4_3)
                            L4_3 = L10_2
                            if L3_3 > L4_3 then
                              L3_3 = ApplyForceToEntityCenterOfMass
                              L4_3 = scivolaobj
                              L5_3 = 1
                              L6_3 = 0.0
                              L7_3 = -0.3 * L1_3
                              L8_3 = 0.3 * L1_3
                              L9_3 = true
                              L10_3 = true
                              L11_3 = true
                              L12_3 = true
                              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                            else
                              L3_3 = math
                              L3_3 = L3_3.floor
                              L4_3 = GetEntityRotation
                              L5_3 = scivolaobj
                              L4_3 = L4_3(L5_3)
                              L4_3 = L4_3.x
                              L3_3 = L3_3(L4_3)
                              L4_3 = L10_2
                              L4_3 = -L4_3
                              if L3_3 <= L4_3 then
                                L3_3 = ApplyForceToEntityCenterOfMass
                                L4_3 = scivolaobj
                                L5_3 = 1
                                L6_3 = 0.0
                                L7_3 = 0.3 * L1_3
                                L8_3 = 0.3 * L1_3
                                L9_3 = true
                                L10_3 = true
                                L11_3 = true
                                L12_3 = true
                                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                              end
                            end
                          end
                        else
                          L3_3 = GetEntityVelocity
                          L4_3 = scivolaobj
                          L3_3 = L3_3(L4_3)
                          L4_3 = SetEntityVelocity
                          L5_3 = scivolaobj
                          L6_3 = L3_3.x
                          L6_3 = L6_3 / 1.1
                          L7_3 = L3_3.y
                          L7_3 = L7_3 / 1.1
                          L8_3 = L3_3.z
                          L8_3 = L8_3 / 1.1
                          L4_3(L5_3, L6_3, L7_3, L8_3)
                        end
                        L3_3 = IsControlPressed
                        L4_3 = 0
                        L5_3 = 34
                        L3_3 = L3_3(L4_3, L5_3)
                        if L3_3 then
                          L3_3 = SetEntityRotation
                          L4_3 = scivolaobj
                          L5_3 = L2_3.x
                          L6_3 = L2_3.y
                          L7_3 = L2_3.z
                          L8_3 = 2.2 * L1_3
                          L7_3 = L7_3 + L8_3
                          L3_3(L4_3, L5_3, L6_3, L7_3)
                        end
                        L3_3 = IsControlPressed
                        L4_3 = 0
                        L5_3 = 35
                        L3_3 = L3_3(L4_3, L5_3)
                        if L3_3 then
                          L3_3 = SetEntityRotation
                          L4_3 = scivolaobj
                          L5_3 = L2_3.x
                          L6_3 = L2_3.y
                          L7_3 = L2_3.z
                          L8_3 = 2.2 * L1_3
                          L7_3 = L7_3 - L8_3
                          L3_3(L4_3, L5_3, L6_3, L7_3)
                        end
                      end
                      L3_3 = math
                      L3_3 = L3_3.floor
                      L4_3 = GetEntityRotation
                      L5_3 = scivolaobj
                      L4_3 = L4_3(L5_3)
                      L4_3 = L4_3.x
                      L3_3 = L3_3(L4_3)
                      if not (L3_3 > 45.0) then
                        L3_3 = math
                        L3_3 = L3_3.floor
                        L4_3 = GetEntityRotation
                        L5_3 = scivolaobj
                        L4_3 = L4_3(L5_3)
                        L4_3 = L4_3.x
                        L3_3 = L3_3(L4_3)
                        if not (L3_3 < -45.0) then
                          goto lbl_428
                        end
                      end
                      L3_3 = ApplyForceToEntityCenterOfMass
                      L4_3 = scivolaobj
                      L5_3 = 4
                      L6_3 = 0.0
                      L7_3 = 0.0
                      L8_3 = -0.1 * L1_3
                      L9_3 = true
                      L10_3 = true
                      L11_3 = true
                      L12_3 = true
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                      ::lbl_428::
                      L3_3 = ApplyForceToEntityCenterOfMass
                      L4_3 = scivolaobj
                      L5_3 = 4
                      L6_3 = 0.0
                      L7_3 = 0.0
                      L8_3 = -0.09 * L1_3
                      L9_3 = true
                      L10_3 = true
                      L11_3 = true
                      L12_3 = true
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                      L3_3 = ApplyForceToEntityCenterOfMass
                      L4_3 = scivolaobj
                      L5_3 = 1
                      L6_3 = 0.0
                      L7_3 = -0.08 * L1_3
                      L8_3 = 0.0
                      L9_3 = true
                      L10_3 = true
                      L11_3 = true
                      L12_3 = true
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                      L3_3 = math
                      L3_3 = L3_3.floor
                      L4_3 = GetEntityRotation
                      L5_3 = scivolaobj
                      L4_3 = L4_3(L5_3)
                      L4_3 = L4_3.y
                      L3_3 = L3_3(L4_3)
                      L4_3 = L10_2
                      if L3_3 > L4_3 then
                        L3_3 = SetEntityRotation
                        L4_3 = scivolaobj
                        L5_3 = L2_3.x
                        L6_3 = L2_3.y
                        L7_3 = 1.05 * L1_3
                        L6_3 = L6_3 - L7_3
                        L7_3 = L2_3.z
                        L3_3(L4_3, L5_3, L6_3, L7_3)
                      end
                      L3_3 = math
                      L3_3 = L3_3.floor
                      L4_3 = GetEntityRotation
                      L5_3 = scivolaobj
                      L4_3 = L4_3(L5_3)
                      L4_3 = L4_3.y
                      L3_3 = L3_3(L4_3)
                      L4_3 = L10_2
                      L4_3 = -L4_3
                      if L3_3 < L4_3 then
                        L3_3 = SetEntityRotation
                        L4_3 = scivolaobj
                        L5_3 = L2_3.x
                        L6_3 = L2_3.y
                        L7_3 = 1.05 * L1_3
                        L6_3 = L6_3 + L7_3
                        L7_3 = L2_3.z
                        L3_3(L4_3, L5_3, L6_3, L7_3)
                      end
                      L3_3 = math
                      L3_3 = L3_3.floor
                      L4_3 = GetEntityRotation
                      L5_3 = scivolaobj
                      L4_3 = L4_3(L5_3)
                      L4_3 = L4_3.x
                      L3_3 = L3_3(L4_3)
                      if L3_3 > 45 then
                        L3_3 = SetEntityRotation
                        L4_3 = scivolaobj
                        L5_3 = L2_3.x
                        L6_3 = 1.5 * L1_3
                        L5_3 = L5_3 - L6_3
                        L6_3 = L2_3.y
                        L7_3 = L2_3.z
                        L3_3(L4_3, L5_3, L6_3, L7_3)
                      end
                      L3_3 = math
                      L3_3 = L3_3.floor
                      L4_3 = GetEntityRotation
                      L5_3 = scivolaobj
                      L4_3 = L4_3(L5_3)
                      L4_3 = L4_3.x
                      L3_3 = L3_3(L4_3)
                      if L3_3 < -45 then
                        L3_3 = SetEntityRotation
                        L4_3 = scivolaobj
                        L5_3 = L2_3.x
                        L6_3 = 1.5 * L1_3
                        L5_3 = L5_3 + L6_3
                        L6_3 = L2_3.y
                        L7_3 = L2_3.z
                        L3_3(L4_3, L5_3, L6_3, L7_3)
                      end
                      L3_3 = HasEntityCollidedWithAnything
                      L4_3 = scivolaobj
                      L3_3 = L3_3(L4_3)
                      if L3_3 then
                        L3_3 = nil
                        L4_2 = L3_3
                        L3_3 = IsPedDeadOrDying
                        L4_3 = L6_2
                        L3_3 = L3_3(L4_3)
                        if not L3_3 then
                          L3_3 = IsPedFatallyInjured
                          L4_3 = L6_2
                          L3_3 = L3_3(L4_3)
                          if not L3_3 then
                            L3_3 = math
                            L3_3 = L3_3.floor
                            L4_3 = GetEntityRotation
                            L5_3 = scivolaobj
                            L4_3 = L4_3(L5_3)
                            L4_3 = L4_3.x
                            L3_3 = L3_3(L4_3)
                            if not (L3_3 > 90.0) then
                              L3_3 = math
                              L3_3 = L3_3.floor
                              L4_3 = GetEntityRotation
                              L5_3 = scivolaobj
                              L4_3 = L4_3(L5_3)
                              L4_3 = L4_3.x
                              L3_3 = L3_3(L4_3)
                              if not (L3_3 < -90.0) then
                                L3_3 = math
                                L3_3 = L3_3.floor
                                L4_3 = GetEntityRotation
                                L5_3 = scivolaobj
                                L4_3 = L4_3(L5_3)
                                L4_3 = L4_3.y
                                L3_3 = L3_3(L4_3)
                                if not (L3_3 > 90.0) then
                                  L3_3 = math
                                  L3_3 = L3_3.floor
                                  L4_3 = GetEntityRotation
                                  L5_3 = scivolaobj
                                  L4_3 = L4_3(L5_3)
                                  L4_3 = L4_3.y
                                  L3_3 = L3_3(L4_3)
                                end
                              end
                            end
                          end
                        end
                        if L3_3 < -90.0 then
                          L3_3 = DelFrameSlider
                          L3_3()
                          return
                        end
                      else
                        L3_3 = L4_2
                        if nil == L3_3 then
                          L3_3 = GetGameTimer
                          L3_3 = L3_3()
                          L4_2 = L3_3
                        end
                        L3_3 = L4_2
                        if L3_3 then
                          L3_3 = L4_2
                          L4_3 = GetGameTimer
                          L4_3 = L4_3()
                          L3_3 = L3_3 - L4_3
                          L3_3 = L3_3 * -1
                          L4_3 = 1000
                          if L3_3 > L4_3 then
                            L3_3 = DelFrameSlider
                            L3_3()
                            return
                          end
                        end
                      end
                    end
                    L2_3 = StopScivola
                    L3_3 = false
                    L2_3(L3_3)
                    return
                  end
                end
                L16_2(L17_2)
              end
            end
          end
        end
      end
    end
  end
  ::lbl_199::
end
StartScivola = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = DetachEntity
  L3_2 = L1_2
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  if A0_2 then
    L2_2 = SetEntityHeading
    L3_2 = L1_2
    L4_2 = GetGameplayCamRot
    L5_2 = 0
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.z
    L2_2(L3_2, L4_2)
    L2_2 = SetPedToRagdoll
    L3_2 = L1_2
    L4_2 = 1000
    L5_2 = 1000
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = ApplyForceToEntityCenterOfMass
    L3_2 = L1_2
    L4_2 = 1
    L5_2 = 0.0
    L6_2 = 10.5
    L7_2 = 0.0
    L8_2 = true
    L9_2 = true
    L10_2 = true
    L11_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L2_2 = ClearPedTasks
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = faiAnim
    L3_2 = "get_up@directional@movement@from_knees@standard"
    L4_2 = "getup_l_0"
    L5_2 = 750
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = DelFrameSlider
  L2_2()
end
StopScivola = L2_1
L2_1 = exports
L3_1 = "inscivola"
function L4_1()
  local L0_2, L1_2
  L0_2 = scivolaobj
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = scivolaobj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = true
      return L0_2
    else
      L0_2 = false
      return L0_2
    end
  else
    L0_2 = false
    return L0_2
  end
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "stopscivola"
function L4_1()
  local L0_2, L1_2
  L0_2 = DelFrameSlider
  L0_2()
  L0_2 = StopScivola
  L0_2()
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = StartShapeTestRay
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2 + 50.0
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2 - 300.0
  L10_2 = 1
  L11_2 = -1
  L12_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetShapeTestResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  if 1 == L5_2 then
    return L8_2
  end
  L9_2 = GetGroundZFor_3dCoord
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2 + 100.0
  L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
  if L9_2 then
    return L10_2
  end
  return A2_2
end
GetGroundZUltra = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = scivolaobj
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = scivolaobj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = GetEntityCoords
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2()
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      L1_2 = GetGroundZUltra
      L2_2 = L0_2.x
      L2_2 = L2_2 + 0.0
      L3_2 = L0_2.y
      L3_2 = L3_2 + 0.0
      L4_2 = L0_2.z
      L4_2 = L4_2 + 999.0
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L2_2 = DetachEntity
      L3_2 = PlayerPedId
      L3_2, L4_2, L5_2, L6_2 = L3_2()
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = Wait
      L3_2 = 25
      L2_2(L3_2)
      L2_2 = DeleteEntity
      L3_2 = scivolaobj
      L2_2(L3_2)
      scivolaobj = nil
      L2_2 = SetEntityCoords
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = L0_2.x
      L5_2 = L0_2.y
      L6_2 = L1_2 + 0.1
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
DelFrameSlider = L2_1
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = scivolaobj
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = scivolaobj
      L1_2(L2_2)
      L1_2 = DetachEntity
      L2_2 = ped
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 25
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = scivolaobj
      L1_2(L2_2)
    end
  end
end
L2_1(L3_1, L4_1)
