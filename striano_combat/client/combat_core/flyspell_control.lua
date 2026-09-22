local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = "fly@r9@one"
  L2_2 = IsEntityPlayingAnim
  L3_2 = L0_2
  L4_2 = L1_2
  L5_2 = "forward"
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = IsEntityPlayingAnim
    L3_2 = L0_2
    L4_2 = "missexile3"
    L5_2 = "ex03_train_roof_idle"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = L0_2
      L4_2 = "rcmextreme4"
      L5_2 = "idle"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        L2_2 = IsEntityPlayingAnim
        L3_2 = L0_2
        L4_2 = "skydive@freefall"
        L5_2 = "free_forward"
        L6_2 = 3
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        if not L2_2 then
          L2_2 = IsEntityPlayingAnim
          L3_2 = L0_2
          L4_2 = "skydive@freefall"
          L5_2 = "free_forward_anim"
          L6_2 = 3
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
          if not L2_2 then
            L2_2 = IsEntityPlayingAnim
            L3_2 = L0_2
            L4_2 = "skydive@freefall"
            L5_2 = "free_back"
            L6_2 = 3
            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
            if not L2_2 then
              L2_2 = IsEntityPlayingAnim
              L3_2 = L0_2
              L4_2 = "skydive@freefall"
              L5_2 = "free_right"
              L6_2 = 3
              L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
              if not L2_2 then
                L2_2 = IsEntityPlayingAnim
                L3_2 = L0_2
                L4_2 = "skydive@freefall"
                L5_2 = "free_left"
                L6_2 = 3
                L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                if not L2_2 then
                  L2_2 = IsEntityPlayingAnim
                  L3_2 = L0_2
                  L4_2 = L1_2
                  L5_2 = "backward"
                  L6_2 = 3
                  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                  if not L2_2 then
                    L2_2 = IsEntityPlayingAnim
                    L3_2 = L0_2
                    L4_2 = L1_2
                    L5_2 = "right"
                    L6_2 = 3
                    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                    if not L2_2 then
                      L2_2 = IsEntityPlayingAnim
                      L3_2 = L0_2
                      L4_2 = L1_2
                      L5_2 = "left"
                      L6_2 = 3
                      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                      if not L2_2 then
                        L2_2 = IsEntityPlayingAnim
                        L3_2 = L0_2
                        L4_2 = L1_2
                        L5_2 = "idle"
                        L6_2 = 3
                        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                        if not L2_2 then
                          L2_2 = IsEntityPlayingAnim
                          L3_2 = L0_2
                          L4_2 = L1_2
                          L5_2 = "upwards"
                          L6_2 = 3
                          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                          if not L2_2 then
                            L2_2 = IsEntityPlayingAnim
                            L3_2 = L0_2
                            L4_2 = L1_2
                            L5_2 = "down"
                            L6_2 = 3
                            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                            if not L2_2 then
                              L2_2 = IsEntityPlayingAnim
                              L3_2 = L0_2
                              L4_2 = L1_2
                              L5_2 = "shift"
                              L6_2 = 3
                              L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                              if not L2_2 then
                                L2_2 = IsEntityPlayingAnim
                                L3_2 = L0_2
                                L4_2 = L1_2
                                L5_2 = "grounded"
                                L6_2 = 3
                                L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                                if not L2_2 then
                                  goto lbl_135
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
  L2_2 = true
  do return L2_2 end
  goto lbl_137
  ::lbl_135::
  L2_2 = false
  do return L2_2 end
  ::lbl_137::
end
FlyingAnimation = L0_1
L0_1 = maxSpeedVar
L0_1 = L0_1 / 4
speed = L0_1
directionFly = nil
flyActive = false
flyingstart = false
distanzaTerreno = 0
distanzaFronte = 0
distanzaSopra = 0
startChecking = false
fxFly = nil
lockfly = false
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedLegIkMode
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanHeadIk
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanArmIk
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = flyActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = SetPedLegIkMode
    L1_3 = L0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetPedCanHeadIk
    L1_3 = L0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetPedCanArmIk
    L1_3 = L0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
disableIK = L0_1
L0_1 = {}
L1_1 = {}
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
lerp = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 + 180.0
  L3_2 = L3_2 % 360.0
  L3_2 = L3_2 - 180.0
  L4_2 = L3_2 * A2_2
  L4_2 = A0_2 + L4_2
  L4_2 = L4_2 % 360.0
  return L4_2
end
lerpAngle = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
lerp = L2_1
function L2_1(A0_2)
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
round = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = IsControlPressed
  L1_2 = 0
  L2_2 = 32
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 33
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsControlPressed
      L1_2 = 0
      L2_2 = 34
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L0_2 = IsControlPressed
        L1_2 = 0
        L2_2 = 35
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          L0_2 = IsControlPressed
          L1_2 = 0
          L2_2 = 44
          L0_2 = L0_2(L1_2, L2_2)
          if not L0_2 then
            L0_2 = IsControlPressed
            L1_2 = 0
            L2_2 = 38
            L0_2 = L0_2(L1_2, L2_2)
            if not L0_2 then
              goto lbl_40
            end
          end
        end
      end
    end
  end
  L0_2 = true
  do return L0_2 end
  goto lbl_42
  ::lbl_40::
  L0_2 = false
  do return L0_2 end
  ::lbl_42::
end
keyMovementPressed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetEntityForwardVector
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L1_2.y
  L3_2 = -L3_2
  L4_2 = L1_2.x
  L5_2 = 0.0
  return L2_2(L3_2, L4_2, L5_2)
end
getEntityRightVector = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = flyingstart
  if not L3_2 then
    flyingstart = true
    L3_2 = GetEntityCoords
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.z
    L4_2 = L4_2 + A1_2
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L6_2 = CreateThread
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      while true do
        L0_3 = flyActive
        if not L0_3 then
          break
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L5_2
        L1_3 = L0_3 - L1_3
        L2_3 = A2_2
        if L1_3 > L2_3 then
          break
        end
        L2_3 = A2_2
        L2_3 = L1_3 / L2_3
        L3_3 = L2_3 * L2_3
        L4_3 = 2 * L2_3
        L5_3 = 3
        L4_3 = L5_3 - L4_3
        L3_3 = L3_3 * L4_3
        L4_3 = L3_2.z
        L5_3 = A1_2
        L5_3 = L5_3 * L3_3
        L4_3 = L4_3 + L5_3
        L5_3 = SetEntityCoordsNoOffset
        L6_3 = A0_2
        L7_3 = L3_2.x
        L8_3 = L3_2.y
        L9_3 = L4_3
        L10_3 = true
        L11_3 = false
        L12_3 = false
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L5_3 = Wait
        L6_3 = 0
        L5_3(L6_3)
      end
      L0_3 = SetEntityCoordsNoOffset
      L1_3 = A0_2
      L2_3 = L3_2.x
      L3_3 = L3_2.y
      L4_3 = L4_2
      L5_3 = true
      L6_3 = false
      L7_3 = false
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      flyingstart = false
    end
    L6_2(L7_2)
  end
end
flyUp = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = _ENV
  L3_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L2_2 = L2_2[L3_2]
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L5_2 = L5_2 - 0.1
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L8_2 = L8_2 - 6.0
  L9_2 = -1
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = 4
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = GetShapeTestResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  if L4_2 then
    L8_2 = L5_2
    L9_2 = L1_2 - L8_2
    L9_2 = #L9_2
    distanzaTerreno = L9_2
  end
end
RayCastGamePlayCameraDown = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 * 6.0
  L3_2 = L1_2 + L3_2
  L4_2 = _ENV
  L5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L4_2 = L4_2[L5_2]
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L11_2 = -1
  L12_2 = PlayerPedId
  L12_2 = L12_2()
  L13_2 = 4
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = GetShapeTestResult
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  if L6_2 then
    L10_2 = L7_2
    L11_2 = L1_2 - L10_2
    L11_2 = #L11_2
    distanzaFronte = L11_2
  end
end
RayCastGamePlayCameraFront = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = _ENV
  L3_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L2_2 = L2_2[L3_2]
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L5_2 = L5_2 - 0.1
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L8_2 = L8_2 + 6.0
  L9_2 = -1
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = 4
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = GetShapeTestResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  if L4_2 then
    L8_2 = L5_2
    L9_2 = L1_2 - L8_2
    L9_2 = #L9_2
    distanzaSopra = L9_2
  end
end
RayCastGamePlayCameraUp = L2_1
L2_1 = {}
L3_1 = {}
L3_1.dict = "fly@r9@one"
L3_1.anim = "forward"
L4_1 = {}
L4_1.dict = "fly@r9@one"
L4_1.anim = "backward"
L5_1 = {}
L5_1.dict = "fly@r9@one"
L5_1.anim = "right"
L6_1 = {}
L6_1.dict = "fly@r9@one"
L6_1.anim = "left"
L7_1 = {}
L7_1.dict = "fly@r9@one"
L7_1.anim = "idle"
L8_1 = {}
L8_1.dict = "fly@r9@one"
L8_1.anim = "upwards"
L9_1 = {}
L9_1.dict = "fly@r9@one"
L9_1.anim = "down"
L10_1 = {}
L10_1.dict = "fly@r9@one"
L10_1.anim = "shift"
L11_1 = {}
L11_1.dict = "fly@r9@one"
L11_1.anim = "grounded"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityPlayingAnim
  L3_2 = L1_2
  L4_2 = "missexile3"
  L5_2 = "ex03_train_roof_idle"
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = L2_1
    L2_2 = L2_2[A0_2]
    if not L2_2 then
      return
    end
    L3_2 = L2_2.dict
    L4_2 = L2_2.anim
    L5_2 = HasAnimDictLoaded
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = RequestAnimDict
      L6_2 = L3_2
      L5_2(L6_2)
      while true do
        L5_2 = HasAnimDictLoaded
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          break
        end
        L5_2 = Wait
        L6_2 = 10
        L5_2(L6_2)
      end
    end
    L5_2 = IsEntityPlayingAnim
    L6_2 = L1_2
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      L5_2 = TaskPlayAnim
      L6_2 = L1_2
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = 3.0
      L10_2 = 3.0
      L11_2 = -1
      L12_2 = 1
      L13_2 = 0.0
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
playFlyAnim = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = fxFly
  if nil == L0_2 then
    L0_2 = "cut_pacific_fin"
    L1_2 = "cs_pac_fin_skid_smoke"
    L2_2 = RequestNamedPtfxAsset
    L3_2 = L0_2
    L2_2(L3_2)
    while true do
      L2_2 = HasNamedPtfxAssetLoaded
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = UseParticleFxAssetNextCall
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = StartNetworkedParticleFxLoopedOnEntity
    L3_2 = L1_2
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = -1.0
    L6_2 = -1.5
    L7_2 = -0.8
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 2.3
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    fxFly = L2_2
    L2_2 = SetParticleFxLoopedColour
    L3_2 = fxFly
    L4_2 = 1.0
    L5_2 = 3.0
    L6_2 = 2.0
    L7_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = SetParticleFxLoopedAlpha
    L3_2 = fxFly
    L4_2 = 0.5
    L2_2(L3_2, L4_2)
  end
end
CreateFxFly = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetEntityForwardVector
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Wait
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 - L2_2
  L5_2 = #L4_2
  L6_2 = 0.001
  if L5_2 < L6_2 then
    L5_2 = 0
    return L5_2
  end
  L5_2 = L1_2.x
  L6_2 = L4_2.x
  L5_2 = L5_2 * L6_2
  L6_2 = L1_2.y
  L7_2 = L4_2.y
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = 0.1
  if L5_2 > L6_2 then
    L6_2 = 1
    return L6_2
  end
  L6_2 = -0.1
  if L5_2 < L6_2 then
    L6_2 = 2
    return L6_2
  end
  L6_2 = vector3
  L7_2 = L1_2.y
  L7_2 = -L7_2
  L8_2 = L1_2.x
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L6_2.x
  L8_2 = L4_2.x
  L7_2 = L7_2 * L8_2
  L8_2 = L6_2.y
  L9_2 = L4_2.y
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = 0.1
  if L7_2 > L8_2 then
    L8_2 = 4
    return L8_2
  end
  L8_2 = -0.1
  if L7_2 < L8_2 then
    L8_2 = 3
    return L8_2
  end
  L8_2 = L4_2.z
  L9_2 = 0.1
  if L8_2 > L9_2 then
    L8_2 = 5
    return L8_2
  end
  L8_2 = L4_2.z
  L9_2 = -0.1
  if L8_2 < L9_2 then
    L8_2 = 6
    return L8_2
  end
  L8_2 = 0
  return L8_2
end
GetPlayerMoveDirection = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.z
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 * L4_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  return L6_2(L7_2, L8_2, L9_2)
end
Get3DForwardVectorFromRotation = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = disableIK
  L0_2()
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  directionFly = L1_2
  L1_2 = SetPlayerFallDistance
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = 1000.0
  L1_2(L2_2, L3_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = GetGameplayCamRot
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = flyActive
      if not L0_3 then
        break
      end
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 38
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 44
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 32
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 34
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
          end
          else
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 32
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = IsControlPressed
              L1_3 = 0
              L2_3 = 35
              L0_3 = L0_3(L1_3, L2_3)
              if L0_3 then
            end
            else
              L0_3 = IsControlPressed
              L1_3 = 0
              L2_3 = 33
              L0_3 = L0_3(L1_3, L2_3)
              if L0_3 then
                L0_3 = IsControlPressed
                L1_3 = 0
                L2_3 = 34
                L0_3 = L0_3(L1_3, L2_3)
                if L0_3 then
              end
              else
                L0_3 = IsControlPressed
                L1_3 = 0
                L2_3 = 33
                L0_3 = L0_3(L1_3, L2_3)
                if L0_3 then
                  L0_3 = IsControlPressed
                  L1_3 = 0
                  L2_3 = 35
                  L0_3 = L0_3(L1_3, L2_3)
                  if L0_3 then
                end
                else
                  L0_3 = IsControlPressed
                  L1_3 = 0
                  L2_3 = 34
                  L0_3 = L0_3(L1_3, L2_3)
                  if not L0_3 then
                    L0_3 = IsControlPressed
                    L1_3 = 0
                    L2_3 = 35
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      L0_3 = GetPlayerMoveDirection
                      L1_3 = L0_2
                      L0_3 = L0_3(L1_3)
                      if 1 == L0_3 then
                        L1_3 = playFlyAnim
                        L2_3 = 1
                        L1_3(L2_3)
                      elseif 2 == L0_3 then
                        L1_3 = playFlyAnim
                        L2_3 = 2
                        L1_3(L2_3)
                      elseif 3 == L0_3 then
                        L1_3 = playFlyAnim
                        L2_3 = 3
                        L1_3(L2_3)
                      elseif 4 == L0_3 then
                        L1_3 = playFlyAnim
                        L2_3 = 4
                        L1_3(L2_3)
                      elseif 5 == L0_3 then
                        L1_3 = playFlyAnim
                        L2_3 = 6
                        L1_3(L2_3)
                      elseif 6 == L0_3 then
                        L1_3 = playFlyAnim
                        L2_3 = 7
                        L1_3(L2_3)
                      else
                        L1_3 = playFlyAnim
                        L2_3 = 5
                        L1_3(L2_3)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
    end
  end
  L3_2(L4_2)
  L3_2 = 16
  L4_2 = 24.0
  L5_2 = 36.0
  L6_2 = 10.0
  L7_2 = 16.0
  L8_2 = 120
  L9_2 = 0.07
  L10_2 = 7.0
  L11_2 = 14.0
  function L12_2(A0_3, A1_3, A2_3)
    if A0_3 < A1_3 then
      return A1_3
    end
    if A2_3 < A0_3 then
      return A2_3
    end
    return A0_3
  end
  function L13_2(A0_3)
    local L1_3
    if A0_3 >= 0 then
      L1_3 = 1
      if L1_3 then
        goto lbl_7
      end
    end
    L1_3 = -1
    ::lbl_7::
    return L1_3
  end
  function L14_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3 - A1_3
    L2_3 = L2_3 + 180.0
    L2_3 = L2_3 % 360.0
    L2_3 = L2_3 - 180.0
    return L2_3
  end
  function L15_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3
    L4_3 = A1_3 - A0_3
    L5_3 = math
    L5_3 = L5_3.abs
    L6_3 = L4_3
    L5_3 = L5_3(L6_3)
    L6_3 = 1.0E-4
    if L5_3 < L6_3 then
      return A1_3
    end
    L5_3 = math
    L5_3 = L5_3.min
    L6_3 = math
    L6_3 = L6_3.abs
    L7_3 = L4_3
    L6_3 = L6_3(L7_3)
    L6_3 = L6_3 * A2_3
    L7_3 = A3_3
    L5_3 = L5_3(L6_3, L7_3)
    L6_3 = L13_2
    L7_3 = L4_3
    L6_3 = L6_3(L7_3)
    L6_3 = L5_3 * L6_3
    L6_3 = A0_3 + L6_3
    return L6_3
  end
  L16_2 = CreateThread
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3
    while true do
      L0_3 = flyActive
      if not L0_3 then
        break
      end
      L0_3 = false
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L2_3 = L8_2
      L2_3 = L1_3 - L2_3
      L3_3 = L3_2
      L3_3 = L3_3 / 1000.0
      L4_3 = pairs
      L5_3 = L1_1
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = L9_3.list
        if L10_3 then
          L11_3 = #L10_3
          if L11_3 >= 1 then
            L0_3 = true
            L11_3 = nil
            L12_3 = nil
            L13_3 = #L10_3
            L14_3 = 1
            L15_3 = -1
            for L16_3 = L13_3, L14_3, L15_3 do
              L17_3 = L10_3[L16_3]
              L17_3 = L17_3.t
              if L2_3 >= L17_3 then
                L11_3 = L10_3[L16_3]
                L17_3 = L16_3 + 1
                L12_3 = L10_3[L17_3]
                break
              end
            end
            if not L11_3 then
              L13_3 = #L10_3
              if L13_3 >= 2 then
                L13_3 = #L10_3
                L13_3 = L13_3 - 1
                L11_3 = L10_3[L13_3]
                L13_3 = #L10_3
                L12_3 = L10_3[L13_3]
                goto lbl_52
              end
            ::lbl_52::
            else
              L13_3 = nil
              L14_3 = nil
              L15_3 = nil
              L16_3 = nil
              if L12_3 then
                L17_3 = math
                L17_3 = L17_3.max
                L18_3 = 1
                L19_3 = L12_3.t
                L20_3 = L11_3.t
                L19_3 = L19_3 - L20_3
                L17_3 = L17_3(L18_3, L19_3)
                L18_3 = L12_2
                L19_3 = L11_3.t
                L19_3 = L2_3 - L19_3
                L19_3 = L19_3 / L17_3
                L20_3 = 0.0
                L21_3 = 1.0
                L18_3 = L18_3(L19_3, L20_3, L21_3)
                L19_3 = L11_3.x
                L20_3 = L12_3.x
                L21_3 = L11_3.x
                L20_3 = L20_3 - L21_3
                L20_3 = L20_3 * L18_3
                L13_3 = L19_3 + L20_3
                L19_3 = L11_3.y
                L20_3 = L12_3.y
                L21_3 = L11_3.y
                L20_3 = L20_3 - L21_3
                L20_3 = L20_3 * L18_3
                L14_3 = L19_3 + L20_3
                L19_3 = L11_3.z
                L20_3 = L12_3.z
                L21_3 = L11_3.z
                L20_3 = L20_3 - L21_3
                L20_3 = L20_3 * L18_3
                L15_3 = L19_3 + L20_3
                L19_3 = L11_3.rz
                if L19_3 then
                  L19_3 = L12_3.rz
                  if L19_3 then
                    L19_3 = lerpAngle
                    L20_3 = L11_3.rz
                    L21_3 = L12_3.rz
                    L22_3 = L18_3
                    L19_3 = L19_3(L20_3, L21_3, L22_3)
                    L16_3 = L19_3
                  end
                end
              else
                L17_3 = L11_3.t
                L17_3 = L2_3 - L17_3
                if L17_3 <= 0 then
                else
                  L18_3 = math
                  L18_3 = L18_3.min
                  L19_3 = L17_3
                  L20_3 = 40
                  L18_3 = L18_3(L19_3, L20_3)
                  L17_3 = L18_3
                  L18_3 = #L10_3
                  if L18_3 >= 2 then
                    L18_3 = #L10_3
                    L18_3 = L18_3 - 1
                    L18_3 = L10_3[L18_3]
                    if L18_3 then
                      goto lbl_134
                    end
                  end
                  L18_3 = nil
                  ::lbl_134::
                  if L18_3 then
                    L19_3 = math
                    L19_3 = L19_3.max
                    L20_3 = 1
                    L21_3 = L11_3.t
                    L22_3 = L18_3.t
                    L21_3 = L21_3 - L22_3
                    L19_3 = L19_3(L20_3, L21_3)
                    if L19_3 then
                      goto lbl_147
                    end
                  end
                  L19_3 = 1
                  ::lbl_147::
                  L20_3 = 1000.0
                  L20_3 = L20_3 / L19_3
                  L21_3 = 0.0
                  L22_3 = 0.0
                  L23_3 = 0.0
                  if L18_3 then
                    L24_3 = L11_3.x
                    L25_3 = L18_3.x
                    L24_3 = L24_3 - L25_3
                    L21_3 = L24_3 * L20_3
                    L24_3 = L11_3.y
                    L25_3 = L18_3.y
                    L24_3 = L24_3 - L25_3
                    L22_3 = L24_3 * L20_3
                    L24_3 = L11_3.z
                    L25_3 = L18_3.z
                    L24_3 = L24_3 - L25_3
                    L23_3 = L24_3 * L20_3
                  end
                  L24_3 = L17_3 / 1000.0
                  L25_3 = L11_3.x
                  L26_3 = L21_3 * L24_3
                  L13_3 = L25_3 + L26_3
                  L25_3 = L11_3.y
                  L26_3 = L22_3 * L24_3
                  L14_3 = L25_3 + L26_3
                  L25_3 = L11_3.z
                  L26_3 = L23_3 * L24_3
                  L15_3 = L25_3 + L26_3
                  if L18_3 then
                    L25_3 = L11_3.rz
                    if L25_3 then
                      L25_3 = L18_3.rz
                      if L25_3 then
                        L25_3 = L14_2
                        L26_3 = L11_3.rz
                        L27_3 = L18_3.rz
                        L25_3 = L25_3(L26_3, L27_3)
                        L25_3 = L25_3 * L20_3
                        L26_3 = L11_3.rz
                        L27_3 = L25_3 * L24_3
                        L26_3 = L26_3 + L27_3
                        L16_3 = L26_3 % 360.0
                      end
                    end
                  end
                  L17_3 = GetPlayerFromServerId
                  L18_3 = L8_3
                  L17_3 = L17_3(L18_3)
                  if -1 ~= L17_3 then
                    L18_3 = GetPlayerPed
                    L19_3 = L17_3
                    L18_3 = L18_3(L19_3)
                    L19_3 = DoesEntityExist
                    L20_3 = L18_3
                    L19_3 = L19_3(L20_3)
                    if L19_3 and L13_3 and L14_3 and L15_3 then
                      L19_3 = table
                      L19_3 = L19_3.unpack
                      L20_3 = GetEntityCoords
                      L21_3 = L18_3
                      L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L20_3(L21_3)
                      L19_3, L20_3, L21_3 = L19_3(L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                      L22_3 = L13_3 - L19_3
                      L23_3 = L14_3 - L20_3
                      L24_3 = L15_3 - L21_3
                      L25_3 = math
                      L25_3 = L25_3.sqrt
                      L26_3 = L22_3 * L22_3
                      L27_3 = L23_3 * L23_3
                      L26_3 = L26_3 + L27_3
                      L27_3 = L24_3 * L24_3
                      L26_3 = L26_3 + L27_3
                      L25_3 = L25_3(L26_3)
                      L26_3 = L11_2
                      if L25_3 > L26_3 then
                        L26_3 = SetEntityCoordsNoOffset
                        L27_3 = L18_3
                        L28_3 = L13_3
                        L29_3 = L14_3
                        L30_3 = L15_3
                        L31_3 = false
                        L32_3 = false
                        L33_3 = false
                        L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
                        if L16_3 then
                          L26_3 = SetEntityHeading
                          L27_3 = L18_3
                          L28_3 = L16_3
                          L26_3(L27_3, L28_3)
                        end
                      else
                        L26_3 = L10_2
                        if L25_3 > L26_3 then
                          L26_3 = L12_2
                          L27_3 = math
                          L27_3 = L27_3.min
                          L28_3 = L25_3
                          L29_3 = 16.0
                          L27_3 = L27_3(L28_3, L29_3)
                          L27_3 = L27_3 * 1.1
                          L27_3 = 24.0 + L27_3
                          L27_3 = L27_3 * L3_3
                          L28_3 = 0.0
                          L29_3 = 1.0
                          L26_3 = L26_3(L27_3, L28_3, L29_3)
                          L27_3 = L4_2
                          L27_3 = L27_3 * L3_3
                          L28_3 = L5_2
                          L28_3 = L28_3 * L3_3
                          L29_3 = L15_2
                          L30_3 = L19_3
                          L31_3 = L13_3
                          L32_3 = L26_3
                          L33_3 = L27_3
                          L29_3 = L29_3(L30_3, L31_3, L32_3, L33_3)
                          L30_3 = L15_2
                          L31_3 = L20_3
                          L32_3 = L14_3
                          L33_3 = L26_3
                          L34_3 = L27_3
                          L30_3 = L30_3(L31_3, L32_3, L33_3, L34_3)
                          L31_3 = L15_2
                          L32_3 = L21_3
                          L33_3 = L15_3
                          L34_3 = L26_3
                          L35_3 = L28_3
                          L31_3 = L31_3(L32_3, L33_3, L34_3, L35_3)
                          L32_3 = SetEntityCoordsNoOffset
                          L33_3 = L18_3
                          L34_3 = L29_3
                          L35_3 = L30_3
                          L36_3 = L31_3
                          L37_3 = false
                          L38_3 = false
                          L39_3 = false
                          L32_3(L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                          if L16_3 then
                            L32_3 = GetEntityHeading
                            L33_3 = L18_3
                            L32_3 = L32_3(L33_3)
                            L33_3 = L12_2
                            L34_3 = math
                            L34_3 = L34_3.min
                            L35_3 = L25_3
                            L36_3 = 12.0
                            L34_3 = L34_3(L35_3, L36_3)
                            L34_3 = L34_3 * 1.0
                            L34_3 = 16.0 + L34_3
                            L34_3 = L34_3 * L3_3
                            L35_3 = 0.0
                            L36_3 = 1.0
                            L33_3 = L33_3(L34_3, L35_3, L36_3)
                            L34_3 = L14_2
                            L35_3 = L16_3
                            L36_3 = L32_3
                            L34_3 = L34_3(L35_3, L36_3)
                            L35_3 = SetEntityHeading
                            L36_3 = L18_3
                            L37_3 = L34_3 * L33_3
                            L37_3 = L32_3 + L37_3
                            L37_3 = L37_3 % 360.0
                            L35_3(L36_3, L37_3)
                          end
                        else
                          L26_3 = L9_2
                          if L25_3 > L26_3 then
                            L26_3 = L12_2
                            L27_3 = math
                            L27_3 = L27_3.min
                            L28_3 = L25_3
                            L29_3 = 6.0
                            L27_3 = L27_3(L28_3, L29_3)
                            L27_3 = L27_3 * 0.8
                            L27_3 = 12.0 + L27_3
                            L27_3 = L27_3 * L3_3
                            L28_3 = 0.0
                            L29_3 = 1.0
                            L26_3 = L26_3(L27_3, L28_3, L29_3)
                            L27_3 = L6_2
                            L27_3 = L27_3 * L3_3
                            L28_3 = L7_2
                            L28_3 = L28_3 * L3_3
                            L29_3 = L15_2
                            L30_3 = L19_3
                            L31_3 = L13_3
                            L32_3 = L26_3
                            L33_3 = L27_3
                            L29_3 = L29_3(L30_3, L31_3, L32_3, L33_3)
                            L30_3 = L15_2
                            L31_3 = L20_3
                            L32_3 = L14_3
                            L33_3 = L26_3
                            L34_3 = L27_3
                            L30_3 = L30_3(L31_3, L32_3, L33_3, L34_3)
                            L31_3 = L15_2
                            L32_3 = L21_3
                            L33_3 = L15_3
                            L34_3 = L26_3
                            L35_3 = L28_3
                            L31_3 = L31_3(L32_3, L33_3, L34_3, L35_3)
                            L32_3 = SetEntityCoordsNoOffset
                            L33_3 = L18_3
                            L34_3 = L29_3
                            L35_3 = L30_3
                            L36_3 = L31_3
                            L37_3 = false
                            L38_3 = false
                            L39_3 = false
                            L32_3(L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                            if L16_3 then
                              L32_3 = GetEntityHeading
                              L33_3 = L18_3
                              L32_3 = L32_3(L33_3)
                              L33_3 = L12_2
                              L34_3 = math
                              L34_3 = L34_3.min
                              L35_3 = L25_3
                              L36_3 = 6.0
                              L34_3 = L34_3(L35_3, L36_3)
                              L34_3 = L34_3 * 1.0
                              L34_3 = 14.0 + L34_3
                              L34_3 = L34_3 * L3_3
                              L35_3 = 0.0
                              L36_3 = 1.0
                              L33_3 = L33_3(L34_3, L35_3, L36_3)
                              L34_3 = L14_2
                              L35_3 = L16_3
                              L36_3 = L32_3
                              L34_3 = L34_3(L35_3, L36_3)
                              L35_3 = SetEntityHeading
                              L36_3 = L18_3
                              L37_3 = L34_3 * L33_3
                              L37_3 = L32_3 + L37_3
                              L37_3 = L37_3 % 360.0
                              L35_3(L36_3, L37_3)
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
      L4_3 = Wait
      if L0_3 then
        L5_3 = L3_2
        if L5_3 then
          goto lbl_453
        end
      end
      L5_3 = 200
      ::lbl_453::
      L4_3(L5_3)
    end
  end
  L16_2(L17_2)
  L16_2 = CreateThread
  function L17_2()
    local L0_3, L1_3
    while true do
      L0_3 = flyActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      L0_3 = RayCastGamePlayCameraFront
      L0_3()
      L0_3 = RayCastGamePlayCameraUp
      L0_3()
      L0_3 = RayCastGamePlayCameraDown
      L0_3()
    end
  end
  L16_2(L17_2)
  L16_2 = CreateThread
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = flyActive
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityRotation
      L3_3 = L0_3
      L4_3 = 2
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      L4_3 = TriggerServerEvent
      L5_3 = "flyman:pos"
      L6_3 = L1_3.x
      L7_3 = L1_3.y
      L8_3 = L1_3.z
      L9_3 = L2_3.x
      L10_3 = L2_3.y
      L11_3 = L2_3.z
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L4_3 = 75
      L5_3 = IsControlPressed
      L6_3 = 0
      L7_3 = 21
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = IsDisabledControlPressed
      L7_3 = 0
      L8_3 = 44
      L6_3 = L6_3(L7_3, L8_3)
      if not L6_3 then
        L6_3 = IsDisabledControlPressed
        L7_3 = 0
        L8_3 = 38
        L6_3 = L6_3(L7_3, L8_3)
      end
      if L5_3 or L6_3 then
        L4_3 = 16
      end
      L7_3 = Wait
      L8_3 = L4_3
      L7_3(L8_3)
    end
  end
  L16_2(L17_2)
  L16_2 = CreateThread
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = flyActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = FlyingAnimation
      L0_3 = L0_3()
      if not L0_3 then
        L0_3 = startChecking
        if L0_3 then
          L0_3 = EndFly
          L0_3()
          return
        end
      end
      L0_3 = IsPedFatallyInjured
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = IsPedRagdoll
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = IsControlJustPressed
          L1_3 = 0
          L2_3 = 73
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlJustPressed
            L1_3 = 0
            L2_3 = 23
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              goto lbl_42
            end
          end
        end
      end
      L0_3 = EndFly
      L0_3()
      do return end
      ::lbl_42::
      L0_3 = DisableFirstPersonCamThisFrame
      L0_3()
      L0_3 = drawInfo
      L1_3 = 44
      L2_3 = ""
      L3_3 = 38
      L4_3 = ""
      L5_3 = 21
      L6_3 = ""
      L7_3 = 73
      L8_3 = ""
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L0_3 = lockfly
      if L0_3 then
        L0_3 = EndFly
        L0_3()
        return
      end
      L0_3 = GetGameplayCamRot
      L1_3 = 2
      L0_3 = L0_3(L1_3)
      L1_3 = GetGameplayCamRot
      L2_3 = 2
      L1_3 = L1_3(L2_3)
      L2_3 = distanzaTerreno
      if L2_3 > 1.0 then
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
            L4_3 = 33
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = 34
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = 35
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = SetEntityRotation
                  L3_3 = L0_2
                  L4_3 = L1_3.x
                  L5_3 = L1_3.y
                  L6_3 = L1_3.z
                  L7_3 = 2
                  L8_3 = true
                  L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
                  L2_3 = ClampGameplayCamYaw
                  L3_3 = 0.0
                  L3_3 = -L3_3
                  L4_3 = 0.0
                  L2_3(L3_3, L4_3)
              end
            end
            else
              L2_3 = SetEntityRotation
              L3_3 = L0_2
              L4_3 = L1_3.x
              L5_3 = L1_3.y
              L6_3 = L1_3.z
              L7_3 = 2
              L8_3 = true
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            end
          end
        end
      else
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 33
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 34
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 35
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = SetEntityHeading
              L3_3 = L0_2
              L4_3 = GetGameplayCamRot
              L5_3 = 0
              L4_3 = L4_3(L5_3)
              L4_3 = L4_3.z
              L2_3(L3_3, L4_3)
              L2_3 = ClampGameplayCamYaw
              L3_3 = 0.0
              L3_3 = -L3_3
              L4_3 = 0.0
              L2_3(L3_3, L4_3)
          end
        end
        else
          L2_3 = SetEntityHeading
          L3_3 = L0_2
          L4_3 = GetGameplayCamRot
          L5_3 = 0
          L4_3 = L4_3(L5_3)
          L4_3 = L4_3.z
          L2_3(L3_3, L4_3)
        end
      end
      L2_3 = IsControlPressed
      L3_3 = 0
      L4_3 = 21
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        L2_3 = speed
        L3_3 = maxSpeedVar
        L3_3 = L3_3 / 2
        if L2_3 ~= L3_3 then
          L2_3 = maxSpeedVar
          L2_3 = L2_3 / 2
          speed = L2_3
        end
      else
        L2_3 = speed
        L3_3 = maxSpeedVar
        L3_3 = L3_3 / 4
        if L2_3 ~= L3_3 then
          L2_3 = maxSpeedVar
          L2_3 = L2_3 / 4
          speed = L2_3
        end
      end
      L2_3 = keyMovementPressed
      L2_3 = L2_3()
      if L2_3 then
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 32
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = GetEntityCoords
          L3_3 = L0_2
          L2_3 = L2_3(L3_3)
          L3_3 = GetEntityRotation
          L4_3 = L0_2
          L5_3 = 2
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = Get3DForwardVectorFromRotation
          L5_3 = L3_3
          L4_3 = L4_3(L5_3)
          L5_3 = speed
          L5_3 = L4_3 * L5_3
          L5_3 = L2_3 + L5_3
          L6_3 = L5_3.x
          L7_3 = L5_3.y
          L8_3 = L5_3.z
          L9_3 = vector3
          L10_3 = L6_3
          L11_3 = L7_3
          L12_3 = L8_3
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          directionFly = L9_3
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 33
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = GetEntityCoords
          L3_3 = L0_2
          L2_3 = L2_3(L3_3)
          L3_3 = GetEntityRotation
          L4_3 = L0_2
          L5_3 = 2
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = Get3DForwardVectorFromRotation
          L5_3 = L3_3
          L4_3 = L4_3(L5_3)
          L5_3 = speed
          L5_3 = L4_3 * L5_3
          L5_3 = L5_3 * -1
          L5_3 = L2_3 + L5_3
          L6_3 = L5_3.x
          L7_3 = L5_3.y
          L8_3 = L5_3.z
          L9_3 = vector3
          L10_3 = L6_3
          L11_3 = L7_3
          L12_3 = L8_3
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          directionFly = L9_3
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 34
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = GetEntityCoords
          L3_3 = L0_2
          L2_3 = L2_3(L3_3)
          L3_3 = getEntityRightVector
          L4_3 = L0_2
          L3_3 = L3_3(L4_3)
          L4_3 = L2_3.x
          L5_3 = L3_3.x
          L6_3 = speed
          L5_3 = L5_3 * L6_3
          L4_3 = L4_3 + L5_3
          L5_3 = L2_3.y
          L6_3 = L3_3.y
          L7_3 = speed
          L6_3 = L6_3 * L7_3
          L5_3 = L5_3 + L6_3
          L6_3 = vector3
          L7_3 = L4_3
          L8_3 = L5_3
          L9_3 = directionFly
          L9_3 = L9_3.z
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          directionFly = L6_3
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 35
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = GetEntityCoords
          L3_3 = L0_2
          L2_3 = L2_3(L3_3)
          L3_3 = getEntityRightVector
          L4_3 = L0_2
          L3_3 = L3_3(L4_3)
          L4_3 = L2_3.x
          L5_3 = L3_3.x
          L6_3 = speed
          L5_3 = L5_3 * L6_3
          L5_3 = L5_3 * -1
          L4_3 = L4_3 + L5_3
          L5_3 = L2_3.y
          L6_3 = L3_3.y
          L7_3 = speed
          L6_3 = L6_3 * L7_3
          L6_3 = L6_3 * -1
          L5_3 = L5_3 + L6_3
          L6_3 = vector3
          L7_3 = L4_3
          L8_3 = L5_3
          L9_3 = directionFly
          L9_3 = L9_3.z
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          directionFly = L6_3
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 32
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 34
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 35
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = GetEntityCoords
              L3_3 = L0_2
              L2_3 = L2_3(L3_3)
              L3_3 = GetEntityForwardVector
              L4_3 = L0_2
              L3_3 = L3_3(L4_3)
              L4_3 = getEntityRightVector
              L5_3 = L0_2
              L4_3 = L4_3(L5_3)
              L5_3 = L3_3 + L4_3
              L6_3 = speed
              L5_3 = L5_3 * L6_3
              L6_3 = vector3
              L7_3 = L2_3.x
              L8_3 = L5_3.x
              L7_3 = L7_3 + L8_3
              L8_3 = L2_3.y
              L9_3 = L5_3.y
              L8_3 = L8_3 + L9_3
              L9_3 = directionFly
              L9_3 = L9_3.z
              L6_3 = L6_3(L7_3, L8_3, L9_3)
              directionFly = L6_3
              L6_3 = playFlyAnim
              L7_3 = 4
              L6_3(L7_3)
            end
          end
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 32
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 35
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 34
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = GetEntityCoords
              L3_3 = L0_2
              L2_3 = L2_3(L3_3)
              L3_3 = GetEntityForwardVector
              L4_3 = L0_2
              L3_3 = L3_3(L4_3)
              L4_3 = getEntityRightVector
              L5_3 = L0_2
              L4_3 = L4_3(L5_3)
              L5_3 = -L4_3
              L5_3 = L3_3 + L5_3
              L6_3 = speed
              L5_3 = L5_3 * L6_3
              L6_3 = vector3
              L7_3 = L2_3.x
              L8_3 = L5_3.x
              L7_3 = L7_3 + L8_3
              L8_3 = L2_3.y
              L9_3 = L5_3.y
              L8_3 = L8_3 + L9_3
              L9_3 = directionFly
              L9_3 = L9_3.z
              L6_3 = L6_3(L7_3, L8_3, L9_3)
              directionFly = L6_3
              L6_3 = playFlyAnim
              L7_3 = 3
              L6_3(L7_3)
            end
          end
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 33
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 34
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 35
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = GetEntityCoords
              L3_3 = L0_2
              L2_3 = L2_3(L3_3)
              L3_3 = GetEntityForwardVector
              L4_3 = L0_2
              L3_3 = L3_3(L4_3)
              L4_3 = getEntityRightVector
              L5_3 = L0_2
              L4_3 = L4_3(L5_3)
              L5_3 = -L3_3
              L5_3 = L5_3 + L4_3
              L6_3 = speed
              L5_3 = L5_3 * L6_3
              L6_3 = vector3
              L7_3 = L2_3.x
              L8_3 = L5_3.x
              L7_3 = L7_3 + L8_3
              L8_3 = L2_3.y
              L9_3 = L5_3.y
              L8_3 = L8_3 + L9_3
              L9_3 = directionFly
              L9_3 = L9_3.z
              L6_3 = L6_3(L7_3, L8_3, L9_3)
              directionFly = L6_3
              L6_3 = playFlyAnim
              L7_3 = 4
              L6_3(L7_3)
            end
          end
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 33
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 35
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 34
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = GetEntityCoords
              L3_3 = L0_2
              L2_3 = L2_3(L3_3)
              L3_3 = GetEntityForwardVector
              L4_3 = L0_2
              L3_3 = L3_3(L4_3)
              L4_3 = getEntityRightVector
              L5_3 = L0_2
              L4_3 = L4_3(L5_3)
              L5_3 = -L3_3
              L6_3 = -L4_3
              L5_3 = L5_3 + L6_3
              L6_3 = speed
              L5_3 = L5_3 * L6_3
              L6_3 = vector3
              L7_3 = L2_3.x
              L8_3 = L5_3.x
              L7_3 = L7_3 + L8_3
              L8_3 = L2_3.y
              L9_3 = L5_3.y
              L8_3 = L8_3 + L9_3
              L9_3 = directionFly
              L9_3 = L9_3.z
              L6_3 = L6_3(L7_3, L8_3, L9_3)
              directionFly = L6_3
              L6_3 = playFlyAnim
              L7_3 = 3
              L6_3(L7_3)
            end
          end
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 44
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = distanzaSopra
          L3_3 = 0.9
          if L2_3 > L3_3 then
            L2_3 = GetEntityCoords
            L3_3 = L0_2
            L2_3 = L2_3(L3_3)
            L3_3 = L2_3.z
            L4_3 = speed
            L3_3 = L3_3 + L4_3
            L4_3 = vector3
            L5_3 = directionFly
            L5_3 = L5_3.x
            L6_3 = directionFly
            L6_3 = L6_3.y
            L7_3 = L3_3
            L4_3 = L4_3(L5_3, L6_3, L7_3)
            directionFly = L4_3
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 34
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsControlPressed
              L5_3 = 0
              L6_3 = 35
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsControlPressed
                L5_3 = 0
                L6_3 = 38
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = playFlyAnim
                  L5_3 = 6
                  L4_3(L5_3)
                end
              end
            end
          end
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 38
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = distanzaTerreno
          L3_3 = 1.5
          if L2_3 > L3_3 then
            L2_3 = GetEntityCoords
            L3_3 = L0_2
            L2_3 = L2_3(L3_3)
            L3_3 = L2_3.z
            L4_3 = speed
            L3_3 = L3_3 - L4_3
            L4_3 = vector3
            L5_3 = directionFly
            L5_3 = L5_3.x
            L6_3 = directionFly
            L6_3 = L6_3.y
            L7_3 = L3_3
            L4_3 = L4_3(L5_3, L6_3, L7_3)
            directionFly = L4_3
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 34
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsControlPressed
              L5_3 = 0
              L6_3 = 35
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsControlPressed
                L5_3 = 0
                L6_3 = 44
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = playFlyAnim
                  L5_3 = 7
                  L4_3(L5_3)
                end
              end
            end
          end
        end
        L2_3 = distanzaTerreno
        L3_3 = 1.9
        if L2_3 <= L3_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 44
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = GetEntityCoords
            L3_3 = L0_2
            L2_3 = L2_3(L3_3)
            L3_3 = L2_3.z
            L3_3 = L3_3 + 0.0015
            L4_3 = vector3
            L5_3 = directionFly
            L5_3 = L5_3.x
            L6_3 = directionFly
            L6_3 = L6_3.y
            L7_3 = L3_3
            L4_3 = L4_3(L5_3, L6_3, L7_3)
            directionFly = L4_3
          end
        end
        L2_3 = SetEntityCoordsNoOffset
        L3_3 = L0_2
        L4_3 = directionFly
        L5_3 = true
        L6_3 = false
        L7_3 = false
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      else
        L2_3 = SetEntityVelocity
        L3_3 = L0_2
        L4_3 = 0
        L5_3 = 0
        L6_3 = 0
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
    end
  end
  L16_2(L17_2)
  L16_2 = Wait
  L17_2 = 250
  L16_2(L17_2)
  startChecking = true
end
LoopStrianoFly = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  flyActive = false
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedRagdoll
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = ClearPedTasks
      L2_2 = L0_2
      L1_2(L2_2)
      L1_2 = ClearPedSecondaryTask
      L2_2 = L0_2
      L1_2(L2_2)
      L1_2 = GetEntityCoords
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = SetEntityCoords
      L3_2 = L0_2
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = ClearRagdollBlockingFlags
      L3_2 = L0_2
      L4_2 = 26
      L2_2(L3_2, L4_2)
      L2_2 = ResetPedRagdollTimer
      L3_2 = L0_2
      L2_2(L3_2)
    end
  end
  L1_2 = SetPlayerFallDistance
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = 8.0
  L1_2(L2_2, L3_2)
  startChecking = false
  L1_2 = maxSpeedVar
  L1_2 = L1_2 / 4
  speed = L1_2
  distanzaTerreno = 0
  distanzaFronte = 0
  distanzaSopra = 0
  L1_2 = fxFly
  if L1_2 then
    L1_2 = StopParticleFxLooped
    L2_2 = fxFly
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = RemoveParticleFx
    L2_2 = fxFly
    L3_2 = true
    L1_2(L2_2, L3_2)
    fxFly = nil
  end
  L1_2 = IsEntityPositionFrozen
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsEntityAttached
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = faiAnim
      L2_2 = "laddersbase"
      L3_2 = "get_off_bottom_front_stand"
      L4_2 = 900
      L5_2 = 49
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
  L1_2 = RemoveAnimDict
  L2_2 = "laddersbase"
  L1_2(L2_2)
  L1_2 = RemoveAnimDict
  L2_2 = "skydive@parachute@"
  L1_2(L2_2)
  L1_2 = RemoveAnimDict
  L2_2 = "fly@r9@one"
  L1_2(L2_2)
  L1_2 = RemoveAnimDict
  L2_2 = "skydive@freefall"
  L1_2(L2_2)
  L1_2 = RemoveAnimDict
  L2_2 = "missexile3"
  L1_2(L2_2)
  L1_2 = RemoveAnimDict
  L2_2 = "rcmextreme4"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "flyman:stop"
  L1_2(L2_2)
end
EndFly = L3_1
L3_1 = RegisterNetEvent
L4_1 = "flyman:pos"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "flyman:pos"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L8_2 = L1_1
  L8_2 = L8_2[A0_2]
  if not L8_2 then
    L9_2 = {}
    L10_2 = {}
    L9_2.list = L10_2
    L8_2 = L9_2
    L9_2 = L1_1
    L9_2[A0_2] = L8_2
  end
  L9_2 = L8_2.list
  L10_2 = {}
  L10_2.t = L7_2
  L10_2.x = A1_2
  L10_2.y = A2_2
  L10_2.z = A3_2
  L11_2 = A4_2 or L11_2
  if not A4_2 then
    L11_2 = 0.0
  end
  L10_2.rx = L11_2
  L11_2 = A5_2 or L11_2
  if not A5_2 then
    L11_2 = 0.0
  end
  L10_2.ry = L11_2
  L11_2 = A6_2 or L11_2
  if not A6_2 then
    L11_2 = 0.0
  end
  L10_2.rz = L11_2
  L11_2 = #L9_2
  L11_2 = L11_2 + 1
  L9_2[L11_2] = L10_2
  L11_2 = L7_2 - 1000
  while true do
    L12_2 = #L9_2
    if not (L12_2 > 2) then
      break
    end
    L12_2 = L9_2[1]
    L12_2 = L12_2.t
    if not (L11_2 > L12_2) then
      break
    end
    L12_2 = table
    L12_2 = L12_2.remove
    L13_2 = L9_2
    L14_2 = 1
    L12_2(L13_2, L14_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "flyman:stop"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "flyman:stop"
function L5_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
  L1_2 = L1_1
  L1_2[A0_2] = nil
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "onClientResourceStop"
function L5_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_1 = L0_2
end
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = HasAnimDictLoaded
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestAnimDict
    L6_2 = A1_2
    L5_2(L6_2)
    while true do
      L5_2 = HasAnimDictLoaded
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 10
      L5_2(L6_2)
    end
  end
  L5_2 = TaskPlayAnim
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 8.0
  L10_2 = -8.0
  L11_2 = -1
  L12_2 = A3_2
  L13_2 = 0.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = GetAnimDuration
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = 0.0
  end
  if L5_2 > 0.0 then
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L7_2 = L6_2 - A4_2
    L7_2 = L7_2 / 1000.0
    L8_2 = L7_2 % L5_2
    L8_2 = L8_2 / L5_2
    L9_2 = SetEntityAnimCurrentTime
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
end
playSyncedAnimForPed = L3_1
L3_1 = RegisterNetEvent
L4_1 = "flyman:anim:play"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "flyman:anim:play"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if A0_2 == L5_2 then
    return
  end
  L5_2 = GetPlayerFromServerId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if -1 ~= L5_2 then
    L6_2 = GetPlayerPed
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = playSyncedAnimForPed
      L8_2 = L6_2
      L9_2 = A1_2
      L10_2 = A2_2
      L11_2 = A3_2
      L12_2 = A4_2
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L3_1(L4_1, L5_1)
