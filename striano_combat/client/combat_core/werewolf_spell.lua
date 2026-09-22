local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = false
L1_1 = nil
L2_1 = 0
L3_1 = false
L4_1 = exports
L5_1 = "getlupo"
function L6_1()
  local L0_2, L1_2
  L0_2 = L1_1
  return L0_2
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "stoplupo"
function L6_1()
  local L0_2, L1_2
  L0_2 = true
  L3_1 = L0_2
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "randWolfSound"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = GetResourceState
  L1_2 = "xsound"
  L0_2 = L0_2(L1_2)
  if "started" == L0_2 then
    L0_2 = math
    L0_2 = L0_2.random
    L1_2 = 1
    L2_2 = 6
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = math
    L1_2 = L1_2.random
    L2_2 = 1
    L3_2 = 999
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = "sounds/striano_wolf/wolf_"
    L4_2 = L0_2
    L3_2 = L3_2 .. L4_2
    L4_2 = L3_2
    L5_2 = ".mp3"
    L4_2 = L4_2 .. L5_2
    L5_2 = TriggerServerEvent
    L6_2 = "wolfsound:playPos"
    L7_2 = {}
    L8_2 = L3_2
    L9_2 = "_"
    L10_2 = L1_2
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2.id = L8_2
    L7_2.url = L4_2
    L8_2 = GetEntityCoords
    L9_2 = L2_2
    L8_2 = L8_2(L9_2)
    L7_2.pos = L8_2
    L7_2.volume = 0.35
    L7_2.radius = 25.0
    L7_2.loop = false
    L5_2(L6_2, L7_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "wolf_ulu"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetResourceState
  L1_2 = "xsound"
  L0_2 = L0_2(L1_2)
  if "started" == L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = "sounds/striano_wolf/wolf_ulu"
    L2_2 = L1_2
    L3_2 = ".mp3"
    L2_2 = L2_2 .. L3_2
    L3_2 = TriggerServerEvent
    L4_2 = "wolfsound:playPos"
    L5_2 = {}
    L5_2.id = L1_2
    L5_2.url = L2_2
    L6_2 = GetEntityCoords
    L7_2 = L0_2
    L6_2 = L6_2(L7_2)
    L5_2.pos = L6_2
    L5_2.volume = 0.35
    L5_2.radius = 150.0
    L5_2.loop = false
    L3_2(L4_2, L5_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterCommand
L5_1 = "stopwolf"
function L6_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = true
    L3_1 = L0_2
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "attivaLupo"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "attivaLupo"
function L6_1()
  local L0_2, L1_2
  L0_2 = AttivaLupo
  L0_2()
end
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * 0.5
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = GetEntityForwardVector
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2 * 1.2
  L3_2 = L3_2 + L4_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L5_2 = -1
  L6_2 = GetShapeTestResult
  L7_2 = StartShapeTestRay
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2 + 1.0
  L11_2 = L2_2
  L12_2 = L3_2
  L13_2 = L4_2 - 2.0
  L14_2 = L5_2
  L15_2 = A0_2
  L16_2 = 1
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L7_2 then
    L11_2 = L1_1
    if nil == L11_2 then
      L11_2 = CreateObject
      L12_2 = -1837161340
      L13_2 = L8_2
      L14_2 = true
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L1_1 = L11_2
      L11_2 = SetEntityVisible
      L12_2 = L1_1
      L13_2 = false
      L11_2(L12_2, L13_2)
      L11_2 = FreezeEntityPosition
      L12_2 = L1_1
      L13_2 = true
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityNoCollisionEntity
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L13_2 = L1_1
      L14_2 = true
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = SetEntityHeading
      L12_2 = L1_1
      L13_2 = GetEntityHeading
      L14_2 = A0_2
      L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = SetEntityCollision
      L12_2 = L1_1
      L13_2 = false
      L14_2 = false
      L11_2(L12_2, L13_2, L14_2)
    else
      L11_2 = SetEntityNoCollisionEntity
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L13_2 = L1_1
      L14_2 = true
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = SetEntityCoords
      L12_2 = L1_1
      L13_2 = L8_2
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityHeading
      L12_2 = L1_1
      L13_2 = GetEntityHeading
      L14_2 = A0_2
      L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = PlaceObjectOnGroundProperly
      L12_2 = L1_1
      L11_2(L12_2)
      L11_2 = GetEntityRotation
      L12_2 = A0_2
      L11_2 = L11_2(L12_2)
      L12_2 = SetEntityRotation
      L13_2 = A0_2
      L14_2 = L4_1
      L15_2 = GetEntityRotation
      L16_2 = A0_2
      L15_2 = L15_2(L16_2)
      L15_2 = L15_2.x
      L16_2 = GetEntityRotation
      L17_2 = L1_1
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.x
      L16_2 = L16_2 + 10.0
      L17_2 = 1.0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = 0.0
      L16_2 = L11_2.z
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
end
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L0_1
  if not L1_2 then
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = L0_1
        if L0_3 then
          L0_3 = DisablePlayerFiring
          L1_3 = L0_2
          L2_3 = true
          L0_3(L1_3, L2_3)
          L0_3 = DisableAimCamThisUpdate
          L0_3()
          L0_3 = DisableControlAction
          L1_3 = 1
          L2_3 = 311
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 311
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
        else
          return
        end
      end
    end
    L1_2(L2_2)
    L1_2 = GetResourceState
    L2_2 = "striano_core"
    L1_2 = L1_2(L2_2)
    if "started" == L1_2 then
      L1_2 = ExecuteCommand
      L2_2 = "fixcrouch"
      L1_2(L2_2)
    end
    L1_2 = true
    L0_1 = L1_2
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
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L2_2 = ClearPedTasks
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.fodera2
    L2_2(L3_2)
    L2_2 = 0
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
      L0_3 = "melee@wfire@beast_werewolf_animset"
      L1_3 = "wfire_wmg_werewolf_beast_forward_sprint_anim"
      L2_3 = "wfire_wmg_werewolf_beast_forward_idle_clip"
      L3_3 = "wfire_wmg_were_beast_intro_roar_v1_clip"
      L4_3 = HasAnimDictLoaded
      L5_3 = L0_3
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        L4_3 = RequestAnimDict
        L5_3 = L0_3
        L4_3(L5_3)
        while true do
          L4_3 = HasAnimDictLoaded
          L5_3 = L0_3
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
      L5_3 = L0_2
      L6_3 = L0_3
      L7_3 = L3_3
      L8_3 = 3.0
      L9_3 = 3.0
      L10_3 = -1
      L11_3 = 2
      L12_3 = false
      L13_3 = false
      L14_3 = false
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L4_3 = Wait
      L5_3 = 25
      L4_3(L5_3)
      while true do
        L4_3 = Wait
        L5_3 = 0
        L4_3(L5_3)
        L4_3 = IsEntityInWater
        L5_3 = L0_2
        L4_3 = L4_3(L5_3)
        if not L4_3 then
          L4_3 = IsPedFalling
          L5_3 = L0_2
          L4_3 = L4_3(L5_3)
          if not L4_3 then
            L4_3 = IsPedRagdoll
            L5_3 = L0_2
            L4_3 = L4_3(L5_3)
            if not L4_3 then
              L4_3 = IsControlPressed
              L5_3 = 0
              L6_3 = 177
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsControlPressed
                L5_3 = 0
                L6_3 = 73
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = L3_1
                  if not L4_3 then
                    L4_3 = IsPedRagdoll
                    L5_3 = L0_2
                    L4_3 = L4_3(L5_3)
                    if not L4_3 then
                      L4_3 = IsPedFatallyInjured
                      L5_3 = L0_2
                      L4_3 = L4_3(L5_3)
                      if not L4_3 then
                        goto lbl_144
                      end
                    end
                  end
                end
              end
              L4_3 = false
              L0_1 = L4_3
              L4_3 = SetEntityRotation
              L5_3 = L0_2
              L6_3 = vector3
              L7_3 = 0
              L8_3 = 0
              L9_3 = GetGameplayCamRot
              L10_3 = 0
              L9_3 = L9_3(L10_3)
              L9_3 = L9_3.z
              L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L6_3(L7_3, L8_3, L9_3)
              L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
              L4_3 = fineLupo
              L4_3()
              L4_3 = false
              L3_1 = L4_3
              L4_3 = GetResourceState
              L5_3 = "striano_combat"
              L4_3 = L4_3(L5_3)
              if "started" == L4_3 then
                L4_3 = GetEntityModel
                L5_3 = L0_2
                L4_3 = L4_3(L5_3)
                L5_3 = GetHashKey
                L6_3 = "WereWolf_Baruk_Kiml"
                L5_3 = L5_3(L6_3)
                if L4_3 == L5_3 then
                  L5_3 = exports
                  L5_3 = L5_3.striano_combat
                  L5_3 = L5_3.startsuperjump
                  L5_3()
                end
              end
              L4_3 = SetPedConfigFlag
              L5_3 = L0_2
              L6_3 = 8
              L7_3 = false
              L4_3(L5_3, L6_3, L7_3)
              L4_3 = SetPedConfigFlag
              L5_3 = L0_2
              L6_3 = 54
              L7_3 = false
              L4_3(L5_3, L6_3, L7_3)
              L4_3 = SetPedConfigFlag
              L5_3 = L0_2
              L6_3 = 160
              L7_3 = false
              L4_3(L5_3, L6_3, L7_3)
              L4_3 = SetPlayerFallDistance
              L5_3 = PlayerId
              L5_3 = L5_3()
              L6_3 = 8.0
              L4_3(L5_3, L6_3)
              L4_3 = Wait
              L5_3 = 0
              L4_3(L5_3)
              L4_3 = faiAnim
              L5_3 = "get_up@directional@movement@from_knees@standard"
              L6_3 = "getup_l_0"
              L7_3 = 750
              L8_3 = 1
              L4_3(L5_3, L6_3, L7_3, L8_3)
              do return end
              ::lbl_144::
              L4_3 = IsControlPressed
              L5_3 = 0
              L6_3 = 73
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsControlPressed
                L5_3 = 0
                L6_3 = 32
                L4_3 = L4_3(L5_3, L6_3)
                if L4_3 then
                  L4_3 = 2000
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 21
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L4_3 = 1000
                  end
                  L5_3 = GetGameTimer
                  L5_3 = L5_3()
                  L6_3 = L1_2
                  L5_3 = L5_3 - L6_3
                  if L4_3 < L5_3 then
                    L5_3 = GetGameTimer
                    L5_3 = L5_3()
                    L1_2 = L5_3
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 22
                  L5_3 = L5_3(L6_3, L7_3)
                  if not L5_3 then
                    L5_3 = SetEntityHeading
                    L6_3 = L0_2
                    L7_3 = GetGameplayCamRot
                    L8_3 = 0
                    L7_3 = L7_3(L8_3)
                    L7_3 = L7_3.z
                    L5_3(L6_3, L7_3)
                  end
                  L5_3 = IsEntityPlayingAnim
                  L6_3 = L0_2
                  L7_3 = L0_3
                  L8_3 = L1_3
                  L9_3 = 1
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                  if not L5_3 then
                    L5_3 = TaskPlayAnim
                    L6_3 = L0_2
                    L7_3 = L0_3
                    L8_3 = L1_3
                    L9_3 = 3.0
                    L10_3 = 3.0
                    L11_3 = -1
                    L12_3 = 1
                    L13_3 = false
                    L14_3 = false
                    L15_3 = false
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 21
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = SuperSpeed
                    if L5_3 then
                      L5_3 = SetEntityAnimSpeed
                      L6_3 = L0_2
                      L7_3 = L0_3
                      L8_3 = L1_3
                      L9_3 = 2.5
                      L5_3(L6_3, L7_3, L8_3, L9_3)
                    else
                      L5_3 = SetEntityAnimSpeed
                      L6_3 = L0_2
                      L7_3 = L0_3
                      L8_3 = L1_3
                      L9_3 = 2.0
                      L5_3(L6_3, L7_3, L8_3, L9_3)
                    end
                  else
                    L5_3 = SuperSpeed
                    if L5_3 then
                      L5_3 = SetEntityAnimSpeed
                      L6_3 = L0_2
                      L7_3 = L0_3
                      L8_3 = L1_3
                      L9_3 = 1.5
                      L5_3(L6_3, L7_3, L8_3, L9_3)
                    else
                      L5_3 = SetEntityAnimSpeed
                      L6_3 = L0_2
                      L7_3 = L0_3
                      L8_3 = L1_3
                      L9_3 = 1.0
                      L5_3(L6_3, L7_3, L8_3, L9_3)
                    end
                  end
                  L5_3 = GetEntityCoords
                  L6_3 = L0_2
                  L5_3 = L5_3(L6_3)
                  L6_3 = RequestCollisionAtCoord
                  L7_3 = L5_3.x
                  L8_3 = L5_3.y
                  L9_3 = L5_3.z
                  L6_3(L7_3, L8_3, L9_3)
                  L6_3 = 550
                  L7_3 = IsControlPressed
                  L8_3 = 0
                  L9_3 = 21
                  L7_3 = L7_3(L8_3, L9_3)
                  if L7_3 then
                    L6_3 = L6_3 / 2
                  end
                  L7_3 = L2_2
                  if 0 == L7_3 then
                    L7_3 = GetGameTimer
                    L7_3 = L7_3()
                    L2_2 = L7_3
                  else
                    L7_3 = GetGameTimer
                    L7_3 = L7_3()
                    L8_3 = L2_2
                    L7_3 = L7_3 - L8_3
                    if L6_3 <= L7_3 then
                      L7_3 = IsEntityPlayingAnim
                      L8_3 = L0_2
                      L9_3 = L0_3
                      L10_3 = L1_3
                      L11_3 = 1
                      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                      if L7_3 then
                        L7_3 = GetEntityBonePosition_2
                        L8_3 = L0_2
                        L9_3 = GetPedBoneIndex
                        L10_3 = L0_2
                        L11_3 = 12844
                        L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L9_3(L10_3, L11_3)
                        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L8_3 = vector3
                        L9_3 = L7_3.x
                        L10_3 = L7_3.y
                        L11_3 = L7_3.z
                        L11_3 = L11_3 - 0.9
                        L8_3 = L8_3(L9_3, L10_3, L11_3)
                        L7_3 = L8_3
                        L8_3 = "wolf_1_"
                        L9_3 = tostring
                        L10_3 = PlayerId
                        L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L10_3()
                        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L8_3 = L8_3 .. L9_3
                        L9_3 = TriggerEvent
                        L10_3 = "EffectCombat"
                        L11_3 = "core"
                        L12_3 = "ent_dst_rocks_small"
                        L13_3 = L7_3
                        L14_3 = 2.25
                        L15_3 = 0.5
                        L16_3 = nil
                        L17_3 = L8_3
                        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                        L9_3 = "wolf_2_"
                        L10_3 = tostring
                        L11_3 = PlayerId
                        L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L11_3()
                        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L9_3 = L9_3 .. L10_3
                        L10_3 = TriggerEvent
                        L11_3 = "EffectCombat"
                        L12_3 = "core"
                        L13_3 = "bul_gravel"
                        L14_3 = L7_3
                        L15_3 = 1.75
                        L16_3 = 0.5
                        L17_3 = nil
                        L18_3 = L9_3
                        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                        L10_3 = GetEntityBonePosition_2
                        L11_3 = L0_2
                        L12_3 = GetPedBoneIndex
                        L13_3 = L0_2
                        L14_3 = 6286
                        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L12_3(L13_3, L14_3)
                        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L11_3 = vector3
                        L12_3 = L10_3.x
                        L13_3 = L10_3.y
                        L14_3 = L10_3.z
                        L11_3 = L11_3(L12_3, L13_3, L14_3)
                        L10_3 = L11_3
                        L11_3 = "wolf_3_"
                        L12_3 = tostring
                        L13_3 = PlayerId
                        L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L13_3()
                        L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L11_3 = L11_3 .. L12_3
                        L12_3 = TriggerEvent
                        L13_3 = "EffectCombat"
                        L14_3 = "ent_dst_rocks_small"
                        L15_3 = L10_3
                        L16_3 = 0.4
                        L17_3 = 0.5
                        L18_3 = nil
                        L19_3 = L11_3
                        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                        L12_3 = GetEntityBonePosition_2
                        L13_3 = L0_2
                        L14_3 = GetPedBoneIndex
                        L15_3 = L0_2
                        L16_3 = 36029
                        L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L14_3(L15_3, L16_3)
                        L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L13_3 = vector3
                        L14_3 = L12_3.x
                        L15_3 = L12_3.y
                        L16_3 = L12_3.z
                        L13_3 = L13_3(L14_3, L15_3, L16_3)
                        L12_3 = L13_3
                        L13_3 = "wolf_4_"
                        L14_3 = tostring
                        L15_3 = PlayerId
                        L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L15_3()
                        L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L13_3 = L13_3 .. L14_3
                        L14_3 = TriggerEvent
                        L15_3 = "EffectCombat"
                        L16_3 = "ent_dst_rocks_small"
                        L17_3 = L12_3
                        L18_3 = 0.4
                        L19_3 = 0.5
                        L20_3 = nil
                        L21_3 = L13_3
                        L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                        L14_3 = 0
                        L2_2 = L14_3
                      end
                    end
                  end
                  L7_3 = L5_1
                  L8_3 = L0_2
                  L7_3(L8_3)
                else
                  L4_3 = IsControlJustPressed
                  L5_3 = 0
                  L6_3 = 22
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsDisabledControlJustPressed
                    L5_3 = 0
                    L6_3 = 22
                    L4_3 = L4_3(L5_3, L6_3)
                    if not L4_3 then
                      goto lbl_422
                    end
                  end
                  L4_3 = GetEntitySpeed
                  L5_3 = L0_2
                  L4_3 = L4_3(L5_3)
                  L5_3 = 0.1
                  if L4_3 < L5_3 then
                    L4_3 = ClearPedTasks
                    L5_3 = L0_2
                    L4_3(L5_3)
                    L4_3 = TaskJump
                    L5_3 = L0_2
                    L4_3(L5_3)
                    L4_3 = TaskClimb
                    L5_3 = L0_2
                    L4_3(L5_3)
                    goto lbl_498
                    ::lbl_422::
                    L4_3 = IsEntityPlayingAnim
                    L5_3 = L0_2
                    L6_3 = L0_3
                    L7_3 = L2_3
                    L8_3 = 1
                    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                    if not L4_3 then
                      L4_3 = IsPedJumping
                      L5_3 = L0_2
                      L4_3 = L4_3(L5_3)
                      if not L4_3 then
                        L4_3 = IsPedClimbing
                        L5_3 = L0_2
                        L4_3 = L4_3(L5_3)
                        if not L4_3 then
                          L4_3 = TaskPlayAnim
                          L5_3 = L0_2
                          L6_3 = L0_3
                          L7_3 = L2_3
                          L8_3 = 3.0
                          L9_3 = 3.0
                          L10_3 = -1
                          L11_3 = 1
                          L12_3 = false
                          L13_3 = false
                          L14_3 = false
                          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                        end
                      end
                    end
                  end
                end
              else
                L4_3 = IsControlPressed
                L5_3 = 0
                L6_3 = 22
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = IsDisabledControlPressed
                  L5_3 = 0
                  L6_3 = 22
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsEntityPlayingAnim
                    L5_3 = L0_2
                    L6_3 = L0_3
                    L7_3 = L1_3
                    L8_3 = 1
                    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                    if not L4_3 then
                      L4_3 = TaskPlayAnim
                      L5_3 = L0_2
                      L6_3 = L0_3
                      L7_3 = L1_3
                      L8_3 = 3.0
                      L9_3 = 3.0
                      L10_3 = -1
                      L11_3 = 1
                      L12_3 = false
                      L13_3 = false
                      L14_3 = false
                      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                    end
                    L4_3 = 0
                    L5_3 = SetEntityAnimCurrentTime
                    L6_3 = L0_2
                    L7_3 = L0_3
                    L8_3 = L1_3
                    L9_3 = L4_3
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                    L5_3 = SetEntityAnimSpeed
                    L6_3 = L0_2
                    L7_3 = L0_3
                    L8_3 = L1_3
                    L9_3 = L4_3
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                end
              end
              ::lbl_498::
              L4_3 = L2_1
              if 0 == L4_3 then
                L4_3 = GetGameTimer
                L4_3 = L4_3()
                L2_1 = L4_3
              end
              L4_3 = GetGameTimer
              L4_3 = L4_3()
              L5_3 = L2_1
              L4_3 = L4_3 - L5_3
              L5_3 = 1000
              if L4_3 > L5_3 then
                L4_3 = TriggerServerEvent
                L5_3 = "SyncRotationLupo"
                L6_3 = GetEntityRotation
                L7_3 = L0_2
                L6_3 = L6_3(L7_3)
                L7_3 = GetEntityCoords
                L8_3 = L0_2
                L7_3 = L7_3(L8_3)
                L8_3 = GetPlayerServerId
                L9_3 = PlayerId
                L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L9_3()
                L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                L4_3 = 0
                L2_1 = L4_3
              end
          end
        end
        else
          L4_3 = Wait
          L5_3 = 1000
          L4_3(L5_3)
        end
      end
    end
    L3_2(L4_2)
  end
end
AttivaLupo = L6_1
L6_1 = RegisterNetEvent
L7_1 = "SyncRotationLupo"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "SyncRotationLupo"
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L3_2 ~= A2_2 then
    L3_2 = GetPlayerPed
    L4_2 = GetPlayerFromServerId
    L5_2 = A2_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = PlayerPedId
      L4_2 = L4_2()
      if L3_2 ~= L4_2 then
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = SetEntityCoords
        L6_2 = L3_2
        L7_2 = A1_2.x
        L8_2 = A1_2.y
        L9_2 = A1_2.z
        L9_2 = L9_2 - 1.0
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = SetEntityRotation
        L6_2 = L3_2
        L7_2 = A0_2
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = L1_1
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = L1_1
    L0_2(L1_2)
    L0_2 = nil
    L1_1 = L0_2
  end
end
fineLupo = L6_1
L6_1 = AddEventHandler
L7_1 = "onResourceStop"
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L1_1
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L1_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L1_1
      L1_2(L2_2)
      L1_2 = nil
      L1_1 = L1_2
    end
  end
end
L6_1(L7_1, L8_1)
