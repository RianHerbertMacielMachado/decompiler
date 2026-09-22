local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
Safe = L0_1
L0_1 = setmetatable
L1_1 = Safe
L2_1 = {}
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = setmetatable
  L3_2 = {}
  L4_2 = {}
  function L5_2(A0_3, A1_3)
    local L2_3
    function L2_3(...)
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = GetResourceState
      L1_4 = A1_2
      L0_4 = L0_4(L1_4)
      if not L0_4 or "started" ~= L0_4 then
        L1_4 = nil
        return L1_4
      end
      L1_4 = pcall
      function L2_4(...)
        local L0_5, L1_5
        L0_5 = exports
        L1_5 = A1_2
        L0_5 = L0_5[L1_5]
        L1_5 = A1_3
        L0_5 = L0_5[L1_5]
        L1_5 = ...
        return L0_5(L1_5)
      end
      L3_4 = ...
      L1_4, L2_4 = L1_4(L2_4, L3_4)
      if not L1_4 then
        L3_4 = true
        return L3_4
      end
      L3_4 = L2_4 or L3_4
      if nil == L2_4 or not L2_4 then
        L3_4 = nil
      end
      return L3_4
    end
    return L2_3
  end
  L4_2.__index = L5_2
  return L2_2(L3_2, L4_2)
end
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2
  L3_2 = HasAnimDictLoaded
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = RequestAnimDict
    L4_2 = L2_2
    L3_2(L4_2)
    while true do
      L3_2 = HasAnimDictLoaded
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 10
      L3_2(L4_2)
    end
  end
end
LoadAnim = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = IsPedHuman
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    if nil == A3_2 then
      A3_2 = 1
    end
    if nil ~= A4_2 then
      L5_2 = A4_2
    end
    if nil ~= L5_2 then
      L6_2 = IsEntityPlayingAnim
      L7_2 = L5_2
      L8_2 = A0_2
      L9_2 = A1_2
      L10_2 = 3
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      if not L6_2 then
        L6_2 = LoadAnim
        L7_2 = A0_2
        L6_2(L7_2)
        L6_2 = TaskPlayAnim
        L7_2 = L5_2
        L8_2 = A0_2
        L9_2 = A1_2
        L10_2 = 5.0
        L11_2 = 5.0
        L12_2 = A2_2
        L13_2 = A3_2
        L14_2 = false
        L15_2 = false
        L16_2 = false
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
    end
  end
end
faiAnim = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = print
    L2_2 = "MODEL IS NIL"
    L1_2(L2_2)
    return
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = IsModelValid
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_32
    end
  end
  L2_2 = print
  L3_2 = "MODEL NOT EXIST "
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_32::
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
      L4_2 = "NOT EXIST (time out) "
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      return
    end
  end
end
RequestModelStriano = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = 3.0
  if nil ~= A3_2 then
    L5_2 = A3_2
  end
  L6_2 = HasNamedPtfxAssetLoaded
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestNamedPtfxAsset
    L7_2 = A0_2
    L6_2(L7_2)
  end
  while true do
    L6_2 = HasNamedPtfxAssetLoaded
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = SetPtfxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = UseParticleFxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if nil ~= A4_2 then
    L6_2 = A4_2
  end
  L7_2 = StartParticleFxLoopedAtCoord
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L6_2.x
  L11_2 = L6_2.y
  L12_2 = L6_2.z
  L13_2 = L5_2
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  return L7_2
end
PlayEffect = L0_1
currentZone = 0
pedana = nil
L0_1 = {}
myWaypoints = L0_1
lastZone = ""
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2 * 100
  L2_2 = L2_2 + 0.5
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 / 100
  return L1_2
end
roundNum = L0_1
isCamMoving = false
topDownCam = nil
camActive = false
camPos = nil
camTargetPos = nil
lastPosToTurn = nil
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = SetPauseMenuActive
    L1_2 = false
    L0_2(L1_2)
  end
end
L0_1(L1_1)
hidePlayers = false
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if nil == A0_2 then
    A0_2 = false
  end
  hidePlayers = A0_2
  L1_2 = hidePlayers
  if L1_2 then
    L1_2 = ipairs
    L2_2 = GetActivePlayers
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = GetPlayerPed
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = PlayerPedId
      L8_2 = L8_2()
      if L7_2 ~= L8_2 then
        L8_2 = SetEntityVisible
        L9_2 = L7_2
        L10_2 = true
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = SetEntityCollision
        L9_2 = L7_2
        L10_2 = true
        L11_2 = true
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = NetworkSetEntityInvisibleToNetwork
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
    end
  end
end
ToggleHidePlayers = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = camActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = hidePlayers
      if L0_3 then
        L0_3 = camActive
        if L0_3 then
          L0_3 = ipairs
          L1_3 = GetActivePlayers
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
          L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
            L6_3 = GetPlayerPed
            L7_3 = L5_3
            L6_3 = L6_3(L7_3)
            L7_3 = PlayerPedId
            L7_3 = L7_3()
            if L6_3 ~= L7_3 then
              L7_3 = SetEntityVisible
              L8_3 = L6_3
              L9_3 = false
              L10_3 = false
              L7_3(L8_3, L9_3, L10_3)
              L7_3 = SetEntityCollision
              L8_3 = L6_3
              L9_3 = false
              L10_3 = false
              L7_3(L8_3, L9_3, L10_3)
              L7_3 = NetworkSetEntityInvisibleToNetwork
              L8_3 = L6_3
              L9_3 = true
              L7_3(L8_3, L9_3)
              L7_3 = SetPedCanBeTargetted
              L8_3 = L6_3
              L9_3 = false
              L7_3(L8_3, L9_3)
              L7_3 = SetEntityAlpha
              L8_3 = L6_3
              L9_3 = 0
              L10_3 = false
              L7_3(L8_3, L9_3, L10_3)
            end
          end
      end
      else
        L0_3 = ipairs
        L1_3 = GetActivePlayers
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
        L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
          L6_3 = GetPlayerPed
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = PlayerPedId
          L7_3 = L7_3()
          if L6_3 ~= L7_3 then
            L7_3 = SetEntityVisible
            L8_3 = L6_3
            L9_3 = true
            L10_3 = false
            L7_3(L8_3, L9_3, L10_3)
            L7_3 = SetEntityCollision
            L8_3 = L6_3
            L9_3 = true
            L10_3 = true
            L7_3(L8_3, L9_3, L10_3)
            L7_3 = NetworkSetEntityInvisibleToNetwork
            L8_3 = L6_3
            L9_3 = false
            L7_3(L8_3, L9_3)
            L7_3 = SetPedCanBeTargetted
            L8_3 = L6_3
            L9_3 = true
            L7_3(L8_3, L9_3)
            L7_3 = ResetEntityAlpha
            L8_3 = L6_3
            L7_3(L8_3)
            L7_3 = SetEntityVisible
            L8_3 = L6_3
            L9_3 = true
            L10_3 = false
            L7_3(L8_3, L9_3, L10_3)
            L7_3 = SetEntityCollision
            L8_3 = L6_3
            L9_3 = true
            L10_3 = true
            L7_3(L8_3, L9_3, L10_3)
          end
        end
        loopActive = false
        return
      end
    end
  end
  L0_2(L1_2)
end
LoopHidePlayers = L0_1
loopActive = false
function L0_1()
  local L0_2, L1_2
  L0_2 = loopActive
  if L0_2 then
    return
  end
  loopActive = true
  L0_2 = LoopHidePlayers
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3
    while true do
      L0_3 = myWaypoints
      L0_3 = #L0_3
      if not (L0_3 > 0) then
        break
      end
      L0_3 = false
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
      L2_3 = GetFinalRenderedCamCoord
      L2_3 = L2_3()
      L3_3 = myWaypoints
      L3_3 = #L3_3
      L4_3 = 1
      L5_3 = -1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = myWaypoints
        L7_3 = L7_3[L6_3]
        L8_3 = L7_3.pos
        L9_3 = L1_3 - L8_3
        L9_3 = #L9_3
        if L9_3 > 10.0 then
          L0_3 = true
          L10_3 = 7.0
          L11_3 = 900.0
          L12_3 = camActive
          if L12_3 then
            L12_3 = 200
            if L12_3 then
              goto lbl_35
            end
          end
          L12_3 = 100
          ::lbl_35::
          L13_3 = 700.0
          L14_3 = L8_3
          L15_3 = L8_3 - L2_3
          L16_3 = #L15_3
          if L13_3 < L16_3 then
            L17_3 = L15_3 / L16_3
            L18_3 = L17_3 * L13_3
            L14_3 = L2_3 + L18_3
          end
          L17_3 = DrawMarker
          L18_3 = 1
          L19_3 = L14_3
          L20_3 = 0.0
          L21_3 = 0.0
          L22_3 = 0.0
          L23_3 = 0
          L24_3 = 0.0
          L25_3 = 0.0
          L26_3 = L10_3
          L27_3 = L10_3
          L28_3 = L11_3
          L29_3 = 250
          L30_3 = 250
          L31_3 = 0
          L32_3 = L12_3
          L33_3 = false
          L34_3 = true
          L35_3 = 2
          L36_3 = false
          L37_3 = false
          L38_3 = false
          L39_3 = false
          L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
          L17_3 = DrawMarker
          L18_3 = 1
          L19_3 = L14_3
          L20_3 = 0.0
          L21_3 = 0.0
          L22_3 = 0.0
          L23_3 = 0
          L24_3 = 0.0
          L25_3 = 0.0
          L26_3 = L10_3 / 4.0
          L27_3 = L10_3 / 4.0
          L28_3 = L11_3 + 10.0
          L29_3 = 0
          L30_3 = 0
          L31_3 = 0
          L32_3 = L12_3 - 50
          L33_3 = false
          L34_3 = true
          L35_3 = 2
          L36_3 = false
          L37_3 = false
          L38_3 = false
          L39_3 = false
          L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
        else
          L0_3 = true
          L10_3 = GetSafeCoordFromAbove
          L11_3 = L8_3
          L10_3 = L10_3(L11_3)
          L11_3 = PlayEffect
          L12_3 = "scr_agencyheistb"
          L13_3 = "scr_agency3b_linger_smoke"
          L14_3 = L10_3
          L15_3 = 3.0
          L11_3(L12_3, L13_3, L14_3, L15_3)
          L11_3 = PlaySoundFrontend
          L12_3 = -1
          L13_3 = "Zoom_Right"
          L14_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
          L15_3 = 1
          L11_3(L12_3, L13_3, L14_3, L15_3)
          L11_3 = exports
          L11_3 = L11_3.striano_map
          L12_3 = L11_3
          L11_3 = L11_3.remove
          L13_3 = L7_3.idway
          L11_3(L12_3, L13_3)
          L11_3 = RemoveWaypointIndicator
          L12_3 = tostring
          L13_3 = L7_3.idway
          L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L12_3(L13_3)
          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
          L11_3 = table
          L11_3 = L11_3.remove
          L12_3 = myWaypoints
          L13_3 = L6_3
          L11_3(L12_3, L13_3)
        end
      end
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
      if not L0_3 then
        L3_3 = Wait
        L4_3 = 1000
        L3_3(L4_3)
      end
      L3_3 = myWaypoints
      L3_3 = #L3_3
      if 0 == L3_3 then
        loopActive = false
        return
      end
    end
  end
  L0_2(L1_2)
end
loopWayPoint = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = camActive
  if not L0_2 then
    L0_2 = ToggleHidePlayers
    L1_2 = true
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    camHeight = 5
    L2_2 = vector3
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L5_2 = L1_2.z
    L6_2 = camHeight
    L5_2 = L5_2 + L6_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    camPos = L2_2
    L2_2 = camPos
    camTargetPos = L2_2
    L2_2 = CreateCam
    L3_2 = "DEFAULT_SCRIPTED_CAMERA"
    L4_2 = true
    L2_2 = L2_2(L3_2, L4_2)
    topDownCam = L2_2
    L2_2 = SetCamCoord
    L3_2 = topDownCam
    L4_2 = camPos
    L4_2 = L4_2.x
    L5_2 = camPos
    L5_2 = L5_2.y
    L6_2 = camPos
    L6_2 = L6_2.z
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = SetCamRot
    L3_2 = topDownCam
    L4_2 = -90.0
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = SetCamFov
    L3_2 = topDownCam
    L4_2 = 60.0
    L2_2(L3_2, L4_2)
    L2_2 = RenderScriptCams
    L3_2 = true
    L4_2 = false
    L5_2 = 0
    L6_2 = true
    L7_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    camActive = true
    L2_2 = PlaySoundFrontend
    L3_2 = -1
    L4_2 = "WOODEN_DOOR_CLOSED_AT"
    L5_2 = "0"
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = loopCamMappa
    L2_2()
    while true do
      L2_2 = camHeight
      L3_2 = camHeight_Default
      if not (L2_2 < L3_2) then
        break
      end
      L2_2 = camActive
      if not L2_2 then
        break
      end
      L2_2 = camHeight
      L2_2 = L2_2 + 1.0
      camHeight = L2_2
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
  else
    L0_2 = DeActiveStrianoCam
    L0_2()
  end
end
ActiveStrianoCam = L0_1
mylastblipid = 0
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CancelAnimF
  L1_2()
  L1_2 = topDownCam
  if nil ~= L1_2 then
    L1_2 = RenderScriptCams
    L2_2 = false
    L3_2 = false
    L4_2 = 0
    L5_2 = true
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = DestroyCam
    L2_2 = topDownCam
    L3_2 = false
    L1_2(L2_2, L3_2)
    topDownCam = nil
    L1_2 = ToggleHidePlayers
    L2_2 = false
    L1_2(L2_2)
  end
  currentZone = 0
  L1_2 = pedana
  if nil ~= L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = pedana
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = pedana
      L3_2 = true
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DeleteEntity
      L2_2 = pedana
      L1_2(L2_2)
    end
  end
  lastZone = ""
  isCamMoving = false
  camActive = false
  L1_2 = onDeactivateMap
  L1_2()
end
DeActiveStrianoCam = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = vector3
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = vector3
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L5_2 = L5_2 - 1000.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = StartShapeTestRay
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = 1
  L11_2 = -1
  L12_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetShapeTestResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  if 1 == L5_2 then
    L9_2 = true
    L10_2 = L6_2
    return L9_2, L10_2
  end
  L9_2 = false
  L10_2 = vector3
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  return L9_2, L10_2, L11_2, L12_2, L13_2
end
RaycastFromCamToGround = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = onMapStart
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = nil
    while true do
      L2_3 = camActive
      if not L2_3 then
        break
      end
      L2_3 = topDownCam
      if nil == L2_3 then
        break
      end
      L2_3 = IsDisabledControlPressed
      L3_3 = 0
      L4_3 = 177
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        break
      end
      L2_3 = IsDisabledControlPressed
      L3_3 = 0
      L4_3 = 200
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        break
      end
      L2_3 = IsDisabledControlPressed
      L3_3 = 0
      L4_3 = 25
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        break
      end
      L2_3 = IsControlPressed
      L3_3 = 0
      L4_3 = 177
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        break
      end
      L2_3 = IsControlPressed
      L3_3 = 0
      L4_3 = 200
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        break
      end
      L2_3 = IsControlPressed
      L3_3 = 0
      L4_3 = 25
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        break
      end
      L2_3 = OpenMapLegendLoop
      L2_3()
      L2_3 = GetFrameTime
      L2_3 = L2_3()
      L3_3 = DisableAllControlActions
      L4_3 = 0
      L3_3(L4_3)
      L3_3 = DisableAllControlActions
      L4_3 = 1
      L3_3(L4_3)
      L3_3 = DisableAllControlActions
      L4_3 = 2
      L3_3(L4_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 1
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 2
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 24
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 25
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 257
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = GetDisabledControlNormal
      L4_3 = 0
      L5_3 = 1
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = GetDisabledControlNormal
      L5_3 = 0
      L6_3 = 2
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = GetEntityCoords
      L6_3 = L0_3
      L5_3 = L5_3(L6_3)
      L6_3 = camPos
      if not L6_3 then
        L6_3 = GetCamCoord
        L7_3 = topDownCam
        L6_3 = L6_3(L7_3)
        camPos = L6_3
      end
      L6_3 = camTargetPos
      if not L6_3 then
        L6_3 = camPos
        camTargetPos = L6_3
      end
      L6_3 = camPos
      L6_3 = L6_3 - L5_3
      L6_3 = #L6_3
      L7_3 = L6_3 / 40.0
      L7_3 = 1.0 + L7_3
      L8_3 = BASE_SPEED
      L8_3 = L8_3 * L7_3
      L8_3 = L8_3 * L2_3
      L9_3 = 550.0
      L10_3 = startCamPos
      if not L10_3 then
        L10_3 = camTargetPos
        startCamPos = L10_3
      end
      L10_3 = math
      L10_3 = L10_3.abs
      L11_3 = L3_3
      L10_3 = L10_3(L11_3)
      L11_3 = 0.001
      if not (L10_3 > L11_3) then
        L10_3 = math
        L10_3 = L10_3.abs
        L11_3 = L4_3
        L10_3 = L10_3(L11_3)
        L11_3 = 0.001
        if not (L10_3 > L11_3) then
          goto lbl_157
        end
      end
      L10_3 = vector3
      L11_3 = camTargetPos
      L11_3 = L11_3.x
      L12_3 = L3_3 * L8_3
      L11_3 = L11_3 + L12_3
      L12_3 = camTargetPos
      L12_3 = L12_3.y
      L13_3 = L4_3 * L8_3
      L12_3 = L12_3 - L13_3
      L13_3 = camTargetPos
      L13_3 = L13_3.z
      L10_3 = L10_3(L11_3, L12_3, L13_3)
      camTargetPos = L10_3
      ::lbl_157::
      L10_3 = IsDisabledControlPressed
      L11_3 = 0
      L12_3 = 241
      L10_3 = L10_3(L11_3, L12_3)
      if L10_3 then
        L10_3 = camHeight
        L11_3 = ZOOM_SPEED
        L10_3 = L10_3 - L11_3
        camHeight = L10_3
        L10_3 = IsControlPressed
        L11_3 = 0
        L12_3 = 21
        L10_3 = L10_3(L11_3, L12_3)
        if L10_3 then
          L10_3 = FOVcam
          L10_3 = L10_3 - 0.2
          FOVcam = L10_3
          L10_3 = FOVcam
          if L10_3 < 60 then
            FOVcam = 60
          end
        end
      else
        L10_3 = IsDisabledControlPressed
        L11_3 = 0
        L12_3 = 242
        L10_3 = L10_3(L11_3, L12_3)
        if L10_3 then
          L10_3 = camHeight
          L11_3 = ZOOM_SPEED
          L10_3 = L10_3 + L11_3
          camHeight = L10_3
          L10_3 = IsControlPressed
          L11_3 = 0
          L12_3 = 21
          L10_3 = L10_3(L11_3, L12_3)
          if L10_3 then
            L10_3 = FOVcam
            L10_3 = L10_3 + 0.2
            FOVcam = L10_3
            L10_3 = FOVcam
            if L10_3 > 100 then
              FOVcam = 100
            end
          end
        end
      end
      L10_3 = math
      L10_3 = L10_3.max
      L11_3 = MIN_HEIGHT
      L12_3 = math
      L12_3 = L12_3.min
      L13_3 = MAX_HEIGHT
      L14_3 = camHeight
      L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3 = L12_3(L13_3, L14_3)
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3)
      camHeight = L10_3
      L10_3 = GetGroundZFor_3dCoord
      L11_3 = camTargetPos
      L11_3 = L11_3.x
      L12_3 = camTargetPos
      L12_3 = L12_3.y
      L13_3 = camTargetPos
      L13_3 = L13_3.z
      L14_3 = false
      L10_3, L11_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
      if L10_3 then
        L12_3 = vector3
        L13_3 = camTargetPos
        L13_3 = L13_3.x
        L14_3 = camTargetPos
        L14_3 = L14_3.y
        L15_3 = camHeight
        L15_3 = L11_3 + L15_3
        L12_3 = L12_3(L13_3, L14_3, L15_3)
        camTargetPos = L12_3
      else
        L12_3 = 0.0
        L13_3 = vector3
        L14_3 = camTargetPos
        L14_3 = L14_3.x
        L15_3 = camTargetPos
        L15_3 = L15_3.y
        L16_3 = camHeight
        L16_3 = L12_3 + L16_3
        L13_3 = L13_3(L14_3, L15_3, L16_3)
        camTargetPos = L13_3
        L13_3 = DoesEntityExist
        L14_3 = pedana
        L13_3 = L13_3(L14_3)
        if L13_3 then
          L13_3 = SetEntityCoordsNoOffset
          L14_3 = pedana
          L15_3 = camTargetPos
          L15_3 = L15_3.x
          L16_3 = camTargetPos
          L16_3 = L16_3.y
          L17_3 = L12_3
          L18_3 = false
          L19_3 = false
          L20_3 = false
          L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
        else
          L13_3 = RequestModelStriano
          L14_3 = "xs_prop_arena_turntable_b_01a_wl"
          L13_3(L14_3)
          L13_3 = CreateObject
          L14_3 = GetHashKey
          L15_3 = "xs_prop_arena_turntable_b_01a_wl"
          L14_3 = L14_3(L15_3)
          L15_3 = camTargetPos
          L15_3 = L15_3.x
          L16_3 = camTargetPos
          L16_3 = L16_3.y
          L17_3 = L12_3
          L18_3 = true
          L19_3 = true
          L20_3 = true
          L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
          pedana = L13_3
          L13_3 = SetEntityVisible
          L14_3 = pedana
          L15_3 = false
          L13_3(L14_3, L15_3)
        end
      end
      L12_3 = math
      L12_3 = L12_3.min
      L13_3 = SMOOTH_FACTOR
      L13_3 = L2_3 * L13_3
      L14_3 = 1.0
      L12_3 = L12_3(L13_3, L14_3)
      L13_3 = vector3
      L14_3 = camPos
      L14_3 = L14_3.x
      L15_3 = camTargetPos
      L15_3 = L15_3.x
      L16_3 = camPos
      L16_3 = L16_3.x
      L15_3 = L15_3 - L16_3
      L15_3 = L15_3 * L12_3
      L14_3 = L14_3 + L15_3
      L15_3 = camPos
      L15_3 = L15_3.y
      L16_3 = camTargetPos
      L16_3 = L16_3.y
      L17_3 = camPos
      L17_3 = L17_3.y
      L16_3 = L16_3 - L17_3
      L16_3 = L16_3 * L12_3
      L15_3 = L15_3 + L16_3
      L16_3 = camPos
      L16_3 = L16_3.z
      L17_3 = camTargetPos
      L17_3 = L17_3.z
      L18_3 = camPos
      L18_3 = L18_3.z
      L17_3 = L17_3 - L18_3
      L17_3 = L17_3 * L12_3
      L16_3 = L16_3 + L17_3
      L13_3 = L13_3(L14_3, L15_3, L16_3)
      camPos = L13_3
      L13_3 = SetCamCoord
      L14_3 = topDownCam
      L15_3 = camPos
      L15_3 = L15_3.x
      L16_3 = camPos
      L16_3 = L16_3.y
      L17_3 = camPos
      L17_3 = L17_3.z
      L13_3(L14_3, L15_3, L16_3, L17_3)
      L13_3 = SetCamRot
      L14_3 = topDownCam
      L15_3 = -90.0
      L16_3 = 0.0
      L17_3 = 0.0
      L18_3 = 2
      L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
      L13_3 = RaycastFromCamToGround
      L14_3 = camPos
      L13_3, L14_3 = L13_3(L14_3)
      if L13_3 then
        L15_3 = L14_3.z
        L15_3 = L15_3 + 2.5
        if L15_3 then
          goto lbl_362
        end
      end
      L15_3 = 2.5
      ::lbl_362::
      L16_3 = DrawMarker
      L17_3 = 25
      L18_3 = camTargetPos
      L18_3 = L18_3.x
      L19_3 = camTargetPos
      L19_3 = L19_3.y
      L20_3 = L15_3
      L21_3 = 0.0
      L22_3 = 0.0
      L23_3 = 0.0
      L24_3 = 0.0
      L25_3 = 0.0
      L26_3 = 0.0
      L27_3 = 7.7
      L28_3 = 7.7
      L29_3 = 7.7
      L30_3 = 255
      L31_3 = 255
      L32_3 = 255
      L33_3 = 200
      L34_3 = false
      L35_3 = true
      L36_3 = 2
      L37_3 = false
      L38_3 = nil
      L39_3 = nil
      L40_3 = false
      L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
      L16_3 = vector2
      L17_3 = camTargetPos
      L17_3 = L17_3.x
      L18_3 = camTargetPos
      L18_3 = L18_3.y
      L16_3 = L16_3(L17_3, L18_3)
      L17_3 = vector2
      L18_3 = L5_3.x
      L19_3 = L5_3.y
      L17_3 = L17_3(L18_3, L19_3)
      L16_3 = L16_3 - L17_3
      L16_3 = #L16_3
      if L16_3 > 15.0 then
        L16_3 = DrawMarker
        L17_3 = 1
        L18_3 = vector3
        L19_3 = L5_3.x
        L20_3 = L5_3.y
        L21_3 = L5_3.z
        L21_3 = L21_3 + 2.0
        L18_3 = L18_3(L19_3, L20_3, L21_3)
        L19_3 = 0.0
        L20_3 = 0.0
        L21_3 = 0.0
        L22_3 = 0
        L23_3 = 0.0
        L24_3 = 0.0
        L25_3 = 1.5
        L26_3 = 1.5
        L27_3 = camHeight
        L27_3 = L11_3 + L27_3
        L28_3 = 0
        L29_3 = 255
        L30_3 = 255
        L31_3 = 150
        L32_3 = false
        L33_3 = true
        L34_3 = 2
        L35_3 = false
        L36_3 = false
        L37_3 = false
        L38_3 = false
        L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
      end
      if L13_3 then
        L16_3 = currentZone
        if 0 == L16_3 then
          L16_3 = pairs
          L17_3 = listaZone
          L16_3, L17_3, L18_3, L19_3 = L16_3(L17_3)
          for L20_3, L21_3 in L16_3, L17_3, L18_3, L19_3 do
            L22_3 = DrawMarker
            L23_3 = 28
            L24_3 = vector3
            L25_3 = L21_3.pos
            L25_3 = L25_3.x
            L26_3 = L21_3.pos
            L26_3 = L26_3.y
            L27_3 = L21_3.pos
            L27_3 = L27_3.z
            L28_3 = L21_3.range
            L27_3 = L27_3 + L28_3
            L27_3 = L27_3 + 3.0
            L24_3 = L24_3(L25_3, L26_3, L27_3)
            L25_3 = 0.0
            L26_3 = 0.0
            L27_3 = 0.0
            L28_3 = 0
            L29_3 = 0.0
            L30_3 = 0.0
            L31_3 = L21_3.range
            L32_3 = L21_3.range
            L33_3 = L21_3.range
            L34_3 = 255
            L35_3 = 255
            L36_3 = 255
            L37_3 = 50
            L38_3 = false
            L39_3 = true
            L40_3 = 2
            L41_3 = false
            L42_3 = false
            L43_3 = false
            L44_3 = false
            L22_3(L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3)
            L22_3 = vector2
            L23_3 = L21_3.pos
            L23_3 = L23_3.x
            L24_3 = L21_3.pos
            L24_3 = L24_3.y
            L22_3 = L22_3(L23_3, L24_3)
            L23_3 = vector2
            L24_3 = L14_3.x
            L25_3 = L14_3.y
            L23_3 = L23_3(L24_3, L25_3)
            L22_3 = L22_3 - L23_3
            L22_3 = #L22_3
            L23_3 = L21_3.range
            if L22_3 < L23_3 then
              L22_3 = lastZone
              L23_3 = L21_3.nome
              if L22_3 ~= L23_3 then
                L22_3 = isCamMoving
                if not L22_3 then
                  L22_3 = L21_3.nome
                  lastZone = L22_3
                  L22_3 = PlaySoundFrontend
                  L23_3 = -1
                  L24_3 = "Hit_1"
                  L25_3 = "LONG_PLAYER_SWITCH_SOUNDS"
                  L26_3 = 1
                  L22_3(L23_3, L24_3, L25_3, L26_3)
                  L22_3 = ShowZoneName
                  L23_3 = L21_3.nome
                  L24_3 = L21_3.sub
                  L22_3(L23_3, L24_3)
                  currentZone = L20_3
                end
              end
            end
          end
        end
      end
      L16_3 = currentZone
      if L16_3 > 0 then
        L16_3 = listaZone
        L17_3 = currentZone
        L16_3 = L16_3[L17_3]
        L17_3 = vector2
        L18_3 = L16_3.pos
        L18_3 = L18_3.x
        L19_3 = L16_3.pos
        L19_3 = L19_3.y
        L17_3 = L17_3(L18_3, L19_3)
        L18_3 = vector2
        L19_3 = L14_3.x
        L20_3 = L14_3.y
        L18_3 = L18_3(L19_3, L20_3)
        L17_3 = L17_3 - L18_3
        L17_3 = #L17_3
        L18_3 = L16_3.range
        if L17_3 >= L18_3 then
          currentZone = 0
          lastZone = ""
        end
      end
      if L13_3 then
        L16_3 = IsDisabledControlJustReleased
        L17_3 = 0
        L18_3 = 24
        L16_3 = L16_3(L17_3, L18_3)
        if L16_3 then
          L16_3 = exports
          L16_3 = L16_3.striano_map
          L17_3 = L16_3
          L16_3 = L16_3.blipInteresse
          L18_3 = vector3
          L19_3 = L14_3.x
          L20_3 = L14_3.y
          L20_3 = L20_3 + 2.5
          L21_3 = L14_3.z
          L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3 = L18_3(L19_3, L20_3, L21_3)
          L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3)
          L16_3 = PlaySoundFrontend
          L17_3 = -1
          L18_3 = "Hit_1"
          L19_3 = "LONG_PLAYER_SWITCH_SOUNDS"
          L20_3 = 0
          L16_3(L17_3, L18_3, L19_3, L20_3)
        end
      end
      if L13_3 then
        L16_3 = IsDisabledControlJustReleased
        L17_3 = 0
        L18_3 = 74
        L16_3 = L16_3(L17_3, L18_3)
        if L16_3 then
          L16_3 = ExecuteCommand
          L17_3 = "copia "
          L18_3 = roundNum
          L19_3 = L14_3.x
          L18_3 = L18_3(L19_3)
          L19_3 = ","
          L20_3 = roundNum
          L21_3 = L14_3.y
          L20_3 = L20_3(L21_3)
          L21_3 = ","
          L22_3 = roundNum
          L23_3 = L14_3.z
          L22_3 = L22_3(L23_3)
          L17_3 = L17_3 .. L18_3 .. L19_3 .. L20_3 .. L21_3 .. L22_3
          L16_3(L17_3)
        end
      end
      L16_3 = Wait
      L17_3 = 0
      L16_3(L17_3)
    end
    L2_3 = DeActiveStrianoCam
    L2_3()
    L2_3 = false
    L3_3 = IsControlPressed
    L4_3 = 0
    L5_3 = 25
    L3_3 = L3_3(L4_3, L5_3)
    if not L3_3 then
      L3_3 = IsDisabledControlPressed
      L4_3 = 0
      L5_3 = 25
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        goto lbl_615
      end
    end
    L3_3 = ClearPedSecondaryTask
    L4_3 = L0_3
    L3_3(L4_3)
    L2_3 = true
    ::lbl_615::
    if not L2_3 then
      while true do
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 25
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 25
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            break
          end
        end
        L3_3 = Wait
        L4_3 = 0
        L3_3(L4_3)
      end
      L3_3 = faiAnim
      L4_3 = "weapon@w_sp_jerrycan"
      L5_3 = "holster"
      L6_3 = 950
      L7_3 = 49
      L3_3(L4_3, L5_3, L6_3, L7_3)
    else
      while true do
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 25
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 25
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            break
          end
        end
        L3_3 = Wait
        L4_3 = 0
        L3_3(L4_3)
      end
      L3_3 = faiAnim
      L4_3 = "weapon@w_sp_jerrycan"
      L5_3 = "holster"
      L6_3 = 950
      L7_3 = 49
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
  end
  L0_2(L1_2)
end
loopCamMappa = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = A0_2.x
  L2_2 = A0_2.y
  L3_2 = A0_2.z
  if not L3_2 then
    L3_2 = 0.0
  end
  L4_2 = RequestCollisionAtCoord
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = 47
  L5_2 = {}
  L6_2 = 200.0
  L7_2 = 500.0
  L8_2 = 1000.0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = vector3
    L13_2 = L1_2
    L14_2 = L2_2
    L15_2 = L3_2 + L11_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = vector3
    L14_2 = L1_2
    L15_2 = L2_2
    L16_2 = L3_2 - 50.0
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = _ENV
    L15_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    L14_2 = L14_2[L15_2]
    L15_2 = L12_2
    L16_2 = L13_2
    L17_2 = L4_2
    L18_2 = 0
    L19_2 = 7
    L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    if 1 == L14_2 then
      L19_2 = vector3
      L20_2 = L15_2.x
      L21_2 = L15_2.y
      L22_2 = L15_2.z
      L22_2 = L22_2 + 1.0
      L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2, L21_2, L22_2)
      return L19_2, L20_2, L21_2, L22_2
    end
  end
  L6_2 = GetGroundZFor_3dCoord
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2 + 1000.0
  L10_2 = false
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L8_2 = vector3
    L9_2 = L1_2
    L10_2 = L2_2
    L11_2 = L7_2 + 1.0
    return L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = vector3
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L3_2 + 3.0
  return L8_2(L9_2, L10_2, L11_2)
end
GetSafeCoordFromAbove = L0_1
L0_1 = {}
L1_1 = false
L2_1 = 100.0
L3_1 = 10.0
L4_1 = 2.0
function L5_1()
  local L0_2, L1_2
  L0_2 = next
  L1_2 = L0_1
  L0_2 = L0_2(L1_2)
  L0_2 = nil ~= L0_2
  return L0_2
end
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  if L0_2 then
    return
  end
  L0_2 = L5_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = true
  L1_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
    while true do
      L0_3 = L5_1
      L0_3 = L0_3()
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = "amb@world_human_binoculars@male@idle_b"
      L3_3 = "idle_d"
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if L0_3 then
        L0_3 = GetEntityCoords
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        L1_3 = pairs
        L2_3 = L0_1
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_3.coords
          if L7_3 then
            L8_3 = L7_3 - L0_3
            L9_3 = #L8_3
            L10_3 = 0.001
            if L9_3 > L10_3 then
              L10_3 = nil
              L11_3 = L2_1
              if L9_3 > L11_3 then
                L11_3 = L8_3 / L9_3
                L12_3 = L2_1
                L12_3 = L11_3 * L12_3
                L10_3 = L0_3 + L12_3
              else
                L10_3 = L7_3
              end
              L11_3 = math
              L11_3 = L11_3.min
              L12_3 = math
              L12_3 = L12_3.max
              L13_3 = L9_3 * 0.1
              L14_3 = L4_1
              L12_3 = L12_3(L13_3, L14_3)
              L13_3 = L3_1
              L11_3 = L11_3(L12_3, L13_3)
              L12_3 = DrawMarker
              L13_3 = 1
              L14_3 = L10_3.x
              L15_3 = L10_3.y
              L16_3 = L10_3.z
              L16_3 = L16_3 - 1.0
              L17_3 = 0.0
              L18_3 = 0.0
              L19_3 = 0.0
              L20_3 = 0.0
              L21_3 = 0.0
              L22_3 = 0.0
              L23_3 = L11_3
              L24_3 = L11_3
              L25_3 = 1000.0
              L26_3 = L6_3.r
              L27_3 = L6_3.g
              L28_3 = L6_3.b
              L29_3 = L6_3.a
              L30_3 = false
              L31_3 = false
              L32_3 = 2
              L33_3 = false
              L34_3 = nil
              L35_3 = nil
              L36_3 = false
              L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
            end
          else
            L8_3 = L0_1
            L8_3[L5_3] = nil
          end
        end
      else
        L0_3 = Wait
        L1_3 = 3000
        L0_3(L1_3)
      end
    end
    L0_3 = false
    L1_1 = L0_3
    L0_3 = L5_1
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L6_1
      L0_3()
    end
  end
  L1_2(L2_2)
end
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if nil == A0_2 or nil == A1_2 then
    L4_2 = false
    return L4_2
  end
  if not A3_2 then
    L4_2 = {}
    A3_2 = L4_2
  end
  L4_2 = L0_1
  L5_2 = {}
  L5_2.coords = A1_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = "\226\128\162"
  end
  L5_2.label = L6_2
  L6_2 = A3_2.r
  if not L6_2 then
    L6_2 = 255
  end
  L5_2.r = L6_2
  L6_2 = A3_2.g
  if not L6_2 then
    L6_2 = 50
  end
  L5_2.g = L6_2
  L6_2 = A3_2.b
  if not L6_2 then
    L6_2 = 50
  end
  L5_2.b = L6_2
  L6_2 = A3_2.a
  if not L6_2 then
    L6_2 = 180
  end
  L5_2.a = L6_2
  L4_2[A0_2] = L5_2
  L4_2 = L6_1
  L4_2()
  L4_2 = true
  return L4_2
end
AddWaypointIndicator = L7_1
function L7_1(A0_2)
  local L1_2
  if nil == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2[A0_2] = nil
  L1_2 = true
  return L1_2
end
RemoveWaypointIndicator = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2 in L0_2, L1_2, L2_2, L3_2 do
    L5_2 = L0_1
    L5_2[L4_2] = nil
  end
end
RemoveAllWaypointIndicators = L7_1
