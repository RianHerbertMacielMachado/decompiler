local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = 57
L0_1[1] = L1_1
L1_1 = false
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = 0
  L1_2 = 1
  L2_2 = L0_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = IsControlReleased
    L6_2 = 0
    L7_2 = L0_1
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = isDead
      if not L5_2 then
        L0_2 = L0_2 + 1
      end
    end
  end
  L1_2 = L0_1
  L1_2 = #L1_2
  if L0_2 == L1_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
areExemptKeysReleased = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = IsPedInAnyVehicle
  L2_2 = player
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
  else
    L1_2 = getVehicleInFront
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if 0 ~= L1_2 then
      L2_2 = GetEntityHeading
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetEntityHeading
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = getAngleBetweenForwardVectors
      L5_2 = GetEntityForwardVector
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      L6_2 = GetEntityForwardVector
      L7_2 = L1_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L5_2 = normalizeAngle
      L6_2 = L3_2 + L4_2
      L5_2 = L5_2(L6_2)
      L6_2 = normalizeAngle
      L7_2 = L3_2 - L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = GetVehicleModelNumberOfSeats
      L8_2 = GetEntityModel
      L9_2 = L1_2
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L8_2 = roundFloat
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L9_2 = roundFloat
      L10_2 = L2_2
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        if L7_2 > 2 then
          L8_2 = IsVehicleSeatFree
          L9_2 = L1_2
          L10_2 = 1
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            L8_2 = TaskEnterVehicle
            L9_2 = A0_2
            L10_2 = L1_2
            L11_2 = -1
            L12_2 = 1
            L13_2 = 1.0
            L14_2 = 1
            L15_2 = 0
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          end
        end
      else
        L8_2 = roundFloat
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L9_2 = roundFloat
        L10_2 = L2_2
        L9_2 = L9_2(L10_2)
        if L8_2 == L9_2 and L7_2 > 2 then
          L8_2 = IsVehicleSeatFree
          L9_2 = L1_2
          L10_2 = 2
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            L8_2 = TaskEnterVehicle
            L9_2 = A0_2
            L10_2 = L1_2
            L11_2 = -1
            L12_2 = 2
            L13_2 = 1.0
            L14_2 = 1
            L15_2 = 0
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          end
        end
      end
    end
  end
end
enterRearSeat = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = math
  L2_2 = L2_2.deg
  L3_2 = math
  L3_2 = L3_2.acos
  L4_2 = getDotProduct
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = getMagnitude
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = getMagnitude
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 / L5_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
getAngleBetweenForwardVectors = L2_1
function L2_1(A0_2, A1_2)
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
getDotProduct = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.sqrt
  L2_2 = A0_2.x
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A0_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A0_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  return L1_2(L2_2)
end
getMagnitude = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetVehicleModelNumberOfSeats
  L3_2 = GetEntityModel
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = -1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetPedInVehicleSeat
    L8_2 = A1_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L3_2 = -2
  return L3_2
end
getPedSeat = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = A0_2
  L4_2 = 0.0
  L5_2 = 7.0
  L6_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = StartShapeTestRay
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = 2
  L11_2 = A0_2
  L12_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetShapeTestResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  return L8_2
end
getVehicleInFront = L2_1
function L2_1(A0_2)
  local L1_2
  while A0_2 < 0 do
    A0_2 = A0_2 + 360
  end
  while true do
    L1_2 = 360
    if not (A0_2 > L1_2) then
      break
    end
    A0_2 = A0_2 - 360
  end
  return A0_2
end
normalizeAngle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%."
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 0
  end
  L6_2 = "f"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
roundFloat = L2_1
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 184
    L4_2 = 1
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L1_2 = SetPedConfigFlag
      L2_2 = L0_2
      L3_2 = 184
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
    L1_2 = IsPedInAnyVehicle
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = GetVehiclePedIsIn
      L2_2 = L0_2
      L3_2 = 0
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = areExemptKeysReleased
      L2_2 = L2_2()
      if not L2_2 then
        L2_2 = GetPedConfigFlag
        L3_2 = L0_2
        L4_2 = 184
        L5_2 = 1
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        if L2_2 then
          L2_2 = SetPedConfigFlag
          L3_2 = L0_2
          L4_2 = 184
          L5_2 = false
          L2_2(L3_2, L4_2, L5_2)
        end
        L2_2 = L1_1
        if not L2_2 then
          L2_2 = getPedSeat
          L3_2 = L0_2
          L4_2 = L1_2
          L2_2 = L2_2(L3_2, L4_2)
          L3_2 = nil
          L4_2 = L2_2 % 2
          if 1 == L4_2 then
            L3_2 = L2_2 + 1
          else
            L3_2 = L2_2 - 1
          end
          if 0 ~= L2_2 then
            L4_2 = GetVehicleModelNumberOfSeats
            L5_2 = GetEntityModel
            L6_2 = L1_2
            L5_2, L6_2 = L5_2(L6_2)
            L4_2 = L4_2(L5_2, L6_2)
            L5_2 = L3_2 + 2
            if L4_2 >= L5_2 then
              L4_2 = IsVehicleSeatFree
              L5_2 = L1_2
              L6_2 = L3_2
              L4_2 = L4_2(L5_2, L6_2)
              if L4_2 then
                L4_2 = GetEntitySpeed
                L5_2 = ped
                L4_2 = L4_2(L5_2)
                if L4_2 < 1.0 then
                  L4_2 = IsControlPressed
                  L5_2 = 0
                  L6_2 = 21
                  L4_2 = L4_2(L5_2, L6_2)
                  if L4_2 then
                    L4_2 = TaskShuffleToNextVehicleSeat
                    L5_2 = L0_2
                    L6_2 = L1_2
                    L4_2(L5_2, L6_2)
                  end
                end
              end
            end
          end
        end
      end
      L2_2 = GetIsTaskActive
      L3_2 = L0_2
      L4_2 = 165
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = true
        L1_1 = L2_2
        L2_2 = GetSeatPedIsTryingToEnter
        L3_2 = L0_2
        L2_2 = L2_2(L3_2)
        if -1 == L2_2 then
          L2_2 = GetPedConfigFlag
          L3_2 = L0_2
          L4_2 = 184
          L5_2 = 1
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          if L2_2 then
            L2_2 = SetPedIntoVehicle
            L3_2 = L0_2
            L4_2 = L1_2
            L5_2 = 0
            L2_2(L3_2, L4_2, L5_2)
            L2_2 = SetVehicleCloseDoorDeferedAction
            L3_2 = L1_2
            L4_2 = 0
            L2_2(L3_2, L4_2)
          end
        end
      else
        L2_2 = false
        L1_1 = L2_2
      end
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = IsPedSittingInAnyVehicle
    L2_2 = ped
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
  end
end
L2_1(L3_1)
