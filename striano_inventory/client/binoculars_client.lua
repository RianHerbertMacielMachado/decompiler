local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "^2[Striano_Binoculars - Therm & Night version] ^7Script is ready, have fun."
  L0_2(L1_2)
end
L0_1(L1_1)
ObjBinocolo = nil
libstrafe = "move_strafe@first_person@generic"
currentStance = "walk_"
L0_1 = currentStance
L1_1 = "fwd_0_loop"
L0_1 = L0_1 .. L1_1
strafe_fw = L0_1
L0_1 = currentStance
L1_1 = "bwd_180_loop"
L0_1 = L0_1 .. L1_1
strafe_bk = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  if nil == A3_2 then
    A3_2 = 49
  end
  if nil ~= A4_2 then
    L5_2 = A4_2
  end
  if nil ~= L5_2 then
    L6_2 = LoadAnim
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = IsEntityPlayingAnim
    L7_2 = L5_2
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = 3
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if not L6_2 then
      L6_2 = TaskPlayAnim
      L7_2 = L5_2
      L8_2 = A0_2
      L9_2 = A1_2
      L10_2 = 2.0
      L11_2 = 2.0
      L12_2 = A2_2 or L12_2
      if not A2_2 then
        L12_2 = -1
      end
      L13_2 = A3_2
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
faiAnim = L0_1
L0_1 = 70.0
L1_1 = 0.2
L2_1 = VelZoom
L3_1 = VelX
L4_1 = VelY
L5_1 = L0_1 + L1_1
L5_1 = L5_1 * 0.5
L6_1 = false
L7_1 = false
L8_1 = exports
L9_1 = "binocoloattivo"
function L10_1()
  local L0_2, L1_2
  L0_2 = binoculars
  return L0_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "ActiveBinoculars"
function L10_1()
  local L0_2, L1_2
  L0_2 = LoopBinocolo
  L0_2()
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "ActiveBinoculars"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "ActiveBinoculars"
function L10_1()
  local L0_2, L1_2
  L0_2 = LoopBinocolo
  L0_2()
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = "amb@world_human_binoculars@male@idle_b"
  L1_2 = HasAnimDictLoaded
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = RequestAnimDict
    L2_2 = L0_2
    L1_2(L2_2)
    while true do
      L1_2 = HasAnimDictLoaded
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 10
      L1_2(L2_2)
    end
  end
  L1_2 = IsEntityPlayingAnim
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = "amb@world_human_binoculars@male@idle_b"
  L4_2 = "idle_d"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = TaskPlayAnim
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = "amb@world_human_binoculars@male@idle_b"
    L4_2 = "idle_d"
    L5_2 = 2.0
    L6_2 = 2.0
    L7_2 = -1
    L8_2 = 51
    L9_2 = 0
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
AnimBinocolo = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = false
  L6_1 = L0_2
  L0_2 = false
  L7_1 = L0_2
  L0_2 = SetSeethrough
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetNightvision
  L1_2 = false
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 150
  L0_2(L1_2)
  L0_2 = "cellphone@"
  L1_2 = HasAnimDictLoaded
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = RequestAnimDict
    L2_2 = L0_2
    L1_2(L2_2)
    while true do
      L1_2 = HasAnimDictLoaded
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 10
      L1_2(L2_2)
    end
  end
  L1_2 = TaskPlayAnim
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = "cellphone@"
  L4_2 = "cellphone_cellphone_outro"
  L5_2 = 2.0
  L6_2 = 2.0
  L7_2 = 1000
  L8_2 = 51
  L9_2 = 0
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = OnBinocularsClosed
  L1_2()
  L1_2 = DelBinocolo
  L1_2()
  binoculars = false
end
AnimPosaTasca = L8_1
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = ObjBinocolo
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = ObjBinocolo
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = ObjBinocolo
      L2_2 = true
      L0_2(L1_2, L2_2)
      L0_2 = DeleteEntity
      L1_2 = ObjBinocolo
      L0_2(L1_2)
      ObjBinocolo = nil
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submexError
      L2_2 = " "
      L0_2(L1_2, L2_2)
    end
  end
end
DelBinocolo = L8_1
L8_1 = 0
L9_1 = 250
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L8_1
  L1_2 = L0_2 - L1_2
  L2_2 = L9_1
  if L1_2 < L2_2 then
    L1_2 = false
    return L1_2
  end
  L8_1 = L0_2
  L1_2 = true
  return L1_2
end
L11_1 = false
function L12_1()
  local L0_2, L1_2
  L0_2 = L11_1
  if L0_2 then
    return
  end
  L0_2 = true
  L11_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
    L0_3 = exports
    L0_3 = L0_3.striano_editor
    L1_3 = L0_3
    L0_3 = L0_3.getFishermanArea
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L1_3 = exports
    L1_3 = L1_3.striano_core
    L2_3 = L1_3
    L1_3 = L1_3.GetTerritoriesConfigClient
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      return
    end
    while true do
      L2_3 = binoculars
      if not L2_3 then
        break
      end
      L2_3 = ipairs
      L3_3 = L0_3
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.coords
        L9_3 = L7_3.grandezzaArea
        if not L9_3 then
          L9_3 = 35.0
        end
        L10_3 = DrawMarker
        L11_3 = 1
        L12_3 = L8_3.x
        L13_3 = L8_3.y
        L14_3 = L8_3.z
        L14_3 = L14_3 - 1.0
        L15_3 = 0.0
        L16_3 = 0.0
        L17_3 = 0.0
        L18_3 = 0.0
        L19_3 = 0.0
        L20_3 = 0.0
        L21_3 = 10.0
        L22_3 = 10.0
        L23_3 = 1000.0
        L24_3 = 80
        L25_3 = 190
        L26_3 = 255
        L27_3 = 80
        L28_3 = false
        L29_3 = false
        L30_3 = 2
        L31_3 = false
        L32_3 = nil
        L33_3 = nil
        L34_3 = false
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
      end
      L2_3 = pairs
      L3_3 = L1_3
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.coords
        L9_3 = L7_3.radius
        if not L9_3 then
          L9_3 = 35.0
        end
        L10_3 = DrawMarker
        L11_3 = 1
        L12_3 = L8_3.x
        L13_3 = L8_3.y
        L14_3 = L8_3.z
        L14_3 = L14_3 - 1.0
        L15_3 = 0.0
        L16_3 = 0.0
        L17_3 = 0.0
        L18_3 = 0.0
        L19_3 = 0.0
        L20_3 = 0.0
        L21_3 = 20.0
        L22_3 = 20.0
        L23_3 = 1000.0
        L24_3 = 255
        L25_3 = 210
        L26_3 = 70
        L27_3 = 80
        L28_3 = false
        L29_3 = true
        L30_3 = 2
        L31_3 = false
        L32_3 = nil
        L33_3 = nil
        L34_3 = false
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
      end
      L2_3 = exports
      L2_3 = L2_3.striano_inventory
      L3_3 = L2_3
      L2_3 = L2_3.GetActiveWaypoints
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L3_3 = GetEntityCoords
        L4_3 = PlayerPedId
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L4_3()
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
        L4_3 = 900.0
        L5_3 = ipairs
        L6_3 = L2_3
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
        for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
          L11_3 = L10_3.coords
          L12_3 = L11_3 - L3_3
          L13_3 = #L12_3
          L14_3 = 0.001
          if L13_3 > L14_3 then
            L14_3 = L11_3
            if L4_3 < L13_3 then
              L15_3 = L12_3 / L13_3
              L16_3 = L15_3 * L4_3
              L14_3 = L3_3 + L16_3
            end
            L15_3 = DrawBinocularText3D
            L16_3 = vector3
            L17_3 = L14_3.x
            L18_3 = L14_3.y
            L19_3 = L14_3.z
            L19_3 = L19_3 + 5.0
            L16_3 = L16_3(L17_3, L18_3, L19_3)
            L17_3 = "%.0f m"
            L18_3 = L17_3
            L17_3 = L17_3.format
            L19_3 = L13_3
            L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L17_3(L18_3, L19_3)
            L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          end
        end
      end
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
    end
    L2_3 = false
    L11_1 = L2_3
  end
  L0_2(L1_2)
end
StartFishermanAreaMarkers = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = World3dToScreen2d
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    return
  end
  L5_2 = SetTextScale
  L6_2 = 0.0
  L7_2 = 0.35
  L5_2(L6_2, L7_2)
  L5_2 = SetTextFont
  L6_2 = 0
  L5_2(L6_2)
  L5_2 = SetTextProportional
  L6_2 = true
  L5_2(L6_2)
  L5_2 = SetTextColour
  L6_2 = 255
  L7_2 = 255
  L8_2 = 255
  L9_2 = 255
  L5_2(L6_2, L7_2, L8_2, L9_2)
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
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
DrawBinocularText3D = L12_1
function L12_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = binoculars
    if not L0_3 then
      L0_3 = UseNotify
      L0_3()
      binoculars = true
      L0_3 = OnBinocularsOpen
      L0_3()
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = CreateObject
      L3_3 = GetHashKey
      L4_3 = hashBinocularsObj
      L3_3 = L3_3(L4_3)
      L4_3 = L1_3.x
      L5_3 = L1_3.y
      L6_3 = L1_3.z
      L6_3 = L6_3 - 1.0
      L7_3 = true
      L8_3 = true
      L9_3 = false
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      ObjBinocolo = L2_3
      L2_3 = AttachEntityToEntity
      L3_3 = ObjBinocolo
      L4_3 = L0_3
      L5_3 = GetPedBoneIndex
      L6_3 = L0_3
      L7_3 = boneId
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = attachPos
      L7_3 = attachRot
      L8_3 = true
      L9_3 = true
      L10_3 = false
      L11_3 = true
      L12_3 = 1
      L13_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L2_3 = SetModelAsNoLongerNeeded
      L3_3 = hashBinocularsObj
      L2_3(L3_3)
      L2_3 = AnimBinocolo
      L2_3()
      L2_3 = IsPedSittingInAnyVehicle
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        L2_3 = SetEntityHeading
        L3_3 = L0_3
        L4_3 = GetGameplayCamRot
        L5_3 = 0
        L4_3 = L4_3(L5_3)
        L4_3 = L4_3.z
        L2_3(L3_3, L4_3)
      end
      L2_3 = Wait
      L3_3 = 1000
      L2_3(L3_3)
      L2_3 = IsEntityPlayingAnim
      L3_3 = L0_3
      L4_3 = "amb@world_human_binoculars@male@idle_b"
      L5_3 = "idle_d"
      L6_3 = 3
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      if L2_3 then
        L2_3 = RequestScaleformMovie
        L3_3 = "BINOCULARS"
        L2_3 = L2_3(L3_3)
        while true do
          L3_3 = HasScaleformMovieLoaded
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if L3_3 then
            break
          end
          L3_3 = Wait
          L4_3 = 0
          L3_3(L4_3)
        end
        L3_3 = CreateCam
        L4_3 = "DEFAULT_SCRIPTED_FLY_CAMERA"
        L5_3 = true
        L3_3 = L3_3(L4_3, L5_3)
        L4_3 = IsPedSittingInAnyVehicle
        L5_3 = L0_3
        L4_3 = L4_3(L5_3)
        if not L4_3 then
          L4_3 = AttachCamToEntity
          L5_3 = L3_3
          L6_3 = L0_3
          L7_3 = 0.0
          L8_3 = 0.5
          L9_3 = 0.3
          L10_3 = true
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        else
          L4_3 = AttachCamToEntity
          L5_3 = L3_3
          L6_3 = L0_3
          L7_3 = 0.0
          L8_3 = 0.1
          L9_3 = 0.6
          L10_3 = true
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        end
        L4_3 = SetCamRot
        L5_3 = L3_3
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = GetEntityHeading
        L9_3 = L0_3
        L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L8_3(L9_3)
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L4_3 = RenderScriptCams
        L5_3 = true
        L6_3 = false
        L7_3 = 0
        L8_3 = 1
        L9_3 = 0
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        L4_3 = PushScaleformMovieFunction
        L5_3 = L2_3
        L6_3 = "SET_CAM_LOGO"
        L4_3(L5_3, L6_3)
        L4_3 = PushScaleformMovieFunctionParameterInt
        L5_3 = 0
        L4_3(L5_3)
        L4_3 = PopScaleformMovieFunctionVoid
        L4_3()
        L4_3 = StartFishermanAreaMarkers
        L4_3()
        while true do
          L4_3 = binoculars
          if not L4_3 then
            break
          end
          L4_3 = IsEntityDead
          L5_3 = L0_3
          L4_3 = L4_3(L5_3)
          if L4_3 then
            break
          end
          L4_3 = IsPedFatallyInjured
          L5_3 = L0_3
          L4_3 = L4_3(L5_3)
          if L4_3 then
            break
          end
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 23
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 332
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 333
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 115
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 116
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 261
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 262
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 74
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 37
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 12
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 13
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 22
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 289
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 170
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 245
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 25
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 74
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 23
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 15
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 14
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 81
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 82
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 83
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 84
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 85
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 86
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 99
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 100
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 16
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = DisableControlAction
          L5_3 = 0
          L6_3 = 0
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = SetUserRadioControlEnabled
          L5_3 = false
          L4_3(L5_3)
          L4_3 = SetVehRadioStation
          L5_3 = GetVehiclePedIsIn
          L6_3 = L0_3
          L5_3 = L5_3(L6_3)
          L6_3 = "OFF"
          L4_3(L5_3, L6_3)
          L4_3 = L10_1
          L4_3 = L4_3()
          if L4_3 then
            L4_3 = currentStance
            L5_3 = "fwd_45_loop"
            L4_3 = L4_3 .. L5_3
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 35
            L5_3 = L5_3(L6_3, L7_3)
            if L5_3 then
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 33
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = LoadAnim
                L6_3 = libstrafe
                L5_3(L6_3)
                L5_3 = IsEntityPlayingAnim
                L6_3 = L0_3
                L7_3 = libstrafe
                L8_3 = L4_3
                L9_3 = 3
                L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                if not L5_3 then
                  L5_3 = TaskPlayAnim
                  L6_3 = L0_3
                  L7_3 = libstrafe
                  L8_3 = L4_3
                  L9_3 = 3.0
                  L10_3 = 1.0
                  L11_3 = -1
                  L12_3 = 1
                  L13_3 = 0
                  L14_3 = 0
                  L15_3 = 0
                  L16_3 = 0
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                  L5_3 = AnimBinocolo
                  L5_3()
                end
            end
            else
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 34
              L5_3 = L5_3(L6_3, L7_3)
              if L5_3 then
                L5_3 = IsControlPressed
                L6_3 = 0
                L7_3 = 33
                L5_3 = L5_3(L6_3, L7_3)
                if not L5_3 then
                  L5_3 = currentStance
                  L6_3 = "fwd_-45_loop"
                  L5_3 = L5_3 .. L6_3
                  L4_3 = L5_3
                  L5_3 = LoadAnim
                  L6_3 = libstrafe
                  L5_3(L6_3)
                  L5_3 = IsEntityPlayingAnim
                  L6_3 = L0_3
                  L7_3 = libstrafe
                  L8_3 = L4_3
                  L9_3 = 3
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                  if not L5_3 then
                    L5_3 = TaskPlayAnim
                    L6_3 = L0_3
                    L7_3 = libstrafe
                    L8_3 = L4_3
                    L9_3 = 3.0
                    L10_3 = 1.0
                    L11_3 = -1
                    L12_3 = 1
                    L13_3 = 0
                    L14_3 = 0
                    L15_3 = 0
                    L16_3 = 0
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                    L5_3 = AnimBinocolo
                    L5_3()
                  end
                end
              end
            end
          end
          L4_3 = IsControlPressed
          L5_3 = 0
          L6_3 = 33
          L4_3 = L4_3(L5_3, L6_3)
          if L4_3 then
            L4_3 = IsEntityPlayingAnim
            L5_3 = L0_3
            L6_3 = libstrafe
            L7_3 = strafe_bk
            L8_3 = 3
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
            if not L4_3 then
              L4_3 = TaskPlayAnim
              L5_3 = L0_3
              L6_3 = libstrafe
              L7_3 = strafe_bk
              L8_3 = 3.0
              L9_3 = 1.0
              L10_3 = -1
              L11_3 = 1
              L12_3 = 0
              L13_3 = 0
              L14_3 = 0
              L15_3 = 0
              L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
              L4_3 = AnimBinocolo
              L4_3()
            end
          end
          L4_3 = IsControlJustReleased
          L5_3 = 0
          L6_3 = 35
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            L4_3 = IsControlJustReleased
            L5_3 = 0
            L6_3 = 34
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsControlJustReleased
              L5_3 = 0
              L6_3 = 33
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_476
              end
            end
          end
          L4_3 = IsEntityPlayingAnim
          L5_3 = L0_3
          L6_3 = libstrafe
          L7_3 = currentStance
          L8_3 = "fwd_-45_loop"
          L7_3 = L7_3 .. L8_3
          L8_3 = 3
          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
          if not L4_3 then
            L4_3 = IsEntityPlayingAnim
            L5_3 = L0_3
            L6_3 = libstrafe
            L7_3 = currentStance
            L8_3 = "fwd_45_loop"
            L7_3 = L7_3 .. L8_3
            L8_3 = 3
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
            if not L4_3 then
              L4_3 = IsEntityPlayingAnim
              L5_3 = L0_3
              L6_3 = libstrafe
              L7_3 = strafe_bk
              L8_3 = 3
              L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
              if not L4_3 then
                goto lbl_476
              end
            end
          end
          L4_3 = ClearPedTasks
          L5_3 = L0_3
          L4_3(L5_3)
          L4_3 = AnimBinocolo
          L4_3()
          ::lbl_476::
          L4_3 = IsDisabledControlJustPressed
          L5_3 = 0
          L6_3 = 174
          L4_3 = L4_3(L5_3, L6_3)
          if L4_3 then
            L4_3 = L7_1
            if not L4_3 then
              L4_3 = L6_1
              if L4_3 then
                L4_3 = false
                L6_1 = L4_3
                L4_3 = SetNightvision
                L5_3 = false
                L4_3(L5_3)
              else
                L4_3 = true
                L6_1 = L4_3
                L4_3 = SetNightvision
                L5_3 = true
                L4_3(L5_3)
              end
            end
          else
            L4_3 = IsDisabledControlJustPressed
            L5_3 = 0
            L6_3 = 175
            L4_3 = L4_3(L5_3, L6_3)
            if L4_3 then
              L4_3 = L6_1
              if not L4_3 then
                L4_3 = L7_1
                if L4_3 then
                  L4_3 = false
                  L7_1 = L4_3
                  L4_3 = SetSeethrough
                  L5_3 = false
                  L4_3(L5_3)
                else
                  L4_3 = true
                  L7_1 = L4_3
                  L4_3 = SetSeethrough
                  L5_3 = true
                  L4_3(L5_3)
                end
              end
            end
          end
          L4_3 = GetCamRot
          L5_3 = L3_3
          L6_3 = 2
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = IsPedSittingInAnyVehicle
          L6_3 = L0_3
          L5_3 = L5_3(L6_3)
          if not L5_3 then
            L5_3 = SetEntityHeading
            L6_3 = L0_3
            L7_3 = L4_3.z
            L5_3(L6_3, L7_3)
          end
          L5_3 = AnimBinocolo
          L5_3()
          L5_3 = IsControlJustPressed
          L6_3 = 0
          L7_3 = 202
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlJustPressed
            L6_3 = 0
            L7_3 = 25
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = IsControlJustPressed
              L6_3 = 0
              L7_3 = 25
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = IsControlJustPressed
                L6_3 = 0
                L7_3 = 73
                L5_3 = L5_3(L6_3, L7_3)
                if not L5_3 then
                  L5_3 = IsControlJustPressed
                  L6_3 = 0
                  L7_3 = 194
                  L5_3 = L5_3(L6_3, L7_3)
                  if not L5_3 then
                    goto lbl_569
                  end
                end
              end
            end
          end
          binoculars = false
          ::lbl_569::
          L5_3 = L0_1
          L6_3 = L1_1
          L5_3 = L5_3 - L6_3
          L6_3 = 1.0
          L5_3 = L6_3 / L5_3
          L6_3 = L5_1
          L7_3 = L1_1
          L6_3 = L6_3 - L7_3
          L5_3 = L5_3 * L6_3
          L6_3 = CheckInputRotationBinocolo
          L7_3 = L3_3
          L8_3 = L5_3
          L6_3(L7_3, L8_3)
          L6_3 = IsDisabledControlJustPressed
          L7_3 = 0
          L8_3 = 15
          L6_3 = L6_3(L7_3, L8_3)
          if L6_3 then
            L6_3 = L5_1
            if L6_3 > 1.0 then
              L6_3 = L5_1
              L7_3 = L2_1
              L6_3 = L6_3 - L7_3
              L5_1 = L6_3
            end
          end
          L6_3 = IsDisabledControlJustPressed
          L7_3 = 0
          L8_3 = 14
          L6_3 = L6_3(L7_3, L8_3)
          if L6_3 then
            L6_3 = L5_1
            if L6_3 < 99 then
              L6_3 = L5_1
              L7_3 = L2_1
              L6_3 = L6_3 + L7_3
              L5_1 = L6_3
            end
          end
          L6_3 = SetCamFov
          L7_3 = L3_3
          L8_3 = L5_1
          L6_3(L7_3, L8_3)
          L6_3 = DrawScaleformMovieFullscreen
          L7_3 = L2_3
          L8_3 = 255
          L9_3 = 255
          L10_3 = 255
          L11_3 = 255
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          L6_3 = Wait
          L7_3 = 0
          L6_3(L7_3)
        end
        while true do
          L4_3 = IsControlPressed
          L5_3 = 0
          L6_3 = 73
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            break
          end
          L4_3 = Wait
          L5_3 = 0
          L4_3(L5_3)
        end
        L4_3 = L0_1
        L5_3 = L1_1
        L4_3 = L4_3 + L5_3
        L4_3 = L4_3 * 0.5
        L5_1 = L4_3
        L4_3 = RenderScriptCams
        L5_3 = false
        L6_3 = false
        L7_3 = 0
        L8_3 = 1
        L9_3 = 0
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        L4_3 = SetScaleformMovieAsNoLongerNeeded
        L5_3 = L2_3
        L4_3(L5_3)
        L4_3 = DestroyCam
        L5_3 = L3_3
        L6_3 = false
        L4_3(L5_3, L6_3)
        L4_3 = AnimPosaTasca
        L4_3()
        return
      else
        L2_3 = AnimPosaTasca
        L2_3()
        return
      end
    end
  end
  L0_2(L1_2)
end
LoopBinocolo = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetDisabledControlNormal
  L3_2 = 0
  L4_2 = 220
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetDisabledControlNormal
  L4_2 = 0
  L5_2 = 221
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GetCamRot
  L5_2 = A0_2
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  if 0.0 ~= L2_2 or 0.0 ~= L3_2 then
    L5_2 = L4_2.z
    L6_2 = L2_2 * -1.0
    L7_2 = L4_1
    L6_2 = L6_2 * L7_2
    L7_2 = A1_2 + 0.1
    L6_2 = L6_2 * L7_2
    L5_2 = L5_2 + L6_2
    new_z = L5_2
    L5_2 = math
    L5_2 = L5_2.max
    L6_2 = math
    L6_2 = L6_2.min
    L7_2 = 85.0
    L8_2 = L4_2.x
    L9_2 = L3_2 * -1.0
    L10_2 = L3_1
    L9_2 = L9_2 * L10_2
    L10_2 = A1_2 + 0.1
    L9_2 = L9_2 * L10_2
    L8_2 = L8_2 + L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = -89.5
    L5_2 = L5_2(L6_2, L7_2)
    new_x = L5_2
    L5_2 = SetCamRot
    L6_2 = A0_2
    L7_2 = new_x
    L8_2 = 0.0
    L9_2 = new_z
    L10_2 = 2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
CheckInputRotationBinocolo = L12_1
