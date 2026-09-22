local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
SpawnableObjects = L0_1
PreviewObj = nil
PreviewCam = nil
previewCamEnabled = true
L0_1 = RegisterNetEvent
L1_1 = "spawnable_objects:client:syncList"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.name
    if not L8_2 then
      L8_2 = L7_2
    end
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "string" == L9_2 and "" ~= L8_2 then
      L9_2 = GetHashKey
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = IsModelInCdimage
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = IsModelValid
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_40
        end
      end
      L10_2 = print
      L11_2 = "[spawnable_objects] modello NON valido: %s"
      L12_2 = L11_2
      L11_2 = L11_2.format
      L13_2 = L8_2
      L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
      L10_2(L11_2, L12_2, L13_2)
      ::lbl_40::
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L1_2
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
    end
  end
  SpawnableObjects = L1_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "spawnable_objects:client:addResult"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = print
    L3_2 = "[spawnable_objects] added: %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A1_2.name
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = print
    L3_2 = "[spawnable_objects] add failed: %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "spawnable_objects:client:removeResult"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = print
    L3_2 = "[spawnable_objects] removed: %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A1_2.name
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = print
    L3_2 = "[spawnable_objects] remove failed: %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "spawnable_objects:server:requestList"
  L0_2(L1_2)
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = OpenInput
  L1_2 = "Insert model(s) separated by comma"
  L0_2 = L0_2(L1_2)
  L1_2 = tostring
  L2_2 = L0_2 or L2_2
  if not L0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L0_2 = L1_2
  L2_2 = L0_2
  L1_2 = L0_2.match
  L3_2 = "^%s*$"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = string
  L1_2 = L1_2.gmatch
  L2_2 = L0_2
  L3_2 = "([^,]+)"
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = tostring
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.gsub
    L8_2 = "^%s*(.-)%s*$"
    L9_2 = "%1"
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if "" ~= L6_2 then
      L7_2 = joaat
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = IsModelInCdimage
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = IsModelValid
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = TriggerServerEvent
          L9_2 = "spawnable_objects:server:add"
          L10_2 = {}
          L10_2.name = L6_2
          L10_2.label = L6_2
          L10_2.desc = ""
          L11_2 = {}
          L10_2.tags = L11_2
          L8_2(L9_2, L10_2)
      end
      else
        L8_2 = print
        L9_2 = "Model not exist:"
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
end
AddNewObjectList = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.lower
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    L1_2 = SpawnableObjects
    return L1_2
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = SpawnableObjects
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = false
    L9_2 = L7_2.name
    if L9_2 then
      L9_2 = L7_2.name
      L10_2 = L9_2
      L9_2 = L9_2.find
      L11_2 = A0_2
      L12_2 = 1
      L13_2 = true
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      if L9_2 then
        L8_2 = true
    end
    else
      L9_2 = L7_2.label
      if L9_2 then
        L9_2 = L7_2.label
        L10_2 = L9_2
        L9_2 = L9_2.lower
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2
        L9_2 = L9_2.find
        L11_2 = A0_2
        L12_2 = 1
        L13_2 = true
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        if L9_2 then
          L8_2 = true
      end
      else
        L9_2 = L7_2.desc
        if L9_2 then
          L9_2 = L7_2.desc
          L10_2 = L9_2
          L9_2 = L9_2.lower
          L9_2 = L9_2(L10_2)
          L10_2 = L9_2
          L9_2 = L9_2.find
          L11_2 = A0_2
          L12_2 = 1
          L13_2 = true
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
          if L9_2 then
            L8_2 = true
        end
        else
          L9_2 = ipairs
          L10_2 = L7_2.tags
          if not L10_2 then
            L10_2 = {}
          end
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L16_2 = L14_2
            L15_2 = L14_2.find
            L17_2 = A0_2
            L18_2 = 1
            L19_2 = true
            L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
            if L15_2 then
              L8_2 = true
              break
            end
          end
        end
      end
    end
    if L8_2 then
      L9_2 = #L1_2
      L9_2 = L9_2 + 1
      L1_2[L9_2] = L7_2
    end
  end
  return L1_2
end
SearchLocalObjects = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PreviewCam
  if L0_2 then
    L0_2 = DoesCamExist
    L1_2 = PreviewCam
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = RenderScriptCams
      L1_2 = false
      L2_2 = true
      L3_2 = 250
      L4_2 = true
      L5_2 = true
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
      L0_2 = DestroyCam
      L1_2 = PreviewCam
      L2_2 = false
      L0_2(L1_2, L2_2)
      PreviewCam = nil
      L0_2 = ResetEntityAlpha
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2()
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    end
  end
end
destroyPreviewCam = L0_1
function L0_1()
  local L0_2, L1_2
  PreviewCamOrbit = 0.0
  L0_2 = PreviewObj
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = PreviewObj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      while true do
        L0_2 = DoesEntityExist
        L1_2 = PreviewObj
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          break
        end
        L0_2 = Wait
        L1_2 = 25
        L0_2(L1_2)
        L0_2 = DeleteEntity
        L1_2 = PreviewObj
        L0_2(L1_2)
      end
      L0_2 = Wait
      L1_2 = 75
      L0_2(L1_2)
      while true do
        L0_2 = DoesEntityExist
        L1_2 = PreviewObj
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          break
        end
        L0_2 = Wait
        L1_2 = 25
        L0_2(L1_2)
        L0_2 = DeleteEntity
        L1_2 = PreviewObj
        L0_2(L1_2)
      end
      PreviewObj = nil
    end
  end
end
DestroyPreview = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PreviewCam
  if L2_2 then
    L2_2 = DoesCamExist
    L3_2 = PreviewCam
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_53
    end
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.opened
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SetEntityAlpha
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = 150
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = CreateCam
    L3_2 = "DEFAULT_SCRIPTED_CAMERA"
    L4_2 = true
    L2_2 = L2_2(L3_2, L4_2)
    PreviewCam = L2_2
    L2_2 = SetCamCoord
    L3_2 = PreviewCam
    L4_2 = A0_2.x
    L5_2 = A0_2.y
    L6_2 = A0_2.z
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = PointCamAtCoord
    L3_2 = PreviewCam
    L4_2 = A1_2.x
    L5_2 = A1_2.y
    L6_2 = A1_2.z
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = SetCamFov
    L3_2 = PreviewCam
    L4_2 = 50.0
    L2_2(L3_2, L4_2)
    L2_2 = SetCamActive
    L3_2 = PreviewCam
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = RenderScriptCams
    L3_2 = true
    L4_2 = true
    L5_2 = 250
    L6_2 = true
    L7_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  ::lbl_53::
end
ensurePreviewCam = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = StartShapeTestLosProbe
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L11_2 = 113
  L12_2 = A2_2 or L12_2
  if not A2_2 then
    L12_2 = PlayerPedId
    L12_2 = L12_2()
  end
  L13_2 = 7
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = GetShapeTestResult
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  if 0 == L6_2 then
    L10_2 = true
    return L10_2
  end
  if L9_2 == A2_2 or L9_2 == A3_2 then
    L10_2 = true
    return L10_2
  end
  L10_2 = false
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
L1_1 = PreviewCamOrbit
if not L1_1 then
  L1_1 = 0.0
end
PreviewCamOrbit = L1_1
PreviewCamAutoOrbit = true
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.opened
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if not A1_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    A1_2 = L2_2
  end
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetModelDimensions
  L4_2 = GetEntityModel
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L4_2(L5_2)
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = L4_2 - L3_2
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L5_2.x
  L8_2 = L5_2.y
  L9_2 = L5_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L6_2 = L6_2 * 0.75
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = L6_2
  L9_2 = 0.35
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L7_2
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 1.5
  L9_2 = L6_2 * 2.8
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = math
  L8_2 = L8_2.max
  L9_2 = 0.35
  L10_2 = L6_2 * 0.8
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = PreviewCamAutoOrbit
  if L9_2 then
    L9_2 = PreviewCamOrbit
    L9_2 = L9_2 + 0.35
    PreviewCamOrbit = L9_2
  end
  L9_2 = PreviewCamOrbit
  L10_2 = 360.0
  if L9_2 >= L10_2 then
    L9_2 = PreviewCamOrbit
    L9_2 = L9_2 - 360.0
    PreviewCamOrbit = L9_2
  end
  L9_2 = math
  L9_2 = L9_2.rad
  L10_2 = PreviewCamOrbit
  L9_2 = L9_2(L10_2)
  L10_2 = vector3
  L11_2 = math
  L11_2 = L11_2.sin
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 * L7_2
  L12_2 = math
  L12_2 = L12_2.cos
  L13_2 = L9_2
  L12_2 = L12_2(L13_2)
  L12_2 = -L12_2
  L12_2 = L12_2 * L7_2
  L13_2 = L8_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L10_2 = L2_2 + L10_2
  L11_2 = vector3
  L12_2 = L2_2.x
  L13_2 = L2_2.y
  L14_2 = L2_2.z
  L15_2 = L6_2 * 0.2
  L14_2 = L14_2 + L15_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = PreviewCam
  L12_2 = DoesCamExist
  L13_2 = PreviewCam
  L12_2 = L12_2(L13_2)
  L12_2 = not L12_2 or L12_2
  L13_2 = previewCamEnabled
  if L13_2 then
    L13_2 = ensurePreviewCam
    L14_2 = L10_2
    L15_2 = L11_2
    L13_2(L14_2, L15_2)
  else
    L13_2 = destroyPreviewCam
    L13_2()
  end
  if L12_2 then
    L13_2 = SetCamCoord
    L14_2 = PreviewCam
    L15_2 = L10_2.x
    L16_2 = L10_2.y
    L17_2 = L10_2.z
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = PointCamAtCoord
    L14_2 = PreviewCam
    L15_2 = L11_2.x
    L16_2 = L11_2.y
    L17_2 = L11_2.z
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = SetCamFov
    L14_2 = PreviewCam
    L15_2 = 50.0
    L13_2(L14_2, L15_2)
    return
  end
  L13_2 = GetCamCoord
  L14_2 = PreviewCam
  L13_2 = L13_2(L14_2)
  L14_2 = vector3
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L14_2 = L13_2 - L14_2
  L14_2 = #L14_2
  L15_2 = 0.01
  if L14_2 < L15_2 then
    L14_2 = SetCamCoord
    L15_2 = PreviewCam
    L16_2 = L10_2.x
    L17_2 = L10_2.y
    L18_2 = L10_2.z
    L14_2(L15_2, L16_2, L17_2, L18_2)
    L14_2 = PointCamAtCoord
    L15_2 = PreviewCam
    L16_2 = L11_2.x
    L17_2 = L11_2.y
    L18_2 = L11_2.z
    L14_2(L15_2, L16_2, L17_2, L18_2)
    L14_2 = SetCamFov
    L15_2 = PreviewCam
    L16_2 = 50.0
    L14_2(L15_2, L16_2)
    return
  end
  L14_2 = 0.18
  L15_2 = vector3
  L16_2 = L13_2.x
  L17_2 = L10_2.x
  L18_2 = L13_2.x
  L17_2 = L17_2 - L18_2
  L17_2 = L17_2 * L14_2
  L16_2 = L16_2 + L17_2
  L17_2 = L13_2.y
  L18_2 = L10_2.y
  L19_2 = L13_2.y
  L18_2 = L18_2 - L19_2
  L18_2 = L18_2 * L14_2
  L17_2 = L17_2 + L18_2
  L18_2 = L13_2.z
  L19_2 = L10_2.z
  L20_2 = L13_2.z
  L19_2 = L19_2 - L20_2
  L19_2 = L19_2 * L14_2
  L18_2 = L18_2 + L19_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = SetCamCoord
  L17_2 = PreviewCam
  L18_2 = L15_2.x
  L19_2 = L15_2.y
  L20_2 = L15_2.z
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = PointCamAtCoord
  L17_2 = PreviewCam
  L18_2 = L11_2.x
  L19_2 = L11_2.y
  L20_2 = L11_2.z
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = SetCamFov
  L17_2 = PreviewCam
  L18_2 = 50.0
  L16_2(L17_2, L18_2)
end
updatePreviewCamera = L1_1
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L1_1
  if L1_2 then
    return
  end
  L1_2 = true
  L1_1 = L1_2
  L1_2 = DestroyPreview
  L1_2()
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = false
  L1_1 = L1_2
  L1_2 = joaat
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = print
    L3_2 = "Model not exist:"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    return
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
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = print
      L4_2 = "[spawnable_objects] timeout model not exist:"
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      return
    end
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityForwardVector
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2 * 2.0
  L6_2 = L4_2 + L6_2
  L7_2 = DestroyPreview
  L7_2()
  L7_2 = CreateObjectNoOffset
  L8_2 = L1_2
  L9_2 = L6_2.x
  L10_2 = L6_2.y
  L11_2 = L6_2.z
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  PreviewObj = L7_2
  L7_2 = 0
  while true do
    L8_2 = DoesEntityExist
    L9_2 = PreviewObj
    L8_2 = L8_2(L9_2)
    if not (not L8_2 and L7_2 < 100) then
      break
    end
    L7_2 = L7_2 + 1
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
  end
  if L7_2 < 100 then
    L8_2 = SetEntityCollision
    L9_2 = PreviewObj
    L10_2 = false
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = FreezeEntityPosition
    L9_2 = PreviewObj
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityAlpha
    L9_2 = PreviewObj
    L10_2 = 240
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = updatePreviewCamera
    L9_2 = PreviewObj
    L10_2 = L3_2
    L8_2(L9_2, L10_2)
    L8_2 = SetModelAsNoLongerNeeded
    L9_2 = L1_2
    L8_2(L9_2)
    L8_2 = GetModelDimensions
    L9_2 = GetEntityModel
    L10_2 = PreviewObj
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
    L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = L9_2 - L8_2
    L11_2 = L10_2.x
    if not (L11_2 > 50.0) then
      L11_2 = L10_2.y
      if not (L11_2 > 50.0) then
        L11_2 = L10_2.z
        if not (L11_2 > 50.0) then
          goto lbl_133
        end
      end
    end
    L11_2 = SetEntityLodDist
    L12_2 = PreviewObj
    L13_2 = 65535
    L11_2(L12_2, L13_2)
  end
  ::lbl_133::
end
StartObjectPreview = L2_1
L2_1 = false
function L3_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if L0_2 then
    return
  end
  L0_2 = true
  L2_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.opened
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PreviewObj
      if L0_3 then
        L0_3 = DoesEntityExist
        L1_3 = PreviewObj
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = updatePreviewCamera
          L1_3 = PreviewObj
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L0_3(L1_3, L2_3)
        end
      end
    end
    L0_3 = destroyPreviewCam
    L0_3()
    L0_3 = DestroyPreview
    L0_3()
    L0_3 = false
    L2_1 = L0_3
    L0_3 = Wait
    L1_3 = 25
    L0_3(L1_3)
    L0_3 = DestroyPreview
    L0_3()
  end
  L0_2(L1_2)
end
LoopPreview = L3_1
