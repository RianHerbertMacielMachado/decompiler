local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = GetGameTimer
L0_1 = L0_1()
L1_1 = GetFrameCount
L1_1 = L1_1()
DebugClimb = false
Spostato = false
EroInAria = false
L2_1 = 0.0
L3_1 = -30
L4_1 = 0.0
L5_1 = 1.5
L6_1 = false
L7_1 = nil
L8_1 = nil
L9_1 = 0
L10_1 = false
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = RequestModelStriano
  L3_2 = "prop_cs_leaf"
  L2_2(L3_2)
  L2_2 = CreateObject
  L3_2 = GetHashKey
  L4_2 = "prop_cs_leaf"
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L7_1 = L2_2
  L2_2 = onClimbSound
  L2_2()
  L2_2 = SetEntityAlpha
  L3_2 = L7_1
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityVisible
  L3_2 = L7_1
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L7_1
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = SetEntityNoCollisionEntity
  L4_2 = L2_2
  L5_2 = L7_1
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityCollision
  L4_2 = L7_1
  L5_2 = false
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = ClearPedTasks
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedSecondaryTask
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = SetEntityHeading
  L4_2 = L7_1
  L5_2 = GetEntityHeading
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = AttachEntityToEntity
  L4_2 = L2_2
  L5_2 = L7_1
  L6_2 = -1
  L7_2 = 0.0
  L8_2 = -0.9
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = false
  L14_2 = true
  L15_2 = true
  L16_2 = true
  L17_2 = 1
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = ClearPedSecondaryTask
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedTasksImmediately
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = "sefiro_climb_idlestatic"
  L4_2 = "sefiro_climb_idlestatic_clip"
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
  L5_2 = TaskPlayAnim
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = 5.0
  L10_2 = 5.0
  L11_2 = -1
  L12_2 = 2
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
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
      L2_3 = L10_1
      if L2_3 then
        L2_3 = false
        L10_1 = L2_3
        L2_3 = StaccamiDaClimb
        L2_3()
        return
      end
      L2_3 = IsEntityPlayingAnim
      L3_3 = L2_2
      L4_3 = L3_2
      L5_3 = L4_2
      L6_3 = 1
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      if not L2_3 then
        L2_3 = TaskPlayAnim
        L3_3 = L2_2
        L4_3 = L3_2
        L5_3 = L4_2
        L6_3 = 5.0
        L7_3 = 5.0
        L8_3 = -1
        L9_3 = 2
        L10_3 = false
        L11_3 = false
        L12_3 = false
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      end
      L2_3 = DebugClimbSystem
      L2_3()
      L2_3 = IsControlJustPressed
      L3_3 = 0
      L4_3 = 22
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        L2_3 = GetEntityCoords
        L3_3 = L2_2
        L2_3 = L2_3(L3_3)
        L3_3 = RequestModelStriano
        L4_3 = "apa_mp_h_din_table_05"
        L3_3(L4_3)
        L3_3 = CreateObject
        L4_3 = GetHashKey
        L5_3 = "apa_mp_h_din_table_05"
        L4_3 = L4_3(L5_3)
        L5_3 = L2_3.x
        L6_3 = L2_3.y
        L7_3 = L2_3.z
        L7_3 = L7_3 - 1.2
        L8_3 = false
        L9_3 = false
        L10_3 = false
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L8_1 = L3_3
        L3_3 = FreezeEntityPosition
        L4_3 = L8_1
        L5_3 = true
        L3_3(L4_3, L5_3)
        L3_3 = SetEntityAlpha
        L4_3 = L8_1
        L5_3 = L9_1
        L3_3(L4_3, L5_3)
        L3_3 = CreateThread
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4
          while true do
            L0_4 = L8_1
            if nil == L0_4 then
              break
            end
            L0_4 = Wait
            L1_4 = 0
            L0_4(L1_4)
            L0_4 = DoesEntityExist
            L1_4 = L8_1
            L0_4 = L0_4(L1_4)
            if L0_4 then
              L0_4 = SetEntityHeading
              L1_4 = L8_1
              L2_4 = GetGameplayCamRot
              L3_4 = 0
              L2_4 = L2_4(L3_4)
              L2_4 = L2_4.z
              L0_4(L1_4, L2_4)
            end
          end
        end
        L3_3(L4_3)
        L3_3 = StaccamiDaClimb
        L3_3()
        L3_3 = SetEntityHeading
        L4_3 = L2_2
        L5_3 = GetGameplayCamRot
        L6_3 = 0
        L5_3 = L5_3(L6_3)
        L5_3 = L5_3.z
        L3_3(L4_3, L5_3)
        L3_3 = Wait
        L4_3 = 1000
        L3_3(L4_3)
        L3_3 = SetEntityAsMissionEntity
        L4_3 = L8_1
        L3_3(L4_3)
        L3_3 = DeleteEntity
        L4_3 = L8_1
        L3_3(L4_3)
        L3_3 = nil
        L8_1 = L3_3
        return
      end
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 0
      L4_3 = KeyToStartClimb
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        L2_3 = L8_1
        if L2_3 then
          L2_3 = SetEntityAsMissionEntity
          L3_3 = L8_1
          L2_3(L3_3)
          L2_3 = DeleteEntity
          L3_3 = L8_1
          L2_3(L3_3)
          L2_3 = nil
          L8_1 = L2_3
        end
        L2_3 = StaccamiDaClimb
        L2_3()
        return
      end
      L2_3 = L7_1
      if nil ~= L2_3 then
        L2_3 = InfoWhileClimb
        L2_3()
      end
    end
  end
  L5_2(L6_2)
end
attivaClimb = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.3f"
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
roundClimb = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = 3.0
  if A3_2 then
    L4_2 = A3_2
  end
  L5_2 = HasNamedPtfxAssetLoaded
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestNamedPtfxAsset
    L6_2 = A0_2
    L5_2(L6_2)
  end
  while true do
    L5_2 = HasNamedPtfxAssetLoaded
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = SetPtfxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = UseParticleFxAssetNextCall
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = StartParticleFxLoopedAtCoord
    L1_3 = A1_2
    L2_3 = A2_2
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = L4_2
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L1_3 = Wait
    L2_3 = 1000
    L1_3(L2_3)
    L1_3 = StopParticleFxLooped
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = RemoveParticleFx
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2)
end
PlayEffectSuperJump = L11_1
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = animationtryGrab
  L3_2 = L3_2.a
  L4_2 = animationtryGrab
  L4_2 = L4_2.b
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = animationtryGrab
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
    L2_2 = TaskPlayAnim
    L3_2 = L0_2
    L4_2 = animationtryGrab
    L4_2 = L4_2.a
    L5_2 = animationtryGrab
    L5_2 = L5_2.b
    L6_2 = 3.0
    L7_2 = 1.0
    L8_2 = -1
    L9_2 = 49
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
GrabAnimClimb = L11_1
L11_1 = FallingCheck
if L11_1 then
  L11_1 = CreateThread
  function L12_1()
    local L0_2, L1_2, L2_2, L3_2
    while true do
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
      L0_2 = SuperJump
      if not L0_2 then
        L0_2 = IsPedFalling
        L1_2 = PlayerPedId
        L1_2, L2_2, L3_2 = L1_2()
        L0_2 = L0_2(L1_2, L2_2, L3_2)
        if L0_2 then
          L0_2 = L6_1
          if L0_2 then
            L0_2 = SetPedConfigFlag
            L1_2 = PlayerPedId
            L1_2 = L1_2()
            L2_2 = 164
            L3_2 = false
            L0_2(L1_2, L2_2, L3_2)
            L0_2 = false
            L6_1 = L0_2
          end
        else
          L0_2 = L6_1
          if not L0_2 then
            L0_2 = SetPedConfigFlag
            L1_2 = PlayerPedId
            L1_2 = L1_2()
            L2_2 = 164
            L3_2 = true
            L0_2(L1_2, L2_2, L3_2)
            L0_2 = true
            L6_1 = L0_2
          end
        end
      end
    end
  end
  L11_1(L12_1)
end
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityForwardVector
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = GetEntityCoords
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2 * 0.1
  L3_2 = L3_2 + L4_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L5_2 = 511
  L6_2 = GetShapeTestResult
  L7_2 = StartShapeTestRay
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2 - 1.0
  L11_2 = L2_2
  L12_2 = L3_2
  L13_2 = L4_2 + 15.0
  L14_2 = L5_2
  L15_2 = L0_2
  L16_2 = 1
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  if L7_2 and L8_2 then
    L11_2 = DebugClimb
    if L11_2 then
      L11_2 = DrawLine
      L12_2 = L2_2
      L13_2 = L3_2
      L14_2 = L4_2 - 1.0
      L15_2 = L8_2.x
      L16_2 = L8_2.y
      L17_2 = L8_2.z
      L17_2 = L17_2 - 0.3
      L18_2 = 0
      L19_2 = 0
      L20_2 = 0
      L21_2 = 255
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L11_2 = DrawMarker
      L12_2 = 28
      L13_2 = L8_2.x
      L14_2 = L8_2.y
      L15_2 = L8_2.z
      L15_2 = L15_2 + 0.1
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L19_2 = 0
      L20_2 = 0
      L21_2 = 0
      L22_2 = 0.1
      L23_2 = 0.1
      L24_2 = 0.1
      L25_2 = 255
      L26_2 = 255
      L27_2 = 0
      L28_2 = 255
      L29_2 = false
      L30_2 = false
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    end
    L11_2 = GetEntityCoords
    L12_2 = L0_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2 - L8_2
    L11_2 = #L11_2
    L12_2 = 1.5
    if L11_2 > L12_2 then
      L11_2 = true
      return L11_2
    else
      L11_2 = false
      return L11_2
    end
  else
    L11_2 = false
    return L11_2
  end
end
function L12_1(A0_2)
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
  L3_2 = L3_2.cos
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
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
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A0_2
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = GetEntityCoords
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2 * 0.5
  L5_2 = L5_2 + L6_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L7_2 = 511
  L8_2 = GetShapeTestResult
  L9_2 = StartShapeTestRay
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L6_2 - 0.1
  L13_2 = L4_2
  L14_2 = L5_2
  L15_2 = L6_2 - 150.0
  L16_2 = L7_2
  L17_2 = L2_2
  L18_2 = 1
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if L9_2 and L10_2 then
    L13_2 = GetEntityCoords
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 - L10_2
    L13_2 = #L13_2
    L14_2 = 1.5
    if L13_2 > L14_2 then
      L13_2 = true
      return L13_2
    else
      L13_2 = false
      return L13_2
    end
  else
    L13_2 = false
    return L13_2
  end
end
sonoInAriaSuperJump = L13_1
function L13_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L1_2 = -150.0
  if not (L0_2 < L1_2) then
    L0_2 = L2_1
    L1_2 = 150.0
    if not (L0_2 > L1_2) then
      goto lbl_12
    end
  end
  L0_2 = true
  do return L0_2 end
  goto lbl_14
  ::lbl_12::
  L0_2 = false
  do return L0_2 end
  ::lbl_14::
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = vector3
  L4_2 = 0
  L5_2 = 255
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = GetEntityForwardVector
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = GetEntityCoords
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2 * 0.1
  L6_2 = L6_2 + L7_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = 511
  L9_2 = GetShapeTestResult
  L10_2 = StartShapeTestRay
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = L7_2
  L14_2 = L5_2
  L15_2 = L6_2
  L16_2 = L7_2 - 1000.0
  L17_2 = L8_2
  L18_2 = A0_2
  L19_2 = 1
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
  if L10_2 and L11_2 then
    L14_2 = IsEntityInWater
    L15_2 = L2_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = EroInAria
      if L14_2 then
        EroInAria = false
        checkattivoRoll = false
        L14_2 = ClearPedTasks
        L15_2 = L2_2
        L14_2(L15_2)
      end
    end
    L14_2 = IsEntityInWater
    L15_2 = L2_2
    L14_2 = L14_2(L15_2)
    if not L14_2 then
      L14_2 = IsPedFalling
      L15_2 = L2_2
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = IsEntityInAir
        L15_2 = L2_2
        L14_2 = L14_2(L15_2)
        if not L14_2 then
          L14_2 = IsPedRagdoll
          L15_2 = L2_2
          L14_2 = L14_2(L15_2)
          if not L14_2 then
            L14_2 = IsPedFatallyInjured
            L15_2 = L2_2
            L14_2 = L14_2(L15_2)
            if not L14_2 then
              goto lbl_80
            end
          end
          EroInAria = false
          checkattivoRoll = false
          ::lbl_80::
          L14_2 = EroInAria
          if not L14_2 then
            goto lbl_665
          end
          L14_2 = canAirCheck
          L14_2 = L14_2()
          if L14_2 then
            L14_2 = L13_1
            L14_2 = L14_2()
            if L14_2 then
              L14_2 = IsPedRagdoll
              L15_2 = L2_2
              L14_2 = L14_2(L15_2)
              if not L14_2 then
                L14_2 = IsPedFatallyInjured
                L15_2 = L2_2
                L14_2 = L14_2(L15_2)
                if not L14_2 then
                  L14_2 = EnableFailControl
                  if L14_2 then
                    L14_2 = "get_up@directional@movement@from_knees@standard"
                    L15_2 = "getup_l_0"
                    L16_2 = HasAnimDictLoaded
                    L17_2 = L14_2
                    L16_2 = L16_2(L17_2)
                    if not L16_2 then
                      L16_2 = RequestAnimDict
                      L17_2 = L14_2
                      L16_2(L17_2)
                      while true do
                        L16_2 = HasAnimDictLoaded
                        L17_2 = L14_2
                        L16_2 = L16_2(L17_2)
                        if L16_2 then
                          break
                        end
                        L16_2 = Wait
                        L17_2 = 10
                        L16_2(L17_2)
                      end
                    end
                    L16_2 = TaskPlayAnim
                    L17_2 = L2_2
                    L18_2 = L14_2
                    L19_2 = L15_2
                    L20_2 = 3.0
                    L21_2 = 1.0
                    L22_2 = 750
                    L23_2 = 0
                    L24_2 = false
                    L25_2 = false
                    L26_2 = false
                    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                    L16_2 = CreateThread
                    function L17_2()
                      local L0_3, L1_3, L2_3, L3_3, L4_3
                      L0_3 = Wait
                      L1_3 = 25
                      L0_3(L1_3)
                      L0_3 = SetEntityAnimSpeed
                      L1_3 = L2_2
                      L2_3 = L14_2
                      L3_3 = L15_2
                      L4_3 = 2.0
                      L0_3(L1_3, L2_3, L3_3, L4_3)
                    end
                    L16_2(L17_2)
                    L16_2 = SetEntityVelocity
                    L17_2 = L2_2
                    L18_2 = vector3
                    L19_2 = 0
                    L20_2 = 0
                    L21_2 = 0
                    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2 = L18_2(L19_2, L20_2, L21_2)
                    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
                    L16_2 = onFallFunction
                    L17_2 = L2_2
                    L16_2(L17_2)
                  end
                end
              end
            end
            L14_2 = GetEntityHeading
            L15_2 = L2_2
            L14_2 = L14_2(L15_2)
            L15_2 = SetEntityRotation
            L16_2 = L2_2
            L17_2 = 0.0
            L18_2 = 0.0
            L19_2 = L14_2
            L20_2 = 2
            L21_2 = false
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L15_2 = 0.0
            L2_1 = L15_2
            L15_2 = -30
            L3_1 = L15_2
            L4_1 = L14_2
            L15_2 = IsControlPressed
            L16_2 = 0
            L17_2 = 21
            L15_2 = L15_2(L16_2, L17_2)
            if not L15_2 then
              L15_2 = IsControlPressed
              L16_2 = 0
              L17_2 = 32
              L15_2 = L15_2(L16_2, L17_2)
              if not L15_2 then
                L15_2 = IsControlPressed
                L16_2 = 0
                L17_2 = 25
                L15_2 = L15_2(L16_2, L17_2)
                if not L15_2 then
                  L15_2 = IsDisabledControlPressed
                  L16_2 = 0
                  L17_2 = 25
                  L15_2 = L15_2(L16_2, L17_2)
                  if not L15_2 then
                    L15_2 = ClearPedTasks
                    L16_2 = L2_2
                    L15_2(L16_2)
                    L15_2 = SetEntityVelocity
                    L16_2 = L2_2
                    L17_2 = 0.0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L15_2(L16_2, L17_2, L18_2, L19_2)
                  end
                end
              end
            end
            L15_2 = SetEntityHeading
            L16_2 = L2_2
            L17_2 = GetGameplayCamRot
            L18_2 = 0
            L17_2 = L17_2(L18_2)
            L17_2 = L17_2.z
            L15_2(L16_2, L17_2)
            EroInAria = false
            checkattivoRoll = false
            L15_2 = IsControlPressed
            L16_2 = 0
            L17_2 = 32
            L15_2 = L15_2(L16_2, L17_2)
            if not L15_2 then
              L15_2 = IsDisabledControlPressed
              L16_2 = 0
              L17_2 = 32
              L15_2 = L15_2(L16_2, L17_2)
              if not L15_2 then
                L15_2 = IsControlPressed
                L16_2 = 0
                L17_2 = 21
                L15_2 = L15_2(L16_2, L17_2)
                if not L15_2 then
                  L15_2 = IsDisabledControlPressed
                  L16_2 = 0
                  L17_2 = 21
                  L15_2 = L15_2(L16_2, L17_2)
                  if not L15_2 then
                    L15_2 = IsControlPressed
                    L16_2 = 0
                    L17_2 = 25
                    L15_2 = L15_2(L16_2, L17_2)
                    if not L15_2 then
                      L15_2 = IsDisabledControlPressed
                      L16_2 = 0
                      L17_2 = 25
                      L15_2 = L15_2(L16_2, L17_2)
                      if not L15_2 then
                        L15_2 = IsPedRagdoll
                        L16_2 = L2_2
                        L15_2 = L15_2(L16_2)
                        if not L15_2 then
                          L15_2 = IsPedFatallyInjured
                          L16_2 = L2_2
                          L15_2 = L15_2(L16_2)
                          if not L15_2 then
                            L15_2 = ClearPedTasks
                            L16_2 = L2_2
                            L15_2(L16_2)
                            L15_2 = ClearPedSecondaryTask
                            L16_2 = L2_2
                            L15_2(L16_2)
                            L15_2 = ClearPedTasksImmediately
                            L16_2 = L2_2
                            L15_2(L16_2)
                            L15_2 = "move_fall@beastjump"
                            L16_2 = "low_land_stand"
                            L17_2 = HasAnimDictLoaded
                            L18_2 = L15_2
                            L17_2 = L17_2(L18_2)
                            if not L17_2 then
                              L17_2 = RequestAnimDict
                              L18_2 = L15_2
                              L17_2(L18_2)
                              while true do
                                L17_2 = HasAnimDictLoaded
                                L18_2 = L15_2
                                L17_2 = L17_2(L18_2)
                                if L17_2 then
                                  break
                                end
                                L17_2 = Wait
                                L18_2 = 10
                                L17_2(L18_2)
                              end
                            end
                            L17_2 = TaskPlayAnim
                            L18_2 = L2_2
                            L19_2 = L15_2
                            L20_2 = L16_2
                            L21_2 = 3.0
                            L22_2 = 3.0
                            L23_2 = 950
                            L24_2 = 1
                            L25_2 = false
                            L26_2 = false
                            L27_2 = false
                            L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                            L17_2 = CreateThread
                            function L18_2()
                              local L0_3, L1_3, L2_3, L3_3, L4_3
                              L0_3 = Wait
                              L1_3 = 25
                              L0_3(L1_3)
                              L0_3 = SetEntityAnimSpeed
                              L1_3 = L2_2
                              L2_3 = L15_2
                              L3_3 = L16_2
                              L4_3 = 2.0
                              L0_3(L1_3, L2_3, L3_3, L4_3)
                            end
                            L17_2(L18_2)
                            L17_2 = EffectOnGround
                            if L17_2 then
                              L17_2 = IsPedRagdoll
                              L18_2 = L2_2
                              L17_2 = L17_2(L18_2)
                              if not L17_2 then
                                L17_2 = IsPedFatallyInjured
                                L18_2 = L2_2
                                L17_2 = L17_2(L18_2)
                                if not L17_2 then
                                  L17_2 = IsControlPressed
                                  L18_2 = 0
                                  L19_2 = 21
                                  L17_2 = L17_2(L18_2, L19_2)
                                  if not L17_2 then
                                    L17_2 = IsControlPressed
                                    L18_2 = 0
                                    L19_2 = 32
                                    L17_2 = L17_2(L18_2, L19_2)
                                    if not L17_2 then
                                      L17_2 = CreateThread
                                      function L18_2()
                                        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
                                        L0_3 = IsEntityPlayingAnim
                                        L1_3 = L2_2
                                        L2_3 = L15_2
                                        L3_3 = L16_2
                                        L4_3 = 1
                                        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                                        if L0_3 then
                                          L0_3 = CreateThread
                                          function L1_3()
                                            local L0_4, L1_4, L2_4, L3_4, L4_4
                                            L0_4 = GetGameTimer
                                            L0_4 = L0_4()
                                            L1_4 = 0.06
                                            while true do
                                              L1_4 = L1_4 - 1.0E-4
                                              L2_4 = 0.001
                                              if L1_4 < L2_4 then
                                                L1_4 = 0.001
                                              end
                                              L2_4 = ShakeGameplayCam
                                              L3_4 = "SMALL_EXPLOSION_SHAKE"
                                              L4_4 = L1_4
                                              L2_4(L3_4, L4_4)
                                              L2_4 = GetGameTimer
                                              L2_4 = L2_4()
                                              L2_4 = L2_4 - L0_4
                                              L3_4 = 250
                                              if L2_4 > L3_4 then
                                                L2_4 = StopGameplayCamShaking
                                                L3_4 = true
                                                L2_4(L3_4)
                                                return
                                              end
                                              L2_4 = Wait
                                              L3_4 = 75
                                              L2_4(L3_4)
                                            end
                                          end
                                          L0_3(L1_3)
                                          L0_3 = Wait
                                          L1_3 = 25
                                          L0_3(L1_3)
                                          L0_3 = IsControlPressed
                                          L1_3 = 0
                                          L2_3 = 25
                                          L0_3 = L0_3(L1_3, L2_3)
                                          if not L0_3 then
                                            L0_3 = IsDisabledControlPressed
                                            L1_3 = 0
                                            L2_3 = 25
                                            L0_3 = L0_3(L1_3, L2_3)
                                            if not L0_3 then
                                              L0_3 = IsPedOnFoot
                                              L1_3 = L2_2
                                              L0_3 = L0_3(L1_3)
                                              if L0_3 then
                                                L0_3 = IsEntityPlayingAnim
                                                L1_3 = L2_2
                                                L2_3 = "anim@zombie_walk_3"
                                                L3_3 = "zombie_walk_3_clip"
                                                L4_3 = 1
                                                L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                                                if not L0_3 then
                                                  L0_3 = IsPedFalling
                                                  L1_3 = L2_2
                                                  L0_3 = L0_3(L1_3)
                                                  if not L0_3 then
                                                    L0_3 = IsPedClimbing
                                                    L1_3 = L2_2
                                                    L0_3 = L0_3(L1_3)
                                                    if not L0_3 then
                                                      L0_3 = IsPedRagdoll
                                                      L1_3 = L2_2
                                                      L0_3 = L0_3(L1_3)
                                                      if not L0_3 then
                                                        L0_3 = IsPedJumping
                                                        L1_3 = L2_2
                                                        L0_3 = L0_3(L1_3)
                                                        if not L0_3 then
                                                          L0_3 = L8_1
                                                          if nil == L0_3 then
                                                            L0_3 = IsPedRagdoll
                                                            L1_3 = L2_2
                                                            L0_3 = L0_3(L1_3)
                                                            if not L0_3 then
                                                              L0_3 = IsPedFatallyInjured
                                                              L1_3 = L2_2
                                                              L0_3 = L0_3(L1_3)
                                                              if not L0_3 then
                                                                L0_3 = GetEntityCoords
                                                                L1_3 = L2_2
                                                                L0_3 = L0_3(L1_3)
                                                                L1_3 = vector3
                                                                L2_3 = L0_3.x
                                                                L3_3 = L0_3.y
                                                                L4_3 = L0_3.z
                                                                L4_3 = L4_3 - 1.0
                                                                L1_3 = L1_3(L2_3, L3_3, L4_3)
                                                                L2_3 = vector3
                                                                L3_3 = L0_3.x
                                                                L4_3 = L0_3.y
                                                                L5_3 = L0_3.z
                                                                L5_3 = L5_3 - 1.3
                                                                L2_3 = L2_3(L3_3, L4_3, L5_3)
                                                                L3_3 = PlayEffectSuperJump
                                                                L4_3 = "core"
                                                                L5_3 = "ent_dst_rocks_small"
                                                                L6_3 = L1_3
                                                                L7_3 = 4.5
                                                                L3_3(L4_3, L5_3, L6_3, L7_3)
                                                                L3_3 = PlayEffectSuperJump
                                                                L4_3 = "core"
                                                                L5_3 = "ent_anim_dusty_hands"
                                                                L6_3 = L1_3
                                                                L7_3 = 4.5
                                                                L3_3(L4_3, L5_3, L6_3, L7_3)
                                                                L3_3 = PlayEffectSuperJump
                                                                L4_3 = "dbz_melee_impact_Shockwave"
                                                                L5_3 = "black"
                                                                L6_3 = L2_3
                                                                L7_3 = 0.3
                                                                L3_3(L4_3, L5_3, L6_3, L7_3)
                                                                L3_3 = SetFollowPedCamViewMode
                                                                L4_3 = 4
                                                                L3_3(L4_3)
                                                                L3_3 = SetFollowPedCamViewMode
                                                                L4_3 = 2
                                                                L3_3(L4_3)
                                                                L3_3 = SetCamViewModeForContext
                                                                L4_3 = GetCamActiveViewModeContext
                                                                L4_3 = L4_3()
                                                                L5_3 = 2
                                                                L3_3(L4_3, L5_3)
                                                                L3_3 = DisableControlAction
                                                                L4_3 = 0
                                                                L5_3 = 0
                                                                L6_3 = true
                                                                L3_3(L4_3, L5_3, L6_3)
                                                                L3_3 = DisableFirstPersonCamThisFrame
                                                                L3_3()
                                                                L3_3 = Wait
                                                                L4_3 = 1500
                                                                L3_3(L4_3)
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
                                      L17_2(L18_2)
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
            else
              L15_2 = IsControlPressed
              L16_2 = 0
              L17_2 = 25
              L15_2 = L15_2(L16_2, L17_2)
              if L15_2 then
                goto lbl_665
              end
              L15_2 = IsDisabledControlPressed
              L16_2 = 0
              L17_2 = 25
              L15_2 = L15_2(L16_2, L17_2)
              if L15_2 then
                goto lbl_665
              end
              L15_2 = IsPedRagdoll
              L16_2 = L2_2
              L15_2 = L15_2(L16_2)
              if L15_2 then
                goto lbl_665
              end
              L15_2 = IsPedFatallyInjured
              L16_2 = L2_2
              L15_2 = L15_2(L16_2)
              if L15_2 then
                goto lbl_665
              end
              L15_2 = animGroundMode
              if not L15_2 then
                goto lbl_665
              end
              L15_2 = L8_1
              if nil ~= L15_2 then
                goto lbl_665
              end
              L15_2 = IsControlPressed
              L16_2 = 0
              L17_2 = 21
              L15_2 = L15_2(L16_2, L17_2)
              if L15_2 then
                goto lbl_665
              end
              L15_2 = IsPedRagdoll
              L16_2 = L2_2
              L15_2 = L15_2(L16_2)
              if L15_2 then
                goto lbl_665
              end
              L15_2 = IsPedFatallyInjured
              L16_2 = L2_2
              L15_2 = L15_2(L16_2)
              if L15_2 then
                goto lbl_665
              end
              L15_2 = ClearPedTasks
              L16_2 = L2_2
              L15_2(L16_2)
              L15_2 = ClearPedSecondaryTask
              L16_2 = L2_2
              L15_2(L16_2)
              L15_2 = ClearPedTasksImmediately
              L16_2 = L2_2
              L15_2(L16_2)
              L15_2 = "move_fall@beastjump"
              L16_2 = "low_land_run"
              L17_2 = HasAnimDictLoaded
              L18_2 = L15_2
              L17_2 = L17_2(L18_2)
              if not L17_2 then
                L17_2 = RequestAnimDict
                L18_2 = L15_2
                L17_2(L18_2)
                while true do
                  L17_2 = HasAnimDictLoaded
                  L18_2 = L15_2
                  L17_2 = L17_2(L18_2)
                  if L17_2 then
                    break
                  end
                  L17_2 = Wait
                  L18_2 = 10
                  L17_2(L18_2)
                end
              end
              L17_2 = TaskPlayAnim
              L18_2 = L2_2
              L19_2 = L15_2
              L20_2 = L16_2
              L21_2 = 3.0
              L22_2 = 3.0
              L23_2 = 700
              L24_2 = 1
              L25_2 = false
              L26_2 = false
              L27_2 = false
              L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
            end
          else
            EroInAria = false
            checkattivoRoll = false
          end
      end
    end
    else
      L14_2 = EroInAria
      if not L14_2 then
        L14_2 = sonoInAriaSuperJump
        L15_2 = L2_2
        L14_2 = L14_2(L15_2)
        if not L14_2 then
          goto lbl_665
        end
        L14_2 = IsEntityInWater
        L15_2 = L2_2
        L14_2 = L14_2(L15_2)
        if L14_2 then
          goto lbl_665
        end
        EroInAria = true
        L14_2 = DetectRoll
        L14_2()
        L14_2 = GruntFunc
        L14_2()
        L14_2 = GetEntityCoords
        L15_2 = L2_2
        L14_2 = L14_2(L15_2)
        L14_2 = L14_2.z
        L15_2 = L11_2.z
        L14_2 = L14_2 - L15_2
        L15_2 = L5_1
        if L14_2 > L15_2 then
          L14_2 = IsEntityAttached
          L15_2 = L2_2
          L14_2 = L14_2(L15_2)
          if not L14_2 then
            L14_2 = flyingAnimA
            L15_2 = HasAnimDictLoaded
            L16_2 = L14_2
            L15_2 = L15_2(L16_2)
            if not L15_2 then
              L15_2 = RequestAnimDict
              L16_2 = L14_2
              L15_2(L16_2)
              while true do
                L15_2 = HasAnimDictLoaded
                L16_2 = L14_2
                L15_2 = L15_2(L16_2)
                if L15_2 then
                  break
                end
                L15_2 = Wait
                L16_2 = 10
                L15_2(L16_2)
              end
            end
            L15_2 = TaskPlayAnim
            L16_2 = L2_2
            L17_2 = flyingAnimA
            L18_2 = flyingAnimB
            L19_2 = 3.0
            L20_2 = 1.0
            L21_2 = 4500
            L22_2 = 49
            L23_2 = false
            L24_2 = false
            L25_2 = false
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
        end
        L14_2 = GetEntityHeading
        L15_2 = L2_2
        L14_2 = L14_2(L15_2)
        L4_1 = L14_2
      else
        L14_2 = rotateInAir
        if L14_2 then
          L14_2 = 0.5
          L15_2 = IsControlPressed
          L16_2 = 0
          L17_2 = 31
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = ApplyForceToEntity
            L16_2 = L2_2
            L17_2 = 2
            L18_2 = 0.0
            L19_2 = 535.0
            L20_2 = 20.0
            L21_2 = 0.0
            L22_2 = 0.0
            L23_2 = 0.0
            L24_2 = false
            L25_2 = true
            L26_2 = true
            L27_2 = false
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
            L15_2 = L2_1
            if L15_2 >= 35.0 then
              L15_2 = 35.0
              L2_1 = L15_2
            else
              L15_2 = L2_1
              L15_2 = L15_2 + L14_2
              L2_1 = L15_2
            end
          end
          L15_2 = IsControlPressed
          L16_2 = 0
          L17_2 = 32
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = ApplyForceToEntity
            L16_2 = L2_2
            L17_2 = 2
            L18_2 = 0.0
            L19_2 = -535.0
            L20_2 = 0.0
            L21_2 = 0.0
            L22_2 = 0.0
            L23_2 = 0.0
            L24_2 = false
            L25_2 = true
            L26_2 = true
            L27_2 = false
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
            L15_2 = L2_1
            if L15_2 <= -35.0 then
              L15_2 = -35.0
              L2_1 = L15_2
            else
              L15_2 = L2_1
              L15_2 = L15_2 - L14_2
              L2_1 = L15_2
            end
          end
        end
        L14_2 = 0.2
        L15_2 = 2.0
        L16_2 = 8.0
        L17_2 = PlayerPedId
        L17_2 = L17_2()
        L18_2 = GetGameplayCamRot
        L19_2 = 2
        L18_2 = L18_2(L19_2)
        L19_2 = L12_1
        L20_2 = L18_2
        L19_2 = L19_2(L20_2)
        L20_2 = vector3
        L21_2 = L19_2.x
        L22_2 = L19_2.y
        L23_2 = 0.0
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        L19_2 = L20_2
        L20_2 = #L19_2
        L19_2 = L19_2 / L20_2
        L20_2 = GetEntityVelocity
        L21_2 = L17_2
        L20_2 = L20_2(L21_2)
        L21_2 = IsControlPressed
        L22_2 = 0
        L23_2 = 33
        L21_2 = L21_2(L22_2, L23_2)
        if L21_2 then
          L21_2 = L20_2.x
          L22_2 = L19_2.x
          L21_2 = L21_2 * L22_2
          L22_2 = L20_2.y
          L23_2 = L19_2.y
          L22_2 = L22_2 * L23_2
          L21_2 = L21_2 + L22_2
          if L21_2 > 0.0 then
            L22_2 = GetFrameTime
            L22_2 = L22_2()
            L23_2 = L16_2 * L22_2
            L24_2 = math
            L24_2 = L24_2.max
            L25_2 = L21_2 - L23_2
            L26_2 = 0.0
            L24_2 = L24_2(L25_2, L26_2)
            L25_2 = L24_2 - L21_2
            L26_2 = vector3
            L27_2 = L20_2.x
            L28_2 = L19_2.x
            L28_2 = L28_2 * L25_2
            L27_2 = L27_2 + L28_2
            L28_2 = L20_2.y
            L29_2 = L19_2.y
            L29_2 = L29_2 * L25_2
            L28_2 = L28_2 + L29_2
            L29_2 = L20_2.z
            L26_2 = L26_2(L27_2, L28_2, L29_2)
            L27_2 = SetEntityVelocity
            L28_2 = L17_2
            L29_2 = L26_2.x
            L30_2 = L26_2.y
            L31_2 = L26_2.z
            L27_2(L28_2, L29_2, L30_2, L31_2)
          end
        else
          L21_2 = L14_2
          L22_2 = IsControlPressed
          L23_2 = 0
          L24_2 = 21
          L22_2 = L22_2(L23_2, L24_2)
          if L22_2 then
            L21_2 = L21_2 * L15_2
          end
          L22_2 = ApplyForceToEntity
          L23_2 = L17_2
          L24_2 = 1
          L25_2 = L19_2.x
          L25_2 = L25_2 * L21_2
          L26_2 = L19_2.y
          L26_2 = L26_2 * L21_2
          L27_2 = 0.0
          L28_2 = 0.0
          L29_2 = 0.0
          L30_2 = 0.0
          L31_2 = 0
          L32_2 = false
          L33_2 = true
          L34_2 = true
          L35_2 = false
          L36_2 = true
          L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
        end
        L21_2 = GetEntityRotation
        L22_2 = L17_2
        L21_2 = L21_2(L22_2)
        L22_2 = SetEntityRotation
        L23_2 = L17_2
        L24_2 = L2_1
        L25_2 = L21_2.y
        L26_2 = GetGameplayCamRot
        L27_2 = 0
        L26_2 = L26_2(L27_2)
        L26_2 = L26_2.z
        L27_2 = 0
        L28_2 = false
        L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      end
    end
    ::lbl_665::
    L14_2 = DebugClimb
    if L14_2 then
      L14_2 = IsPedFalling
      L15_2 = L2_2
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = IsEntityInAir
        L15_2 = L2_2
        L14_2 = L14_2(L15_2)
        if not L14_2 then
          goto lbl_685
        end
      end
      L14_2 = vector3
      L15_2 = 0
      L16_2 = 255
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L3_2 = L14_2
      goto lbl_714
      ::lbl_685::
      L14_2 = IsEntityInWater
      L15_2 = L2_2
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = IsPedSwimming
        L15_2 = L2_2
        L14_2 = L14_2(L15_2)
        if not L14_2 then
          L14_2 = IsPedSwimmingUnderWater
          L15_2 = L2_2
          L14_2 = L14_2(L15_2)
          if not L14_2 then
            L14_2 = IsPedInAnyVehicle
            L15_2 = L2_2
            L16_2 = false
            L14_2 = L14_2(L15_2, L16_2)
            if not L14_2 then
              L14_2 = InfoWhileSuperJump
              L14_2()
            end
          end
        end
      end
      L14_2 = vector3
      L15_2 = 255
      L16_2 = 0
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L3_2 = L14_2
      ::lbl_714::
      L14_2 = DrawLine
      L15_2 = L5_2
      L16_2 = L6_2
      L17_2 = L7_2 + 1.0
      L18_2 = L11_2.x
      L19_2 = L11_2.y
      L20_2 = L11_2.z
      L20_2 = L20_2 + 0.3
      L21_2 = L3_2
      L22_2 = 255
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L14_2 = DrawMarker
      L15_2 = 28
      L16_2 = L11_2.x
      L17_2 = L11_2.y
      L18_2 = L11_2.z
      L18_2 = L18_2 + 0.1
      L19_2 = 0
      L20_2 = 0
      L21_2 = 0
      L22_2 = 0
      L23_2 = 0
      L24_2 = 0
      L25_2 = 0.1
      L26_2 = 0.1
      L27_2 = 0.1
      L28_2 = L3_2
      L29_2 = 255
      L30_2 = false
      L31_2 = false
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    end
    L14_2 = GetEntityForwardVector
    L15_2 = A0_2
    L14_2 = L14_2(L15_2)
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetEntityCoords
    L17_2 = A0_2
    L16_2 = L16_2(L17_2)
    L17_2 = L14_2 * 5.0
    L16_2 = L16_2 + L17_2
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    L18_2 = GetEntityBonePosition_2
    L19_2 = L2_2
    L20_2 = GetPedBoneIndex
    L21_2 = L2_2
    L22_2 = 35731
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2 = L20_2(L21_2, L22_2)
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
    L19_2 = GetShapeTestResult
    L20_2 = StartShapeTestRay
    L21_2 = L18_2.x
    L22_2 = L18_2.y
    L23_2 = L18_2.z
    L24_2 = L15_2
    L25_2 = L16_2
    L26_2 = L17_2
    L27_2 = L8_2
    L28_2 = A0_2
    L29_2 = 1
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L19_2, L20_2, L21_2, L22_2, L23_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
    L24_2 = L11_1
    L24_2 = L24_2()
    if L24_2 then
      L25_2 = IsEntityInWater
      L26_2 = L2_2
      L25_2 = L25_2(L26_2)
      if not L25_2 then
        if L20_2 and L21_2 then
          L25_2 = GetEntityCoords
          L26_2 = L2_2
          L25_2 = L25_2(L26_2)
          L25_2 = L25_2 - L21_2
          L25_2 = #L25_2
          if L25_2 < 3.0 then
            L25_2 = GetEntityCoords
            L26_2 = L2_2
            L25_2 = L25_2(L26_2)
            L25_2 = L25_2.z
            L26_2 = L11_2.z
            L25_2 = L25_2 - L26_2
            L26_2 = 2.5
            if L25_2 > L26_2 then
              L25_2 = DebugClimb
              if L25_2 then
                L25_2 = DrawLine
                L26_2 = L18_2.x
                L27_2 = L18_2.y
                L28_2 = L18_2.z
                L29_2 = L21_2.x
                L30_2 = L21_2.y
                L31_2 = L21_2.z
                L32_2 = 255
                L33_2 = 255
                L34_2 = 255
                L35_2 = 255
                L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
                L25_2 = DrawMarker
                L26_2 = 28
                L27_2 = L21_2.x
                L28_2 = L21_2.y
                L29_2 = L21_2.z
                L30_2 = 0
                L31_2 = 0
                L32_2 = 0
                L33_2 = 0
                L34_2 = 0
                L35_2 = 0
                L36_2 = 0.1
                L37_2 = 0.1
                L38_2 = 0.1
                L39_2 = 255
                L40_2 = 255
                L41_2 = 255
                L42_2 = 255
                L43_2 = false
                L44_2 = false
                L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
              end
              L25_2 = InfoWhileGrab
              L25_2()
              L25_2 = IsEntityPlayingAnim
              L26_2 = L2_2
              L27_2 = "anim@zombie_walk_3"
              L28_2 = "zombie_walk_3_clip"
              L29_2 = 1
              L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
              if not L25_2 then
                L25_2 = GrabAnimClimb
                L25_2()
              else
                L25_2 = ApplyForceToEntityCenterOfMass
                L26_2 = L2_2
                L27_2 = 0
                L28_2 = 0.0
                L29_2 = 0.1 * A1_2
                L30_2 = 0.0
                L31_2 = true
                L32_2 = true
                L33_2 = false
                L34_2 = true
                L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
              end
              L25_2 = GetEntityCoords
              L26_2 = L2_2
              L25_2 = L25_2(L26_2)
              L26_2 = StartShapeTestRay
              L27_2 = L18_2.x
              L28_2 = L18_2.y
              L29_2 = L18_2.z
              L30_2 = L15_2
              L31_2 = L16_2
              L32_2 = L17_2
              L33_2 = 17
              L34_2 = L2_2
              L35_2 = 7
              L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
              L27_2 = GetShapeTestResultIncludingMaterial
              L28_2 = L26_2
              L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L27_2(L28_2)
              L33_2 = IsDisabledControlJustPressed
              L34_2 = 0
              L35_2 = KeyToStartClimb
              L33_2 = L33_2(L34_2, L35_2)
              if L33_2 then
                L33_2 = L7_1
                if nil == L33_2 then
                  L33_2 = L8_1
                  if nil == L33_2 then
                    L33_2 = GetEntityCoords
                    L34_2 = L2_2
                    L33_2 = L33_2(L34_2)
                    L33_2 = L33_2 - L21_2
                    L33_2 = #L33_2
                    if L33_2 < 3.0 then
                      L33_2 = IsEntityPlayingAnim
                      L34_2 = L2_2
                      L35_2 = "get_up@directional@movement@from_knees@standard"
                      L36_2 = "getup_l_0"
                      L37_2 = 1
                      L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2)
                      if not L33_2 then
                        L33_2 = SetEntityVelocity
                        L34_2 = L2_2
                        L35_2 = vector3
                        L36_2 = 0
                        L37_2 = 0
                        L38_2 = 0
                        L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2 = L35_2(L36_2, L37_2, L38_2)
                        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
                        L33_2 = attivaClimb
                        L34_2 = L31_2
                        L35_2 = L21_2
                        L33_2(L34_2, L35_2)
                        L33_2 = Wait
                        L34_2 = 250 * A1_2
                        L33_2(L34_2)
                      end
                    end
                  end
                end
              end
          end
        end
        else
          L25_2 = IsEntityInWater
          L26_2 = L2_2
          L25_2 = L25_2(L26_2)
          if not L25_2 then
            L25_2 = GetEntityCoords
            L26_2 = L2_2
            L25_2 = L25_2(L26_2)
            L25_2 = L25_2.z
            L26_2 = L11_2.z
            L25_2 = L25_2 - L26_2
            L26_2 = 2.5
            if L25_2 > L26_2 then
              L25_2 = IsEntityPlayingAnim
              L26_2 = L2_2
              L27_2 = "sefiro_climb_idlestatic"
              L28_2 = "sefiro_climb_idlestatic_clip"
              L29_2 = 1
              L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
              if L25_2 then
                L25_2 = IsPedFalling
                L26_2 = L2_2
                L25_2 = L25_2(L26_2)
                if L25_2 then
                  L25_2 = IsPedOnFoot
                  L26_2 = L2_2
                  L25_2 = L25_2(L26_2)
                  if not L25_2 then
                    goto lbl_971
                  end
                end
                L25_2 = ClearPedTasks
                L26_2 = L2_2
                L25_2(L26_2)
              end
              ::lbl_971::
              L25_2 = IsEntityPlayingAnim
              L26_2 = L2_2
              L27_2 = "anim@zombie_walk_3"
              L28_2 = "zombie_walk_3_clip"
              L29_2 = 1
              L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
              if not L25_2 then
                goto lbl_1034
              end
              L25_2 = flyingAnimA
              L26_2 = HasAnimDictLoaded
              L27_2 = L25_2
              L26_2 = L26_2(L27_2)
              if not L26_2 then
                L26_2 = RequestAnimDict
                L27_2 = L25_2
                L26_2(L27_2)
                while true do
                  L26_2 = HasAnimDictLoaded
                  L27_2 = L25_2
                  L26_2 = L26_2(L27_2)
                  if L26_2 then
                    break
                  end
                  L26_2 = Wait
                  L27_2 = 10
                  L26_2(L27_2)
                end
              end
              L26_2 = TaskPlayAnim
              L27_2 = L2_2
              L28_2 = flyingAnimA
              L29_2 = flyingAnimB
              L30_2 = 3.0
              L31_2 = 1.0
              L32_2 = 4500
              L33_2 = 49
              L34_2 = false
              L35_2 = false
              L36_2 = false
              L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
            else
              L25_2 = IsPedOnFoot
              L26_2 = L2_2
              L25_2 = L25_2(L26_2)
              if L25_2 then
                L25_2 = IsEntityPlayingAnim
                L26_2 = L2_2
                L27_2 = "anim@zombie_walk_3"
                L28_2 = "zombie_walk_3_clip"
                L29_2 = 1
                L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
                if not L25_2 then
                  L25_2 = IsEntityPlayingAnim
                  L26_2 = L2_2
                  L27_2 = "sefiro_climb_idlestatic"
                  L28_2 = "sefiro_climb_idlestatic_clip"
                  L29_2 = 1
                  L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
                  if not L25_2 then
                    goto lbl_1034
                  end
                end
                L25_2 = ClearPedTasks
                L26_2 = L2_2
                L25_2(L26_2)
              end
            end
          end
        end
      end
    end
  end
  ::lbl_1034::
end
L15_1 = exports
L16_1 = "inclimbmode"
function L17_1()
  local L0_2, L1_2
  L0_2 = L7_1
  if nil == L0_2 then
    L0_2 = false
    return L0_2
  else
    L0_2 = true
    return L0_2
  end
end
L15_1(L16_1, L17_1)
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L7_1
  if nil ~= L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = DetachEntity
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = SetEntityAsMissionEntity
    L2_2 = L7_1
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = DeleteEntity
    L2_2 = L7_1
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 8
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 54
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetPlayerFallDistance
    L2_2 = PlayerId
    L2_2 = L2_2()
    L3_2 = 1000.0
    L1_2(L2_2, L3_2)
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 164
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 160
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    Spostato = false
    L1_2 = Wait
    L2_2 = 150
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
  end
end
StaccamiDaClimb = L15_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2
  L0_2 = DebugClimb
  if L0_2 then
    L0_2 = 511
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetEntityForwardVector
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = table
    L3_2 = L3_2.unpack
    L4_2 = GetEntityCoords
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = L2_2 * 2.0
    L4_2 = L4_2 + L5_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L6_2 = GetEntityBonePosition_2
    L7_2 = L1_2
    L8_2 = GetPedBoneIndex
    L9_2 = L1_2
    L10_2 = 57005
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
    L7_2 = GetShapeTestResult
    L8_2 = StartShapeTestRay
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L12_2 = L3_2
    L13_2 = L4_2
    L14_2 = L5_2
    L15_2 = L0_2
    L16_2 = L1_2
    L17_2 = 1
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
    L12_2 = table
    L12_2 = L12_2.unpack
    L13_2 = GetEntityCoords
    L14_2 = L1_2
    L13_2 = L13_2(L14_2)
    L14_2 = L2_2 * 2.0
    L13_2 = L13_2 + L14_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L15_2 = GetEntityBonePosition_2
    L16_2 = L1_2
    L17_2 = GetPedBoneIndex
    L18_2 = L1_2
    L19_2 = 18905
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L17_2(L18_2, L19_2)
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
    L16_2 = GetShapeTestResult
    L17_2 = StartShapeTestRay
    L18_2 = L15_2.x
    L19_2 = L15_2.y
    L20_2 = L15_2.z
    L21_2 = L12_2
    L22_2 = L13_2
    L23_2 = L14_2
    L24_2 = L0_2
    L25_2 = L1_2
    L26_2 = 1
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
    if L8_2 and L9_2 then
      L21_2 = GetEntityCoords
      L22_2 = L1_2
      L21_2 = L21_2(L22_2)
      L21_2 = L21_2 - L9_2
      L21_2 = #L21_2
      if L21_2 < 3.0 then
        L21_2 = DrawLine
        L22_2 = L6_2.x
        L23_2 = L6_2.y
        L24_2 = L6_2.z
        L25_2 = L9_2.x
        L26_2 = L9_2.y
        L27_2 = L9_2.z
        L28_2 = 255
        L29_2 = 255
        L30_2 = 255
        L31_2 = 255
        L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        L21_2 = DrawMarker
        L22_2 = 28
        L23_2 = L9_2.x
        L24_2 = L9_2.y
        L25_2 = L9_2.z
        L26_2 = 0
        L27_2 = 0
        L28_2 = 0
        L29_2 = 0
        L30_2 = 0
        L31_2 = 0
        L32_2 = 0.1
        L33_2 = 0.1
        L34_2 = 0.1
        L35_2 = 255
        L36_2 = 0
        L37_2 = 0
        L38_2 = 255
        L39_2 = false
        L40_2 = false
        L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
      end
    end
    if L17_2 and L18_2 then
      L21_2 = GetEntityCoords
      L22_2 = L1_2
      L21_2 = L21_2(L22_2)
      L21_2 = L21_2 - L18_2
      L21_2 = #L21_2
      if L21_2 < 3.0 then
        L21_2 = DrawLine
        L22_2 = L15_2.x
        L23_2 = L15_2.y
        L24_2 = L15_2.z
        L25_2 = L18_2.x
        L26_2 = L18_2.y
        L27_2 = L18_2.z
        L28_2 = 255
        L29_2 = 255
        L30_2 = 255
        L31_2 = 255
        L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        L21_2 = DrawMarker
        L22_2 = 28
        L23_2 = L18_2.x
        L24_2 = L18_2.y
        L25_2 = L18_2.z
        L26_2 = 0
        L27_2 = 0
        L28_2 = 0
        L29_2 = 0
        L30_2 = 0
        L31_2 = 0
        L32_2 = 0.1
        L33_2 = 0.1
        L34_2 = 0.1
        L35_2 = 0
        L36_2 = 0
        L37_2 = 255
        L38_2 = 255
        L39_2 = false
        L40_2 = false
        L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
      end
    end
    if L8_2 and L9_2 then
      L21_2 = GetEntityCoords
      L22_2 = L1_2
      L21_2 = L21_2(L22_2)
      L21_2 = L21_2 - L9_2
      L21_2 = #L21_2
      if L21_2 < 3.0 and L17_2 and L18_2 then
        L21_2 = GetEntityCoords
        L22_2 = L1_2
        L21_2 = L21_2(L22_2)
        L21_2 = L21_2 - L18_2
        L21_2 = #L21_2
        if L21_2 < 3.0 then
          L21_2 = GetEntityBonePosition_2
          L22_2 = L1_2
          L23_2 = GetPedBoneIndex
          L24_2 = L1_2
          L25_2 = 35731
          L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L23_2(L24_2, L25_2)
          L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          L22_2 = GetShapeTestResult
          L23_2 = StartShapeTestRay
          L24_2 = L21_2.x
          L25_2 = L21_2.y
          L26_2 = L21_2.z
          L27_2 = x2
          L28_2 = y2
          L29_2 = z2
          L30_2 = L0_2
          L31_2 = L1_2
          L32_2 = 1
          L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
          L22_2, L23_2, L24_2, L25_2, L26_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          L27_2 = DrawLine
          L28_2 = L21_2.x
          L29_2 = L21_2.y
          L30_2 = L21_2.z
          L31_2 = L24_2.x
          L32_2 = L24_2.y
          L33_2 = L24_2.z
          L34_2 = 255
          L35_2 = 255
          L36_2 = 255
          L37_2 = 255
          L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
          L27_2 = DrawMarker
          L28_2 = 28
          L29_2 = L24_2.x
          L30_2 = L24_2.y
          L31_2 = L24_2.z
          L32_2 = 0
          L33_2 = 0
          L34_2 = 0
          L35_2 = 0
          L36_2 = 0
          L37_2 = 0
          L38_2 = 0.1
          L39_2 = 0.1
          L40_2 = 0.1
          L41_2 = 255
          L42_2 = 255
          L43_2 = 255
          L44_2 = 255
          L45_2 = false
          L46_2 = false
          L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          L27_2 = vector3
          L28_2 = L6_2.x
          L29_2 = L6_2.y
          L30_2 = L6_2.z
          L27_2 = L27_2(L28_2, L29_2, L30_2)
          L27_2 = L27_2 - L9_2
          L27_2 = #L27_2
          L28_2 = vector3
          L29_2 = L15_2.x
          L30_2 = L15_2.y
          L31_2 = L15_2.z
          L28_2 = L28_2(L29_2, L30_2, L31_2)
          L28_2 = L28_2 - L18_2
          L28_2 = #L28_2
          L29_2 = math
          L29_2 = L29_2.abs
          L30_2 = roundClimb
          L31_2 = L27_2 - L28_2
          L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L30_2(L31_2)
          L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          L30_2 = 0.03
          if L29_2 > L30_2 then
            L29_2 = GetEntityHeading
            L30_2 = L7_1
            L29_2 = L29_2(L30_2)
            if L27_2 > L28_2 then
              L30_2 = SetEntityHeading
              L31_2 = L7_1
              L32_2 = L29_2 + 3
              L30_2(L31_2, L32_2)
            end
            L30_2 = roundClimb
            L31_2 = L28_2
            L30_2 = L30_2(L31_2)
            if L30_2 > 1.0 then
              L30_2 = SetEntityHeading
              L31_2 = L7_1
              L32_2 = L29_2 + 3
              L30_2(L31_2, L32_2)
            else
              if not (L27_2 < L28_2) then
                L30_2 = roundClimb
                L31_2 = L27_2
                L30_2 = L30_2(L31_2)
              end
              if L30_2 > 1.0 then
                L30_2 = SetEntityHeading
                L31_2 = L7_1
                L32_2 = L29_2 - 3
                L30_2(L31_2, L32_2)
              end
            end
          else
            L29_2 = Spostato
            if not L29_2 then
              Spostato = true
              L29_2 = DetachEntity
              L30_2 = L1_2
              L29_2(L30_2)
              L29_2 = AttachEntityToEntity
              L30_2 = L1_2
              L31_2 = L7_1
              L32_2 = -1
              L33_2 = 0.0
              L34_2 = -0.7
              L35_2 = 0.0
              L36_2 = 0.0
              L37_2 = 0.0
              L38_2 = 0.0
              L39_2 = false
              L40_2 = true
              L41_2 = true
              L42_2 = true
              L43_2 = 1
              L44_2 = true
              L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
              L29_2 = Wait
              L30_2 = 250
              L29_2(L30_2)
            end
          end
      end
    end
    else
      L21_2 = true
      L10_1 = L21_2
    end
  end
end
DebugClimbSystem = L15_1
L15_1 = RegisterNetEvent
L16_1 = "SuperJumpClient"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "SuperJumpClient"
function L17_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = AttivaSuperJump
    L1_2()
  else
    L1_2 = StopSuperJump
    L1_2()
  end
end
L15_1(L16_1, L17_1)
L15_1 = false
L16_1 = 0.0
L17_1 = 0.0
L18_1 = 0.0
L19_1 = 0
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsPedInAnyVehicle
  L2_2 = A0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = IsEntityInAir
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = IsPedFalling
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedInParachuteFreeFall
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_35
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_35::
  L1_2 = IsPedJumping
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsTaskMoveNetworkActive
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = GetTaskMoveNetworkState
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 and "" ~= L1_2 then
    return L1_2
  end
  L2_2 = nil
  return L2_2
end
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = false
  L3_2 = IsControlPressed
  L4_2 = 0
  L5_2 = 25
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = IsDisabledControlPressed
    L4_2 = 0
    L5_2 = 25
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      goto lbl_15
    end
  end
  L2_2 = true
  ::lbl_15::
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
      goto lbl_28
    end
  end
  L2_2 = true
  ::lbl_28::
  if L2_2 then
    L3_2 = PlaySoundFrontend
    L4_2 = -1
    L5_2 = "Grab_Parachute"
    L6_2 = "BASEJUMPS_SOUNDS"
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = ClearPedSecondaryTask
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = ClearPedTasks
    L4_2 = A0_2
    L3_2(L4_2)
  end
end
checkattivoRoll = false
function L23_1()
  local L0_2, L1_2
  L0_2 = checkattivoRoll
  if L0_2 then
    return
  end
  checkattivoRoll = true
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    while true do
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsPedFatallyInjured
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        return
      else
        L1_3 = table
        L1_3 = L1_3.unpack
        L2_3 = GetEntityVelocity
        L3_3 = L0_3
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L2_3(L3_3)
        L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L4_3 = math
        L4_3 = L4_3.sqrt
        L5_3 = L1_3 * L1_3
        L6_3 = L2_3 * L2_3
        L5_3 = L5_3 + L6_3
        L4_3 = L4_3(L5_3)
        L5_3 = GetEntityHeightAboveGround
        L6_3 = L0_3
        L5_3 = L5_3(L6_3)
        L6_3 = L20_1
        L7_3 = L0_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L7_3 = L15_1
          if not L7_3 then
            L7_3 = GetGameTimer
            L7_3 = L7_3()
            L19_1 = L7_3
          end
          L7_3 = true
          L15_1 = L7_3
          L16_1 = L3_3
          L17_1 = L4_3
          L18_1 = L5_3
        else
          L7_3 = L15_1
          if L7_3 then
            L7_3 = GetGameTimer
            L7_3 = L7_3()
            L8_3 = L19_1
            if not L8_3 then
              L8_3 = L7_3
            end
            L8_3 = L7_3 - L8_3
            L9_3 = L16_1
            L10_3 = -2.2
            L9_3 = L9_3 < L10_3
            L10_3 = L17_1
            L11_3 = 1.2
            L10_3 = L10_3 > L11_3
            L11_3 = L18_1
            if not L11_3 then
              L11_3 = 0.0
            end
            L11_3 = L11_3 > 1.0
            L12_3 = 250
            L12_3 = L8_3 > L12_3
            if L9_3 and L10_3 and (L11_3 or L12_3) then
              L13_3 = false
              L14_3 = L7_3 + 10
              repeat
                L15_3 = IsPedRagdoll
                L16_3 = L0_3
                L15_3 = L15_3(L16_3)
                if L15_3 then
                  L13_3 = true
                  break
                end
                L15_3 = L21_1
                L16_3 = L0_3
                L15_3 = L15_3(L16_3)
                if L15_3 then
                  L17_3 = L15_3
                  L16_3 = L15_3.lower
                  L16_3 = L16_3(L17_3)
                  L17_3 = L16_3
                  L16_3 = L16_3.find
                  L18_3 = "roll"
                  L16_3 = L16_3(L17_3, L18_3)
                  if L16_3 then
                    L13_3 = true
                    break
                  end
                end
                L16_3 = Wait
                L17_3 = 0
                L16_3(L17_3)
                L16_3 = GetGameTimer
                L16_3 = L16_3()
              until L14_3 <= L16_3
              if L13_3 then
                L15_3 = L22_1
                L16_3 = L0_3
                L17_3 = {}
                L18_3 = L16_1
                L17_3.vz = L18_3
                L18_3 = L17_1
                L17_3.hspeed = L18_3
                L15_3(L16_3, L17_3)
                checkattivoRoll = false
                return
              else
                L15_3 = L22_1
                L16_3 = L0_3
                L17_3 = {}
                L18_3 = L16_1
                L17_3.vz = L18_3
                L18_3 = L17_1
                L17_3.hspeed = L18_3
                L15_3(L16_3, L17_3)
                checkattivoRoll = false
                return
              end
            end
            L13_3 = false
            L15_1 = L13_3
          end
        end
        L7_3 = Wait
        L8_3 = 0
        L7_3(L8_3)
      end
    end
  end
  L0_2(L1_2)
end
DetectRoll = L23_1
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if 0 == L0_2 then
    return
  end
  L1_2 = IsPedInAnyVehicle
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsEntityAttached
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedFatallyInjured
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsEntityVisible
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = SuperJump
          if L1_2 then
            return
          end
          SuperJump = true
          L1_2 = GruntFunc
          L1_2()
          L1_2 = faiAnim
          L2_2 = "rcmfanatic1"
          L3_2 = "base"
          L4_2 = 450
          L5_2 = 49
          L1_2(L2_2, L3_2, L4_2, L5_2)
          L1_2 = SetPedConfigFlag
          L2_2 = L0_2
          L3_2 = 8
          L4_2 = true
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = SetPedConfigFlag
          L2_2 = L0_2
          L3_2 = 54
          L4_2 = true
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = SetPedConfigFlag
          L2_2 = L0_2
          L3_2 = 164
          L4_2 = true
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = SetPedConfigFlag
          L2_2 = L0_2
          L3_2 = 160
          L4_2 = true
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = SetPlayerFallDistance
          L2_2 = PlayerId
          L2_2 = L2_2()
          L3_2 = 1000.0
          L1_2(L2_2, L3_2)
          L1_2 = StartEffectOnSuperJump
          L1_2()
          L1_2 = CreateThread
          function L2_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            while true do
              L1_3 = SuperJump
              if not L1_3 then
                break
              end
              L1_3 = Wait
              L2_3 = 0
              L1_3(L2_3)
              L1_3 = PlayerPedId
              L1_3 = L1_3()
              if 0 == L1_3 then
                L2_3 = StopSuperJump
                L2_3()
                return
              end
              L2_3 = GetGameTimer
              L2_3 = L2_3()
              L3_3 = L2_3 - L0_3
              L3_3 = L3_3 / 1000.0
              L0_3 = L2_3
              L3_3 = L3_3 * 80.0
              L4_3 = L7_1
              if nil == L4_3 then
                L4_3 = IsPedInAnyVehicle
                L5_3 = L1_3
                L6_3 = false
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = IsPlayerClimbing
                  L5_3 = PlayerId
                  L5_3, L6_3 = L5_3()
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsPedClimbing
                    L5_3 = L1_3
                    L4_3 = L4_3(L5_3)
                    if not L4_3 then
                      L4_3 = SuperJump
                      if L4_3 then
                        L4_3 = IsPedFatallyInjured
                        L5_3 = L1_3
                        L4_3 = L4_3(L5_3)
                        if not L4_3 then
                          goto lbl_56
                        end
                      end
                      L4_3 = StopSuperJump
                      L4_3()
                      do return end
                      ::lbl_56::
                      L4_3 = SetSuperJumpThisFrame
                      L5_3 = PlayerId
                      L5_3, L6_3 = L5_3()
                      L4_3(L5_3, L6_3)
                      L4_3 = IsPedRagdoll
                      L5_3 = L1_3
                      L4_3 = L4_3(L5_3)
                      if not L4_3 then
                        L4_3 = IsPedFatallyInjured
                        L5_3 = L1_3
                        L4_3 = L4_3(L5_3)
                        if not L4_3 then
                          L4_3 = L14_1
                          L5_3 = L1_3
                          L6_3 = L3_3
                          L4_3(L5_3, L6_3)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          L1_2(L2_2)
        end
      end
    end
  end
end
AttivaSuperJump = L23_1
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SuperJump
  if not L0_2 then
    return
  end
  SuperJump = false
  EroInAria = false
  checkattivoRoll = false
  L0_2 = StaccamiDaClimb
  L0_2()
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if 0 ~= L0_2 then
    L1_2 = IsEntityAttached
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = ClearPedTasks
      L2_2 = L0_2
      L1_2(L2_2)
    end
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 8
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 54
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 160
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = ClearPedSecondaryTask
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
  end
  L1_2 = SetPlayerFallDistance
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = 8.0
  L1_2(L2_2, L3_2)
  L1_2 = onSuperJumpStop
  L1_2()
end
StopSuperJump = L23_1
L23_1 = AddEventHandler
L24_1 = "onResourceStop"
function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L7_1
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L7_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L7_1
      L1_2(L2_2)
      L1_2 = nil
      L7_1 = L1_2
    end
    L1_2 = L8_1
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L8_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L8_1
      L1_2(L2_2)
      L1_2 = nil
      L8_1 = L1_2
    end
  end
end
L23_1(L24_1, L25_1)
