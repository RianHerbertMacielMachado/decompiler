local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
L1_1 = {}
L0_1.models = L1_1
L1_1 = {}
L0_1.entities = L1_1
L1_1 = {}
L0_1.zones = L1_1
L1_1 = false
L2_1 = nil
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    return
  end
  L2_2 = A0_2.x
  if not L2_2 then
    L2_2 = A0_2[1]
  end
  L3_2 = A0_2.y
  if not L3_2 then
    L3_2 = A0_2[2]
  end
  L4_2 = A0_2.z
  if not L4_2 then
    L4_2 = A0_2[3]
  end
  if not (L2_2 and L3_2) or not L4_2 then
    return
  end
  L5_2 = SetDrawOrigin
  L6_2 = L2_2 + 0.0
  L7_2 = L3_2 + 0.0
  L8_2 = L4_2 + 0.15
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetTextScale
  L6_2 = 0.52
  L7_2 = 0.52
  L5_2(L6_2, L7_2)
  L5_2 = SetTextFont
  L6_2 = 4
  L5_2(L6_2)
  L5_2 = SetTextCentre
  L6_2 = true
  L5_2(L6_2)
  L5_2 = SetTextOutline
  L5_2()
  L5_2 = BeginTextCommandDisplayText
  L6_2 = "STRING"
  L5_2(L6_2)
  L5_2 = AddTextComponentSubstringPlayerName
  L6_2 = A1_2
  L5_2(L6_2)
  L5_2 = EndTextCommandDisplayText
  L6_2 = 0.0
  L7_2 = 0.0
  L5_2(L6_2, L7_2)
  L5_2 = ClearDrawOrigin
  L5_2()
end
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.options
  if L1_2 then
    L1_2 = A0_2.options
    return L1_2
  end
  return A0_2
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.distance
  if L3_2 then
    L3_2 = A0_2.distance
    if A2_2 > L3_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = A0_2.canInteract
  if L3_2 then
    L3_2 = pcall
    L4_2 = A0_2.canInteract
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = nil
    L8_2 = nil
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    if not L3_2 or false == L4_2 then
      L5_2 = false
      return L5_2
    end
  end
  L3_2 = true
  return L3_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L2_2.entity = A1_2
  if A1_2 and 0 ~= A1_2 then
    L3_2 = DoesEntityExist
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = GetEntityCoords
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_19
      end
    end
  end
  L3_2 = nil
  ::lbl_19::
  L2_2.coords = L3_2
  L3_2 = A0_2.onSelect
  if L3_2 then
    L3_2 = A0_2.onSelect
    L4_2 = L2_2
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2.event
  if L3_2 then
    L3_2 = TriggerEvent
    L4_2 = A0_2.event
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2.serverEvent
  if L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = A0_2.serverEvent
    if A1_2 and 0 ~= A1_2 then
      L5_2 = NetworkGetNetworkIdFromEntity
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_50
      end
    end
    L5_2 = 0
    ::lbl_50::
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = print
  L4_2 = "No action for this target."
  L3_2(L4_2)
end
L7_1 = exports
L8_1 = "addModel"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = L4_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    L3_2 = A0_2
    L2_2[1] = L3_2
    A0_2 = L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L8_2 = L7_2 or L8_2
    if "number" ~= L8_2 or not L7_2 then
      L8_2 = joaat
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
    end
    L9_2 = L0_1.models
    L10_2 = L0_1.models
    L10_2 = L10_2[L8_2]
    if not L10_2 then
      L10_2 = {}
    end
    L9_2[L8_2] = L10_2
    L9_2 = ipairs
    L10_2 = A1_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = table
      L15_2 = L15_2.insert
      L16_2 = L0_1.models
      L16_2 = L16_2[L8_2]
      L17_2 = L14_2
      L15_2(L16_2, L17_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "removeModel"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    L2_2 = A0_2
    L1_2[1] = L2_2
    A0_2 = L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L7_2 = L6_2 or L7_2
    if "number" ~= L7_2 or not L6_2 then
      L7_2 = joaat
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
    end
    L8_2 = L0_1.models
    L8_2[L7_2] = nil
  end
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "addLocalEntity"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L4_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    L3_2 = A0_2
    L2_2[1] = L3_2
    A0_2 = L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L0_1.entities
    L9_2 = L0_1.entities
    L9_2 = L9_2[L7_2]
    if not L9_2 then
      L9_2 = {}
    end
    L8_2[L7_2] = L9_2
    L8_2 = ipairs
    L9_2 = A1_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L0_1.entities
      L15_2 = L15_2[L7_2]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "removeLocalEntity"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    L2_2 = A0_2
    L1_2[1] = L2_2
    A0_2 = L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L0_1.entities
    L7_2[L6_2] = nil
  end
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "addBoxZone"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = "zone_"
    L2_2 = tostring
    L3_2 = L0_1.zones
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 .. L2_2
  end
  L2_2 = L0_1.zones
  L3_2 = {}
  L3_2.type = "box"
  L4_2 = A0_2.coords
  L3_2.coords = L4_2
  L4_2 = A0_2.size
  if not L4_2 then
    L4_2 = vec3
    L5_2 = 2.0
    L6_2 = 2.0
    L7_2 = 2.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
  end
  L3_2.size = L4_2
  L4_2 = A0_2.rotation
  if not L4_2 then
    L4_2 = 0.0
  end
  L3_2.rotation = L4_2
  L4_2 = L4_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.options = L4_2
  L2_2[L1_2] = L3_2
  return L1_2
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "addSphereZone"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = "zone_"
    L2_2 = tostring
    L3_2 = L0_1.zones
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 .. L2_2
  end
  L2_2 = L0_1.zones
  L3_2 = {}
  L3_2.type = "sphere"
  L4_2 = A0_2.coords
  L3_2.coords = L4_2
  L4_2 = A0_2.radius
  if not L4_2 then
    L4_2 = 2.0
  end
  L3_2.radius = L4_2
  L4_2 = L4_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.options = L4_2
  L2_2[L1_2] = L3_2
  return L1_2
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "removeZone"
function L9_1(A0_2)
  local L1_2
  L1_2 = L0_1.zones
  L1_2[A0_2] = nil
end
L7_1(L8_1, L9_1)
L7_1 = CreateThread
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = false
    L3_2 = nil
    L4_2 = 0
    L5_2 = {}
    L6_2 = L4_2
    L7_2 = nil
    if L2_2 and L4_2 and 0 ~= L4_2 then
      L8_2 = DoesEntityExist
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L7_2 = L3_2
        L8_2 = L1_2 - L3_2
        L8_2 = #L8_2
        L9_2 = L0_1.entities
        L9_2 = L9_2[L4_2]
        if L9_2 then
          L9_2 = ipairs
          L10_2 = L0_1.entities
          L10_2 = L10_2[L4_2]
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = L5_1
            L16_2 = L14_2
            L17_2 = L4_2
            L18_2 = L8_2
            L15_2 = L15_2(L16_2, L17_2, L18_2)
            if L15_2 then
              L15_2 = #L5_2
              L15_2 = L15_2 + 1
              L5_2[L15_2] = L14_2
            end
          end
        end
        L9_2 = GetEntityModel
        L10_2 = L4_2
        L9_2 = L9_2(L10_2)
        L10_2 = L0_1.models
        L10_2 = L10_2[L9_2]
        if L10_2 then
          L10_2 = ipairs
          L11_2 = L0_1.models
          L11_2 = L11_2[L9_2]
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
          for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
            L16_2 = L5_1
            L17_2 = L15_2
            L18_2 = L4_2
            L19_2 = L8_2
            L16_2 = L16_2(L17_2, L18_2, L19_2)
            if L16_2 then
              L16_2 = #L5_2
              L16_2 = L16_2 + 1
              L5_2[L16_2] = L15_2
            end
          end
        end
      end
    end
    L8_2 = pairs
    L9_2 = L0_1.zones
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2.coords
      L14_2 = L1_2 - L14_2
      L14_2 = #L14_2
      L15_2 = L13_2.type
      if "sphere" == L15_2 then
        L15_2 = L13_2.radius
        if L14_2 <= L15_2 then
          L7_2 = L13_2.coords
          L15_2 = ipairs
          L16_2 = L13_2.options
          L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
          for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
            L21_2 = L5_1
            L22_2 = L20_2
            L23_2 = 0
            L24_2 = L14_2
            L21_2 = L21_2(L22_2, L23_2, L24_2)
            if L21_2 then
              L21_2 = #L5_2
              L21_2 = L21_2 + 1
              L5_2[L21_2] = L20_2
            end
          end
      end
      else
        L15_2 = L13_2.type
        if "box" == L15_2 then
          L15_2 = L13_2.size
          L15_2 = L15_2.x
          L15_2 = L15_2 / 2
          L16_2 = L13_2.size
          L16_2 = L16_2.y
          L16_2 = L16_2 / 2
          L17_2 = L13_2.size
          L17_2 = L17_2.z
          L17_2 = L17_2 / 2
          L18_2 = L13_2.coords
          L19_2 = math
          L19_2 = L19_2.abs
          L20_2 = L1_2.x
          L21_2 = L18_2.x
          L20_2 = L20_2 - L21_2
          L19_2 = L19_2(L20_2)
          if L15_2 >= L19_2 then
            L19_2 = math
            L19_2 = L19_2.abs
            L20_2 = L1_2.y
            L21_2 = L18_2.y
            L20_2 = L20_2 - L21_2
            L19_2 = L19_2(L20_2)
            if L16_2 >= L19_2 then
              L19_2 = math
              L19_2 = L19_2.abs
              L20_2 = L1_2.z
              L21_2 = L18_2.z
              L20_2 = L20_2 - L21_2
              L19_2 = L19_2(L20_2)
              if L17_2 >= L19_2 then
                L7_2 = L13_2.coords
                L19_2 = ipairs
                L20_2 = L13_2.options
                L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
                for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
                  L25_2 = L5_1
                  L26_2 = L24_2
                  L27_2 = 0
                  L28_2 = L14_2
                  L25_2 = L25_2(L26_2, L27_2, L28_2)
                  if L25_2 then
                    L25_2 = #L5_2
                    L25_2 = L25_2 + 1
                    L5_2[L25_2] = L24_2
                  end
                end
              end
            end
          end
        end
      end
    end
    L8_2 = #L5_2
    if L8_2 > 0 then
      L8_2 = vector3
      L9_2 = L7_2.x
      L10_2 = L7_2.y
      L11_2 = L7_2.z
      L11_2 = L11_2 + 0.5
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
      L8_2 = L3_1
      L9_2 = L7_2 or L9_2
      if not L7_2 then
        L9_2 = L1_2
      end
      L10_2 = "~h~E~h~"
      L8_2(L9_2, L10_2)
      L8_2 = IsControlJustPressed
      L9_2 = 0
      L10_2 = 38
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = L5_2[1]
        L9_2 = L6_1
        L10_2 = L8_2
        L11_2 = L6_2
        L9_2(L10_2, L11_2)
      end
    else
      L8_2 = Wait
      L9_2 = 150
      L8_2(L9_2)
    end
  end
end
L7_1(L8_1)
