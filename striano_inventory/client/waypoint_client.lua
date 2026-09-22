local L0_1, L1_1, L2_1, L3_1, L4_1
MAX_DUI_POOL = 20
L0_1 = SleeplessWaypointsConfig
if not L0_1 then
  L0_1 = {}
end
config = L0_1
L0_1 = {}
WaypointManager = L0_1
L0_1 = {}
waypointsById = L0_1
L0_1 = {}
idToIndex = L0_1
L0_1 = {}
waypointId = 0
L1_1 = {}
poolAvailable = L1_1
L1_1 = {}
poolInUse = L1_1
poolNextId = 0
L1_1 = {}
waitingForDuiLoad = L1_1
L1_1 = {}
shouldRender = L1_1
L1_1 = {}
currentlyRendering = L1_1
drawRunning = false
L1_1 = {}
serverToClientId = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = "#FFFFFF"
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "#"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = tonumber
  L3_2 = A0_2
  L2_2 = A0_2.sub
  L4_2 = 1
  L5_2 = 2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = 16
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 255
  end
  L2_2 = tonumber
  L4_2 = A0_2
  L3_2 = A0_2.sub
  L5_2 = 3
  L6_2 = 4
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = 16
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = 255
  end
  L3_2 = tonumber
  L5_2 = A0_2
  L4_2 = A0_2.sub
  L6_2 = 5
  L7_2 = 6
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 16
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = 255
  end
  return L1_2, L2_2, L3_2
end
hexToRgb = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A7_2 or not A8_2 then
    return
  end
  L9_2 = SetDrawOrigin
  L10_2 = A0_2.x
  L11_2 = A0_2.y
  L12_2 = A0_2.z
  L13_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = DrawSprite
  L10_2 = A7_2
  L11_2 = A8_2
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = A1_2
  L15_2 = A2_2
  L16_2 = 0.0
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = ClearDrawOrigin
  L9_2()
end
drawTexturedTriangle = L1_1
L1_1 = RegisterNUICallback
L2_1 = "load"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tonumber
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  L3_2 = waitingForDuiLoad
  L3_2[L2_2] = nil
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = A0_2.dui
    if L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = SendDuiMessage
  L3_2 = A0_2.dui
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.texture
  if L2_2 then
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = CommitRuntimeTexture
    L3_2 = A0_2.texture
    L2_2(L3_2)
  end
end
sendDuiMessage = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = A0_2.dui
    if L1_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = DestroyDui
  L2_2 = A0_2.dui
  L1_2(L2_2)
end
destroyDuiWrapper = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = config
  L1_2 = L1_2.dui
  if L1_2 then
    L1_2 = config
    L1_2 = L1_2.dui
    L1_2 = L1_2.width
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = 512
  ::lbl_11::
  L2_2 = config
  L2_2 = L2_2.dui
  if L2_2 then
    L2_2 = config
    L2_2 = L2_2.dui
    L2_2 = L2_2.height
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = 1024
  ::lbl_21::
  L3_2 = "https://cfx-nui-striano_inventory/html2d/waypoint/index.html"
  L4_2 = CreateDui
  L5_2 = L3_2
  L6_2 = L1_2
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = Wait
  L6_2 = 100
  L5_2(L6_2)
  L5_2 = GetDuiHandle
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = "swp_txd_%s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = "swp_txn_%s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = CreateRuntimeTxd
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L9_2 = CreateRuntimeTextureFromDuiHandle
  L10_2 = L8_2
  L11_2 = L7_2
  L12_2 = L5_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = {}
  L10_2.id = A0_2
  L10_2.dui = L4_2
  L10_2.handle = L5_2
  L10_2.texture = L9_2
  L10_2.dictName = L6_2
  L10_2.txtName = L7_2
  return L10_2
end
createDui = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = sendDuiMessage
  L2_2 = A0_2
  L3_2 = {}
  L3_2.action = "reset"
  L1_2(L2_2, L3_2)
end
resetDui = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = poolAvailable
  L0_2 = #L0_2
  if L0_2 > 0 then
    L0_2 = table
    L0_2 = L0_2.remove
    L1_2 = poolAvailable
    L2_2 = 1
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = poolInUse
    L2_2 = L0_2.id
    L1_2[L2_2] = L0_2
    L1_2 = L0_2
    L2_2 = L0_2.id
    return L1_2, L2_2
  end
  L0_2 = nil
  L1_2 = nil
  return L0_2, L1_2
end
acquireDui = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = poolInUse
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = poolInUse
  L2_2[A0_2] = nil
  L2_2 = resetDui
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = poolAvailable
  L3_2 = poolAvailable
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = L1_2
end
releaseDui = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = MAX_DUI_POOL
  end
  L3_2 = MAX_DUI_POOL
  L1_2 = L1_2(L2_2, L3_2)
  A0_2 = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = 1
    L1_3 = A0_2
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = poolNextId
      L4_3 = L4_3 + 1
      poolNextId = L4_3
      L4_3 = poolNextId
      L5_3 = createDui
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      if L5_3 then
        L6_3 = resetDui
        L7_3 = L5_3
        L6_3(L7_3)
        L6_3 = poolAvailable
        L7_3 = poolAvailable
        L7_3 = #L7_3
        L7_3 = L7_3 + 1
        L6_3[L7_3] = L5_3
      end
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
    end
  end
  L1_2(L2_2)
end
prewarmPool = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = poolInUse
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = destroyDuiWrapper
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L0_2 = {}
  poolInUse = L0_2
  L0_2 = ipairs
  L1_2 = poolAvailable
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = destroyDuiWrapper
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L0_2 = {}
  poolAvailable = L0_2
end
cleanupPool = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = sendDuiMessage
  L3_2 = A0_2
  L4_2 = {}
  L4_2.action = "setType"
  L5_2 = A1_2.type
  L4_2.type = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = sendDuiMessage
  L3_2 = A0_2
  L4_2 = {}
  L4_2.action = "setColor"
  L5_2 = A1_2.color
  L4_2.color = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = sendDuiMessage
  L3_2 = A0_2
  L4_2 = {}
  L4_2.action = "setLabel"
  L5_2 = A1_2.label
  L4_2.text = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = sendDuiMessage
  L3_2 = A0_2
  L4_2 = {}
  L4_2.action = "setCheckpointId"
  L5_2 = tostring
  L6_2 = A1_2.id
  if not L6_2 then
    L6_2 = 0
  end
  L5_2 = L5_2(L6_2)
  L4_2.id = L5_2
  L5_2 = L0_1
  L5_2 = #L5_2
  L5_2 = L5_2 <= 1
  L4_2.hide = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.image
  if L2_2 then
    L2_2 = sendDuiMessage
    L3_2 = A0_2
    L4_2 = {}
    L4_2.action = "setImage"
    L5_2 = A1_2.image
    L4_2.url = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2.texture
  if L2_2 then
    L2_2 = CommitRuntimeTexture
    L3_2 = A0_2.texture
    L2_2(L3_2)
  end
end
configureDui = L1_1
L1_1 = WaypointManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L0_1
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  L2_2 = config
  L2_2 = L2_2.defaults
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = A0_2.type
  if not L3_2 then
    L3_2 = "small"
  end
  L4_2 = A0_2.displayDistance
  if nil == L4_2 then
    A0_2.displayDistance = true
  end
  L4_2 = 99999.0
  L5_2 = A0_2.fadeDistance
  if not L5_2 then
    L5_2 = L2_2.fadeDistance
    if not L5_2 then
      L5_2 = L4_2
    end
  end
  L6_2 = A0_2.removeDistance
  L7_2 = {}
  L7_2.id = L1_2
  L8_2 = {}
  L8_2.id = L1_2
  L9_2 = A0_2.coords
  L8_2.coords = L9_2
  L8_2.type = L3_2
  L9_2 = A0_2.color
  if not L9_2 then
    L9_2 = L2_2.color
    if not L9_2 then
      L9_2 = "#f5a623"
    end
  end
  L8_2.color = L9_2
  L9_2 = A0_2.label
  if not L9_2 then
    L9_2 = L2_2.label
    if not L9_2 then
      L9_2 = "WAYPOINT"
    end
  end
  L8_2.label = L9_2
  L9_2 = A0_2.image
  L8_2.image = L9_2
  L9_2 = A0_2.size
  if not L9_2 then
    L9_2 = L2_2.size
    if not L9_2 then
      L9_2 = 1.0
    end
  end
  L8_2.size = L9_2
  L8_2.drawDistance = L4_2
  L9_2 = L4_2 * L4_2
  L8_2.drawDistanceSq = L9_2
  L8_2.fadeDistance = L5_2
  L9_2 = L5_2 * L5_2
  L8_2.fadeDistanceSq = L9_2
  L9_2 = A0_2.minHeight
  if not L9_2 then
    L9_2 = L2_2.minHeight
    if not L9_2 then
      L9_2 = 5.0
    end
  end
  L8_2.minHeight = L9_2
  L9_2 = A0_2.maxHeight
  if not L9_2 then
    L9_2 = L2_2.maxHeight
    if not L9_2 then
      L9_2 = 80.0
    end
  end
  L8_2.maxHeight = L9_2
  L9_2 = A0_2.groundZ
  if not L9_2 then
    L9_2 = A0_2.coords
    L9_2 = L9_2.z
    L10_2 = L2_2.groundZOffset
    if not L10_2 then
      L10_2 = -1.0
    end
    L9_2 = L9_2 + L10_2
  end
  L8_2.groundZ = L9_2
  L8_2.removeDistance = L6_2
  if L6_2 then
    L9_2 = L6_2 * L6_2
    if L9_2 then
      goto lbl_107
    end
  end
  L9_2 = nil
  ::lbl_107::
  L8_2.removeDistanceSq = L9_2
  L9_2 = A0_2.displayDistance
  L8_2.displayDistance = L9_2
  L9_2 = A0_2.deleteWhenNear
  if not L9_2 then
    L9_2 = false
  end
  L8_2.deleteWhenNear = L9_2
  L9_2 = A0_2.deleteWhenNearDistance
  if not L9_2 then
    L9_2 = 5.0
  end
  L8_2.deleteWhenNearDistance = L9_2
  L7_2.data = L8_2
  L7_2.dui = nil
  L7_2.duiId = nil
  L7_2.active = true
  L7_2.isRendering = false
  L7_2.lastDistance = nil
  L7_2.nextDistanceUpdate = nil
  L7_2._scale = nil
  L8_2 = acquireDui
  L8_2, L9_2 = L8_2()
  if L8_2 then
    L7_2.dui = L8_2
    L7_2.duiId = L9_2
    L7_2.isRendering = true
    L10_2 = configureDui
    L11_2 = L7_2.dui
    L12_2 = L7_2.data
    L10_2(L11_2, L12_2)
  end
  L10_2 = L0_1
  L10_2 = #L10_2
  L10_2 = L10_2 + 1
  L11_2 = L0_1
  L11_2[L10_2] = L7_2
  L11_2 = waypointsById
  L11_2[L1_2] = L7_2
  L11_2 = idToIndex
  L11_2[L1_2] = L10_2
  return L1_2
end
L1_1.create = L2_1
L1_1 = WaypointManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = waypointsById
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = A1_2.coords
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.coords
    L3_2.coords = L4_2
  end
  L3_2 = A1_2.color
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.color
    L3_2.color = L4_2
    L3_2 = L2_2.dui
    if L3_2 then
      L3_2 = sendDuiMessage
      L4_2 = L2_2.dui
      L5_2 = {}
      L5_2.action = "setColor"
      L6_2 = A1_2.color
      L5_2.color = L6_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A1_2.label
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.label
    L3_2.label = L4_2
    L3_2 = L2_2.dui
    if L3_2 then
      L3_2 = sendDuiMessage
      L4_2 = L2_2.dui
      L5_2 = {}
      L5_2.action = "setLabel"
      L6_2 = A1_2.label
      L5_2.text = L6_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A1_2.deleteWhenNear
  if nil ~= L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.deleteWhenNear
    L3_2.deleteWhenNear = L4_2
  end
  L3_2 = A1_2.deleteWhenNearDistance
  if nil ~= L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.deleteWhenNearDistance
    if not L4_2 then
      L4_2 = 5.0
    end
    L3_2.deleteWhenNearDistance = L4_2
  end
  L3_2 = A1_2.image
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.image
    L3_2.image = L4_2
    L3_2 = L2_2.dui
    if L3_2 then
      L3_2 = sendDuiMessage
      L4_2 = L2_2.dui
      L5_2 = {}
      L5_2.action = "setImage"
      L6_2 = A1_2.image
      L5_2.url = L6_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A1_2.size
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.size
    L3_2.size = L4_2
  end
  L3_2 = A1_2.drawDistance
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.drawDistance
    L3_2.drawDistance = L4_2
    L3_2 = L2_2.data
    L4_2 = A1_2.drawDistance
    L5_2 = A1_2.drawDistance
    L4_2 = L4_2 * L5_2
    L3_2.drawDistanceSq = L4_2
  end
  L3_2 = A1_2.fadeDistance
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.fadeDistance
    L3_2.fadeDistance = L4_2
    L3_2 = L2_2.data
    L4_2 = A1_2.fadeDistance
    L5_2 = A1_2.fadeDistance
    L4_2 = L4_2 * L5_2
    L3_2.fadeDistanceSq = L4_2
  end
  L3_2 = A1_2.minHeight
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.minHeight
    L3_2.minHeight = L4_2
  end
  L3_2 = A1_2.maxHeight
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.maxHeight
    L3_2.maxHeight = L4_2
  end
  L3_2 = A1_2.groundZ
  if L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.groundZ
    L3_2.groundZ = L4_2
  end
  L3_2 = A1_2.removeDistance
  if nil ~= L3_2 then
    L3_2 = L2_2.data
    L4_2 = A1_2.removeDistance
    if not L4_2 then
      L4_2 = 7.0
    end
    L3_2.removeDistance = L4_2
    L3_2 = L2_2.data
    L4_2 = A1_2.removeDistance
    if L4_2 then
      L4_2 = A1_2.removeDistance
      L5_2 = A1_2.removeDistance
      L4_2 = L4_2 * L5_2
      if L4_2 then
        goto lbl_146
      end
    end
    L4_2 = nil
    ::lbl_146::
    L3_2.removeDistanceSq = L4_2
  end
end
L1_1.update = L2_1
L1_1 = WaypointManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.isRendering
  if L1_2 then
    L1_2 = A0_2.dui
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = acquireDui
  L1_2, L2_2 = L1_2()
  if not L1_2 then
    L3_2 = false
    return L3_2
  end
  A0_2.dui = L1_2
  A0_2.duiId = L2_2
  A0_2.isRendering = true
  L3_2 = configureDui
  L4_2 = A0_2.dui
  L5_2 = A0_2.data
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
L1_1.acquireForRendering = L2_1
L1_1 = WaypointManager
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.isRendering
  if not L1_2 then
    return
  end
  L1_2 = A0_2.duiId
  if L1_2 then
    L1_2 = releaseDui
    L2_2 = A0_2.duiId
    L1_2(L2_2)
  end
  A0_2.dui = nil
  A0_2.duiId = nil
  A0_2.isRendering = false
  A0_2.lastDistance = nil
  A0_2.nextDistanceUpdate = nil
  A0_2._scale = nil
end
L1_1.releaseFromRendering = L2_1
L1_1 = WaypointManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
  end
  L1_2 = waypointsById
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = print
    L3_2 = "[STRIANO MAP] Waypoint non trovato:"
    L4_2 = A0_2
    L5_2 = type
    L6_2 = A0_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_2 = false
    return L2_2
  end
  L1_2.active = false
  L2_2 = L1_2.isRendering
  if L2_2 then
    L2_2 = L1_2.duiId
    if L2_2 then
      L2_2 = releaseDui
      L3_2 = L1_2.duiId
      L2_2(L3_2)
    end
  end
  L2_2 = idToIndex
  L2_2 = L2_2[A0_2]
  L3_2 = L0_1
  L3_2 = #L3_2
  if L2_2 and L2_2 ~= L3_2 then
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L5_2 = L0_1
      L5_2[L2_2] = L4_2
      L5_2 = idToIndex
      L6_2 = L4_2.id
      L5_2[L6_2] = L2_2
    end
  end
  if L3_2 > 0 then
    L4_2 = L0_1
    L4_2[L3_2] = nil
  end
  L4_2 = waypointsById
  L4_2[A0_2] = nil
  L4_2 = idToIndex
  L4_2[A0_2] = nil
  L4_2 = currentlyRendering
  L4_2[A0_2] = nil
  L4_2 = shouldRender
  L4_2 = #L4_2
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = shouldRender
    L8_2 = L8_2[L7_2]
    if L8_2 ~= L1_2 then
      L8_2 = shouldRender
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.id
      if L8_2 ~= A0_2 then
        goto lbl_75
      end
    end
    L8_2 = table
    L8_2 = L8_2.remove
    L9_2 = shouldRender
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    ::lbl_75::
  end
  L4_2 = true
  return L4_2
end
L1_1.remove = L2_1
L1_1 = WaypointManager
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1
  L0_2 = #L0_2
  L1_2 = 1
  L2_2 = -1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L5_2 = WaypointManager
      L5_2 = L5_2.remove
      L6_2 = L4_2.id
      L5_2(L6_2)
    end
  end
end
L1_1.removeAll = L2_1
L1_1 = WaypointManager
function L2_1(A0_2)
  local L1_2
  L1_2 = waypointsById
  L1_2 = L1_2[A0_2]
  return L1_2
end
L1_1.get = L2_1
L1_1 = WaypointManager
function L2_1()
  local L0_2, L1_2
  L0_2 = waypointsById
  return L0_2
end
L1_1.getAll = L2_1
L1_1 = WaypointManager
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
L1_1.getArray = L2_1
L1_1 = WaypointManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = A0_2.active
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_8::
  L2_2 = A0_2.data
  L3_2 = L2_2.coords
  L3_2 = A1_2 - L3_2
  L4_2 = L3_2.x
  L5_2 = L3_2.x
  L4_2 = L4_2 * L5_2
  L5_2 = L3_2.y
  L6_2 = L3_2.y
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = L3_2.z
  L6_2 = L3_2.z
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = true
  return L5_2
end
L1_1.shouldRender = L2_1
L1_1 = WaypointManager
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  if nil == A0_2 then
    return
  end
  L3_2 = A0_2.active
  if L3_2 then
    L3_2 = A0_2.dui
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_12::
  L3_2 = pcall
  L4_2 = IsDuiAvailable
  L5_2 = A0_2.dui
  L5_2 = L5_2.dui
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2.dui
    L4_2 = L4_2.dictName
    if L4_2 then
      L4_2 = A0_2.dui
      L4_2 = L4_2.txtName
      if L4_2 then
        goto lbl_29
      end
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_29::
  L4_2 = config
  L4_2 = L4_2.rendering
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = A0_2.data
  L6_2 = L5_2.coords
  L6_2 = A1_2 - L6_2
  L7_2 = L6_2.x
  L8_2 = L6_2.x
  L7_2 = L7_2 * L8_2
  L8_2 = L6_2.y
  L9_2 = L6_2.y
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L6_2.z
  L9_2 = L6_2.z
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L5_2.coords
  L8_2 = A2_2 - L8_2
  L9_2 = L8_2.x
  L10_2 = L8_2.x
  L9_2 = L9_2 * L10_2
  L10_2 = L8_2.y
  L11_2 = L8_2.y
  L10_2 = L10_2 * L11_2
  L9_2 = L9_2 + L10_2
  L10_2 = L8_2.z
  L11_2 = L8_2.z
  L10_2 = L10_2 * L11_2
  L9_2 = L9_2 + L10_2
  L10_2 = math
  L10_2 = L10_2.sqrt
  L11_2 = L7_2
  L10_2 = L10_2(L11_2)
  L11_2 = 255
  L12_2 = 700.0
  L13_2 = L5_2.coords
  if L10_2 > L12_2 then
    L14_2 = L5_2.coords
    L14_2 = L14_2.x
    L15_2 = A1_2.x
    L14_2 = L14_2 - L15_2
    L15_2 = L5_2.coords
    L15_2 = L15_2.y
    L16_2 = A1_2.y
    L15_2 = L15_2 - L16_2
    L16_2 = L5_2.coords
    L16_2 = L16_2.z
    L17_2 = A1_2.z
    L16_2 = L16_2 - L17_2
    L17_2 = math
    L17_2 = L17_2.sqrt
    L18_2 = L14_2 * L14_2
    L19_2 = L15_2 * L15_2
    L18_2 = L18_2 + L19_2
    L19_2 = L16_2 * L16_2
    L18_2 = L18_2 + L19_2
    L17_2 = L17_2(L18_2)
    L18_2 = 0.001
    if L17_2 > L18_2 then
      L14_2 = L14_2 / L17_2
      L15_2 = L15_2 / L17_2
      L16_2 = L16_2 / L17_2
      L18_2 = vec3
      L19_2 = A1_2.x
      L20_2 = L14_2 * L12_2
      L19_2 = L19_2 + L20_2
      L20_2 = A1_2.y
      L21_2 = L15_2 * L12_2
      L20_2 = L20_2 + L21_2
      L21_2 = A1_2.z
      L22_2 = L16_2 * L12_2
      L21_2 = L21_2 + L22_2
      L18_2 = L18_2(L19_2, L20_2, L21_2)
      L13_2 = L18_2
    end
  end
  L14_2 = L5_2.deleteWhenNearDistance
  if not L14_2 then
    L14_2 = 5.0
  end
  L15_2 = vec3
  L16_2 = L5_2.coords
  L16_2 = L16_2.x
  L17_2 = L5_2.coords
  L17_2 = L17_2.y
  L18_2 = L5_2.groundZ
  if not L18_2 then
    L18_2 = L5_2.coords
    L18_2 = L18_2.z
  end
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = A2_2 - L15_2
  L16_2 = #L16_2
  if L14_2 >= L16_2 then
    L16_2 = WaypointManager
    L16_2 = L16_2.remove
    L17_2 = A0_2.id
    L16_2(L17_2)
    L16_2 = false
    return L16_2
  end
  L16_2 = 0.075
  L17_2 = math
  L17_2 = L17_2.max
  L18_2 = 0.075
  L19_2 = math
  L19_2 = L19_2.min
  L20_2 = L16_2
  L21_2 = 0.09
  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L19_2(L20_2, L21_2)
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L16_2 = L17_2
  L17_2 = A0_2._scale
  if not L17_2 then
    L17_2 = L16_2
  end
  A0_2._scale = L17_2
  L17_2 = A0_2._scale
  L18_2 = A0_2._scale
  L18_2 = L16_2 - L18_2
  L18_2 = L18_2 * 0.08
  L17_2 = L17_2 + L18_2
  A0_2._scale = L17_2
  L17_2 = L5_2.type
  if "checkpoint" == L17_2 then
    L17_2 = A0_2._scale
    L17_2 = L17_2 * 1.2
    L18_2 = A0_2._scale
    L19_2 = L4_2.checkpointAspectRatio
    if not L19_2 then
      L19_2 = 2.0
    end
    L18_2 = L18_2 * L19_2
    L19_2 = nil
    if L10_2 > L12_2 then
      L19_2 = L13_2
    else
      L20_2 = vec3
      L21_2 = L5_2.coords
      L21_2 = L21_2.x
      L22_2 = L5_2.coords
      L22_2 = L22_2.y
      L23_2 = L5_2.groundZ
      L24_2 = L18_2 * 0.5
      L23_2 = L23_2 + L24_2
      L23_2 = L23_2 + 2.0
      L20_2 = L20_2(L21_2, L22_2, L23_2)
      L19_2 = L20_2
    end
    L20_2 = drawTexturedTriangle
    L21_2 = L19_2
    L22_2 = L17_2
    L23_2 = L18_2
    L24_2 = 255
    L25_2 = 255
    L26_2 = 255
    L27_2 = L11_2
    L28_2 = A0_2.dui
    L28_2 = L28_2.dictName
    L29_2 = A0_2.dui
    L29_2 = L29_2.txtName
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  else
    L17_2 = A0_2._scale
    L17_2 = L17_2 * 1.15
    L18_2 = A0_2._scale
    L19_2 = L4_2.smallAspectRatio
    if not L19_2 then
      L19_2 = 2.0
    end
    L18_2 = L18_2 * L19_2
    L19_2 = nil
    if L10_2 > L12_2 then
      L19_2 = L13_2
    else
      L20_2 = vec3
      L21_2 = L5_2.coords
      L21_2 = L21_2.x
      L22_2 = L5_2.coords
      L22_2 = L22_2.y
      L23_2 = L5_2.coords
      L23_2 = L23_2.z
      L23_2 = L23_2 + 2.0
      L20_2 = L20_2(L21_2, L22_2, L23_2)
      L19_2 = L20_2
    end
    L20_2 = drawTexturedTriangle
    L21_2 = L19_2
    L22_2 = L17_2
    L23_2 = L18_2
    L24_2 = 255
    L25_2 = 255
    L26_2 = 255
    L27_2 = L11_2
    L28_2 = A0_2.dui
    L28_2 = L28_2.dictName
    L29_2 = A0_2.dui
    L29_2 = L29_2.txtName
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  end
  L17_2 = L5_2.removeDistanceSq
  if L17_2 then
    L17_2 = L5_2.removeDistanceSq
    if L9_2 <= L17_2 then
      L17_2 = WaypointManager
      L17_2 = L17_2.remove
      L18_2 = A0_2.id
      L17_2(L18_2)
      L17_2 = false
      return L17_2
    end
  end
  L17_2 = true
  return L17_2
end
L1_1.render = L2_1
function L1_1()
  local L0_2, L1_2
  L0_2 = drawRunning
  if L0_2 then
    return
  end
  drawRunning = true
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = shouldRender
      L0_3 = #L0_3
      if not (L0_3 > 0) then
        break
      end
      L0_3 = GetFinalRenderedCamCoord
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L2_3 = shouldRender
      L3_3 = 1
      L4_3 = #L2_3
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = L2_3[L6_3]
        if L7_3 then
          L8_3 = WaypointManager
          L8_3 = L8_3.render
          L9_3 = L7_3
          L10_3 = L0_3
          L11_3 = L1_3
          L8_3(L9_3, L10_3, L11_3)
        end
      end
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
    end
    drawRunning = false
  end
  L0_2(L1_2)
end
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = prewarmPool
  L1_2 = MAX_DUI_POOL
  L0_2(L1_2)
end
L2_1(L3_1)
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = {}
    L2_2 = {}
    L3_2 = GetFinalRenderedCamCoord
    L3_2 = L3_2()
    L4_2 = WaypointManager
    L4_2 = L4_2.getArray
    L4_2 = L4_2()
    L5_2 = 1
    L6_2 = #L4_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2[L8_2]
      L10_2 = WaypointManager
      L10_2 = L10_2.shouldRender
      L11_2 = L9_2
      L12_2 = L3_2
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        L10_2 = L9_2.isRendering
        if not L10_2 then
          L10_2 = WaypointManager
          L10_2 = L10_2.acquireForRendering
          L11_2 = L9_2
          L10_2(L11_2)
        end
        L10_2 = L9_2.isRendering
        if L10_2 then
          L10_2 = #L1_2
          L10_2 = L10_2 + 1
          L1_2[L10_2] = L9_2
          L10_2 = L9_2.id
          L2_2[L10_2] = true
        end
      end
    end
    L5_2 = pairs
    L6_2 = currentlyRendering
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2 in L5_2, L6_2, L7_2, L8_2 do
      L10_2 = L2_2[L9_2]
      if not L10_2 then
        L10_2 = WaypointManager
        L10_2 = L10_2.get
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L11_2 = WaypointManager
          L11_2 = L11_2.releaseFromRendering
          L12_2 = L10_2
          L11_2(L12_2)
        end
      end
    end
    shouldRender = L1_2
    currentlyRendering = L2_2
    L5_2 = shouldRender
    L5_2 = #L5_2
    if L5_2 > 0 then
      L5_2 = drawRunning
      if not L5_2 then
        L5_2 = L1_1
        L5_2()
      end
    end
    L5_2 = GetEntitySpeed
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    if 0.0 == L5_2 then
      L5_2 = Wait
      L6_2 = 500
      L5_2(L6_2)
    else
      L5_2 = Wait
      L6_2 = 25
      L5_2(L6_2)
    end
  end
end
L2_1(L3_1)
L2_1 = RegisterNetEvent
L3_1 = "sleepless_waypoints:create"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = WaypointManager
  L2_2 = L2_2.create
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = serverToClientId
  L3_2[A0_2] = L2_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "sleepless_waypoints:update"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = serverToClientId
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = WaypointManager
    L3_2 = L3_2.update
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "sleepless_waypoints:remove"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = serverToClientId
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = WaypointManager
    L2_2 = L2_2.remove
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = serverToClientId
    L2_2[A0_2] = nil
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "sleepless_waypoints:removeAll"
function L4_1()
  local L0_2, L1_2
  L0_2 = WaypointManager
  L0_2 = L0_2.removeAll
  L0_2()
  L0_2 = {}
  serverToClientId = L0_2
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = WaypointManager
  L1_2 = L1_2.removeAll
  L1_2()
  L1_2 = cleanupPool
  L1_2()
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "GetActiveWaypoints"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.active
    if L7_2 then
      L7_2 = L6_2.data
      if L7_2 then
        L7_2 = L6_2.data
        L7_2 = L7_2.coords
        if L7_2 then
          L7_2 = #L0_2
          L7_2 = L7_2 + 1
          L8_2 = {}
          L9_2 = L6_2.id
          L8_2.id = L9_2
          L9_2 = L6_2.data
          L9_2 = L9_2.coords
          L8_2.coords = L9_2
          L9_2 = L6_2.data
          L9_2 = L9_2.label
          L8_2.label = L9_2
          L9_2 = L6_2.data
          L9_2 = L9_2.displayDistance
          L8_2.displayDistance = L9_2
          L0_2[L7_2] = L8_2
        end
      end
    end
  end
  return L0_2
end
L2_1(L3_1, L4_1)
