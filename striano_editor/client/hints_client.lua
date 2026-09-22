local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1
L0_1 = 300
L1_1 = 2
L2_1 = 1.0
L3_1 = 120.0
L4_1 = {}
L4_1[38] = "~INPUT_CONTEXT~"
L4_1[51] = "~INPUT_CONTEXT~"
L4_1[24] = "~INPUT_ATTACK~"
L4_1[25] = "~INPUT_AIM~"
L4_1[21] = "~INPUT_SPRINT~"
L4_1[22] = "~INPUT_JUMP~"
L4_1[23] = "~INPUT_ENTER~"
L4_1[44] = "~INPUT_COVER~"
L4_1[45] = "~INPUT_RELOAD~"
L4_1[47] = "~INPUT_DETONATE~"
L4_1[33] = "~INPUT_MOVE_DOWN_ONLY~"
L4_1[14] = "~INPUT_WEAPON_WHEEL_NEXT~"
L4_1[15] = "~INPUT_WEAPON_WHEEL_PREV~"
L4_1[73] = "~INPUT_VEH_DUCK~"
L4_1[35] = "~INPUT_MOVE_RIGHT_ONLY~"
L4_1[74] = "~INPUT_VEH_HEADLIGHT~"
L4_1[73] = "~INPUT_VEH_DUCK~"
L5_1 = false
L6_1 = 0
L7_1 = "~INPUT_CONTEXT~ Interact"
L8_1 = nil
L9_1 = -1
L10_1 = nil
L11_1 = L2_1
L12_1 = L3_1
L13_1 = nil
L14_1 = 0
L15_1 = false
function L16_1()
  local L0_2, L1_2
  L0_2 = GetGameTimer
  return L0_2()
end
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = vector3
  L4_2 = A0_2 + 0.0
  L5_2 = A1_2 + 0.0
  L6_2 = A2_2 + 0.0
  return L3_2(L4_2, L5_2, L6_2)
end
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L8_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L8_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = L9_1
      if -1 ~= L0_2 then
        L0_2 = GetWorldPositionOfEntityBone
        L1_2 = L8_1
        L2_2 = L9_1
        L0_2 = L0_2(L1_2, L2_2)
        L1_2 = L17_1
        L2_2 = L0_2.x
        L3_2 = L0_2.y
        L4_2 = L0_2.z
        return L1_2(L2_2, L3_2, L4_2)
      else
        L0_2 = GetEntityCoords
        L1_2 = L8_1
        return L0_2(L1_2)
      end
    end
  end
  L0_2 = L10_1
  return L0_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = #A0_2
    if 0 ~= L1_2 then
      goto lbl_11
    end
  end
  L1_2 = L7_1
  do return L1_2 end
  ::lbl_11::
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.control
    if not L8_2 then
      L8_2 = -1
    end
    L9_2 = L4_1
    L8_2 = L9_2[L8_2]
    if not L8_2 then
      L8_2 = ""
    end
    L9_2 = L7_2.label
    if not L9_2 then
      L9_2 = ""
    end
    L10_2 = #L1_2
    L10_2 = L10_2 + 1
    if "" ~= L8_2 then
      L11_2 = L8_2
      L12_2 = " "
      L13_2 = L9_2
      L11_2 = L11_2 .. L12_2 .. L13_2
      if L11_2 then
        goto lbl_42
      end
    end
    L11_2 = L9_2
    ::lbl_42::
    L1_2[L10_2] = L11_2
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = L1_2
  L4_2 = "~n~"
  return L2_2(L3_2, L4_2)
end
function L20_1()
  local L0_2, L1_2
  L0_2 = L15_1
  if L0_2 then
    return
  end
  L0_2 = true
  L15_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = "hintHudFloat"
    while true do
      L1_3 = L5_1
      if not L1_3 then
        break
      end
      L1_3 = L18_1
      L1_3 = L1_3()
      if L1_3 then
        L2_3 = L17_1
        L3_3 = L1_3.x
        L4_3 = L1_3.y
        L5_3 = L1_3.z
        L6_3 = L11_1
        L5_3 = L5_3 + L6_3
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L3_3 = GetEntityCoords
        L4_3 = PlayerPedId
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L4_3()
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L4_3 = L3_3 - L2_3
        L4_3 = #L4_3
        L5_3 = L12_1
        if not L5_3 then
          L5_3 = L3_1
        end
        L5_3 = L4_3 <= L5_3
        L6_3 = IsSphereVisible
        L7_3 = L2_3.x
        L8_3 = L2_3.y
        L9_3 = L2_3.z
        L10_3 = 0.01
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
        if L5_3 and L6_3 then
          L13_1 = L2_3
          L7_3 = math
          L7_3 = L7_3.min
          L8_3 = L14_1
          L8_3 = L8_3 + 1
          L9_3 = L1_1
          L7_3 = L7_3(L8_3, L9_3)
          L14_1 = L7_3
        else
          L7_3 = 0
          L14_1 = L7_3
        end
      else
        L2_3 = 0
        L14_1 = L2_3
      end
      L2_3 = L13_1
      if L2_3 then
        L2_3 = L14_1
        L3_3 = L1_1
        if L2_3 >= L3_3 then
          L2_3 = L16_1
          L2_3 = L2_3()
          L3_3 = L6_1
          L2_3 = L2_3 - L3_3
          L3_3 = L0_1
          if L2_3 > L3_3 then
            L2_3 = IsNuiFocused
            L2_3 = L2_3()
            if not L2_3 then
              L2_3 = exports
              L2_3 = L2_3.striano_editor
              L3_3 = L2_3
              L2_3 = L2_3.intattooedit
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = exports
                L2_3 = L2_3.skinchanger
                L3_3 = L2_3
                L2_3 = L2_3.menuaperto
                L2_3 = L2_3(L3_3)
                if not L2_3 then
                  L2_3 = ShowHudComponentThisFrame
                  L3_3 = 10
                  L2_3(L3_3)
                  L2_3 = AddTextEntry
                  L3_3 = L0_3
                  L4_3 = L7_1
                  L2_3(L3_3, L4_3)
                  L2_3 = SetFloatingHelpTextWorldPosition
                  L3_3 = 1
                  L4_3 = L13_1.x
                  L5_3 = L13_1.y
                  L6_3 = L13_1.z
                  L2_3(L3_3, L4_3, L5_3, L6_3)
                  L2_3 = SetFloatingHelpTextStyle
                  L3_3 = 1
                  L4_3 = 1
                  L5_3 = 2
                  L6_3 = -1
                  L7_3 = 3
                  L8_3 = 0
                  L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
                  L2_3 = BeginTextCommandDisplayHelp
                  L3_3 = L0_3
                  L2_3(L3_3)
                  L2_3 = EndTextCommandDisplayHelp
                  L3_3 = 2
                  L4_3 = false
                  L5_3 = false
                  L6_3 = -1
                  L2_3(L3_3, L4_3, L5_3, L6_3)
                end
              end
            end
          end
        end
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
    end
    L1_3 = false
    L15_1 = L1_3
  end
  L0_2(L1_2)
end
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L1_2 = L8_1
    if not L1_2 then
      L1_2 = L10_1
      if not L1_2 then
        L1_2 = PlayerPedId
        L1_2 = L1_2()
        L2_2 = GetEntityBoneIndexByName
        L3_2 = L1_2
        L4_2 = "SKEL_Head"
        L2_2 = L2_2(L3_2, L4_2)
        if -1 ~= L2_2 then
          L3_2 = GetWorldPositionOfEntityBone
          L4_2 = L1_2
          L5_2 = L2_2
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            goto lbl_26
          end
        end
        L3_2 = GetEntityCoords
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        ::lbl_26::
        L4_2 = L17_1
        L5_2 = L3_2.x
        L6_2 = L3_2.y
        L7_2 = L3_2.z
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L10_1 = L4_2
        L4_2 = L2_1
        L11_1 = L4_2
      end
    end
    L1_2 = true
    L5_1 = L1_2
    L1_2 = L16_1
    L1_2 = L1_2()
    L6_1 = L1_2
    L1_2 = 0
    L2_2 = nil
    L13_1 = L2_2
    L14_1 = L1_2
    L1_2 = L20_1
    L1_2()
  else
    L1_2 = false
    L5_1 = L1_2
    L1_2 = 0
    L2_2 = nil
    L13_1 = L2_2
    L14_1 = L1_2
  end
end
HintHud_SetVisible = L21_1
L21_1 = exports
L22_1 = "HintHud_SetVisible"
L23_1 = HintHud_SetVisible
L21_1(L22_1, L23_1)
L21_1 = exports
L22_1 = "poshint"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = AddTextEntry
  L3_2 = "esxFloatingHelpNotification"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = SetFloatingHelpTextWorldPosition
  L3_2 = 1
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = SetFloatingHelpTextStyle
  L3_2 = 1
  L4_2 = 1
  L5_2 = 2
  L6_2 = -1
  L7_2 = 3
  L8_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = BeginTextCommandDisplayHelp
  L3_2 = "esxFloatingHelpNotification"
  L2_2(L3_2)
  L2_2 = EndTextCommandDisplayHelp
  L3_2 = 2
  L4_2 = false
  L5_2 = false
  L6_2 = -1
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L21_1(L22_1, L23_1)
function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  if A0_2 then
    L6_2 = DoesEntityExist
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_11
    end
  end
  L6_2 = error
  L7_2 = "HintHud_AttachToEntity: entity non valida"
  L6_2(L7_2)
  ::lbl_11::
  L8_1 = A0_2
  L6_2 = type
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if "string" == L6_2 then
    L6_2 = GetEntityBoneIndexByName
    L7_2 = A0_2
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2 or L7_2
    if -1 == L6_2 or not L6_2 then
      L7_2 = -1
    end
    L9_1 = L7_2
  else
    L6_2 = type
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if "number" == L6_2 then
      L9_1 = A1_2
    else
      L6_2 = -1
      L9_1 = L6_2
    end
  end
  L6_2 = nil
  L10_1 = L6_2
  if nil ~= A5_2 then
    L11_1 = A5_2
  end
  L6_2 = L5_1
  if L6_2 then
    L6_2 = 0
    L7_2 = nil
    L13_1 = L7_2
    L14_1 = L6_2
  end
end
HintHud_AttachToEntity = L21_1
L21_1 = exports
L22_1 = "HintHud_AttachToEntity"
L23_1 = HintHud_AttachToEntity
L21_1(L22_1, L23_1)
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = L17_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L10_1 = L4_2
  L4_2 = nil
  L5_2 = -1
  L9_1 = L5_2
  L8_1 = L4_2
  if nil ~= A3_2 then
    L11_1 = A3_2
  end
  L4_2 = L5_1
  if L4_2 then
    L4_2 = 0
    L5_2 = nil
    L13_1 = L5_2
    L14_1 = L4_2
  end
end
HintHud_SetPosition = L21_1
L21_1 = exports
L22_1 = "HintHud_SetPosition"
L23_1 = HintHud_SetPosition
L21_1(L22_1, L23_1)
function L21_1()
  local L0_2, L1_2
  L0_2 = nil
  L1_2 = -1
  L9_1 = L1_2
  L8_1 = L0_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = 0
    L1_2 = nil
    L13_1 = L1_2
    L14_1 = L0_2
  end
end
HintHud_ClearAnchor = L21_1
L21_1 = exports
L22_1 = "HintHud_ClearAnchor"
L23_1 = HintHud_ClearAnchor
L21_1(L22_1, L23_1)
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = L19_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
end
HintHud_RefreshButtons = L21_1
L21_1 = exports
L22_1 = "HintHud_RefreshButtons"
L23_1 = HintHud_RefreshButtons
L21_1(L22_1, L23_1)
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 5.0
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L3_1
  end
  L1_2 = L1_2(L2_2, L3_2)
  L12_1 = L1_2
end
HintHud_SetMaxDistance = L21_1
L21_1 = exports
L22_1 = "HintHud_SetMaxDistance"
L23_1 = HintHud_SetMaxDistance
L21_1(L22_1, L23_1)
function L21_1(A0_2)
  local L1_2
end
HintHud_SetUserScale = L21_1
L21_1 = exports
L22_1 = "HintHud_SetUserScale"
L23_1 = HintHud_SetUserScale
L21_1(L22_1, L23_1)
function L21_1()
  local L0_2, L1_2
  L0_2 = L5_1
  L0_2 = true == L0_2
  return L0_2
end
HintHud_IsActive = L21_1
L21_1 = exports
L22_1 = "HintHud_IsActive"
L23_1 = HintHud_IsActive
L21_1(L22_1, L23_1)
