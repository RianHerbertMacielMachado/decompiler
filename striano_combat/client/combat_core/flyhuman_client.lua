local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Wait
  L1_2 = 5000
  L0_2(L1_2)
  L0_2 = SetPedConfigFlag
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 438
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetPedConfigFlag
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 35
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = 1000
  while true do
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = IsPedOnAnyBike
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L0_2 = 100
      L2_2 = SetPedHelmet
      L3_2 = L1_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = RemovePedHelmet
      L3_2 = L1_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = SetPedHelmet
      L3_2 = PlayerId
      L3_2 = L3_2()
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = RemovePedHelmet
      L3_2 = PlayerId
      L3_2 = L3_2()
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L0_2 = 1000
    end
    L2_2 = Wait
    L3_2 = L0_2
    L2_2(L3_2)
  end
end
L0_1(L1_1)
a_land = "laddersbase"
b_land = "get_off_bottom_front_stand"
f_land = 49
a_base = "fly@r9@one"
b_base = "idle"
a_upside = "dbzflight@silkteam"
b_upside = "boost"
c_upside = true
a_left = "dbzflight@silkteam"
b_left = "left"
a_right = "dbzflight@silkteam"
b_right = "right"
a_forward = "dbzflight@silkteam"
b_forward = "forward"
L0_1 = exports
L1_1 = "updateFlyFXAnim"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2, A14_2, A15_2, A16_2, A17_2, A18_2, A19_2)
  local L20_2
  if nil ~= A0_2 then
    IDHandEffect = A0_2
  end
  L20_2 = a_land
  if nil ~= L20_2 then
    L20_2 = b_land
    if nil ~= L20_2 then
      a_land = A1_2
      b_land = A2_2
    end
  end
  L20_2 = f_land
  if nil ~= L20_2 then
    f_land = A13_2
  end
  L20_2 = a_base
  if nil ~= L20_2 then
    L20_2 = b_base
    if nil ~= L20_2 then
      a_base = A3_2
      b_base = A4_2
    end
  end
  L20_2 = a_upside
  if nil ~= L20_2 then
    L20_2 = b_upside
    if nil ~= L20_2 then
      a_upside = A5_2
      b_upside = A6_2
    end
  end
  L20_2 = a_right
  if nil ~= L20_2 then
    L20_2 = b_right
    if nil ~= L20_2 then
      a_right = A7_2
      b_right = A8_2
    end
  end
  L20_2 = a_left
  if nil ~= L20_2 then
    L20_2 = b_left
    if nil ~= L20_2 then
      a_left = A9_2
      b_left = A10_2
    end
  end
  L20_2 = a_forward
  if nil ~= L20_2 then
    L20_2 = b_forward
    if nil ~= L20_2 then
      a_forward = A11_2
      b_forward = A12_2
    end
  end
  if nil ~= A14_2 then
    partDictFx1 = A14_2
  end
  if nil ~= A15_2 then
    partDictFx2 = A15_2
  end
  if nil ~= A16_2 then
    posFx = A16_2
  end
  if nil ~= A17_2 then
    rotFx = A17_2
  end
  if nil ~= A18_2 then
    sizeFx = A18_2
  end
  if nil ~= A14_2 then
    fxAlpha = A19_2
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
      L4_2 = "NOT EXIST (time out)"
      L3_2(L4_2)
      return
    end
  end
end
RequestModelStriano = L0_1
L0_1 = 0.0
VeicoloBase = nil
MiaCopia = nil
L1_1 = nil
L2_1 = nil
L3_1 = {}
L4_1 = false
L5_1 = true
L6_1 = 0
L7_1 = 500
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = SetPedHeadBlendData
  L3_2 = A1_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L6_2 <= 19 then
      L8_2 = SetPedFaceFeature
      L9_2 = A1_2
      L10_2 = L6_2
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    elseif 20 == L6_2 then
      L8_2 = SetPedHairColor
      L9_2 = A1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    else
      L8_2 = SetPedHeadBlendData
      L9_2 = A1_2
      L10_2 = A0_2[L6_2]
      L10_2 = L10_2[1]
      L11_2 = A0_2[L6_2]
      L11_2 = L11_2[2]
      L12_2 = A0_2[L6_2]
      L12_2 = L12_2[3]
      L13_2 = A0_2[L6_2]
      L13_2 = L13_2[4]
      L14_2 = A0_2[L6_2]
      L14_2 = L14_2[5]
      L15_2 = A0_2[L6_2]
      L15_2 = L15_2[6]
      L16_2 = A0_2[L6_2]
      L16_2 = L16_2[7]
      L17_2 = A0_2[L6_2]
      L17_2 = L17_2[8]
      L18_2 = A0_2[L6_2]
      L18_2 = L18_2[9]
      L19_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    end
  end
end
setSkinStriano = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Citizen
  L1_2 = L1_2.InvokeNative
  L2_2 = 2830157900151113168
  L3_2 = A0_2
  L4_2 = Citizen
  L4_2 = L4_2.PointerValueIntInitialized
  L5_2 = 0
  L4_2 = L4_2(L5_2)
  L5_2 = Citizen
  L5_2 = L5_2.PointerValueIntInitialized
  L6_2 = 0
  L5_2 = L5_2(L6_2)
  L6_2 = Citizen
  L6_2 = L6_2.PointerValueIntInitialized
  L7_2 = 0
  L6_2 = L6_2(L7_2)
  L7_2 = Citizen
  L7_2 = L7_2.PointerValueIntInitialized
  L8_2 = 0
  L7_2 = L7_2(L8_2)
  L8_2 = Citizen
  L8_2 = L8_2.PointerValueIntInitialized
  L9_2 = 0
  L8_2 = L8_2(L9_2)
  L9_2 = Citizen
  L9_2 = L9_2.PointerValueIntInitialized
  L10_2 = 0
  L9_2 = L9_2(L10_2)
  L10_2 = Citizen
  L10_2 = L10_2.PointerValueFloatInitialized
  L11_2 = 0
  L10_2 = L10_2(L11_2)
  L11_2 = Citizen
  L11_2 = L11_2.PointerValueFloatInitialized
  L12_2 = 0
  L11_2 = L11_2(L12_2)
  L12_2 = Citizen
  L12_2 = L12_2.PointerValueFloatInitialized
  L13_2 = 0
  L12_2, L13_2 = L12_2(L13_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
GetHeadBlendData = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = 21
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    if L5_2 <= 19 then
      L6_2 = GetPedFaceFeature
      L7_2 = L1_2
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L0_2[L5_2] = L6_2
    elseif 20 == L5_2 then
      L6_2 = GetPedHairColor
      L7_2 = L1_2
      L6_2 = L6_2(L7_2)
      L0_2[L5_2] = L6_2
    else
      L6_2 = {}
      L7_2 = GetHeadBlendData
      L8_2 = L1_2
      L7_2, L8_2 = L7_2(L8_2)
      L6_2[1] = L7_2
      L6_2[2] = L8_2
      L0_2[L5_2] = L6_2
    end
  end
  return L0_2
end
GetMySkin = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = handeffect
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = handeffect
    L1_2 = L1_2[A0_2]
    if nil ~= L1_2 then
      L2_2 = _ENV
      L3_2 = "StartNetworkedParticleFxNonLoopedOnPedBone"
      L2_2 = L2_2[L3_2]
      L3_2 = RequestNamedPtfxAsset
      L4_2 = L1_2.a
      L3_2(L4_2)
      while true do
        L3_2 = HasNamedPtfxAssetLoaded
        L4_2 = L1_2.a
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = Wait
        L4_2 = 0
        L3_2(L4_2)
      end
      L3_2 = L1_2.FxSpeedWait
      if nil == L3_2 then
        L1_2.FxSpeedWait = 150
      end
      L3_2 = L1_2.FxSpeedWait
      L4_2 = 150
      if L3_2 > L4_2 then
        L1_2.FxSpeedWait = 150
      end
      L3_2 = L1_2.FxSpeedWait
      if L3_2 < 0 then
        L1_2.FxSpeedWait = 0
      end
      L3_2 = CreateThread
      function L4_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        while true do
          L0_3 = Wait
          L1_3 = L1_2.FxSpeedWait
          L0_3(L1_3)
          L1_3 = A0_2
          L0_3 = L3_1
          L0_3 = L0_3[L1_3]
          if true == L0_3 then
            L1_3 = A0_2
            L0_3 = L3_1
            L0_3[L1_3] = nil
            return
          end
          L0_3 = MiaCopia
          if nil ~= L0_3 then
            L0_3 = DoesEntityExist
            L1_3 = MiaCopia
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = IsEntityVisible
              L1_3 = MiaCopia
              L0_3 = L0_3(L1_3)
              if L0_3 then
                L0_3 = L1_2
                if L0_3 then
                  L0_3 = L1_2.trail
                  if L0_3 then
                    function L0_3(A0_4, A1_4, A2_4, A3_4)
                      local L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
                      L4_4 = SetPtfxAssetNextCall
                      L5_4 = L1_2.a
                      L4_4(L5_4)
                      L4_4 = L1_2.color
                      if nil ~= L4_4 then
                        L4_4 = SetParticleFxNonLoopedColour
                        L5_4 = L1_2.color
                        L5_4 = L5_4.x
                        if not L5_4 then
                          L5_4 = 255
                        end
                        L5_4 = L5_4 / 255.0
                        L6_4 = L1_2.color
                        L6_4 = L6_4.y
                        if not L6_4 then
                          L6_4 = 255
                        end
                        L6_4 = L6_4 / 255.0
                        L7_4 = L1_2.color
                        L7_4 = L7_4.z
                        if not L7_4 then
                          L7_4 = 255
                        end
                        L7_4 = L7_4 / 255.0
                        L4_4(L5_4, L6_4, L7_4)
                      end
                      L4_4 = L1_2.alpha
                      if nil ~= L4_4 then
                        L4_4 = SetParticleFxNonLoopedAlpha
                        L5_4 = L1_2.alpha
                        L4_4(L5_4)
                      end
                      L4_4 = L2_2
                      L5_4 = L1_2.b
                      L6_4 = MiaCopia
                      L7_4 = A1_4 or L7_4
                      if not A1_4 then
                        L7_4 = 0.0
                      end
                      L8_4 = A2_4 or L8_4
                      if not A2_4 then
                        L8_4 = 0.0
                      end
                      L9_4 = A3_4 or L9_4
                      if not A3_4 then
                        L9_4 = 0.0
                      end
                      L10_4 = L1_2.rot
                      if not L10_4 then
                        L10_4 = vector3
                        L11_4 = 0.0
                        L12_4 = 0.0
                        L13_4 = 0.0
                        L10_4 = L10_4(L11_4, L12_4, L13_4)
                      end
                      L11_4 = A0_4
                      L12_4 = L1_2.size
                      if not L12_4 then
                        L12_4 = 0.2
                      end
                      L13_4 = false
                      L14_4 = false
                      L15_4 = false
                      L4_4(L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4)
                    end
                    L1_3 = L0_3
                    L2_3 = 18905
                    L3_3 = 0.1
                    L4_3 = 0.0
                    L5_3 = 0.0
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                    L1_3 = L0_3
                    L2_3 = 57005
                    L3_3 = 0.1
                    L4_3 = 0.0
                    L5_3 = 0.0
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                    L1_3 = L0_3
                    L2_3 = 14201
                    L3_3 = 0.0
                    L4_3 = 0.0
                    L5_3 = 0.0
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                    L1_3 = L0_3
                    L2_3 = 52301
                    L3_3 = 0.0
                    L4_3 = 0.0
                    L5_3 = 0.0
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                end
              end
            end
          end
          else
            L1_3 = A0_2
            L0_3 = L3_1
            L0_3[L1_3] = nil
            return
          end
        end
      end
      L3_2(L4_2)
    end
  end
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = IsPedHuman
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  if not L0_2 then
    return
  end
  L0_2 = speedToStartAnim
  if nil ~= L0_2 then
    L0_2 = IDHandEffect
    if nil ~= L0_2 then
      L0_2 = SoundWhenMoveAir
      if nil ~= L0_2 then
        L0_2 = AirAlpha
        if nil ~= L0_2 then
          goto lbl_24
        end
      end
    end
  end
  L0_2 = print
  L1_2 = "Error in some variable of editable_flyhuman.lua! Redownload again, you change something wrong and it's broken!"
  L0_2(L1_2)
  do return end
  ::lbl_24::
  L0_2 = VeicoloBase
  if nil == L0_2 then
    L0_2 = L5_1
    if L0_2 then
      L0_2 = MiaCopia
      if nil ~= L0_2 then
        goto lbl_354
      end
      L0_2 = canDoSuperFly
      L0_2 = L0_2()
      if not L0_2 then
        goto lbl_354
      end
      L0_2 = IsPedRagdoll
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L1_2()
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      if not L0_2 then
        L0_2 = IsPedFalling
        L1_2 = PlayerPedId
        L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L1_2()
        L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        if not L0_2 then
          goto lbl_72
        end
      end
      L0_2 = GetEntityCoords
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L1_2()
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L1_2 = SetEntityCoords
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = L0_2
      L1_2(L2_2, L3_2)
      L1_2 = FreezeEntityPosition
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = ClearRagdollBlockingFlags
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = 26
      L1_2(L2_2, L3_2)
      L1_2 = ResetPedRagdollTimer
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L2_2()
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      ::lbl_72::
      L0_2 = GetEntityCoords
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L1_2()
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L1_2 = GetEntityHeading
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L2_2 = 0
      L3_2 = RequestModelStriano
      L4_2 = GetHashKey
      L5_2 = "invisible"
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L3_2 = CreateVehicle
      L4_2 = GetHashKey
      L5_2 = "invisible"
      L4_2 = L4_2(L5_2)
      L5_2 = vector3
      L6_2 = L0_2.x
      L7_2 = L0_2.y
      L8_2 = L0_2.z
      L8_2 = L8_2 + 2.0
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = L1_2
      L7_2 = true
      L8_2 = true
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      VeicoloBase = L3_2
      L3_2 = 0
      while true do
        L4_2 = DoesEntityExist
        L5_2 = VeicoloBase
        L4_2 = L4_2(L5_2)
        if not (not L4_2 and L3_2 < 100) then
          break
        end
        L4_2 = Wait
        L5_2 = 0
        L4_2(L5_2)
        L3_2 = L3_2 + 1
      end
      if L3_2 < 100 then
        L4_2 = SetVehicleUndriveable
        L5_2 = VeicoloBase
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = _ENV
        L5_2 = "SetDisableExplodeFromBodyDamageOnCollision"
        L4_2 = L4_2[L5_2]
        L5_2 = VeicoloBase
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = SetVehicleExplodesOnHighExplosionDamage
        L5_2 = VeicoloBase
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = SetModelAsNoLongerNeeded
        L5_2 = GetHashKey
        L6_2 = "invisible"
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L5_2(L6_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L4_2 = SetVehicleUndriveable
        L5_2 = VeicoloBase
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = SetVehicleEngineOn
        L5_2 = VeicoloBase
        L6_2 = true
        L7_2 = true
        L8_2 = false
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = SetVehicleJetEngineOn
        L5_2 = VeicoloBase
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = SetEntityVisible
        L5_2 = VeicoloBase
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = TaskWarpPedIntoVehicle
        L5_2 = PlayerPedId
        L5_2 = L5_2()
        L6_2 = VeicoloBase
        L7_2 = -1
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = SetVehicleNeedsToBeHotwired
        L5_2 = VeicoloBase
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = SetVehRadioStation
        L5_2 = VeicoloBase
        L6_2 = "OFF"
        L4_2(L5_2, L6_2)
        L4_2 = RequestCollisionAtCoord
        L5_2 = L0_2
        L4_2(L5_2)
        L4_2 = SetEntityVisible
        L5_2 = PlayerPedId
        L5_2 = L5_2()
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = ClonePed
        L5_2 = PlayerPedId
        L5_2 = L5_2()
        L6_2 = true
        L7_2 = true
        L8_2 = true
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        MiaCopia = L4_2
        L4_2 = SetEntityProofs
        L5_2 = MiaCopia
        L6_2 = true
        L7_2 = true
        L8_2 = true
        L9_2 = true
        L10_2 = true
        L11_2 = true
        L12_2 = true
        L13_2 = true
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L4_2 = FreezeEntityPosition
        L5_2 = MiaCopia
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = SetBlockingOfNonTemporaryEvents
        L5_2 = MiaCopia
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = SetEntityCollision
        L5_2 = MiaCopia
        L6_2 = false
        L7_2 = false
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = SetEntityNoCollisionEntity
        L5_2 = MiaCopia
        L6_2 = VeicoloBase
        L7_2 = false
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = SetEntityNoCollisionEntity
        L5_2 = MiaCopia
        L6_2 = PlayerPedId
        L6_2 = L6_2()
        L7_2 = false
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = 0
        while true do
          L5_2 = DoesEntityExist
          L6_2 = MiaCopia
          L5_2 = L5_2(L6_2)
          if not (not L5_2 and L4_2 < 100) then
            break
          end
          L4_2 = L4_2 + 1
          L5_2 = Wait
          L6_2 = 0
          L5_2(L6_2)
        end
        L4_2 = 0
        while true do
          L5_2 = PedToNet
          L6_2 = MiaCopia
          L5_2 = L5_2(L6_2)
          if 0 ~= L5_2 then
            L5_2 = PedToNet
            L6_2 = MiaCopia
            L5_2 = L5_2(L6_2)
            if not (nil == L5_2 and L4_2 < 100) then
              break
            end
          end
          L4_2 = L4_2 + 1
          L5_2 = Wait
          L6_2 = 0
          L5_2(L6_2)
        end
        L5_2 = GetGameTimer
        L5_2 = L5_2()
        L6_1 = L5_2
        L5_2 = GetMySkin
        L5_2 = L5_2()
        L6_2 = TriggerServerEvent
        L7_2 = "SuperManSetup"
        L8_2 = PedToNet
        L9_2 = MiaCopia
        L8_2 = L8_2(L9_2)
        L9_2 = GetPlayerServerId
        L10_2 = PlayerId
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2()
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L10_2 = L5_2
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = TriggerServerEvent
        L7_2 = "AddPedSyncSM"
        L8_2 = PedToNet
        L9_2 = MiaCopia
        L8_2 = L8_2(L9_2)
        L9_2 = GetPlayerServerId
        L10_2 = PlayerId
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2()
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L6_2 = HasAnimDictLoaded
        L7_2 = a_base
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = RequestAnimDict
          L7_2 = a_base
          L6_2(L7_2)
          while true do
            L6_2 = HasAnimDictLoaded
            L7_2 = a_base
            L6_2 = L6_2(L7_2)
            if L6_2 then
              break
            end
            L6_2 = Wait
            L7_2 = 10
            L6_2(L7_2)
          end
        end
        L6_2 = TaskPlayAnim
        L7_2 = MiaCopia
        L8_2 = a_base
        L9_2 = b_base
        L10_2 = 3.0
        L11_2 = 3.0
        L12_2 = 500000
        L13_2 = 1
        L14_2 = false
        L15_2 = false
        L16_2 = false
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L6_2 = AttachEntityToEntity
        L7_2 = MiaCopia
        L8_2 = VeicoloBase
        L9_2 = -1
        L10_2 = 0.0
        L11_2 = -0.3
        L12_2 = 0.4
        L13_2 = 5.0
        L14_2 = 0.0
        L15_2 = 0.0
        L16_2 = false
        L17_2 = true
        L18_2 = true
        L19_2 = true
        L20_2 = 1
        L21_2 = true
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L6_2 = Wait
        L7_2 = 0
        L6_2(L7_2)
        L6_2 = FreezeEntityPosition
        L7_2 = PlayerPedId
        L7_2 = L7_2()
        L8_2 = false
        L6_2(L7_2, L8_2)
        L6_2 = WhenSupermanStart
        L7_2 = MiaCopia
        L6_2(L7_2)
        L6_2 = LoopFlyMode
        L6_2()
        ENABLED_HooverLoop = true
        L6_2 = Wait
        L7_2 = 25
        L6_2(L7_2)
        L6_2 = LoopHoover
        L6_2()
      else
        L4_2 = print
        L5_2 = "ERROR TO SPAWN THE FLY MODEL, PLEASE REPORT ON DISCORD!"
        L4_2(L5_2)
      end
  end
  else
    L0_2 = SetControlNormal
    L1_2 = 0
    L2_2 = 75
    L3_2 = 1.0
    L0_2(L1_2, L2_2, L3_2)
  end
  ::lbl_354::
end
StartSuperMan = L9_1
L9_1 = RegisterNetEvent
L10_1 = "SuperManSetup"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "SuperManSetup"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if A1_2 then
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if L3_2 ~= A1_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = SafeNetToPed
  L4_2 = A0_2
  L5_2 = 2000
  L3_2 = L3_2(L4_2, L5_2)
  if 0 == L3_2 then
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = GetEntityCoords
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 - L5_2
  L4_2 = #L4_2
  L5_2 = 300.0
  if L4_2 >= L5_2 then
    return
  end
  L4_2 = SetEntityCollision
  L5_2 = L3_2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = setSkinStriano
  L5_2 = A2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "SuperManAnimPed"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "SuperManAnimPed"
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if nil ~= A1_2 then
    L5_2 = IsInPowerSavingMode
    L5_2 = L5_2()
    if not L5_2 then
      L5_2 = IsPauseMenuActive
      L5_2 = L5_2()
      if not L5_2 then
        L5_2 = NetworkIsSessionStarted
        L5_2 = L5_2()
        if L5_2 then
          L5_2 = PlayerPedId
          L5_2 = L5_2()
          if nil ~= L5_2 then
            L5_2 = GetPlayerServerId
            L6_2 = PlayerId
            L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2()
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            if L5_2 ~= A1_2 then
              L5_2 = NetToPed
              L6_2 = A0_2
              L5_2 = L5_2(L6_2)
              L6_2 = 0
              while true do
                L7_2 = DoesEntityExist
                L8_2 = L5_2
                L7_2 = L7_2(L8_2)
                if not (not L7_2 and L6_2 < 100) then
                  break
                end
                L7_2 = NetToPed
                L8_2 = A0_2
                L7_2 = L7_2(L8_2)
                L5_2 = L7_2
                L6_2 = L6_2 + 1
                L7_2 = Wait
                L8_2 = 0
                L7_2(L8_2)
              end
              L7_2 = DoesEntityExist
              L8_2 = L5_2
              L7_2 = L7_2(L8_2)
              if L7_2 then
                L7_2 = GetEntityCoords
                L8_2 = PlayerPedId
                L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2()
                L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                L8_2 = GetEntityCoords
                L9_2 = L5_2
                L8_2 = L8_2(L9_2)
                L7_2 = L7_2 - L8_2
                L7_2 = #L7_2
                L8_2 = 150.0
                if L7_2 < L8_2 then
                  L7_2 = SetEntityCollision
                  L8_2 = L5_2
                  L9_2 = false
                  L10_2 = false
                  L7_2(L8_2, L9_2, L10_2)
                  L7_2 = setSkinStriano
                  L8_2 = A4_2
                  L9_2 = L5_2
                  L7_2(L8_2, L9_2)
                  L7_2 = HasAnimDictLoaded
                  L8_2 = A2_2
                  L7_2 = L7_2(L8_2)
                  if not L7_2 then
                    L7_2 = RequestAnimDict
                    L8_2 = A2_2
                    L7_2(L8_2)
                    while true do
                      L7_2 = HasAnimDictLoaded
                      L8_2 = A2_2
                      L7_2 = L7_2(L8_2)
                      if L7_2 then
                        break
                      end
                      L7_2 = Wait
                      L8_2 = 10
                      L7_2(L8_2)
                    end
                  end
                  L7_2 = IsEntityPlayingAnim
                  L8_2 = MiaCopia
                  L9_2 = A2_2
                  L10_2 = A3_2
                  L11_2 = 1
                  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
                  if not L7_2 then
                    L7_2 = TaskPlayAnim
                    L8_2 = L5_2
                    L9_2 = A2_2
                    L10_2 = A3_2
                    L11_2 = 3.0
                    L12_2 = 3.0
                    L13_2 = 500000
                    L14_2 = 1
                    L15_2 = false
                    L16_2 = false
                    L17_2 = false
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
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
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "stopSuperMan"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "stopSuperMan"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = VeicoloBase
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = VeicoloBase
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = L1_1
      if L0_2 then
        L0_2 = StopParticleFxLooped
        L1_2 = L1_1
        L2_2 = 0
        L0_2(L1_2, L2_2)
        L0_2 = nil
        L1_1 = L0_2
      end
      L0_2 = L2_1
      if L0_2 then
        L0_2 = StopParticleFxLooped
        L1_2 = L2_1
        L2_2 = 0
        L0_2(L1_2, L2_2)
        L0_2 = nil
        L2_1 = L0_2
      end
      L0_2 = 0
      while true do
        L1_2 = DoesEntityExist
        L2_2 = MiaCopia
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          break
        end
        L1_2 = NetworkHasControlOfEntity
        L2_2 = MiaCopia
        L1_2 = L1_2(L2_2)
        if not (not L1_2 and L0_2 < 100) then
          break
        end
        L1_2 = Wait
        L2_2 = 1
        L1_2(L2_2)
        L1_2 = NetworkRequestControlOfEntity
        L2_2 = MiaCopia
        L1_2(L2_2)
        L0_2 = L0_2 + 1
      end
      L1_2 = MiaCopia
      if L1_2 then
        L1_2 = TriggerServerEvent
        L2_2 = "DelPedSyncSM"
        L3_2 = PedToNet
        L4_2 = MiaCopia
        L3_2 = L3_2(L4_2)
        L4_2 = GetPlayerServerId
        L5_2 = PlayerId
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L1_2 = TriggerServerEvent
        L2_2 = "DelSupermanPed"
        L3_2 = PedToNet
        L4_2 = MiaCopia
        L3_2 = L3_2(L4_2)
        L4_2 = GetPlayerServerId
        L5_2 = PlayerId
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L1_2 = SetEntityAsMissionEntity
        L2_2 = MiaCopia
        L1_2(L2_2)
        L1_2 = DeletePed
        L2_2 = MiaCopia
        L1_2(L2_2)
        L1_2 = DoesEntityExist
        L2_2 = MiaCopia
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = DeleteEntity
          L2_2 = MiaCopia
          L1_2(L2_2)
        end
        MiaCopia = nil
      end
      L1_2 = VeicoloBase
      if L1_2 then
        L1_2 = DoesEntityExist
        L2_2 = VeicoloBase
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = SetEntityAsMissionEntity
          L2_2 = VeicoloBase
          L3_2 = true
          L1_2(L2_2, L3_2)
          L1_2 = DeleteVehicle
          L2_2 = VeicoloBase
          L1_2(L2_2)
          VeicoloBase = nil
      end
      else
        VeicoloBase = nil
      end
      L1_2 = SetEntityVisible
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityInvincible
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = false
      L1_2(L2_2, L3_2)
      L2_2 = IDHandEffect
      L1_2 = L3_1
      L1_2[L2_2] = true
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3, L2_3
        L0_3 = IDHandEffect
        L1_3 = Wait
        L2_3 = 160
        L1_3(L2_3)
        L1_3 = L3_1
        L1_3[L0_3] = nil
      end
      L1_2(L2_2)
      L1_2 = a_land
      L1_2 = #L1_2
      if L1_2 > 0 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = PlayerPedId
        L2_2 = L2_2()
        L3_2 = a_land
        L4_2 = b_land
        L5_2 = 1
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = HasAnimDictLoaded
          L2_2 = a_land
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = RequestAnimDict
            L2_2 = a_land
            L1_2(L2_2)
            while true do
              L1_2 = HasAnimDictLoaded
              L2_2 = a_land
              L1_2 = L1_2(L2_2)
              if L1_2 then
                break
              end
              L1_2 = Wait
              L2_2 = 10
              L1_2(L2_2)
            end
          end
          L1_2 = Wait
          L2_2 = 25
          L1_2(L2_2)
          L1_2 = TaskPlayAnim
          L2_2 = PlayerPedId
          L2_2 = L2_2()
          L3_2 = a_land
          L4_2 = b_land
          L5_2 = 3.0
          L6_2 = 3.0
          L7_2 = 750
          L8_2 = f_land
          L9_2 = false
          L10_2 = false
          L11_2 = false
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        end
      end
      L1_2 = WhenPlayerStopFly
      L1_2()
    end
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L3_1
  L2_2[A0_2] = true
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 160
    L0_3(L1_3)
    L1_3 = A0_2
    L0_3 = L3_1
    L0_3[L1_3] = nil
    L0_3 = A1_2
    IDHandEffect = L0_3
    L0_3 = L8_1
    L1_3 = IDHandEffect
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
OnChangeIdFX = L9_1
L9_1 = AddEventHandler
L10_1 = "onResourceStop"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L1_1
    if L1_2 then
      L1_2 = StopParticleFxLooped
      L2_2 = L1_1
      L3_2 = 0
      L1_2(L2_2, L3_2)
    end
    L1_2 = L2_1
    if L1_2 then
      L1_2 = StopParticleFxLooped
      L2_2 = L2_1
      L3_2 = 0
      L1_2(L2_2, L3_2)
    end
    L1_2 = MiaCopia
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = MiaCopia
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = MiaCopia
        L1_2(L2_2)
        L1_2 = DeletePed
        L2_2 = MiaCopia
        L1_2(L2_2)
        MiaCopia = nil
      end
    end
    L1_2 = VeicoloBase
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = VeicoloBase
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityVisible
        L2_2 = VeicoloBase
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = DeleteVehicle
        L2_2 = VeicoloBase
        L1_2(L2_2)
        VeicoloBase = nil
      end
    end
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if not A1_2 then
    A1_2 = 50.0
  end
  a_forward = "dbzflight@silkteam"
  b_forward = "boost"
  L3_2 = IsEntityPlayingAnim
  L4_2 = MiaCopia
  L5_2 = a_forward
  L6_2 = b_forward
  L7_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    L3_2 = GetEntityAnimCurrentTime
    L4_2 = MiaCopia
    L5_2 = a_forward
    L6_2 = b_forward
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = 0.45
    if L3_2 >= L4_2 then
      L4_2 = 0.5
      if L3_2 <= L4_2 then
        A1_2 = A1_2 * 4
        L4_2 = SetFollowPedCamViewMode
        L5_2 = 4
        L4_2(L5_2)
        L4_2 = SetFollowPedCamViewMode
        L5_2 = 2
        L4_2(L5_2)
        L4_2 = SetCamViewModeForContext
        L5_2 = GetCamActiveViewModeContext
        L5_2 = L5_2()
        L6_2 = 2
        L4_2(L5_2, L6_2)
        L4_2 = DisableControlAction
        L5_2 = 0
        L6_2 = 0
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = CreateThread
        function L5_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
          L0_3 = GetGameTimer
          L0_3 = L0_3()
          L0_3 = L0_3 + 9000
          L1_3 = Wait
          L2_3 = 900
          L1_3(L2_3)
          while true do
            L1_3 = GetGameTimer
            L1_3 = L1_3()
            if not (L0_3 > L1_3) then
              break
            end
            L1_3 = SetEntityAnimSpeed
            L2_3 = MiaCopia
            L3_3 = a_forward
            L4_3 = b_forward
            L5_3 = 0.0
            L1_3(L2_3, L3_3, L4_3, L5_3)
            L1_3 = Wait
            L2_3 = 0
            L1_3(L2_3)
            L1_3 = IsDisabledControlPressed
            L2_3 = 0
            L3_3 = 257
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              break
            end
          end
          L1_3 = SetEntityAnimSpeed
          L2_3 = MiaCopia
          L3_3 = a_forward
          L4_3 = b_forward
          L5_3 = 1.0
          L1_3(L2_3, L3_3, L4_3, L5_3)
        end
        L4_2(L5_2)
      end
    end
  end
  L3_2 = ApplyForceToEntity
  L4_2 = A0_2
  L5_2 = 1
  L6_2 = 0.0
  L7_2 = A1_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0
  L13_2 = true
  L14_2 = true
  L15_2 = true
  L16_2 = false
  L17_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
BoostForward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.y
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = A0_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L3_2 * 0.5
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L3_2 * 0.5
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L2_2 * 0.5
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L2_2 * 0.5
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L1_2 * 0.5
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L1_2 * 0.5
  L9_2 = L9_2(L10_2)
  L10_2 = {}
  L11_2 = L8_2 * L6_2
  L11_2 = L11_2 * L4_2
  L12_2 = L9_2 * L7_2
  L12_2 = L12_2 * L5_2
  L11_2 = L11_2 + L12_2
  L10_2.w = L11_2
  L11_2 = L9_2 * L6_2
  L11_2 = L11_2 * L4_2
  L12_2 = L8_2 * L7_2
  L12_2 = L12_2 * L5_2
  L11_2 = L11_2 - L12_2
  L10_2.x = L11_2
  L11_2 = L8_2 * L7_2
  L11_2 = L11_2 * L4_2
  L12_2 = L9_2 * L6_2
  L12_2 = L12_2 * L5_2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L11_2 = L8_2 * L6_2
  L11_2 = L11_2 * L5_2
  L12_2 = L9_2 * L7_2
  L12_2 = L12_2 * L4_2
  L11_2 = L11_2 - L12_2
  L10_2.z = L11_2
  return L10_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.w
  L2_2 = A0_2.x
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2.y
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L1_2 = 2 * L1_2
  L2_2 = A0_2.x
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A0_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L2_2 = 2 * L2_2
  L3_2 = 1
  L2_2 = L3_2 - L2_2
  L3_2 = math
  L3_2 = L3_2.atan2
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.w
  L5_2 = A0_2.y
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2.z
  L6_2 = A0_2.x
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 - L5_2
  L4_2 = 2 * L4_2
  L5_2 = nil
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  if L6_2 >= 1 then
    L6_2 = math
    L6_2 = L6_2.pi
    L6_2 = L6_2 / 2
    if L4_2 > 0 then
      L7_2 = 1
      if L7_2 then
        goto lbl_62
      end
    end
    L7_2 = -1
    ::lbl_62::
    L5_2 = L6_2 * L7_2
  else
    L6_2 = math
    L6_2 = L6_2.asin
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = A0_2.w
  L7_2 = A0_2.z
  L6_2 = L6_2 * L7_2
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  L6_2 = 2 * L6_2
  L7_2 = A0_2.y
  L8_2 = A0_2.y
  L7_2 = L7_2 * L8_2
  L8_2 = A0_2.z
  L9_2 = A0_2.z
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L7_2 = 2 * L7_2
  L8_2 = 1
  L7_2 = L8_2 - L7_2
  L8_2 = math
  L8_2 = L8_2.atan2
  L9_2 = L6_2
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = vector3
  L10_2 = math
  L10_2 = L10_2.deg
  L11_2 = L3_2
  L10_2 = L10_2(L11_2)
  L11_2 = math
  L11_2 = L11_2.deg
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  L12_2 = math
  L12_2 = L12_2.deg
  L13_2 = L8_2
  L12_2, L13_2 = L12_2(L13_2)
  return L9_2(L10_2, L11_2, L12_2, L13_2)
end
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.w
  L4_2 = A1_2.w
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.x
  L5_2 = A1_2.x
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.z
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  if L3_2 < 0 then
    L4_2 = {}
    L5_2 = A1_2.w
    L5_2 = -L5_2
    L4_2.w = L5_2
    L5_2 = A1_2.x
    L5_2 = -L5_2
    L4_2.x = L5_2
    L5_2 = A1_2.y
    L5_2 = -L5_2
    L4_2.y = L5_2
    L5_2 = A1_2.z
    L5_2 = -L5_2
    L4_2.z = L5_2
    A1_2 = L4_2
    L3_2 = -L3_2
  end
  L4_2 = 0.999
  if L3_2 > L4_2 then
    L4_2 = {}
    L5_2 = A0_2.w
    L6_2 = A1_2.w
    L7_2 = A0_2.w
    L6_2 = L6_2 - L7_2
    L6_2 = A2_2 * L6_2
    L5_2 = L5_2 + L6_2
    L4_2.w = L5_2
    L5_2 = A0_2.x
    L6_2 = A1_2.x
    L7_2 = A0_2.x
    L6_2 = L6_2 - L7_2
    L6_2 = A2_2 * L6_2
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
    L5_2 = A0_2.y
    L6_2 = A1_2.y
    L7_2 = A0_2.y
    L6_2 = L6_2 - L7_2
    L6_2 = A2_2 * L6_2
    L5_2 = L5_2 + L6_2
    L4_2.y = L5_2
    L5_2 = A0_2.z
    L6_2 = A1_2.z
    L7_2 = A0_2.z
    L6_2 = L6_2 - L7_2
    L6_2 = A2_2 * L6_2
    L5_2 = L5_2 + L6_2
    L4_2.z = L5_2
    return L4_2
  end
  L4_2 = math
  L4_2 = L4_2.acos
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 * A2_2
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = L3_2 * L6_2
  L9_2 = L9_2 / L7_2
  L8_2 = L8_2 - L9_2
  L9_2 = L6_2 / L7_2
  L10_2 = {}
  L11_2 = A0_2.w
  L11_2 = L8_2 * L11_2
  L12_2 = A1_2.w
  L12_2 = L9_2 * L12_2
  L11_2 = L11_2 + L12_2
  L10_2.w = L11_2
  L11_2 = A0_2.x
  L11_2 = L8_2 * L11_2
  L12_2 = A1_2.x
  L12_2 = L9_2 * L12_2
  L11_2 = L11_2 + L12_2
  L10_2.x = L11_2
  L11_2 = A0_2.y
  L11_2 = L8_2 * L11_2
  L12_2 = A1_2.y
  L12_2 = L9_2 * L12_2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L11_2 = A0_2.z
  L11_2 = L8_2 * L11_2
  L12_2 = A1_2.z
  L12_2 = L9_2 * L12_2
  L11_2 = L11_2 + L12_2
  L10_2.z = L11_2
  return L10_2
end
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2 + 180.0
  L1_2 = L1_2 % 360.0
  L1_2 = L1_2 - 180.0
  return L1_2
end
NormalizeAngle = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if not A1_2 then
    A1_2 = 0.08
  end
  L2_2 = GetEntityRotation
  L3_2 = A0_2
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetGameplayCamRot
  L4_2 = 2
  L3_2 = L3_2(L4_2)
  L4_2 = NormalizeAngle
  L5_2 = L3_2.x
  L4_2 = L4_2(L5_2)
  L5_2 = Clamp
  L6_2 = L4_2
  L7_2 = -35.0
  L8_2 = 25.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L5_2 = vector3
  L6_2 = L4_2
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2 = L5_2
  L5_2 = L9_1
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L9_1
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = L11_1
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L10_1
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = SetEntityRotation
  L10_2 = A0_2
  L11_2 = L8_2.x
  L12_2 = L8_2.y
  L13_2 = L8_2.z
  L14_2 = 2
  L15_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
VehicleAlignToCameraFull = L12_1
function L12_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
Clamp = L12_1
function L12_1()
  local L0_2, L1_2
  L0_2 = speedToStartAnim
  if nil ~= L0_2 then
    L0_2 = IDHandEffect
    if nil ~= L0_2 then
      L0_2 = SoundWhenMoveAir
      if nil ~= L0_2 then
        L0_2 = AirAlpha
        if nil ~= L0_2 then
          goto lbl_17
        end
      end
    end
  end
  L0_2 = print
  L1_2 = "Error in some variable of editable_superman.lua! Redowload again, you change something wrong and it's broken!"
  L0_2(L1_2)
  do return end
  ::lbl_17::
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = 0
    while true do
      L1_3 = DoesEntityExist
      L2_3 = MiaCopia
      L1_3 = L1_3(L2_3)
      if not (not L1_3 and L0_3 < 100) then
        break
      end
      L0_3 = L0_3 + 1
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    if 100 == L0_3 then
      L1_3 = print
      L2_3 = "Problema nel caricamento della fly mode, annullato."
      L1_3(L2_3)
    else
      L1_3 = IDHandEffect
      if L1_3 then
        L1_3 = IDHandEffect
        if L1_3 > 0 then
          L1_3 = L8_1
          L2_3 = IDHandEffect
          L1_3(L2_3)
        end
      end
      while true do
        L1_3 = VeicoloBase
        if nil == L1_3 then
          break
        end
        L1_3 = DoesEntityExist
        L2_3 = VeicoloBase
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          break
        end
        L1_3 = IsPedRagdoll
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        if L1_3 then
          break
        end
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        L2_3 = Wait
        L3_3 = 0
        L2_3(L3_3)
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        L2_3 = L2_3 - L1_3
        L2_3 = L2_3 / 1000
        L2_3 = L2_3 * 50
        L3_3 = WhileLoopFly
        L3_3()
        L3_3 = DisableFirstPersonCamThisFrame
        L3_3()
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 75
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsPedInVehicle
          L4_3 = PlayerPedId
          L4_3 = L4_3()
          L5_3 = VeicoloBase
          L6_3 = true
          L3_3 = L3_3(L4_3, L5_3, L6_3)
          if L3_3 then
            L3_3 = IsEntityInWater
            L4_3 = VeicoloBase
            L3_3 = L3_3(L4_3)
            if not L3_3 then
              goto lbl_116
            end
          end
        end
        L3_3 = TaskLeaveVehicle
        L4_3 = PlayerPedId
        L4_3 = L4_3()
        L5_3 = VeicoloBase
        L6_3 = 4160
        L3_3(L4_3, L5_3, L6_3)
        L3_3 = IsPedInVehicle
        L4_3 = PlayerPedId
        L4_3 = L4_3()
        L5_3 = VeicoloBase
        L6_3 = true
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        if L3_3 then
          L3_3 = TaskLeaveVehicle
          L4_3 = PlayerPedId
          L4_3 = L4_3()
          L5_3 = VeicoloBase
          L6_3 = 16
          L3_3(L4_3, L5_3, L6_3)
        end
        L3_3 = Wait
        L4_3 = 0
        L3_3(L4_3)
        L3_3 = ClearRagdollBlockingFlags
        L4_3 = PlayerPedId
        L4_3 = L4_3()
        L5_3 = 26
        L3_3(L4_3, L5_3)
        L3_3 = ResetPedRagdollTimer
        L4_3 = PlayerPedId
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L4_3()
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        L3_3 = TriggerEvent
        L4_3 = "stopSuperMan"
        L3_3(L4_3)
        do return end
        ::lbl_116::
        L3_3 = VeicoloBase
        if L3_3 then
          L3_3 = DoesEntityExist
          L4_3 = VeicoloBase
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = GetVehicleEngineHealth
            L4_3 = VeicoloBase
            L3_3 = L3_3(L4_3)
            L4_3 = 800.0
            if L3_3 < L4_3 then
              L3_3 = SetVehicleFixed
              L4_3 = VeicoloBase
              L3_3(L4_3)
              L3_3 = SetVehicleUndriveable
              L4_3 = VeicoloBase
              L5_3 = false
              L3_3(L4_3, L5_3)
              L3_3 = SetVehicleEngineHealth
              L4_3 = netveh
              L5_3 = 1000.0
              L3_3(L4_3, L5_3)
            end
            L3_3 = GetVehicleFuelLevel
            L4_3 = VeicoloBase
            L3_3 = L3_3(L4_3)
            if L3_3 < 50.0 then
              L3_3 = SetVehicleFuelLevel
              L4_3 = VeicoloBase
              L5_3 = 100.0
              L3_3(L4_3, L5_3)
            end
          end
        end
        L3_3 = GetEntityRotation
        L4_3 = VeicoloBase
        L3_3 = L3_3(L4_3)
        L4_3 = SetEntityProofs
        L5_3 = VeicoloBase
        L6_3 = true
        L7_3 = true
        L8_3 = true
        L9_3 = true
        L10_3 = true
        L11_3 = true
        L12_3 = true
        L13_3 = true
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L4_3 = DisableControlAction
        L5_3 = 0
        L6_3 = 23
        L4_3(L5_3, L6_3)
        L4_3 = DisableControlAction
        L5_3 = 0
        L6_3 = 75
        L4_3(L5_3, L6_3)
        L4_3 = DisableControlAction
        L5_3 = 0
        L6_3 = 74
        L4_3(L5_3, L6_3)
        L4_3 = WashDecalsFromVehicle
        L5_3 = VeicoloBase
        L6_3 = 1.0
        L4_3(L5_3, L6_3)
        L4_3 = SetVehicleDirtLevel
        L5_3 = VeicoloBase
        L6_3 = 0.0
        L4_3(L5_3, L6_3)
        L4_3 = GetEntityCoords
        L5_3 = VeicoloBase
        L4_3 = L4_3(L5_3)
        L5_3 = IsExplosionInSphere
        L6_3 = -1
        L7_3 = L4_3.x
        L8_3 = L4_3.y
        L9_3 = L4_3.z
        L10_3 = 15.0
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
        if L5_3 then
          L5_3 = TaskLeaveVehicle
          L6_3 = PlayerPedId
          L6_3 = L6_3()
          L7_3 = VeicoloBase
          L8_3 = 4160
          L5_3(L6_3, L7_3, L8_3)
          L5_3 = IsPedInVehicle
          L6_3 = PlayerPedId
          L6_3 = L6_3()
          L7_3 = VeicoloBase
          L8_3 = true
          L5_3 = L5_3(L6_3, L7_3, L8_3)
          if L5_3 then
            L5_3 = TaskLeaveVehicle
            L6_3 = PlayerPedId
            L6_3 = L6_3()
            L7_3 = VeicoloBase
            L8_3 = 16
            L5_3(L6_3, L7_3, L8_3)
          end
          L5_3 = Wait
          L6_3 = 0
          L5_3(L6_3)
          L5_3 = ClearRagdollBlockingFlags
          L6_3 = PlayerPedId
          L6_3 = L6_3()
          L7_3 = 26
          L5_3(L6_3, L7_3)
          L5_3 = ResetPedRagdollTimer
          L6_3 = PlayerPedId
          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L6_3()
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L5_3 = TriggerEvent
          L6_3 = "stopSuperMan"
          L5_3(L6_3)
          L5_3 = false
          L5_1 = L5_3
          L5_3 = SetPedToRagdoll
          L6_3 = PlayerPedId
          L6_3 = L6_3()
          L7_3 = timerAfterDie
          L8_3 = timerAfterDie
          L9_3 = 0
          L10_3 = 0
          L11_3 = 0
          L12_3 = 0
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          L5_3 = Wait
          L6_3 = timerAfterDie
          L5_3(L6_3)
          L5_3 = true
          L5_1 = L5_3
          return
        end
        L5_3 = IsDisabledControlJustPressed
        L6_3 = 0
        L7_3 = 74
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = FlyTut
          L5_3 = not L5_3
          FlyTut = L5_3
        end
        L5_3 = IsControlPressed
        L6_3 = 0
        L7_3 = 60
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = SetControlNormal
          L6_3 = 0
          L7_3 = 32
          L8_3 = 1.0
          L5_3(L6_3, L7_3, L8_3)
          L5_3 = SetEntityRotation
          L6_3 = VeicoloBase
          L7_3 = L3_3.x
          L8_3 = 1.4 * L2_3
          L7_3 = L7_3 + L8_3
          L8_3 = L3_3.y
          L9_3 = L3_3.z
          L5_3(L6_3, L7_3, L8_3, L9_3)
          L5_3 = ApplyForceToEntityCenterOfMass
          L6_3 = VeicoloBase
          L7_3 = 1
          L8_3 = 0.0
          L9_3 = 0.0
          L10_3 = 2.3 * L2_3
          L11_3 = true
          L12_3 = true
          L13_3 = true
          L14_3 = true
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        end
        L5_3 = IsControlPressed
        L6_3 = 0
        L7_3 = 21
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = SetControlNormal
          L6_3 = 0
          L7_3 = 32
          L8_3 = 1.0
          L5_3(L6_3, L7_3, L8_3)
          L5_3 = SetEntityRotation
          L6_3 = VeicoloBase
          L7_3 = L3_3.x
          L8_3 = 1.4 * L2_3
          L7_3 = L7_3 - L8_3
          L8_3 = L3_3.y
          L9_3 = L3_3.z
          L5_3(L6_3, L7_3, L8_3, L9_3)
          L5_3 = ApplyForceToEntityCenterOfMass
          L6_3 = VeicoloBase
          L7_3 = 1
          L8_3 = 0.0
          L9_3 = 0.0
          L10_3 = -2.3 * L2_3
          L11_3 = true
          L12_3 = true
          L13_3 = true
          L14_3 = true
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        end
        L5_3 = IsDisabledControlPressed
        L6_3 = 0
        L7_3 = 257
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = IsEntityPlayingAnim
          L6_3 = MiaCopia
          L7_3 = a_left
          L8_3 = b_left
          L9_3 = 1
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
          if not L5_3 then
            L5_3 = IsEntityPlayingAnim
            L6_3 = MiaCopia
            L7_3 = a_right
            L8_3 = b_right
            L9_3 = 1
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
            if not L5_3 then
              L5_3 = IsEntityPlayingAnim
              L6_3 = MiaCopia
              L7_3 = "dbzflight@silkteam"
              L8_3 = "boost"
              L9_3 = 1
              L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
              if L5_3 then
                L5_3 = BoostForward
                L6_3 = VeicoloBase
                L7_3 = 0.7
                L5_3(L6_3, L7_3)
              else
                L5_3 = BoostForward
                L6_3 = VeicoloBase
                L7_3 = 0.5
                L5_3(L6_3, L7_3)
              end
            end
          end
        end
        L5_3 = IsDisabledControlPressed
        L6_3 = 0
        L7_3 = 114
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = VehicleAlignToCameraFull
          L6_3 = VeicoloBase
          L7_3 = 0.06
          L5_3(L6_3, L7_3)
        end
        L5_3 = IsControlPressed
        L6_3 = 0
        L7_3 = 32
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = IsDisabledControlPressed
          L6_3 = 0
          L7_3 = 257
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlPressed
            L6_3 = 0
            L7_3 = 114
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = ApplyForceToEntityCenterOfMass
              L6_3 = VeicoloBase
              L7_3 = 1
              L8_3 = 0.0
              L9_3 = 0.1 * L2_3
              L10_3 = 0.0
              L11_3 = true
              L12_3 = true
              L13_3 = true
              L14_3 = true
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            end
          end
          L5_3 = GetGameTimer
          L5_3 = L5_3()
          L6_3 = L6_1
          L5_3 = L5_3 - L6_3
          L6_3 = L7_1
          L6_3 = L6_3 * 2
          if L5_3 > L6_3 then
            L5_3 = GetGameTimer
            L5_3 = L5_3()
            L6_1 = L5_3
            L5_3 = GetMySkin
            L5_3 = L5_3()
            L6_3 = TriggerServerEvent
            L7_3 = "SuperManAnimPed"
            L8_3 = PedToNet
            L9_3 = MiaCopia
            L8_3 = L8_3(L9_3)
            L9_3 = GetPlayerServerId
            L10_3 = PlayerId
            L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3()
            L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
            L10_3 = a_base
            L11_3 = b_base
            L12_3 = L5_3
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          end
        end
        L5_3 = c_upside
        if L5_3 then
          L5_3 = L3_3.x
          L6_3 = 130
          if L5_3 > L6_3 then
            L5_3 = L3_3.x
            L6_3 = 180
            if L5_3 < L6_3 then
              goto lbl_450
            end
          end
          L5_3 = L3_3.x
          L6_3 = -130
          if L5_3 < L6_3 then
            L5_3 = L3_3.x
            L6_3 = -180
            ::lbl_450::
            if L5_3 > L6_3 then
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 21
              L5_3 = L5_3(L6_3, L7_3)
              if L5_3 then
                goto lbl_1256
              end
              L5_3 = IsEntityPlayingAnim
              L6_3 = MiaCopia
              L7_3 = a_upside
              L8_3 = 3
              L5_3 = L5_3(L6_3, L7_3, L8_3)
              if L5_3 then
                goto lbl_1256
              end
              L5_3 = HasAnimDictLoaded
              L6_3 = a_upside
              L5_3 = L5_3(L6_3)
              if not L5_3 then
                L5_3 = RequestAnimDict
                L6_3 = a_upside
                L5_3(L6_3)
                while true do
                  L5_3 = HasAnimDictLoaded
                  L6_3 = a_upside
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    break
                  end
                  L5_3 = Wait
                  L6_3 = 10
                  L5_3(L6_3)
                end
              end
              L5_3 = TaskPlayAnim
              L6_3 = MiaCopia
              L7_3 = a_upside
              L8_3 = b_upside
              L9_3 = 15.1
              L10_3 = 15.1
              L11_3 = -1
              L12_3 = 1
              L13_3 = false
              L14_3 = false
              L15_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          end
        end
        else
          L5_3 = L4_1
          if not L5_3 then
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 89
            L5_3 = L5_3(L6_3, L7_3)
            if L5_3 then
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 64
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = L3_3.y
                if L5_3 > -25 then
                  L5_3 = L3_3.y
                  L5_3 = L5_3 - 1.5
                  L0_1 = L5_3
                else
                  L5_3 = -27.0
                  L0_1 = L5_3
                end
                L5_3 = SetEntityRotation
                L6_3 = VeicoloBase
                L7_3 = L3_3.x
                L8_3 = L0_1
                L9_3 = L3_3.z
                L10_3 = 4.0 * L2_3
                L9_3 = L9_3 + L10_3
                L5_3(L6_3, L7_3, L8_3, L9_3)
                L5_3 = GetEntitySpeed
                L6_3 = VeicoloBase
                L5_3 = L5_3(L6_3)
                L6_3 = speedToStartAnim
                if L5_3 <= L6_3 then
                  L5_3 = IsEntityPlayingAnim
                  L6_3 = MiaCopia
                  L7_3 = a_left
                  L8_3 = b_left
                  L9_3 = 1
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                  if not L5_3 then
                    L5_3 = HasAnimDictLoaded
                    L6_3 = a_left
                    L5_3 = L5_3(L6_3)
                    if not L5_3 then
                      L5_3 = RequestAnimDict
                      L6_3 = a_left
                      L5_3(L6_3)
                      while true do
                        L5_3 = HasAnimDictLoaded
                        L6_3 = a_left
                        L5_3 = L5_3(L6_3)
                        if L5_3 then
                          break
                        end
                        L5_3 = Wait
                        L6_3 = 10
                        L5_3(L6_3)
                      end
                    end
                    L5_3 = TaskPlayAnim
                    L6_3 = MiaCopia
                    L7_3 = a_left
                    L8_3 = b_left
                    L9_3 = 3.0
                    L10_3 = 3.0
                    L11_3 = 500000
                    L12_3 = 1
                    L13_3 = false
                    L14_3 = false
                    L15_3 = false
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                    L5_3 = GetGameTimer
                    L5_3 = L5_3()
                    L6_3 = L6_1
                    L5_3 = L5_3 - L6_3
                    L6_3 = L7_1
                    if L5_3 > L6_3 then
                      L5_3 = GetGameTimer
                      L5_3 = L5_3()
                      L6_1 = L5_3
                      L5_3 = GetMySkin
                      L5_3 = L5_3()
                      L6_3 = TriggerServerEvent
                      L7_3 = "SuperManAnimPed"
                      L8_3 = PedToNet
                      L9_3 = MiaCopia
                      L8_3 = L8_3(L9_3)
                      L9_3 = GetPlayerServerId
                      L10_3 = PlayerId
                      L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3()
                      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                      L10_3 = a_left
                      L11_3 = b_left
                      L12_3 = L5_3
                      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                    end
                  end
                end
              end
            end
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 64
            L5_3 = L5_3(L6_3, L7_3)
            if L5_3 then
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 89
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = L3_3.y
                if L5_3 < 25 then
                  L5_3 = L3_3.y
                  L5_3 = L5_3 + 1.5
                  L0_1 = L5_3
                else
                  L5_3 = 27.0
                  L0_1 = L5_3
                end
                L5_3 = SetEntityRotation
                L6_3 = VeicoloBase
                L7_3 = L3_3.x
                L8_3 = L0_1
                L9_3 = L3_3.z
                L10_3 = 4.0 * L2_3
                L9_3 = L9_3 - L10_3
                L5_3(L6_3, L7_3, L8_3, L9_3)
                L5_3 = GetEntitySpeed
                L6_3 = VeicoloBase
                L5_3 = L5_3(L6_3)
                L6_3 = speedToStartAnim
                if L5_3 <= L6_3 then
                  L5_3 = IsEntityPlayingAnim
                  L6_3 = MiaCopia
                  L7_3 = a_right
                  L8_3 = b_right
                  L9_3 = 1
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                  if not L5_3 then
                    L5_3 = HasAnimDictLoaded
                    L6_3 = a_right
                    L5_3 = L5_3(L6_3)
                    if not L5_3 then
                      L5_3 = RequestAnimDict
                      L6_3 = a_right
                      L5_3(L6_3)
                      while true do
                        L5_3 = HasAnimDictLoaded
                        L6_3 = a_right
                        L5_3 = L5_3(L6_3)
                        if L5_3 then
                          break
                        end
                        L5_3 = Wait
                        L6_3 = 10
                        L5_3(L6_3)
                      end
                    end
                    L5_3 = TaskPlayAnim
                    L6_3 = MiaCopia
                    L7_3 = a_right
                    L8_3 = b_right
                    L9_3 = 3.0
                    L10_3 = 3.0
                    L11_3 = 500000
                    L12_3 = 1
                    L13_3 = false
                    L14_3 = false
                    L15_3 = false
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                    L5_3 = GetGameTimer
                    L5_3 = L5_3()
                    L6_3 = L6_1
                    L5_3 = L5_3 - L6_3
                    L6_3 = L7_1
                    if L5_3 > L6_3 then
                      L5_3 = GetGameTimer
                      L5_3 = L5_3()
                      L6_1 = L5_3
                      L5_3 = GetMySkin
                      L5_3 = L5_3()
                      L6_3 = TriggerServerEvent
                      L7_3 = "SuperManAnimPed"
                      L8_3 = PedToNet
                      L9_3 = MiaCopia
                      L8_3 = L8_3(L9_3)
                      L9_3 = GetPlayerServerId
                      L10_3 = PlayerId
                      L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3()
                      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                      L10_3 = a_right
                      L11_3 = b_right
                      L12_3 = L5_3
                      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                    end
                  end
                end
              end
            end
          end
          L5_3 = IsControlPressed
          L6_3 = 0
          L7_3 = 44
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlPressed
            L6_3 = 0
            L7_3 = 44
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              goto lbl_820
            end
          end
          L5_3 = IsControlPressed
          L6_3 = 0
          L7_3 = 38
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = true
            L4_1 = L5_3
            L5_3 = L3_3.y
            if L5_3 > -35 then
              L5_3 = L3_3.y
              L6_3 = 1.4 * L2_3
              L5_3 = L5_3 - L6_3
              L0_1 = L5_3
            else
              L5_3 = 1.4 * L2_3
              L6_3 = -35
              L5_3 = L6_3 - L5_3
              L0_1 = L5_3
            end
            L5_3 = SetEntityRotation
            L6_3 = VeicoloBase
            L7_3 = L3_3.x
            L8_3 = L0_1
            L9_3 = L3_3.z
            L10_3 = 0.5 * L2_3
            L9_3 = L9_3 + L10_3
            L5_3(L6_3, L7_3, L8_3, L9_3)
            L5_3 = ApplyForceToEntityCenterOfMass
            L6_3 = VeicoloBase
            L7_3 = 1
            L8_3 = -0.5 * L2_3
            L9_3 = 0.0
            L10_3 = 0.0
            L11_3 = true
            L12_3 = true
            L13_3 = true
            L14_3 = true
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            L5_3 = IsEntityPlayingAnim
            L6_3 = MiaCopia
            L7_3 = a_left
            L8_3 = b_left
            L9_3 = 1
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
            if L5_3 then
              goto lbl_943
            end
            L5_3 = HasAnimDictLoaded
            L6_3 = a_left
            L5_3 = L5_3(L6_3)
            if not L5_3 then
              L5_3 = RequestAnimDict
              L6_3 = a_left
              L5_3(L6_3)
              while true do
                L5_3 = HasAnimDictLoaded
                L6_3 = a_left
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  break
                end
                L5_3 = Wait
                L6_3 = 10
                L5_3(L6_3)
              end
            end
            L5_3 = TaskPlayAnim
            L6_3 = MiaCopia
            L7_3 = a_left
            L8_3 = b_left
            L9_3 = 3.0
            L10_3 = 3.0
            L11_3 = 500000
            L12_3 = 1
            L13_3 = false
            L14_3 = false
            L15_3 = false
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L5_3 = GetGameTimer
            L5_3 = L5_3()
            L6_3 = L6_1
            L5_3 = L5_3 - L6_3
            L6_3 = L7_1
            if L5_3 > L6_3 then
              L5_3 = GetGameTimer
              L5_3 = L5_3()
              L6_1 = L5_3
              L5_3 = GetMySkin
              L5_3 = L5_3()
              L6_3 = TriggerServerEvent
              L7_3 = "SuperManAnimPed"
              L8_3 = PedToNet
              L9_3 = MiaCopia
              L8_3 = L8_3(L9_3)
              L9_3 = GetPlayerServerId
              L10_3 = PlayerId
              L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3()
              L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              L10_3 = a_left
              L11_3 = b_left
              L12_3 = L5_3
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            end
          ::lbl_820::
          else
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 38
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = IsDisabledControlPressed
              L6_3 = 0
              L7_3 = 38
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                goto lbl_941
              end
            end
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 44
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = true
              L4_1 = L5_3
              L5_3 = L3_3.y
              if L5_3 < 35 then
                L5_3 = L3_3.y
                L6_3 = 1.4 * L2_3
                L5_3 = L5_3 + L6_3
                L0_1 = L5_3
              else
                L5_3 = 1.4 * L2_3
                L5_3 = 35 + L5_3
                L0_1 = L5_3
              end
              L5_3 = SetEntityRotation
              L6_3 = VeicoloBase
              L7_3 = L3_3.x
              L8_3 = L0_1
              L9_3 = L3_3.z
              L10_3 = 0.5 * L2_3
              L9_3 = L9_3 - L10_3
              L5_3(L6_3, L7_3, L8_3, L9_3)
              L5_3 = ApplyForceToEntityCenterOfMass
              L6_3 = VeicoloBase
              L7_3 = 1
              L8_3 = 0.5 * L2_3
              L9_3 = 0.0
              L10_3 = 0.0
              L11_3 = true
              L12_3 = true
              L13_3 = true
              L14_3 = true
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
              L5_3 = IsEntityPlayingAnim
              L6_3 = MiaCopia
              L7_3 = a_right
              L8_3 = b_right
              L9_3 = 1
              L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
              if L5_3 then
                goto lbl_943
              end
              L5_3 = HasAnimDictLoaded
              L6_3 = a_right
              L5_3 = L5_3(L6_3)
              if not L5_3 then
                L5_3 = RequestAnimDict
                L6_3 = a_right
                L5_3(L6_3)
                while true do
                  L5_3 = HasAnimDictLoaded
                  L6_3 = a_right
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    break
                  end
                  L5_3 = Wait
                  L6_3 = 10
                  L5_3(L6_3)
                end
              end
              L5_3 = TaskPlayAnim
              L6_3 = MiaCopia
              L7_3 = a_right
              L8_3 = b_right
              L9_3 = 3.0
              L10_3 = 3.0
              L11_3 = 500000
              L12_3 = 1
              L13_3 = false
              L14_3 = false
              L15_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
              L5_3 = GetGameTimer
              L5_3 = L5_3()
              L6_3 = L6_1
              L5_3 = L5_3 - L6_3
              L6_3 = L7_1
              if L5_3 > L6_3 then
                L5_3 = GetGameTimer
                L5_3 = L5_3()
                L6_1 = L5_3
                L5_3 = GetMySkin
                L5_3 = L5_3()
                L6_3 = TriggerServerEvent
                L7_3 = "SuperManAnimPed"
                L8_3 = PedToNet
                L9_3 = MiaCopia
                L8_3 = L8_3(L9_3)
                L9_3 = GetPlayerServerId
                L10_3 = PlayerId
                L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3()
                L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                L10_3 = a_right
                L11_3 = b_right
                L12_3 = L5_3
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
              end
            ::lbl_941::
            else
              L5_3 = false
              L4_1 = L5_3
            end
          end
          ::lbl_943::
          L5_3 = GetEntitySpeed
          L6_3 = VeicoloBase
          L5_3 = L5_3(L6_3)
          L6_3 = speedToStartAnim
          if L5_3 <= L6_3 then
            L5_3 = L1_1
            if L5_3 then
              L5_3 = StopParticleFxLooped
              L6_3 = L1_1
              L7_3 = 0
              L5_3(L6_3, L7_3)
              L5_3 = nil
              L1_1 = L5_3
            end
          end
          a_forward = "dbzflight@silkteam"
          b_forward = "boost"
          L5_3 = IsControlPressed
          L6_3 = 0
          L7_3 = 34
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 35
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = L4_1
              if not L5_3 then
                L5_3 = GetEntitySpeed
                L6_3 = VeicoloBase
                L5_3 = L5_3(L6_3)
                L6_3 = speedToStartAnim
                if L5_3 > L6_3 then
                  L5_3 = SoundWhenMoveAir
                  if L5_3 then
                    L5_3 = L1_1
                    if nil == L5_3 then
                      L5_3 = "core"
                      L6_3 = customFxAir1
                      L6_3 = #L6_3
                      if L6_3 > 0 then
                        L5_3 = customFxAir1
                      end
                      L6_3 = "weap_extinguisher"
                      L7_3 = customFxAir2
                      L7_3 = #L7_3
                      if L7_3 > 0 then
                        L6_3 = customFxAir2
                      end
                      L7_3 = RequestNamedPtfxAsset
                      L8_3 = L5_3
                      L7_3(L8_3)
                      while true do
                        L7_3 = HasNamedPtfxAssetLoaded
                        L8_3 = L5_3
                        L7_3 = L7_3(L8_3)
                        if L7_3 then
                          break
                        end
                        L7_3 = Wait
                        L8_3 = 0
                        L7_3(L8_3)
                      end
                      L7_3 = UseParticleFxAssetNextCall
                      L8_3 = L5_3
                      L7_3(L8_3)
                      L7_3 = StartNetworkedParticleFxLoopedOnEntity
                      L8_3 = L6_3
                      L9_3 = MiaCopia
                      L10_3 = 0.0
                      L11_3 = 0.0
                      L12_3 = 0.0
                      L13_3 = 0.0
                      L14_3 = 220.0
                      L15_3 = 90.0
                      L16_3 = EffectSize
                      L17_3 = false
                      L18_3 = false
                      L19_3 = false
                      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                      L1_1 = L7_3
                      L7_3 = SetParticleFxLoopedAlpha
                      L8_3 = L1_1
                      L9_3 = AirAlpha
                      L7_3(L8_3, L9_3)
                    end
                  end
                  L5_3 = L1_1
                  if nil ~= L5_3 then
                    L5_3 = DisableCamCollisionForEntity
                    L6_3 = L1_1
                    L5_3(L6_3)
                  end
                  L5_3 = IsEntityPlayingAnim
                  L6_3 = MiaCopia
                  L7_3 = a_forward
                  L8_3 = b_forward
                  L9_3 = 1
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                  if not L5_3 then
                    L5_3 = HasAnimDictLoaded
                    L6_3 = a_forward
                    L5_3 = L5_3(L6_3)
                    if not L5_3 then
                      L5_3 = RequestAnimDict
                      L6_3 = a_forward
                      L5_3(L6_3)
                      while true do
                        L5_3 = HasAnimDictLoaded
                        L6_3 = a_forward
                        L5_3 = L5_3(L6_3)
                        if L5_3 then
                          break
                        end
                        L5_3 = Wait
                        L6_3 = 10
                        L5_3(L6_3)
                      end
                    end
                    L5_3 = TaskPlayAnim
                    L6_3 = MiaCopia
                    L7_3 = a_forward
                    L8_3 = b_forward
                    L9_3 = 3.0
                    L10_3 = 3.0
                    L11_3 = 500000
                    L12_3 = 1
                    L13_3 = false
                    L14_3 = false
                    L15_3 = false
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                    L5_3 = GetGameTimer
                    L5_3 = L5_3()
                    L6_3 = L6_1
                    L5_3 = L5_3 - L6_3
                    L6_3 = L7_1
                    if L5_3 > L6_3 then
                      L5_3 = DoesEntityExist
                      L6_3 = MiaCopia
                      L5_3 = L5_3(L6_3)
                      if L5_3 then
                        L5_3 = GetGameTimer
                        L5_3 = L5_3()
                        L6_1 = L5_3
                        L5_3 = GetMySkin
                        L5_3 = L5_3()
                        L6_3 = TriggerServerEvent
                        L7_3 = "SuperManAnimPed"
                        L8_3 = PedToNet
                        L9_3 = MiaCopia
                        L8_3 = L8_3(L9_3)
                        L9_3 = GetPlayerServerId
                        L10_3 = PlayerId
                        L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3()
                        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                        L10_3 = a_forward
                        L11_3 = b_forward
                        L12_3 = L5_3
                        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                      end
                    end
                  else
                    L5_3 = GetEntityAnimCurrentTime
                    L6_3 = MiaCopia
                    L7_3 = a_forward
                    L8_3 = b_forward
                    L5_3 = L5_3(L6_3, L7_3, L8_3)
                    L6_3 = 0.18
                    L7_3 = IsDisabledControlPressed
                    L8_3 = 0
                    L9_3 = 257
                    L7_3 = L7_3(L8_3, L9_3)
                    if L7_3 then
                      L6_3 = 0.7
                    end
                    if L5_3 >= L6_3 then
                      L7_3 = TaskPlayAnim
                      L8_3 = MiaCopia
                      L9_3 = a_forward
                      L10_3 = "forward"
                      L11_3 = 3.0
                      L12_3 = 3.0
                      L13_3 = 500000
                      L14_3 = 1
                      L15_3 = false
                      L16_3 = false
                      L17_3 = false
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                      L7_3 = TaskPlayAnim
                      L8_3 = MiaCopia
                      L9_3 = a_forward
                      L10_3 = b_forward
                      L11_3 = 3.0
                      L12_3 = 3.0
                      L13_3 = 500000
                      L14_3 = 1
                      L15_3 = false
                      L16_3 = false
                      L17_3 = false
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                    end
                  end
                else
                  L5_3 = IsEntityPlayingAnim
                  L6_3 = MiaCopia
                  L7_3 = a_base
                  L8_3 = b_base
                  L9_3 = 1
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                  if L5_3 then
                    goto lbl_1256
                  end
                  L5_3 = HasAnimDictLoaded
                  L6_3 = a_base
                  L5_3 = L5_3(L6_3)
                  if not L5_3 then
                    L5_3 = RequestAnimDict
                    L6_3 = a_base
                    L5_3(L6_3)
                    while true do
                      L5_3 = HasAnimDictLoaded
                      L6_3 = a_base
                      L5_3 = L5_3(L6_3)
                      if L5_3 then
                        break
                      end
                      L5_3 = Wait
                      L6_3 = 10
                      L5_3(L6_3)
                    end
                  end
                  L5_3 = TaskPlayAnim
                  L6_3 = MiaCopia
                  L7_3 = a_base
                  L8_3 = b_base
                  L9_3 = 3.0
                  L10_3 = 3.0
                  L11_3 = 500000
                  L12_3 = 1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                  L5_3 = GetGameTimer
                  L5_3 = L5_3()
                  L6_3 = L6_1
                  L5_3 = L5_3 - L6_3
                  L6_3 = L7_1
                  if L5_3 > L6_3 then
                    L5_3 = DoesEntityExist
                    L6_3 = MiaCopia
                    L5_3 = L5_3(L6_3)
                    if L5_3 then
                      L5_3 = GetGameTimer
                      L5_3 = L5_3()
                      L6_1 = L5_3
                      L5_3 = GetMySkin
                      L5_3 = L5_3()
                      L6_3 = TriggerServerEvent
                      L7_3 = "SuperManAnimPed"
                      L8_3 = PedToNet
                      L9_3 = MiaCopia
                      L8_3 = L8_3(L9_3)
                      L9_3 = GetPlayerServerId
                      L10_3 = PlayerId
                      L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3()
                      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                      L10_3 = a_base
                      L11_3 = b_base
                      L12_3 = L5_3
                      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                    end
                  end
                end
            end
          end
          else
            L5_3 = GetEntityAnimCurrentTime
            L6_3 = MiaCopia
            L7_3 = a_forward
            L8_3 = b_forward
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L6_3 = 0.18
            L7_3 = IsDisabledControlPressed
            L8_3 = 0
            L9_3 = 257
            L7_3 = L7_3(L8_3, L9_3)
            if L7_3 then
              L6_3 = 0.7
            end
            if L5_3 >= L6_3 then
              L7_3 = TaskPlayAnim
              L8_3 = MiaCopia
              L9_3 = a_forward
              L10_3 = "forward"
              L11_3 = 3.0
              L12_3 = 3.0
              L13_3 = 500000
              L14_3 = 1
              L15_3 = false
              L16_3 = false
              L17_3 = false
              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L7_3 = TaskPlayAnim
              L8_3 = MiaCopia
              L9_3 = a_forward
              L10_3 = b_forward
              L11_3 = 3.0
              L12_3 = 3.0
              L13_3 = 500000
              L14_3 = 1
              L15_3 = false
              L16_3 = false
              L17_3 = false
              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            end
          end
        end
        ::lbl_1256::
        L5_3 = IsControlJustReleased
        L6_3 = 0
        L7_3 = 32
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = IsDisabledControlPressed
          L6_3 = 0
          L7_3 = 257
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlPressed
            L6_3 = 0
            L7_3 = 114
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = L2_1
              if L5_3 then
                L5_3 = StopParticleFxLooped
                L6_3 = L2_1
                L7_3 = 0
                L5_3(L6_3, L7_3)
                L5_3 = nil
                L2_1 = L5_3
              end
            end
          end
        end
        L5_3 = IsControlJustReleased
        L6_3 = 0
        L7_3 = 257
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = IsDisabledControlPressed
          L6_3 = 0
          L7_3 = 32
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlPressed
            L6_3 = 0
            L7_3 = 114
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = L2_1
              if L5_3 then
                L5_3 = StopParticleFxLooped
                L6_3 = L2_1
                L7_3 = 0
                L5_3(L6_3, L7_3)
                L5_3 = nil
                L2_1 = L5_3
              end
            end
          end
        end
        L5_3 = IsControlJustReleased
        L6_3 = 0
        L7_3 = 114
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 then
          L5_3 = IsDisabledControlPressed
          L6_3 = 0
          L7_3 = 257
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlPressed
            L6_3 = 0
            L7_3 = 32
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = L2_1
              if L5_3 then
                L5_3 = StopParticleFxLooped
                L6_3 = L2_1
                L7_3 = 0
                L5_3(L6_3, L7_3)
                L5_3 = nil
                L2_1 = L5_3
              end
            end
          end
        end
        L5_3 = IsDisabledControlPressed
        L6_3 = 0
        L7_3 = 32
        L5_3 = L5_3(L6_3, L7_3)
        if not L5_3 then
          L5_3 = IsDisabledControlPressed
          L6_3 = 0
          L7_3 = 257
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlPressed
            L6_3 = 0
            L7_3 = 114
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = L2_1
              if L5_3 then
                L5_3 = StopParticleFxLooped
                L6_3 = L2_1
                L7_3 = 0
                L5_3(L6_3, L7_3)
                L5_3 = nil
                L2_1 = L5_3
              end
            end
          end
        end
        L5_3 = IsControlJustPressed
        L6_3 = 0
        L7_3 = 32
        L5_3 = L5_3(L6_3, L7_3)
        if not L5_3 then
          L5_3 = IsDisabledControlPressed
          L6_3 = 0
          L7_3 = 257
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlPressed
            L6_3 = 0
            L7_3 = 114
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              goto lbl_1425
            end
          end
        end
        L5_3 = L2_1
        if nil == L5_3 then
          L5_3 = RequestNamedPtfxAsset
          L6_3 = partDictFx1
          L5_3(L6_3)
          while true do
            L5_3 = HasNamedPtfxAssetLoaded
            L6_3 = partDictFx1
            L5_3 = L5_3(L6_3)
            if L5_3 then
              break
            end
            L5_3 = Wait
            L6_3 = 0
            L5_3(L6_3)
          end
          L5_3 = UseParticleFxAssetNextCall
          L6_3 = partDictFx1
          L5_3(L6_3)
          L5_3 = StartNetworkedParticleFxLoopedOnEntity
          L6_3 = partDictFx2
          L7_3 = MiaCopia
          L8_3 = posFx
          L8_3 = L8_3.x
          L9_3 = posFx
          L9_3 = L9_3.y
          L10_3 = posFx
          L10_3 = L10_3.z
          L11_3 = rotFx
          L11_3 = L11_3.x
          L12_3 = rotFx
          L12_3 = L12_3.y
          L13_3 = rotFx
          L13_3 = L13_3.z
          L14_3 = sizeFx
          L15_3 = false
          L16_3 = false
          L17_3 = false
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          L2_1 = L5_3
          L5_3 = SetParticleFxLoopedAlpha
          L6_3 = L2_1
          L7_3 = fxAlpha
          L5_3(L6_3, L7_3)
        end
        ::lbl_1425::
        L5_3 = L2_1
        if L5_3 then
          L5_3 = DisableCamCollisionForEntity
          L6_3 = L2_1
          L5_3(L6_3)
        end
        L5_3 = MiaCopia
        if L5_3 then
          L5_3 = DisableCamCollisionForEntity
          L6_3 = MiaCopia
          L5_3(L6_3)
        end
        L5_3 = SetVehicleSilent
        L6_3 = VeicoloBase
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetVehicleEngineHealth
        L6_3 = VeicoloBase
        L7_3 = 1000.0
        L5_3(L6_3, L7_3)
        L5_3 = SetEntityVisible
        L6_3 = PlayerPedId
        L6_3 = L6_3()
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 24
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 25
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 69
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 70
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 92
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 106
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 68
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 91
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 114
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 222
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 225
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 347
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 357
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 330
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 105
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 120
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 337
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = DisableControlAction
        L6_3 = 0
        L7_3 = 354
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = ForceUseAudioGameObject
        L6_3 = VeicoloBase
        L7_3 = "thruster"
        L5_3(L6_3, L7_3)
        L5_3 = SetEntityInvincible
        L6_3 = PlayerPedId
        L6_3 = L6_3()
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = IsPedFatallyInjured
        L6_3 = MiaCopia
        L5_3 = L5_3(L6_3)
        if not L5_3 then
          L5_3 = IsPedDeadOrDying
          L6_3 = MiaCopia
          L5_3 = L5_3(L6_3)
          if not L5_3 then
            goto lbl_1612
          end
        end
        L5_3 = TaskLeaveVehicle
        L6_3 = PlayerPedId
        L6_3 = L6_3()
        L7_3 = VeicoloBase
        L8_3 = 4160
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = IsPedInVehicle
        L6_3 = PlayerPedId
        L6_3 = L6_3()
        L7_3 = VeicoloBase
        L8_3 = true
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        if L5_3 then
          L5_3 = TaskLeaveVehicle
          L6_3 = PlayerPedId
          L6_3 = L6_3()
          L7_3 = VeicoloBase
          L8_3 = 16
          L5_3(L6_3, L7_3, L8_3)
        end
        L5_3 = Wait
        L6_3 = 0
        L5_3(L6_3)
        L5_3 = ClearRagdollBlockingFlags
        L6_3 = PlayerPedId
        L6_3 = L6_3()
        L7_3 = 26
        L5_3(L6_3, L7_3)
        L5_3 = ResetPedRagdollTimer
        L6_3 = PlayerPedId
        L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L6_3()
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        L5_3 = TriggerEvent
        L6_3 = "stopSuperMan"
        L5_3(L6_3)
        L5_3 = false
        L5_1 = L5_3
        L5_3 = SetPedToRagdoll
        L6_3 = PlayerPedId
        L6_3 = L6_3()
        L7_3 = timerAfterDie
        L8_3 = timerAfterDie
        L9_3 = 0
        L10_3 = 0
        L11_3 = 0
        L12_3 = 0
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L5_3 = Wait
        L6_3 = timerAfterDie
        L5_3(L6_3)
        L5_3 = true
        L5_1 = L5_3
        do return end
        ::lbl_1612::
      end
      return
    end
  end
  L0_2(L1_2)
end
LoopFlyMode = L12_1
L12_1 = RegisterNetEvent
L13_1 = "EliminaPedSyncSM"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "EliminaPedSyncSM"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = SafeNetToPed
    L6_2 = A0_2[L4_2]
    L7_2 = 500
    L5_2 = L5_2(L6_2, L7_2)
    if 0 ~= L5_2 then
      L6_2 = SetEntityAsMissionEntity
      L7_2 = L5_2
      L8_2 = true
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = DeletePed
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = Wait
      L7_2 = 1
      L6_2(L7_2)
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "EliminaPedSyncSM_2"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "EliminaPedSyncSM_2"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A0_2 then
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= A1_2 then
      L2_2 = NetToPed
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = DoesEntityExist
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = SetEntityAsMissionEntity
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = DeletePed
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = DoesEntityExist
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = DeleteEntity
          L4_2 = L2_2
          L3_2(L4_2)
        end
      end
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "getPP"
function L14_1()
  local L0_2, L1_2
  L0_2 = MiaCopia
  return L0_2
end
L12_1(L13_1, L14_1)
ENABLED_HooverLoop = false
L12_1 = {}
L13_1 = 884483972
L12_1[L13_1] = true
L13_1 = 2069146067
L12_1[L13_1] = true
L13_1 = -56009036
L12_1[L13_1] = true
L13_1 = true
L14_1 = 0.85
L15_1 = 0.0
L16_1 = 1.5
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0 ~= A0_2
  return L1_2
end
function L18_1()
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
          goto lbl_27
        end
      end
    end
  end
  L0_2 = true
  do return L0_2 end
  ::lbl_27::
  L0_2 = IsControlPressed
  L1_2 = 0
  L2_2 = 71
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 72
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      goto lbl_41
    end
  end
  L0_2 = true
  do return L0_2 end
  ::lbl_41::
  L0_2 = IsControlPressed
  L1_2 = 0
  L2_2 = 172
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 173
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsControlPressed
      L1_2 = 0
      L2_2 = 174
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L0_2 = IsControlPressed
        L1_2 = 0
        L2_2 = 175
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          goto lbl_67
        end
      end
    end
  end
  L0_2 = true
  do return L0_2 end
  ::lbl_67::
  L0_2 = false
  return L0_2
end
function L19_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    while true do
      L0_3 = ENABLED_HooverLoop
      if not L0_3 then
        return
      else
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetVehiclePedIsIn
        L2_3 = L0_3
        L3_3 = false
        L1_3 = L1_3(L2_3, L3_3)
        L2_3 = L17_1
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if L2_3 then
          L2_3 = GetPedInVehicleSeat
          L3_3 = L1_3
          L4_3 = -1
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 == L0_3 then
            L2_3 = IsEntityInAir
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            if L2_3 then
              L2_3 = GetEntityCoords
              L3_3 = L1_3
              L2_3 = L2_3(L3_3)
              L3_3 = GetGroundZFor_3dCoord
              L4_3 = L2_3.x
              L5_3 = L2_3.y
              L6_3 = L2_3.z
              L7_3 = false
              L3_3, L4_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
              L5_3 = L2_3.z
              L5_3 = L5_3 - L4_3
              L6_3 = L16_1
              if L5_3 > L6_3 then
                L6_3 = L18_1
                L6_3 = L6_3()
                L7_3 = L13_1
                if not L7_3 or not L6_3 then
                  L7_3 = table
                  L7_3 = L7_3.unpack
                  L8_3 = GetEntityVelocity
                  L9_3 = L1_3
                  L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3)
                  L7_3, L8_3, L9_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                  if L9_3 < 0.0 then
                    L10_3 = L14_1
                    L11_3 = 1.0
                    L10_3 = L11_3 - L10_3
                    L9_3 = L9_3 * L10_3
                  else
                    L9_3 = L9_3 * 0.98
                  end
                  L10_3 = SetEntityVelocity
                  L11_3 = L1_3
                  L12_3 = L7_3
                  L13_3 = L8_3
                  L14_3 = L9_3
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                  L10_3 = L15_1
                  if L10_3 > 0.0 then
                    L10_3 = ApplyForceToEntityCenterOfMass
                    L11_3 = L1_3
                    L12_3 = 1
                    L13_3 = 0.0
                    L14_3 = 0.0
                    L15_3 = L15_1
                    L16_3 = true
                    L17_3 = true
                    L18_3 = true
                    L19_3 = true
                    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                  end
                end
              end
            end
            L2_3 = Wait
            L3_3 = 0
            L2_3(L3_3)
        end
        else
          return
        end
      end
    end
  end
  L0_2(L1_2)
end
LoopHoover = L19_1
