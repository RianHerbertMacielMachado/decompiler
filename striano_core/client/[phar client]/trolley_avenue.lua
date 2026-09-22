local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = nil
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = joaat
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = HasModelLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return L1_2
  end
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
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 <= L3_2 then
      L3_2 = nil
      return L3_2
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = HasAnimDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasAnimDictLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 <= L2_2 then
      L2_2 = false
      return L2_2
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = true
  return L2_2
end
L4_1 = nil
L5_1 = nil
L6_1 = RegisterCommand
L7_1 = "spawntrolley"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L4_2 = 269934519
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L0_1
  if L4_2 then
    L4_2 = DoesEntityExist
    L5_2 = L0_1
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = DeleteEntity
      L5_2 = L0_1
      L4_2(L5_2)
    end
  end
  L4_2 = L2_2 * 1.4
  L4_2 = L1_2 + L4_2
  L5_2 = CreateObject
  L6_2 = L3_2
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L9_2 = L9_2 - 1.0
  L10_2 = true
  L11_2 = true
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L0_1 = L5_2
  L5_2 = SetEntityHeading
  L6_2 = L0_1
  L7_2 = GetEntityHeading
  L8_2 = L0_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L5_2 = PlaceObjectOnGroundProperly
  L6_2 = L0_1
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L0_1
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = Wait
  L6_2 = 1000
  L5_2(L6_2)
  L5_2 = L1_1
  if L5_2 then
    return
  end
  L5_2 = L0_1
  if L5_2 then
    L5_2 = DoesEntityExist
    L6_2 = L0_1
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_71
    end
  end
  do return end
  ::lbl_71::
  L5_2 = true
  L1_1 = L5_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = "anim@heists@ornate_bank@grab_cash"
  L7_2 = L3_1
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = false
    L1_1 = L7_2
    return
  end
  L7_2 = L2_1
  L8_2 = 1246356548
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L8_2 = false
    L1_1 = L8_2
    return
  end
  L8_2 = L2_1
  L9_2 = 769923921
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L9_2 = false
    L1_1 = L9_2
    return
  end
  L9_2 = GetEntityCoords
  L10_2 = L0_1
  L9_2 = L9_2(L10_2)
  L10_2 = GetEntityRotation
  L11_2 = L0_1
  L12_2 = 2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = GetEntityHeading
  L12_2 = L0_1
  L11_2 = L11_2(L12_2)
  L12_2 = FreezeEntityPosition
  L13_2 = L5_2
  L14_2 = true
  L12_2(L13_2, L14_2)
  L12_2 = SetEntityCoordsNoOffset
  L13_2 = L5_2
  L14_2 = L9_2.x
  L15_2 = L9_2.y
  L15_2 = L15_2 - 0.9
  L16_2 = L9_2.z
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L12_2 = SetEntityHeading
  L13_2 = L5_2
  L14_2 = L11_2 - 180.0
  L12_2(L13_2, L14_2)
  L12_2 = CreateObject
  L13_2 = L7_2
  L14_2 = L9_2.x
  L15_2 = L9_2.y
  L16_2 = L9_2.z
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_1 = L12_2
  L12_2 = SetEntityCollision
  L13_2 = L4_1
  L14_2 = false
  L15_2 = false
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = AttachEntityToEntity
  L13_2 = L4_1
  L14_2 = L5_2
  L15_2 = GetPedBoneIndex
  L16_2 = L5_2
  L17_2 = 18905
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = 0.15
  L17_2 = 0.035
  L18_2 = 0.025
  L19_2 = -86.200000000001
  L20_2 = -101.4
  L21_2 = 61.0
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = true
  L26_2 = 1
  L27_2 = true
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = NetworkCreateSynchronisedScene
  L13_2 = L9_2.x
  L14_2 = L9_2.y
  L15_2 = L9_2.z
  L16_2 = L10_2.x
  L17_2 = L10_2.y
  L18_2 = L10_2.z
  L19_2 = 2
  L20_2 = false
  L21_2 = false
  L22_2 = 1065353216
  L23_2 = 0
  L24_2 = 1.0
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L13_2 = NetworkAddPedToSynchronisedScene
  L14_2 = L5_2
  L15_2 = L12_2
  L16_2 = L6_2
  L17_2 = "grab"
  L18_2 = 1.5
  L19_2 = -4.0
  L20_2 = 1
  L21_2 = 16
  L22_2 = 1148846080
  L23_2 = 0
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L13_2 = NetworkAddEntityToSynchronisedScene
  L14_2 = L0_1
  L15_2 = L12_2
  L16_2 = L6_2
  L17_2 = "cart_cash_dissapear"
  L18_2 = 4.0
  L19_2 = -8.0
  L20_2 = 1
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = NetworkStartSynchronisedScene
  L14_2 = L12_2
  L13_2(L14_2)
  L13_2 = GetGameTimer
  L13_2 = L13_2()
  L14_2 = math
  L14_2 = L14_2.floor
  L15_2 = GetAnimDuration
  L16_2 = L6_2
  L17_2 = "grab"
  L15_2 = L15_2(L16_2, L17_2)
  L15_2 = L15_2 * 1000
  L14_2 = L14_2(L15_2)
  L15_2 = false
  L16_2 = 0
  L17_2 = SetEntityVisible
  L18_2 = L4_1
  L19_2 = false
  L20_2 = false
  L17_2(L18_2, L19_2, L20_2)
  while true do
    L17_2 = GetGameTimer
    L17_2 = L17_2()
    L17_2 = L17_2 - L13_2
    if not (L14_2 > L17_2) then
      break
    end
    L17_2 = GetGameTimer
    L17_2 = L17_2()
    L18_2 = GetWorldPositionOfEntityBone
    L19_2 = L5_2
    L20_2 = GetPedBoneIndex
    L21_2 = L5_2
    L22_2 = 57005
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L20_2(L21_2, L22_2)
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L19_2 = GetWorldPositionOfEntityBone
    L20_2 = L5_2
    L21_2 = GetPedBoneIndex
    L22_2 = L5_2
    L23_2 = 18905
    L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L21_2(L22_2, L23_2)
    L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L20_2 = L18_2 - L19_2
    L20_2 = #L20_2
    L21_2 = 0.0
    L22_2 = L5_1
    if L22_2 then
      L22_2 = L5_1
      L22_2 = L18_2 - L22_2
      L22_2 = #L22_2
      L23_2 = GetFrameTime
      L23_2 = L23_2()
      L21_2 = L22_2 / L23_2
    end
    L5_1 = L18_2
    if not L15_2 then
      L22_2 = 0.55
      if L20_2 > L22_2 then
        L22_2 = 0.3
        if L21_2 < L22_2 then
          L22_2 = L17_2 - L16_2
          if L22_2 > 25 then
            L15_2 = true
            L16_2 = L17_2
            L22_2 = SetEntityVisible
            L23_2 = L4_1
            L24_2 = true
            L25_2 = false
            L22_2(L23_2, L24_2, L25_2)
        end
      end
    end
    elseif L15_2 then
      L22_2 = 0.35
      if L20_2 < L22_2 then
        L22_2 = L17_2 - L16_2
        if L22_2 > 25 then
          L15_2 = false
          L16_2 = L17_2
          L22_2 = SetEntityVisible
          L23_2 = L4_1
          L24_2 = false
          L25_2 = false
          L22_2(L23_2, L24_2, L25_2)
        end
      end
    end
    L22_2 = Wait
    L23_2 = 0
    L22_2(L23_2)
  end
  L17_2 = NetworkStopSynchronisedScene
  L18_2 = L12_2
  L17_2(L18_2)
  L17_2 = DoesEntityExist
  L18_2 = L4_1
  L17_2 = L17_2(L18_2)
  if L17_2 then
    L17_2 = DeleteEntity
    L18_2 = L4_1
    L17_2(L18_2)
  end
  L17_2 = DoesEntityExist
  L18_2 = L0_1
  L17_2 = L17_2(L18_2)
  if L17_2 then
    L17_2 = GetEntityCoords
    L18_2 = L0_1
    L17_2 = L17_2(L18_2)
    L18_2 = GetEntityRotation
    L19_2 = L0_1
    L20_2 = 2
    L18_2 = L18_2(L19_2, L20_2)
    L19_2 = GetEntityHeading
    L20_2 = L0_1
    L19_2 = L19_2(L20_2)
    L20_2 = DeleteEntity
    L21_2 = L0_1
    L20_2(L21_2)
    L20_2 = CreateObject
    L21_2 = L8_2
    L22_2 = L17_2.x
    L23_2 = L17_2.y
    L24_2 = L17_2.z
    L25_2 = true
    L26_2 = true
    L27_2 = false
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L0_1 = L20_2
    L20_2 = SetEntityRotation
    L21_2 = L0_1
    L22_2 = L18_2.x
    L23_2 = L18_2.y
    L24_2 = L18_2.z
    L25_2 = 2
    L26_2 = true
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L20_2 = SetEntityHeading
    L21_2 = L0_1
    L22_2 = L19_2
    L20_2(L21_2, L22_2)
    L20_2 = PlaceObjectOnGroundProperly
    L21_2 = L0_1
    L20_2(L21_2)
    L20_2 = Wait
    L21_2 = 0
    L20_2(L21_2)
    L20_2 = FreezeEntityPosition
    L21_2 = L0_1
    L22_2 = true
    L20_2(L21_2, L22_2)
    L20_2 = Wait
    L21_2 = 1000
    L20_2(L21_2)
    L20_2 = SetEntityAsMissionEntity
    L21_2 = L0_1
    L20_2(L21_2)
    L20_2 = DeleteEntity
    L21_2 = L0_1
    L20_2(L21_2)
    L20_2 = nil
    L0_1 = L20_2
  end
  L17_2 = FreezeEntityPosition
  L18_2 = L5_2
  L19_2 = false
  L17_2(L18_2, L19_2)
  L17_2 = false
  L1_1 = L17_2
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "grabcash"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = "anim@heists@ornate_bank@grab_cash"
  L2_2 = "grab"
  L3_2 = 269934519
  L4_2 = -944468481
  L5_2 = L1_2
  L6_2 = HasAnimDictLoaded
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestAnimDict
    L7_2 = L5_2
    L6_2(L7_2)
    while true do
      L6_2 = HasAnimDictLoaded
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = Wait
      L7_2 = 10
      L6_2(L7_2)
    end
  end
  L6_2 = RequestModel
  L7_2 = L3_2
  L6_2(L7_2)
  while true do
    L6_2 = HasModelLoaded
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = RequestModel
  L7_2 = L4_2
  L6_2(L7_2)
  while true do
    L6_2 = HasModelLoaded
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = GetEntityCoords
  L7_2 = L0_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetEntityForwardVector
  L8_2 = L0_2
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2 * 1.0
  L8_2 = L6_2 + L8_2
  L9_2 = GetEntityHeading
  L10_2 = L0_2
  L9_2 = L9_2(L10_2)
  L10_2 = CreateObject
  L11_2 = L3_2
  L12_2 = L8_2.x
  L13_2 = L8_2.y
  L14_2 = L8_2.z
  L14_2 = L14_2 - 1.0
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = SetEntityHeading
  L12_2 = L10_2
  L13_2 = L9_2 + 180.0
  L11_2(L12_2, L13_2)
  L11_2 = FreezeEntityPosition
  L12_2 = L10_2
  L13_2 = true
  L11_2(L12_2, L13_2)
  L11_2 = CreateObject
  L12_2 = L4_2
  L13_2 = L6_2.x
  L14_2 = L6_2.y
  L15_2 = L6_2.z
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = NetworkCreateSynchronisedScene
  L13_2 = L8_2.x
  L14_2 = L8_2.y
  L15_2 = L8_2.z
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = L9_2
  L19_2 = 2
  L20_2 = false
  L21_2 = false
  L22_2 = 1065353216
  L23_2 = 0
  L24_2 = 1.3
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L13_2 = NetworkAddPedToSynchronisedScene
  L14_2 = L0_2
  L15_2 = L12_2
  L16_2 = L1_2
  L17_2 = L2_2
  L18_2 = 1.5
  L19_2 = -4.0
  L20_2 = 1
  L21_2 = 16
  L22_2 = 1148846080
  L23_2 = 0
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L13_2 = NetworkAddEntityToSynchronisedScene
  L14_2 = L11_2
  L15_2 = L12_2
  L16_2 = L1_2
  L17_2 = "bag_grab"
  L18_2 = 4.0
  L19_2 = -8.0
  L20_2 = 1
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = NetworkAddEntityToSynchronisedScene
  L14_2 = L10_2
  L15_2 = L12_2
  L16_2 = L1_2
  L17_2 = "cart_cash_dissapear"
  L18_2 = 4.0
  L19_2 = -8.0
  L20_2 = 1
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = NetworkStartSynchronisedScene
  L14_2 = L12_2
  L13_2(L14_2)
  L13_2 = Wait
  L14_2 = 37000
  L13_2(L14_2)
  L13_2 = DeleteEntity
  L14_2 = L11_2
  L13_2(L14_2)
  L13_2 = DeleteEntity
  L14_2 = L10_2
  L13_2(L14_2)
  L13_2 = RemoveAnimDict
  L14_2 = L1_2
  L13_2(L14_2)
  L13_2 = SetModelAsNoLongerNeeded
  L14_2 = L3_2
  L13_2(L14_2)
  L13_2 = SetModelAsNoLongerNeeded
  L14_2 = L4_2
  L13_2(L14_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "testcashgrab"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = "anim@scripted@heist@ig1_table_grab@cash@male@"
  L2_2 = "grab"
  L3_2 = "grab_cash"
  L4_2 = "bag"
  L5_2 = 1228147776
  L6_2 = L1_2
  L7_2 = HasAnimDictLoaded
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = RequestAnimDict
    L8_2 = L6_2
    L7_2(L8_2)
    while true do
      L7_2 = HasAnimDictLoaded
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 10
      L7_2(L8_2)
    end
  end
  L7_2 = RequestModel
  L8_2 = L5_2
  L7_2(L8_2)
  while true do
    L7_2 = HasModelLoaded
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = GetEntityCoords
  L8_2 = L0_2
  L7_2 = L7_2(L8_2)
  L8_2 = GetEntityForwardVector
  L9_2 = L0_2
  L8_2 = L8_2(L9_2)
  L9_2 = GetEntityHeading
  L10_2 = L0_2
  L9_2 = L9_2(L10_2)
  L10_2 = vector3
  L11_2 = L7_2.x
  L12_2 = L8_2.x
  L12_2 = L12_2 * 0.75
  L11_2 = L11_2 + L12_2
  L12_2 = L7_2.y
  L13_2 = L8_2.y
  L13_2 = L13_2 * 0.75
  L12_2 = L12_2 + L13_2
  L13_2 = L7_2.z
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = CreateObject
  L12_2 = L5_2
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L10_2.z
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = SetEntityHeading
  L13_2 = L11_2
  L14_2 = L9_2
  L12_2(L13_2, L14_2)
  L12_2 = FreezeEntityPosition
  L13_2 = L11_2
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = NetworkCreateSynchronisedScene
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L10_2.z
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = L9_2
  L19_2 = 2
  L20_2 = false
  L21_2 = false
  L22_2 = 1065353216
  L23_2 = 0
  L24_2 = 1.0
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L13_2 = NetworkAddPedToSynchronisedScene
  L14_2 = L0_2
  L15_2 = L12_2
  L16_2 = L1_2
  L17_2 = L2_2
  L18_2 = 8.0
  L19_2 = -8.0
  L20_2 = 1
  L21_2 = 16
  L22_2 = 1148846080
  L23_2 = 0
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L13_2 = NetworkAddEntityToSynchronisedScene
  L14_2 = L11_2
  L15_2 = L12_2
  L16_2 = L1_2
  L17_2 = L3_2
  L18_2 = 4.0
  L19_2 = -8.0
  L20_2 = 1
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = NetworkAddEntityToSynchronisedScene
  L14_2 = bag
  L15_2 = L12_2
  L16_2 = L1_2
  L17_2 = L4_2
  L18_2 = 4.0
  L19_2 = -8.0
  L20_2 = 1
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = NetworkStartSynchronisedScene
  L14_2 = L12_2
  L13_2(L14_2)
  L13_2 = Wait
  L14_2 = 13450
  L13_2(L14_2)
  L13_2 = DeleteEntity
  L14_2 = L11_2
  L13_2(L14_2)
  L13_2 = DeleteEntity
  L14_2 = bag
  L13_2(L14_2)
end
L6_1(L7_1, L8_1)
