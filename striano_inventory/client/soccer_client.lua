local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2
  L3_2 = HasAnimDictLoaded
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = RequestAnimDict
    L4_2 = L2_2
    L3_2(L4_2)
    while true do
      L3_2 = HasAnimDictLoaded
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 10
      L3_2(L4_2)
    end
  end
end
LoadAnim = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = "scr_rcbarry2"
  L2_2 = "scr_exp_clown_trails"
  L3_2 = _ENV
  L4_2 = "StartNetworkedParticleFxNonLoopedOnEntity"
  L3_2 = L3_2[L4_2]
  L4_2 = RequestNamedPtfxAsset
  L5_2 = L1_2
  L4_2(L5_2)
  while true do
    L4_2 = HasNamedPtfxAssetLoaded
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = vector3
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = rot
  if L5_2 then
    L4_2 = rot
  end
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = L3_2
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = 0.0
  L9_2 = 0.3
  L10_2 = 0.0
  L11_2 = L4_2
  L12_2 = 0.4
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
ArrowFX = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = faiAnim
  L2_2 = "gestures@f@standing@casual"
  L3_2 = "gesture_point"
  L4_2 = 650
  L5_2 = 49
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetEntityAnimSpeed
  L2_2 = A0_2
  L3_2 = "gestures@f@standing@casual"
  L4_2 = "gesture_point"
  L5_2 = 1.3
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
epunta = L0_1
L0_1 = 0
L1_1 = false
L2_1 = false
L3_1 = 500
L4_1 = 100.0
L5_1 = false
L6_1 = "melee@ghost@fixed5@state_of_decay2@standard_animations"
L7_1 = "gt_fixed5_sod_combat_low_forward_kick_player_clip"
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2 - A1_2
  L2_2 = L2_2 + 180.0
  L2_2 = L2_2 % 360.0
  L2_2 = L2_2 - 180.0
  return L2_2
end
AngleDiff = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = RequestAnimDict
  L5_2 = A0_2
  L4_2(L5_2)
  while true do
    L4_2 = HasAnimDictLoaded
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = IsEntityPlayingAnim
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = TaskPlayAnim
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = 3.0
    L9_2 = 7.0
    L10_2 = A2_2 or L10_2
    if not A2_2 then
      L10_2 = -1
    end
    L11_2 = A3_2 or L11_2
    if not A3_2 then
      L11_2 = 1
    end
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
faiAnim = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A0_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    A0_2 = L1_2
  end
  L1_2 = 0.0
  L2_2 = 0.0
  L3_2 = IsControlPressed
  L4_2 = 0
  L5_2 = 32
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2 = L2_2 + 1.0
  end
  L3_2 = IsControlPressed
  L4_2 = 0
  L5_2 = 33
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2 = L2_2 - 0.5
  end
  L3_2 = IsControlPressed
  L4_2 = 0
  L5_2 = 34
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L1_2 = L1_2 - 1.0
  end
  L3_2 = IsControlPressed
  L4_2 = 0
  L5_2 = 35
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L1_2 = L1_2 + 1.0
  end
  if 0.0 == L1_2 and 0.0 == L2_2 then
    L2_2 = 1.0
  end
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = GetEntityHeading
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = -L4_2
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = L4_2 * L2_2
  L9_2 = L6_2 * L1_2
  L8_2 = L8_2 + L9_2
  L9_2 = L5_2 * L2_2
  L10_2 = L7_2 * L1_2
  L9_2 = L9_2 + L10_2
  L10_2 = math
  L10_2 = L10_2.sqrt
  L11_2 = L8_2 * L8_2
  L12_2 = L9_2 * L9_2
  L11_2 = L11_2 + L12_2
  L10_2 = L10_2(L11_2)
  L11_2 = vector3
  L12_2 = L8_2 / L10_2
  L13_2 = L9_2 / L10_2
  L14_2 = 0.0
  return L11_2(L12_2, L13_2, L14_2)
end
GetWASDDirection = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = GetWASDDirection
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  if not L1_2 then
    return
  end
  L2_2 = SetEntityVelocity
  L3_2 = A0_2
  L4_2 = L1_2.x
  L4_2 = L4_2 * 4.0
  L5_2 = L1_2.y
  L5_2 = L5_2 * 4.0
  L6_2 = 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
PushBallWASD = L8_1
SoccerBall = nil
L8_1 = -1005934266
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = SoccerBall
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = SoccerBall
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = SoccerBall
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeleteEntity
      L1_2 = SoccerBall
      L0_2(L1_2)
      SoccerBall = nil
      return
    end
  end
  L0_2 = RequestModel
  L1_2 = L8_1
  L0_2(L1_2)
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L0_2 = L0_2 + 3000
  while true do
    L1_2 = HasModelLoaded
    L2_2 = L8_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    if not (L0_2 > L1_2) then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = HasModelLoaded
  L2_2 = L8_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = print
    L2_2 = "^1[SOCCER] Impossibile caricare la palla^7"
    L1_2(L2_2)
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * 0.9
  L5_2 = L5_2 + L6_2
  L6_2 = L2_2.y
  L7_2 = L3_2.y
  L7_2 = L7_2 * 0.9
  L6_2 = L6_2 + L7_2
  L7_2 = L2_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = CreateObject
  L6_2 = L8_1
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = true
  L11_2 = true
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  SoccerBall = L5_2
  L5_2 = SetEntityAsMissionEntity
  L6_2 = SoccerBall
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityDynamic
  L6_2 = SoccerBall
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = ActivatePhysics
  L6_2 = SoccerBall
  L5_2(L6_2)
  L5_2 = SetEntityLodDist
  L6_2 = SoccerBall
  L7_2 = 65535
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityDynamic
  L6_2 = SoccerBall
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityHasGravity
  L6_2 = SoccerBall
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = FreezeEntityPosition
  L6_2 = SoccerBall
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = L8_1
  L5_2(L6_2)
end
SpawnSoccerBall = L9_1
L9_1 = RegisterCommand
L10_1 = "ball"
function L11_1()
  local L0_2, L1_2
  L0_2 = SpawnSoccerBall
  L0_2()
  L0_2 = StartSoccer
  L0_2()
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "SpawnBallSoccer"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "SpawnBallSoccer"
function L11_1()
  local L0_2, L1_2
  L0_2 = SpawnSoccerBall
  L0_2()
  L0_2 = StartSoccer
  L0_2()
end
L9_1(L10_1, L11_1)
L9_1 = 0
function L10_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 then
    return
  end
  L0_2 = true
  L1_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = L1_1
      if not L0_3 then
        break
      end
      L0_3 = SoccerBall
      if nil == L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = SoccerBall
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityCoords
      L3_3 = SoccerBall
      L2_3 = L2_3(L3_3)
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 < 15.0 then
        L1_3 = RestorePlayerStamina
        L2_3 = PlayerId
        L2_3 = L2_3()
        L3_3 = 1.0
        L1_3(L2_3, L3_3)
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 24
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 25
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 44
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = L5_1
        if L1_3 then
          L1_3 = DisableControlAction
          L2_3 = 0
          L3_3 = 1
          L4_3 = true
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = DisableControlAction
          L2_3 = 0
          L3_3 = 2
          L4_3 = true
          L1_3(L2_3, L3_3, L4_3)
        end
        L1_3 = SetPedMoveRateOverride
        L2_3 = L0_3
        L3_3 = 1.4
        L1_3(L2_3, L3_3)
        L1_3 = SetEntityNoCollisionEntity
        L2_3 = SoccerBall
        L3_3 = L0_3
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = SetEntityNoCollisionEntity
        L2_3 = L0_3
        L3_3 = SoccerBall
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
      end
    end
  end
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = L1_1
      if not L0_3 then
        break
      end
      L0_3 = SoccerBall
      if nil == L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = SoccerBall
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 44
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L5_1
        if not L1_3 then
          L1_3 = GetGameTimer
          L1_3 = L1_3()
          L2_3 = L9_1
          L2_3 = L1_3 - L2_3
          L3_3 = 500
          if L2_3 >= L3_3 then
            L9_1 = L1_3
            L2_3 = GetEntityCoords
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            L3_3 = GetEntityForwardVector
            L4_3 = L0_3
            L3_3 = L3_3(L4_3)
            L4_3 = vector3
            L5_3 = L2_3.x
            L6_3 = L3_3.x
            L6_3 = L6_3 * 0.9
            L5_3 = L5_3 + L6_3
            L6_3 = L2_3.y
            L7_3 = L3_3.y
            L7_3 = L7_3 * 0.9
            L6_3 = L6_3 + L7_3
            L7_3 = L2_3.z
            L7_3 = L7_3 - 0.9
            L4_3 = L4_3(L5_3, L6_3, L7_3)
            L5_3 = SetEntityVelocity
            L6_3 = SoccerBall
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L5_3(L6_3, L7_3, L8_3, L9_3)
            L5_3 = SetEntityAngularVelocity
            L6_3 = SoccerBall
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L5_3(L6_3, L7_3, L8_3, L9_3)
            L5_3 = SetEntityNoCollisionEntity
            L6_3 = SoccerBall
            L7_3 = L0_3
            L8_3 = true
            L5_3(L6_3, L7_3, L8_3)
            L5_3 = SetEntityNoCollisionEntity
            L6_3 = L0_3
            L7_3 = SoccerBall
            L8_3 = true
            L5_3(L6_3, L7_3, L8_3)
            L5_3 = SetEntityCoords
            L6_3 = SoccerBall
            L7_3 = L4_3
            L5_3(L6_3, L7_3)
          end
        end
      end
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityCoords
      L3_3 = SoccerBall
      L2_3 = L2_3(L3_3)
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 < 15.0 then
        L1_3 = IsDisabledControlJustPressed
        L2_3 = 0
        L3_3 = 24
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = GetEntityCoords
          L3_3 = SoccerBall
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          if L1_3 < 2.0 then
            L1_3 = GetGameplayCamRot
            L2_3 = 2
            L1_3 = L1_3(L2_3)
            L2_3 = SetEntityHeading
            L3_3 = L0_3
            L4_3 = L1_3.z
            L2_3(L3_3, L4_3)
            L2_3 = StartShot
            L2_3()
          end
        end
        L1_3 = IsDisabledControlPressed
        L2_3 = 0
        L3_3 = 36
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = GetEntityCoords
          L3_3 = SoccerBall
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          L2_3 = 1.5
          if L1_3 < L2_3 then
            L1_3 = GetGameTimer
            L1_3 = L1_3()
            L2_3 = L9_1
            L2_3 = L1_3 - L2_3
            if L2_3 >= 100 then
              L9_1 = L1_3
              L2_3 = GetEntityVelocity
              L3_3 = SoccerBall
              L2_3 = L2_3(L3_3)
              L3_3 = SetEntityVelocity
              L4_3 = SoccerBall
              L5_3 = L2_3.x
              L5_3 = L5_3 / 4
              L6_3 = L2_3.y
              L6_3 = L6_3 / 4
              L7_3 = L2_3.z
              L7_3 = L7_3 / 4
              L3_3(L4_3, L5_3, L6_3, L7_3)
            end
          end
        end
        L1_3 = IsDisabledControlPressed
        L2_3 = 0
        L3_3 = 22
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = GetEntityCoords
          L3_3 = SoccerBall
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          if L1_3 < 2.0 then
            L1_3 = PushBallForward
            L2_3 = SoccerBall
            L3_3 = 75.0
            L4_3 = 0.0
            L1_3(L2_3, L3_3, L4_3)
          end
        end
        L1_3 = IsDisabledControlPressed
        L2_3 = 0
        L3_3 = 25
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = GetEntityCoords
          L3_3 = SoccerBall
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 - L2_3
          L1_3 = #L1_3
          if L1_3 < 2.0 then
            L1_3 = PushBallForward
            L2_3 = SoccerBall
            L1_3(L2_3)
          end
        end
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L0_3 = false
    L1_1 = L0_3
    L0_3 = SetPedMoveRateOverride
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = 0.0
    L0_3(L1_3, L2_3)
  end
  L0_2(L1_2)
end
StartSoccer = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityForwardVector
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 2.0
  end
  L6_2 = IsPedSprinting
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = IsPedRunning
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      goto lbl_30
    end
  end
  L5_2 = 10.0
  ::lbl_30::
  L6_2 = IsPedWalking
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L5_2 = 3.0
  end
  L6_2 = 0.1
  L6_2 = A2_2 or L6_2
  if nil ~= A1_2 and not A2_2 then
    L6_2 = 0.2
  end
  L7_2 = SetEntityVelocity
  L8_2 = A0_2
  L9_2 = L4_2.x
  L9_2 = L9_2 * L5_2
  L10_2 = L4_2.y
  L10_2 = L10_2 * L5_2
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
PushBallForward = L10_1
function L10_1(A0_2, A1_2, A2_2)
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
  L3_2 = A2_2 * 6.0
  L4_2 = A1_2 * 6.0
  L5_2 = SetEntityAngularVelocity
  L6_2 = A0_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = 0.0
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
UpdateBallPreviewSpin = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L5_1
  if not L0_2 then
    L0_2 = L2_1
    if L0_2 then
      return
    end
    L0_2 = true
    L5_1 = L0_2
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = SetEntityVelocity
    L2_2 = SoccerBall
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityAngularVelocity
    L2_2 = SoccerBall
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityNoCollisionEntity
    L2_2 = SoccerBall
    L3_2 = L0_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetEntityNoCollisionEntity
    L2_2 = L0_2
    L3_2 = SoccerBall
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = true
    L2_1 = L1_2
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L2_2 = 0.0
    L3_2 = 0.0
    L4_2 = 0.15
    L5_2 = SendNUIMessage
    L6_2 = {}
    L6_2.action = "shotStart"
    L5_2(L6_2)
    L5_2 = SetEntityVelocity
    L6_2 = SoccerBall
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.0
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = SetEntityVelocity
    L6_2 = L0_2
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.0
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = GetGameplayCamRot
    L6_2 = 2
    L5_2 = L5_2(L6_2)
    L6_2 = SetEntityHeading
    L7_2 = L0_2
    L8_2 = L5_2.z
    L6_2(L7_2, L8_2)
    L6_2 = faiAnim
    L7_2 = L6_1
    L8_2 = L7_1
    L9_2 = -1
    L10_2 = 2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Wait
    L7_2 = 25
    L6_2(L7_2)
    L6_2 = SetEntityAnimSpeed
    L7_2 = L0_2
    L8_2 = L6_1
    L9_2 = L7_1
    L10_2 = 0.0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = CreateThread
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      while true do
        L0_3 = L2_1
        if not L0_3 then
          break
        end
        L0_3 = L1_1
        if not L0_3 then
          break
        end
        L0_3 = SoccerBall
        if nil == L0_3 then
          break
        end
        L0_3 = DoesEntityExist
        L1_3 = SoccerBall
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 25
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 24
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 25
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = SetEntityVelocity
        L1_3 = SoccerBall
        L2_3 = 0.0
        L3_3 = 0.0
        L4_3 = 0.0
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L1_2
        L0_3 = L0_3 - L1_3
        L1_3 = L3_1
        L0_3 = L0_3 / L1_3
        L1_3 = L0_3 % 2.0
        L2_3 = L1_3 or L2_3
        if not (L1_3 <= 1.0) or not L1_3 then
          L2_3 = 2.0
          L2_3 = L2_3 - L1_3
        end
        L3_3 = GetDisabledControlNormal
        L4_3 = 0
        L5_3 = 1
        L3_3 = L3_3(L4_3, L5_3)
        L4_3 = GetDisabledControlNormal
        L5_3 = 0
        L6_3 = 2
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = math
        L5_3 = L5_3.max
        L6_3 = -1.0
        L7_3 = math
        L7_3 = L7_3.min
        L8_3 = 1.0
        L9_3 = L2_2
        L10_3 = L4_2
        L10_3 = L3_3 * L10_3
        L9_3 = L9_3 + L10_3
        L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L7_3(L8_3, L9_3)
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L2_2 = L5_3
        L5_3 = math
        L5_3 = L5_3.max
        L6_3 = -1.0
        L7_3 = math
        L7_3 = L7_3.min
        L8_3 = 1.0
        L9_3 = L3_2
        L10_3 = L4_2
        L10_3 = L4_3 * L10_3
        L9_3 = L9_3 - L10_3
        L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L7_3(L8_3, L9_3)
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L3_2 = L5_3
        L5_3 = SendNUIMessage
        L6_3 = {}
        L6_3.action = "shotUpdate"
        L6_3.power = L2_3
        L7_3 = L2_2
        L6_3.x = L7_3
        L7_3 = L3_2
        L6_3.y = L7_3
        L5_3(L6_3)
        L5_3 = 0.0
        L6_3 = IsControlPressed
        L7_3 = 0
        L8_3 = 34
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L5_3 = L5_3 + 0.3
        end
        L6_3 = IsControlPressed
        L7_3 = 0
        L8_3 = 35
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L5_3 = L5_3 - 0.3
        end
        if 0.0 ~= L5_3 then
          L6_3 = SetGameplayCamRelativeHeading
          L7_3 = GetGameplayCamRelativeHeading
          L7_3 = L7_3()
          L7_3 = L7_3 + L5_3
          L6_3(L7_3)
        end
        L6_3 = GetGameplayCamRot
        L7_3 = 2
        L6_3 = L6_3(L7_3)
        L5_2 = L6_3
        L6_3 = IsDisabledControlJustReleased
        L7_3 = 0
        L8_3 = 24
        L6_3 = L6_3(L7_3, L8_3)
        if not L6_3 then
          L6_3 = IsDisabledControlPressed
          L7_3 = 0
          L8_3 = 24
          L6_3 = L6_3(L7_3, L8_3)
          if L6_3 then
            goto lbl_235
          end
        end
        L6_3 = FreezeEntityPosition
        L7_3 = L0_2
        L8_3 = true
        L6_3(L7_3, L8_3)
        L6_3 = false
        L2_1 = L6_3
        L6_3 = SendNUIMessage
        L7_3 = {}
        L7_3.action = "shotRelease"
        L6_3(L7_3)
        L6_3 = L3_2
        L6_3 = -L6_3
        L3_2 = L6_3
        L6_3 = ClearPedTasks
        L7_3 = L0_2
        L6_3(L7_3)
        L6_3 = faiAnim
        L7_3 = L6_1
        L8_3 = L7_1
        L9_3 = 500
        L10_3 = 2
        L6_3(L7_3, L8_3, L9_3, L10_3)
        L6_3 = Wait
        L7_3 = 25
        L6_3(L7_3)
        L6_3 = SetEntityAnimSpeed
        L7_3 = L0_2
        L8_3 = L6_1
        L9_3 = L7_1
        L10_3 = 1.3
        L6_3(L7_3, L8_3, L9_3, L10_3)
        L6_3 = L5_2.x
        L7_3 = nil
        if L6_3 <= -25.0 then
          L7_3 = 0.0
        else
          L8_3 = L3_2
          if L8_3 < 0.0 then
            L8_3 = math
            L8_3 = L8_3.abs
            L9_3 = L3_2
            L8_3 = L8_3(L9_3)
            L9_3 = L8_3 * 8.0
            L10_3 = 15.0
            L7_3 = L10_3 - L9_3
          else
            L8_3 = math
            L8_3 = L8_3.max
            L9_3 = 0.0
            L10_3 = math
            L10_3 = L10_3.min
            L11_3 = L3_2
            L12_3 = 1.0
            L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3, L12_3)
            L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
            L9_3 = L8_3 * L8_3
            L10_3 = L9_3 * 30.0
            L7_3 = 15.0 + L10_3
          end
        end
        L8_3 = Wait
        L9_3 = 300
        L8_3(L9_3)
        L8_3 = PlaySoundFrontend
        L9_3 = -1
        L10_3 = "Crash"
        L11_3 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
        L12_3 = 1
        L8_3(L9_3, L10_3, L11_3, L12_3)
        L8_3 = ReleaseShot
        L9_3 = L2_3
        L10_3 = L2_2
        L11_3 = L3_2
        L12_3 = L5_2
        L13_3 = L7_3
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
        L8_3 = Wait
        L9_3 = 300
        L8_3(L9_3)
        L8_3 = FreezeEntityPosition
        L9_3 = L0_2
        L10_3 = false
        L8_3(L9_3, L10_3)
        L8_3 = false
        L5_1 = L8_3
        do break end
        ::lbl_235::
        L6_3 = Wait
        L7_3 = 0
        L6_3(L7_3)
      end
      L0_3 = FreezeEntityPosition
      L1_3 = L0_2
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = ClearPedTasks
      L1_3 = L0_2
      L0_3(L1_3)
      L0_3 = false
      L5_1 = L0_3
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "shotRelease"
      L0_3(L1_3)
      L0_3 = false
      L2_1 = L0_3
    end
    L6_2(L7_2)
  end
end
StartShot = L10_1
L10_1 = 0
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = SoccerBall
  if L5_2 then
    L5_2 = DoesEntityExist
    L6_2 = SoccerBall
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L5_2 = SetEntityHeading
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = A3_2.z
  L5_2(L6_2, L7_2)
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = 0.08
  L5_2 = L5_2 < L6_2
  if L5_2 then
    A0_2 = 0.12
    A1_2 = 0.0
    A4_2 = 1.0
  end
  A1_2 = -A1_2
  L6_2 = L10_1
  L6_2 = L6_2 + 1
  L10_1 = L6_2
  L6_2 = L10_1
  L7_2 = 20.0
  L8_2 = A3_2.z
  L9_2 = A1_2 * L7_2
  L8_2 = L8_2 + L9_2
  L9_2 = math
  L9_2 = L9_2.rad
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = math
  L10_2 = L10_2.sin
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L10_2 = -L10_2
  L11_2 = math
  L11_2 = L11_2.cos
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L12_2 = A0_2
  L13_2 = 0.2
  if A0_2 <= L13_2 then
    L12_2 = A0_2 * 2
  end
  L13_2 = L12_2 * 90.0
  L13_2 = 4.0 + L13_2
  L14_2 = ActivatePhysics
  L15_2 = SoccerBall
  L14_2(L15_2)
  L14_2 = ArrowFX
  L15_2 = SoccerBall
  L14_2(L15_2)
  L14_2 = A4_2
  L15_2 = 0.75
  if A2_2 >= L15_2 then
    L15_2 = 0.35
    if A0_2 < L15_2 then
      L15_2 = math
      L15_2 = L15_2.max
      L16_2 = 0.0
      L17_2 = math
      L17_2 = L17_2.min
      L18_2 = 1.0
      L19_2 = A0_2 / 0.35
      L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      L16_2 = L15_2 * 0.85
      L14_2 = 0.15 + L16_2
    end
  end
  if L14_2 < 0 then
    L14_2 = 0.0
  end
  L15_2 = SetEntityVelocity
  L16_2 = SoccerBall
  L17_2 = L10_2 * L13_2
  L18_2 = L11_2 * L13_2
  L19_2 = L14_2
  L15_2(L16_2, L17_2, L18_2, L19_2)
  L15_2 = math
  L15_2 = L15_2.abs
  L16_2 = A1_2
  L15_2 = L15_2(L16_2)
  L16_2 = 0.05
  if L15_2 > L16_2 then
    L15_2 = 0.2
    if A0_2 > L15_2 then
      L15_2 = StartBallCurve
      L16_2 = SoccerBall
      L17_2 = A1_2
      L18_2 = A0_2
      L19_2 = L6_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
  end
end
ReleaseShot = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = 0.05
  if not (A2_2 <= L4_2) then
    L4_2 = math
    L4_2 = L4_2.abs
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = 0.03
    if not (L4_2 < L5_2) then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L4_2 = GetEntityVelocity
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.sqrt
  L6_2 = L4_2.x
  L7_2 = L4_2.x
  L6_2 = L6_2 * L7_2
  L7_2 = L4_2.y
  L8_2 = L4_2.y
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = 0.1
  if L5_2 < L6_2 then
    return
  end
  L6_2 = L4_2.y
  L6_2 = L6_2 / L5_2
  L7_2 = L4_2.x
  L7_2 = -L7_2
  L7_2 = L7_2 / L5_2
  L8_2 = A1_2 * 3.0
  L9_2 = SetEntityVelocity
  L10_2 = A0_2
  L11_2 = L4_2.x
  L12_2 = L6_2 * L8_2
  L11_2 = L11_2 + L12_2
  L12_2 = L4_2.y
  L13_2 = L7_2 * L8_2
  L12_2 = L12_2 + L13_2
  L13_2 = L4_2.z
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 500
    while true do
      L2_3 = A3_2
      L3_3 = L10_1
      if L2_3 ~= L3_3 then
        break
      end
      L2_3 = DoesEntityExist
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        break
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      if not (L1_3 > L2_3) then
        break
      end
      L2_3 = GetEntityVelocity
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      L3_3 = math
      L3_3 = L3_3.sqrt
      L4_3 = L2_3.x
      L5_3 = L2_3.x
      L4_3 = L4_3 * L5_3
      L5_3 = L2_3.y
      L6_3 = L2_3.y
      L5_3 = L5_3 * L6_3
      L4_3 = L4_3 + L5_3
      L3_3 = L3_3(L4_3)
      if L3_3 < 2.0 then
        break
      end
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      L4_3 = L4_3 - L0_3
      L4_3 = L4_3 / L1_3
      L5_3 = A1_2
      L5_3 = L5_3 * 0.2
      L6_3 = A2_2
      L6_3 = L6_3 * 0.5
      L6_3 = 0.5 + L6_3
      L5_3 = L5_3 * L6_3
      L6_3 = L4_3 * 0.1
      L7_3 = 1.0
      L6_3 = L7_3 - L6_3
      L5_3 = L5_3 * L6_3
      L6_3 = SetEntityVelocity
      L7_3 = A0_2
      L8_3 = L2_3.x
      L9_3 = L6_2
      L9_3 = L9_3 * L5_3
      L8_3 = L8_3 + L9_3
      L9_3 = L2_3.y
      L10_3 = L7_2
      L10_3 = L10_3 * L5_3
      L9_3 = L9_3 + L10_3
      L10_3 = L2_3.z
      L6_3(L7_3, L8_3, L9_3, L10_3)
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
    end
  end
  L9_2(L10_2)
end
StartBallCurve = L11_1
L11_1 = RegisterCommand
L12_1 = "ball"
function L13_1()
  local L0_2, L1_2
  L0_2 = SpawnSoccerBall
  L0_2()
  L0_2 = StartSoccer
  L0_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "soccerInvite"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = SoccerBall
  if nil ~= L2_2 then
    L2_2 = PlayerVicino
    L2_2, L3_2 = L2_2()
    if -1 ~= L2_2 then
      L4_2 = IsPedAPlayer
      L5_2 = GetPlayerPed
      L6_2 = L2_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      if L4_2 and L3_2 < 2.0 then
        L4_2 = TriggerServerEvent
        L5_2 = "InviteToPlayRugby"
        L6_2 = GetPlayerServerId
        L7_2 = L2_2
        L6_2 = L6_2(L7_2)
        L7_2 = ObjToNet
        L8_2 = SoccerBall
        L7_2, L8_2 = L7_2(L8_2)
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = print
        L5_2 = "Player ID "
        L6_2 = GetPlayerServerId
        L7_2 = L2_2
        L6_2 = L6_2(L7_2)
        L7_2 = " found and try to invite."
        L5_2 = L5_2 .. L6_2 .. L7_2
        L4_2(L5_2)
    end
    else
      L4_2 = print
      L5_2 = "No player nearby to invite play rugby."
      L4_2(L5_2)
    end
  else
    L2_2 = print
    L3_2 = "You don't have a ball active to play."
    L2_2(L3_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "InviteToPlaySoccer"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "InviteToPlaySoccer"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
      SoccerBall = L4_2
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
      L5_2 = StartSoccer
      L5_2()
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = AddEventHandler
L12_1 = "onResourceStop"
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = SoccerBall
  if nil ~= L1_2 then
    L1_2 = SetEntityAsMissionEntity
    L2_2 = SoccerBall
    L1_2(L2_2)
    L1_2 = DeleteEntity
    L2_2 = SoccerBall
    L1_2(L2_2)
  end
end
L11_1(L12_1, L13_1)
