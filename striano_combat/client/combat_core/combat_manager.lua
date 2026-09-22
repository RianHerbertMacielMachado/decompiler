local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = {}
L1_1 = {}
L1_1.a = "core"
L1_1.b = "ent_dst_elec_fire_sp"
L1_1.s = 0.2
L2_1 = {}
L2_1.a = "scr_rcbarry1"
L2_1.b = "scr_alien_disintegrate"
L2_1.s = 0.05
L3_1 = {}
L3_1.a = "scr_sm_trans"
L3_1.b = "scr_sm_con_trans"
L3_1.s = 0.1
L4_1 = {}
L4_1.a = "scr_xs_props"
L4_1.b = "scr_xs_exp_mine_sf"
L4_1.s = 0.05
L5_1 = {}
L5_1.a = "scr_rcbarry2"
L5_1.b = "scr_clown_death"
L5_1.s = 0.1
L6_1 = {}
L6_1.a = "scr_rcbarry2"
L6_1.b = "scr_clown_appears"
L6_1.s = 0.05
L7_1 = {}
L7_1.a = "scr_xm_farm"
L7_1.b = "scr_xm_dst_elec_crackle"
L7_1.s = 0.05
L8_1 = {}
L8_1.a = "wpn_indep_firework"
L8_1.b = "muz_indep_firework"
L8_1.s = 0.05
L9_1 = {}
L9_1.a = "des_tv_smash"
L9_1.b = "ent_sht_electrical_box_sp"
L9_1.s = 1.5
L10_1 = {}
L10_1.a = "scr_rcbarry1"
L10_1.b = "scr_alien_teleport"
L10_1.s = 0.05
L11_1 = {}
L11_1.a = "scr_powerplay"
L11_1.b = "sp_powerplay_beast_appear_trails"
L11_1.s = 0.1
L12_1 = {}
L12_1.a = "scr_rcbarry2"
L12_1.b = "scr_exp_clown_trails"
L12_1.s = 0.1
L13_1 = {}
L13_1.a = "core"
L13_1.b = "weap_heist_flare_trail"
L13_1.s = 0.5
L14_1 = {}
L14_1.a = "core"
L14_1.b = "ent_amb_torch_fire"
L14_1.s = 1.0
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L0_1[14] = L14_1
handCombatEffect = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = {}
  L5_2 = A2_2 + 10.0
  L6_2 = A2_2 + 50.0
  L7_2 = A2_2 + 150.0
  L8_2 = 250.0
  L9_2 = 400.0
  L10_2 = 800.0
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L5_2 = 1
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L10_2 = RequestCollisionAtCoord
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = Wait
    L11_2 = 0
    L10_2(L11_2)
    L10_2 = StartShapeTestRay
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = L9_2
    L14_2 = A0_2
    L15_2 = A1_2
    L16_2 = L9_2 - 1000.0
    L17_2 = -1
    L18_2 = L3_2
    L19_2 = 0
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L11_2 = GetShapeTestResult
    L12_2 = L10_2
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
    L16_2 = L12_2
    L17_2 = nil
    L18_2 = type
    L19_2 = L13_2
    L18_2 = L18_2(L19_2)
    if "vector3" == L18_2 then
      L17_2 = L13_2
    else
      L18_2 = type
      L19_2 = L14_2
      L18_2 = L18_2(L19_2)
      if "vector3" == L18_2 then
        L17_2 = L14_2
      else
        L18_2 = type
        L19_2 = L15_2
        L18_2 = L18_2(L19_2)
        if "vector3" == L18_2 then
          L17_2 = L15_2
        end
      end
    end
    if 1 == L16_2 and L17_2 then
      L18_2 = L17_2.z
      return L18_2
    end
    L18_2 = Wait
    L19_2 = 0
    L18_2(L19_2)
  end
  L5_2 = nil
  return L5_2
end
GetGroundZUltra = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = DoesEntityExist
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = IsEntityDead
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  if not A1_2 then
    A1_2 = 12.0
  end
  if not A2_2 then
    A2_2 = 0.6
  end
  L4_2 = SetEntityDynamic
  L5_2 = A0_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedToRagdoll
  L5_2 = A0_2
  L6_2 = 3000
  L7_2 = 3000
  L8_2 = 0
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = GetEntityForwardVector
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ApplyForceToEntity
  L6_2 = A0_2
  L7_2 = 1
  L8_2 = L4_2.x
  L8_2 = L8_2 * A1_2
  L9_2 = L4_2.y
  L9_2 = L9_2 * A1_2
  L10_2 = A2_2
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0
  L15_2 = false
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L19_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
PushDeadPedForward = L0_1
inHeavyWeap = true
DistanzaFightBase = 25.0
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = print
    L2_2 = "Object to make net doesn't exist!"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = SafeEntToNet
  L2_2 = A0_2
  L3_2 = 500
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = print
    L3_2 = "WRN OBJECT NOT NETTABLE! "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = SetNetworkIdCanMigrate
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = TriggerServerEvent
  L3_2 = "combat_obj:register"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = ObjOnServer
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
MakeSwordNET = L0_1
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
L0_1 = {}
ObjOnServer = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = NetworkGetPlayerIndexFromPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if -1 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetPlayerServerId
  L3_2 = L1_2
  return L2_2(L3_2)
end
GetServerIdFromPed = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = 10.0
L3_1 = 0.0
L4_1 = 0.0
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L2_1 = {}
L3_1 = 10.0
L4_1 = 10.0
L5_1 = 10.0
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = {}
L4_1 = 10.0
L5_1 = 10.0
L6_1 = 0.0
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = {}
L5_1 = 10.0
L6_1 = 0.0
L7_1 = 10.0
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L5_1 = {}
L6_1 = 0.0
L7_1 = 5.0
L8_1 = 5.0
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L6_1 = {}
L7_1 = 1.1
L8_1 = 0.3
L9_1 = 10.0
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L7_1 = {}
L8_1 = 1.1
L9_1 = 0.5
L10_1 = 10.0
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L8_1 = {}
L9_1 = 1.1
L10_1 = 0.3
L11_1 = 10.0
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L9_1 = {}
L10_1 = 0.4
L11_1 = 0.5
L12_1 = 0.1
L9_1[1] = L10_1
L9_1[2] = L11_1
L9_1[3] = L12_1
L10_1 = {}
L11_1 = 0.4
L12_1 = 0.5
L13_1 = 0.7
L10_1[1] = L11_1
L10_1[2] = L12_1
L10_1[3] = L13_1
L11_1 = {}
L12_1 = 0.2
L13_1 = 0.6
L14_1 = 3.8
L11_1[1] = L12_1
L11_1[2] = L13_1
L11_1[3] = L14_1
L12_1 = {}
L13_1 = 0.5
L14_1 = 0.3
L15_1 = 3.8
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L13_1 = {}
L14_1 = 7.5
L15_1 = 0.2
L16_1 = 0.0
L13_1[1] = L14_1
L13_1[2] = L15_1
L13_1[3] = L16_1
L14_1 = {}
L15_1 = 0.5
L16_1 = 0.8
L17_1 = 0.0
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L15_1 = {}
L16_1 = 0.3
L17_1 = 9.9
L18_1 = 0.0
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L0_1[14] = L14_1
L0_1[15] = L15_1
colorFx = L0_1
myBuffID = 0
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = myBuffID
  if L1_2 > 0 then
    L1_2 = BufferList
    L2_2 = myBuffID
    L1_2 = L1_2[L2_2]
    L1_2.ac = false
    myBuffID = 0
    L1_2 = Wait
    L2_2 = 125
    L1_2(L2_2)
  end
  L1_2 = BufferList
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = BufferList
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.ac
    if not L2_2 then
      L2_2 = BufferList
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.timerBuff
      if nil ~= L2_2 then
        L2_2 = BufferList
        L2_2 = L2_2[A0_2]
        L3_2 = GetGameTimer
        L3_2 = L3_2()
        L4_2 = BufferList
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2.timerBuff
        L3_2 = L3_2 + L4_2
        L2_2.timerBuff = L3_2
      end
      L2_2 = BufferList
      L2_2 = L2_2[A0_2]
      L2_2.ac = true
      myBuffID = A0_2
      L2_2 = "scr_bike_adversary"
      L3_2 = "scr_adversary_gunsmith_weap_smoke"
      L4_2 = SafeEntToNet
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L5_2 = print
        L6_2 = "This ped not exist (CODE: 245). "
        L7_2 = L1_2
        L5_2(L6_2, L7_2)
        L5_2 = BufferList
        L5_2 = L5_2[A0_2]
        L5_2.ac = false
        myBuffID = 0
        return
      end
      L5_2 = BufferList
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.sound
      if nil ~= L5_2 then
        L5_2 = shareSound
        L6_2 = BufferList
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.sound
        L7_2 = 0.1
        L8_2 = L1_2
        L9_2 = 2.0
        L5_2(L6_2, L7_2, L8_2, L9_2)
      else
        L5_2 = shareSound
        L6_2 = "sounds/striano_combat/magic/spells/spell_2"
        L7_2 = 0.1
        L8_2 = L1_2
        L9_2 = 2.0
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
      L5_2 = BufferList
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.anim
      if nil == L5_2 then
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 1
        L7_2 = 2
        L5_2 = L5_2(L6_2, L7_2)
        if 1 == L5_2 then
          L6_2 = faiAnim
          L7_2 = "9cg_nodachi_buff"
          L8_2 = "9cg_nodachi_buff_clip"
          L9_2 = 750
          L10_2 = 49
          L6_2(L7_2, L8_2, L9_2, L10_2)
        else
          L6_2 = faiAnim
          L7_2 = "9cg_nodachi_air_buff"
          L8_2 = "9cg_nodachi_air_buff_clip"
          L9_2 = 750
          L10_2 = 1
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      else
        L5_2 = faiAnim
        L6_2 = BufferList
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.anim
        L6_2 = L6_2[1]
        L7_2 = BufferList
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2.anim
        L7_2 = L7_2[2]
        L8_2 = BufferList
        L8_2 = L8_2[A0_2]
        L8_2 = L8_2.anim
        L8_2 = L8_2[3]
        L9_2 = BufferList
        L9_2 = L9_2[A0_2]
        L9_2 = L9_2.anim
        L9_2 = L9_2[4]
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
      L5_2 = BufferList
      L5_2 = L5_2[A0_2]
      if L5_2 then
        L6_2 = testo3d
        L7_2 = "~b~~h~"
        L8_2 = L5_2.name
        if not L8_2 then
          L8_2 = "Buffer"
        end
        L9_2 = "~n~~n~~g~+"
        L10_2 = L5_2.dmg
        if not L10_2 then
          L10_2 = 0
        end
        L11_2 = " DMG~n~~w~"
        L12_2 = L5_2.timerBuff
        if L12_2 then
          L12_2 = math
          L12_2 = L12_2.floor
          L13_2 = L5_2.timerBuff
          L13_2 = L13_2 / 1000
          L12_2 = L12_2(L13_2)
          if L12_2 then
            goto lbl_150
          end
        end
        L12_2 = "\226\136\158"
        ::lbl_150::
        L13_2 = "s"
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
        L6_2(L7_2)
      end
      L6_2 = CreateThread
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
        L0_3 = A0_2
        while true do
          L1_3 = myBuffID
          if not (L1_3 > 0) then
            break
          end
          L1_3 = BufferList
          L1_3 = L1_3[L0_3]
          L1_3 = L1_3.ac
          if not L1_3 then
            break
          end
          L1_3 = BufferList
          L2_3 = A0_2
          L1_3 = L1_3[L2_3]
          L2_3 = L1_3.timerBuff
          if nil ~= L2_3 then
            L2_3 = GetGameTimer
            L2_3 = L2_3()
            L3_3 = L1_3.timerBuff
            if L2_3 > L3_3 then
              L3_3 = BufferList
              L3_3 = L3_3[L0_3]
              L3_3.ac = false
              myBuffID = 0
              L3_3 = testo3d
              L4_3 = "|r| |h| Buff ends."
              L3_3(L4_3)
              L3_3 = print
              L4_3 = "buff "
              L5_3 = L0_3
              L6_3 = " timer end."
              L4_3 = L4_3 .. L5_3 .. L6_3
              L3_3(L4_3)
              return
            end
          end
          L2_3 = TriggerServerEvent
          L3_3 = "PlayEffectEnt"
          L4_3 = {}
          L5_3 = L2_2
          L4_3.a = L5_3
          L5_3 = L5_2
          L4_3.b = L5_3
          L5_3 = L4_2
          L4_3.ent = L5_3
          L5_3 = L1_3.s
          if not L5_3 then
            L5_3 = 1.0
          end
          L4_3.s = L5_3
          L5_3 = colorFx
          L6_3 = BufferList
          L7_3 = myBuffID
          L6_3 = L6_3[L7_3]
          L6_3 = L6_3.c
          L5_3 = L5_3[L6_3]
          L4_3.c = L5_3
          L5_3 = L1_3.b
          if not L5_3 then
            L5_3 = 24818
          end
          L4_3.bone = L5_3
          L5_3 = L1_3.off
          if not L5_3 then
            L5_3 = {}
            L6_3 = 0.0
            L7_3 = -0.19
            L8_3 = 0.0
            L5_3[1] = L6_3
            L5_3[2] = L7_3
            L5_3[3] = L8_3
          end
          L4_3.off = L5_3
          L5_3 = L1_3.rot
          if not L5_3 then
            L5_3 = {}
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L5_3[1] = L6_3
            L5_3[2] = L7_3
            L5_3[3] = L8_3
          end
          L4_3.r = L5_3
          L5_3 = L1_3.t
          if not L5_3 then
            L5_3 = 3000
          end
          L4_3.timer = L5_3
          L5_3 = L1_3.o
          if not L5_3 then
            L5_3 = 0.5
          end
          L4_3.o = L5_3
          L2_3(L3_3, L4_3)
          L2_3 = BufferList
          L3_3 = A0_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.buffx
          if nil ~= L2_3 then
            L2_3 = ipairs
            L3_3 = BufferList
            L4_3 = A0_2
            L3_3 = L3_3[L4_3]
            L3_3 = L3_3.buffx
            L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
            for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
              L8_3 = TriggerServerEvent
              L9_3 = "PlayEffectEnt"
              L10_3 = {}
              L11_3 = L7_3[1]
              L10_3.a = L11_3
              L11_3 = L7_3[2]
              L10_3.b = L11_3
              L11_3 = L4_2
              L10_3.ent = L11_3
              L11_3 = L7_3[3]
              L10_3.s = L11_3
              L11_3 = L7_3[4]
              L10_3.bone = L11_3
              L11_3 = L7_3[11]
              if not L11_3 then
                L11_3 = 2100
              end
              L10_3.timer = L11_3
              L11_3 = vector3
              L12_3 = L7_3[5]
              L13_3 = L7_3[6]
              L14_3 = L7_3[7]
              L11_3 = L11_3(L12_3, L13_3, L14_3)
              L10_3.off = L11_3
              L11_3 = vector3
              L12_3 = L7_3[8]
              L13_3 = L7_3[9]
              L14_3 = L7_3[10]
              L11_3 = L11_3(L12_3, L13_3, L14_3)
              L10_3.r = L11_3
              L11_3 = L7_3[12]
              if not L11_3 then
                L11_3 = 1.0
              end
              L10_3.o = L11_3
              L11_3 = colorFx
              L12_3 = BufferList
              L13_3 = myBuffID
              L12_3 = L12_3[L13_3]
              L12_3 = L12_3.c
              L11_3 = L11_3[L12_3]
              L10_3.c = L11_3
              L8_3(L9_3, L10_3)
            end
          end
          L2_3 = L1_3.t
          L3_3 = L1_3.t
          if nil ~= L3_3 then
            L2_3 = L2_3 - 100
          end
          L3_3 = Wait
          L4_3 = L2_3 or L4_3
          if not L2_3 then
            L4_3 = 2000
          end
          L3_3(L4_3)
        end
      end
      L6_2(L7_2)
    else
      L2_2 = faiAnim
      L3_2 = "rcmfanatic1"
      L4_2 = "base"
      L5_2 = 750
      L6_2 = 49
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = BufferList
      L2_2 = L2_2[A0_2]
      L2_2.ac = false
      myBuffID = 0
    end
  else
    myBuffID = 0
    L1_2 = print
    L2_2 = "Buffer not exist, ID: "
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
applyBuffer = L0_1
function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2 * 0.017453292519943295
  return L1_2
end
deg2rad = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = vector3
  L4_2 = A0_2 + 0.0
  L5_2 = A1_2 + 0.0
  L6_2 = A2_2 + 0.0
  return L3_2(L4_2, L5_2, L6_2)
end
vec3 = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vec3
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.z
  L6_2 = A1_2.z
  L5_2 = L5_2 + L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
vadd = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vec3
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.z
  L6_2 = A1_2.z
  L5_2 = L5_2 - L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
vsub = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = vec3
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 * A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
vmul = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  return L2_2
end
vdot = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.sqrt
  L2_2 = vdot
  L3_2 = A0_2
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
vlen = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = vlen
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1.0E-6
  if L1_2 < L2_2 then
    L2_2 = vec3
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = vmul
  L3_2 = A0_2
  L4_2 = 1.0
  L4_2 = L4_2 / L1_2
  return L2_2(L3_2, L4_2)
end
vnorm = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = deg2rad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = deg2rad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
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
rotationToDirection = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsModelValid
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 < L2_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
requestModelArrow = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = mySword
  if L1_2 > 0 then
    L1_2 = 1
    L2_2 = SwordList
    L3_2 = mySword
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.trailsword
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SwordList
      L6_2 = mySword
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.trailsword
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2[5]
      L6_2 = handCombatEffect
      L6_2 = L6_2[L5_2]
      L7_2 = vector3
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = rot
      if L8_2 then
        L7_2 = rot
      end
      L8_2 = IsEntityVisible
      L9_2 = L0_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = Sfoggiate
        if L8_2 then
          L8_2 = mySword
          if L8_2 > 0 then
            L8_2 = SwordList
            L9_2 = mySword
            L8_2 = L8_2[L9_2]
            L8_2 = L8_2.trailsword
            L8_2 = L8_2[L4_2]
            L9_2 = SafeEntToNet
            L10_2 = L0_2
            L9_2 = L9_2(L10_2)
            L10_2 = nil
            L11_2 = myBuffID
            if L11_2 > 0 then
              L11_2 = colorFx
              L12_2 = BufferList
              L13_2 = myBuffID
              L12_2 = L12_2[L13_2]
              L12_2 = L12_2.c
              L10_2 = L11_2[L12_2]
            end
            L11_2 = TriggerServerEvent
            L12_2 = "ptfx:trailOnPedBone"
            L13_2 = {}
            L14_2 = L6_2.a
            L13_2.pd = L14_2
            L14_2 = L6_2.b
            L13_2.pn = L14_2
            L13_2.pedNet = L9_2
            L14_2 = {}
            L15_2 = L8_2[1]
            L16_2 = L8_2[2]
            L17_2 = L8_2[3]
            L14_2[1] = L15_2
            L14_2[2] = L16_2
            L14_2[3] = L17_2
            L13_2.off = L14_2
            L14_2 = {}
            L15_2 = rot
            if not L15_2 then
              L15_2 = L7_2
            end
            L15_2 = L15_2.x
            L16_2 = rot
            if not L16_2 then
              L16_2 = L7_2
            end
            L16_2 = L16_2.y
            L17_2 = rot
            if not L17_2 then
              L17_2 = L7_2
            end
            L17_2 = L17_2.z
            L14_2[1] = L15_2
            L14_2[2] = L16_2
            L14_2[3] = L17_2
            L13_2.rot = L14_2
            L14_2 = L8_2[6]
            if not L14_2 then
              L14_2 = 0
            end
            L13_2.bone = L14_2
            L14_2 = L8_2[4]
            if not L14_2 then
              L14_2 = 1.0
            end
            L13_2.scale = L14_2
            L13_2.c = L10_2
            L11_2(L12_2, L13_2)
          end
        end
      end
    end
  end
end
HandFX = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = specialMove
  if L0_2 >= 100 then
    specialMove = 100
    L0_2 = avvisoSpecial
    if not L0_2 then
      avvisoSpecial = true
      L0_2 = mexSpecialMove
      L0_2()
    end
  end
end
checkSpecialMove = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
RotationToDirectionDaFF = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetGameplayCamRot
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L3_2 = RotationToDirectionDaFF
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L6_2 = L3_2.y
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L6_2 = L3_2.z
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.z = L5_2
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = -1
  L14_2 = PlayerPedId
  L14_2 = L14_2()
  L15_2 = 7
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
RayCastGamePlayCameraCC = L0_1
moltiplicatoreRoll = 3
myTabMove = false
stoCreandoStile = false
ColpiPlayer = 0
DelaySkill = 50
L0_1 = DelaySkill
L1_1 = moltiplicatoreRoll
L0_1 = L0_1 * L1_1
mioCoolDown = L0_1
CombatActive = false
CombatListAperta = false
maxAnimCombo = 1
indexCombat = 1
indexHolster = 0
indexIdle = 0
myLastIdle = 0
waitStyleCombat = false
IDFONT = 0
IDBOMBA = 0
potenza = 0.25
LucetutAttiva = false
MaxDelaySkill = 150
stringaAttesa = ""
idstring = 0
mySword = 0
myShield = 0
myBow = 0
BowObj = nil
myArrow = 1
L0_1 = {}
AROV = L0_1
lastAROV = nil
SwordObj = nil
SwordObj2 = nil
ShieldObj = nil
wandObject = nil
Sfoggiate = false
SfoggiatoBow = false
cooldownCapriola = 0
L0_1 = GetGameTimer
L0_1 = L0_1()
cooldownFinisher = L0_1
FlagAnimBase = 1
L0_1 = maxStamina
FiatoneCapriola = L0_1
specialMove = 0
PossoCapriola = true
addFiatone = 2
L0_1 = FlagAnimBase
IDFLAG = L0_1
myTraining = 0
UltimaMossa = 0
StessaMossa = 0
lastMexSub = ""
timerDelSub = 0
editorcombatopen = false
FiatoneResisti = 30
L0_1 = {}
myMoves = L0_1
L0_1 = {}
bindSpells = L0_1
indexList = 1
MarkerOn = false
L0_1 = {}
tnsa = L0_1
L0_1 = {}
tnsd = L0_1
L0_1 = {}
tnsw = L0_1
L0_1 = {}
tsa = L0_1
L0_1 = {}
tsd = L0_1
L0_1 = {}
tsw = L0_1
stringaW = ""
stringaA = ""
stringaD = ""
stringaSW = ""
stringaSA = ""
stringaSD = ""
goon = false
L0_1 = {}
myCombatList = L0_1
L0_1 = {}
MioNemico = L0_1
FightPed = nil
closeall = false
inAnimList = false
PossoFodera = true
TargetCoords = nil
indexTarget = 0
L0_1 = {}
TrainingPed = L0_1
SpeedFight = 4.2
HoRollato = false
L0_1 = {}
BonesCheck = L0_1
myHit = 0
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = Sfoggiate
  if L2_2 then
    L2_2 = mySword
    if L2_2 > 0 then
      L2_2 = SwordList
      L3_2 = mySword
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.dmg
      if nil ~= L2_2 then
        L2_2 = SwordList
        L3_2 = mySword
        L2_2 = L2_2[L3_2]
        L1_2 = L2_2.dmg
      end
    end
  end
  L2_2 = EasyCombat
  if not L2_2 then
    L2_2 = IsDisabledControlPressed
    L3_2 = 0
    L4_2 = 21
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = IsControlPressed
      L3_2 = 0
      L4_2 = 21
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        goto lbl_39
      end
    end
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = L1_2 * 1.5
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  ::lbl_39::
  if nil == L1_2 or 0 == L1_2 then
    L1_2 = 1
  end
  L2_2 = CreatureDeleteMoreDamage
  if L2_2 > 0 then
    L2_2 = ImACreaturePed
    L3_2 = ped
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = L1_2 * 2
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      L2_2 = FiatoneCapriola
      L3_2 = delStaminaFight
      L4_2 = CreatureDeleteMoreDamage
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 - L3_2
      FiatoneCapriola = L2_2
    end
  end
  L2_2 = StessaMossa
  if 10000 == L2_2 then
    L2_2 = penalSameMove
    if L2_2 then
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = L1_2 / 2
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      if L1_2 <= 1 then
        L1_2 = 1
      end
    end
  end
  L2_2 = lastHitMorePower
  if L2_2 > 0 then
    L2_2 = AnimFightList
    L3_2 = indexCombat
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.maxhit
    if L2_2 > 1 then
      L2_2 = AnimFightList
      L3_2 = indexCombat
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.maxhit
      L3_2 = myHit
      L2_2 = L2_2 - L3_2
      L1_2 = L1_2 + L2_2
      L2_2 = myHit
      if L2_2 > 1 then
        L2_2 = myHit
        L3_2 = AnimFightList
        L4_2 = indexCombat
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.maxhit
        L3_2 = L3_2 - 1
        if L2_2 == L3_2 then
          L2_2 = lastHitMorePower
          L1_2 = L1_2 + L2_2
        end
      end
    end
  end
  L2_2 = FiatoneCapriola
  if L2_2 < 10 then
    L2_2 = lessDamageWithLowStamina
    if L2_2 then
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = L1_2 / 2
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 1
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_2
  L2_2 = false
  function L3_2(A0_3, A1_3, A2_3)
    local L3_3
    L3_3 = A1_3 - A0_3
    L3_3 = L3_3 + 1
    L3_3 = L3_3 * 2
    L3_3 = A2_3 - L3_3
    return L3_3
  end
  GetHitDamage = L3_2
  L3_2 = AnimFightList
  L4_2 = indexCombat
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.maxhit
  if L3_2 > 1 then
    L3_2 = GetHitDamage
    L4_2 = myHit
    L5_2 = AnimFightList
    L6_2 = indexCombat
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.maxhit
    L6_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2 = L3_2
    L4_2 = myHit
    L5_2 = AnimFightList
    L6_2 = indexCombat
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.maxhit
    if L4_2 == L5_2 then
      L1_2 = L1_2 / 2
    end
  end
  L3_2 = myHit
  L4_2 = AnimFightList
  L5_2 = indexCombat
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.maxhit
  if L3_2 == L4_2 then
    L2_2 = true
  end
  if nil ~= A0_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = GetEntityHealth
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2 - L1_2
      if L3_2 <= 105 and not L2_2 then
        L1_2 = 1
      end
    end
  end
  return L1_2
end
calcolaDanni = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityPlayingAnim
  L3_2 = L1_2
  L4_2 = AnimFightList
  L5_2 = indexCombat
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.a
  L5_2 = AnimFightList
  L6_2 = indexCombat
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.b
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    startTimeJumpObj = L2_2
    L2_2 = SyncRotAndPos
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = Sfoggiate
    if L2_2 then
      L2_2 = mySword
      if L2_2 > 0 then
        L2_2 = genSwordWosh
        L2_2()
    end
    else
      L2_2 = genPunchWosh
      L2_2()
    end
    L2_2 = BulletFunc
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = HatchetFunc
    L2_2()
    L2_2 = PickaxeFunc
    L2_2()
    L2_2 = SwordList
    L3_2 = mySword
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = SwordList
      L3_2 = mySword
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.trailPreset
    end
    if L2_2 then
      L3_2 = DoesEntityExist
      L4_2 = SwordObj
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.StartTrailOnEntity
        L5_2 = SwordObj
        L6_2 = L2_2
        L7_2 = 700
        L8_2 = false
        L9_2 = "sword1"
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
      L3_2 = DoesEntityExist
      L4_2 = SwordObj2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.StartTrailOnEntity
        L5_2 = SwordObj2
        L6_2 = L2_2
        L7_2 = 700
        L8_2 = false
        L9_2 = "sword2"
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
    end
    L3_2 = calcolaDanni
    L3_2 = L3_2()
    L4_2 = hitMonsters
    L5_2 = GetEntityCoords
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = GetEntityCoords
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetEntityForwardVector
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L6_2 = HitNearbyTrainingDummies
    L7_2 = L4_2
    L8_2 = L5_2
    L9_2 = 3.0
    L10_2 = 25
    L11_2 = 1.3
    L12_2 = myHit
    L13_2 = AnimFightList
    L14_2 = indexCombat
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.maxhit
    L12_2 = L12_2 == L13_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = SetEntityVelocity
    L7_2 = L1_2
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 2.0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = shakeEveryWash
    if L6_2 then
      L6_2 = CreateThread
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = 0.015
        L2_3 = BigWeap
        L2_3 = L2_3()
        if L2_3 then
          L1_3 = L1_3 * 2
          L2_3 = GetEntityForwardVector
          L3_3 = L1_2
          L2_3 = L2_3(L3_3)
          L3_3 = table
          L3_3 = L3_3.unpack
          L4_3 = GetEntityCoords
          L5_3 = L1_2
          L4_3 = L4_3(L5_3)
          L5_3 = L2_3 * 3.5
          L4_3 = L4_3 + L5_3
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          L6_3 = PlayEffect
          L7_3 = "des_shipwreck"
          L8_3 = "ent_ray_shipwreck_wood_debris"
          L9_3 = vector3
          L10_3 = L3_3
          L11_3 = L4_3
          L12_3 = L5_3
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          L10_3 = 0.7
          L6_3(L7_3, L8_3, L9_3, L10_3)
          L6_3 = PlayEffect
          L7_3 = "cut_prologue"
          L8_3 = "cs_prologue_tree_crash"
          L9_3 = vector3
          L10_3 = L3_3
          L11_3 = L4_3
          L12_3 = L5_3
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          L10_3 = 2.5
          L6_3(L7_3, L8_3, L9_3, L10_3)
        end
        while true do
          L1_3 = L1_3 - 1.0E-4
          L2_3 = 0.001
          if L1_3 < L2_3 then
            L1_3 = 0.001
          end
          L2_3 = ShakeGameplayCam
          L3_3 = "SMALL_EXPLOSION_SHAKE"
          L4_3 = L1_3
          L2_3(L3_3, L4_3)
          L2_3 = GetGameTimer
          L2_3 = L2_3()
          L2_3 = L2_3 - L0_3
          L3_3 = 250
          if L2_3 > L3_3 then
            L2_3 = StopGameplayCamShaking
            L3_3 = true
            L2_3(L3_3)
            return
          end
          L2_3 = Wait
          L3_3 = timerShaker
          L2_3(L3_3)
        end
      end
      L6_2(L7_2)
    end
  end
end
OnEveryHit = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityPlayingAnim
  L3_2 = L1_2
  L4_2 = AnimFightList
  L5_2 = indexCombat
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.a
  L5_2 = AnimFightList
  L6_2 = indexCombat
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.b
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L2_2 = vector3
    L3_2 = 0.0
    L4_2 = 0
    L5_2 = 0.0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2.fx
    if nil ~= L3_2 then
      L3_2 = A0_2.fx
      L4_2 = 1.0
      L5_2 = A0_2.sizefx
      if nil ~= L5_2 then
        L4_2 = A0_2.sizefx
      end
      L5_2 = Sfoggiate
      if L5_2 then
        L5_2 = mySword
        if L5_2 > 0 then
          L5_2 = SwordList
          L6_2 = mySword
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.trailsword
          if nil ~= L5_2 then
            L5_2 = SwordList
            L6_2 = mySword
            L5_2 = L5_2[L6_2]
            L5_2 = L5_2.trailsword
            L5_2 = L5_2[1]
            L6_2 = SafeEntToNet
            L7_2 = L1_2
            L6_2 = L6_2(L7_2)
            if not L6_2 then
              L7_2 = print
              L8_2 = "This ped not exist. "
              L9_2 = L1_2
              L7_2(L8_2, L9_2)
              return
            end
            L7_2 = nil
            L8_2 = myBuffID
            if L8_2 > 0 then
              L8_2 = colorFx
              L9_2 = BufferList
              L10_2 = myBuffID
              L9_2 = L9_2[L10_2]
              L9_2 = L9_2.c
              L7_2 = L8_2[L9_2]
            end
            L8_2 = TriggerServerEvent
            L9_2 = "ptfx:trailOnPedBone"
            L10_2 = {}
            L11_2 = L3_2.a
            L10_2.pd = L11_2
            L11_2 = L3_2.b
            L10_2.pn = L11_2
            L10_2.pedNet = L6_2
            L11_2 = {}
            L12_2 = L5_2[1]
            L13_2 = L5_2[2]
            L14_2 = L5_2[3]
            L11_2[1] = L12_2
            L11_2[2] = L13_2
            L11_2[3] = L14_2
            L10_2.off = L11_2
            L11_2 = {}
            L12_2 = rot
            if not L12_2 then
              L12_2 = L2_2
            end
            L12_2 = L12_2.x
            L13_2 = rot
            if not L13_2 then
              L13_2 = L2_2
            end
            L13_2 = L13_2.y
            L14_2 = rot
            if not L14_2 then
              L14_2 = L2_2
            end
            L14_2 = L14_2.z
            L11_2[1] = L12_2
            L11_2[2] = L13_2
            L11_2[3] = L14_2
            L10_2.rot = L11_2
            L11_2 = L5_2[6]
            if not L11_2 then
              L11_2 = 0
            end
            L10_2.bone = L11_2
            L10_2.scale = L4_2
            L10_2.c = L7_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
    L3_2 = A0_2.fx2
    if nil ~= L3_2 then
      L3_2 = A0_2.fx2
      L4_2 = 1.0
      L5_2 = A0_2.sizefx2
      if nil ~= L5_2 then
        L4_2 = A0_2.sizefx2
      end
      L5_2 = Sfoggiate
      if L5_2 then
        L5_2 = mySword
        if L5_2 > 0 then
          L5_2 = SwordList
          L6_2 = mySword
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.trailsword
          if nil ~= L5_2 then
            L5_2 = SwordList
            L6_2 = mySword
            L5_2 = L5_2[L6_2]
            L5_2 = L5_2.trailsword
            L5_2 = L5_2[1]
            L6_2 = SafeEntToNet
            L7_2 = L1_2
            L6_2 = L6_2(L7_2)
            if not L6_2 then
              L7_2 = print
              L8_2 = "This ped not exist. "
              L9_2 = L1_2
              L7_2(L8_2, L9_2)
              return
            end
            L7_2 = nil
            L8_2 = myBuffID
            if L8_2 > 0 then
              L8_2 = colorFx
              L9_2 = BufferList
              L10_2 = myBuffID
              L9_2 = L9_2[L10_2]
              L9_2 = L9_2.c
              L7_2 = L8_2[L9_2]
            end
            L8_2 = TriggerServerEvent
            L9_2 = "ptfx:trailOnPedBone"
            L10_2 = {}
            L11_2 = L3_2.a
            L10_2.pd = L11_2
            L11_2 = L3_2.b
            L10_2.pn = L11_2
            L10_2.pedNet = L6_2
            L11_2 = {}
            L12_2 = L5_2[1]
            L13_2 = L5_2[2]
            L14_2 = L5_2[3]
            L11_2[1] = L12_2
            L11_2[2] = L13_2
            L11_2[3] = L14_2
            L10_2.off = L11_2
            L11_2 = {}
            L12_2 = rot
            if not L12_2 then
              L12_2 = L2_2
            end
            L12_2 = L12_2.x
            L13_2 = rot
            if not L13_2 then
              L13_2 = L2_2
            end
            L13_2 = L13_2.y
            L14_2 = rot
            if not L14_2 then
              L14_2 = L2_2
            end
            L14_2 = L14_2.z
            L11_2[1] = L12_2
            L11_2[2] = L13_2
            L11_2[3] = L14_2
            L10_2.rot = L11_2
            L11_2 = L5_2[6]
            if not L11_2 then
              L11_2 = 0
            end
            L10_2.bone = L11_2
            L10_2.scale = L4_2
            L10_2.c = L7_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
  end
end
FxOnMove = L0_1
debuggerClb = nil
startTimeJumpObj = 0
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = EasyCombat
  if L0_2 then
    L0_2 = EasyCombatStyle
    L1_2 = myWStyle
    L0_2 = L0_2[L1_2]
    if nil ~= L0_2 then
      L0_2 = EasyCombatStyle
      L1_2 = myWStyle
      L0_2 = L0_2[L1_2]
      return L0_2
    else
      myWStyle = 1
      L0_2 = print
      L1_2 = "Your combat mode not exist, resetted (Easy Combat)."
      L0_2(L1_2)
      L0_2 = TriggerServerEvent
      L1_2 = "updatePlayerInfo"
      L2_2 = mySword
      L3_2 = myShield
      L4_2 = myCombatList
      L5_2 = myWStyle
      L6_2 = myBow
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      L0_2 = EasyCombatStyle
      L1_2 = myWStyle
      L0_2 = L0_2[L1_2]
      return L0_2
    end
  else
    L0_2 = FightWStyle
    L1_2 = myWStyle
    L0_2 = L0_2[L1_2]
    if nil ~= L0_2 then
      L0_2 = FightWStyle
      L1_2 = myWStyle
      L0_2 = L0_2[L1_2]
      return L0_2
    else
      myWStyle = 1
      L0_2 = print
      L1_2 = "Your combat mode not exist, resetted."
      L0_2(L1_2)
      L0_2 = TriggerServerEvent
      L1_2 = "updatePlayerInfo"
      L2_2 = mySword
      L3_2 = myShield
      L4_2 = myCombatList
      L5_2 = myWStyle
      L6_2 = myBow
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      L0_2 = FightWStyle
      L1_2 = myWStyle
      L0_2 = L0_2[L1_2]
      return L0_2
    end
  end
end
getStyleCombat = L0_1
L0_1 = exports
L1_1 = "getStyleCombat"
L2_1 = getStyleCombat
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
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
end
StaccamiDaClimb = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2 * 3.0
  if nil == A0_2 then
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    A0_2 = L3_2
  end
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
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
          L3_2 = pedNearTree
          L3_2 = L3_2()
          if L3_2 then
          else
            L3_2 = GetEntityForwardVector
            L4_2 = A0_2
            L3_2 = L3_2(L4_2)
            L4_2 = GetEntityVelocity
            L5_2 = A0_2
            L4_2 = L4_2(L5_2)
            L5_2 = SetEntityVelocity
            L6_2 = A0_2
            L7_2 = L3_2.x
            L7_2 = L7_2 * L2_2
            L8_2 = L3_2.y
            L8_2 = L8_2 * L2_2
            L9_2 = L4_2.z
            L5_2(L6_2, L7_2, L8_2, L9_2)
            L5_2 = MarkerOn
            if L5_2 then
              L5_2 = print
              L6_2 = "Speed pushForward: "
              L7_2 = L2_2
              L8_2 = " ("
              L9_2 = A1_2
              L10_2 = ")"
              L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
              L5_2(L6_2)
            end
          end
        end
      end
    end
  end
end
pushForward = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  myHit = 0
  L2_2 = A0_2[A1_2]
  L2_2 = L2_2.slow
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  UltimaMossa = A1_2
  L4_2 = FixCrouch
  L4_2()
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L1_3 = A1_2
    L0_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.maxhit
    if L0_3 > 1 then
      L0_3 = 1
      L2_3 = A1_2
      L1_3 = A0_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.maxhit
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = IsPedRagdoll
        L5_3 = L3_2
        L4_3 = L4_3(L5_3)
        if not L4_3 then
          L4_3 = IsPedFatallyInjured
          L5_3 = L3_2
          L4_3 = L4_3(L5_3)
          if not L4_3 then
            L4_3 = GetEntityCoords
            L5_3 = L3_2
            L4_3 = L4_3(L5_3)
            L5_3 = OnEveryHit
            L7_3 = A1_2
            L6_3 = A0_2
            L6_3 = L6_3[L7_3]
            L6_3 = L6_3.bones
            L5_3(L6_3)
            L6_3 = A1_2
            L5_3 = A0_2
            L5_3 = L5_3[L6_3]
            L5_3 = L5_3.maxhit
            if L3_3 == L5_3 then
              L5_3 = FxOnMove
              L7_3 = A1_2
              L6_3 = A0_2
              L6_3 = L6_3[L7_3]
              L5_3(L6_3)
            end
            L5_3 = myHit
            L7_3 = A1_2
            L6_3 = A0_2
            L6_3 = L6_3[L7_3]
            L6_3 = L6_3.maxhit
            if L5_3 < L6_3 then
              L5_3 = GetEntityCoords
              L6_3 = L3_2
              L5_3 = L5_3(L6_3)
              L6_3 = GetEntityForwardVector
              L7_3 = L3_2
              L6_3 = L6_3(L7_3)
              L7_3 = 3.0
              L8_3 = table
              L8_3 = L8_3.unpack
              L9_3 = L6_3 * L7_3
              L9_3 = L5_3 + L9_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              L11_3 = vector3
              L12_3 = L5_3.x
              L12_3 = L8_3 - L12_3
              L13_3 = L5_3.y
              L13_3 = L9_3 - L13_3
              L14_3 = L10_3
              L11_3 = L11_3(L12_3, L13_3, L14_3)
              L12_3 = GetEntityVelocity
              L13_3 = L3_2
              L12_3 = L12_3(L13_3)
              L13_3 = SetEntityVelocity
              L14_3 = L3_2
              L15_3 = L12_3.x
              L16_3 = L11_3.x
              L15_3 = L15_3 + L16_3
              L16_3 = L12_3.y
              L17_3 = L11_3.y
              L16_3 = L16_3 + L17_3
              L17_3 = 0.0
              L13_3(L14_3, L15_3, L16_3, L17_3)
              L14_3 = A1_2
              L13_3 = A0_2
              L13_3 = L13_3[L14_3]
              L13_3 = L13_3.push
              if L13_3 then
                L13_3 = inblockfunc
                L14_3 = L3_2
                L13_3 = L13_3(L14_3)
                if not L13_3 then
                  L13_3 = pushForward
                  L14_3 = L3_2
                  L15_3 = 2.5
                  L13_3(L14_3, L15_3)
              end
              else
                L13_3 = pushForward
                L14_3 = L3_2
                L15_3 = 1.5
                L13_3(L14_3, L15_3)
              end
              L13_3 = changeAnimSpeed
              L14_3 = A1_2
              L13_3 = L13_3(L14_3)
              L15_3 = A1_2
              L14_3 = A0_2
              L14_3 = L14_3[L15_3]
              L14_3 = L14_3.delay
              L14_3 = L14_3 / L13_3
              L15_3 = Wait
              L16_3 = L14_3
              L15_3(L16_3)
              L15_3 = myHit
              L15_3 = L15_3 + 1
              myHit = L15_3
            end
          end
        end
      end
    else
      L0_3 = IsPedRagdoll
      L1_3 = L3_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = L3_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = L3_2
          L0_3 = L0_3(L1_3)
          L1_3 = OnEveryHit
          L3_3 = A1_2
          L2_3 = A0_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.bones
          L1_3(L2_3)
          L1_3 = FxOnMove
          L3_3 = A1_2
          L2_3 = A0_2
          L2_3 = L2_3[L3_3]
          L1_3(L2_3)
          L2_3 = A1_2
          L1_3 = A0_2
          L1_3 = L1_3[L2_3]
          L1_3 = L1_3.push
          if L1_3 then
            L1_3 = pushForward
            L2_3 = L3_2
            L3_3 = 2.0
            L1_3(L2_3, L3_3)
          end
        end
      end
    end
  end
  L4_2(L5_2)
  if L2_2 then
    L4_2 = SlowMe
    L4_2()
  end
end
DashMePreview = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 12
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L3_2 = IsEntityPlayingAnim
  L4_2 = A0_2
  L5_2 = "melee@wfire@beast_werewolf_animset"
  L6_2 = "wfire_wmg_werewolf_beast_forward_sprint_anim"
  L7_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = inFinisher
    if not L3_2 then
      L3_2 = LoadAnim
      L4_2 = idleFight
      L4_2 = L4_2[L2_2]
      L4_2 = L4_2.a
      L3_2(L4_2)
      L3_2 = inFinisher
      if L3_2 then
        return
      end
      L3_2 = TaskPlayAnim
      L4_2 = A0_2
      L5_2 = idleFight
      L5_2 = L5_2[L2_2]
      L5_2 = L5_2.a
      L6_2 = idleFight
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.b
      L7_2 = 3.0
      L8_2 = 1.0
      L9_2 = -1
      L10_2 = 49
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
end
nemicoIdleAnim = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = IsPedFatallyInjured
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedDeadOrDying
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = inFinisher
      if not L1_2 then
        L1_2 = "wm_greatsword_forward_dash"
        L2_2 = "wm_greatsword_forward_dash_clip"
        L3_2 = LoadAnim
        L4_2 = L1_2
        L3_2(L4_2)
        L3_2 = Wait
        L4_2 = math
        L4_2 = L4_2.random
        L5_2 = 950
        L6_2 = 1150
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = inFinisher
        if L3_2 then
          return
        end
        L3_2 = makeEntityFaceEntity
        L4_2 = A0_2
        L5_2 = PlayerPedId
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = TaskPlayAnim
        L4_2 = A0_2
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = 3.0
        L8_2 = 1.0
        L9_2 = 350
        L10_2 = 0
        L11_2 = false
        L12_2 = false
        L13_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = Wait
        L4_2 = 350
        L3_2(L4_2)
        L3_2 = inFinisher
        if L3_2 then
          return
        end
        L3_2 = ClearPedSecondaryTask
        L4_2 = A0_2
        L3_2(L4_2)
        L3_2 = ClearPedTasks
        L4_2 = A0_2
        L3_2(L4_2)
        L3_2 = makeEntityFaceEntity
        L4_2 = A0_2
        L5_2 = PlayerPedId
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = Wait
        L4_2 = math
        L4_2 = L4_2.random
        L5_2 = 350
        L6_2 = 950
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = inFinisher
        if L3_2 then
          return
        end
      end
    end
  end
end
CapriolaAvanti = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = inFinisher
  if not L1_2 then
    L1_2 = 1
    L2_2 = idleFight
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = IsEntityPlayingAnim
      L6_2 = A0_2
      L7_2 = idleFight
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.a
      L8_2 = idleFight
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.b
      L9_2 = 3
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if L5_2 then
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.inroll
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L5_2 = ClearPedSecondaryTask
          L6_2 = A0_2
          L5_2(L6_2)
          L5_2 = ClearPedTasks
          L6_2 = A0_2
          L5_2(L6_2)
          break
        end
      end
    end
  end
end
AnnullaEventualeIdle = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = inFinisher
  if not L0_2 then
    L0_2 = 1
    L1_2 = idleFight
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = IsEntityPlayingAnim
      L5_2 = npc
      L6_2 = idleFight
      L6_2 = L6_2[L3_2]
      L6_2 = L6_2.a
      L7_2 = idleFight
      L7_2 = L7_2[L3_2]
      L7_2 = L7_2.b
      L8_2 = 3
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      if L4_2 then
        L4_2 = ClearPedSecondaryTask
        L5_2 = npc
        L4_2(L5_2)
        L4_2 = ClearPedTasksImmediately
        L5_2 = npc
        L4_2(L5_2)
        break
      end
    end
  end
end
BeforeRoll = L0_1
DistLottaNPC = 1.5
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    DistLottaNPC = 2.0
  else
    DistLottaNPC = 1.3
  end
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityForwardVector
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = DistLottaNPC
  L4_2 = L2_2 * L4_2
  L4_2 = L1_2 + L4_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = GetEntityCoords
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = vector3
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L6_2 - L7_2
  L6_2 = #L6_2
  L7_2 = DistLottaNPC
  if L6_2 < L7_2 then
    L6_2 = true
    return L6_2
  else
    L6_2 = false
    return L6_2
  end
end
VicinoAlNemico = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = -1
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2 + 1.5
  L10_2 = L1_2
  L11_2 = L2_2
  L12_2 = L3_2 - 5.0
  L13_2 = L4_2
  L14_2 = -1
  L15_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if L6_2 then
    L10_2 = vector3
    L11_2 = L7_2.x
    L12_2 = L7_2.y
    L13_2 = L7_2.z
    L13_2 = L13_2 + 1.0
    return L10_2(L11_2, L12_2, L13_2)
  end
end
SottoSonoLibero = L0_1
L0_1 = RegisterNetEvent
L1_1 = "combat:setalpha"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "combat:setalpha"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 ~= A0_2 then
    L2_2 = GetPlayerPed
    L3_2 = GetPlayerFromServerId
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = ped
      if L2_2 ~= L3_2 then
        L3_2 = SetEntityAlpha
        L4_2 = L2_2
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
potenzaAvanti = true
arrowForce = 0.0
FAI_DANNO = false
colpitoVarOut = false
maxRateBow = 35
wasRagdoll = false
startHeading = nil
DEADZONE_DEG = 20.0
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = AnimFightList
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = AnimFightList
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.spiid
    L2_2 = myOwnSpeed
    if L2_2 > 1.0 then
      L1_2 = myOwnSpeed
    end
    L2_2 = L1_2 or L2_2
    if not L1_2 then
      L2_2 = 1.0
    end
    return L2_2
  else
    L1_2 = 1.0
    return L1_2
  end
end
changeAnimSpeed = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = TaskPlayAnim
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 3.0
  L10_2 = 3.0
  L11_2 = A3_2 - 50
  L12_2 = IDFLAG
  L13_2 = 0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if nil ~= A4_2 then
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = SetEntityAnimSpeed
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
StartCombatAnim = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = delBowCam
  L1_2()
  L1_2 = DetachEntity
  L2_2 = BowObj
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = BowList
  L2_2 = myBow
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.idle
  L2_2 = AttachEntityToEntity
  L3_2 = BowObj
  L4_2 = L0_2
  L5_2 = GetPedBoneIndex
  L6_2 = L0_2
  L7_2 = 57005
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L1_2[1]
  L7_2 = L1_2[2]
  L8_2 = L1_2[3]
  L9_2 = L1_2[4]
  L10_2 = L1_2[5]
  L11_2 = L1_2[6]
  L12_2 = true
  L13_2 = true
  L14_2 = false
  L15_2 = true
  L16_2 = 1
  L17_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = LoadAnim
  L3_2 = holsterlist
  L3_2 = L3_2[7]
  L3_2 = L3_2.a
  L2_2(L3_2)
  L2_2 = TaskPlayAnim
  L3_2 = L0_2
  L4_2 = holsterlist
  L4_2 = L4_2[7]
  L4_2 = L4_2.a
  L5_2 = holsterlist
  L5_2 = L5_2[7]
  L5_2 = L5_2.b
  L6_2 = 3.0
  L7_2 = 3.0
  L8_2 = holsterlist
  L8_2 = L8_2[7]
  L8_2 = L8_2.tim
  L9_2 = 49
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2 = Wait
  L3_2 = 500
  L2_2(L3_2)
  SfoggiatoBow = false
  L2_2 = TriggerEvent
  L3_2 = "striano_combat:client:onBowUnequipped"
  L4_2 = myBow
  L2_2(L3_2, L4_2)
  L2_2 = DetachEntity
  L3_2 = BowObj
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = BowList
  L3_2 = myBow
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.posato
  L3_2 = AttachEntityToEntity
  L4_2 = BowObj
  L5_2 = L0_2
  L6_2 = GetPedBoneIndex
  L7_2 = L0_2
  L8_2 = 24818
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L2_2[1]
  L8_2 = L2_2[2]
  L9_2 = L2_2[3]
  L10_2 = L2_2[4]
  L11_2 = L2_2[5]
  L12_2 = L2_2[6]
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L16_2 = true
  L17_2 = 1
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = GetEntityCoords
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = SuonoGlobal
  L5_2 = -1
  L6_2 = "Zoom_Left"
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L11_2 = 1
  L12_2 = 7.0
  L13_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = ResetStrafeImmediately
  L5_2 = L0_2
  L4_2(L5_2)
  L4_2 = ClearPedTasks
  L5_2 = L0_2
  L4_2(L5_2)
end
FODERA_ARCO = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = inWitcher
  if not L1_2 then
    L1_2 = GetSelectedPedWeapon
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if -1569615261 == L1_2 then
      L1_2 = IsPedArmed
      L2_2 = L0_2
      L3_2 = 7
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = PossoFodera
        if L1_2 then
          L1_2 = mySword
          if L1_2 > 0 then
            PossoFodera = false
            L1_2 = CreateThread
            function L2_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
              CombatActive = false
              L0_3 = ClearPedTasks
              L1_3 = L0_2
              L0_3(L1_3)
              L0_3 = ClearPedSecondaryTask
              L1_3 = L0_2
              L0_3(L1_3)
              L0_3 = Sfoggiate
              if L0_3 then
                L0_3 = FoderaArmi
                L0_3()
              else
                L0_3 = handleSword
                L0_3()
              end
              L0_3 = SfoggiatoBow
              if L0_3 then
                L0_3 = DetachEntity
                L1_3 = BowObj
                L0_3(L1_3)
                L0_3 = Wait
                L1_3 = 0
                L0_3(L1_3)
                L0_3 = BowList
                L1_3 = myBow
                L0_3 = L0_3[L1_3]
                L0_3 = L0_3.posato
                L1_3 = AttachEntityToEntity
                L2_3 = BowObj
                L3_3 = L0_2
                L4_3 = GetPedBoneIndex
                L5_3 = L0_2
                L6_3 = 24818
                L4_3 = L4_3(L5_3, L6_3)
                L5_3 = L0_3[1]
                L6_3 = L0_3[2]
                L7_3 = L0_3[3]
                L8_3 = L0_3[4]
                L9_3 = L0_3[5]
                L10_3 = L0_3[6]
                L11_3 = true
                L12_3 = true
                L13_3 = false
                L14_3 = true
                L15_3 = 1
                L16_3 = true
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                SfoggiatoBow = false
                L1_3 = TriggerEvent
                L2_3 = "striano_combat:client:onBowUnequipped"
                L3_3 = myBow
                L1_3(L2_3, L3_3)
              end
              L0_3 = delBowCam
              L0_3()
              L0_3 = holsterlist
              L1_3 = SwordList
              L2_3 = mySword
              L1_3 = L1_3[L2_3]
              L1_3 = L1_3.holster
              L0_3 = L0_3[L1_3]
              L0_3 = L0_3.tim
              L1_3 = Wait
              L2_3 = L0_3 - 400
              L1_3(L2_3)
              PossoFodera = true
              L1_3 = ClearPedTasks
              L2_3 = L0_2
              L1_3(L2_3)
              L1_3 = ClearPedSecondaryTask
              L2_3 = L0_2
              L1_3(L2_3)
            end
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
ManageBowAndSword = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = inWitcher
  if not L1_2 then
    L1_2 = GetSelectedPedWeapon
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if -1569615261 == L1_2 then
      L1_2 = IsPedArmed
      L2_2 = L0_2
      L3_2 = 7
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = ImACreaturePed
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = PossoFodera
          if L1_2 then
            L1_2 = myBow
            if L1_2 > 0 then
              L1_2 = DoesEntityExist
              L2_2 = BowObj
              L1_2 = L1_2(L2_2)
              if L1_2 then
                L1_2 = ImACreaturePed
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  PossoFodera = false
                  L1_2 = CreateThread
                  function L2_2()
                    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
                    L0_3 = SfoggiatoBow
                    if L0_3 then
                      L0_3 = FODERA_ARCO
                      L0_3()
                    else
                      L0_3 = mySword
                      if L0_3 > 0 then
                        L0_3 = Sfoggiate
                        if L0_3 then
                          Sfoggiate = false
                          inHeavyWeap = false
                          L0_3 = SwordList
                          L1_3 = mySword
                          L0_3 = L0_3[L1_3]
                          L0_3 = L0_3.att
                          L1_3 = SwordList
                          L2_3 = mySword
                          L1_3 = L1_3[L2_3]
                          L1_3 = L1_3.posata1
                          if nil ~= L1_3 then
                            L1_3 = SwordList
                            L2_3 = mySword
                            L1_3 = L1_3[L2_3]
                            L0_3 = L1_3.posata1
                          end
                          L1_3 = table
                          L1_3 = L1_3.unpack
                          L2_3 = L0_3
                          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3 = L1_3(L2_3)
                          f = L6_3
                          e = L5_3
                          d = L4_3
                          c = L3_3
                          b = L2_3
                          a = L1_3
                          L1_3 = DetachEntity
                          L2_3 = SwordObj
                          L1_3(L2_3)
                          L1_3 = AttachEntityToEntity
                          L2_3 = SwordObj
                          L3_3 = L0_2
                          L4_3 = GetPedBoneIndex
                          L5_3 = L0_2
                          L6_3 = SwordList
                          L7_3 = mySword
                          L6_3 = L6_3[L7_3]
                          L6_3 = L6_3.boneposata1
                          L4_3 = L4_3(L5_3, L6_3)
                          L5_3 = a
                          L6_3 = b
                          L7_3 = c
                          L8_3 = d
                          L9_3 = e
                          L10_3 = f
                          L11_3 = true
                          L12_3 = true
                          L13_3 = false
                          L14_3 = true
                          L15_3 = 1
                          L16_3 = true
                          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                          L1_3 = SetModelAsNoLongerNeeded
                          L2_3 = prop1
                          L1_3(L2_3)
                          L1_3 = DoesEntityExist
                          L2_3 = SwordObj2
                          L1_3 = L1_3(L2_3)
                          if L1_3 then
                            L1_3 = DetachEntity
                            L2_3 = SwordObj2
                            L1_3(L2_3)
                            L1_3 = SwordList
                            L2_3 = mySword
                            L1_3 = L1_3[L2_3]
                            L1_3 = L1_3.posata2
                            L2_3 = table
                            L2_3 = L2_3.unpack
                            L3_3 = L1_3
                            L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3(L3_3)
                            f = L7_3
                            e = L6_3
                            d = L5_3
                            c = L4_3
                            b = L3_3
                            a = L2_3
                            L2_3 = AttachEntityToEntity
                            L3_3 = SwordObj2
                            L4_3 = L0_2
                            L5_3 = GetPedBoneIndex
                            L6_3 = L0_2
                            L7_3 = SwordList
                            L8_3 = mySword
                            L7_3 = L7_3[L8_3]
                            L7_3 = L7_3.boneposata2
                            L5_3 = L5_3(L6_3, L7_3)
                            L6_3 = a
                            L7_3 = b
                            L8_3 = c
                            L9_3 = d
                            L10_3 = e
                            L11_3 = f
                            L12_3 = true
                            L13_3 = true
                            L14_3 = false
                            L15_3 = true
                            L16_3 = 1
                            L17_3 = true
                            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                            L2_3 = SetModelAsNoLongerNeeded
                            L3_3 = prop2
                            L2_3(L3_3)
                          end
                        end
                      end
                      SfoggiatoBow = true
                      L0_3 = TriggerEvent
                      L1_3 = "striano_combat:client:onBowEquipped"
                      L2_3 = myBow
                      L0_3(L1_3, L2_3)
                      L0_3 = LoadAnim
                      L1_3 = holsterlist
                      L1_3 = L1_3[7]
                      L1_3 = L1_3.a
                      L0_3(L1_3)
                      L0_3 = TaskPlayAnim
                      L1_3 = L0_2
                      L2_3 = holsterlist
                      L2_3 = L2_3[7]
                      L2_3 = L2_3.a
                      L3_3 = holsterlist
                      L3_3 = L3_3[7]
                      L3_3 = L3_3.b
                      L4_3 = 3.0
                      L5_3 = 3.0
                      L6_3 = holsterlist
                      L6_3 = L6_3[7]
                      L6_3 = L6_3.tim
                      L7_3 = 49
                      L8_3 = false
                      L9_3 = false
                      L10_3 = false
                      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
                      L0_3 = Wait
                      L1_3 = 250
                      L0_3(L1_3)
                      L0_3 = DetachEntity
                      L1_3 = BowObj
                      L0_3(L1_3)
                      L0_3 = Wait
                      L1_3 = 25
                      L0_3(L1_3)
                      L0_3 = BowList
                      L1_3 = myBow
                      L0_3 = L0_3[L1_3]
                      L0_3 = L0_3.idle
                      L1_3 = AttachEntityToEntity
                      L2_3 = BowObj
                      L3_3 = L0_2
                      L4_3 = GetPedBoneIndex
                      L5_3 = L0_2
                      L6_3 = 57005
                      L4_3 = L4_3(L5_3, L6_3)
                      L5_3 = L0_3[1]
                      L6_3 = L0_3[2]
                      L7_3 = L0_3[3]
                      L8_3 = L0_3[4]
                      L9_3 = L0_3[5]
                      L10_3 = L0_3[6]
                      L11_3 = true
                      L12_3 = true
                      L13_3 = false
                      L14_3 = true
                      L15_3 = 1
                      L16_3 = true
                      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                      L1_3 = Wait
                      L2_3 = 250
                      L1_3(L2_3)
                      L1_3 = IdleStrafe
                      L1_3()
                      L1_3 = DetachEntity
                      L2_3 = BowObj
                      L1_3(L2_3)
                      L1_3 = Wait
                      L2_3 = 25
                      L1_3(L2_3)
                      L1_3 = BowList
                      L2_3 = myBow
                      L1_3 = L1_3[L2_3]
                      L1_3 = L1_3.attacco
                      L2_3 = AttachEntityToEntity
                      L3_3 = BowObj
                      L4_3 = L0_2
                      L5_3 = GetPedBoneIndex
                      L6_3 = L0_2
                      L7_3 = 18905
                      L5_3 = L5_3(L6_3, L7_3)
                      L6_3 = L1_3[1]
                      L7_3 = L1_3[2]
                      L8_3 = L1_3[3]
                      L9_3 = L1_3[4]
                      L10_3 = L1_3[5]
                      L11_3 = L1_3[6]
                      L12_3 = true
                      L13_3 = true
                      L14_3 = false
                      L15_3 = true
                      L16_3 = 1
                      L17_3 = true
                      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                      L2_3 = GetEntityCoords
                      L3_3 = L0_2
                      L2_3 = L2_3(L3_3)
                      L3_3 = SuonoGlobal
                      L4_3 = -1
                      L5_3 = "Zoom_Left"
                      L6_3 = L2_3.x
                      L7_3 = L2_3.y
                      L8_3 = L2_3.z
                      L9_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
                      L10_3 = 1
                      L11_3 = 7.0
                      L12_3 = 0
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                      L3_3 = EnableCombatMode
                      L3_3()
                    end
                    L0_3 = Wait
                    L1_3 = 250
                    L0_3(L1_3)
                    PossoFodera = true
                  end
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
ManageBowAndSword2 = L0_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0.0
    return L2_2
  end
  L2_2 = GetPedBoneCoords
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = L0_1
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2[A0_2] = L5_2
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2[A1_2]
  if not L5_2 then
    L5_2 = {}
    L5_2.lastPos = L2_2
    L5_2.lastTime = L3_2
    L5_2.speed = 0.0
  end
  L4_2[A1_2] = L5_2
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2.lastTime
  L5_2 = L3_2 - L5_2
  L5_2 = L5_2 / 1000.0
  if L5_2 > 0 then
    L6_2 = L2_2.x
    L7_2 = L4_2.lastPos
    L7_2 = L7_2.x
    L6_2 = L6_2 - L7_2
    L7_2 = L2_2.y
    L8_2 = L4_2.lastPos
    L8_2 = L8_2.y
    L7_2 = L7_2 - L8_2
    L8_2 = L2_2.z
    L9_2 = L4_2.lastPos
    L9_2 = L9_2.z
    L8_2 = L8_2 - L9_2
    L9_2 = math
    L9_2 = L9_2.sqrt
    L10_2 = L6_2 * L6_2
    L11_2 = L7_2 * L7_2
    L10_2 = L10_2 + L11_2
    L11_2 = L8_2 * L8_2
    L10_2 = L10_2 + L11_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2 / L5_2
    L4_2.speed = L10_2
  end
  L4_2.lastPos = L2_2
  L4_2.lastTime = L3_2
  L6_2 = L4_2.speed
  return L6_2
end
GetBoneSpeed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityPlayingAnim
  L3_2 = L1_2
  L4_2 = AnimFightList
  L5_2 = indexCombat
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.a
  L5_2 = AnimFightList
  L6_2 = indexCombat
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.b
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      colpitoVarOut = true
      FAI_DANNO = true
      L0_3 = Wait
      L1_3 = 75
      L0_3(L1_3)
      L0_3 = A0_2
      if nil == L0_3 then
        L0_3 = {}
        L1_3 = 1
        L2_3 = 2
        L0_3[1] = L1_3
        L0_3[2] = L2_3
        A0_2 = L0_3
      end
      L0_3 = 1
      L1_3 = A0_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = A0_2
        L4_3 = L4_3[L3_3]
        if 1 == L4_3 then
          L4_3 = GetBoneSpeed
          L5_3 = L1_2
          L6_3 = 6286
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = 0.2
          if L4_3 > L5_3 then
            L4_3 = GetEntityBonePosition_2
            L5_3 = L1_2
            L6_3 = GetPedBoneIndex
            L7_3 = L1_2
            L8_3 = 6286
            L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3, L8_3)
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
            L5_3 = vector3
            L6_3 = L4_3.x
            L7_3 = L4_3.y
            L8_3 = L4_3.z
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L4_3 = L5_3
            L5_3 = PlayEffect
            L6_3 = "core"
            L7_3 = "bul_rubber_dust"
            L8_3 = L4_3
            L9_3 = 1.2
            L10_3 = 0.9
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
          end
        end
        L4_3 = A0_2
        L4_3 = L4_3[L3_3]
        if 2 == L4_3 then
          L4_3 = GetBoneSpeed
          L5_3 = L1_2
          L6_3 = 36029
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = 0.2
          if L4_3 > L5_3 then
            L4_3 = GetEntityBonePosition_2
            L5_3 = L1_2
            L6_3 = GetPedBoneIndex
            L7_3 = L1_2
            L8_3 = 36029
            L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3, L8_3)
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
            L5_3 = vector3
            L6_3 = L4_3.x
            L7_3 = L4_3.y
            L8_3 = L4_3.z
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L4_3 = L5_3
            L5_3 = PlayEffect
            L6_3 = "core"
            L7_3 = "bul_rubber_dust"
            L8_3 = L4_3
            L9_3 = 1.2
            L10_3 = 0.9
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
          end
        end
        L4_3 = A0_2
        L4_3 = L4_3[L3_3]
        if 3 == L4_3 then
          L4_3 = GetBoneSpeed
          L5_3 = L1_2
          L6_3 = 14201
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = 0.2
          if L4_3 > L5_3 then
            L4_3 = GetEntityBonePosition_2
            L5_3 = L1_2
            L6_3 = GetPedBoneIndex
            L7_3 = L1_2
            L8_3 = 14201
            L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3, L8_3)
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
            L5_3 = vector3
            L6_3 = L4_3.x
            L7_3 = L4_3.y
            L8_3 = L4_3.z
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L4_3 = L5_3
            L5_3 = PlayEffect
            L6_3 = "core"
            L7_3 = "bul_rubber_dust"
            L8_3 = L4_3
            L9_3 = 1.2
            L10_3 = 0.9
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
          end
        end
        L4_3 = A0_2
        L4_3 = L4_3[L3_3]
        if 4 == L4_3 then
          L4_3 = GetBoneSpeed
          L5_3 = L1_2
          L6_3 = 52301
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = 0.2
          if L4_3 > L5_3 then
            L4_3 = GetEntityBonePosition_2
            L5_3 = L1_2
            L6_3 = GetPedBoneIndex
            L7_3 = L1_2
            L8_3 = 52301
            L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3, L8_3)
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
            L5_3 = vector3
            L6_3 = L4_3.x
            L7_3 = L4_3.y
            L8_3 = L4_3.z
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L4_3 = L5_3
            L5_3 = PlayEffect
            L6_3 = "core"
            L7_3 = "bul_rubber_dust"
            L8_3 = L4_3
            L9_3 = 1.2
            L10_3 = 0.9
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
          end
        end
      end
      colpitoVarOut = false
    end
    L3_2(L4_2)
    L3_2 = mySword
    if L3_2 > 0 then
      L3_2 = SwordList
      L4_2 = mySword
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.trailsword
      if nil ~= L3_2 then
        L3_2 = Sfoggiate
        if L3_2 then
          L3_2 = HandFX
          L3_2()
        end
      end
    end
    L3_2 = GetEntityForwardVector
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = L3_2 * 0.3
    L5_2 = L5_2 * -1
    L5_2 = L2_2 + L5_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L7_2 = GetEntityForwardVector
    L8_2 = L1_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = L7_2 * 0.3
    L9_2 = L2_2 + L9_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L11_2 = IDBOMBA
    if 0 == L11_2 then
      L11_2 = HasEntityCollidedWithAnything
      L12_2 = L1_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = false
        L12_2 = ipairs
        L13_2 = GetGamePool
        L14_2 = "CPed"
        L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L13_2(L14_2)
        L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
          L18_2 = DoesEntityExist
          L19_2 = L17_2
          L18_2 = L18_2(L19_2)
          if L18_2 and L17_2 ~= L1_2 then
            L18_2 = GetEntityCoords
            L19_2 = L1_2
            L18_2 = L18_2(L19_2)
            L19_2 = GetEntityCoords
            L20_2 = L17_2
            L19_2 = L19_2(L20_2)
            L18_2 = L18_2 - L19_2
            L18_2 = #L18_2
            if L18_2 < 2.0 then
              L18_2 = IsPedFatallyInjured
              L19_2 = L17_2
              L18_2 = L18_2(L19_2)
              if not L18_2 then
                L11_2 = true
                break
              end
            end
          end
        end
        if not L11_2 then
          L12_2 = _ENV
          L13_2 = "ShootSingleBulletBetweenCoordsIgnoreEntity"
          L12_2 = L12_2[L13_2]
          L13_2 = L4_2
          L14_2 = L5_2
          L15_2 = L6_2 + 0.2
          L16_2 = L8_2
          L17_2 = L9_2
          L18_2 = L10_2 + 0.2
          L19_2 = 0.0
          L20_2 = false
          L21_2 = -1466123874
          L22_2 = L1_2
          L23_2 = false
          L24_2 = true
          L25_2 = 0.2
          L26_2 = L1_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        end
      end
    else
      L11_2 = IDBOMBA
      if 70 == L11_2 then
        L11_2 = true
        L12_2 = false
        L13_2 = 0.1
        L14_2 = table
        L14_2 = L14_2.unpack
        L15_2 = GetEntityCoords
        L16_2 = L1_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L15_2(L16_2)
        L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L17_2 = AddExplosion
        L18_2 = L14_2
        L19_2 = L15_2
        L20_2 = L16_2 + 1.0
        L21_2 = IDBOMBA
        L22_2 = potenza
        L23_2 = L11_2
        L24_2 = L12_2
        L25_2 = L13_2
        L26_2 = true
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      end
    end
  end
end
BulletFunc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = BonesCheck
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = BonesCheck
    L5_2 = L5_2[L4_2]
    if L5_2 == A0_2 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
funcCheckBone = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayEffect
  L2_2 = "scr_agencyheistb"
  L3_2 = "scr_agency3b_linger_smoke"
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0.2
  L6_2 = 1.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = BloodActive
  if L1_2 then
    L1_2 = 1
    L2_2 = totBloodCreature
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_splash"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizeBloodCreature
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_impact"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizeBloodCreature
      L9_2 = L9_2 / 3.5
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
CreatureBlood = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayEffect
  L2_2 = "scr_agencyheistb"
  L3_2 = "scr_agency3b_linger_smoke"
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0.1
  L6_2 = 1.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = BloodActive
  if L1_2 then
    L1_2 = 1
    L2_2 = totBloodPunch
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_splash"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizePunchBlood
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_impact"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizePunchBlood
      L9_2 = L9_2 / 4.5
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
PunchBlood = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayEffect
  L2_2 = "scr_agencyheistb"
  L3_2 = "scr_agency3b_linger_smoke"
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0.2
  L6_2 = 1.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = BloodActive
  if L1_2 then
    L1_2 = 1
    L2_2 = totBloodSword
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_splash"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizeSwordBlood
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_impact"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizeSwordBlood
      L9_2 = L9_2 / 4.5
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
SwordBlood = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayEffect
  L2_2 = "scr_agencyheistb"
  L3_2 = "scr_agency3b_linger_smoke"
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0.2
  L6_2 = 1.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = 1
  L2_2 = totBloodSword
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = PlayEffect
    L6_2 = "core"
    L7_2 = "ent_dst_rocks_small"
    L8_2 = GetEntityCoords
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L9_2 = 2.0
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
SkeletonBlood = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = BloodActive
  if L1_2 then
    L1_2 = 1
    L2_2 = totBloodSword
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_splash"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizeBatBlood
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = PlayEffect
      L6_2 = "scr_solomon3"
      L7_2 = "scr_trev4_747_blood_impact"
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = sizeBatBlood
      L9_2 = L9_2 / 4.5
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
BatBlood = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2
  if nil == A0_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L1_2 = L2_2
  end
  L2_2 = getStyleCombat
  L2_2 = L2_2()
  L3_2 = Sfoggiate
  if not L3_2 then
    L3_2 = SfoggiatoBow
    if not L3_2 then
      goto lbl_149
    end
  end
  L3_2 = ipairs
  L4_2 = SwordList
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.heavySword
    if nil ~= L9_2 then
      L9_2 = IsEntityPlayingAnim
      L10_2 = L1_2
      L11_2 = L8_2.heavySword
      L11_2 = L11_2.frw
      L11_2 = L11_2.a
      L12_2 = L8_2.heavySword
      L12_2 = L12_2.frw
      L12_2 = L12_2.b
      L13_2 = 3
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      if L9_2 then
        L9_2 = true
        return L9_2
      else
        L9_2 = IsEntityPlayingAnim
        L10_2 = L1_2
        L11_2 = L8_2.heavySword
        L11_2 = L11_2.bkw
        L11_2 = L11_2.a
        L12_2 = L8_2.heavySword
        L12_2 = L12_2.bkw
        L12_2 = L12_2.b
        L13_2 = 3
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        if L9_2 then
          L9_2 = true
          return L9_2
        else
          L9_2 = IsEntityPlayingAnim
          L10_2 = L1_2
          L11_2 = L8_2.heavySword
          L11_2 = L11_2.lft
          L11_2 = L11_2.a
          L12_2 = L8_2.heavySword
          L12_2 = L12_2.lft
          L12_2 = L12_2.b
          L13_2 = 3
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
          if L9_2 then
            L9_2 = true
            return L9_2
          else
            L9_2 = IsEntityPlayingAnim
            L10_2 = L1_2
            L11_2 = L8_2.heavySword
            L11_2 = L11_2.rgt
            L11_2 = L11_2.a
            L12_2 = L8_2.heavySword
            L12_2 = L12_2.rgt
            L12_2 = L12_2.b
            L13_2 = 3
            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
            if L9_2 then
              L9_2 = true
              return L9_2
            end
          end
        end
      end
    end
  end
  L3_2 = IsEntityPlayingAnim
  L4_2 = L1_2
  L5_2 = "wm_greatsword_forward_dash"
  L6_2 = "wm_greatsword_forward_dash_clip"
  L7_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  else
    L3_2 = IsEntityPlayingAnim
    L4_2 = L1_2
    L5_2 = "wm_greatsword_back_dash"
    L6_2 = "wm_greatsword_back_dash_clip"
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if L3_2 then
      L3_2 = true
      return L3_2
    else
      L3_2 = IsEntityPlayingAnim
      L4_2 = L1_2
      L5_2 = "wm_greatsword_left_dash"
      L6_2 = "wm_greatsword_left_dash_clip"
      L7_2 = 3
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if L3_2 then
        L3_2 = true
        return L3_2
      else
        L3_2 = IsEntityPlayingAnim
        L4_2 = L1_2
        L5_2 = "wm_greatsword_right_dash"
        L6_2 = "wm_greatsword_right_dash_clip"
        L7_2 = 3
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        if L3_2 then
          L3_2 = true
          return L3_2
        else
          L3_2 = IsEntityPlayingAnim
          L4_2 = L1_2
          L5_2 = "boss_leftdodge"
          L6_2 = "boss_leftdodge_clip"
          L7_2 = 3
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          if L3_2 then
            L3_2 = true
            return L3_2
          else
            L3_2 = IsEntityPlayingAnim
            L4_2 = L1_2
            L5_2 = "boss_rightdodge"
            L6_2 = "boss_rightdodge_clip"
            L7_2 = 3
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
            if L3_2 then
              L3_2 = true
              return L3_2
            end
          end
        end
      end
    end
  end
  ::lbl_149::
  if L2_2 then
    L3_2 = L2_2.Block
    if L3_2 then
      L3_2 = L2_2.Block
      L3_2 = L3_2.a
      if L3_2 then
        L3_2 = L2_2.Block
        L3_2 = L3_2.b
        if L3_2 then
          L3_2 = IsEntityPlayingAnim
          L4_2 = L1_2
          L5_2 = L2_2.Block
          L5_2 = L5_2.a
          L6_2 = L2_2.Block
          L6_2 = L6_2.b
          L7_2 = 3
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          if L3_2 then
            goto lbl_236
          end
        end
      end
    end
  end
  L3_2 = IsEntityPlayingAnim
  L4_2 = L1_2
  L5_2 = "boss_leftdodge"
  L6_2 = "boss_leftdodge_clip"
  L7_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = IsEntityPlayingAnim
    L4_2 = L1_2
    L5_2 = "boss_rightdodge"
    L6_2 = "boss_rightdodge_clip"
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = IsEntityPlayingAnim
      L4_2 = L1_2
      L5_2 = "kp_wm_gs_dodge_forwardroll"
      L6_2 = "kp_wm_gs_dodge_forwardroll_clip"
      L7_2 = 3
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if not L3_2 then
        L3_2 = IsEntityPlayingAnim
        L4_2 = L1_2
        L5_2 = "kp_wm_gs_dodge_leftroll"
        L6_2 = "kp_wm_gs_dodge_leftroll_clip"
        L7_2 = 3
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        if not L3_2 then
          L3_2 = IsEntityPlayingAnim
          L4_2 = L1_2
          L5_2 = "kp_wm_gs_dodge_rightroll"
          L6_2 = "kp_wm_gs_dodge_rightroll_clip"
          L7_2 = 3
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          if not L3_2 then
            L3_2 = IsEntityPlayingAnim
            L4_2 = L1_2
            L5_2 = "hit_react_left_leg_stumble_knockdown"
            L6_2 = "hit_react_left_leg_stumble_knockdown_clip"
            L7_2 = 3
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
            if not L3_2 then
              L3_2 = IsEntityPlayingAnim
              L4_2 = L1_2
              L5_2 = "hit_react_heavy_front_knockback_stagger"
              L6_2 = "hit_react_heavy_front_knockback_stagger_clip"
              L7_2 = 3
              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
              if not L3_2 then
                L3_2 = IsEntityPlayingAnim
                L4_2 = L1_2
                L5_2 = "kp_wm_gs_dodge_backroll"
                L6_2 = "kp_wm_gs_dodge_backroll_clip"
                L7_2 = 3
                L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                if not L3_2 then
                  goto lbl_239
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_236::
  L3_2 = true
  do return L3_2 end
  goto lbl_241
  ::lbl_239::
  L3_2 = false
  do return L3_2 end
  ::lbl_241::
end
indashfunc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2
  if nil == A0_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L1_2 = L2_2
  end
  L2_2 = getStyleCombat
  L2_2 = L2_2()
  L3_2 = Sfoggiate
  if not L3_2 then
    L3_2 = SfoggiatoBow
    if not L3_2 then
      goto lbl_84
    end
  end
  L3_2 = ipairs
  L4_2 = SwordList
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.heavySword
    if nil ~= L9_2 then
      L9_2 = IsEntityPlayingAnim
      L10_2 = L1_2
      L11_2 = L8_2.heavySword
      L11_2 = L11_2.frw
      L11_2 = L11_2.a
      L12_2 = L8_2.heavySword
      L12_2 = L12_2.frw
      L12_2 = L12_2.b
      L13_2 = 3
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      if L9_2 then
        L9_2 = true
        return L9_2
      else
        L9_2 = IsEntityPlayingAnim
        L10_2 = L1_2
        L11_2 = L8_2.heavySword
        L11_2 = L11_2.bkw
        L11_2 = L11_2.a
        L12_2 = L8_2.heavySword
        L12_2 = L12_2.bkw
        L12_2 = L12_2.b
        L13_2 = 3
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        if L9_2 then
          L9_2 = true
          return L9_2
        else
          L9_2 = IsEntityPlayingAnim
          L10_2 = L1_2
          L11_2 = L8_2.heavySword
          L11_2 = L11_2.lft
          L11_2 = L11_2.a
          L12_2 = L8_2.heavySword
          L12_2 = L12_2.lft
          L12_2 = L12_2.b
          L13_2 = 3
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
          if L9_2 then
            L9_2 = true
            return L9_2
          else
            L9_2 = IsEntityPlayingAnim
            L10_2 = L1_2
            L11_2 = L8_2.heavySword
            L11_2 = L11_2.rgt
            L11_2 = L11_2.a
            L12_2 = L8_2.heavySword
            L12_2 = L12_2.rgt
            L12_2 = L12_2.b
            L13_2 = 3
            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
            if L9_2 then
              L9_2 = true
              return L9_2
            end
          end
        end
      end
    end
  end
  ::lbl_84::
  if L2_2 then
    L3_2 = L2_2.Block
    if L3_2 then
      L3_2 = L2_2.Block
      L3_2 = L3_2.a
      if L3_2 then
        L3_2 = L2_2.Block
        L3_2 = L3_2.b
        if L3_2 then
          L3_2 = IsEntityPlayingAnim
          L4_2 = L1_2
          L5_2 = L2_2.Block
          L5_2 = L5_2.a
          L6_2 = L2_2.Block
          L6_2 = L6_2.b
          L7_2 = 3
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          if L3_2 then
            goto lbl_187
          end
        end
      end
    end
  end
  L3_2 = IsEntityPlayingAnim
  L4_2 = L1_2
  L5_2 = "weapons@projectile@"
  L6_2 = "aimlive_m"
  L7_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = IsEntityPlayingAnim
    L4_2 = L1_2
    L5_2 = "wing_chun@anim"
    L6_2 = "defence_1"
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = IsEntityPlayingAnim
      L4_2 = L1_2
      L5_2 = "kp_9cg_block_hit"
      L6_2 = "kp_9cg_block_hit_clip"
      L7_2 = 3
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if not L3_2 then
        L3_2 = IsEntityPlayingAnim
        L4_2 = L1_2
        L5_2 = "rc_dual_guns_set"
        L6_2 = "rc_dual_guns_idle_pose_1_clip"
        L7_2 = 3
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        if not L3_2 then
          L3_2 = IsEntityPlayingAnim
          L4_2 = L1_2
          L5_2 = "kp_wm_gs_dodge_forwardroll"
          L6_2 = "kp_wm_gs_dodge_forwardroll_clip"
          L7_2 = 3
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          if not L3_2 then
            L3_2 = IsEntityPlayingAnim
            L4_2 = L1_2
            L5_2 = "kp_wm_gs_dodge_leftroll"
            L6_2 = "kp_wm_gs_dodge_leftroll_clip"
            L7_2 = 3
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
            if not L3_2 then
              L3_2 = IsEntityPlayingAnim
              L4_2 = L1_2
              L5_2 = "kp_wm_gs_dodge_rightroll"
              L6_2 = "kp_wm_gs_dodge_rightroll_clip"
              L7_2 = 3
              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
              if not L3_2 then
                L3_2 = IsEntityPlayingAnim
                L4_2 = L1_2
                L5_2 = "hit_react_left_leg_stumble_knockdown"
                L6_2 = "hit_react_left_leg_stumble_knockdown_clip"
                L7_2 = 3
                L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                if not L3_2 then
                  L3_2 = IsEntityPlayingAnim
                  L4_2 = L1_2
                  L5_2 = "hit_react_heavy_front_knockback_stagger"
                  L6_2 = "hit_react_heavy_front_knockback_stagger_clip"
                  L7_2 = 3
                  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                  if not L3_2 then
                    L3_2 = IsEntityPlayingAnim
                    L4_2 = L1_2
                    L5_2 = "kp_wm_gs_dodge_backroll"
                    L6_2 = "kp_wm_gs_dodge_backroll_clip"
                    L7_2 = 3
                    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                    if not L3_2 then
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
  ::lbl_187::
  L3_2 = true
  do return L3_2 end
  goto lbl_192
  ::lbl_190::
  L3_2 = false
  do return L3_2 end
  ::lbl_192::
end
inblockfunc = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = Sfoggiate
  if L0_2 then
    L0_2 = SwordObj
    if nil ~= L0_2 then
      L0_2 = DoesEntityExist
      L1_2 = SwordObj
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = SetEntityAsMissionEntity
        L1_2 = SwordObj
        L0_2(L1_2)
        L0_2 = DelIfOnClient
        L1_2 = SwordObj
        L0_2(L1_2)
        L0_2 = DeleteEntity
        L1_2 = SwordObj
        L0_2(L1_2)
        SwordObj = nil
      end
    end
    L0_2 = SwordObj2
    if nil ~= L0_2 then
      L0_2 = DoesEntityExist
      L1_2 = SwordObj2
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = SetEntityAsMissionEntity
        L1_2 = SwordObj2
        L0_2(L1_2)
        L0_2 = DelIfOnClient
        L1_2 = SwordObj2
        L0_2(L1_2)
        L0_2 = DeleteEntity
        L1_2 = SwordObj2
        L0_2(L1_2)
        SwordObj2 = nil
      end
    end
    Sfoggiate = false
    inHeavyWeap = false
    L0_2 = SwordList
    L1_2 = mySword
    L0_2 = L0_2[L1_2]
    L0_2 = L0_2.m
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L2_2 = SwordObj
    if nil ~= L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = SwordObj
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = DetachEntity
        L3_2 = SwordObj
        L2_2(L3_2)
        L2_2 = SetEntityAsMissionEntity
        L3_2 = SwordObj
        L2_2(L3_2)
        L2_2 = DelIfOnClient
        L3_2 = SwordObj
        L2_2(L3_2)
        L2_2 = DeleteEntity
        L3_2 = SwordObj
        L2_2(L3_2)
        SwordObj = nil
      end
    end
    L2_2 = SwordObj2
    if nil ~= L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = SwordObj2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = DetachEntity
        L3_2 = SwordObj2
        L2_2(L3_2)
        L2_2 = SetEntityAsMissionEntity
        L3_2 = SwordObj2
        L2_2(L3_2)
        L2_2 = DelIfOnClient
        L3_2 = SwordObj2
        L2_2(L3_2)
        L2_2 = DeleteEntity
        L3_2 = SwordObj2
        L2_2(L3_2)
        SwordObj2 = nil
      end
    end
    L2_2 = CreateObjectNoOffset
    L3_2 = GetHashKey
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L1_2.x
    L5_2 = L1_2.y
    L6_2 = L1_2.z
    L6_2 = L6_2 - 1.0
    L7_2 = true
    L8_2 = true
    L9_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    SwordObj = L2_2
    L2_2 = SetEntityCollision
    L3_2 = SwordObj
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    while true do
      L2_2 = DoesEntityExist
      L3_2 = SwordObj
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = MakeSwordNET
    L3_2 = SwordObj
    L2_2(L3_2)
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = SwordList
    L4_2 = mySword
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.att
    L4_2 = SwordList
    L5_2 = mySword
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.posata1
    if nil ~= L4_2 then
      L4_2 = SwordList
      L5_2 = mySword
      L4_2 = L4_2[L5_2]
      L3_2 = L4_2.posata1
    end
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    f = L9_2
    e = L8_2
    d = L7_2
    c = L6_2
    b = L5_2
    a = L4_2
    L4_2 = AttachEntityToEntity
    L5_2 = SwordObj
    L6_2 = L2_2
    L7_2 = GetPedBoneIndex
    L8_2 = L2_2
    L9_2 = SwordList
    L10_2 = mySword
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.boneposata1
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = a
    L9_2 = b
    L10_2 = c
    L11_2 = d
    L12_2 = e
    L13_2 = f
    L14_2 = true
    L15_2 = true
    L16_2 = false
    L17_2 = true
    L18_2 = 1
    L19_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L4_2 = SetModelAsNoLongerNeeded
    L5_2 = L0_2
    L4_2(L5_2)
    L4_2 = SwordList
    L5_2 = mySword
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.m2
    if L4_2 then
      L4_2 = SwordList
      L5_2 = mySword
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.m2
      L5_2 = CreateObjectNoOffset
      L6_2 = GetHashKey
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = L1_2.x
      L8_2 = L1_2.y
      L9_2 = L1_2.z
      L9_2 = L9_2 - 1.0
      L10_2 = true
      L11_2 = true
      L12_2 = false
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      SwordObj2 = L5_2
      L5_2 = SetEntityCollision
      L6_2 = SwordObj2
      L7_2 = false
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      while true do
        L5_2 = DoesEntityExist
        L6_2 = SwordObj2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          break
        end
        L5_2 = Wait
        L6_2 = 0
        L5_2(L6_2)
      end
      L5_2 = MakeSwordNET
      L6_2 = SwordObj2
      L5_2(L6_2)
      L5_2 = SwordList
      L6_2 = mySword
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.posata2
      L6_2 = table
      L6_2 = L6_2.unpack
      L7_2 = L5_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
      f = L11_2
      e = L10_2
      d = L9_2
      c = L8_2
      b = L7_2
      a = L6_2
      L6_2 = AttachEntityToEntity
      L7_2 = SwordObj2
      L8_2 = L2_2
      L9_2 = GetPedBoneIndex
      L10_2 = L2_2
      L11_2 = SwordList
      L12_2 = mySword
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.boneposata2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = a
      L11_2 = b
      L12_2 = c
      L13_2 = d
      L14_2 = e
      L15_2 = f
      L16_2 = true
      L17_2 = true
      L18_2 = false
      L19_2 = true
      L20_2 = 1
      L21_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L6_2 = SetModelAsNoLongerNeeded
      L7_2 = L4_2
      L6_2(L7_2)
    end
  end
end
DelAllArmi2 = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = inFinisher
  if not L1_2 then
    L1_2 = sonoInAria
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedJumping
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IdleStrafe
        L1_2()
      end
    end
  end
end
EndRoll = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  if not A0_2 or 0 == A0_2 then
    return
  end
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = nil
  L4_2 = GetResourceState
  L5_2 = "striano_ridehorse"
  L4_2 = L4_2(L5_2)
  if "started" == L4_2 then
    L4_2 = exports
    L4_2 = L4_2.striano_ridehorse
    L5_2 = L4_2
    L4_2 = L4_2.GetMyHorse
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    if L3_2 and A0_2 == L3_2 then
      return
    end
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = IsPedFatallyInjured
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 and A0_2 == L4_2 then
    return
  end
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0
  end
  if A0_2 ~= L4_2 then
    L6_2 = everyMovesOneHP
    if L6_2 then
      L6_2 = Sfoggiate
      if not L6_2 then
        L5_2 = 1
      end
    end
    L6_2 = oneHPweaponAlso
    if L6_2 then
      L6_2 = Sfoggiate
      if L6_2 then
        L5_2 = 1
      end
    end
  end
  L6_2 = IsPedAPlayer
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = ColpiPlayer
    if L6_2 >= 12 then
      L6_2 = inFinisher
      if not L6_2 then
        L6_2 = IsPedRagdoll
        L7_2 = A0_2
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = IsEntityAttached
          L7_2 = A0_2
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = GetEntityCoords
            L7_2 = A0_2
            L6_2 = L6_2(L7_2)
            L7_2 = BloodActive
            if L7_2 then
              L7_2 = PlayEffect
              L8_2 = "scr_solomon3"
              L9_2 = "scr_trev4_747_blood_splash"
              L10_2 = L6_2
              L11_2 = 1.2
              L12_2 = 0.9
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
              L7_2 = PlayEffect
              L8_2 = "scr_solomon3"
              L9_2 = "scr_trev4_747_blood_impact"
              L10_2 = L6_2
              L11_2 = 0.3
              L12_2 = 0.9
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
              L7_2 = PlayEffect
              L8_2 = "core"
              L9_2 = "blood_entry"
              L10_2 = L6_2
              L11_2 = 0.3
              L12_2 = 0.9
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
            end
            L7_2 = PlayEffect
            L8_2 = "scr_josh3"
            L9_2 = "scr_josh3_light_explosion"
            L10_2 = L6_2
            L11_2 = 0.3
            L12_2 = 0.9
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
            L7_2 = SetPedToRagdoll
            L8_2 = A0_2
            L9_2 = 1000
            L10_2 = 1000
            L11_2 = 6
            L12_2 = 0
            L13_2 = 0
            L14_2 = 0
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
            L7_2 = OnFinisherEnd
            L7_2()
            ColpiPlayer = 0
        end
      end
    end
    else
      L6_2 = ColpiPlayer
      if not L6_2 then
        L6_2 = 0
      end
      L6_2 = L6_2 + 1
      ColpiPlayer = L6_2
      L6_2 = ColpiPlayer
      if L6_2 >= 7 then
        L6_2 = math
        L6_2 = L6_2.random
        L7_2 = 1
        L8_2 = 2
        L6_2 = L6_2(L7_2, L8_2)
        if 1 == L6_2 then
          ColpiPlayer = 0
          L7_2 = onResist
          L7_2()
          L7_2 = BloodActive
          if L7_2 then
            L7_2 = PlayEffect
            L8_2 = "scr_solomon3"
            L9_2 = "scr_trev4_747_blood_splash"
            L10_2 = GetEntityCoords
            L11_2 = A0_2
            L10_2 = L10_2(L11_2)
            L11_2 = 1.2
            L12_2 = 0.9
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
            L7_2 = PlayEffect
            L8_2 = "scr_solomon3"
            L9_2 = "scr_trev4_747_blood_impact"
            L10_2 = GetEntityCoords
            L11_2 = A0_2
            L10_2 = L10_2(L11_2)
            L11_2 = 0.3
            L12_2 = 0.9
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
            L7_2 = PlayEffect
            L8_2 = "scr_solomon3"
            L9_2 = "scr_trev4_747_blood_impact"
            L10_2 = GetEntityCoords
            L11_2 = A0_2
            L10_2 = L10_2(L11_2)
            L11_2 = 0.1
            L12_2 = 0.9
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
          end
          L7_2 = PlayEffect
          L8_2 = "scr_josh3"
          L9_2 = "scr_josh3_light_explosion"
          L10_2 = GetEntityCoords
          L11_2 = A0_2
          L10_2 = L10_2(L11_2)
          L11_2 = 0.3
          L12_2 = 0.9
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        else
          L7_2 = inFinisher
          if not L7_2 then
            L7_2 = IsEntityAttached
            L8_2 = A0_2
            L7_2 = L7_2(L8_2)
            if not L7_2 then
              L7_2 = BloodActive
              if L7_2 then
                L7_2 = PlayEffect
                L8_2 = "scr_solomon3"
                L9_2 = "scr_trev4_747_blood_splash"
                L10_2 = GetEntityCoords
                L11_2 = A0_2
                L10_2 = L10_2(L11_2)
                L11_2 = 1.2
                L12_2 = 0.9
                L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
                L7_2 = PlayEffect
                L8_2 = "scr_solomon3"
                L9_2 = "scr_trev4_747_blood_impact"
                L10_2 = GetEntityCoords
                L11_2 = A0_2
                L10_2 = L10_2(L11_2)
                L11_2 = 0.3
                L12_2 = 0.9
                L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
              end
              L7_2 = PlayEffect
              L8_2 = "scr_josh3"
              L9_2 = "scr_josh3_light_explosion"
              L10_2 = GetEntityCoords
              L11_2 = A0_2
              L10_2 = L10_2(L11_2)
              L11_2 = 0.3
              L12_2 = 0.9
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
              L7_2 = SetPedToRagdoll
              L8_2 = A0_2
              L9_2 = 1000
              L10_2 = 1000
              L11_2 = 6
              L12_2 = 0
              L13_2 = 0
              L14_2 = 0
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
              L7_2 = OnFinisherEnd
              L7_2()
              L7_2 = FiatoneCapriola
              L8_2 = exports
              L8_2 = L8_2.striano_combat
              L9_2 = L8_2
              L8_2 = L8_2.GetStaminaDrainMultiplier
              L8_2 = L8_2(L9_2)
              L8_2 = 30 * L8_2
              L7_2 = L7_2 - L8_2
              FiatoneCapriola = L7_2
              L7_2 = Wait
              L8_2 = 250
              L7_2(L8_2)
              ColpiPlayer = 0
            end
          end
        end
      else
        L6_2 = BloodActive
        if L6_2 then
          L6_2 = PlayEffect
          L7_2 = "scr_solomon3"
          L8_2 = "scr_trev4_747_blood_impact"
          L9_2 = GetEntityCoords
          L10_2 = A0_2
          L9_2 = L9_2(L10_2)
          L10_2 = 0.1
          L11_2 = 0.9
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        end
        L6_2 = HoRollato
        if not L6_2 then
          L6_2 = IsPedRagdoll
          L7_2 = A0_2
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = inblockfunc
            L7_2 = A0_2
            L6_2 = L6_2(L7_2)
            if not L6_2 then
              L6_2 = inFinisher
              if not L6_2 then
                L6_2 = SetPedToRagdoll
                L7_2 = A0_2
                L8_2 = 250
                L9_2 = 250
                L10_2 = 6
                L11_2 = 0
                L12_2 = 0
                L13_2 = 0
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
              end
            end
          end
        end
      end
    end
  end
  L6_2 = A0_2 == L4_2
  if L6_2 then
    L7_2 = GodModeCombat
    if L7_2 then
      return
    end
  end
  L7_2 = EasyCombat
  if L7_2 then
    L7_2 = 0
    L8_2 = EasyCombatStyle
    L9_2 = myWStyle
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.NormalHit
    L8_2 = #L8_2
    if 1 == L8_2 then
      L7_2 = 1
    end
    L8_2 = currentMovesEasy
    L8_2 = L8_2 + L7_2
    L9_2 = EasyCombatStyle
    L10_2 = myWStyle
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.NormalHit
    L9_2 = #L9_2
    if L8_2 >= L9_2 then
      L8_2 = damageAdderLastEasyHit
      L9_2 = currentMovesEasy_HEAVY
      L8_2 = L8_2 * L9_2
      L5_2 = L5_2 + L8_2
    end
  end
  L7_2 = myBuffID
  if L7_2 > 0 then
    L7_2 = BufferList
    L8_2 = myBuffID
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.dmg
    L5_2 = L5_2 + L7_2
  end
  if L5_2 <= 0 then
    return
  end
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.GetCurrentDamageMultiplier
  L7_2 = L7_2(L8_2)
  L5_2 = L5_2 * L7_2
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = L5_2 + 0.5
  L7_2 = L7_2(L8_2)
  if L7_2 <= 0 then
    return
  end
  if nil ~= A2_2 then
    L8_2 = vector3
    L9_2 = A2_2.x
    L10_2 = A2_2.y
    L11_2 = A2_2.z
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 then
      goto lbl_365
    end
  end
  L8_2 = GetEntityCoords
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  ::lbl_365::
  L9_2 = tonumber
  L10_2 = grandezzaAtk
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = 1.5
  end
  if not L6_2 then
    L10_2 = IsEntityAttached
    L11_2 = L4_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L7_2 = L7_2 * 3
      L9_2 = 2.5
    end
  end
  L10_2 = TriggerEvent
  L11_2 = "striano_combat:client:onDamageDealt"
  L12_2 = A0_2
  L13_2 = L7_2
  L10_2(L11_2, L12_2, L13_2)
  function L10_2(A0_3)
    local L1_3, L2_3
    if A0_3 and 0 ~= A0_3 then
      L1_3 = DoesEntityExist
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = NetworkGetEntityIsNetworked
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = NetworkGetNetworkIdFromEntity
          L2_3 = A0_3
          return L1_3(L2_3)
        end
      end
    end
    L1_3 = 0
    return L1_3
  end
  GetNetIdSafe_LOCAL = L10_2
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3
    if nil == A0_3 or 0 == A0_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L4_2
    if A0_3 == L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = IsPedAPlayer
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = DoesEntityExist
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = IsPedDeadOrDying
    L2_3 = A0_3
    L3_3 = true
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = true
    return L1_3
  end
  IsNpcEnemy = L10_2
  if L6_2 then
    L10_2 = ApplyDamageToPed
    L11_2 = A0_2
    L12_2 = L7_2
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = CreateThread
    function L11_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = GetEntityHealth
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if L0_3 <= 100 then
        L0_3 = ApplyDamageToPed
        L1_3 = A0_2
        L2_3 = 150
        L0_3(L1_3, L2_3)
      end
    end
    L10_2(L11_2)
    return
  end
  L10_2 = IsPedAPlayer
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  if L10_2 then
    L10_2 = TriggerServerEvent
    L11_2 = "ApplyDamageNearly"
    L12_2 = L8_2.x
    L13_2 = L8_2.y
    L14_2 = L8_2.z
    L15_2 = L7_2
    L16_2 = L9_2
    L17_2 = GetPlayerServerId
    L18_2 = PlayerId
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L18_2()
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L10_2 = TriggerEvent
    L11_2 = "striano_combat:client:onDamageDealt"
    L12_2 = A0_2
    L13_2 = L7_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = testo3d
    L11_2 = L7_2
    L10_2(L11_2)
    return
  end
  L10_2 = GetGamePool
  L11_2 = "CPed"
  L10_2 = L10_2(L11_2)
  L11_2 = 1
  L12_2 = #L10_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = L10_2[L14_2]
    if L15_2 ~= L4_2 then
      L16_2 = IsPedAPlayer
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = DoesEntityExist
        L17_2 = L15_2
        L16_2 = L16_2(L17_2)
        if L16_2 then
          L16_2 = IsPedDeadOrDying
          L17_2 = L15_2
          L18_2 = true
          L16_2 = L16_2(L17_2, L18_2)
          if not L16_2 then
            L16_2 = GetEntityCoords
            L17_2 = L15_2
            L16_2 = L16_2(L17_2)
            L17_2 = L16_2.x
            L18_2 = L8_2.x
            L17_2 = L17_2 - L18_2
            L18_2 = L16_2.y
            L19_2 = L8_2.y
            L18_2 = L18_2 - L19_2
            L19_2 = L16_2.z
            L20_2 = L8_2.z
            L19_2 = L19_2 - L20_2
            L20_2 = L17_2 * L17_2
            L21_2 = L18_2 * L18_2
            L20_2 = L20_2 + L21_2
            L21_2 = L19_2 * L19_2
            L20_2 = L20_2 + L21_2
            L21_2 = L9_2 + 1.0
            L22_2 = L21_2 * L21_2
            if L20_2 <= L22_2 then
              L22_2 = IsNpcEnemy
              L23_2 = L15_2
              L22_2 = L22_2(L23_2)
              if L22_2 and (not L3_2 or L15_2 ~= L3_2) then
                L22_2 = ApplyDamageToPed
                L23_2 = L15_2
                L24_2 = L7_2
                L25_2 = true
                L22_2(L23_2, L24_2, L25_2)
                L22_2 = TriggerEvent
                L23_2 = "striano_combat:client:onDamageDealt"
                L24_2 = L15_2
                L25_2 = L7_2
                L22_2(L23_2, L24_2, L25_2)
                L22_2 = testo3d
                L23_2 = L7_2
                L24_2 = L15_2
                L22_2(L23_2, L24_2)
                L22_2 = CreateThread
                function L23_2()
                  local L0_3, L1_3, L2_3
                  L0_3 = Wait
                  L1_3 = 1
                  L0_3(L1_3)
                  L0_3 = DoesEntityExist
                  L1_3 = L15_2
                  L0_3 = L0_3(L1_3)
                  if L0_3 then
                    L0_3 = GetEntityHealth
                    L1_3 = L15_2
                    L0_3 = L0_3(L1_3)
                    if L0_3 <= 100 then
                      L0_3 = ApplyDamageToPed
                      L1_3 = L15_2
                      L2_3 = 150
                      L0_3(L1_3, L2_3)
                    end
                  end
                end
                L22_2(L23_2)
                L22_2 = PutRagdollPed
                L23_2 = L15_2
                L22_2(L23_2)
              end
            end
          end
        end
      end
    end
  end
  L11_2 = IsPedAPlayer
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = GetEntityHealth
    L12_2 = A0_2
    L11_2 = L11_2(L12_2)
    if L11_2 <= 115 then
      L11_2 = SetPedCanRagdoll
      L12_2 = A0_2
      L13_2 = true
      L11_2(L12_2, L13_2)
      L11_2 = SetPedCanRagdollFromPlayerImpact
      L12_2 = A0_2
      L13_2 = true
      L11_2(L12_2, L13_2)
    end
  end
end
ApplyDamageToPedLegacy = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedToRagdollWithFall
  L2_2 = L0_2
  L3_2 = 75
  L4_2 = 75
  L5_2 = 1
  L6_2 = GetEntityForwardVector
  L7_2 = L0_2
  L6_2 = L6_2(L7_2)
  L7_2 = 1.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
Scrocchia = L1_1
L1_1 = 0
castingSpell = false
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = castingSpell
  if L2_2 then
    return
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = GetSpellById
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = print
    L5_2 = "Spell not exist! ("
    L6_2 = tostring
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L7_2 = ")"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = FreezeEntityPosition
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = false
    L4_2(L5_2, L6_2)
    castingSpell = false
    return
  end
  L4_2 = checkCaster
  L5_2 = A0_2
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  if -1 == L4_2 then
    return
  end
  L1_1 = L2_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = IsEntityPlayingAnim
  L7_2 = L5_2
  L8_2 = "missexile3"
  L9_2 = "ex03_train_roof_idle"
  L10_2 = 3
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L6_2 = FreezeEntityPosition
    L7_2 = L5_2
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = print
    L7_2 = "Block Spell 1"
    L6_2(L7_2)
    castingSpell = false
    return
  end
  L6_2 = myMana
  L7_2 = L3_2.manaCost
  L6_2 = L6_2 - L7_2
  if L6_2 < 0 then
    L6_2 = FreezeEntityPosition
    L7_2 = L5_2
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = NoManaFunc
    L7_2 = A0_2
    L6_2(L7_2)
    castingSpell = false
    return
  end
  L6_2 = GetSpellById
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2 - 1000
  L8_2 = 500
  if L7_2 < L8_2 then
    L7_2 = 500
  end
  L8_2 = exports
  L8_2 = L8_2.striano_combat
  L9_2 = L8_2
  L8_2 = L8_2.updateSpellCooldown
  L10_2 = A1_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  castingSpell = true
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    L0_3 = ResetStrafeImmediately
    L1_3 = L5_2
    L0_3(L1_3)
    L0_3 = L3_2.propSpell
    if nil ~= L0_3 then
      L0_3 = L3_2.propSpell
      L0_3()
    else
      L0_3 = wandObject
      if nil ~= L0_3 then
        L0_3 = SetEntityAsMissionEntity
        L1_3 = wandObject
        L0_3(L1_3)
        L0_3 = DeleteEntity
        L1_3 = wandObject
        L0_3(L1_3)
        wandObject = nil
      end
    end
    L0_3 = delSpellCharge
    L0_3()
    L0_3 = SetFollowPedCamViewMode
    L1_3 = 4
    L0_3(L1_3)
    L0_3 = SetFollowPedCamViewMode
    L1_3 = 2
    L0_3(L1_3)
    L0_3 = SetCamViewModeForContext
    L1_3 = GetCamActiveViewModeContext
    L1_3 = L1_3()
    L2_3 = 2
    L0_3(L1_3, L2_3)
    L0_3 = DisableControlAction
    L1_3 = 0
    L2_3 = 0
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = DisableFirstPersonCamThisFrame
    L0_3()
    L0_3 = SyncRotAndPos
    L1_3 = L5_2
    L0_3(L1_3)
    L0_3 = SfoggiatoBow
    if L0_3 then
      L0_3 = myBow
      if L0_3 > 0 then
        L0_3 = DoesEntityExist
        L1_3 = BowObj
        L0_3 = L0_3(L1_3)
        if L0_3 then
          SfoggiatoBow = false
          L0_3 = TriggerEvent
          L1_3 = "striano_combat:client:onBowUnequipped"
          L2_3 = myBow
          L0_3(L1_3, L2_3)
          L0_3 = DetachEntity
          L1_3 = BowObj
          L0_3(L1_3)
          L0_3 = BowList
          L1_3 = myBow
          L0_3 = L0_3[L1_3]
          L0_3 = L0_3.posato
          L1_3 = AttachEntityToEntity
          L2_3 = BowObj
          L3_3 = L5_2
          L4_3 = GetPedBoneIndex
          L5_3 = L5_2
          L6_3 = 24818
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = L0_3[1]
          L6_3 = L0_3[2]
          L7_3 = L0_3[3]
          L8_3 = L0_3[4]
          L9_3 = L0_3[5]
          L10_3 = L0_3[6]
          L11_3 = true
          L12_3 = true
          L13_3 = false
          L14_3 = true
          L15_3 = 1
          L16_3 = true
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        end
      end
    end
    L0_3 = L3_2
    L1_3 = L0_3.a
    L2_3 = L0_3.b
    L3_3 = L0_3.moreSpeed
    if nil ~= L3_3 then
      L3_3 = 516221692
      L4_3 = RequestModelStriano
      L5_3 = L3_3
      L4_3(L5_3)
      L4_3 = GetEntityCoords
      L5_3 = L5_2
      L4_3 = L4_3(L5_3)
      L5_3 = CreateObjectNoOffset
      L6_3 = L3_3
      L7_3 = L4_3.x
      L8_3 = L4_3.y
      L9_3 = L4_3.z
      L9_3 = L9_3 - 1.0
      L10_3 = true
      L11_3 = true
      L12_3 = false
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L6_3 = SetEntityVisible
      L7_3 = L5_3
      L8_3 = false
      L6_3(L7_3, L8_3)
      L6_3 = 0
      while true do
        L7_3 = DoesEntityExist
        L8_3 = L5_3
        L7_3 = L7_3(L8_3)
        if not (not L7_3 and L6_3 < 100) then
          break
        end
        L6_3 = L6_3 + 1
        L7_3 = Wait
        L8_3 = 0
        L7_3(L8_3)
      end
      if L6_3 < 100 then
        lastAROV = L5_3
        L7_3 = MakeSwordNET
        L8_3 = lastAROV
        L7_3(L8_3)
        L7_3 = {}
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 0
        L12_3 = 0
        L13_3 = 0
        L7_3[1] = L8_3
        L7_3[2] = L9_3
        L7_3[3] = L10_3
        L7_3[4] = L11_3
        L7_3[5] = L12_3
        L7_3[6] = L13_3
        L8_3 = 57005
        L9_3 = L0_3.offsetEnt
        if nil ~= L9_3 then
          L7_3 = L0_3.offsetEnt
        end
        L9_3 = L0_3.boneEnt
        if nil ~= L9_3 then
          L8_3 = L0_3.boneEnt
        end
        L9_3 = AttachEntityToEntity
        L10_3 = lastAROV
        L11_3 = L5_2
        L12_3 = GetPedBoneIndex
        L13_3 = L5_2
        L14_3 = L8_3
        L12_3 = L12_3(L13_3, L14_3)
        L13_3 = L7_3[1]
        L14_3 = L7_3[2]
        L15_3 = L7_3[3]
        L16_3 = L7_3[4]
        L17_3 = L7_3[5]
        L18_3 = L7_3[6]
        L19_3 = true
        L20_3 = true
        L21_3 = false
        L22_3 = true
        L23_3 = 1
        L24_3 = true
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        L9_3 = SetModelAsNoLongerNeeded
        L10_3 = L3_3
        L9_3(L10_3)
        L9_3 = table
        L9_3 = L9_3.insert
        L10_3 = AROV
        L11_3 = lastAROV
        L9_3(L10_3, L11_3)
      end
    end
    L3_3 = A0_2
    MagicID = L3_3
    L3_3 = L0_3.startfunc
    if nil ~= L3_3 then
      L3_3 = L0_3.startfunc
      L3_3()
    end
    L3_3 = 2
    L4_3 = 1.0
    L5_3 = L0_3.animflag
    if nil ~= L5_3 then
      L3_3 = L0_3.animflag
    end
    L5_3 = L0_3.animSpeed
    if nil ~= L5_3 then
      L4_3 = L0_3.animSpeed
    end
    L5_3 = IsEntityAttached
    L6_3 = L5_2
    L5_3 = L5_3(L6_3)
    if L5_3 then
      L3_3 = 49
    end
    if nil ~= L1_3 and nil ~= L2_3 then
      L5_3 = ClearPedSecondaryTask
      L6_3 = L5_2
      L5_3(L6_3)
      L5_3 = ClearPedTasks
      L6_3 = L5_2
      L5_3(L6_3)
      L5_3 = ecc
      L5_3()
      L5_3 = faiAnim
      L6_3 = L1_3
      L7_3 = L2_3
      L8_3 = -1
      L9_3 = L3_3
      L5_3(L6_3, L7_3, L8_3, L9_3)
      L5_3 = Wait
      L6_3 = 7
      L5_3(L6_3)
    end
    L5_3 = L0_3.pedAura
    if nil ~= L5_3 then
      L5_3 = spawnAura
      L6_3 = L0_3
      L5_3(L6_3)
    end
    L5_3 = L0_3.moreSpeed
    if nil ~= L5_3 then
      L5_3 = magicShake
      L6_3 = 0.1
      L5_3(L6_3)
    end
    if nil ~= L1_3 and nil ~= L2_3 then
      L5_3 = IsEntityPlayingAnim
      L6_3 = L5_2
      L7_3 = L1_3
      L8_3 = L2_3
      L9_3 = 3
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      if L5_3 then
        L5_3 = L0_3.rechargeSound
        if nil ~= L5_3 then
          L5_3 = L0_3.rechargeSound
          L6_3 = GetEntityCoords
          L7_3 = L5_2
          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L6_3(L7_3)
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        end
        L5_3 = L0_3.moreSpeed
        if nil ~= L5_3 then
          L5_3 = DoesEntityExist
          L6_3 = lastAROV
          L5_3 = L5_3(L6_3)
          if L5_3 then
            L5_3 = MagicFX
            L6_3 = lastAROV
            L7_3 = L3_2
            L5_3(L6_3, L7_3)
          end
        end
      else
        L5_3 = delCaster
        L5_3()
        L5_3 = RemoveRugbyBefore
        L5_3()
        L5_3 = ClearPedSecondaryTask
        L6_3 = L5_2
        L5_3(L6_3)
        L5_3 = ClearPedTasks
        L6_3 = L5_2
        L5_3(L6_3)
        L5_3 = ecc
        L5_3()
      end
      L5_3 = SetEntityAnimSpeed
      L6_3 = L5_2
      L7_3 = L1_3
      L8_3 = L2_3
      L9_3 = L4_3
      L5_3(L6_3, L7_3, L8_3, L9_3)
      L5_3 = CreateThread
      function L6_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
        while true do
          L0_4 = IsEntityPlayingAnim
          L1_4 = L5_2
          L2_4 = L1_3
          L3_4 = L2_3
          L4_4 = 3
          L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
          if not L0_4 then
            break
          end
          L0_4 = IsPedRagdoll
          L1_4 = L5_2
          L0_4 = L0_4(L1_4)
          if L0_4 then
            break
          end
          L0_4 = IsPedFatallyInjured
          L1_4 = L5_2
          L0_4 = L0_4(L1_4)
          if L0_4 then
            break
          end
          L0_4 = Wait
          L1_4 = 0
          L0_4(L1_4)
          L0_4 = IsPedInAnyVehicle
          L1_4 = L5_2
          L2_4 = false
          L0_4 = L0_4(L1_4, L2_4)
          if not L0_4 then
            L0_4 = L3_2.customDistCam
            if nil ~= L0_4 then
              L0_4 = camBow
              if nil ~= L0_4 then
                L0_4 = IsEntityAttached
                L1_4 = L5_2
                L0_4 = L0_4(L1_4)
                if not L0_4 then
                  L0_4 = vec3
                  L1_4 = 0.55
                  L2_4 = L3_2.customDistCam
                  L3_4 = 0.6
                  L0_4 = L0_4(L1_4, L2_4, L3_4)
                  L1_4 = DetachEntity
                  L2_4 = camBow
                  L1_4(L2_4)
                  L1_4 = AttachCamToEntity
                  L2_4 = camBow
                  L3_4 = L5_2
                  L4_4 = L0_4.x
                  L5_4 = L0_4.y
                  L6_4 = L0_4.z
                  L7_4 = true
                  L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
                  L1_4 = DrawAimRay
                  L2_4 = L3_2.customDistCam
                  L1_4(L2_4)
              end
              else
                L0_4 = DrawAimRay
                L1_4 = L3_2.customDistCam
                L0_4(L1_4)
              end
              L0_4 = IsEntityAttached
              L1_4 = L5_2
              L0_4 = L0_4(L1_4)
              if not L0_4 then
                L0_4 = SetEntityHeading
                L1_4 = L5_2
                L2_4 = GetGameplayCamRot
                L3_4 = 2
                L2_4 = L2_4(L3_4)
                L2_4 = L2_4.z
                L0_4(L1_4, L2_4)
              end
            else
              L0_4 = L3_2.moreSpeed
              if nil ~= L0_4 then
                L0_4 = DrawAimRay
                L1_4 = nil
                L2_4 = true
                L0_4(L1_4, L2_4)
                L0_4 = SetEntityHeading
                L1_4 = L5_2
                L2_4 = GetGameplayCamRot
                L3_4 = 2
                L2_4 = L2_4(L3_4)
                L2_4 = L2_4.z
                L0_4(L1_4, L2_4)
              end
            end
          end
        end
        L0_4 = delBowCam
        L0_4()
      end
      L5_3(L6_3)
      L5_3 = L0_3.attackat
      if nil ~= L5_3 then
        L5_3 = L0_3.attackat
        while true do
          L6_3 = IsEntityPlayingAnim
          L7_3 = L5_2
          L8_3 = L1_3
          L9_3 = L2_3
          L10_3 = 3
          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
          if not L6_3 then
            break
          end
          L6_3 = GetEntityAnimCurrentTime
          L7_3 = L5_2
          L8_3 = L1_3
          L9_3 = L2_3
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          if not (L5_3 > L6_3) then
            break
          end
          L6_3 = Wait
          L7_3 = 0
          L6_3(L7_3)
        end
      end
      L5_3 = IsEntityPlayingAnim
      L6_3 = L5_2
      L7_3 = L1_3
      L8_3 = L2_3
      L9_3 = 3
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      if L5_3 then
        L5_3 = delBowCam
        L5_3()
        L5_3 = L0_3.customSound
        if nil ~= L5_3 then
          L5_3 = L0_3.customSound
          L6_3 = GetEntityCoords
          L7_3 = L5_2
          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L6_3(L7_3)
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        end
        L5_3 = L0_3.moreSpeed
        if nil ~= L5_3 then
          L5_3 = magicShake
          L6_3 = 0.3
          L5_3(L6_3)
        end
        L5_3 = fadeSpellSound
        L5_3()
        L5_3 = L0_3.nearCam
        if nil ~= L5_3 then
          L5_3 = SetFollowPedCamViewMode
          L6_3 = 4
          L5_3(L6_3)
          L5_3 = SetFollowPedCamViewMode
          L6_3 = 0
          L5_3(L6_3)
          L5_3 = SetCamViewModeForContext
          L6_3 = GetCamActiveViewModeContext
          L6_3 = L6_3()
          L7_3 = 0
          L5_3(L6_3, L7_3)
          L5_3 = DisableControlAction
          L6_3 = 0
          L7_3 = 0
          L8_3 = true
          L5_3(L6_3, L7_3, L8_3)
          L5_3 = DisableFirstPersonCamThisFrame
          L5_3()
        end
        L5_3 = lastAROV
        if nil ~= L5_3 then
          L5_3 = DoesEntityExist
          L6_3 = lastAROV
          L5_3 = L5_3(L6_3)
          if L5_3 then
            L5_3 = DetachEntity
            L6_3 = lastAROV
            L5_3(L6_3)
            L5_3 = SetEntityRecordsCollisions
            L6_3 = lastAROV
            L7_3 = true
            L5_3(L6_3, L7_3)
            L5_3 = SetEntityHasGravity
            L6_3 = lastAROV
            L7_3 = true
            L5_3(L6_3, L7_3)
            L5_3 = ActivatePhysics
            L6_3 = lastAROV
            L5_3(L6_3)
            L5_3 = SetEntityCollision
            L6_3 = lastAROV
            L7_3 = true
            L8_3 = true
            L5_3(L6_3, L7_3, L8_3)
            L5_3 = SetEntityLodDist
            L6_3 = lastAROV
            L7_3 = 65535
            L5_3(L6_3, L7_3)
            L5_3 = MagicThrow
            L6_3 = 100
            L7_3 = lastAROV
            L8_3 = A0_2
            L5_3(L6_3, L7_3, L8_3)
            L5_3 = DeleteMana
            L6_3 = A0_2
            L5_3(L6_3)
        end
        else
          L5_3 = L3_2.finalfunc
          if nil ~= L5_3 then
            L5_3 = FreezeEntityPosition
            L6_3 = L5_2
            L7_3 = false
            L5_3(L6_3, L7_3)
            L5_3 = Wait
            L6_3 = 75
            L5_3(L6_3)
            L5_3 = L3_2.finalfunc
            L5_3()
          end
          L5_3 = DeleteMana
          L6_3 = A0_2
          L5_3(L6_3)
        end
        L5_3 = CreateThread
        function L6_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = L1_3
          if nil ~= L0_4 then
            L0_4 = L2_3
            if nil ~= L0_4 then
              L0_4 = L0_3
              if nil ~= L0_4 then
                L0_4 = Wait
                L1_4 = 25
                L0_4(L1_4)
                L0_4 = L0_3.endfunc
                if nil ~= L0_4 then
                  L0_4 = L0_3.endfunc
                  L0_4()
                end
                L0_4 = L0_3.animSpeed
                if nil ~= L0_4 then
                  L0_4 = L0_3.animSpeed
                  if L0_4 > 3 then
                    L0_4 = CreateThread
                    function L1_4()
                      local L0_5, L1_5
                      L0_5 = Wait
                      L1_5 = 255
                      L0_5(L1_5)
                      L0_5 = ecc
                      L0_5()
                      L0_5 = ClearPedSecondaryTask
                      L1_5 = L5_2
                      L0_5(L1_5)
                      L0_5 = ClearPedTasks
                      L1_5 = L5_2
                      L0_5(L1_5)
                    end
                    L0_4(L1_4)
                  end
                end
              end
              L0_4 = Wait
              L1_4 = 150
              L0_4(L1_4)
              L0_4 = IsEntityPlayingAnim
              L1_4 = L5_2
              L2_4 = L1_3
              L3_4 = L2_3
              L4_4 = 3
              L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
              if L0_4 then
                L0_4 = CreateThread
                function L1_4()
                  local L0_5, L1_5
                  L0_5 = Wait
                  L1_5 = 255
                  L0_5(L1_5)
                  L0_5 = ClearPedSecondaryTask
                  L1_5 = L5_2
                  L0_5(L1_5)
                  L0_5 = ClearPedTasks
                  L1_5 = L5_2
                  L0_5(L1_5)
                  L0_5 = ecc
                  L0_5()
                end
                L0_4(L1_4)
              end
            end
          end
        end
        L5_3(L6_3)
      end
    else
      L5_3 = L3_2.finalfunc
      if nil ~= L5_3 then
        L5_3 = L3_2.finalfunc
        L5_3()
      end
    end
    MagicID = 0
    L5_3 = delBowCam
    L5_3()
    L5_3 = FreezeEntityPosition
    L6_3 = L5_2
    L7_3 = false
    L5_3(L6_3, L7_3)
    L5_3 = exports
    L5_3 = L5_3.striano_combat
    L6_3 = L5_3
    L5_3 = L5_3.castSpellBySlot
    L7_3 = A1_2
    L5_3(L6_3, L7_3)
    L5_3 = exports
    L5_3 = L5_3.striano_combat
    L6_3 = L5_3
    L5_3 = L5_3.updateSpellCooldown
    L7_3 = A1_2
    L8_3 = L4_2
    L8_3 = L8_3 - 2000
    L5_3(L6_3, L7_3, L8_3)
    L5_3 = Wait
    L6_3 = 900
    L5_3(L6_3)
    castingSpell = false
  end
  L8_2(L9_2)
end
CastSpell = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = "starter_"
  L1_2 = tostring
  L2_2 = PlayerId
  L2_2, L3_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2 .. L1_2
  L1_2 = TriggerServerEvent
  L2_2 = "ptfx:stopFx"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
stopCurrentMagicFX = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = GetGamePool
  L4_2 = "CPed"
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = DoesEntityExist
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = IsPedDeadOrDying
      L12_2 = L10_2
      L13_2 = true
      L11_2 = L11_2(L12_2, L13_2)
      if not L11_2 and (not A2_2 or L10_2 ~= A2_2) then
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = L11_2 - A0_2
        L12_2 = #L12_2
        if A1_2 >= L12_2 then
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L4_2
          L15_2 = {}
          L15_2.ped = L10_2
          L15_2.dist = L12_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  return L4_2
end
GetPedsInRange = L2_1
L2_1 = 250
L3_1 = 0
L4_1 = {}
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L3_1
  L1_2 = L0_2 - L1_2
  L2_2 = L2_1
  if L1_2 > L2_2 then
    L1_2 = GetGamePool
    L2_2 = "CPed"
    L1_2 = L1_2(L2_2)
    L4_1 = L1_2
    L3_1 = L0_2
  end
  L1_2 = L4_1
  return L1_2
end
getCachedNpcPool = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NetworkHasControlOfEntity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = NetworkRequestControlOfEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 120
  end
  while true do
    L4_2 = NetworkHasControlOfEntity
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L2_2
    if not (L3_2 > L4_2) then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = NetworkRequestControlOfEntity
    L5_2 = A0_2
    L4_2(L5_2)
  end
  L4_2 = NetworkHasControlOfEntity
  L5_2 = A0_2
  return L4_2(L5_2)
end
TryControlEntity = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = IsEntityPlayingAnim
  L2_2 = A0_2
  L3_2 = "weapons@projectile@"
  L4_2 = "aimlive_m"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = A0_2
    L3_2 = "wing_chun@anim"
    L4_2 = "defence_1"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = A0_2
      L3_2 = "kp_9cg_block_hit"
      L4_2 = "kp_9cg_block_hit_clip"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = A0_2
        L3_2 = "kp_wm_gs_parry_02"
        L4_2 = "kp_wm_gs_parry_02_clip"
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = A0_2
          L3_2 = "kp_wm_gs_dodge_forwardroll"
          L4_2 = "kp_wm_gs_dodge_forwardroll_clip"
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = A0_2
            L3_2 = "kp_wm_gs_dodge_leftroll"
            L4_2 = "kp_wm_gs_dodge_leftroll_clip"
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = "kp_wm_gs_dodge_rightroll"
              L4_2 = "kp_wm_gs_dodge_rightroll_clip"
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = "hit_react_left_leg_stumble_knockdown"
                L4_2 = "hit_react_left_leg_stumble_knockdown_clip"
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = "hit_react_heavy_front_knockback_stagger"
                  L4_2 = "hit_react_heavy_front_knockback_stagger_clip"
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = "kp_wm_gs_dodge_backroll"
                    L4_2 = "kp_wm_gs_dodge_backroll_clip"
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if L1_2 then
                    else
                      L1_2 = GetEntityHealth
                      L2_2 = A0_2
                      L1_2 = L1_2(L2_2)
                      if L1_2 < 20 then
                        L2_2 = math
                        L2_2 = L2_2.random
                        L3_2 = 1
                        L4_2 = 100
                        L2_2 = L2_2(L3_2, L4_2)
                        if L2_2 <= 30 then
                          L2_2 = IsPedHuman
                          L3_2 = A0_2
                          L2_2 = L2_2(L3_2)
                          if L2_2 then
                            L2_2 = SetPedCanRagdoll
                            L3_2 = A0_2
                            L4_2 = true
                            L2_2(L3_2, L4_2)
                            L2_2 = SetPedCanRagdollFromPlayerImpact
                            L3_2 = A0_2
                            L4_2 = false
                            L2_2(L3_2, L4_2)
                            L2_2 = SetPedToRagdoll
                            L3_2 = A0_2
                            L4_2 = 250
                            L5_2 = 250
                            L6_2 = 6
                            L7_2 = false
                            L8_2 = false
                            L9_2 = false
                            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
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
PutRagdollPed = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = tonumber
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0
  end
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 0.0
  end
  if A2_2 <= 0 or A1_2 <= 0 then
    return
  end
  L3_2 = A1_2 * A1_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = getCachedNpcPool
  L5_2 = L5_2()
  L6_2 = 1
  L7_2 = #L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2[L9_2]
    if L10_2 and 0 ~= L10_2 then
      L11_2 = DoesEntityExist
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = IsPedAPlayer
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if not L11_2 then
          L11_2 = GetEntityAlpha
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L12_2 = 249
          if L11_2 > L12_2 then
            L11_2 = IsPedDeadOrDying
            L12_2 = L10_2
            L13_2 = true
            L11_2 = L11_2(L12_2, L13_2)
            if not L11_2 then
              L11_2 = GetEntityCoords
              L12_2 = L10_2
              L11_2 = L11_2(L12_2)
              L12_2 = L11_2.x
              L13_2 = A0_2.x
              L12_2 = L12_2 - L13_2
              L13_2 = L11_2.y
              L14_2 = A0_2.y
              L13_2 = L13_2 - L14_2
              L14_2 = L11_2.z
              L15_2 = A0_2.z
              L14_2 = L14_2 - L15_2
              L15_2 = L12_2 * L12_2
              L16_2 = L13_2 * L13_2
              L15_2 = L15_2 + L16_2
              L16_2 = L14_2 * L14_2
              L15_2 = L15_2 + L16_2
              if L3_2 >= L15_2 then
                L16_2 = TryControlEntity
                L17_2 = L10_2
                L18_2 = 120
                L16_2 = L16_2(L17_2, L18_2)
                if L16_2 then
                  L16_2 = ApplyDamageToPed
                  L17_2 = L10_2
                  L18_2 = A2_2
                  L19_2 = true
                  L16_2(L17_2, L18_2, L19_2)
                  L16_2 = PutRagdollPed
                  L17_2 = L10_2
                  L16_2(L17_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
DamageNPCsInRadius = L5_1
L5_1 = RegisterNetEvent
L6_1 = "ApplyDamageNearly:client"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = DoesEntityExist
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = IsEntityDead
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L8_2 = vector3
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = GetEntityCoords
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = L9_2.x
  L11_2 = L8_2.x
  L10_2 = L10_2 - L11_2
  L11_2 = L9_2.y
  L12_2 = L8_2.y
  L11_2 = L11_2 - L12_2
  L12_2 = L9_2.z
  L13_2 = L8_2.z
  L12_2 = L12_2 - L13_2
  L13_2 = L10_2 * L10_2
  L14_2 = L11_2 * L11_2
  L13_2 = L13_2 + L14_2
  L14_2 = L12_2 * L12_2
  L13_2 = L13_2 + L14_2
  L14_2 = tonumber
  L15_2 = A4_2
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = 0.0
  end
  L15_2 = L14_2 + 1.0
  L16_2 = DebugMode
  if L16_2 then
    L16_2 = print
    L17_2 = "[Debug-Combat] ownerSid:"
    L18_2 = A5_2
    L19_2 = "mySid:"
    L20_2 = L6_2
    L21_2 = "damage:"
    L22_2 = A3_2
    L23_2 = "radius:"
    L24_2 = A4_2
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L16_2 = print
    L17_2 = "[Debug-Combat] distSq:"
    L18_2 = L13_2
    L19_2 = "fxRadiusSq:"
    L20_2 = L14_2 * L14_2
    L21_2 = "realRadiusSq:"
    L22_2 = L15_2 * L15_2
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  end
  if A5_2 ~= L6_2 then
    L16_2 = L14_2 * L14_2
    if L13_2 <= L16_2 then
      L16_2 = tonumber
      L17_2 = A3_2
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = 0
      end
      if L16_2 > 20 then
        L16_2 = SetPedCanRagdoll
        L17_2 = L7_2
        L18_2 = true
        L16_2(L17_2, L18_2)
      end
      L16_2 = genSwordHit
      L16_2()
      L16_2 = BloodActive
      if L16_2 then
        L16_2 = GetEntityCoords
        L17_2 = L7_2
        L16_2 = L16_2(L17_2)
        L17_2 = PlayEffect
        L18_2 = "scr_solomon3"
        L19_2 = "scr_trev4_747_blood_splash"
        L20_2 = L16_2
        L21_2 = 3.5
        L17_2(L18_2, L19_2, L20_2, L21_2)
        L17_2 = PlayEffect
        L18_2 = "scr_solomon3"
        L19_2 = "scr_trev4_747_blood_impact"
        L20_2 = L16_2
        L21_2 = 0.2
        L17_2(L18_2, L19_2, L20_2, L21_2)
        L17_2 = PlayEffect
        L18_2 = "core"
        L19_2 = "blood_stab"
        L20_2 = L16_2
        L21_2 = 3.5
        L17_2(L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
  if A5_2 ~= L6_2 then
    L16_2 = L15_2 * L15_2
    if L13_2 <= L16_2 then
      L16_2 = SetPlayerInvincible
      L17_2 = PlayerId
      L17_2 = L17_2()
      L18_2 = false
      L16_2(L17_2, L18_2)
      L16_2 = SetEntityInvincible
      L17_2 = L7_2
      L18_2 = false
      L16_2(L17_2, L18_2)
      L16_2 = SetEntityCanBeDamaged
      L17_2 = L7_2
      L18_2 = true
      L16_2(L17_2, L18_2)
      L16_2 = tonumber
      L17_2 = A3_2
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = 0
      end
      L17_2 = exports
      L17_2 = L17_2.striano_combat
      L18_2 = L17_2
      L17_2 = L17_2.GetDefenseMultiplier
      L17_2 = L17_2(L18_2)
      L16_2 = L16_2 / L17_2
      L17_2 = math
      L17_2 = L17_2.floor
      L18_2 = L16_2 + 0.5
      L17_2 = L17_2(L18_2)
      L16_2 = L17_2
      if L16_2 > 0 then
        L17_2 = IsEntityPlayingAnim
        L18_2 = L7_2
        L19_2 = "weapons@projectile@"
        L20_2 = "aimlive_m"
        L21_2 = 3
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
        if not L17_2 then
          L17_2 = inblockfunc
          L18_2 = L7_2
          L17_2 = L17_2(L18_2)
          if L17_2 then
            L17_2 = print
            L18_2 = "NO DAMAGE CAUSE YOU IN BLOCK FUNCTION!"
            L17_2(L18_2)
          else
            L17_2 = DebugMode
            if L17_2 then
              L17_2 = print
              L18_2 = "[Debug-Combat] Damage applied:"
              L19_2 = L16_2
              L20_2 = "HP BEFORE:"
              L21_2 = GetEntityHealth
              L22_2 = L7_2
              L21_2 = L21_2(L22_2)
              L22_2 = "ARMOUR BEFORE:"
              L23_2 = GetPedArmour
              L24_2 = L7_2
              L23_2, L24_2 = L23_2(L24_2)
              L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            end
            L17_2 = ApplyDamageToPed
            L18_2 = L7_2
            L19_2 = L16_2
            L20_2 = false
            L17_2(L18_2, L19_2, L20_2)
            L17_2 = nil
            if A5_2 then
              L18_2 = GetPlayerFromServerId
              L19_2 = A5_2
              L18_2 = L18_2(L19_2)
              if -1 ~= L18_2 then
                L19_2 = GetPlayerPed
                L20_2 = L18_2
                L19_2 = L19_2(L20_2)
                L17_2 = L19_2
              end
            end
            L18_2 = TriggerEvent
            L19_2 = "striano_combat:client:onDamageTaken"
            L20_2 = L17_2
            L21_2 = L16_2
            L18_2(L19_2, L20_2, L21_2)
            L18_2 = CreateThread
            function L19_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
              L0_3 = Wait
              L1_3 = 50
              L0_3(L1_3)
              L0_3 = DebugMode
              if L0_3 then
                L0_3 = print
                L1_3 = "[Debug-Combat] AFTER 50ms HP:"
                L2_3 = GetEntityHealth
                L3_3 = L7_2
                L2_3 = L2_3(L3_3)
                L3_3 = "ARMOUR:"
                L4_3 = GetPedArmour
                L5_3 = L7_2
                L4_3, L5_3 = L4_3(L5_3)
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
              end
            end
            L18_2(L19_2)
            L18_2 = CreateThread
            function L19_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
              L0_3 = Wait
              L1_3 = 250
              L0_3(L1_3)
              L0_3 = DebugMode
              if L0_3 then
                L0_3 = print
                L1_3 = "[Debug-Combat] AFTER 250ms HP:"
                L2_3 = GetEntityHealth
                L3_3 = L7_2
                L2_3 = L2_3(L3_3)
                L3_3 = "ARMOUR:"
                L4_3 = GetPedArmour
                L5_3 = L7_2
                L4_3, L5_3 = L4_3(L5_3)
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
              end
            end
            L18_2(L19_2)
          end
      end
      else
        L17_2 = IsEntityPlayingAnim
        L18_2 = L7_2
        L19_2 = "weapons@projectile@"
        L20_2 = "aimlive_m"
        L21_2 = 3
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
        if L17_2 then
          L17_2 = PlayEffect
          L18_2 = "scr_agencyheistb"
          L19_2 = "scr_agency3b_linger_smoke"
          L20_2 = GetEntityCoords
          L21_2 = L7_2
          L20_2 = L20_2(L21_2)
          L21_2 = 0.5
          L22_2 = 1.0
          L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
          L17_2 = genSwordHit
          L17_2()
        end
      end
    end
  end
  if A5_2 == L6_2 then
    L16_2 = DamageNPCsInRadius
    L17_2 = L8_2
    L18_2 = A4_2
    L19_2 = A3_2
    L16_2(L17_2, L18_2, L19_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "combat_obj:deleteOne"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 or A0_2 <= 0 then
    return
  end
  L1_2 = WaitEntityFromNetId
  L2_2 = A0_2
  L3_2 = 500
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = print
    L3_2 = "[combat_obj] impossibile risolvere NetID %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = NetworkHasControlOfEntity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 + 500
    repeat
      L3_2 = NetworkRequestControlOfEntity
      L4_2 = L1_2
      L3_2(L4_2)
      L3_2 = Wait
      L4_2 = 0
      L3_2(L4_2)
      L3_2 = NetworkHasControlOfEntity
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = DoesEntityExist
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        break
      end
      L3_2 = GetGameTimer
      L3_2 = L3_2()
    until L2_2 <= L3_2
  end
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = SetEntityAsMissionEntity
  L3_2 = L1_2
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = DeleteEntity
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = IsEntityAnObject
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteObject
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = 1
L6_1 = customEffects
L6_1 = #L6_1
L7_1 = 1
for L8_1 = L5_1, L6_1, L7_1 do
  L9_1 = table
  L9_1 = L9_1.insert
  L10_1 = handCombatEffect
  L11_1 = customEffects
  L11_1 = L11_1[L8_1]
  L9_1(L10_1, L11_1)
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = ForceLightningFlash
  L3_2()
  L3_2 = PlayEffect
  L4_2 = "des_tv_smash"
  L5_2 = "ent_sht_electrical_box_sp"
  L6_2 = vector3
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = 20.0
  L8_2 = 1.0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = GetSoundId
  L3_2 = L3_2()
  L4_2 = PlaySoundFromCoord
  L5_2 = L3_2
  L6_2 = "THUNDER"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = "AMBIENT_THUNDER"
  L11_2 = false
  L12_2 = 0
  L13_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = SetTimeout
  L5_2 = 1500
  function L6_2()
    local L0_3, L1_3
    L0_3 = StopSound
    L1_3 = L3_2
    L0_3(L1_3)
    L0_3 = ReleaseSoundId
    L1_3 = L3_2
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2)
end
Thunder = L5_1
L5_1 = RegisterNetEvent
L6_1 = "ptfx:trailOnPedBone"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 then
    L1_2 = A0_2.pedNet
    if L1_2 then
      L1_2 = NetworkDoesNetworkIdExist
      L2_2 = A0_2.pedNet
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = WaitEntityFromNetId
  L2_2 = A0_2.pedNet
  L3_2 = 500
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_35
    end
  end
  L2_2 = print
  L3_2 = "Ped netId %s invalid / not found"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A0_2.pedNet
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  do return end
  ::lbl_35::
  L2_2 = HasNamedPtfxAssetLoaded
  L3_2 = A0_2.pd
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestNamedPtfxAsset
    L3_2 = A0_2.pd
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 + 2000
    while true do
      L3_2 = HasNamedPtfxAssetLoaded
      L4_2 = A0_2.pd
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = GetGameTimer
      L3_2 = L3_2()
      if not (L2_2 > L3_2) then
        break
      end
      L3_2 = Wait
      L4_2 = 0
      L3_2(L4_2)
    end
  end
  L2_2 = UseParticleFxAssetNextCall
  L3_2 = A0_2.pd
  L2_2(L3_2)
  L2_2 = A0_2.c
  if nil ~= L2_2 then
    L3_2 = SetParticleFxNonLoopedColour
    L4_2 = L2_2[1]
    L5_2 = L2_2[2]
    L6_2 = L2_2[3]
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = StartParticleFxNonLoopedOnPedBone
  L4_2 = A0_2.pn
  L5_2 = L1_2
  L6_2 = A0_2.off
  L6_2 = L6_2[1]
  L7_2 = A0_2.off
  L7_2 = L7_2[2]
  L8_2 = A0_2.off
  L8_2 = L8_2[3]
  L9_2 = A0_2.rot
  L9_2 = L9_2[1]
  L10_2 = A0_2.rot
  L10_2 = L10_2[2]
  L11_2 = A0_2.rot
  L11_2 = L11_2[3]
  L12_2 = A0_2.bone
  L13_2 = A0_2.scale
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = FreezeEntityPosition
    L2_2 = A0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityDynamic
    L2_2 = A0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityCollision
    L2_2 = A0_2
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetEntityHasGravity
    L2_2 = A0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = ActivatePhysics
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
ReactivatePhysics = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = 15.0
  L1_2 = GetGamePool
  L2_2 = "CObject"
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = GetHashKey
  L4_2 = "p_ld_am_ball_01"
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = DoesEntityExist
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = GetEntityModel
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 == L3_2 then
        L10_2 = GetEntityCoords
        L11_2 = PlayerPedId
        L11_2, L12_2 = L11_2()
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = GetEntityCoords
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        L10_2 = L10_2 - L11_2
        L10_2 = #L10_2
        L11_2 = tonumber
        L12_2 = L0_2
        L11_2 = L11_2(L12_2)
        if L10_2 < L11_2 then
          L10_2 = IsEntityAttached
          L11_2 = L9_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = SetEntityAsMissionEntity
            L11_2 = L9_2
            L10_2(L11_2)
            L10_2 = DeleteEntity
            L11_2 = L9_2
            L10_2(L11_2)
            L2_2 = L2_2 + 1
          end
        end
      end
    end
  end
end
RemoveRugbyBefore = L5_1
