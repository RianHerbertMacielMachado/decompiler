local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 3.0
  L3_2 = GetClosestVehicle
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2
  L8_2 = 0
  L9_2 = 70
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if nil == L3_2 or 0 == L3_2 then
    L4_2 = GetClosestVehicle
    L5_2 = L1_2.x
    L6_2 = L1_2.y
    L7_2 = L1_2.z
    L8_2 = L2_2
    L9_2 = 0
    L10_2 = 12294
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L4_2
  end
  if nil == L3_2 or 0 == L3_2 then
    L4_2 = GetOffsetFromEntityInWorldCoords
    L5_2 = L0_2
    L6_2 = 0.0
    L7_2 = L2_2
    L8_2 = 0.0
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = CastRayPointToPoint
    L6_2 = L1_2.x
    L7_2 = L1_2.y
    L8_2 = L1_2.z
    L9_2 = L4_2.x
    L10_2 = L4_2.y
    L11_2 = L4_2.z
    L12_2 = 30
    L13_2 = L0_2
    L14_2 = 0
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = GetRaycastResult
    L7_2 = L5_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L3_2 = L10_2
  end
  if 0 ~= L3_2 and nil ~= L3_2 then
    return L3_2
  end
  L4_2 = 0
  return L4_2
end
L1_1 = 0
L2_1 = {}
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L1_1
  L4_2 = L4_2 + 1
  L1_1 = L4_2
  L5_2 = L1_1
  L4_2 = L2_1
  L4_2[L5_2] = A2_2
  L4_2 = TriggerServerEvent
  L5_2 = "inv3d:tryConsumeItem"
  L6_2 = L1_1
  L7_2 = A3_2 or L7_2
  if not A3_2 then
    L7_2 = "player"
  end
  L8_2 = A0_2
  L9_2 = A1_2 or L9_2
  if not A1_2 then
    L9_2 = 1
  end
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L4_1 = RegisterNetEvent
L5_1 = "inv3d:tryConsumeItemResult"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L2_1
    L4_2[A0_2] = nil
    L4_2 = L3_2
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = false
L5_1 = 0
L6_1 = RegisterCommand
L7_1 = "washcar"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L4_1
  if L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2()
  if 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_28
    end
  end
  L3_2 = ExecuteCommand
  L4_2 = "e shrug5"
  L3_2(L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.testo3d
  L5_2 = "No vehicle."
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_28::
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2 - L3_2
  L4_2 = #L4_2
  if L4_2 > 3.0 then
    L5_2 = ExecuteCommand
    L6_2 = "e shrug5"
    L5_2(L6_2)
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.submex
    L7_2 = "Too distance."
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = GetIsVehicleEngineRunning
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.submex
    L7_2 = "Turn off the vehicle."
    L5_2(L6_2, L7_2)
    L5_2 = ExecuteCommand
    L6_2 = "e shrug4"
    L5_2(L6_2)
    return
  end
  L5_2 = L3_1
  L6_2 = "saponeauto"
  L7_2 = 1
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submex
      L3_3 = "No car soap."
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "e shrug4"
      L1_3(L2_3)
      return
    end
    while true do
      L1_3 = NetworkHasControlOfEntity
      L2_3 = L2_2
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = DoesEntityExist
      L2_3 = L2_2
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = NetworkRequestControlOfEntity
      L2_3 = L2_2
      L1_3(L2_3)
    end
    L1_3 = true
    L4_1 = L1_3
    L1_3 = makeEntityFaceEntity
    L2_3 = L0_2
    L3_3 = L2_2
    L1_3(L2_3, L3_3)
    L1_3 = ExecuteCommand
    L2_3 = "e clean2"
    L1_3(L2_3)
    L1_3 = Wait
    L2_3 = 1000
    L1_3(L2_3)
    L1_3 = IsEntityPlayingAnim
    L2_3 = L0_2
    L3_3 = "amb@world_human_maid_clean@"
    L4_3 = "base"
    L5_3 = 3
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.testo3d
      L3_3 = "Washing."
      L1_3(L2_3, L3_3)
    end
    while true do
      L1_3 = IsEntityPlayingAnim
      L2_3 = L0_2
      L3_3 = "amb@world_human_maid_clean@"
      L4_3 = "base"
      L5_3 = 3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        break
      end
      L1_3 = L5_1
      if not (L1_3 < 15) then
        break
      end
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
      L1_3 = GetEntityCoords
      L2_3 = L0_2
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityCoords
      L3_3 = L2_2
      L2_3 = L2_3(L3_3)
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 < 5.0 then
        L1_3 = L5_1
        L1_3 = L1_3 + 1
        L5_1 = L1_3
        L1_3 = GetVehicleDirtLevel
        L2_3 = L2_2
        L1_3 = L1_3(L2_3)
        L2_3 = SetVehicleDirtLevel
        L3_3 = L2_2
        L4_3 = L1_3 - 1.0
        L2_3(L3_3, L4_3)
      else
        break
      end
    end
    L1_3 = 0
    L5_1 = L1_3
    L1_3 = ExecuteCommand
    L2_3 = "e puliscimani"
    L1_3(L2_3)
    L1_3 = false
    L4_1 = L1_3
  end
  L9_2 = "player"
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L6_1(L7_1, L8_1)
