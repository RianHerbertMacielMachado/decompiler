local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  L3_2 = 10
  L2_2 = L3_2 ^ L2_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 * L2_2
  L4_2 = L4_2 + 0.5
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / L2_2
  return L3_2
end
L1_1 = RegisterCommand
L2_1 = "prendicoord"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = screenToWorld
      L1_3 = 0
      L0_3 = L0_3(L1_3)
      if nil ~= L0_3 then
        L1_3 = vector3
        L2_3 = 0.0
        L3_3 = 0.0
        L4_3 = 0.0
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        if L0_3 ~= L1_3 then
          L1_3 = IsControlPressed
          L2_3 = 0
          L3_3 = 24
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = IsDisabledControlPressed
            L2_3 = 0
            L3_3 = 24
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              goto lbl_58
            end
          end
          L1_3 = PlaySoundFrontend
          L2_3 = -1
          L3_3 = "TENNIS_MATCH_POINT"
          L4_3 = "HUD_AWARDS"
          L5_3 = 1
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = print
          L2_3 = "Coordinate ottenuto con successo, copia e incolla la coordinata qui sotto:"
          L1_3(L2_3)
          L1_3 = print
          L2_3 = "Copia -> "
          L3_3 = L0_1
          L4_3 = L0_3.x
          L5_3 = 3
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = ","
          L5_3 = L0_1
          L6_3 = L0_3.y
          L7_3 = 3
          L5_3 = L5_3(L6_3, L7_3)
          L6_3 = ","
          L7_3 = L0_1
          L8_3 = L0_3.z
          L8_3 = L8_3 - 1.0
          L9_3 = 3
          L7_3 = L7_3(L8_3, L9_3)
          L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
          L1_3(L2_3)
          return
        end
      end
      ::lbl_58::
    end
  end
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = vector3
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
L2_1 = commandEnabled
if L2_1 then
  L2_1 = RegisterCommand
  L3_1 = commandName
  function L4_1(A0_2)
    local L1_2
    L1_2 = canPlayerLight
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = canPlayerLight2
      L1_2 = L1_2()
      if L1_2 then
        L1_2 = LoopLuceBorsone
        L1_2()
      end
    end
  end
  L2_1(L3_1, L4_1)
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = LightsToggle
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = LightsToggle
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.toggle
  if L1_2 then
    L1_2 = LightsToggle
    L1_2 = L1_2[A0_2]
    L1_2.toggle = false
  else
    L1_2 = LightsToggle
    L1_2 = L1_2[A0_2]
    L1_2.toggle = true
  end
  L1_2 = TriggerServerEvent
  L2_2 = "syncLights"
  L3_2 = A0_2
  L4_2 = LightsToggle
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.toggle
  L1_2(L2_2, L3_2, L4_2)
end
funcLightsToggle = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = luceBagAccesa
  if not L0_2 then
    luceBagAccesa = true
    while true do
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
      L0_2 = luceBagAccesa
      if L0_2 then
        L0_2 = GetGameplayCamRot
        L1_2 = 0
        L0_2 = L0_2(L1_2)
        L1_2 = L1_1
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = GetEntityCoords
        L3_2 = PlayerPedId
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L3_2()
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L3_2 = GetEntityForwardVector
        L4_2 = PlayerPedId
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2()
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = L3_2 * 0.8
        L5_2 = L2_2 + L5_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L7_2 = {}
        L8_2 = vector3
        L9_2 = L4_2
        L10_2 = L5_2
        L11_2 = L6_2 + 0.6
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L7_2.pos = L8_2
        L7_2.rot = L1_2
        L8_2 = DrawSpotLightWithShadow
        L9_2 = L7_2.pos
        L10_2 = L7_2.rot
        L11_2 = 255
        L12_2 = 255
        L13_2 = 255
        L14_2 = 20.0
        L15_2 = 0.002
        L16_2 = lucentezzaLuce
        L17_2 = ampiezzaLuce
        L18_2 = 2.0
        L19_2 = 30.0
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      else
        return
      end
    end
  else
    luceBagAccesa = false
  end
end
LoopLuceBorsone = L2_1
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = Wait
  L1_2 = 5000
  L0_2(L1_2)
  while true do
    L0_2 = false
    L1_2 = 1
    L2_2 = LightsToggle
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = LightsToggle
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2.a
      L7_2 = GetEntityCoords
      L8_2 = PlayerPedId
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L7_2 = L6_2 - L7_2
      L7_2 = #L7_2
      L8_2 = distanceToggleLights
      if L7_2 < L8_2 then
        L7_2 = L5_2.toggle
        if L7_2 then
          L0_2 = true
          L7_2 = DrawSpotLightWithShadow
          L8_2 = L6_2.x
          L9_2 = L6_2.y
          L10_2 = L6_2.z
          L11_2 = L5_2.b
          L11_2 = L11_2.x
          L12_2 = L5_2.b
          L12_2 = L12_2.y
          L13_2 = L5_2.b
          L13_2 = L13_2.z
          L13_2 = L13_2 - 0.15
          L14_2 = 255
          L15_2 = 255
          L16_2 = 190
          L17_2 = watToggle
          L18_2 = brillantezzaToggle
          L19_2 = 5.0
          L20_2 = 150.0
          L21_2 = 10.0
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          L7_2 = DrawLightWithRange
          L8_2 = L6_2.x
          L9_2 = L6_2.y
          L10_2 = L6_2.z
          L10_2 = L10_2 - 0.15
          L11_2 = 255
          L12_2 = 255
          L13_2 = 190
          L14_2 = 0.2
          L15_2 = brillantezzaToggle
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        end
      end
    end
    L1_2 = 1
    L2_2 = luciFisse
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = luciFisse
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2.a
      L7_2 = GetEntityCoords
      L8_2 = PlayerPedId
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L7_2 = L6_2 - L7_2
      L7_2 = #L7_2
      if L7_2 < 100.0 then
        L0_2 = true
        L7_2 = DrawSpotLightWithShadow
        L8_2 = L6_2.x
        L9_2 = L6_2.y
        L10_2 = L6_2.z
        L11_2 = L5_2.b
        L11_2 = L11_2.x
        L12_2 = L5_2.b
        L12_2 = L12_2.y
        L13_2 = L5_2.b
        L13_2 = L13_2.z
        L13_2 = L13_2 - 0.15
        L14_2 = 255
        L15_2 = 255
        L16_2 = 190
        L17_2 = watFisse
        L18_2 = brillantezzaFisse
        L19_2 = 5.0
        L20_2 = 150.0
        L21_2 = 10.0
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L7_2 = DrawLightWithRange
        L8_2 = L6_2.x
        L9_2 = L6_2.y
        L10_2 = L6_2.z
        L10_2 = L10_2 - 0.15
        L11_2 = 255
        L12_2 = 255
        L13_2 = 190
        L14_2 = 0.2
        L15_2 = brillantezzaFisse
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
    L1_2 = 1
    L2_2 = luciSoffuse
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = luciSoffuse
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2.a
      L7_2 = GetEntityCoords
      L8_2 = PlayerPedId
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L7_2 = L6_2 - L7_2
      L7_2 = #L7_2
      if L7_2 < 100.0 then
        L0_2 = true
        L7_2 = DrawSpotLightWithShadow
        L8_2 = L6_2.x
        L9_2 = L6_2.y
        L10_2 = L6_2.z
        L11_2 = L5_2.b
        L11_2 = L11_2.x
        L12_2 = L5_2.b
        L12_2 = L12_2.y
        L13_2 = L5_2.b
        L13_2 = L13_2.z
        L13_2 = L13_2 - 0.15
        L14_2 = 255
        L15_2 = 255
        L16_2 = 190
        L17_2 = watSoffuse
        L18_2 = brillantezzaSoffuse
        L19_2 = 5.0
        L20_2 = 150.0
        L21_2 = 10.0
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L7_2 = DrawLightWithRange
        L8_2 = L6_2.x
        L9_2 = L6_2.y
        L10_2 = L6_2.z
        L10_2 = L10_2 - 0.15
        L11_2 = 255
        L12_2 = 255
        L13_2 = 190
        L14_2 = 0.2
        L15_2 = brillantezzaSoffuse
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
    if not L0_2 then
      L1_2 = Wait
      L2_2 = 3000
      L1_2(L2_2)
    end
  end
end
L2_1(L3_1)
L2_1 = 0
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  while true do
    L0_2 = GetClockHours
    L0_2 = L0_2()
    if L0_2 >= 20 or L0_2 < 5 then
      L1_2 = false
      L2_2 = 1
      L3_2 = luciSurv
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = luciSurv
        L6_2 = L6_2[L5_2]
        L7_2 = L6_2.a
        L8_2 = GetEntityCoords
        L9_2 = PlayerPedId
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2()
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L8_2 = L7_2 - L8_2
        L8_2 = #L8_2
        L9_2 = 150.0
        if L8_2 < L9_2 then
          L1_2 = true
          L8_2 = DrawSpotLightWithShadow
          L9_2 = L7_2.x
          L10_2 = L7_2.y
          L11_2 = L7_2.z
          L11_2 = L11_2 - 0.15
          L12_2 = L6_2.b
          L12_2 = L12_2.x
          L13_2 = L6_2.b
          L13_2 = L13_2.y
          L14_2 = L6_2.b
          L14_2 = L14_2.z
          L15_2 = 255
          L16_2 = 255
          L17_2 = 190
          L18_2 = 7.0
          L19_2 = 0.02
          L20_2 = 0.1
          L21_2 = 30.0
          L22_2 = 10.0
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
          L8_2 = DrawLightWithRange
          L9_2 = L7_2.x
          L10_2 = L7_2.y
          L11_2 = L7_2.z
          L11_2 = L11_2 - 0.15
          L12_2 = 255
          L13_2 = 255
          L14_2 = 190
          L15_2 = 0.22
          L16_2 = 0.02
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        end
      end
      L2_2 = Wait
      L3_2 = math
      L3_2 = L3_2.random
      L4_2 = 25
      L5_2 = 150
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L3_2(L4_2, L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L2_2 = L2_1
      if L2_2 < 10 then
        L2_2 = L2_1
        L2_2 = L2_2 + 1
        L2_1 = L2_2
      else
        L2_2 = Wait
        L3_2 = math
        L3_2 = L3_2.random
        L4_2 = 500
        L5_2 = 1500
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L3_2(L4_2, L5_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L2_2 = 0
        L2_1 = L2_2
      end
      if not L1_2 then
        L2_2 = Wait
        L3_2 = 3000
        L2_2(L3_2)
      end
    else
      L1_2 = Wait
      L2_2 = 5000
      L1_2(L2_2)
    end
  end
end
L3_1(L4_1)
L3_1 = muteAll
if L3_1 then
  L3_1 = CreateThread
  function L4_1()
    local L0_2, L1_2, L2_2, L3_2
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "LOS_SANTOS_VANILLA_UNICORN_01_STAGE"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "se_dlc_aw_arena_crowd_exterior_lobby"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "se_dlc_aw_arena_crowd_background_main"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "se_dlc_aw_arena_crowd_interior_lobby"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "se_dlc_aw_arena_construction_01"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetAmbientZoneListStatePersistent
    L1_2 = "AZL_DLC_HEI4_Arena_Ambience_Zones"
    L2_2 = false
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = StartAudioScene
    L1_2 = "DLC_MPHEIST_TRANSITION_TO_APT_FADE_IN_RADIO_SCENE"
    L0_2(L1_2)
    L0_2 = StartAudioScene
    L1_2 = "CHARACTER_CHANGE_IN_SKY_SCENE"
    L0_2(L1_2)
    L0_2 = SetAudioFlag
    L1_2 = "PoliceScannerDisabled"
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = DistantCopCarSirens
    L1_2 = false
    L0_2(L1_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "LOS_SANTOS_VANILLA_UNICORN_01_STAGE"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetStaticEmitterEnabled
    L1_2 = "LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetAmbientZoneListStatePersistent
    L1_2 = "AZL_DLC_Hei4_Island_Disabled_Zones"
    L2_2 = false
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = SetAmbientZoneListStatePersistent
    L1_2 = "AZL_DLC_Hei4_Island_Zones"
    L2_2 = true
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_STREETRACE"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_SALTON_DIRT_BIKE"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_SALTON"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_POLICE_NEXT_TO_CAR"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_POLICE_CAR"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_POLICE_BIKE"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_MILITARY_PLANES_SMALL"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_MILITARY_PLANES_BIG"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_MECHANIC"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_EMPTY"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_BUSINESSMEN"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SetScenarioTypeEnabled
    L1_2 = "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = StartAudioScene
    L1_2 = "FBI_HEIST_H5_MUTE_AMBIENCE_SCENE"
    L0_2(L1_2)
    L0_2 = SetAudioFlag
    L1_2 = "PoliceScannerDisabled"
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = SetAudioFlag
    L1_2 = "DisableFlightMusic"
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = SetRandomEventFlag
    L1_2 = false
    L0_2(L1_2)
    L0_2 = SetWind
    L1_2 = 0.0
    L0_2(L1_2)
    L0_2 = SetWindSpeed
    L1_2 = 0.0
    L0_2(L1_2)
  end
  L3_1(L4_1)
end
L3_1 = RegisterCommand
L4_1 = "smoke"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if nil ~= A1_2 then
    L3_2 = A1_2[1]
    if nil ~= L3_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L4_2 = Smoke
  L4_2 = L4_2[L3_2]
  if L4_2 then
    L4_2 = Smoke
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2.toggle
    L5_2 = not L5_2
    L4_2.toggle = L5_2
    L5_2 = L4_2.toggle
    if L5_2 then
      L5_2 = TriggerServerEvent
      L6_2 = "activeSmoke"
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
    else
      L5_2 = TriggerServerEvent
      L6_2 = "stopSmoke"
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "syncLights"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "syncLights"
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = LightsToggle
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = LightsToggle
    L2_2 = L2_2[A0_2]
    L2_2.toggle = A1_2
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "activeSmoke"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "activeSmoke"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = Smoke
  L1_2 = L1_2[A0_2]
  L1_2.toggle = true
  L2_2 = L1_2.stander
  if nil == L2_2 then
    L2_2 = RequestModelStriano
    L3_2 = "prop_cs_leaf"
    L2_2(L3_2)
    L2_2 = CreateObject
    L3_2 = GetHashKey
    L4_2 = "prop_cs_leaf"
    L3_2 = L3_2(L4_2)
    L4_2 = L1_2.pos
    L4_2 = L4_2.x
    L5_2 = L1_2.pos
    L5_2 = L5_2.y
    L6_2 = L1_2.pos
    L6_2 = L6_2.z
    L7_2 = 0
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2.stander = L2_2
    L2_2 = SetEntityVisible
    L3_2 = L1_2.stander
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = L1_2.c
    L3_2 = RequestNamedPtfxAsset
    L4_2 = L2_2
    L3_2(L4_2)
    while true do
      L3_2 = HasNamedPtfxAssetLoaded
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 0
      L3_2(L4_2)
    end
    L3_2 = UseParticleFxAssetNextCall
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = StartNetworkedParticleFxLoopedOnEntity
    L4_2 = L1_2.f
    L5_2 = L1_2.stander
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = L1_2.offrot
    L9_2 = L9_2.x
    L10_2 = L1_2.offrot
    L10_2 = L10_2.y
    L11_2 = L1_2.offrot
    L11_2 = L11_2.z
    L12_2 = L1_2.scale
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L1_2.fx = L3_2
    L3_2 = L1_2.col
    if nil ~= L3_2 then
      L3_2 = SetParticleFxLoopedColour
      L4_2 = L1_2.fx
      L5_2 = L1_2.col
      L5_2 = L5_2[1]
      L6_2 = L1_2.col
      L6_2 = L6_2[2]
      L7_2 = L1_2.col
      L7_2 = L7_2[3]
      L8_2 = 0
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
    L3_2 = SetParticleFxLoopedAlpha
    L4_2 = L1_2.fx
    L5_2 = L1_2.opacity
    L3_2(L4_2, L5_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "stopSmoke"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "stopSmoke"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Smoke
  L1_2 = L1_2[A0_2]
  L1_2.toggle = false
  L2_2 = L1_2.fx
  if L2_2 then
    L2_2 = StopParticleFxLooped
    L3_2 = L1_2.fx
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = RemoveParticleFx
    L3_2 = L1_2.fx
    L4_2 = true
    L2_2(L3_2, L4_2)
    L1_2.fx = nil
  end
  L2_2 = L1_2.stander
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2.stander
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = L1_2.stander
      L2_2(L3_2)
      L2_2 = DeleteEntity
      L3_2 = L1_2.stander
      L2_2(L3_2)
      L1_2.stander = nil
    end
  end
end
L3_1(L4_1, L5_1)
