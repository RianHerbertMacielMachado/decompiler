local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "_teleport:setCoords"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "_teleport:setCoords"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = false
  L2_2 = IsEntityPositionFrozen
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L1_2 = true
  end
  L2_2 = FreezeEntityPosition
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedCoordsKeepVehicle
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L6_2 = L6_2 - 1.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = RequestCollisionAtCoord
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L2_2(L3_2, L4_2, L5_2)
  while true do
    L2_2 = HasCollisionLoadedAroundEntity
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      break
    end
    L2_2 = RequestCollisionAtCoord
    L3_2 = A0_2.x
    L4_2 = A0_2.y
    L5_2 = A0_2.z
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Wait
    L3_2 = 1
    L2_2(L3_2)
  end
  L2_2 = Wait
  L3_2 = 1000
  L2_2(L3_2)
  L2_2 = SetPedCoordsKeepVehicle
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L6_2 = L6_2 - 1.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L1_2 then
    L2_2 = FreezeEntityPosition
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
