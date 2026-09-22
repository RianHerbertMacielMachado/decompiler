local L0_1, L1_1, L2_1
tiempo = 1000
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = World3dToScreen2d
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2 - 0.5
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L7_2 = SetTextScale
    L8_2 = 0.9
    L9_2 = 0.0
    L7_2(L8_2, L9_2)
    L7_2 = SetTextFont
    L8_2 = 6
    L7_2(L8_2)
    L7_2 = SetTextProportional
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = SetTextColour
    L8_2 = 255
    L9_2 = 255
    L10_2 = 255
    L11_2 = 150
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetTextEntry
    L8_2 = "STRING"
    L7_2(L8_2)
    L7_2 = SetTextCentre
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = SetTextOutline
    L7_2()
    L7_2 = AddTextComponentString
    L8_2 = A3_2
    L7_2(L8_2)
    L7_2 = DrawText
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  while true do
    L0_2 = Wait
    L1_2 = tiempo
    L0_2(L1_2)
    tiempo = 1000
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = GetClosestVehicle
    L3_2 = L1_2
    L4_2 = 5.0
    L5_2 = 0
    L6_2 = 71
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = IsEntityAVehicle
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = IsPedAPlayer
        L4_2 = GetPedInVehicleSeat
        L5_2 = L2_2
        L6_2 = -1
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2(L5_2, L6_2)
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        if L3_2 then
          goto lbl_55
        end
      end
    end
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = IsEntityAVehicle
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = GetPedInVehicleSeat
        L4_2 = L2_2
        L5_2 = -1
        L3_2 = L3_2(L4_2, L5_2)
        if 0 == L3_2 then
          L3_2 = GetVehicleDoorLockStatus
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          ::lbl_55::
          if 2 ~= L3_2 then
            tiempo = 7
            L3_2 = GetWorldPositionOfEntityBone
            L4_2 = L2_2
            L5_2 = GetEntityBoneIndexByName
            L6_2 = L2_2
            L7_2 = "window_lr"
            L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2, L7_2)
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L4_2 = GetWorldPositionOfEntityBone
            L5_2 = L2_2
            L6_2 = GetEntityBoneIndexByName
            L7_2 = L2_2
            L8_2 = "window_rr"
            L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2, L8_2)
            L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L5_2 = GetWorldPositionOfEntityBone
            L6_2 = L2_2
            L7_2 = GetEntityBoneIndexByName
            L8_2 = L2_2
            L9_2 = "window_rf"
            L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2, L9_2)
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L6_2 = GetEntityCoords
            L7_2 = L0_2
            L8_2 = 1
            L6_2 = L6_2(L7_2, L8_2)
            L7_2 = L4_2 - L6_2
            L7_2 = #L7_2
            L8_2 = L3_2 - L6_2
            L8_2 = #L8_2
            L9_2 = L5_2 - L6_2
            L9_2 = #L9_2
            L10_2 = 0.8
            if L7_2 < L10_2 then
              L10_2 = DoesVehicleHaveDoor
              L11_2 = L2_2
              L12_2 = 3
              L10_2 = L10_2(L11_2, L12_2)
              if L10_2 then
                L10_2 = DoesEntityExist
                L11_2 = GetPedInVehicleSeat
                L12_2 = L2_2
                L13_2 = 2
                L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2)
                L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                if not L10_2 then
                  L10_2 = GetVehicleDoorLockStatus
                  L11_2 = L2_2
                  L10_2 = L10_2(L11_2)
                  if 2 ~= L10_2 then
                    L10_2 = L0_1
                    L11_2 = L4_2.x
                    L12_2 = L4_2.y
                    L13_2 = L4_2.z
                    L13_2 = L13_2 + 0.3
                    L14_2 = "."
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                    L10_2 = IsControlJustPressed
                    L11_2 = 1
                    L12_2 = 49
                    L10_2 = L10_2(L11_2, L12_2)
                    if L10_2 then
                      L10_2 = TaskEnterVehicle
                      L11_2 = L0_2
                      L12_2 = L2_2
                      L13_2 = 10000
                      L14_2 = 2
                      L15_2 = 1.0
                      L16_2 = 1
                      L17_2 = 0
                      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                    end
                end
              end
            end
            else
              L10_2 = 0.62
              if L8_2 < L10_2 then
                L10_2 = DoesVehicleHaveDoor
                L11_2 = L2_2
                L12_2 = 2
                L10_2 = L10_2(L11_2, L12_2)
                if L10_2 then
                  L10_2 = DoesEntityExist
                  L11_2 = GetPedInVehicleSeat
                  L12_2 = L2_2
                  L13_2 = 1
                  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2)
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                  if not L10_2 then
                    L10_2 = GetVehicleDoorLockStatus
                    L11_2 = L2_2
                    L10_2 = L10_2(L11_2)
                    if 2 ~= L10_2 then
                      L10_2 = L0_1
                      L11_2 = L3_2.x
                      L12_2 = L3_2.y
                      L13_2 = L3_2.z
                      L13_2 = L13_2 + 0.3
                      L14_2 = "."
                      L10_2(L11_2, L12_2, L13_2, L14_2)
                      L10_2 = IsControlJustPressed
                      L11_2 = 1
                      L12_2 = 49
                      L10_2 = L10_2(L11_2, L12_2)
                      if L10_2 then
                        L10_2 = TaskEnterVehicle
                        L11_2 = L0_2
                        L12_2 = L2_2
                        L13_2 = 10000
                        L14_2 = 1
                        L15_2 = 1.0
                        L16_2 = 1
                        L17_2 = 0
                        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                      end
                  end
                end
              end
              else
                L10_2 = 0.8
                if L9_2 < L10_2 then
                  L10_2 = DoesVehicleHaveDoor
                  L11_2 = L2_2
                  L12_2 = 1
                  L10_2 = L10_2(L11_2, L12_2)
                  if L10_2 then
                    L10_2 = DoesEntityExist
                    L11_2 = GetPedInVehicleSeat
                    L12_2 = L2_2
                    L13_2 = 0
                    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2)
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                    if not L10_2 then
                      L10_2 = GetVehicleDoorLockStatus
                      L11_2 = L2_2
                      L10_2 = L10_2(L11_2)
                      if 2 ~= L10_2 then
                        L10_2 = L0_1
                        L11_2 = L5_2.x
                        L12_2 = L5_2.y
                        L13_2 = L5_2.z
                        L13_2 = L13_2 + 0.3
                        L14_2 = "."
                        L10_2(L11_2, L12_2, L13_2, L14_2)
                        L10_2 = IsControlJustPressed
                        L11_2 = 1
                        L12_2 = 49
                        L10_2 = L10_2(L11_2, L12_2)
                        if L10_2 then
                          L10_2 = TaskEnterVehicle
                          L11_2 = L0_2
                          L12_2 = L2_2
                          L13_2 = 10000
                          L14_2 = 0
                          L15_2 = 1.0
                          L16_2 = 1
                          L17_2 = 0
                          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                        end
                    end
                  end
                end
                else
                  L10_2 = Wait
                  L11_2 = 1000
                  L10_2(L11_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L1_1(L2_1)
