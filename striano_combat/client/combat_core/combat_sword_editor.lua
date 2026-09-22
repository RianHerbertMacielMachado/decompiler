local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = nil
L1_1 = 0.0
L2_1 = 0.0
L3_1 = 0.0
L4_1 = 0.0
L5_1 = 0.0
L6_1 = 0.0
L7_1 = {}
L8_1 = vector3
L9_1 = 0.0
L10_1 = 0.0
L11_1 = 0.0
L8_1 = L8_1(L9_1, L10_1, L11_1)
L7_1.pos = L8_1
L8_1 = {}
L9_1 = vector3
L10_1 = 0.0
L11_1 = 0.0
L12_1 = 0.0
L9_1 = L9_1(L10_1, L11_1, L12_1)
L8_1.pos = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L8_2 = L0_1
  if nil ~= L8_2 then
    L8_2 = DeleteEntity
    L9_2 = L0_1
    L8_2(L9_2)
    L8_2 = nil
    L0_1 = L8_2
  end
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = RequestModelStriano
  L13_2 = A0_2
  L12_2(L13_2)
  L12_2 = CreateObject
  L13_2 = GetHashKey
  L14_2 = A0_2
  L13_2 = L13_2(L14_2)
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = L11_2 + 0.2
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  prop = L12_2
  L12_2 = AttachEntityToEntity
  L13_2 = prop
  L14_2 = L8_2
  L15_2 = GetPedBoneIndex
  L16_2 = L8_2
  L17_2 = A1_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = true
  L26_2 = 1
  L27_2 = true
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = prop
  L0_1 = L12_2
  L12_2 = SetModelAsNoLongerNeeded
  L13_2 = A0_2
  L12_2(L13_2)
end
AddPropToPlayerFF = L9_1
L9_1 = RegisterCommand
L10_1 = "swordeditor"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = A1_2[2]
    if nil ~= L2_2 then
      goto lbl_31
    end
  end
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.testo3d
  L4_2 = "insert model and bone~n~bone-list in f8."
  L2_2(L3_2, L4_2)
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Zoom_Left"
  L5_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = print
  L3_2 = "On Back bone (posata1 & posata2 [if double]): 24818"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "On Hand-attack bone (att): 57005"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "On Hand-attack bone (att): 18905 -> the secondary for double weapons!"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "After you get the correct position by using [SHIFT/SPACE/ARROWKEYS] press [H] to copy the offset!"
  L2_2(L3_2)
  do return end
  ::lbl_31::
  L2_2 = faiAnim
  L3_2 = "anim@weapons@heavy@space_cannon"
  L4_2 = "wall_block"
  L5_2 = -1
  L6_2 = 49
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = StartSwordEditor
  L3_2 = A1_2[1]
  L4_2 = tonumber
  L5_2 = A1_2[2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L7_1.pos
  L2_2 = L2_2.x
  L1_1 = L2_2
  L2_2 = L7_1.pos
  L2_2 = L2_2.y
  L2_1 = L2_2
  L2_2 = L7_1.pos
  L2_2 = L2_2.z
  L3_1 = L2_2
  L2_2 = L8_1.pos
  L2_2 = L2_2.x
  L4_1 = L2_2
  L2_2 = L8_1.pos
  L2_2 = L2_2.y
  L5_1 = L2_2
  L2_2 = L8_1.pos
  L2_2 = L2_2.z
  L6_1 = L2_2
  L2_2 = AddPropToPlayerFF
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = L1_1
  L6_2 = L2_1
  L7_2 = L3_1
  L8_2 = L4_1
  L9_2 = L5_1
  L10_2 = L6_1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.testo3d
  L4_2 = "editor start: ~h~"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = Wait
  L3_2 = 25
  L2_2(L3_2)
  L2_2 = UpdateEditorAtt
  L3_2 = A1_2
  L2_2(L3_2)
end
StartSwordEditor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    while true do
      L0_3 = L0_1
      if nil == L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = L0_1
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L0_1
      L1_3 = 0.003
      L2_3 = 0.1
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 172
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 172
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_49
              end
            end
            L3_3 = L3_1
            L3_3 = L3_3 + L1_3
            L3_1 = L3_3
            ::lbl_49::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 173
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 173
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_65
              end
            end
            L3_3 = L3_1
            L3_3 = L3_3 - L1_3
            L3_1 = L3_3
            ::lbl_65::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 174
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 174
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_81
              end
            end
            L3_3 = L6_1
            L3_3 = L3_3 + L2_3
            L6_1 = L3_3
            ::lbl_81::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 175
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 175
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_97
              end
            end
            L3_3 = L6_1
            L3_3 = L3_3 - L2_3
            L6_1 = L3_3
          end
        end
      end
      ::lbl_97::
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 174
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 174
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_131
              end
            end
            L3_3 = L1_1
            L3_3 = L3_3 + L1_3
            L1_1 = L3_3
            ::lbl_131::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 175
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 175
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_147
              end
            end
            L3_3 = L1_1
            L3_3 = L3_3 - L1_3
            L1_1 = L3_3
            ::lbl_147::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 172
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 172
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_163
              end
            end
            L3_3 = L2_1
            L3_3 = L3_3 + L1_3
            L2_1 = L3_3
            ::lbl_163::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 173
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 173
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_179
              end
            end
            L3_3 = L2_1
            L3_3 = L3_3 - L1_3
            L2_1 = L3_3
          end
        end
      end
      ::lbl_179::
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_261
          end
        end
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 174
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 174
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_213
          end
        end
        L3_3 = L4_1
        L3_3 = L3_3 + L2_3
        L4_1 = L3_3
        ::lbl_213::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 175
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 175
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_229
          end
        end
        L3_3 = L4_1
        L3_3 = L3_3 - L2_3
        L4_1 = L3_3
        ::lbl_229::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 172
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 172
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_245
          end
        end
        L3_3 = L5_1
        L3_3 = L3_3 + L2_3
        L5_1 = L3_3
        ::lbl_245::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 173
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 173
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_261
          end
        end
        L3_3 = L5_1
        L3_3 = L3_3 - L2_3
        L5_1 = L3_3
      end
      ::lbl_261::
      L3_3 = AttachEntityToEntity
      L4_3 = L0_1
      L5_3 = L1_2
      L6_3 = GetPedBoneIndex
      L7_3 = L1_2
      L8_3 = A0_2
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = L1_1
      L8_3 = L2_1
      L9_3 = L3_1
      L10_3 = L4_1
      L11_3 = L5_1
      L12_3 = L6_1
      L13_3 = true
      L14_3 = true
      L15_3 = false
      L16_3 = true
      L17_3 = 1
      L18_3 = true
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L3_3 = IsControlJustPressed
      L4_3 = 0
      L5_3 = 74
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 74
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          goto lbl_411
        end
      end
      L3_3 = PlaySoundFrontend
      L4_3 = -1
      L5_3 = "5_Second_Timer"
      L6_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
      L7_3 = 0
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = print
      L4_3 = "OFFSET TO COPY: "
      L5_3 = L1_1
      L6_3 = ","
      L7_3 = L2_1
      L8_3 = ","
      L9_3 = L3_1
      L10_3 = ","
      L11_3 = L4_1
      L12_3 = ","
      L13_3 = L5_1
      L14_3 = ","
      L15_3 = L6_1
      L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
      L3_3(L4_3)
      L3_3 = exports
      L3_3 = L3_3.striano_combat
      L4_3 = L3_3
      L3_3 = L3_3.testo3d
      L5_3 = "offset get in f8"
      L3_3(L4_3, L5_3)
      L3_3 = GetResourceState
      L4_3 = "striano_core"
      L3_3 = L3_3(L4_3)
      if "started" == L3_3 then
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L1_1
        L3_3 = L3_3(L4_3)
        L4_3 = 0.001
        if L3_3 < L4_3 then
          L3_3 = 0.0
          if L3_3 then
            goto lbl_335
          end
        end
        L3_3 = L1_1
        ::lbl_335::
        L1_1 = L3_3
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L2_1
        L3_3 = L3_3(L4_3)
        L4_3 = 0.001
        if L3_3 < L4_3 then
          L3_3 = 0.0
          if L3_3 then
            goto lbl_347
          end
        end
        L3_3 = L2_1
        ::lbl_347::
        L2_1 = L3_3
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L3_1
        L3_3 = L3_3(L4_3)
        L4_3 = 0.001
        if L3_3 < L4_3 then
          L3_3 = 0.0
          if L3_3 then
            goto lbl_359
          end
        end
        L3_3 = L3_1
        ::lbl_359::
        L3_1 = L3_3
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L4_1
        L3_3 = L3_3(L4_3)
        L4_3 = 0.001
        if L3_3 < L4_3 then
          L3_3 = 0.0
          if L3_3 then
            goto lbl_371
          end
        end
        L3_3 = L4_1
        ::lbl_371::
        L4_1 = L3_3
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L5_1
        L3_3 = L3_3(L4_3)
        L4_3 = 0.001
        if L3_3 < L4_3 then
          L3_3 = 0.0
          if L3_3 then
            goto lbl_383
          end
        end
        L3_3 = L5_1
        ::lbl_383::
        L5_1 = L3_3
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L6_1
        L3_3 = L3_3(L4_3)
        L4_3 = 0.001
        if L3_3 < L4_3 then
          L3_3 = 0.0
          if L3_3 then
            goto lbl_395
          end
        end
        L3_3 = L6_1
        ::lbl_395::
        L6_1 = L3_3
        L3_3 = ExecuteCommand
        L4_3 = "copia "
        L5_3 = L1_1
        L6_3 = ","
        L7_3 = L2_1
        L8_3 = ","
        L9_3 = L3_1
        L10_3 = ","
        L11_3 = L4_1
        L12_3 = ","
        L13_3 = L5_1
        L14_3 = ","
        L15_3 = L6_1
        L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
        L3_3(L4_3)
      end
      ::lbl_411::
      L3_3 = IsControlJustPressed
      L4_3 = 0
      L5_3 = 177
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 177
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsControlJustPressed
          L4_3 = 0
          L5_3 = 200
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsDisabledControlJustPressed
            L4_3 = 0
            L5_3 = 200
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsControlJustPressed
              L4_3 = 0
              L5_3 = 199
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                L3_3 = IsDisabledControlJustPressed
                L4_3 = 0
                L5_3 = 100
                L3_3 = L3_3(L4_3, L5_3)
                if not L3_3 then
                  L3_3 = IsControlJustPressed
                  L4_3 = 0
                  L5_3 = 73
                  L3_3 = L3_3(L4_3, L5_3)
                  if not L3_3 then
                    L3_3 = IsDisabledControlJustPressed
                    L4_3 = 0
                    L5_3 = 73
                    L3_3 = L3_3(L4_3, L5_3)
                    if not L3_3 then
                      goto lbl_490
                    end
                  end
                end
              end
            end
          end
        end
      end
      L3_3 = L0_1
      if nil ~= L3_3 then
        L3_3 = DeleteEntity
        L4_3 = L0_1
        L3_3(L4_3)
      end
      L3_3 = nil
      L0_1 = L3_3
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L3_1 = L5_3
      L2_1 = L4_3
      L1_1 = L3_3
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L6_1 = L5_3
      L5_1 = L4_3
      L4_1 = L3_3
      L3_3 = PlaySoundFrontend
      L4_3 = -1
      L5_3 = "Zoom_Right"
      L6_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
      L7_3 = 1
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = exports
      L3_3 = L3_3.striano_combat
      L4_3 = L3_3
      L3_3 = L3_3.testo3d
      L5_3 = "editor closed"
      L3_3(L4_3, L5_3)
      ::lbl_490::
    end
    L0_3 = print
    L1_3 = "Sword editor closed."
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
UpdateEditorAtt = L9_1
