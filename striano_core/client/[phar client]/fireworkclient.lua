local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "scr_indep_fireworks"
L1_1 = "anim@mp_fireworks"
L2_1 = RegisterNetEvent
L3_1 = "fireworks:box"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "fireworks:box"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 0.5
  L6_2 = -1.02
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = "anim@mp_fireworks"
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
  L5_2 = TaskPlayAnim
  L6_2 = L0_2
  L7_2 = "anim@mp_fireworks"
  L8_2 = "place_firework_3_box"
  L9_2 = 8.0
  L10_2 = -1
  L11_2 = -1
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 1250
  L5_2(L6_2)
  L5_2 = ClearPedSecondaryTask
  L6_2 = L0_2
  L5_2(L6_2)
  L5_2 = GetHashKey
  L6_2 = "ind_prop_firework_03"
  L5_2 = L5_2(L6_2)
  L6_2 = CreateObject
  L7_2 = L5_2
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = true
  L12_2 = false
  L13_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetEntityHeading
  L8_2 = L6_2
  L9_2 = GetEntityHeading
  L10_2 = L0_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = PlaceObjectOnGroundProperly
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.submexError
  L9_2 = "In azione tra 9 secondi."
  L7_2(L8_2, L9_2)
  L7_2 = ExecuteCommand
  L8_2 = "cinv"
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 9000
  L7_2(L8_2)
  L7_2 = TriggerServerEvent
  L8_2 = "syncbad4"
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = Wait
  L8_2 = 18000
  L7_2(L8_2)
  L7_2 = DeleteObject
  L8_2 = L6_2
  L7_2(L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "syncbad_cl4"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "syncbad_cl4"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = RequestNamedPtfxAsset
  L4_2 = L0_1
  L3_2(L4_2)
  while true do
    L3_2 = HasNamedPtfxAssetLoaded
    L4_2 = L0_1
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 1
    L3_2(L4_2)
  end
  L3_2 = UseParticleFxAssetNextCall
  L4_2 = L0_1
  L3_2(L4_2)
  L3_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L4_2 = "scr_indep_firework_trailburst"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = math
  L11_2 = L11_2.random
  L11_2 = L11_2()
  L11_2 = L11_2 * 0.5
  L11_2 = L11_2 + 0.8
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = Wait
  L5_2 = 1500
  L4_2(L5_2)
  L4_2 = UseParticleFxAssetNextCall
  L5_2 = L0_1
  L4_2(L5_2)
  L4_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L5_2 = "scr_indep_firework_trailburst"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = math
  L12_2 = L12_2.random
  L12_2 = L12_2()
  L12_2 = L12_2 * 0.5
  L12_2 = L12_2 + 0.8
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 1500
  L5_2(L6_2)
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = L0_1
  L5_2(L6_2)
  L5_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L6_2 = "scr_indep_firework_trailburst"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = math
  L13_2 = L13_2.random
  L13_2 = L13_2()
  L13_2 = L13_2 * 0.5
  L13_2 = L13_2 + 0.8
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = Wait
  L7_2 = 1500
  L6_2(L7_2)
  L6_2 = UseParticleFxAssetNextCall
  L7_2 = L0_1
  L6_2(L7_2)
  L6_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L7_2 = "scr_indep_firework_trailburst"
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = math
  L14_2 = L14_2.random
  L14_2 = L14_2()
  L14_2 = L14_2 * 0.5
  L14_2 = L14_2 + 0.8
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = Wait
  L8_2 = 1500
  L7_2(L8_2)
  L7_2 = UseParticleFxAssetNextCall
  L8_2 = L0_1
  L7_2(L8_2)
  L7_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L8_2 = "scr_indep_firework_trailburst"
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = math
  L15_2 = L15_2.random
  L15_2 = L15_2()
  L15_2 = L15_2 * 0.5
  L15_2 = L15_2 + 0.8
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = Wait
  L9_2 = 1500
  L8_2(L9_2)
  L8_2 = UseParticleFxAssetNextCall
  L9_2 = L0_1
  L8_2(L9_2)
  L8_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L9_2 = "scr_indep_firework_trailburst"
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = math
  L16_2 = L16_2.random
  L16_2 = L16_2()
  L16_2 = L16_2 * 0.5
  L16_2 = L16_2 + 0.8
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = Wait
  L10_2 = 1500
  L9_2(L10_2)
  L9_2 = UseParticleFxAssetNextCall
  L10_2 = L0_1
  L9_2(L10_2)
  L9_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L10_2 = "scr_indep_firework_trailburst"
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = math
  L17_2 = L17_2.random
  L17_2 = L17_2()
  L17_2 = L17_2 * 0.5
  L17_2 = L17_2 + 0.8
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L10_2 = Wait
  L11_2 = 1500
  L10_2(L11_2)
  L10_2 = UseParticleFxAssetNextCall
  L11_2 = L0_1
  L10_2(L11_2)
  L10_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L11_2 = "scr_indep_firework_trailburst"
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = math
  L18_2 = L18_2.random
  L18_2 = L18_2()
  L18_2 = L18_2 * 0.5
  L18_2 = L18_2 + 0.8
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L22_2 = false
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L11_2 = Wait
  L12_2 = 4000
  L11_2(L12_2)
  L11_2 = UseParticleFxAssetNextCall
  L12_2 = L0_1
  L11_2(L12_2)
  L11_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L12_2 = "scr_indep_firework_trailburst"
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = A2_2
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 0.0
  L19_2 = math
  L19_2 = L19_2.random
  L19_2 = L19_2()
  L19_2 = L19_2 * 0.5
  L19_2 = L19_2 + 1.8
  L20_2 = false
  L21_2 = false
  L22_2 = false
  L23_2 = false
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "fireworks:cone"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "fireworks:cone"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 0.5
  L6_2 = -1.02
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = "anim@mp_fireworks"
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
  L5_2 = TaskPlayAnim
  L6_2 = L0_2
  L7_2 = "anim@mp_fireworks"
  L8_2 = "place_firework_4_cone"
  L9_2 = 8.0
  L10_2 = -1
  L11_2 = -1
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 1250
  L5_2(L6_2)
  L5_2 = ClearPedSecondaryTask
  L6_2 = L0_2
  L5_2(L6_2)
  L5_2 = GetHashKey
  L6_2 = "ind_prop_firework_04"
  L5_2 = L5_2(L6_2)
  L6_2 = CreateObject
  L7_2 = L5_2
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = true
  L12_2 = false
  L13_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetEntityHeading
  L8_2 = L6_2
  L9_2 = GetEntityHeading
  L10_2 = L0_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = PlaceObjectOnGroundProperly
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.submexError
  L9_2 = "In azione tra 9 secondi."
  L7_2(L8_2, L9_2)
  L7_2 = ExecuteCommand
  L8_2 = "cinv"
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 9000
  L7_2(L8_2)
  L7_2 = TriggerServerEvent
  L8_2 = "syncbad3"
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = Wait
  L8_2 = 18000
  L7_2(L8_2)
  L7_2 = DeleteObject
  L8_2 = L6_2
  L7_2(L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "syncbad_cl3"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "syncbad_cl3"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = RequestNamedPtfxAsset
  L4_2 = L0_1
  L3_2(L4_2)
  while true do
    L3_2 = HasNamedPtfxAssetLoaded
    L4_2 = L0_1
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 1
    L3_2(L4_2)
  end
  L3_2 = UseParticleFxAssetNextCall
  L4_2 = L0_1
  L3_2(L4_2)
  L3_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L4_2 = "scr_indep_firework_fountain"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = math
  L11_2 = L11_2.random
  L11_2 = L11_2()
  L11_2 = L11_2 * 0.5
  L11_2 = L11_2 + 0.8
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = Wait
  L5_2 = 1500
  L4_2(L5_2)
  L4_2 = UseParticleFxAssetNextCall
  L5_2 = L0_1
  L4_2(L5_2)
  L4_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L5_2 = "scr_indep_firework_fountain"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = math
  L12_2 = L12_2.random
  L12_2 = L12_2()
  L12_2 = L12_2 * 0.5
  L12_2 = L12_2 + 0.8
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 1500
  L5_2(L6_2)
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = L0_1
  L5_2(L6_2)
  L5_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L6_2 = "scr_indep_firework_fountain"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = math
  L13_2 = L13_2.random
  L13_2 = L13_2()
  L13_2 = L13_2 * 0.5
  L13_2 = L13_2 + 0.8
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = Wait
  L7_2 = 1500
  L6_2(L7_2)
  L6_2 = UseParticleFxAssetNextCall
  L7_2 = L0_1
  L6_2(L7_2)
  L6_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L7_2 = "scr_indep_firework_fountain"
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = math
  L14_2 = L14_2.random
  L14_2 = L14_2()
  L14_2 = L14_2 * 0.5
  L14_2 = L14_2 + 0.8
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = Wait
  L8_2 = 1500
  L7_2(L8_2)
  L7_2 = UseParticleFxAssetNextCall
  L8_2 = L0_1
  L7_2(L8_2)
  L7_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L8_2 = "scr_indep_firework_fountain"
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = math
  L15_2 = L15_2.random
  L15_2 = L15_2()
  L15_2 = L15_2 * 0.5
  L15_2 = L15_2 + 0.8
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = Wait
  L9_2 = 2500
  L8_2(L9_2)
  L8_2 = UseParticleFxAssetNextCall
  L9_2 = L0_1
  L8_2(L9_2)
  L8_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L9_2 = "scr_indep_firework_fountain"
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = math
  L16_2 = L16_2.random
  L16_2 = L16_2()
  L16_2 = L16_2 * 1.5
  L16_2 = L16_2 + 1.8
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "fireworks:cylinder"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "fireworks:cylinder"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = ped
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 0.5
  L6_2 = -1.02
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = "anim@mp_fireworks"
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
  L5_2 = TaskPlayAnim
  L6_2 = L0_2
  L7_2 = "anim@mp_fireworks"
  L8_2 = "place_firework_2_cylinder"
  L9_2 = 8.0
  L10_2 = -1
  L11_2 = -1
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 1250
  L5_2(L6_2)
  L5_2 = ClearPedSecondaryTask
  L6_2 = L0_2
  L5_2(L6_2)
  L5_2 = GetHashKey
  L6_2 = "ind_prop_firework_02"
  L5_2 = L5_2(L6_2)
  L6_2 = CreateObject
  L7_2 = L5_2
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = true
  L12_2 = false
  L13_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetEntityHeading
  L8_2 = L6_2
  L9_2 = GetEntityHeading
  L10_2 = L0_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = PlaceObjectOnGroundProperly
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.submexError
  L9_2 = "In azione tra 9 secondi."
  L7_2(L8_2, L9_2)
  L7_2 = ExecuteCommand
  L8_2 = "cinv"
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 9000
  L7_2(L8_2)
  L7_2 = TriggerServerEvent
  L8_2 = "syncbad2"
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = Wait
  L8_2 = 18000
  L7_2(L8_2)
  L7_2 = DeleteObject
  L8_2 = L6_2
  L7_2(L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "syncbad_cl2"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "syncbad_cl2"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = RequestNamedPtfxAsset
  L4_2 = L0_1
  L3_2(L4_2)
  while true do
    L3_2 = HasNamedPtfxAssetLoaded
    L4_2 = L0_1
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 1
    L3_2(L4_2)
  end
  L3_2 = UseParticleFxAssetNextCall
  L4_2 = L0_1
  L3_2(L4_2)
  L3_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L4_2 = "scr_indep_firework_shotburst"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = math
  L11_2 = L11_2.random
  L11_2 = L11_2()
  L11_2 = L11_2 * 0.5
  L11_2 = L11_2 + 0.8
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = Wait
  L5_2 = 1500
  L4_2(L5_2)
  L4_2 = UseParticleFxAssetNextCall
  L5_2 = L0_1
  L4_2(L5_2)
  L4_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L5_2 = "scr_indep_firework_shotburst"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = math
  L12_2 = L12_2.random
  L12_2 = L12_2()
  L12_2 = L12_2 * 0.5
  L12_2 = L12_2 + 0.8
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 1500
  L5_2(L6_2)
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = L0_1
  L5_2(L6_2)
  L5_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L6_2 = "scr_indep_firework_shotburst"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = math
  L13_2 = L13_2.random
  L13_2 = L13_2()
  L13_2 = L13_2 * 0.5
  L13_2 = L13_2 + 0.8
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = Wait
  L7_2 = 1500
  L6_2(L7_2)
  L6_2 = UseParticleFxAssetNextCall
  L7_2 = L0_1
  L6_2(L7_2)
  L6_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L7_2 = "scr_indep_firework_shotburst"
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = math
  L14_2 = L14_2.random
  L14_2 = L14_2()
  L14_2 = L14_2 * 0.5
  L14_2 = L14_2 + 0.8
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = Wait
  L8_2 = 1500
  L7_2(L8_2)
  L7_2 = UseParticleFxAssetNextCall
  L8_2 = L0_1
  L7_2(L8_2)
  L7_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L8_2 = "scr_indep_firework_shotburst"
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = math
  L15_2 = L15_2.random
  L15_2 = L15_2()
  L15_2 = L15_2 * 0.5
  L15_2 = L15_2 + 0.8
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = Wait
  L9_2 = 2500
  L8_2(L9_2)
  L8_2 = UseParticleFxAssetNextCall
  L9_2 = L0_1
  L8_2(L9_2)
  L8_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L9_2 = "scr_indep_firework_shotburst"
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = math
  L16_2 = L16_2.random
  L16_2 = L16_2()
  L16_2 = L16_2 * 1.5
  L16_2 = L16_2 + 1.8
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = Wait
  L10_2 = 2500
  L9_2(L10_2)
  L9_2 = UseParticleFxAssetNextCall
  L10_2 = L0_1
  L9_2(L10_2)
  L9_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L10_2 = "scr_indep_firework_shotburst"
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = math
  L17_2 = L17_2.random
  L17_2 = L17_2()
  L17_2 = L17_2 * 1.5
  L17_2 = L17_2 + 1.8
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L10_2 = Wait
  L11_2 = 2500
  L10_2(L11_2)
  L10_2 = UseParticleFxAssetNextCall
  L11_2 = L0_1
  L10_2(L11_2)
  L10_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L11_2 = "scr_indep_firework_shotburst"
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = math
  L18_2 = L18_2.random
  L18_2 = L18_2()
  L18_2 = L18_2 * 1.5
  L18_2 = L18_2 + 1.8
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L22_2 = false
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "fireworks:rocket"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "fireworks:rocket"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = ped
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 0.5
  L6_2 = -1.02
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = "anim@mp_fireworks"
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
  L5_2 = TaskPlayAnim
  L6_2 = L0_2
  L7_2 = "anim@mp_fireworks"
  L8_2 = "place_firework_1_rocket"
  L9_2 = 8.0
  L10_2 = -1
  L11_2 = -1
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 1250
  L5_2(L6_2)
  L5_2 = ClearPedSecondaryTask
  L6_2 = L0_2
  L5_2(L6_2)
  L5_2 = GetHashKey
  L6_2 = "ind_prop_firework_01"
  L5_2 = L5_2(L6_2)
  L6_2 = CreateObject
  L7_2 = L5_2
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = true
  L12_2 = false
  L13_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetEntityHeading
  L8_2 = L6_2
  L9_2 = GetEntityHeading
  L10_2 = L0_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = PlaceObjectOnGroundProperly
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.submexError
  L9_2 = "In azione tra 9 secondi."
  L7_2(L8_2, L9_2)
  L7_2 = ExecuteCommand
  L8_2 = "cinv"
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 9000
  L7_2(L8_2)
  L7_2 = TriggerServerEvent
  L8_2 = "syncbad1"
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = Wait
  L8_2 = 8500
  L7_2(L8_2)
  L7_2 = DeleteObject
  L8_2 = L6_2
  L7_2(L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "syncbad_cl1"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "syncbad_cl1"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = RequestNamedPtfxAsset
  L4_2 = L0_1
  L3_2(L4_2)
  while true do
    L3_2 = HasNamedPtfxAssetLoaded
    L4_2 = L0_1
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 1
    L3_2(L4_2)
  end
  L3_2 = UseParticleFxAssetNextCall
  L4_2 = L0_1
  L3_2(L4_2)
  L3_2 = StartParticleFxNonLoopedAtCoord
  L4_2 = "scr_indep_firework_starburst"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 2.5
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L2_1(L3_1, L4_1)
