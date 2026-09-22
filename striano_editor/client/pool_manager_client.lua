local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1, L87_1, L88_1, L89_1, L90_1, L91_1, L92_1, L93_1, L94_1, L95_1, L96_1, L97_1, L98_1, L99_1, L100_1, L101_1, L102_1, L103_1, L104_1, L105_1, L106_1, L107_1, L108_1, L109_1, L110_1, L111_1, L112_1, L113_1, L114_1, L115_1, L116_1, L117_1, L118_1, L119_1, L120_1, L121_1, L122_1, L123_1, L124_1, L125_1, L126_1, L127_1, L128_1, L129_1, L130_1, L131_1, L132_1
DEBUG_RAYCAST = false
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A0_2 then
    A0_2 = 50
  end
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = pairs
  L5_2 = active
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.handle
    if L10_2 and 0 ~= L10_2 then
      L11_2 = DoesEntityExist
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = #L2_2
        L12_2 = L12_2 + 1
        L13_2 = {}
        L13_2.id = L8_2
        L13_2.data = L9_2
        L13_2.ent = L10_2
        L14_2 = L1_2 - L11_2
        L14_2 = #L14_2
        L13_2.distance = L14_2
        L2_2[L12_2] = L13_2
    end
    else
      if L10_2 then
        L11_2 = byHandle
        L11_2[L10_2] = nil
      end
      L11_2 = active
      L11_2[L8_2] = nil
    end
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.distance
    L3_3 = A1_3.distance
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L4_2(L5_2, L6_2)
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A0_2
  L7_2 = #L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = L8_2.id
    L10_2 = L8_2.data
    L11_2 = L8_2.ent
    L12_2 = L10_2.child
    if L12_2 then
      L12_2 = L10_2.child
      if 0 ~= L12_2 then
        L12_2 = byHandle
        L13_2 = L10_2.child
        L12_2[L13_2] = nil
        L12_2 = DoesEntityExist
        L13_2 = L10_2.child
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = DeleteEntity
          L13_2 = L10_2.child
          L12_2(L13_2)
        end
      end
    end
    L12_2 = byHandle
    L12_2[L11_2] = nil
    L12_2 = DoesEntityExist
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = DeleteEntity
      L13_2 = L11_2
      L12_2(L13_2)
    end
    L12_2 = active
    L12_2[L9_2] = nil
    L3_2 = L3_2 + 1
  end
  L4_2 = print
  L5_2 = "[POOL] Removed "
  L6_2 = L3_2
  L7_2 = " farthest objects"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L4_2(L5_2)
end
icanBuild = false
L1_1 = RegisterCommand
L2_1 = "icanBuild"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "5_Second_Timer"
  L3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = icanBuild
  L0_2 = not L0_2
  icanBuild = L0_2
  L0_2 = print
  L1_2 = "CANBUILD"
  L2_2 = icanBuild
  L0_2(L1_2, L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "icanPlace"
function L3_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "icanBuild"
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
L1_1 = {}
L2_1 = {}
L3_1 = vector3
L4_1 = -980.018
L5_1 = -6918.639
L6_1 = 2.316
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.coords = L3_1
L2_1.radius = 350.0
L2_1.label = "Protected Build Area"
L1_1[1] = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.coords
    L7_2 = A0_2 - L7_2
    L7_2 = #L7_2
    L8_2 = L6_2.radius
    if L7_2 <= L8_2 then
      L8_2 = icanBuild
      if not L8_2 then
        L8_2 = true
        L9_2 = L6_2
        L10_2 = L7_2
        return L8_2, L9_2, L10_2
      end
    end
  end
  L1_2 = false
  L2_2 = nil
  L3_2 = nil
  return L1_2, L2_2, L3_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ExecuteCommand
  L2_2 = "prova4 "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L4_1 = {}
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      return
    end
  end
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L4_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
AddSelectedYmapObject = L5_1
L5_1 = {}
L6_1 = RegisterNetEvent
L7_1 = "worldContainer:sync"
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  L5_1 = L1_2
end
L6_1(L7_1, L8_1)
L6_1 = {}
L7_1 = RegisterNetEvent
L8_1 = "vehicleProps:sync"
function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  L6_1 = L1_2
end
L7_1(L8_1, L9_1)
L7_1 = CreateThread
function L8_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "worldContainer:requestSync"
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "vehicleProps:requestSync"
  L0_2(L1_2)
end
L7_1(L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L1_2 = GetEntityAttachedTo
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_26
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_26::
  L2_2 = IsEntityAVehicle
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetVehicleNumberPlateText
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  L4_2 = L2_2 or L4_2
  if not L2_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.gsub
  L5_2 = "^%s*(.-)%s*$"
  L6_2 = "%1"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2
  L3_2 = L3_2.upper
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L6_1
  L4_2 = L4_2[L2_2]
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = tonumber
    L12_2 = L10_2.model
    L11_2 = L11_2(L12_2)
    L12_2 = tonumber
    L13_2 = L3_2
    L12_2 = L12_2(L13_2)
    if L11_2 == L12_2 then
      L11_2 = tonumber
      L12_2 = L10_2.amount
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        L11_2 = 0
      end
      return L11_2
    end
  end
  L5_2 = nil
  return L5_2
end
GetVehiclePropAmount = L7_1
L7_1 = RegisterNetEvent
L8_1 = "pedProp:setAmountClient"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = print
  L4_2 = "^1[PED PROP CLIENT]^7 PROP NON TROVATO NETID:"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_18::
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L4_2 = L3_2
  L3_2 = L3_2.set
  L5_2 = "storedAmount"
  L6_2 = tonumber
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = 1
  do return L1_2 end
  ::lbl_12::
  L1_2 = 1
  L2_2 = GetVehiclePropAmount
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetWorldContainerPropAmount
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Entity
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L4_2 = L4_2.storedAmount
  if nil ~= L2_2 then
    L5_2 = tonumber
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L1_2 = L5_2 or L1_2
    if not L5_2 then
      L1_2 = 1
    end
  end
  if nil ~= L3_2 then
    L5_2 = tonumber
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L1_2 = L5_2 or L1_2
    if not L5_2 then
      L1_2 = 1
    end
  end
  if nil ~= L4_2 then
    L5_2 = tonumber
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L1_2 = L5_2 or L1_2
    if not L5_2 then
      L1_2 = 1
    end
  end
  return L1_2
end
getCorrectGlobalAmount = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L1_2 = GetEntityAttachedTo
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_26
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_26::
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.worldContainer
  if true ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.worldContainerId
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L5_1
  L4_2 = L4_2[L2_2]
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = tonumber
    L12_2 = L10_2.model
    L11_2 = L11_2(L12_2)
    L12_2 = tonumber
    L13_2 = L3_2
    L12_2 = L12_2(L13_2)
    if L11_2 == L12_2 then
      L11_2 = tonumber
      L12_2 = L10_2.amount
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        L11_2 = 0
      end
      return L11_2
    end
  end
  L5_2 = nil
  return L5_2
end
GetWorldContainerPropAmount = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetModelDimensions
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L2_2.z
  L3_2 = L3_2 + 0.5
  return L3_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetScreenCoordFromWorldCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    return
  end
  L4_2 = DrawRect
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = 0.008
  L8_2 = 0.014
  L9_2 = 255
  L10_2 = 0
  L11_2 = 0
  L12_2 = 200
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
DrawMarkerThroughWalls = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = 0.6
  if nil ~= A1_2 then
    L2_2 = A1_2 + 0.0
  end
  L3_2 = L2_2
  L4_2 = A0_2
  L5_2 = false
  L6_2 = nil
  L7_2 = 1
  L8_2 = PesciPresi
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = PesciPresi
    L11_2 = L11_2[L10_2]
    if nil ~= L11_2 then
      L11_2 = PesciPresi
      L11_2 = L11_2[L10_2]
      if L11_2 then
        L12_2 = L11_2.o
        if L12_2 then
          L12_2 = DoesEntityExist
          L13_2 = L11_2.o
          L12_2 = L12_2(L13_2)
          if L12_2 then
            L12_2 = GetEntityAttachedTo
            L13_2 = L11_2.o
            L12_2 = L12_2(L13_2)
            L13_2 = false
            if 0 ~= L12_2 then
              L14_2 = IsEntityAPed
              L15_2 = L12_2
              L14_2 = L14_2(L15_2)
              if L14_2 then
                L14_2 = IsPedHuman
                L15_2 = L12_2
                L14_2 = L14_2(L15_2)
                if L14_2 then
                  L14_2 = IsPedAPlayer
                  L15_2 = L12_2
                  L14_2 = L14_2(L15_2)
                  L13_2 = L14_2
                end
              end
            end
            if not L13_2 then
              L14_2 = GetEntityCoords
              L15_2 = L11_2.o
              L14_2 = L14_2(L15_2)
              L15_2 = L14_2 - L4_2
              L15_2 = #L15_2
              if L3_2 >= L15_2 then
                L5_2 = true
                L3_2 = L15_2
                L6_2 = L11_2.o
              end
            end
          end
        end
      end
    end
  end
  if not L5_2 and L6_2 then
    L7_2 = nil
    return L7_2
  end
  if nil == L6_2 then
    L7_2 = nil
    return L7_2
  end
  return L6_2
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0.6
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = L2_2
  L4_2 = A0_2
  L5_2 = false
  L6_2 = nil
  L7_2 = 1
  L8_2 = alberi
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = alberi
    L11_2 = L11_2[L10_2]
    if L11_2 and nil ~= L11_2 then
      L12_2 = L11_2.tronco
      if nil ~= L12_2 then
        L12_2 = GetEntityCoords
        L13_2 = L11_2.tronco
        L12_2 = L12_2(L13_2)
        L13_2 = L12_2 - L4_2
        L13_2 = #L13_2
        if L3_2 >= L13_2 then
          L5_2 = true
          L3_2 = L13_2
          L6_2 = L10_2
        end
      end
    end
  end
  if not L5_2 and L6_2 then
    L7_2 = nil
    return L7_2
  end
  if nil == L6_2 then
    L7_2 = nil
    return L7_2
  end
  return L6_2
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0.6
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = L2_2
  L4_2 = A0_2
  L5_2 = false
  L6_2 = nil
  L7_2 = 1
  L8_2 = banano
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = banano
    L11_2 = L11_2[L10_2]
    if L11_2 and nil ~= L11_2 then
      L12_2 = L11_2.tronco
      if nil ~= L12_2 then
        L12_2 = GetEntityCoords
        L13_2 = L11_2.tronco
        L12_2 = L12_2(L13_2)
        L13_2 = L12_2 - L4_2
        L13_2 = #L13_2
        if L3_2 >= L13_2 then
          L5_2 = true
          L3_2 = L13_2
          L6_2 = L10_2
        end
      end
    end
  end
  if not L5_2 and L6_2 then
    L7_2 = nil
    return L7_2
  end
  if nil == L6_2 then
    L7_2 = nil
    return L7_2
  end
  return L6_2
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = math
  L2_2 = L2_2.huge
  L3_2 = nil
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 then
      L10_2 = L9_2.pos
      if L10_2 then
        L10_2 = tonumber
        L11_2 = L9_2.range
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = 50.0
        end
        L11_2 = L9_2.pos
        L11_2 = L11_2 - A0_2
        L11_2 = #L11_2
        if L2_2 > L11_2 then
          L12_2 = L10_2 * 2
          if L11_2 <= L12_2 then
            L2_2 = L11_2
            L3_2 = L8_2
          end
        end
      end
    end
  end
  return L3_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0.6
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = L2_2
  L4_2 = A0_2
  L5_2 = false
  L6_2 = nil
  L7_2 = 1
  L8_2 = pietre
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = pietre
    L11_2 = L11_2[L10_2]
    if L11_2 and nil ~= L11_2 then
      L12_2 = L11_2.pietra
      if nil ~= L12_2 then
        L12_2 = GetEntityCoords
        L13_2 = L11_2.pietra
        L12_2 = L12_2(L13_2)
        L13_2 = L12_2 - L4_2
        L13_2 = #L13_2
        if L3_2 >= L13_2 then
          L5_2 = true
          L3_2 = L13_2
          L6_2 = L10_2
        end
      end
    end
  end
  if not L5_2 and L6_2 then
    L7_2 = nil
    return L7_2
  end
  if nil == L6_2 then
    L7_2 = nil
    return L7_2
  end
  return L6_2
end
L13_1 = {}
L14_1 = ipairs
L15_1 = fishValidList
L14_1, L15_1, L16_1, L17_1 = L14_1(L15_1)
for L18_1, L19_1 in L14_1, L15_1, L16_1, L17_1 do
  L20_1 = type
  L21_1 = L19_1
  L20_1 = L20_1(L21_1)
  if "string" == L20_1 then
    L20_1 = GetHashKey
    L21_1 = L19_1
    L20_1 = L20_1(L21_1)
    if L20_1 then
      goto lbl_82
    end
  end
  L20_1 = L19_1
  ::lbl_82::
  L13_1[L20_1] = true
end
L14_1 = {}
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L14_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L14_1
  L1_2[A0_2] = true
  L1_2 = PesciPresi
  L2_2 = PesciPresi
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = {}
  L3_2.o = A0_2
  L1_2[L2_2] = L3_2
  L1_2 = true
  return L1_2
end
lastRefreshPos = nil
fishRefreshRunning = false
L16_1 = {}
SelectionObjects = L16_1
L16_1 = RegisterCommand
L17_1 = commandSelector
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = IsControlPressed
  L5_2 = 0
  L6_2 = 18
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = IsDisabledControlPressed
    L5_2 = 0
    L6_2 = 18
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.inCombat
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.gettutorial
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = print
    L5_2 = "To enable selector you must complete the intro!"
    L4_2(L5_2)
    return
  end
  L4_2 = sonoSullaScala
  if nil ~= L4_2 then
    return
  end
  L4_2 = possoFareSelector
  if not L4_2 then
    L4_2 = print
    L5_2 = "Posso fare selector bloccato!"
    L4_2(L5_2)
    return
  end
  L4_2 = cassaChePorto
  if nil ~= L4_2 then
    L4_2 = print
    L5_2 = "Box deliver locker!"
    L4_2(L5_2)
    return
  end
  L4_2 = IsEntityPlayingAnim
  L5_2 = L3_2
  L6_2 = "abigail_mcs_2-5"
  L7_2 = "player_zero_dual-5"
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L4_2 = IsEntityPlayingAnim
    L5_2 = L3_2
    L6_2 = "missrappel"
    L7_2 = "rope_idle"
    L8_2 = 3
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if not L4_2 then
      return
    end
  end
  L4_2 = IsEntityPlayingAnim
  L5_2 = L3_2
  L6_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
  L7_2 = "load_and_tune_guilotine_v1_billcutter"
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    return
  end
  L4_2 = exports
  L4_2 = L4_2.striano_ridehorse
  L5_2 = L4_2
  L4_2 = L4_2.aCavallo
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = exports
  L4_2 = L4_2.striano_ridehorse
  L5_2 = L4_2
  L4_2 = L4_2.inShopAnimals
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = CanCommandSelector
  L4_2 = L4_2()
  if not L4_2 then
    return
  end
  L4_2 = exports
  L4_2 = L4_2.striano_editor
  L5_2 = L4_2
  L4_2 = L4_2.stopescando
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = print
    L5_2 = "Locked by pescando."
    L4_2(L5_2)
    return
  end
  L4_2 = IsPedInAnyVehicle
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = IsEntityPositionFrozen
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = IsPedRagdoll
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = IsPedFatallyInjured
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = IsEntityAttached
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = modalitaPesci
  if not L4_2 then
    L4_2 = GetEntityCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    lastRefreshPos = L4_2
    fishRefreshRunning = false
    L5_2 = {}
    SelectionObjects = L5_2
    L5_2 = 50.0
    L6_2 = L5_2 * L5_2
    L7_2 = GetGamePool
    L8_2 = "CObject"
    L7_2 = L7_2(L8_2)
    L8_2 = 1
    L9_2 = #L7_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2[L11_2]
      L13_2 = DoesEntityExist
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = GetEntityCoords
        L14_2 = L12_2
        L13_2 = L13_2(L14_2)
        L14_2 = L4_2.x
        L15_2 = L13_2.x
        L14_2 = L14_2 - L15_2
        L15_2 = L4_2.y
        L16_2 = L13_2.y
        L15_2 = L15_2 - L16_2
        L16_2 = L4_2.z
        L17_2 = L13_2.z
        L16_2 = L16_2 - L17_2
        L17_2 = L14_2 * L14_2
        L18_2 = L15_2 * L15_2
        L17_2 = L17_2 + L18_2
        L18_2 = L16_2 * L16_2
        L17_2 = L17_2 + L18_2
        if L6_2 > L17_2 then
          L18_2 = GetEntityModel
          L19_2 = L12_2
          L18_2 = L18_2(L19_2)
          L19_2 = false
          L20_2 = ipairs
          L21_2 = fishValidList
          L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
          for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
            L26_2 = GetHashKey
            L27_2 = L25_2
            L26_2 = L26_2(L27_2)
            if L18_2 == L26_2 or L18_2 == L25_2 then
              L19_2 = true
              break
            end
          end
          if L19_2 then
            L20_2 = SelectionObjects
            L20_2[L12_2] = true
            if L17_2 < 25.0 then
              L20_2 = GetEntityAlpha
              L21_2 = L12_2
              L20_2 = L20_2(L21_2)
              L21_2 = 250
              if L20_2 > L21_2 then
                L20_2 = GetAttachedPlayerServerId
                L21_2 = L12_2
                L20_2 = L20_2(L21_2)
                if nil == L20_2 then
                  L21_2 = L15_1
                  L22_2 = L12_2
                  L21_2 = L21_2(L22_2)
                  if L21_2 then
                    L21_2 = SetEntityAsMissionEntity
                    L22_2 = L12_2
                    L23_2 = true
                    L24_2 = true
                    L21_2(L22_2, L23_2, L24_2)
                  end
                end
              end
            end
          end
        end
      end
      L13_2 = L11_2 % 15
      if 0 == L13_2 then
        L13_2 = Wait
        L14_2 = 0
        L13_2(L14_2)
      end
    end
    L8_2 = IsControlPressed
    L9_2 = 0
    L10_2 = 18
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = IsDisabledControlPressed
      L9_2 = 0
      L10_2 = 18
      L8_2 = L8_2(L9_2, L10_2)
      if not L8_2 then
        goto lbl_258
      end
    end
    do return end
    ::lbl_258::
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
    L8_2 = FinePesca
    L8_2()
    L8_2 = false
    L9_2 = L8_1
    L10_2 = GetEntityCoords
    L11_2 = L3_2
    L10_2 = L10_2(L11_2)
    L11_2 = 7.0
    L9_2 = L9_2(L10_2, L11_2)
    if nil ~= L9_2 then
      L8_2 = true
    end
    if L8_2 then
      L10_2 = IsControlPressed
      L11_2 = 0
      L12_2 = 18
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L10_2 = IsDisabledControlPressed
        L11_2 = 0
        L12_2 = 18
        L10_2 = L10_2(L11_2, L12_2)
        if not L10_2 then
          goto lbl_288
        end
      end
      do return end
      ::lbl_288::
      modalitaPesci = true
      L10_2 = LoopModalitaPesci
      L10_2()
    else
      L10_2 = NoFishAndBox
      L10_2()
    end
  end
end
L16_1(L17_1, L18_1)
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = nil
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 4.0
  end
  L4_2 = ipairs
  L5_2 = GetGamePool
  L6_2 = "CVehicle"
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = DoesEntityExist
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = GetEntityCoords
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = A0_2 - L10_2
      L11_2 = #L11_2
      if L3_2 > L11_2 then
        L2_2 = L9_2
        L3_2 = L11_2
      end
    end
  end
  return L2_2
end
function L17_1()
  local L0_2, L1_2
  altezzaZ = 0.0
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
    L0_3 = Wait
    L1_3 = 25
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "pointingstart"
    L0_3(L1_3)
    while true do
      L0_3 = modalitaPesci
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 0
      L1_3(L2_3, L3_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 1
      L1_3(L2_3, L3_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 2
      L1_3(L2_3, L3_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 29
      L1_3(L2_3, L3_3)
      L1_3 = DisableKeysWhileFish
      L1_3()
      L1_3 = lastRefreshPos
      if L1_3 then
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = L1_3.x
        L3_3 = lastRefreshPos
        L3_3 = L3_3.x
        L2_3 = L2_3 - L3_3
        L3_3 = L1_3.y
        L4_3 = lastRefreshPos
        L4_3 = L4_3.y
        L3_3 = L3_3 - L4_3
        L4_3 = L1_3.z
        L5_3 = lastRefreshPos
        L5_3 = L5_3.z
        L4_3 = L4_3 - L5_3
        L5_3 = L2_3 * L2_3
        L6_3 = L3_3 * L3_3
        L5_3 = L5_3 + L6_3
        L6_3 = L4_3 * L4_3
        L5_3 = L5_3 + L6_3
        if L5_3 > 25.0 then
          lastRefreshPos = L1_3
          L5_3 = pairs
          L6_3 = SelectionObjects
          L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
          for L9_3 in L5_3, L6_3, L7_3, L8_3 do
            L10_3 = DoesEntityExist
            L11_3 = L9_3
            L10_3 = L10_3(L11_3)
            if L10_3 then
              L10_3 = GetEntityCoords
              L11_3 = L9_3
              L10_3 = L10_3(L11_3)
              L11_3 = L1_3.x
              L12_3 = L10_3.x
              L11_3 = L11_3 - L12_3
              L12_3 = L1_3.y
              L13_3 = L10_3.y
              L12_3 = L12_3 - L13_3
              L13_3 = L1_3.z
              L14_3 = L10_3.z
              L13_3 = L13_3 - L14_3
              L14_3 = L11_3 * L11_3
              L15_3 = L12_3 * L12_3
              L14_3 = L14_3 + L15_3
              L15_3 = L13_3 * L13_3
              L14_3 = L14_3 + L15_3
              if L14_3 < 100.0 then
                L14_3 = GetEntityAlpha
                L15_3 = L9_3
                L14_3 = L14_3(L15_3)
                L15_3 = 240
                if L14_3 > L15_3 then
                  L14_3 = L15_1
                  L15_3 = L9_3
                  L14_3 = L14_3(L15_3)
                  if L14_3 then
                    L14_3 = SetEntityAsMissionEntity
                    L15_3 = L9_3
                    L16_3 = true
                    L17_3 = true
                    L14_3(L15_3, L16_3, L17_3)
                  end
                end
              end
            else
              L10_3 = SelectionObjects
              L10_3[L9_3] = nil
              L10_3 = L14_1
              L10_3[L9_3] = nil
            end
          end
        end
      end
      L1_3 = IsDisabledControlPressed
      L2_3 = 0
      L3_3 = 22
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = screenToWorld
        L1_3 = L1_3()
        L2_3 = DisableControlAction
        L3_3 = 0
        L4_3 = 322
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = 322
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsControlJustPressed
          L3_3 = 0
          L4_3 = 322
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsDisabledControlJustPressed
            L3_3 = 0
            L4_3 = 73
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsControlJustPressed
              L3_3 = 0
              L4_3 = 19
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = IsDisabledControlJustPressed
                L3_3 = 0
                L4_3 = 19
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsPedInAnyVehicle
                  L3_3 = PlayerPedId
                  L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L3_3()
                  L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                  if not L2_3 then
                    goto lbl_183
                  end
                end
              end
            end
          end
        end
        modalitaPesci = false
        L2_3 = ResetOutlineEnt
        L2_3()
        pescando = false
        L2_3 = FinePesca
        L2_3()
        do return end
        ::lbl_183::
        if nil == L1_3 then
          goto lbl_3056
        end
        L2_3 = vector3
        L3_3 = 0.0
        L4_3 = 0.0
        L5_3 = 0.0
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        if L1_3 == L2_3 then
          goto lbl_3056
        end
        L2_3 = GetEntityCoords
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        L2_3 = L2_3 - L1_3
        L2_3 = #L2_3
        L3_3 = MAXDISTANCE_EDITOR
        if not (L2_3 <= L3_3) then
          goto lbl_3056
        end
        L2_3 = false
        L3_3 = L8_1
        L4_3 = eInteractPos
        L5_3 = 0.5
        L3_3 = L3_3(L4_3, L5_3)
        L4_3 = IsPedSwimming
        L5_3 = PlayerPedId
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L5_3()
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
        if not L4_3 then
          L4_3 = IsPedSwimmingUnderWater
          L5_3 = PlayerPedId
          L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L5_3()
          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          if not L4_3 then
            L4_3 = eInteractPos
            L4_3 = L4_3.z
            if not (L4_3 < 0.0) then
              L4_3 = IsEntityInWater
              L5_3 = PlayerPedId
              L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L5_3()
              L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              if not L4_3 then
                goto lbl_233
              end
            end
          end
        end
        L4_3 = L8_1
        L5_3 = eInteractPos
        L6_3 = 0.7
        L4_3 = L4_3(L5_3, L6_3)
        L3_3 = L4_3
        ::lbl_233::
        L4_3 = L3_3
        if nil ~= L4_3 then
          L5_3 = OutlineEntSOD
          L6_3 = L4_3
          L5_3(L6_3)
        end
        if nil ~= L4_3 then
          L5_3 = GetEntityModel
          L6_3 = L4_3
          L5_3 = L5_3(L6_3)
          if -1569653431 == L5_3 then
            L5_3 = soundNewFound
            L6_3 = L4_3
            L5_3(L6_3)
            L5_3 = GetEntityCoords
            L6_3 = L4_3
            L5_3 = L5_3(L6_3)
            L6_3 = getPoolIdFromEntity
            L7_3 = L4_3
            L6_3 = L6_3(L7_3)
            L7_3 = nil
            if L6_3 then
              L8_3 = pool
              L8_3 = L8_3[L6_3]
              if L8_3 then
                L8_3 = tonumber
                L9_3 = pool
                L9_3 = L9_3[L6_3]
                L9_3 = L9_3.amount
                L8_3 = L8_3(L9_3)
                L7_3 = L8_3 or L7_3
                if not L8_3 then
                  L7_3 = 0
                end
            end
            else
              L8_3 = getCorrectGlobalAmount
              L9_3 = L4_3
              L8_3 = L8_3(L9_3)
              L7_3 = L8_3
            end
            if nil == L7_3 then
              L7_3 = 0
            end
            L8_3 = Draw3D
            L9_3 = L5_3.x
            L10_3 = L5_3.y
            L11_3 = L5_3.z
            L11_3 = L11_3 + 0.3
            L12_3 = "Fuel: ~h~"
            L13_3 = L7_3
            L14_3 = "% mix"
            L12_3 = L12_3 .. L13_3 .. L14_3
            L13_3 = 0.4
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
            L8_3 = OutlineEntSOD
            L9_3 = L4_3
            L8_3(L9_3)
            L2_3 = true
            L8_3 = draw
            L9_3 = 24
            L10_3 = "Equip chainsaw (~h~"
            L11_3 = L7_3
            L12_3 = "~h~%)"
            L10_3 = L10_3 .. L11_3 .. L12_3
            L11_3 = 74
            L12_3 = "Manage"
            L13_3 = 73
            L14_3 = "Cancel"
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            L8_3 = HandlerMenuManager
            L9_3 = L3_3
            L8_3(L9_3)
            L8_3 = IsControlJustPressed
            L9_3 = 0
            L10_3 = 24
            L8_3 = L8_3(L9_3, L10_3)
            if not L8_3 then
              L8_3 = IsDisabledControlJustPressed
              L9_3 = 0
              L10_3 = 24
              L8_3 = L8_3(L9_3, L10_3)
            end
            if L8_3 then
              L8_3 = AttaccaMotosega
              L9_3 = L4_3
              L10_3 = L7_3
              L8_3(L9_3, L10_3)
              return
            end
        end
        else
          if nil ~= L4_3 then
            L5_3 = GetEntityModel
            L6_3 = L4_3
            L5_3 = L5_3(L6_3)
            if 1069395324 == L5_3 then
              L5_3 = soundNewFound
              L6_3 = L4_3
              L5_3(L6_3)
              L5_3 = GetEntityCoords
              L6_3 = L4_3
              L5_3 = L5_3(L6_3)
              L6_3 = getPoolIdFromEntity
              L7_3 = L4_3
              L6_3 = L6_3(L7_3)
              L7_3 = nil
              if L6_3 then
                L8_3 = pool
                L8_3 = L8_3[L6_3]
                if L8_3 then
                  L8_3 = tonumber
                  L9_3 = pool
                  L9_3 = L9_3[L6_3]
                  L9_3 = L9_3.amount
                  L8_3 = L8_3(L9_3)
                  L7_3 = L8_3 or L7_3
                  if not L8_3 then
                    L7_3 = 0
                  end
              end
              else
                L8_3 = getCorrectGlobalAmount
                L9_3 = L4_3
                L8_3 = L8_3(L9_3)
                L7_3 = L8_3
              end
              if nil == L7_3 then
                L7_3 = 100
              end
              L8_3 = Draw3D
              L9_3 = L5_3.x
              L10_3 = L5_3.y
              L11_3 = L5_3.z
              L11_3 = L11_3 + 0.3
              L12_3 = "Tank: ~h~"
              L13_3 = L7_3
              L14_3 = "% lt"
              L12_3 = L12_3 .. L13_3 .. L14_3
              L13_3 = 0.4
              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
              L8_3 = OutlineEntSOD
              L9_3 = L4_3
              L8_3(L9_3)
              L2_3 = true
              L8_3 = L16_1
              L9_3 = L5_3
              L10_3 = 4.0
              L8_3 = L8_3(L9_3, L10_3)
              L9_3 = false
              L10_3 = 0
              if L8_3 then
                L11_3 = DoesEntityExist
                L12_3 = L8_3
                L11_3 = L11_3(L12_3)
                if L11_3 then
                  L9_3 = true
                  L11_3 = Entity
                  L12_3 = L8_3
                  L11_3 = L11_3(L12_3)
                  L11_3 = L11_3.state
                  L10_3 = L11_3.fuelState
                  if nil == L10_3 then
                    L11_3 = GetVehicleFuelLevel
                    L12_3 = L8_3
                    L11_3 = L11_3(L12_3)
                    L10_3 = L11_3
                  end
                  L11_3 = tonumber
                  L12_3 = L10_3
                  L11_3 = L11_3(L12_3)
                  L10_3 = L11_3 or L10_3
                  if not L11_3 then
                    L10_3 = 0
                  end
                end
              end
              if L9_3 then
                L11_3 = draw
                L12_3 = 24
                L13_3 = "Equip"
                L14_3 = 74
                L15_3 = "Manage"
                L16_3 = 73
                L17_3 = "Cancel"
                L18_3 = 244
                L19_3 = "Refill Vehicle"
                L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              else
                L11_3 = draw
                L12_3 = 24
                L13_3 = "Equip"
                L14_3 = 74
                L15_3 = "Manage"
                L16_3 = 73
                L17_3 = "Cancel"
                L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              end
              L11_3 = HandlerMenuManager
              L12_3 = L3_3
              L11_3(L12_3)
              L11_3 = IsControlJustPressed
              L12_3 = 0
              L13_3 = 24
              L11_3 = L11_3(L12_3, L13_3)
              if not L11_3 then
                L11_3 = IsDisabledControlJustPressed
                L12_3 = 0
                L13_3 = 24
                L11_3 = L11_3(L12_3, L13_3)
                if not L11_3 then
                  goto lbl_455
                end
              end
              L11_3 = AttaccaMotosega
              L12_3 = L4_3
              L13_3 = L7_3 or L13_3
              if not L7_3 then
                L13_3 = 100
              end
              L11_3(L12_3, L13_3)
              do return end
              ::lbl_455::
              if L9_3 then
                L11_3 = IsControlJustPressed
                L12_3 = 0
                L13_3 = 244
                L11_3 = L11_3(L12_3, L13_3)
                if not L11_3 then
                  L11_3 = IsDisabledControlJustPressed
                  L12_3 = 0
                  L13_3 = 244
                  L11_3 = L11_3(L12_3, L13_3)
                end
                if L11_3 then
                  L11_3 = true
                  L12_3 = 99.9
                  if L10_3 >= L12_3 then
                    L12_3 = exports
                    L12_3 = L12_3.striano_combat
                    L13_3 = L12_3
                    L12_3 = L12_3.submex
                    L14_3 = "Vehicle Full."
                    L12_3(L13_3, L14_3)
                    L12_3 = PlaySoundFrontend
                    L13_3 = -1
                    L14_3 = "TIMER_STOP"
                    L15_3 = "HUD_MINI_GAME_SOUNDSET"
                    L16_3 = 1
                    L12_3(L13_3, L14_3, L15_3, L16_3)
                    L11_3 = false
                    L12_3 = Wait
                    L13_3 = 1000
                    L12_3(L13_3)
                  end
                  if L7_3 <= 1 then
                    L12_3 = exports
                    L12_3 = L12_3.striano_combat
                    L13_3 = L12_3
                    L12_3 = L12_3.submex
                    L14_3 = "Tank too Empty."
                    L12_3(L13_3, L14_3)
                    L12_3 = PlaySoundFrontend
                    L13_3 = -1
                    L14_3 = "TIMER_STOP"
                    L15_3 = "HUD_MINI_GAME_SOUNDSET"
                    L16_3 = 1
                    L12_3(L13_3, L14_3, L15_3, L16_3)
                    L11_3 = false
                    L12_3 = Wait
                    L13_3 = 1000
                    L12_3(L13_3)
                  end
                  if L11_3 then
                    L12_3 = SetVehicleFuelLevel
                    L13_3 = L8_3
                    L14_3 = 100.0
                    L12_3(L13_3, L14_3)
                    L12_3 = Entity
                    L13_3 = L8_3
                    L12_3 = L12_3(L13_3)
                    L12_3 = L12_3.state
                    L13_3 = L12_3
                    L12_3 = L12_3.set
                    L14_3 = "fuelState"
                    L15_3 = 100.0
                    L16_3 = true
                    L12_3(L13_3, L14_3, L15_3, L16_3)
                    L12_3 = getPoolIdFromEntity
                    L13_3 = L4_3
                    L12_3 = L12_3(L13_3)
                    if nil ~= L12_3 then
                      L13_3 = delprop
                      L14_3 = L12_3
                      L13_3(L14_3)
                    else
                      L13_3 = SetEntityAsMissionEntity
                      L14_3 = L4_3
                      L13_3(L14_3)
                      L13_3 = DeleteEntity
                      L14_3 = L4_3
                      L13_3(L14_3)
                    end
                    L13_3 = exports
                    L13_3 = L13_3.striano_combat
                    L14_3 = L13_3
                    L13_3 = L13_3.submex
                    L15_3 = "Vehicle refilled."
                    L13_3(L14_3, L15_3)
                    L13_3 = PlaySoundFrontend
                    L14_3 = -1
                    L15_3 = "PICK_UP"
                    L16_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                    L17_3 = true
                    L13_3(L14_3, L15_3, L16_3, L17_3)
                    modalitaPesci = false
                    L13_3 = ResetOutlineEnt
                    L13_3()
                    pescando = false
                    L13_3 = FinePesca
                    L13_3()
                    return
                  end
                end
              end
          end
          else
            if nil ~= L4_3 then
              L5_3 = itsPlasticTrash
              L6_3 = L4_3
              L5_3 = L5_3(L6_3)
              if L5_3 then
                L5_3 = soundNewFound
                L6_3 = L4_3
                L5_3(L6_3)
                L5_3 = GetEntityCoords
                L6_3 = L4_3
                L5_3 = L5_3(L6_3)
                L6_3 = "Clean"
                L7_3 = Draw3D
                L8_3 = L5_3.x
                L9_3 = L5_3.y
                L10_3 = L5_3.z
                L10_3 = L10_3 + 0.3
                L11_3 = L6_3
                L12_3 = 0.4
                L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                L7_3 = OutlineEntSOD
                L8_3 = L4_3
                L7_3(L8_3)
                L2_3 = true
                L7_3 = draw
                L8_3 = 24
                L9_3 = "Destroy"
                L10_3 = 73
                L11_3 = "Cancel"
                L7_3(L8_3, L9_3, L10_3, L11_3)
                L7_3 = IsControlJustPressed
                L8_3 = 0
                L9_3 = 24
                L7_3 = L7_3(L8_3, L9_3)
                if not L7_3 then
                  L7_3 = IsDisabledControlJustPressed
                  L8_3 = 0
                  L9_3 = 24
                  L7_3 = L7_3(L8_3, L9_3)
                end
                if L7_3 then
                  L7_3 = getPoolIdFromEntity
                  L8_3 = L4_3
                  L7_3 = L7_3(L8_3)
                  if nil ~= L7_3 then
                    L8_3 = delprop
                    L9_3 = L7_3
                    L8_3(L9_3)
                  else
                    L8_3 = SetEntityAsMissionEntity
                    L9_3 = L4_3
                    L8_3(L9_3)
                    L8_3 = DeleteEntity
                    L9_3 = L4_3
                    L8_3(L9_3)
                  end
                  L8_3 = PlaySoundFrontend
                  L9_3 = -1
                  L10_3 = "TIMER"
                  L11_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                  L12_3 = 1
                  L8_3(L9_3, L10_3, L11_3, L12_3)
                end
            end
            else
              if nil ~= L4_3 then
                L5_3 = GetEntityModel
                L6_3 = L4_3
                L5_3 = L5_3(L6_3)
                if 702767871 == L5_3 then
                  L5_3 = GetEntityCoords
                  L6_3 = L4_3
                  L5_3 = L5_3(L6_3)
                  L6_3 = "Empty bucket"
                  L7_3 = Draw3D
                  L8_3 = L5_3.x
                  L9_3 = L5_3.y
                  L10_3 = L5_3.z
                  L10_3 = L10_3 + 0.3
                  L11_3 = L6_3
                  L12_3 = 0.4
                  L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                  L7_3 = OutlineEntSOD
                  L8_3 = L4_3
                  L7_3(L8_3)
                  L2_3 = true
                  L7_3 = draw
                  L8_3 = 24
                  L9_3 = "Take"
                  L10_3 = 74
                  L11_3 = "Manage"
                  L12_3 = 73
                  L13_3 = "Cancel"
                  L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                  L7_3 = HandlerMenuManager
                  L8_3 = L4_3
                  L7_3(L8_3)
                  L7_3 = IsControlJustPressed
                  L8_3 = 0
                  L9_3 = 24
                  L7_3 = L7_3(L8_3, L9_3)
                  if not L7_3 then
                    L7_3 = IsDisabledControlJustPressed
                    L8_3 = 0
                    L9_3 = 24
                    L7_3 = L7_3(L8_3, L9_3)
                  end
                  if L7_3 then
                    L7_3 = getPoolIdFromEntity
                    L8_3 = L4_3
                    L7_3 = L7_3(L8_3)
                    if nil ~= L7_3 then
                      L8_3 = delprop
                      L9_3 = L7_3
                      L8_3(L9_3)
                    else
                      L8_3 = SetEntityAsMissionEntity
                      L9_3 = L4_3
                      L8_3(L9_3)
                      L8_3 = DeleteEntity
                      L9_3 = L4_3
                      L8_3(L9_3)
                    end
                    L8_3 = TriggerEvent
                    L9_3 = "SecchioVuoto"
                    L10_3 = L4_3
                    L8_3(L9_3, L10_3)
                    return
                  end
              end
              else
                if nil ~= L4_3 then
                  L5_3 = GetEntityModel
                  L6_3 = L4_3
                  L5_3 = L5_3(L6_3)
                  if 509021182 ~= L5_3 then
                    L5_3 = GetEntityModel
                    L6_3 = L4_3
                    L5_3 = L5_3(L6_3)
                    if -1129775457 ~= L5_3 then
                      goto lbl_762
                    end
                  end
                  L5_3 = GetEntityCoords
                  L6_3 = L4_3
                  L5_3 = L5_3(L6_3)
                  L6_3 = "Full bucket"
                  L7_3 = Draw3D
                  L8_3 = L5_3.x
                  L9_3 = L5_3.y
                  L10_3 = L5_3.z
                  L10_3 = L10_3 + 0.3
                  L11_3 = L6_3
                  L12_3 = 0.4
                  L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                  L7_3 = OutlineEntSOD
                  L8_3 = L4_3
                  L7_3(L8_3)
                  L2_3 = true
                  L7_3 = draw
                  L8_3 = 24
                  L9_3 = "Take"
                  L10_3 = 74
                  L11_3 = "Manage"
                  L12_3 = 73
                  L13_3 = "Cancel"
                  L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                  L7_3 = HandlerMenuManager
                  L8_3 = L4_3
                  L7_3(L8_3)
                  L7_3 = IsControlJustPressed
                  L8_3 = 0
                  L9_3 = 24
                  L7_3 = L7_3(L8_3, L9_3)
                  if not L7_3 then
                    L7_3 = IsDisabledControlJustPressed
                    L8_3 = 0
                    L9_3 = 24
                    L7_3 = L7_3(L8_3, L9_3)
                  end
                  if L7_3 then
                    L7_3 = getPoolIdFromEntity
                    L8_3 = L4_3
                    L7_3 = L7_3(L8_3)
                    if nil ~= L7_3 then
                      L8_3 = delprop
                      L9_3 = L7_3
                      L8_3(L9_3)
                    else
                      L8_3 = SetEntityAsMissionEntity
                      L9_3 = L4_3
                      L8_3(L9_3)
                      L8_3 = DeleteEntity
                      L9_3 = L4_3
                      L8_3(L9_3)
                    end
                    L8_3 = TriggerEvent
                    L9_3 = "SecchioPieno"
                    L10_3 = L4_3
                    L8_3(L9_3, L10_3)
                    return
                  end
                ::lbl_762::
                else
                  if nil ~= L4_3 then
                    L5_3 = GetEntityModel
                    L6_3 = L4_3
                    L5_3 = L5_3(L6_3)
                    if -2071017565 == L5_3 then
                      L5_3 = GetEntityCoords
                      L6_3 = L4_3
                      L5_3 = L5_3(L6_3)
                      L6_3 = "Shovel"
                      L7_3 = Draw3D
                      L8_3 = L5_3.x
                      L9_3 = L5_3.y
                      L10_3 = L5_3.z
                      L10_3 = L10_3 + 0.3
                      L11_3 = L6_3
                      L12_3 = 0.4
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                      L7_3 = OutlineEntSOD
                      L8_3 = L4_3
                      L7_3(L8_3)
                      L2_3 = true
                      L7_3 = draw
                      L8_3 = 25
                      L9_3 = "Equip"
                      L10_3 = 45
                      L11_3 = "Take in inventory"
                      L12_3 = 73
                      L13_3 = "Exit"
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                      L7_3 = IsControlJustPressed
                      L8_3 = 0
                      L9_3 = 45
                      L7_3 = L7_3(L8_3, L9_3)
                      if L7_3 then
                        L7_3 = SetEntityAsMissionEntity
                        L8_3 = L4_3
                        L7_3(L8_3)
                        L7_3 = DeleteEntity
                        L8_3 = L4_3
                        L7_3(L8_3)
                        L7_3 = faiAnimPool
                        L8_3 = "cellphone@"
                        L9_3 = "cellphone_cellphone_outro"
                        L10_3 = 750
                        L11_3 = 49
                        L7_3(L8_3, L9_3, L10_3, L11_3)
                        L7_3 = GetBackShovel
                        L7_3()
                      end
                  end
                  else
                    if nil ~= L4_3 then
                      L5_3 = GetEntityModel
                      L6_3 = L4_3
                      L5_3 = L5_3(L6_3)
                      if 246141110 == L5_3 then
                        L5_3 = GetEntityCoords
                        L6_3 = L4_3
                        L5_3 = L5_3(L6_3)
                        L6_3 = "Letto"
                        L7_3 = Draw3D
                        L8_3 = L5_3.x
                        L9_3 = L5_3.y
                        L10_3 = L5_3.z
                        L10_3 = L10_3 + 0.3
                        L11_3 = L6_3
                        L12_3 = 0.4
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                        L7_3 = OutlineEntSOD
                        L8_3 = L4_3
                        L7_3(L8_3)
                        L2_3 = true
                        L7_3 = draw
                        L8_3 = 45
                        L9_3 = "Sleep"
                        L10_3 = 73
                        L11_3 = "Exit"
                        L7_3(L8_3, L9_3, L10_3, L11_3)
                        L7_3 = IsControlJustPressed
                        L8_3 = 0
                        L9_3 = 45
                        L7_3 = L7_3(L8_3, L9_3)
                        if L7_3 then
                          L7_3 = GetEntityCoords
                          L8_3 = PlayerPedId
                          L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L8_3()
                          L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                          L8_3 = GetEntityCoords
                          L9_3 = L4_3
                          L8_3 = L8_3(L9_3)
                          L7_3 = L7_3 - L8_3
                          L7_3 = #L7_3
                          L8_3 = 1.7
                          if L7_3 > L8_3 then
                            L7_3 = TooFarObject
                            L7_3()
                          else
                            L7_3 = ExecuteCommand
                            L8_3 = "dormi"
                            L7_3(L8_3)
                            modalitaPesci = false
                            L7_3 = ResetOutlineEnt
                            L7_3()
                            pescando = false
                            L7_3 = FinePesca
                            L7_3()
                            return
                          end
                        end
                    end
                    else
                      if nil ~= L4_3 then
                        L5_3 = GetEntityModel
                        L6_3 = L4_3
                        L5_3 = L5_3(L6_3)
                        if 550150979 == L5_3 then
                          L5_3 = GetEntityCoords
                          L6_3 = L4_3
                          L5_3 = L5_3(L6_3)
                          L6_3 = Entity
                          L7_3 = L4_3
                          L6_3 = L6_3(L7_3)
                          L6_3 = L6_3.state
                          L6_3 = L6_3.qtPlacche
                          if nil == L6_3 or L6_3 <= 0 then
                            L6_3 = 1
                            L7_3 = Entity
                            L8_3 = L4_3
                            L7_3 = L7_3(L8_3)
                            L7_3 = L7_3.state
                            L8_3 = L7_3
                            L7_3 = L7_3.set
                            L9_3 = "qtPlacche"
                            L10_3 = L6_3
                            L11_3 = true
                            L7_3(L8_3, L9_3, L10_3, L11_3)
                          end
                          L7_3 = "Piece meth: ~h~"
                          L8_3 = L6_3
                          L9_3 = ""
                          L7_3 = L7_3 .. L8_3 .. L9_3
                          L8_3 = Draw3D
                          L9_3 = L5_3.x
                          L10_3 = L5_3.y
                          L11_3 = L5_3.z
                          L11_3 = L11_3 + 0.3
                          L12_3 = L7_3
                          L13_3 = 0.4
                          L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
                          L8_3 = OutlineEntSOD
                          L9_3 = L4_3
                          L8_3(L9_3)
                          L2_3 = true
                          L8_3 = draw
                          L9_3 = 25
                          L10_3 = "Take"
                          L11_3 = 73
                          L12_3 = "Exit"
                          L8_3(L9_3, L10_3, L11_3, L12_3)
                      end
                      else
                        if nil ~= L4_3 then
                          L5_3 = GetEntityModel
                          L6_3 = L4_3
                          L5_3 = L5_3(L6_3)
                          if -1218018752 == L5_3 then
                            L5_3 = GetEntityCoords
                            L6_3 = L4_3
                            L5_3 = L5_3(L6_3)
                            L6_3 = Entity
                            L7_3 = L4_3
                            L6_3 = L6_3(L7_3)
                            L6_3 = L6_3.state
                            L6_3 = L6_3.qtBustine
                            if nil == L6_3 or L6_3 <= 0 then
                              L6_3 = 4
                              L7_3 = Entity
                              L8_3 = L4_3
                              L7_3 = L7_3(L8_3)
                              L7_3 = L7_3.state
                              L8_3 = L7_3
                              L7_3 = L7_3.set
                              L9_3 = "qtBustine"
                              L10_3 = L6_3
                              L11_3 = true
                              L7_3(L8_3, L9_3, L10_3, L11_3)
                            end
                            L7_3 = "Bag empty: ~h~"
                            L8_3 = L6_3
                            L9_3 = ""
                            L7_3 = L7_3 .. L8_3 .. L9_3
                            L8_3 = Draw3D
                            L9_3 = L5_3.x
                            L10_3 = L5_3.y
                            L11_3 = L5_3.z
                            L11_3 = L11_3 + 0.3
                            L12_3 = L7_3
                            L13_3 = 0.4
                            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
                            L8_3 = OutlineEntSOD
                            L9_3 = L4_3
                            L8_3(L9_3)
                            L2_3 = true
                            L8_3 = draw
                            L9_3 = 25
                            L10_3 = "Take"
                            L11_3 = 73
                            L12_3 = "Exit"
                            L8_3(L9_3, L10_3, L11_3, L12_3)
                        end
                        else
                          if nil ~= L4_3 then
                            L5_3 = GetEntityModel
                            L6_3 = L4_3
                            L5_3 = L5_3(L6_3)
                            if -1249316776 == L5_3 then
                              L5_3 = GetEntityCoords
                              L6_3 = L4_3
                              L5_3 = L5_3(L6_3)
                              L6_3 = Entity
                              L7_3 = L4_3
                              L6_3 = L6_3(L7_3)
                              L6_3 = L6_3.state
                              L6_3 = L6_3.qtMeth
                              if nil == L6_3 or L6_3 <= 0 then
                                L6_3 = 1
                                L7_3 = Entity
                                L8_3 = L4_3
                                L7_3 = L7_3(L8_3)
                                L7_3 = L7_3.state
                                L8_3 = L7_3
                                L7_3 = L7_3.set
                                L9_3 = "qtMeth"
                                L10_3 = L6_3
                                L11_3 = true
                                L7_3(L8_3, L9_3, L10_3, L11_3)
                              end
                              L7_3 = "Bag meth: ~h~"
                              L8_3 = L6_3
                              L9_3 = " ("
                              L10_3 = 100 * L6_3
                              L11_3 = " pills)"
                              L7_3 = L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3
                              L8_3 = Draw3D
                              L9_3 = L5_3.x
                              L10_3 = L5_3.y
                              L11_3 = L5_3.z
                              L11_3 = L11_3 + 0.3
                              L12_3 = L7_3
                              L13_3 = 0.4
                              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
                              L8_3 = OutlineEntSOD
                              L9_3 = L4_3
                              L8_3(L9_3)
                              L2_3 = true
                              L8_3 = draw
                              L9_3 = 25
                              L10_3 = "Take"
                              L11_3 = 73
                              L12_3 = "Exit"
                              L8_3(L9_3, L10_3, L11_3, L12_3)
                          end
                          else
                            if nil ~= L4_3 then
                              L5_3 = GetEntityModel
                              L6_3 = L4_3
                              L5_3 = L5_3(L6_3)
                              if 628573572 == L5_3 then
                                L5_3 = GetEntityCoords
                                L6_3 = L4_3
                                L5_3 = L5_3(L6_3)
                                L6_3 = Entity
                                L7_3 = L4_3
                                L6_3 = L6_3(L7_3)
                                L6_3 = L6_3.state
                                L6_3 = L6_3.qtMixata
                                if nil == L6_3 or L6_3 <= 0 then
                                  L6_3 = 100
                                  L7_3 = Entity
                                  L8_3 = L4_3
                                  L7_3 = L7_3(L8_3)
                                  L7_3 = L7_3.state
                                  L8_3 = L7_3
                                  L7_3 = L7_3.set
                                  L9_3 = "qtMixata"
                                  L10_3 = L6_3
                                  L11_3 = true
                                  L7_3(L8_3, L9_3, L10_3, L11_3)
                                end
                                L7_3 = "Crate: ~h~"
                                L8_3 = L6_3
                                L9_3 = " pills"
                                L7_3 = L7_3 .. L8_3 .. L9_3
                                L8_3 = Draw3D
                                L9_3 = L5_3.x
                                L10_3 = L5_3.y
                                L11_3 = L5_3.z
                                L11_3 = L11_3 + 0.3
                                L12_3 = L7_3
                                L13_3 = 0.4
                                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
                                L8_3 = OutlineEntSOD
                                L9_3 = L4_3
                                L8_3(L9_3)
                                L2_3 = true
                                L8_3 = draw
                                L9_3 = 25
                                L10_3 = "Take"
                                L11_3 = 73
                                L12_3 = "Exit"
                                L8_3(L9_3, L10_3, L11_3, L12_3)
                            end
                            else
                              if nil ~= L4_3 then
                                L5_3 = GetEntityModel
                                L6_3 = L4_3
                                L5_3 = L5_3(L6_3)
                                if 1298403575 == L5_3 then
                                  L5_3 = GetEntityCoords
                                  L6_3 = L4_3
                                  L5_3 = L5_3(L6_3)
                                  L6_3 = Entity
                                  L7_3 = L4_3
                                  L6_3 = L6_3(L7_3)
                                  L6_3 = L6_3.state
                                  L6_3 = L6_3.qtolio
                                  if nil == L6_3 or L6_3 <= 0 then
                                    L6_3 = 20
                                    L7_3 = Entity
                                    L8_3 = L4_3
                                    L7_3 = L7_3(L8_3)
                                    L7_3 = L7_3.state
                                    L8_3 = L7_3
                                    L7_3 = L7_3.set
                                    L9_3 = "qtolio"
                                    L10_3 = L6_3
                                    L11_3 = true
                                    L7_3(L8_3, L9_3, L10_3, L11_3)
                                  end
                                  L7_3 = "Oil: ~h~"
                                  L8_3 = L6_3
                                  L9_3 = " lt."
                                  L7_3 = L7_3 .. L8_3 .. L9_3
                                  L8_3 = Draw3D
                                  L9_3 = L5_3.x
                                  L10_3 = L5_3.y
                                  L11_3 = L5_3.z
                                  L11_3 = L11_3 + 0.3
                                  L12_3 = L7_3
                                  L13_3 = 0.4
                                  L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
                                  L8_3 = OutlineEntSOD
                                  L9_3 = L4_3
                                  L8_3(L9_3)
                                  L2_3 = true
                                  L8_3 = draw
                                  L9_3 = 25
                                  L10_3 = "Drag"
                                  L11_3 = 73
                                  L12_3 = "Cancel"
                                  L8_3(L9_3, L10_3, L11_3, L12_3)
                              end
                              else
                                if nil ~= L4_3 then
                                  L5_3 = GetEntityModel
                                  L6_3 = L4_3
                                  L5_3 = L5_3(L6_3)
                                  if 1879761629 == L5_3 then
                                    L5_3 = GetEntityCoords
                                    L6_3 = L4_3
                                    L5_3 = L5_3(L6_3)
                                    L6_3 = Entity
                                    L7_3 = L4_3
                                    L6_3 = L6_3(L7_3)
                                    L6_3 = L6_3.state
                                    L6_3 = L6_3.qtsolvente
                                    if nil == L6_3 or L6_3 <= 0 then
                                      L6_3 = 10
                                      L7_3 = Entity
                                      L8_3 = L4_3
                                      L7_3 = L7_3(L8_3)
                                      L7_3 = L7_3.state
                                      L8_3 = L7_3
                                      L7_3 = L7_3.set
                                      L9_3 = "qtsolvente"
                                      L10_3 = 10
                                      L11_3 = true
                                      L7_3(L8_3, L9_3, L10_3, L11_3)
                                    end
                                    L7_3 = "Solvent: ~h~"
                                    L8_3 = L6_3
                                    L9_3 = " lt."
                                    L7_3 = L7_3 .. L8_3 .. L9_3
                                    L8_3 = Draw3D
                                    L9_3 = L5_3.x
                                    L10_3 = L5_3.y
                                    L11_3 = L5_3.z
                                    L11_3 = L11_3 + 0.3
                                    L12_3 = L7_3
                                    L13_3 = 0.4
                                    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
                                    L8_3 = OutlineEntSOD
                                    L9_3 = L4_3
                                    L8_3(L9_3)
                                    L2_3 = true
                                    L8_3 = draw
                                    L9_3 = 25
                                    L10_3 = "Drag"
                                    L11_3 = 73
                                    L12_3 = "Cancel"
                                    L8_3(L9_3, L10_3, L11_3, L12_3)
                                end
                                else
                                  if nil ~= L4_3 then
                                    L5_3 = GetEntityModel
                                    L6_3 = L4_3
                                    L5_3 = L5_3(L6_3)
                                    if 1917885559 == L5_3 then
                                      L5_3 = Entity
                                      L6_3 = L4_3
                                      L5_3 = L5_3(L6_3)
                                      L5_3 = L5_3.state
                                      L5_3 = L5_3.corrente
                                      if nil == L5_3 then
                                        L5_3 = 0
                                      end
                                      if L5_3 > 100 then
                                        L5_3 = 100
                                      end
                                      L6_3 = Entity
                                      L7_3 = L4_3
                                      L6_3 = L6_3(L7_3)
                                      L6_3 = L6_3.state
                                      L6_3 = L6_3.accensione
                                      if nil == L6_3 then
                                        L6_3 = false
                                      end
                                      L7_3 = "OFF"
                                      if L6_3 then
                                        L7_3 = "ON"
                                      end
                                      L8_3 = draw
                                      L9_3 = 38
                                      L10_3 = "Interact: ~h~Machine ("
                                      L11_3 = L7_3
                                      L12_3 = ") "
                                      L13_3 = L5_3
                                      L14_3 = "%"
                                      L10_3 = L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3
                                      L11_3 = 25
                                      L12_3 = "Drag"
                                      L13_3 = 73
                                      L14_3 = "Cancel"
                                      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                                      L8_3 = GetEntityCoords
                                      L9_3 = L4_3
                                      L8_3 = L8_3(L9_3)
                                      L9_3 = "Battery: ~h~"
                                      L10_3 = L5_3
                                      L11_3 = "%"
                                      L9_3 = L9_3 .. L10_3 .. L11_3
                                      L10_3 = Draw3D
                                      L11_3 = L8_3.x
                                      L12_3 = L8_3.y
                                      L13_3 = L8_3.z
                                      L13_3 = L13_3 + 0.9
                                      L14_3 = L9_3
                                      L15_3 = 0.4
                                      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
                                      L10_3 = OutlineEntSOD
                                      L11_3 = L4_3
                                      L10_3(L11_3)
                                      L2_3 = true
                                      L10_3 = IsDisabledControlJustPressed
                                      L11_3 = 0
                                      L12_3 = 38
                                      L10_3 = L10_3(L11_3, L12_3)
                                      if not L10_3 then
                                        L10_3 = IsControlJustPressed
                                        L11_3 = 0
                                        L12_3 = 38
                                        L10_3 = L10_3(L11_3, L12_3)
                                      end
                                      if L10_3 then
                                        L10_3 = GetEntityCoords
                                        L11_3 = L4_3
                                        L10_3 = L10_3(L11_3)
                                        L11_3 = GetEntityCoords
                                        L12_3 = PlayerPedId
                                        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L12_3()
                                        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                        L10_3 = L10_3 - L11_3
                                        L10_3 = #L10_3
                                        L11_3 = 1.3
                                        if L10_3 < L11_3 then
                                          L10_3 = ResetOutlineEnt
                                          L10_3()
                                          modalitaPesci = false
                                          L10_3 = Wait
                                          L11_3 = 25
                                          L10_3(L11_3)
                                          L10_3 = InteragisciProp
                                          L11_3 = L4_3
                                          L10_3(L11_3)
                                          return
                                        else
                                          L10_3 = TooFarObject
                                          L10_3()
                                          L10_3 = Wait
                                          L11_3 = 150
                                          L10_3(L11_3)
                                        end
                                      end
                                  end
                                  else
                                    if nil ~= L4_3 then
                                      L5_3 = GetEntityModel
                                      L6_3 = L4_3
                                      L5_3 = L5_3(L6_3)
                                      if -167376511 == L5_3 then
                                        L5_3 = draw
                                        L6_3 = 74
                                        L7_3 = "~h~Lit"
                                        L8_3 = 73
                                        L9_3 = "Cancel"
                                        L5_3(L6_3, L7_3, L8_3, L9_3)
                                        L5_3 = OutlineEntSOD
                                        L6_3 = L4_3
                                        L5_3(L6_3)
                                        L5_3 = IsDisabledControlJustPressed
                                        L6_3 = 0
                                        L7_3 = 74
                                        L5_3 = L5_3(L6_3, L7_3)
                                        if not L5_3 then
                                          L5_3 = IsControlJustPressed
                                          L6_3 = 0
                                          L7_3 = 74
                                          L5_3 = L5_3(L6_3, L7_3)
                                          if not L5_3 then
                                            goto lbl_2988
                                          end
                                        end
                                        L5_3 = myBracierePos
                                        L5_3 = nil ~= L5_3
                                        if not L5_3 then
                                          L6_3 = lightProp
                                          if L6_3 then
                                            L6_3 = DoesEntityExist
                                            L7_3 = lightProp
                                            L6_3 = L6_3(L7_3)
                                            if L6_3 then
                                              L6_3 = Citizen
                                              L6_3 = L6_3.InvokeNative
                                              L7_3 = -7918206464511161279
                                              L8_3 = L0_3
                                              L6_3 = L6_3(L7_3, L8_3)
                                              if L6_3 then
                                                L6_3 = exports
                                                L6_3 = L6_3.striano_core
                                                L7_3 = L6_3
                                                L6_3 = L6_3.GetCurrentTerritory
                                                L6_3 = L6_3(L7_3)
                                                L7_3 = true
                                                L8_3 = nil
                                                if L6_3 then
                                                  L9_3 = exports
                                                  L9_3 = L9_3.striano_core
                                                  L10_3 = L9_3
                                                  L9_3 = L9_3.GetTerritoryOwnerClient
                                                  L11_3 = L6_3
                                                  L9_3 = L9_3(L10_3, L11_3)
                                                  L10_3 = LocalPlayer
                                                  L10_3 = L10_3.state
                                                  L10_3 = L10_3.casataId
                                                  if not L9_3 then
                                                    L7_3 = false
                                                    L8_3 = "This territory has no owner!"
                                                  else
                                                    if L10_3 then
                                                      L11_3 = tostring
                                                      L12_3 = L9_3
                                                      L11_3 = L11_3(L12_3)
                                                      L12_3 = tostring
                                                      L13_3 = L10_3
                                                      L12_3 = L12_3(L13_3)
                                                      if L11_3 == L12_3 then
                                                        goto lbl_1396
                                                      end
                                                    end
                                                    L7_3 = false
                                                    L8_3 = "This is a private territory!"
                                                  end
                                                end
                                                ::lbl_1396::
                                                if not L7_3 then
                                                  L9_3 = PlaySoundFrontend
                                                  L10_3 = -1
                                                  L11_3 = "Turn"
                                                  L12_3 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
                                                  L13_3 = 1
                                                  L9_3(L10_3, L11_3, L12_3, L13_3)
                                                  L9_3 = testo3d
                                                  L10_3 = L8_3
                                                  L9_3(L10_3)
                                                  L9_3 = Wait
                                                  L10_3 = 1000
                                                  L9_3(L10_3)
                                                else
                                                  L9_3 = GetEntityCoords
                                                  L10_3 = L4_3
                                                  L9_3 = L9_3(L10_3)
                                                  L10_3 = LoadParticleAsset
                                                  L11_3 = "core"
                                                  L10_3 = L10_3(L11_3)
                                                  if not L10_3 then
                                                    L10_3 = print
                                                    L11_3 = "Error loading core particles."
                                                    L10_3(L11_3)
                                                  end
                                                  L10_3 = myBraciere
                                                  if nil ~= L10_3 then
                                                    L10_3 = StopParticleFxLooped
                                                    L11_3 = myBraciere
                                                    L12_3 = false
                                                    L10_3(L11_3, L12_3)
                                                  end
                                                  L10_3 = ResetOutlineEnt
                                                  L10_3()
                                                  L10_3 = stopPointing
                                                  L10_3()
                                                  modalitaPesci = false
                                                  myBracierePos = L9_3
                                                  L10_3 = GetClosestObjectOfType
                                                  L11_3 = L9_3
                                                  L12_3 = 50.0
                                                  L13_3 = -167376511
                                                  L14_3 = 0
                                                  L15_3 = 0
                                                  L16_3 = 0
                                                  L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                  if 0 ~= L10_3 then
                                                    L11_3 = TriggerEvent
                                                    L12_3 = "bracierePos"
                                                    L13_3 = L9_3
                                                    L11_3(L12_3, L13_3)
                                                  end
                                                  L11_3 = ExecuteCommand
                                                  L12_3 = "e falo"
                                                  L11_3(L12_3)
                                                  L11_3 = "sounds/petrificus.mp3"
                                                  L12_3 = exports
                                                  L12_3 = L12_3.xsound
                                                  L13_3 = L12_3
                                                  L12_3 = L12_3.PlayUrl
                                                  L14_3 = "petrificus"
                                                  L15_3 = L11_3
                                                  L16_3 = 0.3
                                                  L17_3 = false
                                                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                                                  L12_3 = print
                                                  L13_3 = "Braciere spawn aggiornato, LIT!"
                                                  L12_3(L13_3)
                                                  L12_3 = Wait
                                                  L13_3 = 1500
                                                  L12_3(L13_3)
                                                  L12_3 = "sounds/sod_intro_music.mp3"
                                                  L13_3 = exports
                                                  L13_3 = L13_3.xsound
                                                  L14_3 = L13_3
                                                  L13_3 = L13_3.PlayUrl
                                                  L15_3 = "sod_intro_music"
                                                  L16_3 = L12_3
                                                  L17_3 = 0.5
                                                  L18_3 = false
                                                  L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                                                  L13_3 = Wait
                                                  L14_3 = 5000
                                                  L13_3(L14_3)
                                                  L13_3 = exports
                                                  L13_3 = L13_3.striano_combat
                                                  L14_3 = L13_3
                                                  L13_3 = L13_3.showZone
                                                  L15_3 = ""
                                                  L16_3 = "Bonfire spawn updated!"
                                                  L13_3(L14_3, L15_3, L16_3)
                                                  L13_3 = ExecuteCommand
                                                  L14_3 = "e cc"
                                                  L13_3(L14_3)
                                                end
                                            end
                                          end
                                          else
                                            L6_3 = PlaySoundFrontend
                                            L7_3 = -1
                                            L8_3 = "Turn"
                                            L9_3 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
                                            L10_3 = 1
                                            L6_3(L7_3, L8_3, L9_3, L10_3)
                                            L6_3 = testo3d
                                            L7_3 = "You need a surv torch to Lit this bonfire!"
                                            L6_3(L7_3)
                                            L6_3 = Wait
                                            L7_3 = 1000
                                            L6_3(L7_3)
                                          end
                                        else
                                          L6_3 = GetEntityCoords
                                          L7_3 = L4_3
                                          L6_3 = L6_3(L7_3)
                                          L7_3 = myBraciere
                                          if nil == L7_3 then
                                            L7_3 = TriggerEvent
                                            L8_3 = "bracierePos"
                                            L9_3 = L6_3
                                            L7_3(L8_3, L9_3)
                                          end
                                          L7_3 = makeEntityFaceEntity
                                          L8_3 = L0_3
                                          L9_3 = L4_3
                                          L7_3(L8_3, L9_3)
                                          L7_3 = ResetOutlineEnt
                                          L7_3()
                                          L7_3 = stopPointing
                                          L7_3()
                                          modalitaPesci = false
                                          L7_3 = CreateThread
                                          function L8_3()
                                            local L0_4, L1_4, L2_4, L3_4, L4_4
                                            L0_4 = Wait
                                            L1_4 = 255
                                            L0_4(L1_4)
                                            L0_4 = ExecuteCommand
                                            L1_4 = "e falo"
                                            L0_4(L1_4)
                                            L0_4 = Wait
                                            L1_4 = 25
                                            L0_4(L1_4)
                                            L0_4 = makeEntityFaceEntity
                                            L1_4 = L0_3
                                            L2_4 = L4_3
                                            L0_4(L1_4, L2_4)
                                            while true do
                                              L0_4 = IsEntityPlayingAnim
                                              L1_4 = L0_3
                                              L2_4 = "amb@world_human_stand_fire@male@idle_a"
                                              L3_4 = "idle_a"
                                              L4_4 = 3
                                              L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
                                              if not L0_4 then
                                                break
                                              end
                                              L0_4 = Wait
                                              L1_4 = 10000
                                              L0_4(L1_4)
                                              L0_4 = GetEntityHealth
                                              L1_4 = L0_3
                                              L0_4 = L0_4(L1_4)
                                              L1_4 = GetEntityMaxHealth
                                              L2_4 = L0_3
                                              L1_4 = L1_4(L2_4)
                                              if L0_4 < L1_4 then
                                                L1_4 = SetEntityHealth
                                                L2_4 = L0_3
                                                L3_4 = L0_4 + 1
                                                L1_4(L2_4, L3_4)
                                              else
                                                L1_4 = ExecuteCommand
                                                L2_4 = "shakeoff"
                                                L1_4(L2_4)
                                              end
                                            end
                                          end
                                          L7_3(L8_3)
                                        end
                                    end
                                    else
                                      if nil ~= L4_3 then
                                        L5_3 = DoesEntityExist
                                        L6_3 = L4_3
                                        L5_3 = L5_3(L6_3)
                                        if L5_3 then
                                          L5_3 = GetEntityModel
                                          L6_3 = L4_3
                                          L5_3 = L5_3(L6_3)
                                          if 1329706303 == L5_3 then
                                            L5_3 = exports
                                            L5_3 = L5_3.striano_core
                                            L6_3 = L5_3
                                            L5_3 = L5_3.IsActiveDeliveryBox
                                            L7_3 = L4_3
                                            L5_3 = L5_3(L6_3, L7_3)
                                            if L5_3 then
                                              L5_3 = draw
                                              L6_3 = 74
                                              L7_3 = "Take Delivery Box"
                                              L8_3 = 73
                                              L9_3 = "Cancel"
                                              L5_3(L6_3, L7_3, L8_3, L9_3)
                                              L5_3 = IsDisabledControlJustPressed
                                              L6_3 = 0
                                              L7_3 = 74
                                              L5_3 = L5_3(L6_3, L7_3)
                                              if not L5_3 then
                                                L5_3 = IsControlJustPressed
                                                L6_3 = 0
                                                L7_3 = 74
                                                L5_3 = L5_3(L6_3, L7_3)
                                              end
                                              if L5_3 then
                                                L5_3 = GetEntityCoords
                                                L6_3 = L0_3
                                                L5_3 = L5_3(L6_3)
                                                L6_3 = GetEntityCoords
                                                L7_3 = L4_3
                                                L6_3 = L6_3(L7_3)
                                                L5_3 = L5_3 - L6_3
                                                L5_3 = #L5_3
                                                if L5_3 < 3.0 then
                                                  L5_3 = ResetOutlineEnt
                                                  L5_3()
                                                  modalitaPesci = false
                                                  L5_3 = stopPointing
                                                  L5_3()
                                                  L5_3 = exports
                                                  L5_3 = L5_3.striano_core
                                                  L6_3 = L5_3
                                                  L5_3 = L5_3.PickupDeliveryBox
                                                  L7_3 = L4_3
                                                  L5_3(L6_3, L7_3)
                                                  return
                                                else
                                                  L5_3 = testo3d
                                                  L6_3 = "too far"
                                                  L5_3(L6_3)
                                                end
                                              end
                                            else
                                              L5_3 = draw
                                              L6_3 = 74
                                              L7_3 = "Destroy Empty Box"
                                              L8_3 = 73
                                              L9_3 = "Cancel"
                                              L5_3(L6_3, L7_3, L8_3, L9_3)
                                              L5_3 = IsDisabledControlJustPressed
                                              L6_3 = 0
                                              L7_3 = 74
                                              L5_3 = L5_3(L6_3, L7_3)
                                              if not L5_3 then
                                                L5_3 = IsControlJustPressed
                                                L6_3 = 0
                                                L7_3 = 74
                                                L5_3 = L5_3(L6_3, L7_3)
                                                if not L5_3 then
                                                  goto lbl_1646
                                                end
                                              end
                                              L5_3 = 0
                                              while true do
                                                L6_3 = NetworkHasControlOfEntity
                                                L7_3 = L4_3
                                                L6_3 = L6_3(L7_3)
                                                if not (not L6_3 and L5_3 < 100) then
                                                  break
                                                end
                                                L6_3 = NetworkRequestControlOfEntity
                                                L7_3 = L4_3
                                                L6_3(L7_3)
                                                L5_3 = L5_3 + 1
                                                L6_3 = Wait
                                                L7_3 = 100
                                                L6_3(L7_3)
                                              end
                                              L6_3 = NetworkRequestControlOfEntity
                                              L7_3 = L4_3
                                              L6_3(L7_3)
                                              if L5_3 < 100 then
                                                L6_3 = SetEntityAsMissionEntity
                                                L7_3 = L4_3
                                                L6_3(L7_3)
                                                L6_3 = DeleteEntity
                                                L7_3 = L4_3
                                                L6_3(L7_3)
                                              end
                                              L6_3 = ResetOutlineEnt
                                              L6_3()
                                              modalitaPesci = false
                                              L6_3 = stopPointing
                                              L6_3()
                                              L6_3 = PlaySoundFrontend
                                              L7_3 = -1
                                              L8_3 = "MP_AWARD"
                                              L9_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                                              L10_3 = 1
                                              L6_3(L7_3, L8_3, L9_3, L10_3)
                                              ::lbl_1646::
                                              L5_3 = GetEntityCoords
                                              L6_3 = L4_3
                                              L5_3 = L5_3(L6_3)
                                              L6_3 = DrawText3D
                                              L7_3 = L5_3.x
                                              L8_3 = L5_3.y
                                              L9_3 = L5_3.z
                                              L9_3 = L9_3 + 0.5
                                              L10_3 = "Empty"
                                              L6_3(L7_3, L8_3, L9_3, L10_3)
                                            end
                                        end
                                      end
                                      else
                                        if nil ~= L4_3 then
                                          L5_3 = GetEntityModel
                                          L6_3 = L4_3
                                          L5_3 = L5_3(L6_3)
                                          if 214384272 == L5_3 then
                                            L5_3 = draw
                                            L6_3 = 38
                                            L7_3 = "Close ladder"
                                            L8_3 = 74
                                            L9_3 = "Go up ladder"
                                            L10_3 = 25
                                            L11_3 = "Drag"
                                            L12_3 = 73
                                            L13_3 = "Cancel"
                                            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                                            L5_3 = IsDisabledControlJustPressed
                                            L6_3 = 0
                                            L7_3 = 74
                                            L5_3 = L5_3(L6_3, L7_3)
                                            if not L5_3 then
                                              L5_3 = IsControlJustPressed
                                              L6_3 = 0
                                              L7_3 = 74
                                              L5_3 = L5_3(L6_3, L7_3)
                                              if not L5_3 then
                                                goto lbl_1985
                                              end
                                            end
                                            L5_3 = GetEntityCoords
                                            L6_3 = L4_3
                                            L5_3 = L5_3(L6_3)
                                            L6_3 = GetEntityCoords
                                            L7_3 = PlayerPedId
                                            L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                            L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                            L5_3 = L5_3 - L6_3
                                            L5_3 = #L5_3
                                            L6_3 = 1.5
                                            if L5_3 < L6_3 then
                                              L5_3 = sonoSullaScala
                                              if nil ~= L5_3 then
                                                goto lbl_1985
                                              end
                                              L5_3 = ResetOutlineEnt
                                              L5_3()
                                              sonoSullaScala = L4_3
                                              modalitaPesci = false
                                              L5_3 = Wait
                                              L6_3 = 25
                                              L5_3(L6_3)
                                              L5_3 = RotToCoords
                                              L6_3 = PlayerPedId
                                              L6_3 = L6_3()
                                              L7_3 = GetEntityCoords
                                              L8_3 = L4_3
                                              L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3(L8_3)
                                              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                              L5_3 = faiAnimPool
                                              L6_3 = "laddersbase"
                                              L7_3 = "get_off_top_back_stand_left_hand"
                                              L8_3 = 750
                                              L9_3 = 49
                                              L5_3(L6_3, L7_3, L8_3, L9_3)
                                              L5_3 = Wait
                                              L6_3 = 850
                                              L5_3(L6_3)
                                              L5_3 = AttachEntityToEntity
                                              L6_3 = PlayerPedId
                                              L6_3 = L6_3()
                                              L7_3 = L4_3
                                              L8_3 = -1
                                              L9_3 = -0.1
                                              L10_3 = 0.1
                                              L11_3 = 2.5
                                              L12_3 = 0.0
                                              L13_3 = 0.0
                                              L14_3 = 180.0
                                              L15_3 = true
                                              L16_3 = true
                                              L17_3 = false
                                              L18_3 = false
                                              L19_3 = 2
                                              L20_3 = true
                                              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                                              L5_3 = Wait
                                              L6_3 = 25
                                              L5_3(L6_3)
                                              L5_3 = PlaySoundFrontend
                                              L6_3 = -1
                                              L7_3 = "CLOSED"
                                              L8_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                                              L9_3 = 1
                                              L5_3(L6_3, L7_3, L8_3, L9_3)
                                              L5_3 = 0
                                              while true do
                                                L6_3 = Wait
                                                L7_3 = 0
                                                L6_3(L7_3)
                                                L6_3 = draw
                                                L7_3 = 34
                                                L8_3 = "Turn"
                                                L9_3 = 35
                                                L10_3 = ""
                                                L11_3 = 22
                                                L12_3 = "Jump"
                                                L13_3 = 74
                                                L14_3 = "Take Fruit"
                                                L15_3 = 73
                                                L16_3 = "Go down"
                                                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                L6_3 = IsDisabledControlPressed
                                                L7_3 = 0
                                                L8_3 = 34
                                                L6_3 = L6_3(L7_3, L8_3)
                                                if not L6_3 then
                                                  L6_3 = IsControlPressed
                                                  L7_3 = 0
                                                  L8_3 = 34
                                                  L6_3 = L6_3(L7_3, L8_3)
                                                  if not L6_3 then
                                                    goto lbl_1806
                                                  end
                                                end
                                                L5_3 = L5_3 + 1
                                                L6_3 = DetachEntity
                                                L7_3 = PlayerPedId
                                                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                L6_3 = AttachEntityToEntity
                                                L7_3 = PlayerPedId
                                                L7_3 = L7_3()
                                                L8_3 = L4_3
                                                L9_3 = -1
                                                L10_3 = -0.1
                                                L11_3 = 0.1
                                                L12_3 = 2.5
                                                L13_3 = 0.0
                                                L14_3 = 0.0
                                                L15_3 = 180.0 + L5_3
                                                L16_3 = true
                                                L17_3 = true
                                                L18_3 = false
                                                L19_3 = false
                                                L20_3 = 2
                                                L21_3 = true
                                                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                                                ::lbl_1806::
                                                L6_3 = IsDisabledControlPressed
                                                L7_3 = 0
                                                L8_3 = 35
                                                L6_3 = L6_3(L7_3, L8_3)
                                                if not L6_3 then
                                                  L6_3 = IsControlPressed
                                                  L7_3 = 0
                                                  L8_3 = 35
                                                  L6_3 = L6_3(L7_3, L8_3)
                                                  if not L6_3 then
                                                    goto lbl_1843
                                                  end
                                                end
                                                L5_3 = L5_3 - 1
                                                L6_3 = DetachEntity
                                                L7_3 = PlayerPedId
                                                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                L6_3 = AttachEntityToEntity
                                                L7_3 = PlayerPedId
                                                L7_3 = L7_3()
                                                L8_3 = L4_3
                                                L9_3 = -1
                                                L10_3 = -0.1
                                                L11_3 = 0.1
                                                L12_3 = 2.5
                                                L13_3 = 0.0
                                                L14_3 = 0.0
                                                L15_3 = 180.0 + L5_3
                                                L16_3 = true
                                                L17_3 = true
                                                L18_3 = false
                                                L19_3 = false
                                                L20_3 = 2
                                                L21_3 = true
                                                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                                                ::lbl_1843::
                                                L6_3 = IsDisabledControlPressed
                                                L7_3 = 0
                                                L8_3 = 22
                                                L6_3 = L6_3(L7_3, L8_3)
                                                if not L6_3 then
                                                  L6_3 = IsControlPressed
                                                  L7_3 = 0
                                                  L8_3 = 22
                                                  L6_3 = L6_3(L7_3, L8_3)
                                                  if not L6_3 then
                                                    goto lbl_1913
                                                  end
                                                end
                                                L6_3 = GetEntityCoords
                                                L7_3 = PlayerPedId
                                                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                L7_3 = RequestModelStriano
                                                L8_3 = -506490377
                                                L7_3(L8_3)
                                                L7_3 = CreateObject
                                                L8_3 = -506490377
                                                L9_3 = vector3
                                                L10_3 = L6_3.x
                                                L11_3 = L6_3.y
                                                L12_3 = L6_3.z
                                                L12_3 = L12_3 - 1.0
                                                L9_3 = L9_3(L10_3, L11_3, L12_3)
                                                L10_3 = true
                                                L7_3 = L7_3(L8_3, L9_3, L10_3)
                                                L8_3 = SetEntityVisible
                                                L9_3 = L7_3
                                                L10_3 = false
                                                L8_3(L9_3, L10_3)
                                                L8_3 = FreezeEntityPosition
                                                L9_3 = L7_3
                                                L10_3 = true
                                                L8_3(L9_3, L10_3)
                                                L8_3 = Wait
                                                L9_3 = 25
                                                L8_3(L9_3)
                                                L8_3 = PlaySoundFrontend
                                                L9_3 = -1
                                                L10_3 = "CLOSED"
                                                L11_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                                                L12_3 = 1
                                                L8_3(L9_3, L10_3, L11_3, L12_3)
                                                L8_3 = DetachEntity
                                                L9_3 = PlayerPedId
                                                L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L9_3()
                                                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                L8_3 = TaskJump
                                                L9_3 = PlayerPedId
                                                L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L9_3()
                                                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                L8_3 = Wait
                                                L9_3 = 550
                                                L8_3(L9_3)
                                                L8_3 = SetEntityAsMissionEntity
                                                L9_3 = L7_3
                                                L8_3(L9_3)
                                                L8_3 = DeleteEntity
                                                L9_3 = L7_3
                                                L8_3(L9_3)
                                                L8_3 = TaskClimb
                                                L9_3 = PlayerPedId
                                                L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L9_3()
                                                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                sonoSullaScala = nil
                                                do return end
                                                ::lbl_1913::
                                                L6_3 = IsDisabledControlJustPressed
                                                L7_3 = 0
                                                L8_3 = 73
                                                L6_3 = L6_3(L7_3, L8_3)
                                                if not L6_3 then
                                                  L6_3 = IsControlJustPressed
                                                  L7_3 = 0
                                                  L8_3 = 73
                                                  L6_3 = L6_3(L7_3, L8_3)
                                                  if not L6_3 then
                                                    L6_3 = IsPedRagdoll
                                                    L7_3 = PlayerPedId
                                                    L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                    if not L6_3 then
                                                      L6_3 = IsPedFatallyInjured
                                                      L7_3 = PlayerPedId
                                                      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                      if not L6_3 then
                                                        goto lbl_1943
                                                      end
                                                    end
                                                  end
                                                end
                                                L6_3 = DetachEntity
                                                L7_3 = PlayerPedId
                                                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                sonoSullaScala = nil
                                                do return end
                                                ::lbl_1943::
                                                L6_3 = IsDisabledControlJustPressed
                                                L7_3 = 0
                                                L8_3 = 74
                                                L6_3 = L6_3(L7_3, L8_3)
                                                if not L6_3 then
                                                  L6_3 = IsControlJustPressed
                                                  L7_3 = 0
                                                  L8_3 = 74
                                                  L6_3 = L6_3(L7_3, L8_3)
                                                  if not L6_3 then
                                                    goto lbl_1977
                                                  end
                                                end
                                                L6_3 = IsEntityPlayingAnim
                                                L7_3 = PlayerPedId
                                                L7_3 = L7_3()
                                                L8_3 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
                                                L9_3 = "weed_crouch_checkingleaves_idle_01_inspector"
                                                L10_3 = 3
                                                L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                if not L6_3 then
                                                  L6_3 = faiAnimPool
                                                  L7_3 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
                                                  L8_3 = "weed_crouch_checkingleaves_idle_01_inspector"
                                                  L9_3 = -1
                                                  L10_3 = 49
                                                  L6_3(L7_3, L8_3, L9_3, L10_3)
                                                  L6_3 = CheckRaccogliFrutta
                                                  L6_3()
                                                else
                                                  L6_3 = ClearPedTasks
                                                  L7_3 = PlayerPedId
                                                  L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                end
                                                ::lbl_1977::
                                              end
                                              return
                                            else
                                              L5_3 = TooFarObject
                                              L5_3()
                                              L5_3 = Wait
                                              L6_3 = 150
                                              L5_3(L6_3)
                                            end
                                            ::lbl_1985::
                                            L5_3 = IsDisabledControlJustPressed
                                            L6_3 = 0
                                            L7_3 = 38
                                            L5_3 = L5_3(L6_3, L7_3)
                                            if not L5_3 then
                                              L5_3 = IsControlJustPressed
                                              L6_3 = 0
                                              L7_3 = 38
                                              L5_3 = L5_3(L6_3, L7_3)
                                            end
                                            if L5_3 then
                                              L5_3 = GetEntityCoords
                                              L6_3 = L4_3
                                              L5_3 = L5_3(L6_3)
                                              L6_3 = GetEntityCoords
                                              L7_3 = PlayerPedId
                                              L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                              L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                              L5_3 = L5_3 - L6_3
                                              L5_3 = #L5_3
                                              L6_3 = 1.7
                                              if L5_3 < L6_3 then
                                                L5_3 = ResetOutlineEnt
                                                L5_3()
                                                modalitaPesci = false
                                                L5_3 = Wait
                                                L6_3 = 25
                                                L5_3(L6_3)
                                                L5_3 = RotToCoords
                                                L6_3 = PlayerPedId
                                                L6_3 = L6_3()
                                                L7_3 = GetEntityCoords
                                                L8_3 = L4_3
                                                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3(L8_3)
                                                L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                L5_3 = faiAnimPool
                                                L6_3 = "anim@mp_snowball"
                                                L7_3 = "pickup_snowball"
                                                L8_3 = 750
                                                L9_3 = 49
                                                L5_3(L6_3, L7_3, L8_3, L9_3)
                                                L5_3 = GetEntityCoords
                                                L6_3 = L4_3
                                                L5_3 = L5_3(L6_3)
                                                L6_3 = getPoolIdFromEntity
                                                L7_3 = L4_3
                                                L6_3 = L6_3(L7_3)
                                                if nil ~= L6_3 then
                                                  L7_3 = delprop
                                                  L8_3 = L6_3
                                                  L7_3(L8_3)
                                                end
                                                L7_3 = RequestModelStriano
                                                L8_3 = -2096130282
                                                L7_3(L8_3)
                                                L7_3 = CreateObject
                                                L8_3 = -2096130282
                                                L9_3 = L5_3
                                                L10_3 = true
                                                L7_3 = L7_3(L8_3, L9_3, L10_3)
                                                L8_3 = L0_1
                                                L8_3()
                                                L8_3 = Wait
                                                L9_3 = 25
                                                L8_3(L9_3)
                                                L8_3 = GetEntityCoords
                                                L9_3 = L7_3
                                                L8_3 = L8_3(L9_3)
                                                L9_3 = TriggerServerEvent
                                                L10_3 = "placer:addpool"
                                                L11_3 = GetEntityModel
                                                L12_3 = L7_3
                                                L11_3 = L11_3(L12_3)
                                                L12_3 = L8_3.x
                                                L13_3 = L8_3.y
                                                L14_3 = L8_3.z
                                                L15_3 = 0.0
                                                L16_3 = 0.0
                                                L17_3 = 0.0
                                                L18_3 = true
                                                L19_3 = 0
                                                L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                                L9_3 = PlaySoundFrontend
                                                L10_3 = -1
                                                L11_3 = "CLOSED"
                                                L12_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                                                L13_3 = 1
                                                L9_3(L10_3, L11_3, L12_3, L13_3)
                                                L9_3 = SetEntityAsMissionEntity
                                                L10_3 = L7_3
                                                L9_3(L10_3)
                                                L9_3 = DeleteEntity
                                                L10_3 = L7_3
                                                L9_3(L10_3)
                                                return
                                              else
                                                L5_3 = TooFarObject
                                                L5_3()
                                                L5_3 = Wait
                                                L6_3 = 150
                                                L5_3(L6_3)
                                              end
                                            end
                                        end
                                        else
                                          if nil ~= L4_3 then
                                            L5_3 = GetEntityModel
                                            L6_3 = L4_3
                                            L5_3 = L5_3(L6_3)
                                            if -2096130282 == L5_3 then
                                              L5_3 = draw
                                              L6_3 = 38
                                              L7_3 = "Open ladder"
                                              L8_3 = 25
                                              L9_3 = "Drag"
                                              L10_3 = 73
                                              L11_3 = "Cancel"
                                              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                                              L5_3 = IsDisabledControlJustPressed
                                              L6_3 = 0
                                              L7_3 = 38
                                              L5_3 = L5_3(L6_3, L7_3)
                                              if not L5_3 then
                                                L5_3 = IsControlJustPressed
                                                L6_3 = 0
                                                L7_3 = 38
                                                L5_3 = L5_3(L6_3, L7_3)
                                              end
                                              if L5_3 then
                                                L5_3 = GetEntityCoords
                                                L6_3 = L4_3
                                                L5_3 = L5_3(L6_3)
                                                L6_3 = GetEntityCoords
                                                L7_3 = PlayerPedId
                                                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                L5_3 = L5_3 - L6_3
                                                L5_3 = #L5_3
                                                L6_3 = 1.7
                                                if L5_3 < L6_3 then
                                                  L5_3 = IsEntityAttached
                                                  L6_3 = L4_3
                                                  L5_3 = L5_3(L6_3)
                                                  if not L5_3 then
                                                    L5_3 = ResetOutlineEnt
                                                    L5_3()
                                                    modalitaPesci = false
                                                    L5_3 = Wait
                                                    L6_3 = 25
                                                    L5_3(L6_3)
                                                    L5_3 = RotToCoords
                                                    L6_3 = PlayerPedId
                                                    L6_3 = L6_3()
                                                    L7_3 = GetEntityCoords
                                                    L8_3 = L4_3
                                                    L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3(L8_3)
                                                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                    L5_3 = faiAnimPool
                                                    L6_3 = "anim@mp_snowball"
                                                    L7_3 = "pickup_snowball"
                                                    L8_3 = 750
                                                    L9_3 = 49
                                                    L5_3(L6_3, L7_3, L8_3, L9_3)
                                                    L5_3 = GetEntityCoords
                                                    L6_3 = L4_3
                                                    L5_3 = L5_3(L6_3)
                                                    L6_3 = GetEntityRotation
                                                    L7_3 = L4_3
                                                    L6_3 = L6_3(L7_3)
                                                    L7_3 = getPoolIdFromEntity
                                                    L8_3 = L4_3
                                                    L7_3 = L7_3(L8_3)
                                                    if nil ~= L7_3 then
                                                      L8_3 = delprop
                                                      L9_3 = L7_3
                                                      L8_3(L9_3)
                                                    end
                                                    L8_3 = RequestModelStriano
                                                    L9_3 = 214384272
                                                    L8_3(L9_3)
                                                    L8_3 = CreateObject
                                                    L9_3 = 214384272
                                                    L10_3 = L5_3
                                                    L11_3 = true
                                                    L8_3 = L8_3(L9_3, L10_3, L11_3)
                                                    L9_3 = L0_1
                                                    L9_3()
                                                    L9_3 = Wait
                                                    L10_3 = 25
                                                    L9_3(L10_3)
                                                    L9_3 = GetEntityCoords
                                                    L10_3 = L8_3
                                                    L9_3 = L9_3(L10_3)
                                                    L10_3 = GetEntityRotation
                                                    L11_3 = L8_3
                                                    L10_3 = L10_3(L11_3)
                                                    L11_3 = TriggerServerEvent
                                                    L12_3 = "placer:addpool"
                                                    L13_3 = GetEntityModel
                                                    L14_3 = L8_3
                                                    L13_3 = L13_3(L14_3)
                                                    L14_3 = L9_3.x
                                                    L15_3 = L9_3.y
                                                    L16_3 = L9_3.z
                                                    L17_3 = L10_3.x
                                                    L18_3 = L10_3.y
                                                    L19_3 = L10_3.z
                                                    L20_3 = true
                                                    L21_3 = 0
                                                    L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                                                    L11_3 = PlaySoundFrontend
                                                    L12_3 = -1
                                                    L13_3 = "CLOSED"
                                                    L14_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                                                    L15_3 = 1
                                                    L11_3(L12_3, L13_3, L14_3, L15_3)
                                                    L11_3 = SetEntityAsMissionEntity
                                                    L12_3 = L8_3
                                                    L11_3(L12_3)
                                                    L11_3 = DeleteEntity
                                                    L12_3 = L8_3
                                                    L11_3(L12_3)
                                                    return
                                                end
                                                else
                                                  L5_3 = TooFarObject
                                                  L5_3()
                                                  L5_3 = Wait
                                                  L6_3 = 150
                                                  L5_3(L6_3)
                                                end
                                              end
                                          end
                                          else
                                            if nil ~= L4_3 then
                                              L5_3 = GetEntityModel
                                              L6_3 = L4_3
                                              L5_3 = L5_3(L6_3)
                                              if -527501070 == L5_3 then
                                                L5_3 = Entity
                                                L6_3 = L4_3
                                                L5_3 = L5_3(L6_3)
                                                L5_3 = L5_3.state
                                                L5_3 = L5_3.corrente
                                                if nil == L5_3 then
                                                  L5_3 = 0
                                                end
                                                L6_3 = Entity
                                                L7_3 = L4_3
                                                L6_3 = L6_3(L7_3)
                                                L6_3 = L6_3.state
                                                L6_3 = L6_3.accensione
                                                if nil == L6_3 then
                                                  L6_3 = false
                                                end
                                                L7_3 = "OFF"
                                                if L6_3 then
                                                  L7_3 = "ON"
                                                end
                                                L8_3 = draw
                                                L9_3 = 38
                                                L10_3 = "Interact: ~h~Generator ("
                                                L11_3 = L7_3
                                                L12_3 = ") "
                                                L13_3 = L5_3
                                                L14_3 = "%"
                                                L10_3 = L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3
                                                L11_3 = 25
                                                L12_3 = "Drag"
                                                L13_3 = 73
                                                L14_3 = "Cancel"
                                                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                                                L8_3 = GetEntityCoords
                                                L9_3 = L4_3
                                                L8_3 = L8_3(L9_3)
                                                L9_3 = "Battery: ~h~"
                                                L10_3 = L5_3
                                                L11_3 = "%"
                                                L9_3 = L9_3 .. L10_3 .. L11_3
                                                L10_3 = Draw3D
                                                L11_3 = L8_3.x
                                                L12_3 = L8_3.y
                                                L13_3 = L8_3.z
                                                L13_3 = L13_3 + 0.9
                                                L14_3 = L9_3
                                                L15_3 = 0.4
                                                L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
                                                L10_3 = OutlineEntSOD
                                                L11_3 = L4_3
                                                L10_3(L11_3)
                                                L2_3 = true
                                                L10_3 = IsDisabledControlJustPressed
                                                L11_3 = 0
                                                L12_3 = 38
                                                L10_3 = L10_3(L11_3, L12_3)
                                                if not L10_3 then
                                                  L10_3 = IsControlJustPressed
                                                  L11_3 = 0
                                                  L12_3 = 38
                                                  L10_3 = L10_3(L11_3, L12_3)
                                                end
                                                if L10_3 then
                                                  L10_3 = GetEntityCoords
                                                  L11_3 = L4_3
                                                  L10_3 = L10_3(L11_3)
                                                  L11_3 = GetEntityCoords
                                                  L12_3 = PlayerPedId
                                                  L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L12_3()
                                                  L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                  L10_3 = L10_3 - L11_3
                                                  L10_3 = #L10_3
                                                  L11_3 = 1.3
                                                  if L10_3 < L11_3 then
                                                    L10_3 = IsEntityAttached
                                                    L11_3 = L4_3
                                                    L10_3 = L10_3(L11_3)
                                                    if not L10_3 then
                                                      L10_3 = ResetOutlineEnt
                                                      L10_3()
                                                      modalitaPesci = false
                                                      L10_3 = Wait
                                                      L11_3 = 25
                                                      L10_3(L11_3)
                                                      L10_3 = GestisciGenFrullatore
                                                      L11_3 = L4_3
                                                      L10_3(L11_3)
                                                      return
                                                  end
                                                  else
                                                    L10_3 = TooFarObject
                                                    L10_3()
                                                    L10_3 = Wait
                                                    L11_3 = 150
                                                    L10_3(L11_3)
                                                  end
                                                end
                                            end
                                            else
                                              if nil ~= L4_3 then
                                                L5_3 = GetEntityModel
                                                L6_3 = L4_3
                                                L5_3 = L5_3(L6_3)
                                                if 92887898 == L5_3 then
                                                  L5_3 = Entity
                                                  L6_3 = L4_3
                                                  L5_3 = L5_3(L6_3)
                                                  L5_3 = L5_3.state
                                                  L5_3 = L5_3.corrente
                                                  if nil == L5_3 then
                                                    L5_3 = 0
                                                  end
                                                  L6_3 = Entity
                                                  L7_3 = L4_3
                                                  L6_3 = L6_3(L7_3)
                                                  L6_3 = L6_3.state
                                                  L6_3 = L6_3.accensione
                                                  if nil == L6_3 then
                                                    L6_3 = false
                                                  end
                                                  L7_3 = "OFF"
                                                  if L6_3 then
                                                    L7_3 = "ON"
                                                  end
                                                  L8_3 = draw
                                                  L9_3 = 38
                                                  L10_3 = "Interact: ~h~Bag creator ("
                                                  L11_3 = L7_3
                                                  L12_3 = ") "
                                                  L13_3 = L5_3
                                                  L14_3 = "%"
                                                  L10_3 = L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3
                                                  L11_3 = 25
                                                  L12_3 = "Drag"
                                                  L13_3 = 73
                                                  L14_3 = "Cancel"
                                                  L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                                                  L8_3 = GetEntityCoords
                                                  L9_3 = L4_3
                                                  L8_3 = L8_3(L9_3)
                                                  L9_3 = "Battery: ~h~"
                                                  L10_3 = L5_3
                                                  L11_3 = "%"
                                                  L9_3 = L9_3 .. L10_3 .. L11_3
                                                  L10_3 = Draw3D
                                                  L11_3 = L8_3.x
                                                  L12_3 = L8_3.y
                                                  L13_3 = L8_3.z
                                                  L13_3 = L13_3 + 0.9
                                                  L14_3 = L9_3
                                                  L15_3 = 0.4
                                                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
                                                  L10_3 = OutlineEntSOD
                                                  L11_3 = L4_3
                                                  L10_3(L11_3)
                                                  L2_3 = true
                                                  L10_3 = IsDisabledControlJustPressed
                                                  L11_3 = 0
                                                  L12_3 = 38
                                                  L10_3 = L10_3(L11_3, L12_3)
                                                  if not L10_3 then
                                                    L10_3 = IsControlJustPressed
                                                    L11_3 = 0
                                                    L12_3 = 38
                                                    L10_3 = L10_3(L11_3, L12_3)
                                                  end
                                                  if L10_3 then
                                                    L10_3 = GetEntityCoords
                                                    L11_3 = L4_3
                                                    L10_3 = L10_3(L11_3)
                                                    L11_3 = GetEntityCoords
                                                    L12_3 = PlayerPedId
                                                    L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L12_3()
                                                    L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                    L10_3 = L10_3 - L11_3
                                                    L10_3 = #L10_3
                                                    L11_3 = 1.3
                                                    if L10_3 < L11_3 then
                                                      L10_3 = ResetOutlineEnt
                                                      L10_3()
                                                      modalitaPesci = false
                                                      L10_3 = Wait
                                                      L11_3 = 25
                                                      L10_3(L11_3)
                                                      L10_3 = GestisciImbustamento
                                                      L11_3 = L4_3
                                                      L10_3(L11_3)
                                                      return
                                                    else
                                                      L10_3 = TooFarObject
                                                      L10_3()
                                                      L10_3 = Wait
                                                      L11_3 = 150
                                                      L10_3(L11_3)
                                                    end
                                                  end
                                              end
                                              elseif not L2_3 then
                                                L5_3 = L8_1
                                                L6_3 = eInteractPos
                                                L7_3 = 0.5
                                                L5_3 = L5_3(L6_3, L7_3)
                                                L6_3 = IsPedSwimming
                                                L7_3 = PlayerPedId
                                                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                if not L6_3 then
                                                  L6_3 = IsPedSwimmingUnderWater
                                                  L7_3 = PlayerPedId
                                                  L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                  L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                  if not L6_3 then
                                                    L6_3 = eInteractPos
                                                    L6_3 = L6_3.z
                                                    if not (L6_3 < 0.0) then
                                                      L6_3 = IsEntityInWater
                                                      L7_3 = PlayerPedId
                                                      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L7_3()
                                                      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                      if not L6_3 then
                                                        goto lbl_2463
                                                      end
                                                    end
                                                  end
                                                end
                                                L6_3 = L8_1
                                                L7_3 = eInteractPos
                                                L8_3 = 0.7
                                                L6_3 = L6_3(L7_3, L8_3)
                                                L5_3 = L6_3
                                                ::lbl_2463::
                                                if nil ~= L5_3 then
                                                  L6_3 = IsEntityVisible
                                                  L7_3 = L5_3
                                                  L6_3 = L6_3(L7_3)
                                                  if L6_3 then
                                                    L6_3 = false
                                                    L7_3 = getPoolIdFromEntity
                                                    L8_3 = L5_3
                                                    L7_3 = L7_3(L8_3)
                                                    L8_3 = nil
                                                    if L7_3 then
                                                      L9_3 = pool
                                                      L9_3 = L9_3[L7_3]
                                                      if L9_3 then
                                                        L9_3 = tonumber
                                                        L10_3 = pool
                                                        L10_3 = L10_3[L7_3]
                                                        L10_3 = L10_3.amount
                                                        L9_3 = L9_3(L10_3)
                                                        L8_3 = L9_3 or L8_3
                                                        if not L9_3 then
                                                          L8_3 = 0
                                                        end
                                                    end
                                                    else
                                                      L9_3 = getCorrectGlobalAmount
                                                      L10_3 = L5_3
                                                      L9_3 = L9_3(L10_3)
                                                      L8_3 = L9_3
                                                    end
                                                    if nil == L8_3 then
                                                      L8_3 = 0
                                                    end
                                                    if 0 == L8_3 then
                                                      L6_3 = true
                                                    end
                                                    L9_3 = manageFishNearSelector_tx
                                                    L10_3 = L5_3
                                                    L9_3(L10_3)
                                                    L9_3 = lastOutline
                                                    if L9_3 ~= L5_3 then
                                                      L9_3 = PlaySoundFrontend
                                                      L10_3 = -1
                                                      L11_3 = "Bus_Schedule_Pickup"
                                                      L12_3 = "DLC_PRISON_BREAK_HEIST_SOUNDS"
                                                      L13_3 = 0
                                                      L9_3(L10_3, L11_3, L12_3, L13_3)
                                                      L9_3 = OutlineEntSOD
                                                      L10_3 = L5_3
                                                      L9_3(L10_3)
                                                    else
                                                      L9_3 = lastOutline
                                                      if L9_3 == L5_3 then
                                                        L9_3 = GetEntityCoords
                                                        L10_3 = L5_3
                                                        L9_3 = L9_3(L10_3)
                                                        L10_3 = L7_1
                                                        L11_3 = L5_3
                                                        L10_3 = L10_3(L11_3)
                                                        L11_3 = DrawMarker
                                                        L12_3 = 0
                                                        L13_3 = L9_3.x
                                                        L14_3 = L9_3.y
                                                        L15_3 = L9_3.z
                                                        L15_3 = L15_3 + L10_3
                                                        L16_3 = 0.0
                                                        L17_3 = 0.0
                                                        L18_3 = 0.0
                                                        L19_3 = 0.0
                                                        L20_3 = 0.0
                                                        L21_3 = 0.0
                                                        L22_3 = 0.05
                                                        L23_3 = 0.05
                                                        L24_3 = 0.1
                                                        L25_3 = 0
                                                        L26_3 = 255
                                                        L27_3 = 255
                                                        L28_3 = 100
                                                        L29_3 = true
                                                        L30_3 = true
                                                        L31_3 = 2
                                                        L32_3 = nil
                                                        L33_3 = nil
                                                        L34_3 = false
                                                        L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                      end
                                                    end
                                                    if not L6_3 then
                                                      L9_3 = IsDisabledControlJustPressed
                                                      L10_3 = 0
                                                      L11_3 = 74
                                                      L9_3 = L9_3(L10_3, L11_3)
                                                      if not L9_3 then
                                                        L9_3 = IsControlJustPressed
                                                        L10_3 = 0
                                                        L11_3 = 74
                                                        L9_3 = L9_3(L10_3, L11_3)
                                                      end
                                                      if L9_3 and L5_3 then
                                                        L9_3 = DoesEntityExist
                                                        L10_3 = L5_3
                                                        L9_3 = L9_3(L10_3)
                                                        if L9_3 then
                                                          L9_3 = getPoolIdFromEntity
                                                          L10_3 = L5_3
                                                          L9_3 = L9_3(L10_3)
                                                          if nil ~= L9_3 then
                                                            L10_3 = SetEntityDrawOutline
                                                            L11_3 = L5_3
                                                            L12_3 = false
                                                            L10_3(L11_3, L12_3)
                                                            L10_3 = L8_3
                                                            L11_3 = ClearSelector
                                                            L11_3()
                                                            AmoLanciato = false
                                                            L11_3 = _ENV
                                                            L12_3 = "trovatoAmo"
                                                            L11_3[L12_3] = nil
                                                            L11_3 = _ENV
                                                            L12_3 = "GlobalPos"
                                                            L11_3[L12_3] = nil
                                                            eInteractPos = nil
                                                            modalitaPesci = false
                                                            pescando = false
                                                            L11_3 = _ENV
                                                            L12_3 = "fishEntity"
                                                            L11_3[L12_3] = nil
                                                            L11_3 = Wait
                                                            L12_3 = 125
                                                            L11_3(L12_3)
                                                            L11_3 = _ENV
                                                            L12_3 = "OpenMenuManagement"
                                                            L11_3 = L11_3[L12_3]
                                                            L12_3 = L5_3
                                                            L13_3 = L8_3
                                                            L11_3(L12_3, L13_3)
                                                            return
                                                          end
                                                        end
                                                      end
                                                    end
                                                    L9_3 = IsDisabledControlJustPressed
                                                    L10_3 = 0
                                                    L11_3 = 24
                                                    L9_3 = L9_3(L10_3, L11_3)
                                                    if not L9_3 then
                                                      L9_3 = IsControlJustPressed
                                                      L10_3 = 0
                                                      L11_3 = 24
                                                      L9_3 = L9_3(L10_3, L11_3)
                                                      if not L9_3 then
                                                        goto lbl_2988
                                                      end
                                                    end
                                                    if L6_3 then
                                                      L9_3 = _ENV
                                                      L10_3 = "IsADoor"
                                                      L9_3 = L9_3[L10_3]
                                                      L10_3 = L5_3
                                                      L9_3 = L9_3(L10_3)
                                                      L10_3 = _ENV
                                                      L11_3 = "deleteMode"
                                                      L10_3 = L10_3[L11_3]
                                                      if L10_3 then
                                                        L10_3 = LocalPlayer
                                                        L10_3 = L10_3.state
                                                        L11_3 = "adminLevel"
                                                        L10_3 = L10_3[L11_3]
                                                        if not L10_3 then
                                                          L10_3 = 0
                                                        end
                                                        if L10_3 > 0 then
                                                          L11_3 = IsControlPressed
                                                          L12_3 = 0
                                                          L13_3 = 21
                                                          L11_3 = L11_3(L12_3, L13_3)
                                                          if not L11_3 then
                                                            L11_3 = IsDisabledControlPressed
                                                            L12_3 = 0
                                                            L13_3 = 21
                                                            L11_3 = L11_3(L12_3, L13_3)
                                                            if not L11_3 then
                                                              goto lbl_2673
                                                            end
                                                          end
                                                          L11_3 = PlaySoundFrontend
                                                          L12_3 = -1
                                                          L13_3 = "5_Second_Timer"
                                                          L14_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
                                                          L15_3 = 0
                                                          L11_3(L12_3, L13_3, L14_3, L15_3)
                                                          L11_3 = print
                                                          L12_3 = "Scene prop "
                                                          L13_3 = L7_3
                                                          L14_3 = " destroyed! (Directly with Shift)"
                                                          L12_3 = L12_3 .. L13_3 .. L14_3
                                                          L11_3(L12_3)
                                                          L11_3 = delprop
                                                          L12_3 = L7_3
                                                          L11_3(L12_3)
                                                          if L9_3 then
                                                            L11_3 = ExecuteCommand
                                                            L12_3 = "removedoor"
                                                            L11_3(L12_3)
                                                            goto lbl_2988
                                                            ::lbl_2673::
                                                            L11_3 = _ENV
                                                            L12_3 = "OpenInput"
                                                            L11_3 = L11_3[L12_3]
                                                            L12_3 = "Sure? Type 'yes'"
                                                            L11_3 = L11_3(L12_3)
                                                            L12_3 = tostring
                                                            L13_3 = L11_3 or L13_3
                                                            if not L11_3 then
                                                              L13_3 = ""
                                                            end
                                                            L12_3 = L12_3(L13_3)
                                                            L14_3 = "lower"
                                                            L13_3 = L12_3
                                                            L12_3 = L12_3[L14_3]
                                                            L12_3 = L12_3(L13_3)
                                                            L13_3 = "yes"
                                                            if L12_3 == L13_3 then
                                                              L13_3 = PlaySoundFrontend
                                                              L14_3 = -1
                                                              L15_3 = "5_Second_Timer"
                                                              L16_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
                                                              L17_3 = 0
                                                              L13_3(L14_3, L15_3, L16_3, L17_3)
                                                              L13_3 = print
                                                              L14_3 = "Scene prop "
                                                              L15_3 = L7_3
                                                              L16_3 = " destroyed!"
                                                              L14_3 = L14_3 .. L15_3 .. L16_3
                                                              L13_3(L14_3)
                                                              L13_3 = delprop
                                                              L14_3 = L7_3
                                                              L13_3(L14_3)
                                                              if L9_3 then
                                                                L13_3 = ExecuteCommand
                                                                L14_3 = "removedoor"
                                                                L13_3(L14_3)
                                                              end
                                                            end
                                                          end
                                                        else
                                                          L11_3 = testo3d
                                                          L12_3 = "~r~No permission"
                                                          L11_3(L12_3)
                                                        end
                                                      elseif not L9_3 then
                                                        L10_3 = testo3d
                                                        L11_3 = "~r~Delete mode not active."
                                                        L10_3(L11_3)
                                                      end
                                                    else
                                                      L9_3 = _ENV
                                                      L10_3 = "GetVehiclePropAmount"
                                                      L9_3 = L9_3[L10_3]
                                                      L10_3 = L5_3
                                                      L9_3 = L9_3(L10_3)
                                                      L10_3 = _ENV
                                                      L11_3 = "GetWorldContainerPropAmount"
                                                      L10_3 = L10_3[L11_3]
                                                      L11_3 = L5_3
                                                      L10_3 = L10_3(L11_3)
                                                      if nil ~= L9_3 then
                                                        L11_3 = _ENV
                                                        L12_3 = "RemoveVehicleAttachedProp"
                                                        L11_3 = L11_3[L12_3]
                                                        L12_3 = L5_3
                                                        L11_3(L12_3)
                                                        L11_3 = print
                                                        L12_3 = "Rimuovo un oggetto net da Veicolo!"
                                                        L11_3(L12_3)
                                                      elseif nil ~= L10_3 then
                                                        L11_3 = print
                                                        L12_3 = "Rimuovo un oggetto net da Container Cassa!"
                                                        L11_3(L12_3)
                                                        L11_3 = _ENV
                                                        L12_3 = "RemoveWorldContainerAttachedProp"
                                                        L11_3 = L11_3[L12_3]
                                                        L12_3 = L5_3
                                                        L11_3(L12_3)
                                                      end
                                                      L11_3 = IsEntityPlayingAnim
                                                      L12_3 = PlayerPedId
                                                      L12_3 = L12_3()
                                                      L13_3 = "impexp_int-0"
                                                      L14_3 = "mp_m_waremech_01_dual-0"
                                                      L15_3 = 3
                                                      L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
                                                      if not L11_3 then
                                                        L11_3 = GetEntityCoords
                                                        L12_3 = L5_3
                                                        L11_3 = L11_3(L12_3)
                                                        L12_3 = GetEntityCoords
                                                        L13_3 = PlayerPedId
                                                        L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L13_3()
                                                        L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                        L11_3 = L11_3 - L12_3
                                                        L11_3 = #L11_3
                                                        L12_3 = _ENV
                                                        L13_3 = "maxDistObj"
                                                        L12_3 = L12_3[L13_3]
                                                        if L11_3 < L12_3 then
                                                          L11_3 = GetEntityCoords
                                                          L12_3 = L5_3
                                                          L11_3 = L11_3(L12_3)
                                                          L12_3 = 0
                                                          while true do
                                                            L13_3 = NetworkHasControlOfEntity
                                                            L14_3 = L5_3
                                                            L13_3 = L13_3(L14_3)
                                                            if not (not L13_3 and L12_3 < 100) then
                                                              break
                                                            end
                                                            L13_3 = NetworkRequestControlOfEntity
                                                            L14_3 = L5_3
                                                            L13_3(L14_3)
                                                            L12_3 = L12_3 + 1
                                                            L13_3 = Wait
                                                            L14_3 = 100
                                                            L13_3(L14_3)
                                                          end
                                                          L13_3 = NetworkRequestControlOfEntity
                                                          L14_3 = L5_3
                                                          L13_3(L14_3)
                                                          L13_3 = DoesEntityExist
                                                          L14_3 = L5_3
                                                          L13_3 = L13_3(L14_3)
                                                          if L13_3 then
                                                            L13_3 = IsEntityVisible
                                                            L14_3 = L5_3
                                                            L13_3 = L13_3(L14_3)
                                                            if L13_3 then
                                                              L13_3 = GetEntityCoords
                                                              L14_3 = L5_3
                                                              L13_3 = L13_3(L14_3)
                                                              L13_3 = L13_3 - L11_3
                                                              L13_3 = #L13_3
                                                              L14_3 = 0.5
                                                              if L13_3 < L14_3 then
                                                                L13_3 = ResetOutlineEnt
                                                                L13_3()
                                                                L13_3 = exports
                                                                L14_3 = "striano_inventory"
                                                                L13_3 = L13_3[L14_3]
                                                                L15_3 = "doesModelExist"
                                                                L14_3 = L13_3
                                                                L13_3 = L13_3[L15_3]
                                                                L15_3 = GetEntityModel
                                                                L16_3 = L5_3
                                                                L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L15_3(L16_3)
                                                                L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                                if not L13_3 then
                                                                  L13_3 = exports
                                                                  L13_3 = L13_3.striano_combat
                                                                  L15_3 = "doesModelExist"
                                                                  L14_3 = L13_3
                                                                  L13_3 = L13_3[L15_3]
                                                                  L15_3 = GetEntityModel
                                                                  L16_3 = L5_3
                                                                  L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L15_3(L16_3)
                                                                  L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                                  if not L13_3 then
                                                                    L13_3 = L8_3
                                                                    L14_3 = getPoolIdFromEntity
                                                                    L15_3 = L5_3
                                                                    L14_3 = L14_3(L15_3)
                                                                    if nil ~= L14_3 then
                                                                      L15_3 = delprop
                                                                      L16_3 = L14_3
                                                                      L15_3(L16_3)
                                                                    end
                                                                    L15_3 = _ENV
                                                                    L16_3 = "AggrappaPesce"
                                                                    L15_3 = L15_3[L16_3]
                                                                    L16_3 = nil
                                                                    L17_3 = L5_3
                                                                    L18_3 = nil
                                                                    L19_3 = L13_3
                                                                    L15_3(L16_3, L17_3, L18_3, L19_3)
                                                                end
                                                                else
                                                                  L13_3 = exports
                                                                  L13_3 = L13_3.striano_combat
                                                                  L15_3 = "isACombatSword"
                                                                  L14_3 = L13_3
                                                                  L13_3 = L13_3[L15_3]
                                                                  L15_3 = GetEntityModel
                                                                  L16_3 = L5_3
                                                                  L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L15_3(L16_3)
                                                                  L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                                                                  L14_3 = getPoolIdFromEntity
                                                                  L15_3 = L5_3
                                                                  L14_3 = L14_3(L15_3)
                                                                  if L13_3 and nil ~= L14_3 then
                                                                    L15_3 = pool
                                                                    L15_3 = L15_3[L14_3]
                                                                    if L15_3 then
                                                                      L15_3 = pool
                                                                      L15_3 = L15_3[L14_3]
                                                                      L15_3 = L15_3.amount
                                                                      if L15_3 then
                                                                        goto lbl_2883
                                                                      end
                                                                    end
                                                                    L15_3 = L8_3
                                                                    ::lbl_2883::
                                                                    L16_3 = delprop
                                                                    L17_3 = L14_3
                                                                    L16_3(L17_3)
                                                                    L16_3 = _ENV
                                                                    L17_3 = "AggrappaPesce"
                                                                    L16_3 = L16_3[L17_3]
                                                                    L17_3 = nil
                                                                    L18_3 = L5_3
                                                                    L19_3 = "melee_weapon"
                                                                    L20_3 = L15_3
                                                                    L16_3(L17_3, L18_3, L19_3, L20_3)
                                                                    L16_3 = print
                                                                    L17_3 = "Taked in grab a sword ID: "
                                                                    L18_3 = L15_3
                                                                    L17_3 = L17_3 .. L18_3
                                                                    L16_3(L17_3)
                                                                  else
                                                                    if L5_3 then
                                                                      L15_3 = DoesEntityExist
                                                                      L16_3 = L5_3
                                                                      L15_3 = L15_3(L16_3)
                                                                      if L15_3 then
                                                                        L15_3 = getPoolIdFromEntity
                                                                        L16_3 = L5_3
                                                                        L15_3 = L15_3(L16_3)
                                                                        if nil ~= L15_3 then
                                                                          L16_3 = _ENV
                                                                          L17_3 = "ResetEntityAlpha"
                                                                          L16_3 = L16_3[L17_3]
                                                                          L17_3 = L0_3
                                                                          L16_3(L17_3)
                                                                          L16_3 = pool
                                                                          L16_3 = L16_3[L15_3]
                                                                          L17_3 = TriggerEvent
                                                                          L18_3 = "StartEditorFromPool"
                                                                          L19_3 = L5_3
                                                                          L20_3 = GetEntityModel
                                                                          L21_3 = L5_3
                                                                          L20_3 = L20_3(L21_3)
                                                                          L21_3 = "item"
                                                                          L21_3 = L16_3[L21_3]
                                                                          L22_3 = L16_3.amount
                                                                          L17_3(L18_3, L19_3, L20_3, L21_3, L22_3)
                                                                          L17_3 = exports
                                                                          L18_3 = "striano_editor"
                                                                          L17_3 = L17_3[L18_3]
                                                                          L19_3 = "HintHud_SetVisible"
                                                                          L18_3 = L17_3
                                                                          L17_3 = L17_3[L19_3]
                                                                          L19_3 = false
                                                                          L17_3(L18_3, L19_3)
                                                                          L17_3 = SetEntityAsMissionEntity
                                                                          L18_3 = L5_3
                                                                          L17_3(L18_3)
                                                                          L17_3 = DeleteEntity
                                                                          L18_3 = L5_3
                                                                          L17_3(L18_3)
                                                                          L17_3 = delprop
                                                                          L18_3 = L15_3
                                                                          L17_3(L18_3)
                                                                          L17_3 = _ENV
                                                                          L18_3 = "itemAttesa"
                                                                          L17_3[L18_3] = nil
                                                                          return
                                                                        else
                                                                          L16_3 = L8_3
                                                                          L17_3 = _ENV
                                                                          L18_3 = "AggrappaPesce"
                                                                          L17_3 = L17_3[L18_3]
                                                                          L18_3 = nil
                                                                          L19_3 = L5_3
                                                                          L20_3 = nil
                                                                          L21_3 = L16_3
                                                                          L17_3(L18_3, L19_3, L20_3, L21_3)
                                                                          L17_3 = testo3d
                                                                          L18_3 = "Not saved in list."
                                                                          L17_3(L18_3)
                                                                        end
                                                                    end
                                                                    else
                                                                      L15_3 = print
                                                                      L16_3 = "Not valid item for editor, report this."
                                                                      L15_3(L16_3)
                                                                    end
                                                                  end
                                                                end
                                                                modalitaPesci = false
                                                                return
                                                            end
                                                          end
                                                          else
                                                            L13_3 = _ENV
                                                            L14_3 = "NoObjectFound"
                                                            L13_3 = L13_3[L14_3]
                                                            L13_3()
                                                          end
                                                        else
                                                          L11_3 = TooFarObject
                                                          L11_3()
                                                        end
                                                      else
                                                        L11_3 = _ENV
                                                        L12_3 = "StillGrab"
                                                        L11_3 = L11_3[L12_3]
                                                        L11_3()
                                                      end
                                                    end
                                                end
                                                else
                                                  L6_3 = ResetOutlineEnt
                                                  L6_3()
                                                  L6_3 = _ENV
                                                  L7_3 = "whileSelector_tx"
                                                  L6_3 = L6_3[L7_3]
                                                  L6_3()
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        ::lbl_2988::
      else
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 1
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 2
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 45
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 24
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 30
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 31
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 32
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 33
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 34
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 35
        L1_3(L2_3, L3_3)
        L1_3 = _ENV
        L2_3 = "EnableControlAction"
        L1_3 = L1_3[L2_3]
        L2_3 = 0
        L3_3 = 73
        L1_3(L2_3, L3_3)
      end
      ::lbl_3056::
    end
    L0_3 = ResetOutlineEnt
    L0_3()
    L0_3 = ExecuteCommand
    L1_3 = "pointingstop"
    L0_3(L1_3)
    eInteractPos = nil
  end
  L0_2(L1_2)
end
LoopModalitaPesci = L17_1
L17_1 = {}
SpawnedPedProps = L17_1
myBraciere = nil
myBracierePos = nil
FuelMotosegaAttiva = 0
L17_1 = {}
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L4_2 = pairs
  L5_2 = pool
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2 or L10_2
    if L9_2 then
      L10_2 = L9_2.model
    end
    L11_2 = type
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if "string" == L11_2 then
      L11_2 = joaat
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        goto lbl_27
      end
    end
    L11_2 = tonumber
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    ::lbl_27::
    if not L11_2 then
      L12_2 = #L0_2
      L12_2 = L12_2 + 1
      L0_2[L12_2] = L8_2
      L12_2 = print
      L13_2 = "INVALID MODEL VALUE | Pool ID: %s | Model: %s"
      L14_2 = L13_2
      L13_2 = L13_2.format
      L15_2 = tostring
      L16_2 = L8_2
      L15_2 = L15_2(L16_2)
      L16_2 = tostring
      L17_2 = L10_2
      L16_2, L17_2 = L16_2(L17_2)
      L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    else
      L12_2 = L17_1
      L12_2 = L12_2[L11_2]
      if nil == L12_2 then
        L12_2 = L17_1
        L13_2 = IsModelInCdimage
        L14_2 = L11_2
        L13_2 = L13_2(L14_2)
        if L13_2 then
          L13_2 = IsModelValid
          L14_2 = L11_2
          L13_2 = L13_2(L14_2)
        end
        L12_2[L11_2] = L13_2
        L2_2 = L2_2 + 1
        L12_2 = L17_1
        L12_2 = L12_2[L11_2]
        if not L12_2 then
          L1_2[L11_2] = true
          L12_2 = print
          L13_2 = "MISSING MODEL FOUND | Model: %s | Hash: %s"
          L14_2 = L13_2
          L13_2 = L13_2.format
          L15_2 = tostring
          L16_2 = L10_2
          L15_2 = L15_2(L16_2)
          L16_2 = tostring
          L17_2 = L11_2
          L16_2, L17_2 = L16_2(L17_2)
          L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
        end
        L12_2 = L2_2 % 100
        if 0 == L12_2 then
          L12_2 = Wait
          L13_2 = 0
          L12_2(L13_2)
        end
      end
      L12_2 = L17_1
      L12_2 = L12_2[L11_2]
      if not L12_2 then
        L12_2 = #L0_2
        L12_2 = L12_2 + 1
        L0_2[L12_2] = L8_2
      end
    end
  end
  L4_2 = 1
  L5_2 = #L0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L0_2[L7_2]
    L9_2 = pool
    L9_2 = L9_2[L8_2]
    if L9_2 then
      L10_2 = print
      L11_2 = "REMOVING MISSING MODEL | Pool ID: %s | Model: %s"
      L12_2 = L11_2
      L11_2 = L11_2.format
      L13_2 = tostring
      L14_2 = L8_2
      L13_2 = L13_2(L14_2)
      L14_2 = tostring
      L15_2 = L9_2.model
      L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L10_2 = delprop
      L11_2 = L8_2
      L10_2(L11_2)
      L3_2 = L3_2 + 1
    end
    L10_2 = Wait
    L11_2 = 125
    L10_2(L11_2)
  end
  L4_2 = 0
  L5_2 = pairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2 in L5_2, L6_2, L7_2, L8_2 do
    L4_2 = L4_2 + 1
  end
  L5_2 = print
  L6_2 = "MODEL CHECK COMPLETED | Unique checked: %s | Missing models: %s | Props removed: %s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = L3_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2 = Wait
  L6_2 = 1500
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = false
  L5_2(L6_2, L7_2)
  return L3_2
end
function L19_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  if nil ~= A4_2 then
    L5_2 = A4_2
  end
  if nil ~= L5_2 then
    L6_2 = HasAnimDictLoaded
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = RequestAnimDict
      L7_2 = A0_2
      L6_2(L7_2)
      while true do
        L6_2 = HasAnimDictLoaded
        L7_2 = A0_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          break
        end
        L6_2 = Wait
        L7_2 = 10
        L6_2(L7_2)
      end
    end
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
      L13_2 = A3_2 or L13_2
      if not A3_2 then
        L13_2 = 49
      end
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
faiAnimPool = L19_1
function L19_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = HasAnimDictLoaded
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = RequestAnimDict
    L5_2 = A0_2
    L4_2(L5_2)
    while true do
      L4_2 = HasAnimDictLoaded
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 10
      L4_2(L5_2)
    end
  end
  L4_2 = faiAnimPool
  L5_2 = "gestures@f@standing@casual"
  L6_2 = "gesture_pleased"
  L7_2 = 1
  L8_2 = 49
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = Wait
  L5_2 = 1
  L4_2(L5_2)
  L4_2 = TaskPlayAnim
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = 5.0
  L9_2 = 5.0
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
faiAnimPool2 = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = HasNamedPtfxAssetLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = RequestNamedPtfxAsset
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasNamedPtfxAssetLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 10
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 <= L2_2 then
      L2_2 = print
      L3_2 = "^1[QUEST] Impossibile caricare il particle asset: %s^7"
      L4_2 = L3_2
      L3_2 = L3_2.format
      L5_2 = A0_2
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
LoadParticleAsset = L19_1
function L19_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = IsEntityVisible
  L11_2 = PlayerPedId
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L11_2()
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  if L10_2 then
    L10_2 = nil
    if nil == A8_2 then
      L11_2 = table
      L11_2 = L11_2.unpack
      L12_2 = GetEntityCoords
      L13_2 = L9_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L12_2(L13_2)
      L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L14_2 = CannaDaPesca
      if nil ~= L14_2 then
        L14_2 = DoesEntityExist
        L15_2 = CannaDaPesca
        L14_2 = L14_2(L15_2)
        if L14_2 and nil == A0_2 then
          L14_2 = string
          L14_2 = L14_2.find
          L15_2 = A0_2
          L16_2 = "_rod"
          L14_2 = L14_2(L15_2, L16_2)
          if L14_2 then
            L10_2 = CannaDaPesca
        end
      end
      else
        L14_2 = RequestModelStriano
        L15_2 = GetHashKey
        L16_2 = A0_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2)
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        L14_2 = CreateObject
        L15_2 = GetHashKey
        L16_2 = A0_2
        L15_2 = L15_2(L16_2)
        L16_2 = L11_2
        L17_2 = L12_2
        L18_2 = L13_2 - 0.2
        L19_2 = true
        L20_2 = true
        L21_2 = false
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L10_2 = L14_2
      end
    else
      L10_2 = A8_2
    end
    L11_2 = 0
    while true do
      L12_2 = DoesEntityExist
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      if not (not L12_2 and L11_2 < 100) then
        break
      end
      L11_2 = L11_2 + 1
      L12_2 = Wait
      L13_2 = 0
      L12_2(L13_2)
    end
    if L11_2 < 100 then
      L12_2 = AttachEntityToEntity
      L13_2 = L10_2
      L14_2 = L9_2
      L15_2 = GetPedBoneIndex
      L16_2 = L9_2
      L17_2 = A1_2
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = A2_2
      L17_2 = A3_2
      L18_2 = A4_2
      L19_2 = A5_2
      L20_2 = A6_2
      L21_2 = A7_2
      L22_2 = false
      L23_2 = false
      L24_2 = false
      L25_2 = true
      L26_2 = 1
      L27_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      if nil == A8_2 then
        L12_2 = string
        L12_2 = L12_2.find
        L13_2 = A0_2
        L14_2 = "_rod"
        L12_2 = L12_2(L13_2, L14_2)
        if L12_2 then
          CannaDaPesca = L10_2
          L12_2 = print
          L13_2 = "Canna da pesca assegnata."
          L12_2(L13_2)
        end
      end
      L12_2 = SetEntityAsMissionEntity
      L13_2 = L10_2
      L12_2(L13_2)
      L12_2 = SetModelAsNoLongerNeeded
      L13_2 = A0_2
      L12_2(L13_2)
      return L10_2
    else
      L12_2 = print
      L13_2 = "Prop da attaccare non rilevato!"
      L12_2(L13_2)
    end
  end
end
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetGameplayCamCoord
  L1_2 = L1_2()
  L2_2 = GetGameplayCamRot
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L3_2 = RotationToDirection
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = L1_2.x
  L6_2 = L3_2.x
  L7_2 = A0_2 or L7_2
  if not A0_2 then
    L7_2 = 100.0
  end
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = L1_2.y
  L7_2 = L3_2.y
  L8_2 = A0_2 or L8_2
  if not A0_2 then
    L8_2 = 100.0
  end
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  L7_2 = L1_2.z
  L8_2 = L3_2.z
  L9_2 = A0_2 or L9_2
  if not A0_2 then
    L9_2 = 100.0
  end
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = StartShapeTestRay
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = -1
  L13_2 = PlayerPedId
  L13_2 = L13_2()
  L14_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = GetShapeTestResult
  L7_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  if 1 == L7_2 then
    return L8_2
  end
  return L4_2
end
GetCameraRaycast = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if not A0_2 then
    A0_2 = 5.0
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = GetGameplayCamRot
  L4_2 = 2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = L3_2.z
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.rad
  L6_2 = L3_2.x
  L5_2 = L5_2(L6_2)
  L6_2 = vector3
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L7_2 = -L7_2
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 * L8_2
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.cos
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 * L9_2
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L5_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L7_2 = L6_2 * A0_2
  L7_2 = L2_2 + L7_2
  L8_2 = StartShapeTestRay
  L9_2 = L2_2.x
  L10_2 = L2_2.y
  L11_2 = L2_2.z
  L12_2 = L7_2.x
  L13_2 = L7_2.y
  L14_2 = L7_2.z
  L15_2 = -1
  L16_2 = L1_2
  L17_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = GetShapeTestResult
  L10_2 = L8_2
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
  if 1 == L10_2 then
    L14_2 = GetEntityCoords
    L15_2 = L1_2
    L14_2 = L14_2(L15_2)
    L15_2 = L14_2 - L11_2
    L15_2 = #L15_2
    L16_2 = 0.001
    if L15_2 > L16_2 then
      L16_2 = L14_2 - L11_2
      L16_2 = L16_2 / L15_2
      if L16_2 then
        goto lbl_86
      end
    end
    L16_2 = vector3
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = 0.0
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    ::lbl_86::
    L17_2 = L16_2 * 2.0
    L17_2 = L11_2 + L17_2
    L18_2 = L13_2
    L19_2 = true
    return L17_2, L18_2, L19_2
  end
  L14_2 = L7_2
  L15_2 = 0
  L16_2 = false
  return L14_2, L15_2, L16_2
end
GetCameraHitCoords = L20_1
isLightActive = false
lastStartTimeLumos = 0
CONSUMOTORCIAMS = 2500
effectThread = nil
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if not A0_2 or 0 == A0_2 then
    return
  end
  L2_2 = "des_farmhouse"
  L3_2 = "ent_ray_ch2_farm_fire_light"
  L4_2 = HasNamedPtfxAssetLoaded
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = RequestNamedPtfxAsset
    L5_2 = L2_2
    L4_2(L5_2)
    while true do
      L4_2 = HasNamedPtfxAssetLoaded
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 0
      L4_2(L5_2)
    end
  end
  L4_2 = UseParticleFxAssetNextCall
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = 15.0
  L5_2 = GetHashKey
  L6_2 = "prop_cs_police_torch"
  L5_2 = L5_2(L6_2)
  if A1_2 == L5_2 then
    L4_2 = 10.0
  end
  L5_2 = GetCameraHitCoords
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L10_2 = L10_2 + 0.3
  L11_2 = 0.05
  L12_2 = GetHashKey
  L13_2 = "prop_cs_police_torch"
  L12_2 = L12_2(L13_2)
  if A1_2 == L12_2 then
    L11_2 = 0.04
  end
  L12_2 = Citizen
  L12_2 = L12_2.InvokeNative
  L13_2 = -7918206464511161279
  L14_2 = A0_2
  L12_2 = L12_2(L13_2, L14_2)
  if not L12_2 then
    L11_2 = 0.01
    L12_2 = GetHashKey
    L13_2 = "prop_cs_police_torch"
    L12_2 = L12_2(L13_2)
    if A1_2 == L12_2 then
      L11_2 = 0.005
    end
    L12_2 = GetEntityCoords
    L13_2 = A0_2
    L12_2 = L12_2(L13_2)
    L13_2 = L12_2.x
    L14_2 = L12_2.y
    L10_2 = L12_2.z
    L9_2 = L14_2
    L8_2 = L13_2
  end
  L12_2 = SetParticleFxNonLoopedAlpha
  L13_2 = L11_2
  L12_2(L13_2)
  L12_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L13_2 = L3_2
  L14_2 = L8_2
  L15_2 = L9_2
  L16_2 = L10_2
  L17_2 = 0.0
  L18_2 = 0.0
  L19_2 = 0.0
  L20_2 = 25.5
  L21_2 = false
  L22_2 = false
  L23_2 = false
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
end
SpawnLightPulseAtPed = L20_1
L20_1 = exports
L21_1 = "CancelLightMode"
function L22_1()
  local L0_2, L1_2
  L0_2 = CancelLightMode
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2
  isLightActive = false
  L0_2 = DoesEntityExist
  L1_2 = lightProp
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = lightProp
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = lightProp
    L0_2(L1_2)
    lightProp = nil
    L0_2 = ExecuteCommand
    L1_2 = "pointingstop"
    L0_2(L1_2)
  end
end
CancelLightMode = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if not L0_2 or 0 == L0_2 then
    return
  end
  isLightActive = true
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  lastStartTimeLumos = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = isLightActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetPedBoneIndex
      L1_3 = L0_2
      L2_3 = 18905
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = GetWorldPositionOfEntityBone
      L2_3 = L0_2
      L3_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = Citizen
      L2_3 = L2_3.InvokeNative
      L3_3 = -7918206464511161279
      L4_3 = L0_2
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = Draw3D
        L3_3 = L1_3.x
        L4_3 = L1_3.y
        L5_3 = L1_3.z
        L6_3 = "B~n~~r~X"
        L7_3 = 0.35
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      else
      end
      L2_3 = IsControlJustPressed
      L3_3 = 0
      L4_3 = 73
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = 73
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          goto lbl_55
        end
      end
      L2_3 = Citizen
      L2_3 = L2_3.InvokeNative
      L3_3 = -7918206464511161279
      L4_3 = L0_2
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = CancelLightMode
        L2_3()
        L2_3 = CreateThread
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = Wait
          L1_4 = 250
          L0_4(L1_4)
          L0_4 = faiAnimPool
          L1_4 = "weapon@w_sp_jerrycan"
          L2_4 = "holster"
          L3_4 = 650
          L4_4 = 49
          L0_4(L1_4, L2_4, L3_4, L4_4)
        end
        L2_3(L3_3)
        break
      end
      ::lbl_55::
    end
  end
  L1_2(L2_2)
  L1_2 = GetEntityModel
  L2_2 = lightProp
  L1_2 = L1_2(L2_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = isLightActive
      if not L0_3 then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = SpawnLightPulseAtPed
      L2_3 = L0_2
      L3_3 = L1_2
      L1_3(L2_3, L3_3)
      L1_3 = math
      L1_3 = L1_3.abs
      L2_3 = GetDisabledControlNormal
      L3_3 = 0
      L4_3 = 1
      L2_3, L3_3, L4_3, L5_3, L6_3 = L2_3(L3_3, L4_3)
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L2_3 = 0.001
      L1_3 = L1_3 > L2_3
      if L1_3 then
        L2_3 = Wait
        L3_3 = 125
        L2_3(L3_3)
      end
      L2_3 = Wait
      L3_3 = 225
      L2_3(L3_3)
      L2_3 = lastStartTimeLumos
      L2_3 = L0_3 - L2_3
      L3_3 = CONSUMOTORCIAMS
      if not (L2_3 > L3_3) then
        L2_3 = lastStartTimeLumos
        if 0 ~= L2_3 then
          goto lbl_105
        end
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      lastStartTimeLumos = L2_3
      L2_3 = L1_2
      L3_3 = GetHashKey
      L4_3 = "prop_cs_police_torch"
      L3_3 = L3_3(L4_3)
      if L2_3 == L3_3 then
        L2_3 = Citizen
        L2_3 = L2_3.InvokeNative
        L3_3 = -7918206464511161279
        L4_3 = L0_2
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = TriggerServerEvent
          L3_3 = "inv3d:removeItemByName"
          L4_3 = "player"
          L5_3 = "smalltorch"
          L6_3 = 1
          L2_3(L3_3, L4_3, L5_3, L6_3)
        else
          L2_3 = TriggerServerEvent
          L3_3 = "inv3d:removeItemByName"
          L4_3 = "player"
          L5_3 = "smalltorch"
          L6_3 = 2
          L2_3(L3_3, L4_3, L5_3, L6_3)
        end
      else
        L2_3 = L1_2
        L3_3 = GetHashKey
        L4_3 = "prop_tool_torch"
        L3_3 = L3_3(L4_3)
        if L2_3 == L3_3 then
          L2_3 = Citizen
          L2_3 = L2_3.InvokeNative
          L3_3 = -7918206464511161279
          L4_3 = L0_2
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = TriggerServerEvent
            L3_3 = "inv3d:removeItemByName"
            L4_3 = "player"
            L5_3 = "torch"
            L6_3 = 1
            L2_3(L3_3, L4_3, L5_3, L6_3)
          else
            L2_3 = TriggerServerEvent
            L3_3 = "inv3d:removeItemByName"
            L4_3 = "player"
            L5_3 = "torch"
            L6_3 = 2
            L2_3(L3_3, L4_3, L5_3, L6_3)
          end
        end
      end
      ::lbl_105::
    end
    L0_3 = DoesEntityExist
    L1_3 = lightProp
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = SetEntityAsMissionEntity
      L1_3 = lightProp
      L0_3(L1_3)
      L0_3 = DeleteEntity
      L1_3 = lightProp
      L0_3(L1_3)
      lightProp = nil
    end
    isLightActive = false
    effectThread = nil
  end
  L2_2 = L2_2(L3_2)
  effectThread = L2_2
end
LightOn = L20_1
lightProp = nil
L20_1 = exports
L21_1 = "lightProp"
function L22_1()
  local L0_2, L1_2
  L0_2 = lightProp
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = lightProp
    L0_2 = L0_2(L1_2)
  end
  return L0_2
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = isLightActive
  if L0_2 then
    lastStartTimeLumos = 0
    isLightActive = false
    effectThread = nil
    L0_2 = SetEntityAsMissionEntity
    L1_2 = lightProp
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = lightProp
    L0_2(L1_2)
    lightProp = nil
    L0_2 = Wait
    L1_2 = 125
    L0_2(L1_2)
  end
  L0_2 = lightProp
  if nil == L0_2 then
    L0_2 = L19_1
    L1_2 = "prop_tool_torch"
    L2_2 = 18905
    L3_2 = 0.275
    L4_2 = -0.005
    L5_2 = 0.105
    L6_2 = -68.6
    L7_2 = -112.6
    L8_2 = 64.0
    L9_2 = nil
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    lightProp = L0_2
    L0_2 = LightOn
    L0_2()
    L0_2 = PlaySoundFrontend
    L1_2 = -1
    L2_2 = "Kill_List_Counter"
    L3_2 = "GTAO_FM_Events_Soundset"
    L4_2 = 0
    L0_2(L1_2, L2_2, L3_2, L4_2)
  else
    L0_2 = testo3d
    L1_2 = "In use."
    L0_2(L1_2)
    L0_2 = PlaySoundFrontend
    L1_2 = -1
    L2_2 = "5_Second_Timer"
    L3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    L4_2 = 0
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end
StartLightSurv = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = isLightActive
  if L0_2 then
    lastStartTimeLumos = 0
    isLightActive = false
    effectThread = nil
    L0_2 = SetEntityAsMissionEntity
    L1_2 = lightProp
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = lightProp
    L0_2(L1_2)
    lightProp = nil
    L0_2 = Wait
    L1_2 = 125
    L0_2(L1_2)
  end
  L0_2 = lightProp
  if nil == L0_2 then
    L0_2 = L19_1
    L1_2 = "prop_cs_police_torch"
    L2_2 = 18905
    L3_2 = 0.195
    L4_2 = 0.03
    L5_2 = 0.025
    L6_2 = 15.0
    L7_2 = -19.2
    L8_2 = 102.0
    L9_2 = nil
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    lightProp = L0_2
    L0_2 = LightOn
    L0_2()
    L0_2 = PlaySoundFrontend
    L1_2 = -1
    L2_2 = "Kill_List_Counter"
    L3_2 = "GTAO_FM_Events_Soundset"
    L4_2 = 0
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end
StartLightSurv2 = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = isLightActive
  if L0_2 then
    lastStartTimeLumos = 0
    isLightActive = false
    effectThread = nil
    L0_2 = SetEntityAsMissionEntity
    L1_2 = lightProp
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = lightProp
    L0_2(L1_2)
    lightProp = nil
    L0_2 = Wait
    L1_2 = 125
    L0_2(L1_2)
  end
  L0_2 = lightProp
  if nil == L0_2 then
    L0_2 = L19_1
    L1_2 = "bzzz_prop_torch_fire001"
    L2_2 = 18905
    L3_2 = 0.155
    L4_2 = 0.13
    L5_2 = -0.07
    L6_2 = -58.8
    L7_2 = 95.400000000001
    L8_2 = -29.0
    L9_2 = nil
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    lightProp = L0_2
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    isLightActive = true
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    lastStartTimeLumos = L1_2
    L1_2 = faiAnimPool
    L2_2 = "anim@heists@humane_labs@finale@keycards"
    L3_2 = "ped_a_enter_loop"
    L4_2 = 49
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      while true do
        L0_3 = isLightActive
        if not L0_3 then
          break
        end
        L0_3 = IsPedFatallyInjured
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = GetPedBoneIndex
        L1_3 = L0_2
        L2_3 = 18905
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = GetWorldPositionOfEntityBone
        L2_3 = L0_2
        L3_3 = L0_3
        L1_3 = L1_3(L2_3, L3_3)
        L2_3 = Citizen
        L2_3 = L2_3.InvokeNative
        L3_3 = -7918206464511161279
        L4_3 = L0_2
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = Draw3D
          L3_3 = L1_3.x
          L4_3 = L1_3.y
          L5_3 = L1_3.z
          L6_3 = "B~n~~r~X"
          L7_3 = 0.35
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
        else
        end
        L2_3 = IsControlJustPressed
        L3_3 = 0
        L4_3 = 73
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsDisabledControlJustPressed
          L3_3 = 0
          L4_3 = 73
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            goto lbl_88
          end
        end
        L2_3 = Citizen
        L2_3 = L2_3.InvokeNative
        L3_3 = -7918206464511161279
        L4_3 = L0_2
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = CancelLightMode
          L2_3()
          L2_3 = CreateThread
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = Wait
            L1_4 = 250
            L0_4(L1_4)
            L0_4 = faiAnimPool
            L1_4 = "weapon@w_sp_jerrycan"
            L2_4 = "holster"
            L3_4 = 650
            L4_4 = 49
            L0_4(L1_4, L2_4, L3_4, L4_4)
          end
          L2_3(L3_3)
          break
        else
          L2_3 = Wait
          L3_3 = 25
          L2_3(L3_3)
          while true do
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 73
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsDisabledControlPressed
              L3_3 = 0
              L4_3 = 73
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                break
              end
            end
            L2_3 = Wait
            L3_3 = 0
            L2_3(L3_3)
          end
          L2_3 = Wait
          L3_3 = 125
          L2_3(L3_3)
          L2_3 = faiAnimPool
          L3_3 = "anim@heists@humane_labs@finale@keycards"
          L4_3 = "ped_a_enter_loop"
          L5_3 = 49
          L2_3(L3_3, L4_3, L5_3)
        end
        ::lbl_88::
      end
    end
    L1_2(L2_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      while true do
        L0_3 = isLightActive
        if not L0_3 then
          break
        end
        L0_3 = IsPedFatallyInjured
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          break
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = "des_farmhouse"
        L2_3 = "ent_ray_ch2_farm_fire_light"
        L3_3 = HasNamedPtfxAssetLoaded
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          L3_3 = RequestNamedPtfxAsset
          L4_3 = L1_3
          L3_3(L4_3)
          while true do
            L3_3 = HasNamedPtfxAssetLoaded
            L4_3 = L1_3
            L3_3 = L3_3(L4_3)
            if L3_3 then
              break
            end
            L3_3 = Wait
            L4_3 = 0
            L3_3(L4_3)
          end
        end
        L3_3 = UseParticleFxAssetNextCall
        L4_3 = L1_3
        L3_3(L4_3)
        L3_3 = 10.0
        L4_3 = IsEntityAttached
        L5_3 = L0_2
        L4_3 = L4_3(L5_3)
        if L4_3 then
          L3_3 = 35.0
        end
        L4_3 = GetCameraHitCoords
        L5_3 = L3_3
        L4_3, L5_3, L6_3 = L4_3(L5_3)
        L7_3 = L4_3.x
        L8_3 = L4_3.y
        L9_3 = L4_3.z
        L9_3 = L9_3 + 0.3
        L10_3 = 0.05
        L11_3 = Citizen
        L11_3 = L11_3.InvokeNative
        L12_3 = -7918206464511161279
        L13_3 = L0_2
        L11_3 = L11_3(L12_3, L13_3)
        if not L11_3 then
          L10_3 = 0.01
          L11_3 = GetEntityCoords
          L12_3 = L0_2
          L11_3 = L11_3(L12_3)
          L12_3 = L11_3.x
          L13_3 = L11_3.y
          L14_3 = L11_3.z
          L9_3 = L14_3 + 1.5
          L8_3 = L13_3
          L7_3 = L12_3
        end
        L11_3 = SetParticleFxNonLoopedAlpha
        L12_3 = L10_3
        L11_3(L12_3)
        L11_3 = StartNetworkedParticleFxNonLoopedAtCoord
        L12_3 = L2_3
        L13_3 = L7_3
        L14_3 = L8_3
        L15_3 = L9_3
        L16_3 = 0.0
        L17_3 = 0.0
        L18_3 = 0.0
        L19_3 = 25.5
        L20_3 = false
        L21_3 = false
        L22_3 = false
        L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        L11_3 = math
        L11_3 = L11_3.abs
        L12_3 = GetDisabledControlNormal
        L13_3 = 0
        L14_3 = 1
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L12_3(L13_3, L14_3)
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        L12_3 = 0.001
        L11_3 = L11_3 > L12_3
        if L11_3 then
          L12_3 = Wait
          L13_3 = 125
          L12_3(L13_3)
        end
        L12_3 = Wait
        L13_3 = 225
        L12_3(L13_3)
        L12_3 = GetEntityCoords
        L13_3 = L0_2
        L12_3 = L12_3(L13_3)
        L13_3 = L12_3.x
        L14_3 = L12_3.y
        L9_3 = L12_3.z
        L8_3 = L14_3
        L7_3 = L13_3
        L13_3 = SetParticleFxNonLoopedAlpha
        L14_3 = L10_3
        L13_3(L14_3)
        L13_3 = StartNetworkedParticleFxNonLoopedAtCoord
        L14_3 = L2_3
        L15_3 = L7_3
        L16_3 = L8_3
        L17_3 = L9_3
        L18_3 = 0.0
        L19_3 = 0.0
        L20_3 = 0.0
        L21_3 = 25.5
        L22_3 = false
        L23_3 = false
        L24_3 = false
        L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        L13_3 = Wait
        L14_3 = 225
        L13_3(L14_3)
        L13_3 = lastStartTimeLumos
        L13_3 = L0_3 - L13_3
        L14_3 = CONSUMOTORCIAMS
        if not (L13_3 > L14_3) then
          L13_3 = lastStartTimeLumos
          if 0 ~= L13_3 then
            goto lbl_172
          end
        end
        L13_3 = GetGameTimer
        L13_3 = L13_3()
        lastStartTimeLumos = L13_3
        L13_3 = Citizen
        L13_3 = L13_3.InvokeNative
        L14_3 = -7918206464511161279
        L15_3 = L0_2
        L13_3 = L13_3(L14_3, L15_3)
        if not L13_3 then
          L13_3 = TriggerServerEvent
          L14_3 = "inv3d:removeItemByName"
          L15_3 = "player"
          L16_3 = "survtorch"
          L17_3 = 1
          L13_3(L14_3, L15_3, L16_3, L17_3)
        else
          L13_3 = TriggerServerEvent
          L14_3 = "inv3d:removeItemByName"
          L15_3 = "player"
          L16_3 = "survtorch"
          L17_3 = 2
          L13_3(L14_3, L15_3, L16_3, L17_3)
        end
        ::lbl_172::
      end
      L0_3 = DoesEntityExist
      L1_3 = lightProp
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = SetEntityAsMissionEntity
        L1_3 = lightProp
        L0_3(L1_3)
        L0_3 = DeleteEntity
        L1_3 = lightProp
        L0_3(L1_3)
        lightProp = nil
        L0_3 = ExecuteCommand
        L1_3 = "pointingstop"
        L0_3(L1_3)
      end
      isLightActive = false
      effectThread = nil
    end
    L1_2 = L1_2(L2_2)
    effectThread = L1_2
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Kill_List_Counter"
    L4_2 = "GTAO_FM_Events_Soundset"
    L5_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
StartLightSurv3 = L20_1
L20_1 = RegisterNetEvent
L21_1 = "inv3d:removeItemByNameResult"
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if "survtorch" ~= A0_2 and "torch" ~= A0_2 and "smalltorch" ~= A0_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2 or A2_2
  if not L3_2 then
    A2_2 = 0
  end
  if not A1_2 or A2_2 <= 0 then
    L3_2 = CancelLightMode
    L3_2()
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "startStrianoLight"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "startStrianoLight"
function L22_1()
  local L0_2, L1_2
  L0_2 = StartLightSurv
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "startStrianoLight2"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "startStrianoLight2"
function L22_1()
  local L0_2, L1_2
  L0_2 = StartLightSurv2
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "startStrianoLight3"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "startStrianoLight3"
function L22_1()
  local L0_2, L1_2
  L0_2 = StartLightSurv3
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = BeginTextCommandScaleformString
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentScaleform
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = EndTextCommandScaleformString
  L1_2()
end
ButtonMessageH = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
ButtonH = L20_1
function L20_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
  local L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L14_2 = "instructional_buttons"
  L15_2 = RequestScaleformMovie
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  while true do
    L16_2 = HasScaleformMovieLoaded
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      break
    end
    L16_2 = Wait
    L17_2 = 0
    L16_2(L17_2)
  end
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "CLEAR_ALL"
  L16_2(L17_2, L18_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "SET_CLEAR_SPACE"
  L16_2(L17_2, L18_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 200
  L16_2(L17_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  if A0_2 and A0_2 > -1 and A1_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 6
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A0_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A1_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A0_2 and -1 == A0_2 and A1_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 6
    L16_2(L17_2)
    L16_2 = ButtonMessageH
    L17_2 = A1_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A2_2 and A3_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 5
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A2_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A3_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A4_2 and A5_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 4
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A4_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A5_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A6_2 and A7_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 3
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A6_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A7_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A8_2 and A9_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 2
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A8_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A9_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A10_2 and A11_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 1
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 1
    L19_2 = A10_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A11_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A12_2 and A13_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 0
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A12_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A13_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L16_2(L17_2, L18_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "SET_BACKGROUND_COLOUR"
  L16_2(L17_2, L18_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 80
  L16_2(L17_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = DrawScaleformMovieFullscreen
  L17_2 = L15_2
  L16_2(L17_2)
end
draw = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 0.0
  end
  A0_2 = A0_2 % 360.0
  L1_2 = 180.0
  if A0_2 > L1_2 then
    A0_2 = A0_2 - 360.0
  end
  return A0_2
end
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = L20_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if A0_2 > 89.0 then
    A0_2 = 89.0
  end
  if A0_2 < -89.0 then
    A0_2 = -89.0
  end
  return A0_2
end
chiudiLoopDisCam = false
ultimoTrovato = nil
timerFish = 0
CannaDaPesca = nil
fishEntity = nil
GhostObj = nil
pescando = false
trovatoAmo = false
AmoLanciato = false
filo = nil
PropMano = nil
distanzaRotellina = -25.0
suonoTrovato = false
bloccaLoopFilo = false
modelloRand = 0
L22_1 = {}
tabPesci = L22_1
takeBall = nil
L22_1 = {}
PesciPresi = L22_1
modalitaPesci = false
lastOutline = nil
outlineVeh = nil
lastPosOff = nil
globaloffz = 0.0
globalRot = 0.0
globalRotY = 0.0
EntAlpha = nil
lastPosCassaBase = nil
lastRotCassaBase = nil
cassaChePorto = nil
L22_1 = exports
L23_1 = "cassaChePorto"
function L24_1()
  local L0_2, L1_2
  L0_2 = cassaChePorto
  return L0_2
end
L22_1(L23_1, L24_1)
bombolaGasObj = nil
mascheraSUBObj = nil
timerSUB = 0
closeFishF = false
L22_1 = {}
PesciVendita = L22_1
L22_1 = {}
FishPrices = L22_1
closeAnyLoop = false
altezzaZ = 0.0
sonoSullaScala = nil
L22_1 = {}
alberi = L22_1
L22_1 = {}
banano = L22_1
L22_1 = {}
ashtree = L22_1
L22_1 = {}
pietre = L22_1
L22_1 = {}
L22_1.ESC = 322
L22_1.F1 = 288
L22_1.F2 = 289
L22_1.F3 = 170
L22_1.F5 = 166
L22_1.F6 = 167
L22_1.F7 = 168
L22_1.F8 = 169
L22_1.F9 = 56
L22_1.F10 = 57
L22_1["~"] = 243
L22_1["1"] = 157
L22_1["2"] = 158
L22_1["3"] = 160
L22_1["4"] = 164
L22_1["5"] = 165
L22_1["6"] = 159
L22_1["7"] = 161
L22_1["8"] = 162
L22_1["9"] = 163
L22_1["-"] = 84
L22_1["="] = 83
L22_1.BACKSPACE = 177
L22_1.TAB = 37
L22_1.Q = 44
L22_1.W = 32
L22_1.E = 38
L22_1.R = 45
L22_1.T = 245
L22_1.Y = 246
L22_1.U = 303
L22_1.P = 199
L22_1["["] = 39
L22_1["]"] = 40
L22_1.ENTER = 18
L22_1.CAPS = 137
L22_1.A = 34
L22_1.S = 8
L22_1.D = 9
L22_1.F = 23
L22_1.G = 47
L22_1.H = 74
L22_1.K = 311
L22_1.L = 182
L22_1.LEFTSHIFT = 21
L22_1.Z = 20
L22_1.X = 73
L22_1.C = 26
L22_1.V = 0
L22_1.B = 29
L22_1.N = 249
L22_1.M = 244
L22_1[","] = 82
L22_1["."] = 81
L22_1.LEFTCTRL = 36
L22_1.LEFTALT = 19
L22_1.SPACE = 22
L22_1.RIGHTCTRL = 70
L22_1.HOME = 213
L22_1.PAGEUP = 10
L22_1.PAGEDOWN = 11
L22_1.DELETE = 178
L22_1.LEFT = 174
L22_1.RIGHT = 175
L22_1.TOP = 27
L22_1.DOWN = 173
L22_1.NENTER = 201
L22_1.N4 = 108
L23_1 = 60
L22_1.N5 = L23_1
L23_1 = "N6"
L24_1 = 107
L22_1[L23_1] = L24_1
L23_1 = "N+"
L24_1 = 96
L22_1[L23_1] = L24_1
L23_1 = "N-"
L24_1 = 97
L22_1[L23_1] = L24_1
L23_1 = "N7"
L24_1 = 117
L22_1[L23_1] = L24_1
L23_1 = "N8"
L24_1 = 61
L22_1[L23_1] = L24_1
L23_1 = "N9"
L24_1 = 118
L22_1[L23_1] = L24_1
Keys = L22_1
L22_1 = _ENV
L23_1 = "Safe"
L24_1 = {}
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "setmetatable"
L22_1 = L22_1[L23_1]
L23_1 = _ENV
L24_1 = "Safe"
L23_1 = L23_1[L24_1]
L24_1 = {}
L25_1 = "__index"
function L26_1(A0_2, A1_2)
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
L24_1[L25_1] = L26_1
L22_1(L23_1, L24_1)
function L22_1(A0_2)
  local L1_2, L2_2
  if A0_2 >= 0 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2 + 0.5
    return L1_2(L2_2)
  else
    L1_2 = math
    L1_2 = L1_2.ceil
    L2_2 = A0_2 - 0.5
    return L1_2(L2_2)
  end
end
L23_1 = 1.0
L24_1 = 1000
L25_1 = 8.0
L26_1 = 1.5
L27_1 = _ENV
L28_1 = "math"
L27_1 = L27_1[L28_1]
L28_1 = "cos"
L27_1 = L27_1[L28_1]
L28_1 = _ENV
L29_1 = "math"
L28_1 = L28_1[L29_1]
L29_1 = "sin"
L28_1 = L28_1[L29_1]
L29_1 = _ENV
L30_1 = "math"
L29_1 = L29_1[L30_1]
L30_1 = "min"
L29_1 = L29_1[L30_1]
L30_1 = _ENV
L31_1 = "math"
L30_1 = L30_1[L31_1]
L31_1 = "max"
L30_1 = L30_1[L31_1]
L31_1 = _ENV
L32_1 = "table"
L31_1 = L31_1[L32_1]
L32_1 = "insert"
L31_1 = L31_1[L32_1]
L32_1 = _ENV
L33_1 = "math"
L32_1 = L32_1[L33_1]
L33_1 = "pi"
L32_1 = L32_1[L33_1]
L33_1 = 180.0
L32_1 = L32_1 / L33_1
L33_1 = _ENV
L34_1 = "cam"
L35_1 = nil
L33_1[L34_1] = L35_1
L33_1 = nil
L34_1 = _ENV
L35_1 = "vector3"
L34_1 = L34_1[L35_1]
L35_1 = 0
L36_1 = 0
L37_1 = 0
L34_1 = L34_1(L35_1, L36_1, L37_1)
L35_1 = nil
L36_1 = 1.0
L37_1 = 0.0
L38_1 = 0.0
L39_1 = {}
L40_1 = 14
L41_1 = 15
L42_1 = 16
L43_1 = 17
L44_1 = 81
L45_1 = 82
L46_1 = 99
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L39_1[4] = L43_1
L39_1[5] = L44_1
L39_1[6] = L45_1
L39_1[7] = L46_1
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetShapeTestResult
  L4_2 = _ENV
  L5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L11_2 = 511
  L12_2 = A2_2
  L13_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L41_1 = _ENV
L42_1 = "SetTrackedEntity"
function L43_1(A0_2)
  local L1_2
  L33_1 = A0_2
end
L41_1[L42_1] = L43_1
L41_1 = _ENV
L42_1 = "getDynamicRadius"
function L43_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = GetModelDimensions
  L4_2 = GetEntityModel
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L4_2 - L3_2
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L5_2.x
  L8_2 = L5_2.y
  L9_2 = L5_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L6_2 * 0.4
  L8_2 = L6_2 * 1.2
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = L7_2
  L11_2 = 5.0
  L9_2 = L9_2(L10_2, L11_2)
  L7_2 = L9_2
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = L8_2
  L11_2 = 75.0
  L9_2 = L9_2(L10_2, L11_2)
  L8_2 = L9_2
  L9_2 = A1_2 + L7_2
  L10_2 = A2_2 + L8_2
  return L9_2, L10_2
end
L41_1[L42_1] = L43_1
L41_1 = _ENV
L42_1 = "LastMinMaxRange"
L43_1 = {}
L44_1 = 0
L45_1 = 0
L43_1[1] = L44_1
L43_1[2] = L45_1
L41_1[L42_1] = L43_1
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = IsInputDisabled
  L1_2 = 0
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L25_1
    if L0_2 then
      goto lbl_10
    end
  end
  L0_2 = L26_1
  ::lbl_10::
  L1_2 = L38_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 - L2_2
  L38_1 = L1_2
  L1_2 = L37_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 + L2_2
  L37_1 = L1_2
  L1_2 = L30_1
  L2_2 = L29_1
  L3_2 = L37_1
  L4_2 = 89.0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = -89.0
  L1_2 = L1_2(L2_2, L3_2)
  L37_1 = L1_2
  L1_2 = IsControlPressed
  L2_2 = 0
  L3_2 = 21
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsDisabledControlPressed
    L2_2 = 0
    L3_2 = 21
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsControlPressed
      L2_2 = 0
      L3_2 = 23
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = IsDisabledControlPressed
        L2_2 = 0
        L3_2 = 23
        L1_2 = L1_2(L2_2, L3_2)
        if not L1_2 then
          L1_2 = GhostObj
          if nil == L1_2 then
            L1_2 = getDynamicRadius
            L2_2 = L33_1
            L3_2 = 3.0
            L4_2 = 10.0
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
            L3_2 = {}
            L4_2 = L1_2
            L5_2 = L2_2
            L3_2[1] = L4_2
            L3_2[2] = L5_2
            LastMinMaxRange = L3_2
            L3_2 = L36_1
            L4_2 = GetDisabledControlNormal
            L5_2 = 0
            L6_2 = 16
            L4_2 = L4_2(L5_2, L6_2)
            L5_2 = GetDisabledControlNormal
            L6_2 = 0
            L7_2 = 17
            L5_2 = L5_2(L6_2, L7_2)
            L4_2 = L4_2 - L5_2
            L5_2 = L23_1
            L4_2 = L4_2 * L5_2
            L3_2 = L3_2 + L4_2
            L36_1 = L3_2
            L3_2 = L30_1
            L4_2 = L29_1
            L5_2 = L36_1
            L6_2 = L2_2
            L4_2 = L4_2(L5_2, L6_2)
            L5_2 = L22_1
            L6_2 = L1_2 / 2
            L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L36_1 = L3_2
          else
            L1_2 = LastMinMaxRange
            L1_2 = L1_2[1]
            L2_2 = LastMinMaxRange
            L2_2 = L2_2[2]
            L3_2 = L36_1
            L4_2 = GetDisabledControlNormal
            L5_2 = 0
            L6_2 = 16
            L4_2 = L4_2(L5_2, L6_2)
            L5_2 = GetDisabledControlNormal
            L6_2 = 0
            L7_2 = 17
            L5_2 = L5_2(L6_2, L7_2)
            L4_2 = L4_2 - L5_2
            L5_2 = L23_1
            L4_2 = L4_2 * L5_2
            L3_2 = L3_2 + L4_2
            L36_1 = L3_2
            L3_2 = L30_1
            L4_2 = L29_1
            L5_2 = L36_1
            L6_2 = L2_2
            L4_2 = L4_2(L5_2, L6_2)
            L5_2 = L22_1
            L6_2 = L1_2 / 2
            L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L36_1 = L3_2
          end
        end
      end
    end
  end
  L1_2 = L33_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L33_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L33_1
      L1_2 = L1_2(L2_2)
      L2_2 = L35_1
      L1_2 = L1_2 + L2_2
      L34_1 = L1_2
    end
  end
  L1_2 = L27_1
  L2_2 = L37_1
  L3_2 = L32_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L27_1
  L4_2 = L38_1
  L5_2 = L32_1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L1_2
  L4_2 = L28_1
  L5_2 = L38_1
  L6_2 = L32_1
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * L1_2
  L5_2 = L28_1
  L6_2 = L37_1
  L7_2 = L32_1
  L6_2 = L6_2 * L7_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = L36_1
  L2_2 = L2_2 * L3_2
  L3_2 = L34_1
  L3_2 = L3_2 + L2_2
  L4_2 = L33_1
  if not L4_2 then
    L4_2 = PlayerPedId
    L4_2 = L4_2()
  end
  L5_2 = GetCamMatrix
  L6_2 = cam
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = L5_2 * 0.125
  L9_2 = L7_2 * 0.07
  L10_2 = {}
  L11_2 = {}
  L12_2 = L40_1
  L13_2 = L34_1
  L14_2 = L3_2 + L8_2
  L14_2 = L14_2 + L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[1] = L11_2
  L11_2 = {}
  L12_2 = L40_1
  L13_2 = L34_1
  L14_2 = L3_2 + L8_2
  L14_2 = L14_2 - L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[2] = L11_2
  L11_2 = {}
  L12_2 = L40_1
  L13_2 = L34_1
  L14_2 = L3_2 - L8_2
  L14_2 = L14_2 - L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[3] = L11_2
  L11_2 = {}
  L12_2 = L40_1
  L13_2 = L34_1
  L14_2 = L3_2 - L8_2
  L14_2 = L14_2 + L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[4] = L11_2
  L11_2 = L36_1
  L12_2 = 1
  L13_2 = #L10_2
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L10_2[L15_2]
    L16_2 = L16_2[1]
    if L16_2 then
      L16_2 = L34_1
      L17_2 = L10_2[L15_2]
      L17_2 = L17_2[2]
      L16_2 = L16_2 - L17_2
      L16_2 = #L16_2
      if L11_2 > L16_2 then
        L11_2 = L16_2
      end
    end
  end
  L12_2 = L36_1
  L12_2 = L11_2 / L12_2
  L2_2 = L2_2 * L12_2
  L12_2 = L34_1
  L12_2 = L12_2 + L2_2
  return L12_2
end
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = ipairs
  L1_2 = L39_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = L41_1
  L0_2 = L0_2()
  L1_2 = SetCamCoord
  L2_2 = cam
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = PointCamAtCoord
  L2_2 = cam
  L3_2 = L34_1.x
  L4_2 = L34_1.y
  L5_2 = L34_1.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetFocusPosAndVel
  L2_2 = L34_1.x
  L3_2 = L34_1.y
  L4_2 = L34_1.z
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L43_1 = _ENV
L44_1 = "StartOrbitCam"
function L45_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = cam
  if L3_2 then
    return
  end
  L3_2 = ClearFocus
  L3_2()
  if A1_2 then
    L33_1 = A1_2
    L35_1 = A0_2
    L3_2 = GetEntityCoords
    L4_2 = L33_1
    L3_2 = L3_2(L4_2)
    L4_2 = L35_1
    L3_2 = L3_2 + L4_2
    L34_1 = L3_2
  else
    L34_1 = A0_2
  end
  L3_2 = GetGameplayCamRot
  L4_2 = 2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.x
  L4_2 = -L4_2
  L37_1 = L4_2
  L4_2 = L3_2.z
  L4_2 = L4_2 - 90
  L38_1 = L4_2
  L4_2 = CreateCamWithParams
  L5_2 = "DEFAULT_SCRIPTED_CAMERA"
  L6_2 = L34_1.x
  L7_2 = L34_1.y
  L8_2 = L34_1.z
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = GetGameplayCamFov
  L12_2 = L12_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  cam = L4_2
  L4_2 = SetCamActive
  L5_2 = cam
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = RenderScriptCams
  L5_2 = true
  L6_2 = true
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = L24_1
  end
  L8_2 = true
  L9_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = SetCamNearClip
  L5_2 = cam
  L6_2 = 0.05
  L4_2(L5_2, L6_2)
  L4_2 = getDynamicRadius
  L5_2 = L33_1
  L6_2 = 3.0
  L7_2 = 10.0
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = {}
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  LastMinMaxRange = L6_2
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3
    while true do
      L0_3 = cam
      if nil == L0_3 then
        break
      end
      L0_3 = L42_1
      L0_3()
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L6_2(L7_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "EndOrbitCam"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = cam
  if nil == L1_2 then
    return
  end
  L1_2 = ClearFocus
  L1_2()
  L1_2 = RenderScriptCams
  L2_2 = false
  L3_2 = true
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = L24_1
  end
  L5_2 = true
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DestroyCam
  L2_2 = cam
  L3_2 = false
  L1_2(L2_2, L3_2)
  cam = nil
  L1_2 = nil
  L33_1 = L1_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "IsOrbitCamActive"
function L45_1()
  local L0_2, L1_2
  L0_2 = cam
  L0_2 = nil ~= L0_2
  return L0_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "IsEntityBeingTracked"
function L45_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L33_1
  end
  L1_2 = A0_2 == L1_2
  return L1_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "GetTrackedEntity"
function L45_1()
  local L0_2, L1_2
  L0_2 = L33_1
  return L0_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "isPointInAreaList"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 or not A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L6_2.radius
    if not L7_2 then
      L7_2 = 50.0
    end
    L8_2 = L6_2.coords
    if L8_2 then
      L8_2 = L6_2.coords
      L8_2 = A0_2 - L8_2
      L8_2 = #L8_2
      if L7_2 >= L8_2 then
        L8_2 = true
        L9_2 = L6_2
        L10_2 = L5_2
        return L8_2, L9_2, L10_2
      end
    end
  end
  L2_2 = false
  L3_2 = nil
  L4_2 = nil
  return L2_2, L3_2, L4_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "isPlayerInNoItemArea"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if not L0_2 or 0 == L0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = isPointInAreaList
  L3_2 = L1_2
  L4_2 = NoItemArea
  return L2_2(L3_2, L4_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "isPlayerInNoConstructionArea"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if not L0_2 or 0 == L0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = isPointInAreaList
  L3_2 = L1_2
  L4_2 = NoItemArea
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L5_2 = true
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = "no_item_area"
    return L5_2, L6_2, L7_2, L8_2
  end
  L5_2 = isPointInAreaList
  L6_2 = L1_2
  L7_2 = NoCostructionArea
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L8_2 = true
    L9_2 = L6_2
    L10_2 = L7_2
    L11_2 = "no_construction_area"
    return L8_2, L9_2, L10_2, L11_2
  end
  L8_2 = false
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  return L8_2, L9_2, L10_2, L11_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "CanBuildHere"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if not L1_2 or 0 == L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = isPointInAreaList
  L4_2 = L2_2
  L5_2 = NoItemArea
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    if A0_2 then
      L4_2 = CantPlaceHere
      L4_2()
    end
    L4_2 = false
    return L4_2
  end
  L4_2 = isPointInAreaList
  L5_2 = L2_2
  L6_2 = NoCostructionArea
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    if A0_2 then
      L5_2 = CantPlaceHere
      L5_2()
    end
    L5_2 = false
    return L5_2
  end
  L5_2 = true
  return L5_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "lastposeditor"
L45_1 = nil
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "ghost"
L45_1 = nil
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "outlineEnt"
L45_1 = nil
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "round2"
function L45_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2 * 100
  L2_2 = L2_2 + 0.5
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 / 100
  return L1_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "canonId"
function L45_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = tonumber
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2
    end
  end
  return L1_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "makeEntityFacePos"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetEntityHeading
  L8_2 = A0_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "makeEntityFaceEntity"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = GetEntityCoords
      L3_2 = A0_2
      L4_2 = true
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = GetEntityCoords
      L4_2 = A1_2
      L5_2 = true
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2.x
      L5_2 = L2_2.x
      L4_2 = L4_2 - L5_2
      L5_2 = L3_2.y
      L6_2 = L2_2.y
      L5_2 = L5_2 - L6_2
      L6_2 = GetHeadingFromVector_2d
      L7_2 = L4_2
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = SetEntityHeading
      L8_2 = A0_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "toModel"
function L45_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  else
    L1_2 = tonumber
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2 or A0_2
    if not L1_2 then
      A0_2 = 0
    end
  end
  return A0_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "EnumerateObjects"
function L45_1()
  local L0_2, L1_2
  L0_2 = coroutine
  L0_2 = L0_2.wrap
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = FindFirstObject
    L0_3, L1_3 = L0_3()
    if not L0_3 or -1 == L0_3 then
      return
    end
    L2_3 = true
    repeat
      L3_3 = coroutine
      L3_3 = L3_3.yield
      L4_3 = L1_3
      L3_3(L4_3)
      L3_3 = FindNextObject
      L4_3 = L0_3
      L3_3, L4_3 = L3_3(L4_3)
      L1_3 = L4_3
      L2_3 = L3_3
    until not L2_3
    L3_3 = EndFindObject
    L4_3 = L0_3
    L3_3(L4_3)
  end
  return L0_2(L1_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "purgeStateObjects"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 0
  L1_2 = EnumerateObjects
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = Entity
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.state
      L6_2 = L6_2.distPropsId
      if nil ~= L6_2 then
        L7_2 = SetEntityAsMissionEntity
        L8_2 = L5_2
        L9_2 = true
        L10_2 = true
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = DeleteEntity
        L8_2 = L5_2
        L7_2(L8_2)
        L0_2 = L0_2 + 1
      end
    end
  end
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "initOnce"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = 300.0
  L1_2 = GetGamePool
  L2_2 = "CPed"
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = IsPedAPlayer
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = PlayerPedId
        L8_2 = L8_2()
        if L7_2 ~= L8_2 then
          L8_2 = GetEntityCoords
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          L9_2 = GetEntityCoords
          L10_2 = PlayerPedId
          L10_2, L11_2 = L10_2()
          L9_2 = L9_2(L10_2, L11_2)
          L8_2 = L8_2 - L9_2
          L8_2 = #L8_2
          if L0_2 > L8_2 then
            L8_2 = 0
            while true do
              L9_2 = NetworkHasControlOfEntity
              L10_2 = L7_2
              L9_2 = L9_2(L10_2)
              if not (not L9_2 and L8_2 < 100) then
                break
              end
              L8_2 = L8_2 + 1
              L9_2 = NetworkRequestControlOfEntity
              L10_2 = L7_2
              L9_2(L10_2)
              L9_2 = Wait
              L10_2 = 0
              L9_2(L10_2)
            end
            if L8_2 < 100 then
              L9_2 = DoesEntityExist
              L10_2 = L7_2
              L9_2 = L9_2(L10_2)
              if L9_2 then
                L9_2 = NetworkRequestControlOfEntity
                L10_2 = L7_2
                L9_2(L10_2)
                L9_2 = SetEntityAsMissionEntity
                L10_2 = L7_2
                L11_2 = true
                L9_2(L10_2, L11_2)
                L9_2 = DeletePed
                L10_2 = L7_2
                L9_2(L10_2)
              end
            end
          end
        end
      end
    end
  end
  L2_2 = ClearAreaOfPeds
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L0_2
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = purgeStateObjects
  L2_2()
  L2_2 = onInit
  L2_2()
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "possoloadare"
L43_1[L44_1] = false
L43_1 = _ENV
L44_1 = "CreateThread"
L43_1 = L43_1[L44_1]
function L44_1()
  local L0_2, L1_2, L2_2
  possoloadare = true
  L0_2 = 0
  while true do
    L1_2 = NetworkIsSessionStarted
    L1_2 = L1_2()
    if L1_2 then
      break
    end
    L1_2 = 10000
    if not (L0_2 < L1_2) then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
    L0_2 = L0_2 + 100
  end
  L1_2 = initOnce
  L1_2()
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "distProps:reqFullPool"
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  possoloadare = false
end
L43_1(L44_1)
L43_1 = _ENV
L44_1 = "SPAWN_RADIUS"
L45_1 = 220.0
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "DESPAWN_RADIUS"
L45_1 = 250.0
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "spawnR2"
L45_1 = _ENV
L46_1 = "SPAWN_RADIUS"
L45_1 = L45_1[L46_1]
L46_1 = _ENV
L47_1 = "SPAWN_RADIUS"
L46_1 = L46_1[L47_1]
L45_1 = L45_1 * L46_1
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "despawnR2"
L45_1 = _ENV
L46_1 = "DESPAWN_RADIUS"
L45_1 = L45_1[L46_1]
L46_1 = _ENV
L47_1 = "DESPAWN_RADIUS"
L46_1 = L46_1[L47_1]
L45_1 = L45_1 * L46_1
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "MAX_ACTIVE"
L45_1 = 500
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "pool"
L45_1 = {}
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "active"
L45_1 = {}
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "byHandle"
L45_1 = {}
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "handler"
L45_1 = nil
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "handlerid"
L45_1 = nil
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "offsetz"
L43_1[L44_1] = 0.0
L43_1 = _ENV
L44_1 = "itemAttesa"
L45_1 = nil
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "itemNameSospeso"
L45_1 = nil
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "itemAttesaQT"
L43_1[L44_1] = 0
L43_1 = _ENV
L44_1 = "itemMetadata"
L45_1 = -1
L43_1[L44_1] = L45_1
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = joaat
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  ::lbl_14::
  if not L2_2 then
    L3_2 = print
    L4_2 = "INVALID MODEL VALUE | Pool ID: %s | Model: %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = tostring
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = A0_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if A1_2 then
      L3_2 = delprop
      L4_2 = A1_2
      L3_2(L4_2)
    end
    L3_2 = nil
    return L3_2
  end
  L3_2 = L17_1
  L3_2 = L3_2[L2_2]
  if false == L3_2 then
    if A1_2 then
      L3_2 = delprop
      L4_2 = A1_2
      L3_2(L4_2)
    end
    L3_2 = nil
    return L3_2
  end
  L3_2 = L17_1
  L3_2 = L3_2[L2_2]
  if nil == L3_2 then
    L3_2 = L17_1
    L4_2 = IsModelInCdimage
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = IsModelValid
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
    end
    L3_2[L2_2] = L4_2
    L3_2 = L17_1
    L3_2 = L3_2[L2_2]
    if not L3_2 then
      L3_2 = print
      L4_2 = "REMOVING MISSING MODEL | Pool ID: %s | Model: %s | Hash: %s"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = tostring
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      L7_2 = tostring
      L8_2 = A0_2
      L7_2 = L7_2(L8_2)
      L8_2 = tostring
      L9_2 = L2_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      if A1_2 then
        L3_2 = delprop
        L4_2 = A1_2
        L3_2(L4_2)
      end
      L3_2 = nil
      return L3_2
    end
  end
  L3_2 = HasModelLoaded
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return L2_2
  end
  L3_2 = RequestModel
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + 5000
  while true do
    L4_2 = HasModelLoaded
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    if not (L3_2 > L4_2) then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = HasModelLoaded
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = print
    L5_2 = "MODEL LOAD TIMEOUT | Pool ID: %s | Model: %s | Hash: %s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = tostring
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L8_2 = tostring
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L9_2 = tostring
    L10_2 = L2_2
    L9_2, L10_2 = L9_2(L10_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = nil
    return L4_2
  end
  return L2_2
end
L44_1 = _ENV
L45_1 = "place"
function L46_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = SetEntityCoordsNoOffset
  L8_2 = A0_2
  L9_2 = A1_2 + 0.0
  L10_2 = A2_2 + 0.0
  L11_2 = A3_2 + 0.0
  L12_2 = false
  L13_2 = false
  L14_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = SetEntityInvincible
  L8_2 = A0_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityCanBeDamaged
  L8_2 = A0_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = SetEntityVisible
    L1_3 = A0_2
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = Wait
    L1_3 = 25
    L0_3(L1_3)
    L0_3 = SetEntityRotation
    L1_3 = A0_2
    L2_3 = A4_2
    L2_3 = L2_3 + 0.0
    L3_3 = A5_2
    L3_3 = L3_3 + 0.0
    L4_3 = A6_2
    L4_3 = L4_3 + 0.0
    L5_3 = 2
    L6_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    L0_3 = Wait
    L1_3 = 1
    L0_3(L1_3)
    L0_3 = SetEntityVisible
    L1_3 = A0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L7_2(L8_2)
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "lastIDEditor"
L44_1[L45_1] = 0
L44_1 = _ENV
L45_1 = "moveOne"
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = active
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = print
    L4_2 = "Rec var not valid."
    L3_2(L4_2)
    return
  end
  if A1_2 then
    L3_2 = DoesEntityExist
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = AggrappaPesce
      L4_2 = GetEntityModel
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L5_2 = nil
      L6_2 = pool
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.item
      L7_2 = pool
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.amount
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = delprop
      L4_2 = A0_2
      L3_2(L4_2)
    end
  end
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "despawnOne"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = active
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L1_2.handle
  if L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = ipairs
      L4_2 = SpawnedPedProps
      L4_2 = L4_2[L2_2]
      if not L4_2 then
        L4_2 = {}
      end
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = DoesEntityExist
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = SetEntityAsMissionEntity
          L10_2 = L8_2
          L9_2(L10_2)
          L9_2 = DeleteEntity
          L10_2 = L8_2
          L9_2(L10_2)
        end
      end
      L3_2 = SpawnedPedProps
      L3_2[L2_2] = nil
      L3_2 = DeleteEntity
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = byHandle
      L3_2[L2_2] = nil
      L3_2 = L1_2.child
      if L3_2 then
        L3_2 = DoesEntityExist
        L4_2 = L1_2.child
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = DeleteObject
          L4_2 = L1_2.child
          L3_2(L4_2)
        end
      end
    end
  end
  L3_2 = TriggerEvent
  L4_2 = "animatedDoors:client:onPoolObjectDespawned"
  L5_2 = tostring
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = active
  L3_2[A0_2] = nil
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "joaat"
function L46_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetHashKey
  L2_2 = A0_2
  return L1_2(L2_2)
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "prepCollision"
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = SetEntityAsMissionEntity
  L3_2 = A0_2
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  if nil ~= A1_2 then
    L2_2 = FreezeEntityPosition
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = SetEntityCollision
  L3_2 = A0_2
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetEntityDynamic
  L3_2 = A0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityLoadCollisionFlag
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetHashKey
  L4_2 = "bzzz_prop_torch_fire001"
  L3_2 = L3_2(L4_2)
  if L2_2 == L3_2 then
    L2_2 = 0.04
    L3_2 = "des_farmhouse"
    L4_2 = "ent_ray_ch2_farm_fire_light"
    L5_2 = HasNamedPtfxAssetLoaded
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = RequestNamedPtfxAsset
      L6_2 = L3_2
      L5_2(L6_2)
      while true do
        L5_2 = HasNamedPtfxAssetLoaded
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          break
        end
        L5_2 = Wait
        L6_2 = 0
        L5_2(L6_2)
      end
    end
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      while true do
        L0_3 = DoesEntityExist
        L1_3 = A0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = UseParticleFxAssetNextCall
        L1_3 = L3_2
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 255
        L0_3(L1_3)
        L0_3 = SetParticleFxNonLoopedAlpha
        L1_3 = L2_2
        L0_3(L1_3)
        L0_3 = StartNetworkedParticleFxNonLoopedAtCoord
        L1_3 = L4_2
        L2_3 = 3561.353
        L3_3 = 7155.883
        L4_3 = 12.568
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 25.5
        L9_3 = false
        L10_3 = false
        L11_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
    end
    L5_2(L6_2)
  end
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "prepAsChild"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetEntityCollision
  L2_2 = A0_2
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityCompletelyDisableCollision
  if L1_2 then
    L1_2 = SetEntityCompletelyDisableCollision
    L2_2 = A0_2
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = SetCanClimbOnEntity
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "spawnComposite"
function L46_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = L43_1
  L4_2 = GetHashKey
  L5_2 = A2_2.proxy
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CreateObject
  L5_2 = L3_2
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L9_2 = false
  L10_2 = true
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_29
    end
  end
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = 0
  L6_2 = 0
  do return L5_2, L6_2 end
  ::lbl_29::
  L5_2 = prepCollision
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityAlpha
  L6_2 = L4_2
  L7_2 = 0
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityVisible
  L6_2 = L4_2
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityCollision
  L6_2 = L4_2
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Entity
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L6_2 = L5_2
  L5_2 = L5_2.set
  L7_2 = "distPropsId"
  L8_2 = A0_2.id
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Entity
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L6_2 = L5_2
  L5_2 = L5_2.set
  L7_2 = "distProxy"
  L8_2 = true
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = place
  L6_2 = L4_2
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L10_2 = A0_2.rx
  if not L10_2 then
    L10_2 = 0.0
  end
  L11_2 = A0_2.ry
  if not L11_2 then
    L11_2 = 0.0
  end
  L12_2 = A0_2.rz
  if not L12_2 then
    L12_2 = 0.0
  end
  L13_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = CreateObject
  L6_2 = A1_2
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L10_2 = false
  L11_2 = true
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if 0 ~= L5_2 then
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = prepAsChild
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = AttachEntityToEntity
      L7_2 = L5_2
      L8_2 = L4_2
      L9_2 = 0
      L10_2 = A2_2.offset
      L10_2 = L10_2.x
      L11_2 = A2_2.offset
      L11_2 = L11_2.y
      L12_2 = A2_2.offset
      L12_2 = L12_2.z
      L13_2 = A2_2.rot
      L13_2 = L13_2.x
      L14_2 = A2_2.rot
      L14_2 = L14_2.y
      L15_2 = A2_2.rot
      L15_2 = L15_2.z
      L16_2 = false
      L17_2 = false
      L18_2 = false
      L19_2 = false
      L20_2 = 2
      L21_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L6_2 = Entity
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.state
      L7_2 = L6_2
      L6_2 = L6_2.set
      L8_2 = "distPropsId"
      L9_2 = A0_2.id
      L10_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = Entity
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.state
      L7_2 = L6_2
      L6_2 = L6_2.set
      L8_2 = "distProxy"
      L9_2 = false
      L10_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = SetEntityVisible
      L7_2 = L5_2
      L8_2 = true
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = SetModelAsNoLongerNeeded
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "IsProxyByDecor"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DecorExistOn
  if L1_2 then
    L1_2 = DecorExistOn
    L2_2 = A0_2
    L3_2 = "distProxy"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = DecorGetBool
      L2_2 = A0_2
      L3_2 = "distProxy"
      L1_2 = L1_2(L2_2, L3_2)
    end
  end
  return L1_2
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "GetChildModelForProxy"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = byHandle
  if L1_2 then
    L1_2 = active
    if L1_2 then
      L1_2 = byHandle
      L1_2 = L1_2[A0_2]
      if L1_2 then
        L2_2 = active
        L2_2 = L2_2[L1_2]
        if L2_2 then
          L3_2 = L2_2.child
          if L3_2 then
            L3_2 = DoesEntityExist
            L4_2 = L2_2.child
            L3_2 = L3_2(L4_2)
            if L3_2 then
              L3_2 = GetEntityModel
              L4_2 = L2_2.child
              return L3_2(L4_2)
            end
          end
        end
      end
    end
  end
  function L1_2()
    local L0_3, L1_3
    L0_3 = coroutine
    L0_3 = L0_3.wrap
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = FindFirstObject
      L0_4, L1_4 = L0_4()
      if -1 == L0_4 then
        return
      end
      L2_4 = true
      repeat
        L3_4 = coroutine
        L3_4 = L3_4.yield
        L4_4 = L1_4
        L3_4(L4_4)
        L3_4 = FindNextObject
        L4_4 = L0_4
        L3_4, L4_4 = L3_4(L4_4)
        L1_4 = L4_4
        L2_4 = L3_4
      until not L2_4
      L3_4 = EndFindObject
      L4_4 = L0_4
      L3_4(L4_4)
    end
    return L0_3(L1_3)
  end
  EnumerateObjects = L1_2
  L1_2 = EnumerateObjects
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = IsEntityAttachedToEntity
      L7_2 = L5_2
      L8_2 = A0_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = IsProxyByDecor
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = GetEntityModel
          L7_2 = L5_2
          L6_2, L7_2, L8_2 = L6_2(L7_2)
          return L6_2, L7_2, L8_2
        end
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "IsModelBig"
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = 0.5
  end
  L2_2 = GetModelDimensions
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = L3_2.z
  L7_2 = L2_2.z
  L6_2 = L6_2 - L7_2
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = A1_2 < L7_2
  L9_2 = L7_2
  return L8_2, L9_2
end
L44_1[L45_1] = L46_1
function L44_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  if A1_2 then
    L2_2 = A1_2.dict
    if L2_2 then
      L2_2 = A1_2.name
      if L2_2 then
        goto lbl_20
      end
    end
  end
  do return end
  ::lbl_20::
  L2_2 = faiAnimPool
  L3_2 = A1_2.dict
  L4_2 = A1_2.name
  L5_2 = -1
  L6_2 = A1_2.flag
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  if A1_2 then
    L2_2 = #A1_2
    if not (L2_2 <= 0) then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.model
    if L8_2 then
      L9_2 = RequestModelStriano
      L10_2 = L8_2
      L9_2(L10_2)
      L9_2 = GetEntityCoords
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      L10_2 = CreateObject
      L11_2 = GetHashKey
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      L12_2 = L9_2.x
      L13_2 = L9_2.y
      L14_2 = L9_2.z
      L14_2 = L14_2 + 0.2
      L15_2 = false
      L16_2 = false
      L17_2 = false
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = Wait
      L12_2 = 25
      L11_2(L12_2)
      L11_2 = AttachEntityToEntity
      L12_2 = L10_2
      L13_2 = A0_2
      L14_2 = GetPedBoneIndex
      L15_2 = A0_2
      L16_2 = L7_2.bone
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = L7_2.off
      L15_2 = L15_2.x
      L16_2 = L7_2.off
      L16_2 = L16_2.y
      L17_2 = L7_2.off
      L17_2 = L17_2.z
      L18_2 = L7_2.rot
      L18_2 = L18_2.x
      L19_2 = L7_2.rot
      L19_2 = L19_2.y
      L20_2 = L7_2.rot
      L20_2 = L20_2.z
      L21_2 = true
      L22_2 = true
      L23_2 = false
      L24_2 = true
      L25_2 = 1
      L26_2 = true
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L11_2 = SpawnedPedProps
      L12_2 = SpawnedPedProps
      L12_2 = L12_2[A0_2]
      if not L12_2 then
        L12_2 = {}
      end
      L11_2[A0_2] = L12_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = SpawnedPedProps
      L12_2 = L12_2[A0_2]
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
      L11_2 = SetModelAsNoLongerNeeded
      L12_2 = GetHashKey
      L13_2 = L8_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L12_2(L13_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    end
  end
end
L46_1 = RegisterCommand
L47_1 = "clearhashPool"
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = 0
  L4_2 = pairs
  L5_2 = pool
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.model
    L11_2 = nil
    L12_2 = type
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    if "number" == L12_2 then
      L11_2 = L10_2
    else
      L12_2 = type
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      if "string" == L12_2 then
        L12_2 = joaat
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L11_2 = L12_2
      end
    end
    if L11_2 == L2_2 then
      L12_2 = delprop
      L13_2 = L8_2
      L12_2(L13_2)
      L3_2 = L3_2 + 1
    end
  end
  L4_2 = ExecuteCommand
  L5_2 = "prova3 Removed %d props with hash %d."
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L3_2
  L8_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L46_1(L47_1, L48_1)
L46_1 = {}
L47_1 = RegisterCommand
L48_1 = "clearNotExistProps"
function L49_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = next
  L1_2 = L46_1
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "prova3 Table is empty."
    L0_2(L1_2)
    return
  end
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L46_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = delprop
    L7_2 = L5_2
    L6_2(L7_2)
    L0_2 = L0_2 + 1
  end
  L1_2 = {}
  L46_1 = L1_2
  L1_2 = ExecuteCommand
  L2_2 = "prova3 "
  L3_2 = L0_2
  L4_2 = " props cleared from pool list!"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
end
L47_1(L48_1, L49_1)
L47_1 = _ENV
L48_1 = "spawnOne"
function L49_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = active
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = active
    L3_2 = A0_2.id
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.handle
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
  end
  L1_2 = L43_1
  L2_2 = A0_2.model
  L3_2 = A0_2.id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2.z
  L3_2 = 500
  if L2_2 > L3_2 then
    L2_2 = print
    L3_2 = "PROP TOO HEIGHT ON AXES Z! DELETED FROM DB!"
    L2_2(L3_2)
    L2_2 = delprop
    L3_2 = A0_2.id
    L2_2(L3_2)
    L2_2 = SetModelAsNoLongerNeeded
    L3_2 = L1_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2.isPed
  L2_2 = true == L2_2
  if L2_2 then
    L3_2 = CreatePed
    L4_2 = 4
    L5_2 = L1_2
    L6_2 = A0_2.x
    L6_2 = L6_2 + 0.0
    L7_2 = A0_2.y
    L7_2 = L7_2 + 0.0
    L8_2 = A0_2.z
    L8_2 = L8_2 + 0.0
    L9_2 = A0_2.rz
    if not L9_2 then
      L9_2 = 0.0
    end
    L9_2 = L9_2 - 1.0
    L10_2 = false
    L11_2 = true
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = 0
    while 0 ~= L3_2 do
      L5_2 = DoesEntityExist
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if not (not L5_2 and L4_2 < 100) then
        break
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
      L4_2 = L4_2 + 1
    end
    if 0 ~= L3_2 then
      L5_2 = DoesEntityExist
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = SetPedAoBlobRendering
        L6_2 = L3_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = SetEntityLodDist
        L6_2 = L3_2
        L7_2 = 65535
        L5_2(L6_2, L7_2)
        L5_2 = SetEntityAsMissionEntity
        L6_2 = L3_2
        L7_2 = true
        L8_2 = true
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = SetBlockingOfNonTemporaryEvents
        L6_2 = L3_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = SetPedCanRagdoll
        L6_2 = L3_2
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = SetPedCanRagdollFromPlayerImpact
        L6_2 = L3_2
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = SetPedFleeAttributes
        L6_2 = L3_2
        L7_2 = 0
        L8_2 = false
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = SetPedDropsWeaponsWhenDead
        L6_2 = L3_2
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = SetPedDiesWhenInjured
        L6_2 = L3_2
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = SetEntityInvincible
        L6_2 = L3_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = SetPedCanBeTargetted
        L6_2 = L3_2
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = SetEntityAlpha
        L6_2 = L3_2
        L7_2 = 254
        L8_2 = false
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = SetEntityCollision
        L6_2 = L3_2
        L7_2 = false
        L8_2 = false
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = SetPedCanLegIk
        L6_2 = L3_2
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = SetPedDefaultComponentVariation
        L6_2 = L3_2
        L5_2(L6_2)
        L5_2 = Entity
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.state
        L6_2 = L5_2
        L5_2 = L5_2.set
        L7_2 = "distPropsId"
        L8_2 = A0_2.id
        L9_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = Entity
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.state
        L6_2 = L5_2
        L5_2 = L5_2.set
        L7_2 = "distProxy"
        L8_2 = false
        L9_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = place
        L6_2 = L3_2
        L7_2 = A0_2.x
        L8_2 = A0_2.y
        L9_2 = A0_2.z
        L10_2 = A0_2.rx
        if not L10_2 then
          L10_2 = 0.0
        end
        L11_2 = A0_2.ry
        if not L11_2 then
          L11_2 = 0.0
        end
        L12_2 = A0_2.rz
        if not L12_2 then
          L12_2 = 0.0
        end
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L5_2 = FreezeEntityPosition
        L6_2 = L3_2
        L7_2 = A0_2.frozen
        L7_2 = true == L7_2
        L5_2(L6_2, L7_2)
        L5_2 = active
        L6_2 = A0_2.id
        L7_2 = {}
        L7_2.handle = L3_2
        L7_2.modelHash = L1_2
        L7_2.isPed = true
        L5_2[L6_2] = L7_2
        L5_2 = byHandle
        L6_2 = A0_2.id
        L5_2[L3_2] = L6_2
        L5_2 = Wait
        L6_2 = 25
        L5_2(L6_2)
        L5_2 = L44_1
        L6_2 = L3_2
        L7_2 = A0_2.anim
        L5_2(L6_2, L7_2)
        L5_2 = A0_2.props
        if nil ~= L5_2 then
          L5_2 = L45_1
          L6_2 = L3_2
          L7_2 = A0_2.props
          L5_2(L6_2, L7_2)
        end
      end
    end
    L5_2 = SetModelAsNoLongerNeeded
    L6_2 = L1_2
    L5_2(L6_2)
    return
  end
  L3_2 = PROXY_MAP
  L3_2 = L3_2[L1_2]
  L4_2 = IsModelBig
  L5_2 = A0_2.model
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = PROXY_MAP
    L5_2 = joaat
    L6_2 = "w_sb_microsmg"
    L5_2 = L5_2(L6_2)
    L3_2 = L4_2[L5_2]
  end
  if L3_2 then
    L4_2 = spawnComposite
    L5_2 = A0_2
    L6_2 = L1_2
    L7_2 = L3_2
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
    if 0 ~= L4_2 then
      L6_2 = DoesEntityExist
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = active
        L7_2 = A0_2.id
        L8_2 = {}
        L8_2.handle = L4_2
        L8_2.child = L5_2
        L8_2.modelHash = L1_2
        L9_2 = GetEntityModel
        L10_2 = L4_2
        L9_2 = L9_2(L10_2)
        L8_2.proxy = L9_2
        L8_2.isPed = false
        L6_2[L7_2] = L8_2
        L6_2 = byHandle
        L7_2 = A0_2.id
        L6_2[L4_2] = L7_2
        if 0 ~= L5_2 then
          L6_2 = byHandle
          L7_2 = A0_2.id
          L6_2[L5_2] = L7_2
        end
      end
    end
    L6_2 = SetModelAsNoLongerNeeded
    L7_2 = L1_2
    L6_2(L7_2)
    return
  end
  L4_2 = 0
  L5_2 = 1
  L6_2 = 3
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = CreateObject
    L10_2 = L1_2
    L11_2 = A0_2.x
    L12_2 = A0_2.y
    L13_2 = A0_2.z
    L14_2 = false
    L15_2 = true
    L16_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L4_2 = L9_2
    if 0 ~= L4_2 then
      L9_2 = DoesEntityExist
      L10_2 = L4_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  if 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = prepCollision
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = Entity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.state
      L6_2 = L5_2
      L5_2 = L5_2.set
      L7_2 = "distPropsId"
      L8_2 = A0_2.id
      L9_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = Entity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.state
      L6_2 = L5_2
      L5_2 = L5_2.set
      L7_2 = "distProxy"
      L8_2 = false
      L9_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = place
      L6_2 = L4_2
      L7_2 = A0_2.x
      L8_2 = A0_2.y
      L9_2 = A0_2.z
      L10_2 = A0_2.rx
      if not L10_2 then
        L10_2 = 0.0
      end
      L11_2 = A0_2.ry
      if not L11_2 then
        L11_2 = 0.0
      end
      L12_2 = A0_2.rz
      if not L12_2 then
        L12_2 = 0.0
      end
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2 = TriggerEvent
      L6_2 = "animatedDoors:client:applyInstantState"
      L7_2 = tostring
      L8_2 = A0_2.id
      L7_2 = L7_2(L8_2)
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = active
      L6_2 = A0_2.id
      L7_2 = {}
      L7_2.handle = L4_2
      L7_2.modelHash = L1_2
      L7_2.isPed = false
      L7_2.isBig = false
      L5_2[L6_2] = L7_2
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = PesciPresi
      L7_2 = {}
      L7_2.o = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = byHandle
      L6_2 = A0_2.id
      L5_2[L4_2] = L6_2
      L5_2 = TriggerEvent
      L6_2 = "animatedDoors:client:onPoolObjectSpawned"
      L7_2 = tostring
      L8_2 = A0_2.id
      L7_2 = L7_2(L8_2)
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = GetModelDimensions
      L6_2 = GetEntityModel
      L7_2 = L4_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2(L7_2)
      L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L7_2 = L6_2 - L5_2
      L8_2 = math
      L8_2 = L8_2.max
      L9_2 = L7_2.x
      L10_2 = L7_2.y
      L11_2 = L7_2.z
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = 0.5
      if not (L8_2 < L9_2) then
        L9_2 = GetEntityModel
        L10_2 = L4_2
        L9_2 = L9_2(L10_2)
        L10_2 = GetHashKey
        L11_2 = "striano_eteris"
        L10_2 = L10_2(L11_2)
        if L9_2 ~= L10_2 then
          L9_2 = GetEntityModel
          L10_2 = L4_2
          L9_2 = L9_2(L10_2)
          L10_2 = GetHashKey
          L11_2 = "striano_eteris_2"
          L10_2 = L10_2(L11_2)
          if L9_2 ~= L10_2 then
            goto lbl_423
          end
        end
      end
      L9_2 = SetEntityCollision
      L10_2 = L4_2
      L11_2 = false
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = SetEntityCompletelyDisableCollision
      L10_2 = L4_2
      L11_2 = false
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      goto lbl_429
      ::lbl_423::
      if L8_2 > 5.0 then
        L9_2 = SetEntityLodDist
        L10_2 = L4_2
        L11_2 = 65535
        L9_2(L10_2, L11_2)
      end
      ::lbl_429::
      if L8_2 > 20.0 then
        L9_2 = active
        L10_2 = A0_2.id
        L9_2 = L9_2[L10_2]
        L9_2.isBig = true
        L9_2 = DEBUG_RAYCAST
        if L9_2 then
          L9_2 = SetEntityDrawOutline
          L10_2 = L4_2
          L11_2 = true
          L9_2(L10_2, L11_2)
          L9_2 = SetEntityDrawOutlineColor
          L10_2 = 255
          L11_2 = 255
          L12_2 = 0
          L13_2 = 255
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
      end
  end
  else
    L6_2 = A0_2.id
    L5_2 = L46_1
    L5_2[L6_2] = true
    L5_2 = print
    L6_2 = "Prop ID: "
    L7_2 = tostring
    L8_2 = A0_2.id
    L7_2 = L7_2(L8_2)
    L8_2 = " failed creation after 3 attempts. Stored for deletion."
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
  end
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = L1_2
  L5_2(L6_2)
end
L47_1[L48_1] = L49_1
L47_1 = _ENV
L48_1 = "playerPos"
function L49_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.x
  L3_2 = L1_2.y
  L4_2 = L1_2.z
  return L2_2, L3_2, L4_2
end
L47_1[L48_1] = L49_1
L47_1 = _ENV
L48_1 = "dist2"
function L49_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2 - A3_2
  L7_2 = A1_2 - A4_2
  L8_2 = A2_2 - A5_2
  L9_2 = L6_2 * L6_2
  L10_2 = L7_2 * L7_2
  L9_2 = L9_2 + L10_2
  L10_2 = L8_2 * L8_2
  L9_2 = L9_2 + L10_2
  return L9_2
end
L47_1[L48_1] = L49_1
L47_1 = _ENV
L48_1 = "getPoolIdFromEntity"
function L49_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L1_2 = pairs
  L2_2 = active
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2.handle
      if L7_2 == A0_2 then
        L7_2 = byHandle
        L7_2[A0_2] = L5_2
        return L5_2
      end
      L7_2 = L6_2.child
      if L7_2 then
        L7_2 = L6_2.child
        if 0 ~= L7_2 then
          L7_2 = L6_2.child
          if L7_2 == A0_2 then
            L7_2 = byHandle
            L7_2[A0_2] = L5_2
            return L5_2
          end
        end
      end
    end
  end
  L1_2 = byHandle
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = pool
    L2_2 = L2_2[L1_2]
    if L2_2 then
      return L1_2
    end
  end
  if L1_2 then
    L2_2 = byHandle
    L2_2[A0_2] = nil
  end
  L2_2 = Entity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.distPropsId
  if L2_2 then
    L3_2 = tonumber
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2 or L2_2
    if not L3_2 then
    end
    L3_2 = pool
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = byHandle
      L3_2[A0_2] = L2_2
      return L2_2
    end
  end
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = 1.0
  L7_2 = pairs
  L8_2 = active
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 then
      L13_2 = L12_2.child
      if L13_2 then
        L13_2 = L12_2.child
        if 0 ~= L13_2 then
          L13_2 = DoesEntityExist
          L14_2 = L12_2.child
          L13_2 = L13_2(L14_2)
          if L13_2 then
            L13_2 = GetEntityModel
            L14_2 = L12_2.child
            L13_2 = L13_2(L14_2)
            if L13_2 == L3_2 then
              L13_2 = GetEntityCoords
              L14_2 = L12_2.child
              L13_2 = L13_2(L14_2)
              L14_2 = L4_2 - L13_2
              L14_2 = #L14_2
              if L6_2 > L14_2 then
                L6_2 = L14_2
                L5_2 = L11_2
              end
            end
          end
        end
      end
    end
  end
  if L5_2 then
    L7_2 = byHandle
    L7_2[A0_2] = L5_2
    L7_2 = print
    L8_2 = "^2[POOL CHILD FALLBACK]^7"
    L9_2 = "ENT:"
    L10_2 = A0_2
    L11_2 = "ID:"
    L12_2 = L5_2
    L13_2 = "DIST:"
    L14_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return L5_2
  end
  L7_2 = nil
  L8_2 = 1.0
  L9_2 = pairs
  L10_2 = pool
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    if L14_2 then
      L15_2 = tonumber
      L16_2 = L14_2.model
      L15_2 = L15_2(L16_2)
      L16_2 = tonumber
      L17_2 = L3_2
      L16_2 = L16_2(L17_2)
      if L15_2 == L16_2 then
        L15_2 = L14_2.x
        if L15_2 then
          L15_2 = L14_2.y
          if L15_2 then
            L15_2 = L14_2.z
            if L15_2 then
              L15_2 = vector3
              L16_2 = tonumber
              L17_2 = L14_2.x
              L16_2 = L16_2(L17_2)
              L17_2 = tonumber
              L18_2 = L14_2.y
              L17_2 = L17_2(L18_2)
              L18_2 = tonumber
              L19_2 = L14_2.z
              L18_2, L19_2 = L18_2(L19_2)
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
              L16_2 = L4_2 - L15_2
              L16_2 = #L16_2
              if L8_2 > L16_2 then
                L8_2 = L16_2
                L7_2 = L13_2
              end
            end
          end
        end
      end
    end
  end
  if L7_2 then
    L9_2 = byHandle
    L9_2[A0_2] = L7_2
    L9_2 = print
    L10_2 = "^2[POOL POSITION FALLBACK]^7"
    L11_2 = "ENT:"
    L12_2 = A0_2
    L13_2 = "ID:"
    L14_2 = L7_2
    L15_2 = "DIST:"
    L16_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    return L7_2
  end
  L9_2 = nil
  return L9_2
end
L47_1[L48_1] = L49_1
L47_1 = 8
L48_1 = 150
L49_1 = 500
function L50_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L7_2 = L7_2.obj
    L7_2 = L7_2.model
    if not L7_2 then
      L7_2 = A0_2[L6_2]
      L7_2 = L7_2.obj
      L7_2 = L7_2.m
    end
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "string" == L8_2 then
      L8_2 = joaat
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2 or L7_2
      if not L8_2 then
      end
    end
    if L7_2 then
      L8_2 = L2_2[L7_2]
      if not L8_2 then
        L8_2 = HasModelLoaded
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          L2_2[L7_2] = true
          L8_2 = RequestModel
          L9_2 = L7_2
          L8_2(L9_2)
        end
      end
    end
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + 3000
  while true do
    L4_2 = next
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    if not (L3_2 > L4_2) then
      break
    end
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2 in L4_2, L5_2, L6_2, L7_2 do
      L9_2 = HasModelLoaded
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L2_2[L8_2] = nil
      end
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
end
L51_1 = _ENV
L52_1 = "CreateThread"
L51_1 = L51_1[L52_1]
function L52_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = Wait
  L1_2 = 1500
  L0_2(L1_2)
  L0_2 = L18_1
  L0_2()
  while true do
    L0_2 = playerPos
    L0_2, L1_2, L2_2 = L0_2()
    L3_2 = false
    L4_2 = pairs
    L5_2 = active
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2 in L4_2, L5_2, L6_2, L7_2 do
      L9_2 = pool
      L9_2 = L9_2[L8_2]
      if L9_2 then
        L10_2 = dist2
        L11_2 = L0_2
        L12_2 = L1_2
        L13_2 = L2_2
        L14_2 = L9_2.x
        L15_2 = L9_2.y
        L16_2 = L9_2.z
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L11_2 = despawnR2
        if L10_2 > L11_2 then
          L11_2 = active
          L12_2 = L9_2.id
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.isBig
          if not L11_2 then
            L11_2 = despawnOne
            L12_2 = L8_2
            L11_2(L12_2)
          end
        end
      end
    end
    L4_2 = 0
    L5_2 = pairs
    L6_2 = active
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2 in L5_2, L6_2, L7_2, L8_2 do
      L4_2 = L4_2 + 1
    end
    L5_2 = MAX_ACTIVE
    if L4_2 < L5_2 then
      L5_2 = {}
      L6_2 = pairs
      L7_2 = pool
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = active
        L12_2 = L12_2[L10_2]
        if not L12_2 then
          L12_2 = dist2
          L13_2 = L0_2
          L14_2 = L1_2
          L15_2 = L2_2
          L16_2 = L11_2.x
          L17_2 = L11_2.y
          L18_2 = L11_2.z
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
          L13_2 = spawnR2
          if L12_2 <= L13_2 then
            L13_2 = #L5_2
            L13_2 = L13_2 + 1
            L14_2 = {}
            L14_2.id = L10_2
            L14_2.obj = L11_2
            L14_2.d2 = L12_2
            L5_2[L13_2] = L14_2
          end
        end
      end
      L6_2 = table
      L6_2 = L6_2.sort
      L7_2 = L5_2
      function L8_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.d2
        L3_3 = A1_3.d2
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      L6_2(L7_2, L8_2)
      L6_2 = MAX_ACTIVE
      L6_2 = L6_2 - L4_2
      L7_2 = math
      L7_2 = L7_2.min
      L8_2 = L6_2
      L9_2 = #L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L50_1
      L9_2 = L5_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = 1
      L9_2 = L7_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = spawnOne
        L13_2 = L5_2[L11_2]
        L13_2 = L13_2.obj
        L12_2(L13_2)
        L3_2 = true
        L12_2 = L47_1
        L12_2 = L11_2 % L12_2
        if 0 == L12_2 then
          L12_2 = Wait
          L13_2 = 0
          L12_2(L13_2)
        end
      end
    end
    L5_2 = Wait
    if L3_2 then
      L6_2 = L48_1
      if L6_2 then
        goto lbl_128
      end
    end
    L6_2 = L49_1
    ::lbl_128::
    L5_2(L6_2)
  end
end
L51_1(L52_1)
L51_1 = RegisterNetEvent
L52_1 = "distProps:fullPool"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = canonId
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = canonId
      L9_2 = L7_2 or L9_2
      if L7_2 then
        L9_2 = L7_2.id
      end
      L8_2 = L8_2(L9_2)
    end
    if L8_2 then
      L7_2.id = L8_2
      L9_2 = tonumber
      L10_2 = L7_2.amount
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = 0
      end
      L7_2.amount = L9_2
      L9_2 = L7_2.owner
      if not L9_2 then
        L9_2 = "Sconosciuto"
      end
      L7_2.owner = L9_2
      L9_2 = L7_2.metadata
      if not L9_2 then
        L9_2 = -1
      end
      L7_2.metadata = L9_2
      L9_2 = L7_2.isPed
      if not L9_2 then
        L9_2 = nil
      end
      L7_2.isPed = L9_2
      L9_2 = L7_2.anim
      if not L9_2 then
        L9_2 = nil
      end
      L7_2.anim = L9_2
      L1_2[L8_2] = L7_2
    end
  end
  L2_2 = pairs
  L3_2 = active
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    if not L7_2 then
      L7_2 = despawnOne
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  pool = L1_2
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "distProps:poolAdd"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = canonId
  L2_2 = A0_2 or L2_2
  if A0_2 then
    L2_2 = A0_2.id
  end
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  A0_2.id = L1_2
  L2_2 = tonumber
  L3_2 = A0_2.amount
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  A0_2.amount = L2_2
  L2_2 = A0_2.owner
  if not L2_2 then
    L2_2 = "Sconosciuto"
  end
  A0_2.owner = L2_2
  L2_2 = A0_2.metadata
  if not L2_2 then
    L2_2 = -1
  end
  A0_2.metadata = L2_2
  L2_2 = pool
  L2_2[L1_2] = A0_2
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "distProps:poolRemove"
function L53_1(A0_2)
  local L1_2, L2_2
  L1_2 = canonId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = pool
  L1_2[A0_2] = nil
  L1_2 = despawnOne
  L2_2 = A0_2
  L1_2(L2_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "distProps:poolHide"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = canonId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = active
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = L2_2.handle
  if L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L4_2 = SetEntityVisible
  L5_2 = L3_2
  L6_2 = not A1_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "distProps:updateAmount"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = canonId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = pool
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = pool
    L2_2 = L2_2[A0_2]
    L3_2 = tonumber
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = 1
    end
    L2_2.amount = L3_2
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "distProps:updateOwner"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = canonId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = pool
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = pool
    L2_2 = L2_2[A0_2]
    L3_2 = A1_2 or L3_2
    if not A1_2 then
      L3_2 = "Sconosciuto"
    end
    L2_2.owner = L3_2
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "distProps:update"
function L53_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L8_2 = canonId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  A0_2 = L8_2
  L8_2 = pool
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = pool
    L8_2 = L8_2[A0_2]
    L9_2 = pool
    L9_2 = L9_2[A0_2]
    L10_2 = pool
    L10_2 = L10_2[A0_2]
    L11_2 = A1_2
    L12_2 = A2_2
    L10_2.z = A3_2
    L9_2.y = L12_2
    L8_2.x = L11_2
    L8_2 = pool
    L8_2 = L8_2[A0_2]
    L9_2 = pool
    L9_2 = L9_2[A0_2]
    L10_2 = pool
    L10_2 = L10_2[A0_2]
    L11_2 = A4_2
    L12_2 = A5_2
    L10_2.rz = A6_2
    L9_2.ry = L12_2
    L8_2.rx = L11_2
    L8_2 = pool
    L8_2 = L8_2[A0_2]
    L8_2.frozen = A7_2
  end
  L8_2 = active
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L9_2 = DoesEntityExist
    L10_2 = L8_2.handle
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = FreezeEntityPosition
      L10_2 = L8_2.handle
      L11_2 = false
      L9_2(L10_2, L11_2)
      L9_2 = SetEntityCoordsNoOffset
      L10_2 = L8_2.handle
      L11_2 = A1_2
      L12_2 = A2_2
      L13_2 = A3_2
      L14_2 = false
      L15_2 = false
      L16_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2 = SetEntityRotation
      L10_2 = L8_2.handle
      L11_2 = A4_2
      L12_2 = A5_2
      L13_2 = A6_2
      L14_2 = 2
      L15_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2 = FreezeEntityPosition
      L10_2 = L8_2.handle
      if A7_2 then
        L11_2 = true
        if L11_2 then
          goto lbl_72
        end
      end
      L11_2 = false
      ::lbl_72::
      L9_2(L10_2, L11_2)
    end
  end
end
L51_1(L52_1, L53_1)
L51_1 = AddEventHandler
L52_1 = "onClientResourceStart"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = SetEntityCoords
  L4_2 = L1_2
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L7_2 = L7_2 + 0.5
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "RotationToDirection"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "RayCastGamePlayCameraFF"
function L53_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = GetGameplayCamRot
  L4_2 = 2
  L3_2 = L3_2(L4_2)
  L4_2 = GetGameplayCamCoord
  L4_2 = L4_2()
  L5_2 = RotationToDirection
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = vector3
  L7_2 = L4_2.x
  L8_2 = L5_2.x
  L8_2 = L8_2 * A0_2
  L7_2 = L7_2 + L8_2
  L8_2 = L4_2.y
  L9_2 = L5_2.y
  L9_2 = L9_2 * A0_2
  L8_2 = L8_2 + L9_2
  L9_2 = L4_2.z
  L10_2 = L5_2.z
  L10_2 = L10_2 * A0_2
  L9_2 = L9_2 + L10_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not A1_2 then
    A1_2 = 511
  end
  if not A2_2 then
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    A2_2 = L7_2
  end
  L7_2 = _ENV
  L8_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L7_2 = L7_2[L8_2]
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L11_2 = L6_2.x
  L12_2 = L6_2.y
  L13_2 = L6_2.z
  L14_2 = A1_2
  L15_2 = A2_2
  L16_2 = 7
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = GetShapeTestResult
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  L13_2 = 1 == L9_2
  L14_2 = L10_2
  L15_2 = L12_2
  L16_2 = L11_2
  return L13_2, L14_2, L15_2, L16_2
end
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "eInteractPos"
L53_1 = nil
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "exports"
L51_1 = L51_1[L52_1]
L52_1 = "eInteractPos"
function L53_1()
  local L0_2, L1_2
  L0_2 = eInteractPos
  return L0_2
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "entScelta"
L53_1 = nil
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "exports"
L51_1 = L51_1[L52_1]
L52_1 = "entScelta"
function L53_1()
  local L0_2, L1_2
  L0_2 = entScelta
  return L0_2
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "exports"
L51_1 = L51_1[L52_1]
L52_1 = "editorattivo"
function L53_1()
  local L0_2, L1_2
  L0_2 = ghost
  if nil == L0_2 then
    L0_2 = ent
    if nil == L0_2 then
      goto lbl_10
    end
  end
  L0_2 = true
  do return L0_2 end
  goto lbl_12
  ::lbl_10::
  L0_2 = false
  do return L0_2 end
  ::lbl_12::
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "delprop"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "distProps:delById"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = print
  L2_2 = "delprop "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "iszbassa"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetPedBoneIndex
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 12844
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetEntityBonePosition_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.z
  L5_2 = L3_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = 1.5
  if L4_2 > L5_2 then
    L4_2 = true
    return L4_2
  else
    L4_2 = false
    return L4_2
  end
end
L51_1[L52_1] = L53_1
L51_1 = RegisterNetEvent
L52_1 = "distProps:despawnAll"
function L53_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = active
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.child
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.child
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteObject
        L7_2 = L5_2.child
        L6_2(L7_2)
      end
    end
    L6_2 = L5_2.handle
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.handle
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteObject
        L7_2 = L5_2.handle
        L6_2(L7_2)
      end
    end
  end
  L0_2 = {}
  active = L0_2
  L0_2 = {}
  byHandle = L0_2
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "spawnEditorEvent"
L51_1(L52_1)
L51_1 = AddEventHandler
L52_1 = "spawnEditorEvent"
function L53_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CanBuildHere
  L4_2 = true
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if nil == A0_2 then
    A0_2 = "v_ind_meatboxsml_02"
  end
  itemAttesa = A0_2
  itemAttesaQT = A1_2
  if nil ~= A2_2 then
    itemNameSospeso = A2_2
  end
  L3_2 = spawnEditor
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "exports"
L51_1 = L51_1[L52_1]
L52_1 = "inghost"
function L53_1()
  local L0_2, L1_2
  L0_2 = ghost
  return L0_2
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "he"
L53_1 = nil
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "TipoEditor"
L53_1 = true
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "speedvar"
L53_1 = 0.5
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "lastPostPG"
L53_1 = nil
L51_1[L52_1] = L53_1
L51_1 = 0.0
L52_1 = 0.0
L53_1 = 0.0
L54_1 = 0
L55_1 = 0
L56_1 = 0
L57_1 = 0.0
L58_1 = 0.0
L59_1 = 0.0
L60_1 = 0.0
L61_1 = 0.0
L62_1 = 0.0
L63_1 = _ENV
L64_1 = "lastEntMove"
L65_1 = nil
L63_1[L64_1] = L65_1
L63_1 = _ENV
L64_1 = "lastMovePos"
L65_1 = nil
L63_1[L64_1] = L65_1
L63_1 = _ENV
L64_1 = "lastMoveRot"
L65_1 = nil
L63_1[L64_1] = L65_1
L63_1 = _ENV
L64_1 = "getObjectSize"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetModelDimensions
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L2_2 - L1_2
  return L3_2
end
L63_1[L64_1] = L65_1
L63_1 = _ENV
L64_1 = "getDynamicMaxDistance"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = getObjectSize
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2 * 0.5
  L5_2 = L4_2 * 2
  L5_2 = A1_2 + L5_2
  return L5_2
end
L63_1[L64_1] = L65_1
L63_1 = _ENV
L64_1 = "doorCreator"
L65_1 = 1
L63_1[L64_1] = L65_1
L63_1 = _ENV
L64_1 = "PendingDoorCreate"
L65_1 = {}
L63_1[L64_1] = L65_1
L63_1 = RegisterNetEvent
L64_1 = "placer:poolCreated"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = doorCreator
  if L1_2 <= 1 then
    return
  end
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "animatedDoors:server:createDoor"
  L3_2 = {}
  L3_2.poolId = A0_2
  L4_2 = PendingDoorCreate
  L4_2 = L4_2.pos1
  L3_2.pos1 = L4_2
  L4_2 = PendingDoorCreate
  L4_2 = L4_2.pos2
  L3_2.pos2 = L4_2
  L3_2.state = "closed"
  L4_2 = PendingDoorCreate
  L4_2 = L4_2.pin
  L3_2.pin = L4_2
  L4_2 = PendingDoorCreate
  L4_2 = L4_2.chiaveID
  L3_2.chiaveID = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = {}
  PendingDoorCreate = L1_2
  doorCreator = 1
  L1_2 = {}
  doorTrans1 = L1_2
  L1_2 = {}
  doorTrans2 = L1_2
end
L63_1(L64_1, L65_1)
function L63_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsDisabledControlPressed
  L2_2 = 0
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
  end
  return L1_2
end
function L64_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsDisabledControlJustPressed
  L2_2 = 0
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsControlJustPressed
    L2_2 = 0
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
  end
  return L1_2
end
function L65_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L5_2 = GetEntityQuaternion
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L9_2 = math
  L9_2 = L9_2.rad
  L10_2 = A4_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 * 0.5
  L10_2 = math
  L10_2 = L10_2.sin
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L11_2 = math
  L11_2 = L11_2.cos
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L12_2 = A1_2 * L10_2
  L13_2 = A2_2 * L10_2
  L14_2 = A3_2 * L10_2
  L15_2 = L11_2
  L16_2 = L15_2 * L5_2
  L17_2 = L12_2 * L8_2
  L16_2 = L16_2 + L17_2
  L17_2 = L13_2 * L7_2
  L16_2 = L16_2 + L17_2
  L17_2 = L14_2 * L6_2
  L16_2 = L16_2 - L17_2
  L17_2 = L15_2 * L6_2
  L18_2 = L12_2 * L7_2
  L17_2 = L17_2 - L18_2
  L18_2 = L13_2 * L8_2
  L17_2 = L17_2 + L18_2
  L18_2 = L14_2 * L5_2
  L17_2 = L17_2 + L18_2
  L18_2 = L15_2 * L7_2
  L19_2 = L12_2 * L6_2
  L18_2 = L18_2 + L19_2
  L19_2 = L13_2 * L5_2
  L18_2 = L18_2 - L19_2
  L19_2 = L14_2 * L8_2
  L18_2 = L18_2 + L19_2
  L19_2 = L15_2 * L8_2
  L20_2 = L12_2 * L5_2
  L19_2 = L19_2 - L20_2
  L20_2 = L13_2 * L6_2
  L19_2 = L19_2 - L20_2
  L20_2 = L14_2 * L7_2
  L19_2 = L19_2 - L20_2
  L20_2 = SetEntityQuaternion
  L21_2 = A0_2
  L22_2 = L16_2
  L23_2 = L17_2
  L24_2 = L18_2
  L25_2 = L19_2
  L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
end
L66_1 = 0
L67_1 = 500
L68_1 = _ENV
L69_1 = "propGhostDoor"
L70_1 = nil
L68_1[L69_1] = L70_1
L68_1 = _ENV
L69_1 = "rotSpeed"
L70_1 = _ENV
L71_1 = "speedvar"
L70_1 = L70_1[L71_1]
L71_1 = 0.01
L70_1 = L71_1 * L70_1
L68_1[L69_1] = L70_1
L68_1 = 45.0
function L69_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = GetEntityRotation
  L5_2 = A0_2
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = SetEntityRotation
  L6_2 = A0_2
  L7_2 = L4_2.x
  L7_2 = L7_2 + A1_2
  L8_2 = L4_2.y
  L8_2 = L8_2 + A2_2
  L9_2 = L4_2.z
  L9_2 = L9_2 + A3_2
  L10_2 = 2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L70_1 = _ENV
L71_1 = "UPDATEHE"
function L72_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = stopPointing
  L2_2()
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3
    L0_3 = GetEntityCoords
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L1_3()
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
    lastPostPG = L0_3
    L0_3 = getDynamicMaxDistance
    L1_3 = he
    L2_3 = 20.0
    L0_3 = L0_3(L1_3, L2_3)
    MaxDistanceEditor = L0_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = he
      if nil ~= L0_3 then
        L0_3 = DoesEntityExist
        L1_3 = he
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = he
          L0_3 = L0_3(L1_3)
          L1_3 = GetEntityRotation
          L2_3 = he
          L1_3 = L1_3(L2_3)
          L2_3 = DisableControlAction
          L3_3 = 0
          L4_3 = 74
          L5_3 = true
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L3_3 = TipoEditor
          if not L3_3 then
            L3_3 = IsDisabledControlJustPressed
            L4_3 = 0
            L5_3 = 23
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = GhostObj
              if nil == L3_3 then
                L3_3 = "prop_cs_leaf"
                L4_3 = RequestModelStriano
                L5_3 = L3_3
                L4_3(L5_3)
                L4_3 = type
                L5_3 = L3_3
                L4_3 = L4_3(L5_3)
                L4_3 = L3_3 or L4_3
                if "number" ~= L4_3 or not L3_3 then
                  L4_3 = GetHashKey
                  L5_3 = L3_3
                  L4_3 = L4_3(L5_3)
                end
                L5_3 = CreateObject
                L6_3 = GetHashKey
                L7_3 = L3_3
                L6_3 = L6_3(L7_3)
                L7_3 = GetEntityCoords
                L8_3 = he
                L7_3 = L7_3(L8_3)
                L8_3 = true
                L5_3 = L5_3(L6_3, L7_3, L8_3)
                GhostObj = L5_3
                while true do
                  L5_3 = DoesEntityExist
                  L6_3 = GhostObj
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    break
                  end
                  L5_3 = Wait
                  L6_3 = 0
                  L5_3(L6_3)
                end
                L5_3 = SetEntityVisible
                L6_3 = GhostObj
                L7_3 = false
                L5_3(L6_3, L7_3)
                L5_3 = FreezeEntityPosition
                L6_3 = GhostObj
                L7_3 = true
                L5_3(L6_3, L7_3)
                L5_3 = SetEntityNoCollisionEntity
                L6_3 = PlayerPedId
                L6_3 = L6_3()
                L7_3 = GhostObj
                L8_3 = true
                L5_3(L6_3, L7_3, L8_3)
                L5_3 = SetEntityCollision
                L6_3 = GhostObj
                L7_3 = false
                L8_3 = false
                L5_3(L6_3, L7_3, L8_3)
                L5_3 = SetTrackedEntity
                L6_3 = GhostObj
                L5_3(L6_3)
                L5_3 = onCamLock
                L5_3()
              else
                L3_3 = DoesEntityExist
                L4_3 = GhostObj
                L3_3 = L3_3(L4_3)
                if L3_3 then
                  L3_3 = SetTrackedEntity
                  L4_3 = he
                  L3_3(L4_3)
                  L3_3 = StartOrbitCam
                  L4_3 = vector3
                  L5_3 = 0.0
                  L6_3 = 0.0
                  L7_3 = 0.5
                  L4_3 = L4_3(L5_3, L6_3, L7_3)
                  L5_3 = he
                  L3_3(L4_3, L5_3)
                  L3_3 = SetEntityAsMissionEntity
                  L4_3 = GhostObj
                  L3_3(L4_3)
                  L3_3 = DeleteEntity
                  L4_3 = GhostObj
                  L3_3(L4_3)
                end
                GhostObj = nil
                L3_3 = onCamUnlock
                L3_3()
              end
            end
          end
          L3_3 = TipoEditor
          if not L3_3 then
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 30
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 31
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 32
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 33
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 34
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 35
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 21
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 22
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 23
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 75
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
          end
          L3_3 = GetEntityCoords
          L4_3 = he
          L3_3 = L3_3(L4_3)
          L4_3 = GetEntityRotation
          L5_3 = he
          L4_3 = L4_3(L5_3)
          L5_3 = DrawSpotLightWithShadow
          L6_3 = L3_3.x
          L7_3 = L3_3.y
          L8_3 = L3_3.z
          L8_3 = L8_3 + 1.3
          L9_3 = L4_3.x
          L10_3 = L4_3.y
          L11_3 = L4_3.z
          L11_3 = L11_3 - 180
          L12_3 = 255
          L13_3 = 255
          L14_3 = 190
          L15_3 = 7.0
          L16_3 = 0.15
          L17_3 = 5.0
          L18_3 = 150.0
          L19_3 = 10.0
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L5_3 = DrawSpotLightWithShadow
          L6_3 = L3_3.x
          L7_3 = L3_3.y
          L8_3 = L3_3.z
          L8_3 = L8_3 + 1.3
          L9_3 = L4_3.x
          L10_3 = L4_3.y
          L11_3 = L4_3.z
          L11_3 = L11_3 - 180
          L12_3 = 255
          L13_3 = 255
          L14_3 = 190
          L15_3 = 7.0
          L16_3 = 0.15
          L17_3 = 5.0
          L18_3 = 150.0
          L19_3 = 10.0
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L5_3 = TipoEditor
          if not L5_3 then
            L5_3 = GetEntityCoords
            L6_3 = L2_3
            L5_3 = L5_3(L6_3)
            L6_3 = GetEntityCoords
            L7_3 = he
            L6_3 = L6_3(L7_3)
            L5_3 = L5_3 - L6_3
            L5_3 = #L5_3
            if L5_3 > 100.0 then
              TipoEditor = true
              L5_3 = GhostObj
              if L5_3 then
                L5_3 = SetEntityAsMissionEntity
                L6_3 = GhostObj
                L5_3(L6_3)
                L5_3 = DeleteEntity
                L6_3 = GhostObj
                L5_3(L6_3)
                GhostObj = nil
              end
              L5_3 = lastPostPG
              if nil ~= L5_3 then
                L5_3 = SetEntityCoords
                L6_3 = L2_3
                L7_3 = lastPostPG
                L7_3 = L7_3.x
                L8_3 = lastPostPG
                L8_3 = L8_3.y
                L9_3 = lastPostPG
                L9_3 = L9_3.z
                L9_3 = L9_3 - 1
                L5_3(L6_3, L7_3, L8_3, L9_3)
                lastPostPG = nil
              end
              L5_3 = EndOrbitCam
              L5_3()
              L5_3 = FreezeEntityPosition
              L6_3 = L2_3
              L7_3 = false
              L5_3(L6_3, L7_3)
              L5_3 = SetEntityAlpha
              L6_3 = L2_3
              L7_3 = 255
              L5_3(L6_3, L7_3)
            end
          end
          L5_3 = IsDisabledControlJustPressed
          L6_3 = 0
          L7_3 = 74
          L5_3 = L5_3(L6_3, L7_3)
          if L5_3 then
            L5_3 = GetGameTimer
            L5_3 = L5_3()
            L6_3 = L66_1
            L6_3 = L5_3 - L6_3
            L7_3 = L67_1
            if L6_3 >= L7_3 then
              L66_1 = L5_3
              L6_3 = GetEntityCoords
              L7_3 = L2_3
              L6_3 = L6_3(L7_3)
              L7_3 = GetEntityCoords
              L8_3 = he
              L7_3 = L7_3(L8_3)
              L6_3 = L6_3 - L7_3
              L6_3 = #L6_3
              L7_3 = MAXDISTANCE_EDITOR
              if L6_3 <= L7_3 then
                L6_3 = TipoEditor
                L6_3 = not L6_3
                TipoEditor = L6_3
                L6_3 = TipoEditor
                if not L6_3 then
                  L6_3 = startTipoSims
                  L6_3()
                else
                  L6_3 = GhostObj
                  if L6_3 then
                    L6_3 = SetEntityAsMissionEntity
                    L7_3 = GhostObj
                    L6_3(L7_3)
                    L6_3 = DeleteEntity
                    L7_3 = GhostObj
                    L6_3(L7_3)
                    GhostObj = nil
                  end
                  L6_3 = lastPostPG
                  if L6_3 then
                    lastPostPG = nil
                  end
                  L6_3 = EndOrbitCam
                  L6_3()
                  L6_3 = FreezeEntityPosition
                  L7_3 = L2_3
                  L8_3 = false
                  L6_3(L7_3, L8_3)
                  L6_3 = SetEntityAlpha
                  L7_3 = L2_3
                  L8_3 = 255
                  L6_3(L7_3, L8_3)
                  L6_3 = StopSims
                  L6_3()
                end
              else
                L6_3 = tooFarMex
                L6_3()
              end
            end
          end
          L5_3 = TipoEditor
          if L5_3 then
            L5_3 = DisableCamCollisionForEntity
            L6_3 = L2_3
            L5_3(L6_3)
          end
          L5_3 = IsDisabledControlPressed
          L6_3 = 2
          L7_3 = 22
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = TipoEditor
            if L5_3 then
              L5_3 = SetMouseCursorActiveThisFrame
              L5_3()
              L5_3 = DisableControlAction
              L6_3 = 0
              L7_3 = 24
              L8_3 = true
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = DisableControlAction
              L6_3 = 0
              L7_3 = 25
              L8_3 = true
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = DisableControlAction
              L6_3 = 0
              L7_3 = 1
              L8_3 = true
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = DisableControlAction
              L6_3 = 0
              L7_3 = 2
              L8_3 = true
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = DisableControlAction
              L6_3 = 0
              L7_3 = 18
              L8_3 = true
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = DisableControlAction
              L6_3 = 0
              L7_3 = 22
              L8_3 = true
              L5_3(L6_3, L7_3, L8_3)
            end
          end
          L5_3 = IsDisabledControlJustPressed
          L6_3 = 0
          L7_3 = 15
          L5_3 = L5_3(L6_3, L7_3)
          if L5_3 then
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 21
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = IsDisabledControlPressed
              L6_3 = 0
              L7_3 = 21
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                goto lbl_443
              end
            end
            L5_3 = speedvar
            L6_3 = 0.5
            if L5_3 < L6_3 then
              L5_3 = speedvar
              L5_3 = L5_3 + 0.1
              speedvar = L5_3
            else
              L5_3 = speedvar
              L5_3 = L5_3 + 0.5
              speedvar = L5_3
            end
            L5_3 = speedvar
            if L5_3 > 5.0 then
              L5_3 = speedvar
              L5_3 = L5_3 + 0.5
              speedvar = L5_3
            end
            L5_3 = speedvar
            if L5_3 > 10.0 then
              speedvar = 0.1
            end
            L5_3 = PlaySoundFrontend
            L6_3 = -1
            L7_3 = "NAV_UP_DOWN"
            L8_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            L9_3 = 0
            L5_3(L6_3, L7_3, L8_3, L9_3)
            L5_3 = speedvar
            L5_3 = 0.1 * L5_3
            rotSpeed = L5_3
          end
          ::lbl_443::
          L5_3 = IsDisabledControlJustPressed
          L6_3 = 0
          L7_3 = 14
          L5_3 = L5_3(L6_3, L7_3)
          if L5_3 then
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 21
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = IsDisabledControlPressed
              L6_3 = 0
              L7_3 = 21
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                goto lbl_496
              end
            end
            L5_3 = speedvar
            L6_3 = 0.5
            if L5_3 > L6_3 then
              L5_3 = speedvar
              L5_3 = L5_3 - 0.5
              speedvar = L5_3
            else
              L5_3 = speedvar
              L5_3 = L5_3 - 0.1
              speedvar = L5_3
            end
            L5_3 = speedvar
            if L5_3 > 5.0 then
              L5_3 = speedvar
              L5_3 = L5_3 - 0.5
              speedvar = L5_3
            end
            L5_3 = speedvar
            L6_3 = 0.1
            if L5_3 < L6_3 then
              speedvar = 10.0
            end
            L5_3 = PlaySoundFrontend
            L6_3 = -1
            L7_3 = "NAV_UP_DOWN"
            L8_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            L9_3 = 0
            L5_3(L6_3, L7_3, L8_3, L9_3)
            L5_3 = speedvar
            L5_3 = 0.1 * L5_3
            rotSpeed = L5_3
          end
          ::lbl_496::
          L5_3 = MessageWhileEditor
          L6_3 = TipoEditor
          L5_3(L6_3)
          L5_3 = IsDisabledControlPressed
          L6_3 = 0
          L7_3 = 73
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsControlPressed
            L6_3 = 0
            L7_3 = 73
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 177
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = GetEntityCoords
                L6_3 = L2_3
                L5_3 = L5_3(L6_3)
                L6_3 = GetEntityCoords
                L7_3 = he
                L6_3 = L6_3(L7_3)
                L5_3 = L5_3 - L6_3
                L5_3 = #L5_3
                L6_3 = MaxDistanceEditor
                if not (L5_3 > L6_3) then
                  goto lbl_556
                end
                L5_3 = TipoEditor
                if L5_3 then
                  goto lbl_556
                end
              end
            end
          end
          L5_3 = A0_2
          if nil ~= L5_3 then
            L5_3 = A0_2
            if L5_3 > 0 then
              L5_3 = ItemFromInventory
              L6_3 = GetEntityModel
              L7_3 = he
              L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L6_3(L7_3)
              L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
              L6_3 = TriggerServerEvent
              L7_3 = "inv3d:giveItem"
              L8_3 = GetPlayerServerId
              L9_3 = PlayerId
              L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L9_3()
              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
              L9_3 = "player"
              L10_3 = L5_3
              L11_3 = A0_2
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
            end
          end
          L5_3 = TempReset
          L5_3()
          do return end
          ::lbl_556::
          L5_3 = IsControlJustPressed
          L6_3 = 0
          L7_3 = 301
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlJustPressed
            L6_3 = 0
            L7_3 = 301
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              goto lbl_570
            end
          end
          L5_3 = onCopyToggle
          L5_3()
          ::lbl_570::
          L5_3 = IsDisabledControlJustPressed
          L6_3 = 2
          L7_3 = 38
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsDisabledControlJustPressed
            L6_3 = 2
            L7_3 = 24
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              goto lbl_665
            end
          end
          L5_3 = GetEntityCoords
          L6_3 = L2_3
          L5_3 = L5_3(L6_3)
          L6_3 = GetEntityCoords
          L7_3 = he
          L6_3 = L6_3(L7_3)
          L5_3 = L5_3 - L6_3
          L5_3 = #L5_3
          L6_3 = MaxDistanceEditor
          if L5_3 < L6_3 then
            L5_3 = DoesEntityExist
            L6_3 = he
            L5_3 = L5_3(L6_3)
            if L5_3 then
              L5_3 = GetEntityModel
              L6_3 = he
              L5_3 = L5_3(L6_3)
              L6_3 = GetEntityCoords
              L7_3 = he
              L6_3 = L6_3(L7_3)
              L7_3 = GetEntityRotation
              L8_3 = he
              L9_3 = 2
              L7_3 = L7_3(L8_3, L9_3)
              L8_3 = L2_1
              L9_3 = L6_3
              L8_3, L9_3 = L8_3(L9_3)
              if L8_3 then
                L10_3 = L3_1
                L11_3 = L9_3
                L10_3(L11_3)
              else
                L10_3 = L0_1
                L10_3()
                L10_3 = Wait
                L11_3 = 25
                L10_3(L11_3)
                L10_3 = A0_2
                if nil ~= L10_3 then
                  L10_3 = TriggerServerEvent
                  L11_3 = "placer:addpool"
                  L12_3 = L5_3
                  L13_3 = L6_3.x
                  L14_3 = L6_3.y
                  L15_3 = L6_3.z
                  L16_3 = L7_3.x
                  L17_3 = L7_3.y
                  L18_3 = L7_3.z
                  L19_3 = true
                  L20_3 = A0_2
                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                else
                  L10_3 = TriggerServerEvent
                  L11_3 = "placer:addpool"
                  L12_3 = L5_3
                  L13_3 = L6_3.x
                  L14_3 = L6_3.y
                  L15_3 = L6_3.z
                  L16_3 = L7_3.x
                  L17_3 = L7_3.y
                  L18_3 = L7_3.z
                  L19_3 = true
                  L20_3 = 0
                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                end
                L10_3 = onItemPlace
                L10_3()
                L10_3 = A0_2
                if nil ~= L10_3 then
                  L10_3 = A0_2
                  if L10_3 > 0 then
                    L10_3 = TempReset
                    L10_3()
                    return
                  end
                end
              end
            end
          else
            L5_3 = tooFarPlayer
            L5_3()
          end
          ::lbl_665::
          L5_3 = TipoEditor
          if not L5_3 then
            L5_3 = L0_3.x
            L57_1 = L5_3
            L5_3 = L0_3.y
            L58_1 = L5_3
            L5_3 = L0_3.z
            L59_1 = L5_3
            L5_3 = L1_3.x
            L60_1 = L5_3
            L5_3 = L1_3.y
            L61_1 = L5_3
            L5_3 = L1_3.z
            L62_1 = L5_3
            L5_3 = IsControlJustPressed
            L6_3 = 0
            L7_3 = 44
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              L5_3 = IsDisabledControlJustPressed
              L6_3 = 0
              L7_3 = 44
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                goto lbl_976
              end
            end
            L5_3 = doorCreator
            if 1 == L5_3 then
              L5_3 = {}
              L6_3 = GetEntityCoords
              L7_3 = he
              L6_3 = L6_3(L7_3)
              L5_3.pos = L6_3
              L6_3 = GetEntityRotation
              L7_3 = he
              L8_3 = 2
              L6_3 = L6_3(L7_3, L8_3)
              L5_3.rot = L6_3
              doorTrans1 = L5_3
              L5_3 = doorCreator
              L5_3 = L5_3 + 1
              doorCreator = L5_3
              L5_3 = PlaySoundFrontend
              L6_3 = -1
              L7_3 = "Boss_Message_Orange"
              L8_3 = "GTAO_Boss_Goons_FM_Soundset"
              L9_3 = 0
              L5_3(L6_3, L7_3, L8_3, L9_3)
              L5_3 = GetEntityCoords
              L6_3 = he
              L5_3 = L5_3(L6_3)
              L6_3 = GetEntityRotation
              L7_3 = he
              L6_3 = L6_3(L7_3)
              L7_3 = GetEntityModel
              L8_3 = he
              L7_3 = L7_3(L8_3)
              L8_3 = CreateObject
              L9_3 = L7_3
              L10_3 = L5_3.x
              L11_3 = L5_3.y
              L12_3 = L5_3.z
              L13_3 = false
              L14_3 = false
              L15_3 = false
              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
              propGhostDoor = L8_3
              while true do
                L8_3 = DoesEntityExist
                L9_3 = propGhostDoor
                L8_3 = L8_3(L9_3)
                if L8_3 then
                  break
                end
                L8_3 = Wait
                L9_3 = 0
                L8_3(L9_3)
              end
              L8_3 = FreezeEntityPosition
              L9_3 = propGhostDoor
              L10_3 = true
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityRotation
              L9_3 = propGhostDoor
              L10_3 = L6_3
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityCoords
              L9_3 = propGhostDoor
              L10_3 = L5_3
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityCompletelyDisableCollision
              L9_3 = propGhostDoor
              L10_3 = true
              L11_3 = true
              L8_3(L9_3, L10_3, L11_3)
              L8_3 = SetEntityAlpha
              L9_3 = propGhostDoor
              L10_3 = 150
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityAsMissionEntity
              L9_3 = propGhostDoor
              L8_3(L9_3)
            else
              L5_3 = doorCreator
              if 2 == L5_3 then
                L5_3 = GetEntityRotation
                L6_3 = he
                L7_3 = 2
                L5_3 = L5_3(L6_3, L7_3)
                L6_3 = doorTrans1
                L6_3 = L6_3.rot
                L7_3 = GetEntityCoords
                L8_3 = he
                L7_3 = L7_3(L8_3)
                L8_3 = doorTrans1
                L8_3 = L8_3.pos
                L9_3 = 3.0
                L10_3 = 0.02
                L11_3 = math
                L11_3 = L11_3.abs
                L12_3 = L5_3.x
                L13_3 = L6_3.x
                L12_3 = L12_3 - L13_3
                L11_3 = L11_3(L12_3)
                L11_3 = L9_3 <= L11_3
                L12_3 = L7_3 - L8_3
                L12_3 = #L12_3
                L12_3 = L10_3 <= L12_3
                if not L11_3 and not L12_3 then
                  L13_3 = testo3d
                  L14_3 = "Move or rotate first!"
                  L13_3(L14_3)
                  L13_3 = PlaySoundFrontend
                  L14_3 = -1
                  L15_3 = "ERROR"
                  L16_3 = "HUD_AMMO_SHOP_SOUNDSET"
                  L17_3 = 0
                  L13_3(L14_3, L15_3, L16_3, L17_3)
                else
                  L13_3 = {}
                  L13_3.pos = L7_3
                  L13_3.rot = L5_3
                  doorTrans2 = L13_3
                  L13_3 = {}
                  L14_3 = GetEntityCoords
                  L15_3 = he
                  L14_3 = L14_3(L15_3)
                  L13_3.pos = L14_3
                  L14_3 = GetEntityRotation
                  L15_3 = he
                  L14_3 = L14_3(L15_3)
                  L13_3.rot = L14_3
                  doorTrans2 = L13_3
                  L13_3 = doorCreator
                  L13_3 = L13_3 + 1
                  doorCreator = L13_3
                  L13_3 = OpenInput
                  L14_3 = "Optional Pin"
                  L13_3 = L13_3(L14_3)
                  L14_3 = PendingDoorCreate
                  L15_3 = L13_3 or L15_3
                  if not L13_3 then
                    L15_3 = ""
                  end
                  L14_3.pin = L15_3
                  L14_3 = Wait
                  L15_3 = 1000
                  L14_3(L15_3)
                  L14_3 = OpenInput
                  L15_3 = "Key ID"
                  L14_3 = L14_3(L15_3)
                  L15_3 = PendingDoorCreate
                  L16_3 = L14_3 or L16_3
                  if not L14_3 then
                    L16_3 = ""
                  end
                  L15_3.chiaveID = L16_3
                  L15_3 = doorCreator
                  L15_3 = L15_3 + 1
                  doorCreator = L15_3
                  L15_3 = doorTrans1
                  L15_3 = L15_3.pos
                  L16_3 = doorTrans1
                  L16_3 = L16_3.rot
                  L17_3 = L0_1
                  L17_3()
                  L17_3 = Wait
                  L18_3 = 25
                  L17_3(L18_3)
                  L17_3 = TriggerServerEvent
                  L18_3 = "placer:addpool"
                  L19_3 = GetEntityModel
                  L20_3 = propGhostDoor
                  L19_3 = L19_3(L20_3)
                  L20_3 = L15_3.x
                  L21_3 = L15_3.y
                  L22_3 = L15_3.z
                  L23_3 = L16_3.x
                  L24_3 = L16_3.y
                  L25_3 = L16_3.z
                  L26_3 = true
                  L27_3 = 0
                  L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
                  L17_3 = {}
                  L18_3 = doorTrans1
                  L18_3 = L18_3.pos
                  L18_3 = L18_3.x
                  L17_3.x = L18_3
                  L18_3 = doorTrans1
                  L18_3 = L18_3.pos
                  L18_3 = L18_3.y
                  L17_3.y = L18_3
                  L18_3 = doorTrans1
                  L18_3 = L18_3.pos
                  L18_3 = L18_3.z
                  L17_3.z = L18_3
                  L18_3 = doorTrans1
                  L18_3 = L18_3.rot
                  L18_3 = L18_3.x
                  L17_3.rx = L18_3
                  L18_3 = doorTrans1
                  L18_3 = L18_3.rot
                  L18_3 = L18_3.y
                  L17_3.ry = L18_3
                  L18_3 = doorTrans1
                  L18_3 = L18_3.rot
                  L18_3 = L18_3.z
                  L17_3.rz = L18_3
                  L18_3 = {}
                  L19_3 = doorTrans2
                  L19_3 = L19_3.pos
                  L19_3 = L19_3.x
                  L18_3.x = L19_3
                  L19_3 = doorTrans2
                  L19_3 = L19_3.pos
                  L19_3 = L19_3.y
                  L18_3.y = L19_3
                  L19_3 = doorTrans2
                  L19_3 = L19_3.pos
                  L19_3 = L19_3.z
                  L18_3.z = L19_3
                  L19_3 = doorTrans2
                  L19_3 = L19_3.rot
                  L19_3 = L19_3.x
                  L18_3.rx = L19_3
                  L19_3 = doorTrans2
                  L19_3 = L19_3.rot
                  L19_3 = L19_3.y
                  L18_3.ry = L19_3
                  L19_3 = doorTrans2
                  L19_3 = L19_3.rot
                  L19_3 = L19_3.z
                  L18_3.rz = L19_3
                  L19_3 = PendingDoorCreate
                  L19_3.pos1 = L17_3
                  L19_3 = PendingDoorCreate
                  L19_3.pos2 = L18_3
                  L19_3 = propGhostDoor
                  if L19_3 then
                    L19_3 = DoesEntityExist
                    L20_3 = propGhostDoor
                    L19_3 = L19_3(L20_3)
                    if L19_3 then
                      L19_3 = SetEntityAsMissionEntity
                      L20_3 = propGhostDoor
                      L19_3(L20_3)
                      L19_3 = DeleteEntity
                      L20_3 = propGhostDoor
                      L19_3(L20_3)
                      propGhostDoor = nil
                    end
                  end
                  L19_3 = TempReset
                  L19_3()
                  return
                end
              end
            end
            ::lbl_976::
            L5_3 = L63_1
            L6_3 = 21
            L5_3 = L5_3(L6_3)
            if L5_3 then
              L5_3 = L63_1
              L6_3 = 22
              L5_3 = L5_3(L6_3)
              if not L5_3 then
                L5_3 = L63_1
                L6_3 = 32
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L0_3.z
                  L6_3 = speedvar
                  L6_3 = 0.008 * L6_3
                  L5_3 = L5_3 + L6_3
                  L59_1 = L5_3
                  L5_3 = SetEntityCoords
                  L6_3 = he
                  L7_3 = L57_1
                  L8_3 = L58_1
                  L9_3 = L59_1
                  L5_3(L6_3, L7_3, L8_3, L9_3)
                end
                L5_3 = L63_1
                L6_3 = 33
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L0_3.z
                  L6_3 = speedvar
                  L6_3 = 0.008 * L6_3
                  L5_3 = L5_3 - L6_3
                  L59_1 = L5_3
                  L5_3 = SetEntityCoords
                  L6_3 = he
                  L7_3 = L57_1
                  L8_3 = L58_1
                  L9_3 = L59_1
                  L5_3(L6_3, L7_3, L8_3, L9_3)
                end
                L5_3 = L63_1
                L6_3 = 36
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L64_1
                  L6_3 = 34
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = 0.0
                    L9_3 = L68_1
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L64_1
                  L6_3 = 35
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = 0.0
                    L9_3 = L68_1
                    L9_3 = -L9_3
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                else
                  L5_3 = L63_1
                  L6_3 = 34
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = 0.0
                    L9_3 = rotSpeed
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L63_1
                  L6_3 = 35
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = 0.0
                    L9_3 = rotSpeed
                    L9_3 = -L9_3
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                end
              end
            end
            L5_3 = L63_1
            L6_3 = 22
            L5_3 = L5_3(L6_3)
            if L5_3 then
              L5_3 = L63_1
              L6_3 = 21
              L5_3 = L5_3(L6_3)
              if not L5_3 then
                L5_3 = L63_1
                L6_3 = 36
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L64_1
                  L6_3 = 32
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = L68_1
                    L8_3 = 0.0
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L64_1
                  L6_3 = 33
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = L68_1
                    L7_3 = -L7_3
                    L8_3 = 0.0
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L64_1
                  L6_3 = 34
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = L68_1
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L64_1
                  L6_3 = 35
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = L68_1
                    L8_3 = -L8_3
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                else
                  L5_3 = L63_1
                  L6_3 = 32
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = rotSpeed
                    L8_3 = 0.0
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L63_1
                  L6_3 = 33
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = rotSpeed
                    L7_3 = -L7_3
                    L8_3 = 0.0
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L63_1
                  L6_3 = 34
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = rotSpeed
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                  L5_3 = L63_1
                  L6_3 = 35
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = L69_1
                    L6_3 = he
                    L7_3 = 0.0
                    L8_3 = rotSpeed
                    L8_3 = -L8_3
                    L9_3 = 0.0
                    L5_3(L6_3, L7_3, L8_3, L9_3)
                  end
                end
              end
            end
            L5_3 = L63_1
            L6_3 = 21
            L5_3 = L5_3(L6_3)
            if not L5_3 then
              L5_3 = L63_1
              L6_3 = 22
              L5_3 = L5_3(L6_3)
              if not L5_3 then
                L5_3 = L63_1
                L6_3 = 34
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L0_3.x
                  L6_3 = speedvar
                  L6_3 = 0.008 * L6_3
                  L5_3 = L5_3 + L6_3
                  L57_1 = L5_3
                  L5_3 = SetEntityCoords
                  L6_3 = he
                  L7_3 = L57_1
                  L8_3 = L58_1
                  L9_3 = L59_1
                  L5_3(L6_3, L7_3, L8_3, L9_3)
                end
                L5_3 = L63_1
                L6_3 = 35
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L0_3.x
                  L6_3 = speedvar
                  L6_3 = 0.008 * L6_3
                  L5_3 = L5_3 - L6_3
                  L57_1 = L5_3
                  L5_3 = SetEntityCoords
                  L6_3 = he
                  L7_3 = L57_1
                  L8_3 = L58_1
                  L9_3 = L59_1
                  L5_3(L6_3, L7_3, L8_3, L9_3)
                end
                L5_3 = L63_1
                L6_3 = 32
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L0_3.y
                  L6_3 = speedvar
                  L6_3 = 0.008 * L6_3
                  L5_3 = L5_3 + L6_3
                  L58_1 = L5_3
                  L5_3 = SetEntityCoords
                  L6_3 = he
                  L7_3 = L57_1
                  L8_3 = L58_1
                  L9_3 = L59_1
                  L5_3(L6_3, L7_3, L8_3, L9_3)
                end
                L5_3 = L63_1
                L6_3 = 33
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = L0_3.y
                  L6_3 = speedvar
                  L6_3 = 0.008 * L6_3
                  L5_3 = L5_3 - L6_3
                  L58_1 = L5_3
                  L5_3 = SetEntityCoords
                  L6_3 = he
                  L7_3 = L57_1
                  L8_3 = L58_1
                  L9_3 = L59_1
                  L5_3(L6_3, L7_3, L8_3, L9_3)
                end
              end
            end
          else
            L5_3 = screenToWorld
            L5_3 = L5_3()
            if nil == L5_3 then
              goto lbl_1766
            end
            L6_3 = vector3
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L6_3 = L6_3(L7_3, L8_3, L9_3)
            if L5_3 == L6_3 then
              goto lbl_1766
            end
            L6_3 = IsDisabledControlPressed
            L7_3 = 2
            L8_3 = 22
            L6_3 = L6_3(L7_3, L8_3)
            if L6_3 then
              goto lbl_1766
            end
            L6_3 = GetEntityCoords
            L7_3 = L2_3
            L6_3 = L6_3(L7_3)
            L6_3 = L6_3 - L5_3
            L6_3 = #L6_3
            L7_3 = MAXDISTANCE_EDITOR
            if not (L6_3 <= L7_3) then
              goto lbl_1766
            end
            L6_3 = SetEntityCoords
            L7_3 = he
            L8_3 = L5_3.x
            L9_3 = L51_1
            L8_3 = L8_3 + L9_3
            L9_3 = L5_3.y
            L10_3 = L52_1
            L9_3 = L9_3 + L10_3
            L10_3 = L5_3.z
            L11_3 = L53_1
            L10_3 = L10_3 + L11_3
            L6_3(L7_3, L8_3, L9_3, L10_3)
            L6_3 = SetEntityRotation
            L7_3 = he
            L8_3 = L54_1
            L9_3 = L55_1
            L10_3 = L56_1
            L6_3(L7_3, L8_3, L9_3, L10_3)
            L6_3 = IsControlPressed
            L7_3 = 2
            L8_3 = Keys
            L8_3 = L8_3.LEFTSHIFT
            L6_3 = L6_3(L7_3, L8_3)
            if not L6_3 then
              L6_3 = IsDisabledControlPressed
              L7_3 = 0
              L8_3 = 45
              L6_3 = L6_3(L7_3, L8_3)
              if not L6_3 then
                L6_3 = IsDisabledControlPressed
                L7_3 = 0
                L8_3 = 36
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsControlPressed
                  L7_3 = 0
                  L8_3 = 36
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    goto lbl_1371
                  end
                end
                L6_3 = IsDisabledControlJustPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.LEFT
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = L56_1
                  L7_3 = 360.0
                  if L6_3 >= L7_3 then
                    L6_3 = 0.0
                    L56_1 = L6_3
                  end
                  L6_3 = L56_1
                  L6_3 = L6_3 + 45.0
                  L56_1 = L6_3
                end
                L6_3 = IsDisabledControlJustPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.RIGHT
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = L56_1
                  if L6_3 <= 0.0 then
                    L6_3 = 360.0
                    L56_1 = L6_3
                  end
                  L6_3 = L56_1
                  L6_3 = L6_3 - 45.0
                  L56_1 = L6_3
                  goto lbl_1410
                  ::lbl_1371::
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = Keys
                  L8_3 = L8_3.LEFT
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    L6_3 = L56_1
                    L7_3 = 360.0
                    if L6_3 >= L7_3 then
                      L6_3 = 0.0
                      L56_1 = L6_3
                    end
                    L6_3 = L56_1
                    L7_3 = speedvar
                    L7_3 = 0.5 * L7_3
                    L6_3 = L6_3 + L7_3
                    L56_1 = L6_3
                  end
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = Keys
                  L8_3 = L8_3.RIGHT
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    L6_3 = L56_1
                    if L6_3 <= 0.0 then
                      L6_3 = 360.0
                      L56_1 = L6_3
                    end
                    L6_3 = L56_1
                    L7_3 = speedvar
                    L7_3 = 0.5 * L7_3
                    L6_3 = L6_3 - L7_3
                    L56_1 = L6_3
                  end
                end
                ::lbl_1410::
                L6_3 = IsDisabledControlPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.TOP
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 15
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    goto lbl_1436
                  end
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 21
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    goto lbl_1436
                  end
                end
                L6_3 = L53_1
                L7_3 = speedvar
                L7_3 = 0.01 * L7_3
                L6_3 = L6_3 + L7_3
                L53_1 = L6_3
                ::lbl_1436::
                L6_3 = IsDisabledControlPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.DOWN
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 14
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    L6_3 = IsDisabledControlPressed
                    L7_3 = 2
                    L8_3 = 21
                    L6_3 = L6_3(L7_3, L8_3)
                    if not L6_3 then
                      L6_3 = L53_1
                      L7_3 = speedvar
                      L7_3 = 0.01 * L7_3
                      L6_3 = L6_3 - L7_3
                      L53_1 = L6_3
                    end
                  end
                end
            end
            else
              L6_3 = IsControlPressed
              L7_3 = 2
              L8_3 = Keys
              L8_3 = L8_3.LEFTSHIFT
              L6_3 = L6_3(L7_3, L8_3)
              if not L6_3 then
                L6_3 = IsDisabledControlPressed
                L7_3 = 0
                L8_3 = 45
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = Keys
                  L8_3 = L8_3.LEFT
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    L6_3 = L51_1
                    L7_3 = speedvar
                    L7_3 = 0.01 * L7_3
                    L6_3 = L6_3 + L7_3
                    L51_1 = L6_3
                  end
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = Keys
                  L8_3 = L8_3.RIGHT
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    L6_3 = L51_1
                    L7_3 = speedvar
                    L7_3 = 0.01 * L7_3
                    L6_3 = L6_3 - L7_3
                    L51_1 = L6_3
                  end
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = Keys
                  L8_3 = L8_3.TOP
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    L6_3 = IsDisabledControlPressed
                    L7_3 = 2
                    L8_3 = 15
                    L6_3 = L6_3(L7_3, L8_3)
                    if not L6_3 then
                      goto lbl_1530
                    end
                    L6_3 = IsDisabledControlPressed
                    L7_3 = 2
                    L8_3 = 21
                    L6_3 = L6_3(L7_3, L8_3)
                    if L6_3 then
                      goto lbl_1530
                    end
                  end
                  L6_3 = L52_1
                  L7_3 = speedvar
                  L7_3 = 0.01 * L7_3
                  L6_3 = L6_3 + L7_3
                  L52_1 = L6_3
                  ::lbl_1530::
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = Keys
                  L8_3 = L8_3.DOWN
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    L6_3 = IsDisabledControlPressed
                    L7_3 = 2
                    L8_3 = 14
                    L6_3 = L6_3(L7_3, L8_3)
                    if L6_3 then
                      L6_3 = IsDisabledControlPressed
                      L7_3 = 2
                      L8_3 = 21
                      L6_3 = L6_3(L7_3, L8_3)
                      if not L6_3 then
                        L6_3 = L52_1
                        L7_3 = speedvar
                        L7_3 = 0.01 * L7_3
                        L6_3 = L6_3 - L7_3
                        L52_1 = L6_3
                      end
                    end
                  end
              end
              else
                L6_3 = IsDisabledControlPressed
                L7_3 = 0
                L8_3 = 36
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsControlPressed
                  L7_3 = 0
                  L8_3 = 36
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    goto lbl_1660
                  end
                end
                L6_3 = IsDisabledControlJustPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.LEFT
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = L55_1
                  L7_3 = 360.0
                  if L6_3 >= L7_3 then
                    L6_3 = 0.0
                    L55_1 = L6_3
                  end
                  L6_3 = L55_1
                  L6_3 = L6_3 + 45.0
                  L55_1 = L6_3
                end
                L6_3 = IsDisabledControlJustPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.RIGHT
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = L55_1
                  if L6_3 <= 0.0 then
                    L6_3 = 360.0
                    L55_1 = L6_3
                  end
                  L6_3 = L55_1
                  L6_3 = L6_3 - 45.0
                  L55_1 = L6_3
                end
                L6_3 = IsDisabledControlJustPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.TOP
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 15
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    goto lbl_1631
                  end
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 21
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    goto lbl_1631
                  end
                end
                L6_3 = L54_1
                L7_3 = 360.0
                if L6_3 >= L7_3 then
                  L6_3 = 0
                  L54_1 = L6_3
                end
                L6_3 = L54_1
                L6_3 = L6_3 + 45.0
                L54_1 = L6_3
                ::lbl_1631::
                L6_3 = IsDisabledControlJustPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.DOWN
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 14
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    goto lbl_1766
                  end
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 21
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    goto lbl_1766
                  end
                end
                L6_3 = L54_1
                if L6_3 <= 0.0 then
                  L6_3 = 360
                  L54_1 = L6_3
                end
                L6_3 = L54_1
                L6_3 = L6_3 - 45.0
                L54_1 = L6_3
                goto lbl_1766
                ::lbl_1660::
                L6_3 = IsDisabledControlPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.LEFT
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = L55_1
                  L7_3 = 360.0
                  if L6_3 >= L7_3 then
                    L6_3 = 0.0
                    L55_1 = L6_3
                  end
                  L6_3 = L55_1
                  L7_3 = speedvar
                  L7_3 = 0.5 * L7_3
                  L6_3 = L6_3 + L7_3
                  L55_1 = L6_3
                end
                L6_3 = IsDisabledControlPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.RIGHT
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = L55_1
                  if L6_3 <= 0.0 then
                    L6_3 = 360.0
                    L55_1 = L6_3
                  end
                  L6_3 = L55_1
                  L7_3 = speedvar
                  L7_3 = 0.5 * L7_3
                  L6_3 = L6_3 - L7_3
                  L55_1 = L6_3
                end
                L6_3 = IsDisabledControlPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.TOP
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 15
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    goto lbl_1731
                  end
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 21
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    goto lbl_1731
                  end
                end
                L6_3 = L54_1
                L7_3 = 360.0
                if L6_3 >= L7_3 then
                  L6_3 = 0
                  L54_1 = L6_3
                end
                L6_3 = L54_1
                L7_3 = speedvar
                L7_3 = 0.5 * L7_3
                L6_3 = L6_3 + L7_3
                L54_1 = L6_3
                ::lbl_1731::
                L6_3 = IsDisabledControlPressed
                L7_3 = 2
                L8_3 = Keys
                L8_3 = L8_3.DOWN
                L6_3 = L6_3(L7_3, L8_3)
                if not L6_3 then
                  L6_3 = IsDisabledControlPressed
                  L7_3 = 2
                  L8_3 = 14
                  L6_3 = L6_3(L7_3, L8_3)
                  if L6_3 then
                    L6_3 = IsDisabledControlPressed
                    L7_3 = 2
                    L8_3 = 21
                    L6_3 = L6_3(L7_3, L8_3)
                    if not L6_3 then
                      L6_3 = L54_1
                      if L6_3 <= 0.0 then
                        L6_3 = 360
                        L54_1 = L6_3
                      end
                      L6_3 = L54_1
                      L7_3 = speedvar
                      L7_3 = 0.5 * L7_3
                      L6_3 = L6_3 - L7_3
                      L54_1 = L6_3
                    end
                  end
                end
              end
            end
          end
      end
      else
        L0_3 = TempReset
        L0_3()
        return
      end
      ::lbl_1766::
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 38
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L2_2(L3_2)
end
L70_1[L71_1] = L72_1
L70_1 = _ENV
L71_1 = "Citizen"
L70_1 = L70_1[L71_1]
L71_1 = "CreateThread"
L70_1 = L70_1[L71_1]
function L71_1()
  local L0_2, L1_2, L2_2
  L0_2 = RequestAnimDict
  L1_2 = "anim@mp_point"
  L0_2(L1_2)
  L0_2 = "anim@mp_point"
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
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = "anim@mp_point"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = RequestAnimDict
    L2_2 = "anim@mp_point"
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L70_1(L71_1)
L70_1 = _ENV
L71_1 = "GetPointingRotationToCoords"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A1_2 then
    L2_2 = nil
    L3_2 = nil
    return L2_2, L3_2
  end
  L2_2 = GetPedBoneCoords
  L3_2 = A0_2
  L4_2 = 57005
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = vector3
  L4_2 = A1_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = A1_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = A1_2.z
  L7_2 = L2_2.z
  L6_2 = L6_2 - L7_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = math
  L4_2 = L4_2.sqrt
  L5_2 = L3_2.x
  L6_2 = L3_2.x
  L5_2 = L5_2 * L6_2
  L6_2 = L3_2.y
  L7_2 = L3_2.y
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0.001
  if L4_2 <= L5_2 then
    L5_2 = nil
    L6_2 = nil
    return L5_2, L6_2
  end
  L5_2 = math
  L5_2 = L5_2.deg
  L6_2 = math
  L6_2 = L6_2.atan2
  L7_2 = L3_2.y
  L8_2 = L3_2.x
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L5_2 - 90.0
  L6_2 = GetEntityHeading
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L5_2 - L6_2
  while true do
    L8_2 = 180.0
    if not (L7_2 > L8_2) then
      break
    end
    L7_2 = L7_2 - 360.0
  end
  while true do
    L8_2 = -180.0
    if not (L7_2 < L8_2) then
      break
    end
    L7_2 = L7_2 + 360.0
  end
  L8_2 = math
  L8_2 = L8_2.deg
  L9_2 = math
  L9_2 = L9_2.atan2
  L10_2 = L3_2.z
  L11_2 = L4_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if L8_2 < -70.0 then
    L8_2 = -70.0
  end
  if L8_2 > 42.0 then
    L8_2 = 42.0
  end
  L9_2 = L8_2 + 70.0
  L9_2 = L9_2 / 112.0
  L10_2 = L7_2 + 180.0
  L10_2 = L10_2 / 360.0
  L11_2 = L9_2
  L12_2 = L10_2
  return L11_2, L12_2
end
L70_1[L71_1] = L72_1
L70_1 = 0.5
L71_1 = 0.5
L72_1 = _ENV
L73_1 = "lerp"
function L74_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
L72_1[L73_1] = L74_1
function L72_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 + 0.5
  L3_2 = L3_2 % 1.0
  L3_2 = L3_2 - 0.5
  L4_2 = L3_2 * A2_2
  L4_2 = A0_2 + L4_2
  return L4_2
end
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = nil
  L3_2 = nil
  do return L2_2, L3_2 end
  ::lbl_13::
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = L3_2.z
  L7_2 = L2_2.z
  L6_2 = L6_2 - L7_2
  L7_2 = math
  L7_2 = L7_2.sqrt
  L8_2 = L4_2 * L4_2
  L9_2 = L5_2 * L5_2
  L8_2 = L8_2 + L9_2
  L7_2 = L7_2(L8_2)
  L8_2 = GetHeadingFromVector_2d
  L9_2 = L4_2
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = math
  L9_2 = L9_2.deg
  L10_2 = math
  L10_2 = L10_2.atan2
  L11_2 = L6_2
  L12_2 = L7_2
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L9_2 = -L9_2
  L10_2 = L9_2
  L11_2 = L8_2
  return L10_2, L11_2
end
L74_1 = _ENV
L75_1 = "PointLoop"
function L76_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = Citizen
      L1_3 = L1_3.InvokeNative
      L2_3 = -7918206464511161279
      L3_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = IsPedFatallyInjured
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedRagdoll
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = IsPedDeadOrDying
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = 0.5
              L2_3 = 0.5
              L3_3 = 0
              L4_3 = IsControlPressed
              L5_3 = 0
              L6_3 = 22
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsDisabledControlPressed
                L5_3 = 0
                L6_3 = 22
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  goto lbl_75
                end
              end
              L4_3 = fishEntity
              if L4_3 then
                L4_3 = DoesEntityExist
                L5_3 = fishEntity
                L4_3 = L4_3(L5_3)
                if L4_3 then
                  L4_3 = L73_1
                  L5_3 = PlayerPedId
                  L5_3 = L5_3()
                  L6_3 = fishEntity
                  L4_3, L5_3 = L4_3(L5_3, L6_3)
                  if L4_3 and L5_3 then
                    L6_3 = lerp
                    L7_3 = L70_1
                    L8_3 = L4_3
                    L9_3 = 0.15
                    L6_3 = L6_3(L7_3, L8_3, L9_3)
                    L70_1 = L6_3
                    L6_3 = lerp
                    L7_3 = L71_1
                    L8_3 = L5_3
                    L9_3 = 0.15
                    L6_3 = L6_3(L7_3, L8_3, L9_3)
                    L71_1 = L6_3
                    L1_3 = L70_1
                    L2_3 = L71_1
                  end
              end
              ::lbl_75::
              else
                L4_3 = modalitaPesci
                if not L4_3 then
                  L4_3 = fishEntity
                  if L4_3 then
                    L4_3 = DoesEntityExist
                    L5_3 = fishEntity
                    L4_3 = L4_3(L5_3)
                    if L4_3 then
                      goto lbl_92
                    end
                  end
                  L4_3 = exports
                  L4_3 = L4_3.striano_editor
                  L5_3 = L4_3
                  L4_3 = L4_3.stoposizionando
                  L4_3 = L4_3(L5_3)
                  if not L4_3 then
                    goto lbl_115
                  end
                end
                ::lbl_92::
                L4_3 = GetPointingRotationToCoords
                L5_3 = L0_3
                L6_3 = GlobalPos
                L4_3, L5_3 = L4_3(L5_3, L6_3)
                if L4_3 and L5_3 then
                  L6_3 = lerp
                  L7_3 = L70_1
                  L8_3 = L4_3
                  L9_3 = 0.15
                  L6_3 = L6_3(L7_3, L8_3, L9_3)
                  L70_1 = L6_3
                  L6_3 = lerp
                  L7_3 = L71_1
                  L8_3 = L5_3
                  L9_3 = 0.15
                  L6_3 = L6_3(L7_3, L8_3, L9_3)
                  L71_1 = L6_3
                  L1_3 = L70_1
                  L2_3 = L71_1
                  goto lbl_199
                  ::lbl_115::
                  L4_3 = GetGameplayCamRelativePitch
                  L4_3 = L4_3()
                  L1_3 = L4_3
                  if L1_3 < -70.0 then
                    L1_3 = -70.0
                  elseif L1_3 > 42.0 then
                    L1_3 = 42.0
                  end
                  L4_3 = L1_3 + 70.0
                  L1_3 = L4_3 / 112.0
                  L4_3 = GetGameplayCamRelativeHeading
                  L4_3 = L4_3()
                  L2_3 = L4_3
                  L4_3 = Cos
                  L5_3 = L2_3
                  L4_3 = L4_3(L5_3)
                  L5_3 = Sin
                  L6_3 = L2_3
                  L5_3 = L5_3(L6_3)
                  L6_3 = -180.0
                  if L2_3 < L6_3 then
                    L2_3 = -180.0
                  else
                    L6_3 = 180.0
                    if L2_3 > L6_3 then
                      L2_3 = 180.0
                    end
                  end
                  L6_3 = L2_3 + 180.0
                  L2_3 = L6_3 / 360.0
                  L6_3 = GetOffsetFromEntityInWorldCoords
                  L7_3 = L0_3
                  L8_3 = L4_3 * -0.2
                  L9_3 = 0.4 * L2_3
                  L9_3 = L9_3 + 0.3
                  L9_3 = L5_3 * L9_3
                  L8_3 = L8_3 - L9_3
                  L9_3 = L5_3 * -0.2
                  L10_3 = 0.4 * L2_3
                  L10_3 = L10_3 + 0.3
                  L10_3 = L4_3 * L10_3
                  L9_3 = L9_3 + L10_3
                  L10_3 = 0.6
                  L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                  L7_3 = Cast_3dRayPointToPoint
                  L8_3 = L6_3.x
                  L9_3 = L6_3.y
                  L10_3 = L6_3.z
                  L10_3 = L10_3 - 0.2
                  L11_3 = L6_3.x
                  L12_3 = L6_3.y
                  L13_3 = L6_3.z
                  L13_3 = L13_3 + 0.2
                  L14_3 = 0.4
                  L15_3 = 95
                  L16_3 = L0_3
                  L17_3 = 7
                  L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                  L8_3 = nil
                  L9_3 = GetRaycastResult
                  L10_3 = L7_3
                  L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
                  L6_3 = L12_3
                  L6_3 = L11_3
                  L3_3 = L10_3
                  L8_3 = L9_3
                end
              end
              ::lbl_199::
              L4_3 = Citizen
              L4_3 = L4_3.InvokeNative
              L5_3 = -3045770192404309426
              L6_3 = L0_3
              L7_3 = "Pitch"
              L8_3 = L1_3
              L4_3(L5_3, L6_3, L7_3, L8_3)
              L4_3 = Citizen
              L4_3 = L4_3.InvokeNative
              L5_3 = -3045770192404309426
              L6_3 = L0_3
              L7_3 = "Heading"
              L8_3 = L2_3 * -1.0
              L8_3 = L8_3 + 1.0
              L4_3(L5_3, L6_3, L7_3, L8_3)
              L4_3 = Citizen
              L4_3 = L4_3.InvokeNative
              L5_3 = -5717654172718067576
              L6_3 = L0_3
              L7_3 = "isBlocked"
              L8_3 = L3_3
              L4_3(L5_3, L6_3, L7_3, L8_3)
              L4_3 = Citizen
              L4_3 = L4_3.InvokeNative
              L5_3 = -5717654172718067576
              L6_3 = L0_3
              L7_3 = "isFirstPerson"
              L8_3 = Citizen
              L8_3 = L8_3.InvokeNative
              L9_3 = -1263383336880880926
              L10_3 = Citizen
              L10_3 = L10_3.InvokeNative
              L11_3 = 1858572934129894143
              L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L10_3(L11_3)
              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L8_3 = 4 == L8_3
              L4_3(L5_3, L6_3, L7_3, L8_3)
              L4_3 = DisableFirstPersonCamThisFrame
              L4_3()
          end
        end
      end
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
L74_1[L75_1] = L76_1
L74_1 = false
L75_1 = _ENV
L76_1 = "startPointing"
function L77_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L74_1
    if not L1_2 then
      L1_2 = true
      L74_1 = L1_2
      L1_2 = SetPedConfigFlag
      L2_2 = L0_2
      L3_2 = 36
      L4_2 = 1
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = Citizen
      L1_2 = L1_2.InvokeNative
      L2_2 = 3266090088685725238
      L3_2 = L0_2
      L4_2 = "task_mp_pointing"
      L5_2 = 0.5
      L6_2 = 0
      L7_2 = "anim@mp_point"
      L8_2 = 24
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L1_2 = PointLoop
      L1_2()
      L1_2 = Wait
      L2_2 = 25
      L1_2(L2_2)
      L1_2 = false
      L74_1 = L1_2
    end
  end
end
L75_1[L76_1] = L77_1
L75_1 = _ENV
L76_1 = "stopPointing"
function L77_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L74_1
    if not L1_2 then
      L1_2 = true
      L74_1 = L1_2
      L1_2 = Citizen
      L1_2 = L1_2.InvokeNative
      L2_2 = -3454236968921407114
      L3_2 = L0_2
      L4_2 = "Stop"
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetPedConfigFlag
      L2_2 = L0_2
      L3_2 = 36
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = ClearPedSecondaryTask
      L2_2 = L0_2
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 25
      L1_2(L2_2)
      L1_2 = false
      L74_1 = L1_2
    end
  end
end
L75_1[L76_1] = L77_1
L75_1 = _ENV
L76_1 = "RegisterKeyMapping"
L75_1 = L75_1[L76_1]
L76_1 = "puntadito"
L77_1 = "Finger aim"
L78_1 = "keyboard"
L79_1 = "b"
L75_1(L76_1, L77_1, L78_1, L79_1)
L75_1 = RegisterCommand
L76_1 = "puntadito"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Citizen
  L2_2 = L2_2.InvokeNative
  L3_2 = -7918206464511161279
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsPedRagdoll
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedDeadOrDying
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = IsPedFatallyInjured
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = IsPedInAnyVehicle
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          if not L2_2 then
            L2_2 = IsNuiFocused
            L2_2 = L2_2()
            if not L2_2 then
              L2_2 = startPointing
              L2_2()
          end
        end
      end
    end
  end
  else
    L2_2 = stopPointing
    L2_2()
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterCommand
L76_1 = "pointingstart"
function L77_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = Citizen
  L1_2 = L1_2.InvokeNative
  L2_2 = -7918206464511161279
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsPedRagdoll
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedDeadOrDying
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedFatallyInjured
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedInAnyVehicle
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsNuiFocused
            L1_2 = L1_2()
            if not L1_2 then
              L1_2 = startPointing
              L1_2()
            end
          end
        end
      end
    end
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterCommand
L76_1 = "pointingstop"
function L77_1()
  local L0_2, L1_2
  L0_2 = stopPointing
  L0_2()
end
L75_1(L76_1, L77_1)
L75_1 = _ENV
L76_1 = "GetSafeNetId"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L1_2 = NetworkGetEntityIsNetworked
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = NetworkRegisterEntityAsNetworked
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L1_2 = L1_2 + 1000
    while true do
      L2_2 = NetworkGetEntityIsNetworked
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = GetGameTimer
      L2_2 = L2_2()
      if not (L1_2 > L2_2) then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
  end
  L1_2 = NetworkGetEntityIsNetworked
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = ObjToNet
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 or 0 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = SetNetworkIdExistsOnAllMachines
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetNetworkIdCanMigrate
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  return L1_2
end
L75_1[L76_1] = L77_1
L75_1 = _ENV
L76_1 = "GetGroundZUltra"
function L77_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = StartShapeTestRay
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2 + 50.0
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2 - 300.0
  L10_2 = 1
  L11_2 = -1
  L12_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetShapeTestResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  if 1 == L5_2 then
    return L8_2
  end
  L9_2 = GetGroundZFor_3dCoord
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2 + 100.0
  L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
  if L9_2 then
    return L10_2
  end
  return A2_2
end
L75_1[L76_1] = L77_1
L75_1 = _ENV
L76_1 = "stopMusic"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = 1000
    L1_3 = A1_2
    if nil ~= L1_3 then
      L0_3 = A1_2
    end
    L1_3 = Wait
    L2_3 = L0_3 + 100
    L1_3(L2_3)
    L1_3 = exports
    L1_3 = L1_3.xsound
    L2_3 = L1_3
    L1_3 = L1_3.Destroy
    L3_3 = A0_2
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2)
end
L75_1[L76_1] = L77_1
function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L0_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L0_2
end
function L76_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = 0.0
  if nil == A0_2 then
    L1_2 = 3.0
  else
    L1_2 = A0_2
  end
  L2_2 = L75_1
  L2_2 = L2_2()
  L3_2 = -1
  L4_2 = -1
  L5_2 = nil
  L6_2 = false
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = PlayerId
  L8_2 = L8_2()
  if nil == L5_2 then
    L6_2 = true
    L9_2 = GetEntityCoords
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L5_2 = L9_2
  end
  L9_2 = 1
  L10_2 = #L2_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = GetPlayerPed
    L14_2 = L2_2[L12_2]
    L13_2 = L13_2(L14_2)
    if L6_2 then
      if not L6_2 then
        goto lbl_57
      end
      L14_2 = L2_2[L12_2]
      if L14_2 == L8_2 then
        goto lbl_57
      end
    end
    L14_2 = GetEntityCoords
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L15_2 = vector3
    L16_2 = L5_2.x
    L17_2 = L5_2.y
    L18_2 = L5_2.z
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L15_2 = L14_2 - L15_2
    L15_2 = #L15_2
    if -1 == L3_2 or L3_2 > L15_2 and L1_2 > L15_2 then
      L4_2 = L2_2[L12_2]
      L3_2 = L15_2
    end
    ::lbl_57::
  end
  return L4_2
end
L77_1 = _ENV
L78_1 = "testo3d"
function L79_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = A0_2
  L6_2 = "|"
  L7_2 = "~"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2 = L4_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 3000
    while true do
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      if not (L1_3 > L2_3) then
        break
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = nil
      L3_3 = A2_2
      if L3_3 then
        L2_3 = A2_2
      else
        L3_3 = A1_2
        if L3_3 then
          L3_3 = DoesEntityExist
          L4_3 = A1_2
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = GetEntityCoords
            L4_3 = A1_2
            L3_3 = L3_3(L4_3)
            L2_3 = L3_3
        end
        else
          L3_3 = GetEntityCoords
          L4_3 = PlayerPedId
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L4_3()
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L2_3 = L3_3
        end
      end
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      L3_3 = L3_3 - L0_3
      L4_3 = L3_3 / L1_3
      L5_3 = L4_3 * 0.3
      L5_3 = 0.5 + L5_3
      L6_3 = DrawText3D
      L7_3 = L2_3.x
      L8_3 = L2_3.y
      L9_3 = L2_3.z
      L9_3 = L9_3 + L5_3
      L10_3 = A0_2
      L11_3 = A3_2
      if not L11_3 then
        L11_3 = 0.45
      end
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    end
  end
  L4_2(L5_2)
end
L77_1[L78_1] = L79_1
L77_1 = _ENV
L78_1 = "testo3d2"
function L79_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = A0_2
  L6_2 = "|"
  L7_2 = "~"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2 = L4_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 1500
    L2_3 = 500
    while true do
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      L3_3 = L3_3 - L0_3
      if L1_3 <= L3_3 then
        break
      end
      L4_3 = nil
      L5_3 = A2_2
      if L5_3 then
        L4_3 = A2_2
      else
        L5_3 = A1_2
        if L5_3 then
          L5_3 = DoesEntityExist
          L6_3 = A1_2
          L5_3 = L5_3(L6_3)
          if L5_3 then
            L5_3 = GetEntityCoords
            L6_3 = A1_2
            L5_3 = L5_3(L6_3)
            L4_3 = L5_3
        end
        else
          L5_3 = GetEntityCoords
          L6_3 = PlayerPedId
          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L6_3()
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          L4_3 = L5_3
        end
      end
      L5_3 = L3_3 / L1_3
      L6_3 = L5_3 ^ 0.8
      L6_3 = L6_3 * 0.9
      L6_3 = 0.5 + L6_3
      L7_3 = 255
      if L2_3 <= L3_3 then
        L8_3 = L3_3 - L2_3
        L9_3 = L1_3 - L2_3
        L8_3 = L8_3 / L9_3
        L9_3 = math
        L9_3 = L9_3.floor
        L10_3 = 1.0
        L10_3 = L10_3 - L8_3
        L10_3 = 255 * L10_3
        L9_3 = L9_3(L10_3)
        L7_3 = L9_3
      end
      L8_3 = math
      L8_3 = L8_3.max
      L9_3 = 0
      L10_3 = math
      L10_3 = L10_3.min
      L11_3 = 255
      L12_3 = L7_3
      L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L10_3(L11_3, L12_3)
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L7_3 = L8_3
      L8_3 = World3dToScreen2d
      L9_3 = L4_3.x
      L10_3 = L4_3.y
      L11_3 = L4_3.z
      L11_3 = L11_3 + L6_3
      L8_3, L9_3, L10_3 = L8_3(L9_3, L10_3, L11_3)
      if L8_3 and L7_3 > 0 then
        L11_3 = SetTextScale
        L12_3 = A3_2
        if not L12_3 then
          L12_3 = 0.45
        end
        L13_3 = A3_2
        if not L13_3 then
          L13_3 = 0.45
        end
        L11_3(L12_3, L13_3)
        L11_3 = SetTextFont
        L12_3 = 4
        L11_3(L12_3)
        L11_3 = SetTextProportional
        L12_3 = 1
        L11_3(L12_3)
        L11_3 = SetTextCentre
        L12_3 = true
        L11_3(L12_3)
        L11_3 = SetTextColour
        L12_3 = 255
        L13_3 = 255
        L14_3 = 255
        L15_3 = L7_3
        L11_3(L12_3, L13_3, L14_3, L15_3)
        L11_3 = SetTextOutline
        L11_3()
        L11_3 = BeginTextCommandDisplayText
        L12_3 = "STRING"
        L11_3(L12_3)
        L11_3 = AddTextComponentSubstringPlayerName
        L12_3 = A0_2
        L11_3(L12_3)
        L11_3 = EndTextCommandDisplayText
        L12_3 = L9_3
        L13_3 = L10_3
        L11_3(L12_3, L13_3)
      end
    end
  end
  L4_2(L5_2)
end
L77_1[L78_1] = L79_1
L77_1 = 0
function L78_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = L77_1
    if 0 == L1_2 then
      L1_2 = 5
      L77_1 = L1_2
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3, L2_3
        while true do
          L0_3 = L77_1
          if not (L0_3 > 0) then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = ClampGameplayCamPitch
          L1_3 = -9.0
          L2_3 = 90.0
          L0_3(L1_3, L2_3)
          L0_3 = ClampGameplayCamYaw
          L1_3 = -1.0
          L2_3 = 1.0
          L0_3(L1_3, L2_3)
          L0_3 = L77_1
          L0_3 = L0_3 - 1
          L77_1 = L0_3
        end
      end
      L1_2(L2_2)
    end
  else
    L1_2 = L77_1
    if L1_2 > 0 then
      L1_2 = 0
      L77_1 = L1_2
    end
  end
end
L79_1 = _ENV
L80_1 = "vector3"
L79_1 = L79_1[L80_1]
L80_1 = 0.03
L81_1 = 0.03
L82_1 = 0.03
L79_1 = L79_1(L80_1, L81_1, L82_1)
L80_1 = _ENV
L81_1 = "vector3"
L80_1 = L80_1[L81_1]
L81_1 = -0.02
L82_1 = -0.02
L83_1 = -0.3
L80_1 = L80_1(L81_1, L82_1, L83_1)
L81_1 = false
L82_1 = _ENV
L83_1 = "veicolovicino"
L82_1[L83_1] = 0
L82_1 = {}
L83_1 = 2143084674
L84_1 = true
L82_1[L83_1] = L84_1
L83_1 = 2056476211
L84_1 = true
L82_1[L83_1] = L84_1
function L83_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = print
  L3_2 = "^1[RAY] MAIN OBJECT NON VALIDO:^7"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = false
  do return L2_2 end
  ::lbl_16::
  if A1_2 and 0 ~= A1_2 then
    L2_2 = DoesEntityExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_31
    end
  end
  L2_2 = print
  L3_2 = "^1[RAY] TARGET NON VALIDO:^7"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = false
  do return L2_2 end
  ::lbl_31::
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = 0.25
  L5_2 = vector3
  L6_2 = L2_2.x
  L7_2 = L3_2.x
  L7_2 = L7_2 * 0.15
  L6_2 = L6_2 + L7_2
  L7_2 = L2_2.y
  L8_2 = L3_2.y
  L8_2 = L8_2 * 0.15
  L7_2 = L7_2 + L8_2
  L8_2 = L2_2.z
  L8_2 = L8_2 + 0.1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vector3
  L7_2 = L5_2.x
  L8_2 = L5_2.y
  L9_2 = L5_2.z
  L9_2 = L9_2 - 15.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = StartShapeTestCapsule
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L11_2 = L6_2.x
  L12_2 = L6_2.y
  L13_2 = L6_2.z
  L14_2 = L4_2
  L15_2 = 22
  L16_2 = A0_2
  L17_2 = 7
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = GetShapeTestResult
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  L13_2 = false
  if 1 == L9_2 and 0 ~= L12_2 and L12_2 == A1_2 then
    L13_2 = true
  end
  if not L13_2 and 1 == L9_2 and 0 ~= L12_2 then
    L14_2 = IsEntityAPed
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = IsPedHuman
      L15_2 = L12_2
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = GetResourceState
        L15_2 = "striano_ridehorse"
        L14_2 = L14_2(L15_2)
        if "started" == L14_2 then
          L14_2 = exports
          L14_2 = L14_2.striano_ridehorse
          L15_2 = L14_2
          L14_2 = L14_2.myHorseHandler
          L14_2 = L14_2(L15_2)
          if L14_2 and L14_2 > 0 then
            L15_2 = DoesEntityExist
            L16_2 = L14_2
            L15_2 = L15_2(L16_2)
            if L15_2 then
              L15_2 = GetEntityCoords
              L16_2 = L12_2
              L15_2 = L15_2(L16_2)
              L16_2 = GetEntityCoords
              L17_2 = L14_2
              L16_2 = L16_2(L17_2)
              L17_2 = L15_2 - L16_2
              L17_2 = #L17_2
              L18_2 = DEBUG_RAYCAST
              if L18_2 then
                L18_2 = print
                L19_2 = "^6[HORSE CAPSULE]^7"
                L20_2 = "HIT PED:"
                L21_2 = L12_2
                L22_2 = "MYHORSE:"
                L23_2 = L14_2
                L24_2 = "DIST:"
                L25_2 = L17_2
                L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
              if L17_2 < 3.0 then
                L13_2 = true
                L18_2 = DEBUG_RAYCAST
                if L18_2 then
                  L18_2 = print
                  L19_2 = "^2[HORSE CAPSULE] SUCCESS^7"
                  L18_2(L19_2)
                end
              end
            end
          end
        end
      end
    end
  end
  if not L13_2 and 1 == L9_2 and 0 ~= L12_2 then
    L14_2 = GetResourceState
    L15_2 = "striano_boat"
    L14_2 = L14_2(L15_2)
    if "started" == L14_2 then
      L14_2 = exports
      L14_2 = L14_2.striano_boat
      L15_2 = L14_2
      L14_2 = L14_2.getMyBoat
      L14_2 = L14_2(L15_2)
      if L14_2 and L14_2 > 0 then
        L15_2 = DoesEntityExist
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        if L15_2 and A1_2 == L14_2 then
          L15_2 = GetEntityCoords
          L16_2 = L12_2
          L15_2 = L15_2(L16_2)
          L16_2 = GetEntityCoords
          L17_2 = L14_2
          L16_2 = L16_2(L17_2)
          L17_2 = L15_2 - L16_2
          L17_2 = #L17_2
          L18_2 = DEBUG_RAYCAST
          if L18_2 then
            L18_2 = print
            L19_2 = "^6[BOAT CAPSULE]^7"
            L20_2 = "HIT:"
            L21_2 = L12_2
            L22_2 = "MYBOAT:"
            L23_2 = L14_2
            L24_2 = "DIST:"
            L25_2 = L17_2
            L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          if L17_2 < 3.0 then
            L13_2 = true
            L18_2 = DEBUG_RAYCAST
            if L18_2 then
              L18_2 = print
              L19_2 = "^2[BOAT CAPSULE] SUCCESS^7"
              L18_2(L19_2)
            end
          end
        end
      end
    end
  end
  L14_2 = DEBUG_RAYCAST
  if L14_2 then
    L14_2 = print
    L15_2 = "^3[CAPSULE RESULT]^7"
    L16_2 = "TARGET:"
    L17_2 = A1_2
    L18_2 = "HIT:"
    L19_2 = L9_2
    L20_2 = "ENTITY HIT:"
    L21_2 = L12_2
    L22_2 = "SUCCESS:"
    L23_2 = L13_2
    L24_2 = "RADIUS:"
    L25_2 = L4_2
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L14_2 = CreateThread
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L0_3 = L0_3 + 1000
      while true do
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        if not (L0_3 > L1_3) then
          break
        end
        L1_3 = L13_2
        if L1_3 then
          L1_3 = DrawLine
          L2_3 = L5_2.x
          L3_3 = L5_2.y
          L4_3 = L5_2.z
          L5_3 = L6_2.x
          L6_3 = L6_2.y
          L7_3 = L6_2.z
          L8_3 = 0
          L9_3 = 255
          L10_3 = 0
          L11_3 = 255
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        else
          L1_3 = DrawLine
          L2_3 = L5_2.x
          L3_3 = L5_2.y
          L4_3 = L5_2.z
          L5_3 = L6_2.x
          L6_3 = L6_2.y
          L7_3 = L6_2.z
          L8_3 = 255
          L9_3 = 0
          L10_3 = 0
          L11_3 = 255
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        end
        L1_3 = L4_2
        L2_3 = DrawLine
        L3_3 = L5_2.x
        L3_3 = L3_3 + L1_3
        L4_3 = L5_2.y
        L5_3 = L5_2.z
        L6_3 = L6_2.x
        L6_3 = L6_3 + L1_3
        L7_3 = L6_2.y
        L8_3 = L6_2.z
        L9_3 = 255
        L10_3 = 255
        L11_3 = 255
        L12_3 = 180
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L2_3 = DrawLine
        L3_3 = L5_2.x
        L3_3 = L3_3 - L1_3
        L4_3 = L5_2.y
        L5_3 = L5_2.z
        L6_3 = L6_2.x
        L6_3 = L6_3 - L1_3
        L7_3 = L6_2.y
        L8_3 = L6_2.z
        L9_3 = 255
        L10_3 = 255
        L11_3 = 255
        L12_3 = 180
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L2_3 = DrawLine
        L3_3 = L5_2.x
        L4_3 = L5_2.y
        L4_3 = L4_3 + L1_3
        L5_3 = L5_2.z
        L6_3 = L6_2.x
        L7_3 = L6_2.y
        L7_3 = L7_3 + L1_3
        L8_3 = L6_2.z
        L9_3 = 255
        L10_3 = 255
        L11_3 = 255
        L12_3 = 180
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L2_3 = DrawLine
        L3_3 = L5_2.x
        L4_3 = L5_2.y
        L4_3 = L4_3 - L1_3
        L5_3 = L5_2.z
        L6_3 = L6_2.x
        L7_3 = L6_2.y
        L7_3 = L7_3 - L1_3
        L8_3 = L6_2.z
        L9_3 = 255
        L10_3 = 255
        L11_3 = 255
        L12_3 = 180
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L2_3 = DrawMarker
        L3_3 = 28
        L4_3 = L5_2.x
        L5_3 = L5_2.y
        L6_3 = L5_2.z
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.0
        L12_3 = 0.0
        L13_3 = L1_3 * 2.0
        L14_3 = L1_3 * 2.0
        L15_3 = L1_3 * 2.0
        L16_3 = 0
        L17_3 = 100
        L18_3 = 255
        L19_3 = 100
        L20_3 = false
        L21_3 = false
        L22_3 = 2
        L23_3 = false
        L24_3 = nil
        L25_3 = nil
        L26_3 = false
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
        L2_3 = DrawMarker
        L3_3 = 28
        L4_3 = L6_2.x
        L5_3 = L6_2.y
        L6_3 = L6_2.z
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.0
        L12_3 = 0.0
        L13_3 = L1_3 * 2.0
        L14_3 = L1_3 * 2.0
        L15_3 = L1_3 * 2.0
        L16_3 = 150
        L17_3 = 0
        L18_3 = 255
        L19_3 = 100
        L20_3 = false
        L21_3 = false
        L22_3 = 2
        L23_3 = false
        L24_3 = nil
        L25_3 = nil
        L26_3 = false
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
        L2_3 = L9_2
        if 1 == L2_3 then
          L2_3 = DrawMarker
          L3_3 = 28
          L4_3 = L10_2.x
          L5_3 = L10_2.y
          L6_3 = L10_2.z
          L7_3 = 0.0
          L8_3 = 0.0
          L9_3 = 0.0
          L10_3 = 0.0
          L11_3 = 0.0
          L12_3 = 0.0
          L13_3 = 0.12
          L14_3 = 0.12
          L15_3 = 0.12
          L16_3 = 255
          L17_3 = 255
          L18_3 = 0
          L19_3 = 255
          L20_3 = false
          L21_3 = false
          L22_3 = 2
          L23_3 = false
          L24_3 = nil
          L25_3 = nil
          L26_3 = false
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
        end
        L2_3 = Wait
        L3_3 = 0
        L2_3(L3_3)
      end
    end
    L14_2(L15_2)
  end
  return L13_2
end
L84_1 = _ENV
L85_1 = "VeicoloVicinoRaycast"
function L86_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_12::
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = 7.0
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 and 0 ~= A0_3 then
      L1_3 = A0_2
      if A0_3 ~= L1_3 then
        L1_3 = DoesEntityExist
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          goto lbl_14
        end
      end
    end
    do return end
    ::lbl_14::
    L1_3 = L1_2
    L2_3 = GetEntityCoords
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3 = L1_3 - L2_3
    L1_3 = #L1_3
    L2_3 = L3_2
    if L1_3 < L2_3 then
      L3_2 = L1_3
      L2_2 = A0_3
    end
  end
  L5_2 = ipairs
  L6_2 = GetGamePool
  L7_2 = "CVehicle"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = DoesEntityExist
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = Autorizzato
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = L4_2
        L12_2 = L10_2
        L11_2(L12_2)
      end
    end
  end
  L5_2 = ipairs
  L6_2 = GetGamePool
  L7_2 = "CObject"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 ~= A0_2 then
      L11_2 = DoesEntityExist
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = GetEntityModel
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = L82_1
        L12_2 = L12_2[L11_2]
        if L12_2 then
          L12_2 = L4_2
          L13_2 = L10_2
          L12_2(L13_2)
        end
      end
    end
  end
  L5_2 = GetResourceState
  L6_2 = "striano_ridehorse"
  L5_2 = L5_2(L6_2)
  if "started" == L5_2 then
    L5_2 = exports
    L5_2 = L5_2.striano_ridehorse
    L6_2 = L5_2
    L5_2 = L5_2.myHorseHandler
    L5_2 = L5_2(L6_2)
    if L5_2 and L5_2 > 0 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = L4_2
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
  L5_2 = GetResourceState
  L6_2 = "striano_boat"
  L5_2 = L5_2(L6_2)
  if "started" == L5_2 then
    L5_2 = exports
    L5_2 = L5_2.striano_boat
    L6_2 = L5_2
    L5_2 = L5_2.getMyBoat
    L5_2 = L5_2(L6_2)
    if L5_2 and L5_2 > 0 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = L4_2
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
  if 0 == L2_2 then
    L5_2 = 0
    return L5_2
  end
  L5_2 = DEBUG_RAYCAST
  if L5_2 then
    L5_2 = print
    L6_2 = "^3[CLOSEST]^7"
    L7_2 = "ENTITY:"
    L8_2 = L2_2
    L9_2 = "DIST:"
    L10_2 = L3_2
    L11_2 = "MODEL:"
    L12_2 = GetEntityModel
    L13_2 = L2_2
    L12_2 = L12_2(L13_2)
    L13_2 = "VEH:"
    L14_2 = IsEntityAVehicle
    L15_2 = L2_2
    L14_2 = L14_2(L15_2)
    L15_2 = "PED:"
    L16_2 = IsEntityAPed
    L17_2 = L2_2
    L16_2 = L16_2(L17_2)
    L17_2 = "VEHICLE-LIKE PROP:"
    L18_2 = GetEntityModel
    L19_2 = L2_2
    L18_2 = L18_2(L19_2)
    L19_2 = L82_1
    L18_2 = L19_2[L18_2]
    L18_2 = true == L18_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L5_2 = L83_1
  L6_2 = A0_2
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = 0
    return L5_2
  end
  return L2_2
end
L84_1[L85_1] = L86_1
L84_1 = _ENV
L85_1 = "PlayEffect"
function L86_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = 3.0
  if A3_2 then
    L4_2 = A3_2
  end
  L5_2 = HasNamedPtfxAssetLoaded
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestNamedPtfxAsset
    L6_2 = A0_2
    L5_2(L6_2)
  end
  while true do
    L5_2 = HasNamedPtfxAssetLoaded
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = SetPtfxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = UseParticleFxAssetNextCall
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = StartParticleFxLoopedAtCoord
    L1_3 = A1_2
    L2_3 = A2_2
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = L4_2
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L1_3 = Wait
    L2_3 = 2500
    L1_3(L2_3)
    L1_3 = StopParticleFxLooped
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = RemoveParticleFx
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2)
end
L84_1[L85_1] = L86_1
L84_1 = "prop_fishing_rod_01"
L85_1 = _ENV
L86_1 = "exports"
L85_1 = L85_1[L86_1]
L86_1 = "updateCannaPesca"
function L87_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L84_1 = L1_2
end
L85_1(L86_1, L87_1)
L85_1 = _ENV
L86_1 = "itsPlasticTrash"
function L87_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 3383496913 == L1_2 or 1832502141 == L1_2 or 683570518 == L1_2 or 746336278 == L1_2 or 1020618269 == L1_2 or 2976174023 == L1_2 or -1318793273 == L1_2 or -1122944124 == L1_2 or -598185919 == L1_2 or 2094167240 == L1_2 or 1450083036 == L1_2 or 242383520 == L1_2 or -1782124930 == L1_2 or -934709748 == L1_2 or -318675343 == L1_2 or 373968603 == L1_2 or -2034186658 == L1_2 or 128947832 == L1_2 or 1865096345 == L1_2 or 1683627545 == L1_2 or -1972908162 == L1_2 or 677373472 == L1_2 or 69171637 == L1_2 or 1318242715 == L1_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = false
    return L2_2
  end
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "CarriolaObj"
function L87_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if -1429789161 == L1_2 or 1150409138 == L1_2 or 1447001357 == L1_2 or 1430257647 == L1_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = false
    return L2_2
  end
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "GetDirectionFromRotation"
function L87_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = L1_2 / 180
  L2_2 = vector3
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = A0_2.z
  L4_2 = L1_2 * L4_2
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = A0_2.x
  L6_2 = L1_2 * L6_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2 * L4_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = A0_2.z
  L5_2 = L1_2 * L5_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = A0_2.x
  L7_2 = L1_2 * L7_2
  L6_2, L7_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = A0_2.x
  L6_2 = L1_2 * L6_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "mulNumber"
function L87_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L3_2 = L3_2 * A1_2
  L2_2.y = L3_2
  L3_2 = A0_2.z
  L3_2 = L3_2 * A1_2
  L2_2.z = L3_2
  return L2_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "addVector3"
function L87_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 + L4_2
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 + L4_2
  L2_2.y = L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 + L4_2
  L2_2.z = L3_2
  return L2_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "subVector3"
function L87_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L2_2.y = L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 - L4_2
  L2_2.z = L3_2
  return L2_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "degToRad"
function L87_1(A0_2)
  local L1_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = A0_2 * L1_2
  L1_2 = L1_2 / 180.0
  return L1_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "rotationToDirection"
function L87_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = degToRad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = degToRad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = {}
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L4_2.x = L5_2
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * L3_2
  L4_2.y = L5_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2.z = L5_2
  return L4_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "w2s"
function L87_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetScreenCoordFromWorldCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = {}
  L5_2 = L2_2 - 0.5
  L5_2 = L5_2 * 2
  L4_2.x = L5_2
  L5_2 = L3_2 - 0.5
  L5_2 = L5_2 * 2
  L4_2.y = L5_2
  L4_2.z = 0
  return L4_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "processCoordinates"
function L87_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetActiveScreenResolution
  L2_2, L3_2 = L2_2()
  L4_2 = A0_2 / L2_2
  L4_2 = L4_2 * 1.0
  L4_2 = L4_2 * 2
  L5_2 = 1
  L4_2 = L5_2 - L4_2
  L5_2 = A1_2 / L3_2
  L5_2 = L5_2 * 1.0
  L5_2 = L5_2 * 2
  L6_2 = 1
  L5_2 = L6_2 - L5_2
  if L4_2 > 0.0 then
    L4_2 = -L4_2
  else
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
  end
  if L5_2 > 0.0 then
    L5_2 = -L5_2
  else
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = {}
  L6_2.x = L4_2
  L6_2.y = L5_2
  return L6_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "s2w"
function L87_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L3_2 = GetGameplayCamRot
  L4_2 = 0
  L3_2 = L3_2(L4_2)
  L4_2 = rotationToDirection
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = addVector3
  L6_2 = L3_2
  L7_2 = {}
  L7_2.x = 10
  L7_2.y = 0
  L7_2.z = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = addVector3
  L7_2 = L3_2
  L8_2 = {}
  L8_2.x = -10
  L8_2.y = 0
  L8_2.z = 0
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = addVector3
  L8_2 = L3_2
  L9_2 = {}
  L9_2.x = 0
  L9_2.y = 0
  L9_2.z = -10
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = addVector3
  L9_2 = L3_2
  L10_2 = {}
  L10_2.x = 0
  L10_2.y = 0
  L10_2.z = 10
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = subVector3
  L10_2 = rotationToDirection
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  L11_2 = rotationToDirection
  L12_2 = L7_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L10_2 = subVector3
  L11_2 = rotationToDirection
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  L12_2 = rotationToDirection
  L13_2 = L6_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L12_2(L13_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L11_2 = degToRad
  L12_2 = L3_2.y
  L11_2 = L11_2(L12_2)
  L11_2 = -L11_2
  L12_2 = subVector3
  L13_2 = mulNumber
  L14_2 = L9_2
  L15_2 = math
  L15_2 = L15_2.cos
  L16_2 = L11_2
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L14_2 = mulNumber
  L15_2 = L10_2
  L16_2 = math
  L16_2 = L16_2.sin
  L17_2 = L11_2
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L16_2(L17_2)
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = addVector3
  L14_2 = mulNumber
  L15_2 = L9_2
  L16_2 = math
  L16_2 = L16_2.sin
  L17_2 = L11_2
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L16_2(L17_2)
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L15_2 = mulNumber
  L16_2 = L10_2
  L17_2 = math
  L17_2 = L17_2.cos
  L18_2 = L11_2
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L17_2(L18_2)
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L14_2 = addVector3
  L15_2 = addVector3
  L16_2 = addVector3
  L17_2 = A0_2
  L18_2 = mulNumber
  L19_2 = L4_2
  L20_2 = 10.0
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L17_2 = L12_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = w2s
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  L16_2 = undefined
  if L15_2 == L16_2 then
    L16_2 = addVector3
    L17_2 = A0_2
    L18_2 = mulNumber
    L19_2 = L4_2
    L20_2 = 10.0
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
    return L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  end
  L16_2 = addVector3
  L17_2 = A0_2
  L18_2 = mulNumber
  L19_2 = L4_2
  L20_2 = 10.0
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L17_2 = w2s
  L18_2 = L16_2
  L17_2 = L17_2(L18_2)
  if nil == L17_2 then
    L18_2 = addVector3
    L19_2 = A0_2
    L20_2 = mulNumber
    L21_2 = L4_2
    L22_2 = 10.0
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L20_2(L21_2, L22_2)
    return L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  end
  L18_2 = 0.001
  L19_2 = math
  L19_2 = L19_2.abs
  L20_2 = L15_2.x
  L21_2 = L17_2.x
  L20_2 = L20_2 - L21_2
  L19_2 = L19_2(L20_2)
  if not (L18_2 > L19_2) then
    L19_2 = math
    L19_2 = L19_2.abs
    L20_2 = L15_2.y
    L21_2 = L17_2.y
    L20_2 = L20_2 - L21_2
    L19_2 = L19_2(L20_2)
    if not (L18_2 > L19_2) then
      goto lbl_165
    end
  end
  L19_2 = addVector3
  L20_2 = A0_2
  L21_2 = mulNumber
  L22_2 = L4_2
  L23_2 = 10.0
  L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L21_2(L22_2, L23_2)
  do return L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2) end
  ::lbl_165::
  L19_2 = L17_2.x
  L19_2 = A1_2 - L19_2
  L20_2 = L15_2.x
  L21_2 = L17_2.x
  L20_2 = L20_2 - L21_2
  L19_2 = L19_2 / L20_2
  L20_2 = L17_2.y
  L20_2 = A2_2 - L20_2
  L21_2 = L15_2.y
  L22_2 = L17_2.y
  L21_2 = L21_2 - L22_2
  L20_2 = L20_2 / L21_2
  L21_2 = addVector3
  L22_2 = addVector3
  L23_2 = addVector3
  L24_2 = A0_2
  L25_2 = mulNumber
  L26_2 = L4_2
  L27_2 = 10.0
  L25_2, L26_2, L27_2 = L25_2(L26_2, L27_2)
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
  L24_2 = mulNumber
  L25_2 = L12_2
  L26_2 = L19_2
  L24_2, L25_2, L26_2, L27_2 = L24_2(L25_2, L26_2)
  L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
  L23_2 = mulNumber
  L24_2 = L13_2
  L25_2 = L20_2
  L23_2, L24_2, L25_2, L26_2, L27_2 = L23_2(L24_2, L25_2)
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  return L21_2
end
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "GlobalPos"
L87_1 = nil
L85_1[L86_1] = L87_1
L85_1 = _ENV
L86_1 = "lerpAngle"
function L87_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 + 180.0
  L3_2 = L3_2 % 360.0
  L3_2 = L3_2 - 180.0
  L4_2 = L3_2 * A2_2
  L4_2 = A0_2 + L4_2
  return L4_2
end
L85_1[L86_1] = L87_1
function L85_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = {}
  L1_2.a = "move_action@generic@core"
  L1_2.b = "idle_turn_r_90"
  L2_2 = IsEntityPlayingAnim
  L3_2 = L0_2
  L4_2 = L1_2.a
  L5_2 = L1_2.b
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = TaskPlayAnim
    L3_2 = L0_2
    L4_2 = L1_2.a
    L5_2 = L1_2.b
    L6_2 = 1.4
    L7_2 = 1.4
    L8_2 = 700
    L9_2 = 1
    L10_2 = 0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
function L86_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = {}
  L1_2.a = "move_action@generic@core"
  L1_2.b = "idle_turn_l_-90"
  L2_2 = IsEntityPlayingAnim
  L3_2 = L0_2
  L4_2 = L1_2.a
  L5_2 = L1_2.b
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = TaskPlayAnim
    L3_2 = L0_2
    L4_2 = L1_2.a
    L5_2 = L1_2.b
    L6_2 = 1.4
    L7_2 = 1.4
    L8_2 = 700
    L9_2 = 1
    L10_2 = 0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L87_1 = false
L88_1 = nil
L89_1 = 0
L90_1 = nil
function L91_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 - A0_2
  L2_2 = L2_2 + 180.0
  L2_2 = L2_2 % 360.0
  L2_2 = L2_2 - 180.0
  return L2_2
end
L92_1 = _ENV
L93_1 = "makeEntityFacePosSmooth"
function L94_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A0_2 and 0 ~= A0_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 and A1_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  if not A2_2 then
    A2_2 = 0.12
  end
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2.x
  L5_2 = L3_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = A1_2.y
  L6_2 = L3_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = 0.001
  if L6_2 < L7_2 then
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = 0.001
    if L6_2 < L7_2 then
      return
    end
  end
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = GetEntityHeading
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = L91_1
  L9_2 = L7_2
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = math
  L9_2 = L9_2.abs
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = 0.8
  L11_2 = 0.9
  L12_2 = 350
  if L9_2 <= L10_2 then
    L13_2 = SetEntityHeading
    L14_2 = A0_2
    L15_2 = L6_2
    L13_2(L14_2, L15_2)
    L90_1 = L6_2
    return
  end
  if L8_2 > 0 then
    L13_2 = "L"
    if L13_2 then
      goto lbl_75
    end
  end
  L13_2 = "R"
  ::lbl_75::
  L14_2 = GetGameTimer
  L14_2 = L14_2()
  L15_2 = true
  L16_2 = L90_1
  if L16_2 then
    L16_2 = math
    L16_2 = L16_2.abs
    L17_2 = L91_1
    L18_2 = L90_1
    L19_2 = L6_2
    L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L17_2 = 0.15
    L15_2 = L16_2 > L17_2
  end
  L90_1 = L6_2
  if L9_2 >= L11_2 and L15_2 then
    L16_2 = IsControlPressed
    L17_2 = 32
    L16_2 = L16_2(L17_2)
    if not L16_2 then
      L16_2 = IsDisabledControlPressed
      L17_2 = 0
      L18_2 = 32
      L16_2 = L16_2(L17_2, L18_2)
      if not L16_2 then
        L16_2 = L87_1
        if L16_2 then
          L16_2 = L88_1
          if L16_2 == L13_2 then
            L16_2 = L89_1
            L16_2 = L14_2 - L16_2
            if not (L12_2 <= L16_2) then
              goto lbl_131
            end
          end
        end
        L16_2 = true
        L87_1 = L16_2
        L88_1 = L13_2
        L89_1 = L14_2
        if "L" == L13_2 then
          L16_2 = L86_1
          L16_2()
        else
          L16_2 = L85_1
          L16_2()
        end
      end
    end
  end
  ::lbl_131::
  L16_2 = L8_2 * A2_2
  L16_2 = L7_2 + L16_2
  L17_2 = SetEntityHeading
  L18_2 = A0_2
  L19_2 = L16_2
  L17_2(L18_2, L19_2)
end
L92_1[L93_1] = L94_1
L92_1 = _ENV
L93_1 = "screenToWorld"
function L94_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = GetNuiCursorPosition
  L0_2, L1_2 = L0_2()
  L2_2 = L0_2
  L3_2 = L1_2
  L4_2 = GetGameplayCamCoord
  L4_2 = L4_2()
  L5_2 = processCoordinates
  L6_2 = L2_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = s2w
  L7_2 = L4_2
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = subVector3
  L8_2 = L6_2
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = addVector3
  L9_2 = L4_2
  L10_2 = mulNumber
  L11_2 = L7_2
  L12_2 = 0.05
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2, L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = addVector3
  L10_2 = L4_2
  L11_2 = mulNumber
  L12_2 = L7_2
  L13_2 = 300
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2(L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = nil
  L11_2 = _ENV
  L12_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L11_2 = L11_2[L12_2]
  L12_2 = L4_2
  L13_2 = vector3
  L14_2 = L9_2.x
  L15_2 = L9_2.y
  L16_2 = L9_2.z
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = -1
  L15_2 = PlayerPedId
  L15_2 = L15_2()
  L16_2 = 4
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = L11_2
  L11_2 = GetShapeTestResult
  L12_2 = L10_2
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
  if L12_2 then
    L16_2 = IsControlPressed
    L17_2 = 0
    L18_2 = 22
    L16_2 = L16_2(L17_2, L18_2)
    if not L16_2 then
      L16_2 = IsDisabledControlPressed
      L17_2 = 0
      L18_2 = 22
      L16_2 = L16_2(L17_2, L18_2)
      if not L16_2 then
        L16_2 = PlayerPedId
        L16_2 = L16_2()
        L17_2 = he
        if nil == L17_2 then
          L17_2 = whileEditorActiveDraw
          L18_2 = L13_2
          L17_2(L18_2)
        end
        L17_2 = makeEntityFacePosSmooth
        L18_2 = L16_2
        L19_2 = L13_2
        L20_2 = 0.03
        L17_2(L18_2, L19_2, L20_2)
        L17_2 = Citizen
        L17_2 = L17_2.InvokeNative
        L18_2 = -7918206464511161279
        L19_2 = L16_2
        L17_2 = L17_2(L18_2, L19_2)
        if not L17_2 then
          L17_2 = ClearPedTasks
          L18_2 = L16_2
          L17_2(L18_2)
          L17_2 = ExecuteCommand
          L18_2 = "pointingstart"
          L17_2(L18_2)
        end
        GlobalPos = L13_2
        return L13_2
    end
  end
  else
    L16_2 = nil
    return L16_2
  end
end
L92_1[L93_1] = L94_1
function L92_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetEntityHeading
  L8_2 = A0_2
  L9_2 = L6_2 + 10.0
  L7_2(L8_2, L9_2)
end
function L93_1()
  local L0_2, L1_2
  L0_2 = CannaDaPesca
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = CannaDaPesca
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DetachEntity
      L1_2 = CannaDaPesca
      L0_2(L1_2)
      L0_2 = SetEntityAsMissionEntity
      L1_2 = CannaDaPesca
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = CannaDaPesca
      L0_2(L1_2)
      CannaDaPesca = nil
      L0_2 = print
      L1_2 = "Canna trovata ed eliminata."
      L0_2(L1_2)
    end
  end
end
L94_1 = {}
function L95_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = L94_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L94_1
    L5_2 = L5_2[L4_2]
    L5_2 = A0_2 - L5_2
    L5_2 = #L5_2
    L6_2 = 1.5
    if L5_2 < L6_2 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L96_1 = _ENV
L97_1 = "CreateThread"
L96_1 = L96_1[L97_1]
function L97_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = IsEntityInWater
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    if L0_2 then
      L0_2 = CanHandFish
      L0_2 = L0_2()
      if L0_2 then
        L0_2 = Citizen
        L0_2 = L0_2.InvokeNative
        L1_2 = -7918206464511161279
        L2_2 = PlayerPedId
        L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L2_2()
        L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        if not L0_2 then
          L0_2 = IsEntityPlayingAnim
          L1_2 = PlayerPedId
          L1_2 = L1_2()
          L2_2 = "missrappel"
          L3_2 = "rope_idle"
          L4_2 = 3
          L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
          if not L0_2 then
            L0_2 = IsEntityPlayingAnim
            L1_2 = PlayerPedId
            L1_2 = L1_2()
            L2_2 = "abigail_mcs_2-5"
            L3_2 = "player_zero_dual-5"
            L4_2 = 3
            L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
            if not L0_2 then
              L0_2 = IsEntityPlayingAnim
              L1_2 = PlayerPedId
              L1_2 = L1_2()
              L2_2 = "impexp_int-0"
              L3_2 = "mp_m_waremech_01_dual-0"
              L4_2 = 3
              L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
              if not L0_2 then
                L0_2 = OutLockedAreaHandFish
                L0_2 = L0_2()
                if L0_2 then
                  L0_2 = ultimoTrovato
                  if nil == L0_2 then
                    L0_2 = GetEntityCoords
                    L1_2 = PlayerPedId
                    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L1_2()
                    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                    L1_2 = L0_2.x
                    L2_2 = L0_2.y
                    L3_2 = -5.0
                    L4_2 = 5.0
                    L5_2 = math
                    L5_2 = L5_2.random
                    L6_2 = L3_2
                    L7_2 = L4_2
                    L5_2 = L5_2(L6_2, L7_2)
                    L5_2 = L1_2 + L5_2
                    L6_2 = math
                    L6_2 = L6_2.random
                    L7_2 = L3_2
                    L8_2 = L4_2
                    L6_2 = L6_2(L7_2, L8_2)
                    L6_2 = L2_2 + L6_2
                    L7_2 = L0_2.z
                    L8_2 = RequestCollisionAtCoord
                    L9_2 = L5_2
                    L10_2 = L6_2
                    L11_2 = L7_2
                    L8_2(L9_2, L10_2, L11_2)
                    L8_2 = vector3
                    L9_2 = L5_2
                    L10_2 = L6_2
                    L11_2 = L7_2
                    L8_2 = L8_2(L9_2, L10_2, L11_2)
                    ultimoTrovato = L8_2
                    timerFish = 500
                    L8_2 = GetGameTimer
                    L8_2 = L8_2()
                    L9_2 = timerFish
                    L9_2 = L8_2 + L9_2
                    L10_2 = Wait
                    L11_2 = 1000
                    L10_2(L11_2)
                  else
                    L0_2 = L95_1
                    L1_2 = ultimoTrovato
                    L0_2 = L0_2(L1_2)
                    if not L0_2 then
                      L0_2 = GetGameTimer
                      L0_2 = L0_2()
                      L1_2 = endFish
                      if not L1_2 then
                        L1_2 = L0_2
                      end
                      L1_2 = L1_2 - L0_2
                      if L1_2 < 0 then
                        L1_2 = 0
                      end
                      L2_2 = math
                      L2_2 = L2_2.ceil
                      L3_2 = L1_2 / 10
                      L2_2 = L2_2(L3_2)
                      timerFish = L2_2
                      L2_2 = ultimoTrovato
                      if nil ~= L2_2 then
                        L2_2 = GetEntityCoords
                        L3_2 = PlayerPedId
                        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L3_2()
                        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        L3_2 = ultimoTrovato
                        L2_2 = L2_2 - L3_2
                        L2_2 = #L2_2
                        if L2_2 < 7.0 then
                          L2_2 = timerFish
                          if L2_2 > 0 then
                            L2_2 = timerFish
                            if L2_2 > 0 then
                              L2_2 = vector3
                              L3_2 = 255
                              L4_2 = 255
                              L5_2 = 255
                              L2_2 = L2_2(L3_2, L4_2, L5_2)
                              L3_2 = GetEntityCoords
                              L4_2 = PlayerPedId
                              L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L4_2()
                              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                              L4_2 = ultimoTrovato
                              L3_2 = L3_2 - L4_2
                              L3_2 = #L3_2
                              L4_2 = 1.5
                              if L3_2 < L4_2 then
                                L3_2 = vector3
                                L4_2 = 240
                                L5_2 = 255
                                L6_2 = 0
                                L3_2 = L3_2(L4_2, L5_2, L6_2)
                                L2_2 = L3_2
                              end
                              L3_2 = DrawMarker
                              L4_2 = 28
                              L5_2 = ultimoTrovato
                              L5_2 = L5_2.x
                              L6_2 = ultimoTrovato
                              L6_2 = L6_2.y
                              L7_2 = ultimoTrovato
                              L7_2 = L7_2.z
                              L7_2 = L7_2 + 0.5
                              L8_2 = 0.0
                              L9_2 = 0.0
                              L10_2 = 0.0
                              L11_2 = 0.0
                              L12_2 = 0.0
                              L13_2 = 0.0
                              L14_2 = 0.1
                              L15_2 = 0.1
                              L16_2 = 0.1
                              L17_2 = L2_2
                              L18_2 = 255
                              L19_2 = false
                              L20_2 = true
                              L21_2 = 2
                              L22_2 = nil
                              L23_2 = nil
                              L24_2 = false
                              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                              L3_2 = GetEntityCoords
                              L4_2 = PlayerPedId
                              L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L4_2()
                              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                              L4_2 = ultimoTrovato
                              L3_2 = L3_2 - L4_2
                              L3_2 = #L3_2
                              L4_2 = 1.5
                              if L3_2 < L4_2 then
                                L3_2 = Draw3D
                                L4_2 = ultimoTrovato
                                L4_2 = L4_2.x
                                L5_2 = ultimoTrovato
                                L5_2 = L5_2.y
                                L6_2 = ultimoTrovato
                                L6_2 = L6_2.z
                                L7_2 = "~y~~h~E~h~ ~w~Catch! ("
                                L8_2 = timerFish
                                L9_2 = ")"
                                L7_2 = L7_2 .. L8_2 .. L9_2
                                L3_2(L4_2, L5_2, L6_2, L7_2)
                                L3_2 = IsControlJustPressed
                                L4_2 = 1
                                L5_2 = 38
                                L3_2 = L3_2(L4_2, L5_2)
                                if L3_2 then
                                  L3_2 = table
                                  L3_2 = L3_2.insert
                                  L4_2 = L94_1
                                  L5_2 = ultimoTrovato
                                  L3_2(L4_2, L5_2)
                                  L3_2 = TakeFishHand
                                  L3_2()
                                  ultimoTrovato = nil
                                  L3_2 = Wait
                                  L4_2 = 5000
                                  L3_2(L4_2)
                                end
                              else
                                L3_2 = Draw3D
                                L4_2 = ultimoTrovato
                                L4_2 = L4_2.x
                                L5_2 = ultimoTrovato
                                L5_2 = L5_2.y
                                L6_2 = ultimoTrovato
                                L6_2 = L6_2.z
                                L7_2 = "~h~E~h~ Catch! ("
                                L8_2 = timerFish
                                L9_2 = ")"
                                L7_2 = L7_2 .. L8_2 .. L9_2
                                L3_2(L4_2, L5_2, L6_2, L7_2)
                              end
                            end
                        end
                      end
                      else
                        timerFish = 0
                        ultimoTrovato = nil
                      end
                      L2_2 = timerFish
                      if 0 == L2_2 then
                        L2_2 = Wait
                        L3_2 = 1000
                        L2_2(L3_2)
                      end
                    end
                  end
                end
            end
          end
        end
        else
          timerFish = 0
          ultimoTrovato = nil
          L0_2 = Wait
          L1_2 = 1000
          L0_2(L1_2)
        end
      else
        L0_2 = Wait
        L1_2 = 1000
        L0_2(L1_2)
      end
    else
      L0_2 = Wait
      L1_2 = 5000
      L0_2(L1_2)
    end
  end
end
L96_1(L97_1)
L96_1 = _ENV
L97_1 = "TakeFishHand"
function L98_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = faiAnimPool
  L1_2 = "rcmextreme3"
  L2_2 = "idle"
  L3_2 = -1
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = faiAnimPool
  L1_2 = "missexile3"
  L2_2 = "ex03_dingy_search_case_a_michael"
  L3_2 = -1
  L4_2 = 49
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = Wait
  L1_2 = 2000
  L0_2(L1_2)
  L0_2 = PescaCheck
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = ClearPedTasks
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2()
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = faiAnimPool
    L1_2 = "misscommon@response"
    L2_2 = "numbnuts"
    L3_2 = 3500
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = FreezeEntityPosition
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = onHandFishEnd
    L0_2()
  else
    L0_2 = math
    L0_2 = L0_2.random
    L1_2 = 1
    L2_2 = 4
    L0_2 = L0_2(L1_2, L2_2)
    if 1 ~= L0_2 then
      L1_2 = PepiteFunc
      L1_2()
      L1_2 = FreezeEntityPosition
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = faiAnimPool
      L2_2 = "gestures@f@standing@casual"
      L3_2 = "gesture_pleased"
      L4_2 = 5
      L5_2 = 1
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = faiAnimPool
      L2_2 = "anim@mp_snowball"
      L3_2 = "pickup_snowball"
      L4_2 = 3500
      L5_2 = 49
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = Wait
      L2_2 = 900
      L1_2(L2_2)
      L1_2 = TakeTheFishHandmade
      L1_2()
    else
      L1_2 = faiAnimPool
      L2_2 = "gestures@f@standing@casual"
      L3_2 = "gesture_pleased"
      L4_2 = 5
      L5_2 = 1
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = faiAnimPool
      L2_2 = "anim@mp_snowball"
      L3_2 = "pickup_snowball"
      L4_2 = 3500
      L5_2 = 49
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = Wait
      L2_2 = 900
      L1_2(L2_2)
      L1_2 = ClearPedTasks
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = faiAnimPool
      L2_2 = "misscommon@response"
      L3_2 = "numbnuts"
      L4_2 = 3500
      L5_2 = 49
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = FreezeEntityPosition
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = onHandFishEnd
      L1_2()
    end
    L1_2 = Wait
    L2_2 = 3000
    L1_2(L2_2)
  end
end
L96_1[L97_1] = L98_1
L96_1 = false
function L97_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = L96_1
      if not L0_3 then
        break
      end
      L0_3 = DisableKeysWhileFish
      L0_3()
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
L98_1 = RegisterNetEvent
L99_1 = "fivem_netstatus"
L98_1(L99_1)
L98_1 = AddEventHandler
L99_1 = "fivem_netstatus"
function L100_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = SetEntityCollision
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
    return
  end
end
L98_1(L99_1, L100_1)
L98_1 = RegisterNetEvent
L99_1 = "IniziaPesca"
L98_1(L99_1)
L98_1 = AddEventHandler
L99_1 = "IniziaPesca"
function L100_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  L0_2 = pescando
  if not L0_2 then
    L0_2 = modalitaPesci
    if not L0_2 then
      L0_2 = cassaChePorto
      if nil == L0_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedFatallyInjured
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedSwimming
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedSwimmingUnderWater
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedInAnyVehicle
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_39
        end
      end
    end
  end
  L1_2 = testo3d
  L2_2 = "You can't use rod now."
  L1_2(L2_2)
  L1_2 = FinePesca
  L1_2()
  do return end
  ::lbl_39::
  L1_2 = 0
  L2_2 = nil
  L3_2 = 1
  L4_2 = FishermanArea
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = FishermanArea
    L2_2 = L7_2[L6_2]
    L7_2 = GetEntityCoords
    L8_2 = L0_2
    L7_2 = L7_2(L8_2)
    L8_2 = L2_2.coords
    L7_2 = L7_2 - L8_2
    L7_2 = #L7_2
    L8_2 = L2_2.grandezzaArea
    L8_2 = L8_2 * 2.0
    if L7_2 < L8_2 then
      L1_2 = L6_2
      break
    end
  end
  L3_2 = 0
  L4_2 = PescaCheck
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = onUseRod
    L4_2()
    if 0 == L1_2 then
      L4_2 = testo3d
      L5_2 = "No fisherman area detected."
      L4_2(L5_2)
      L4_2 = ExecuteCommand
      L5_2 = "e mappa"
      L4_2(L5_2)
      while 0 == L1_2 do
        L4_2 = Wait
        L5_2 = 0
        L4_2(L5_2)
        L4_2 = ShowFishermanArea
        L5_2 = L0_2
        L4_2(L5_2)
        L4_2 = draw
        L5_2 = 73
        L6_2 = "Close Fisherman area finder."
        L4_2(L5_2, L6_2)
        L4_2 = IsControlPressed
        L5_2 = 0
        L6_2 = 73
        L4_2 = L4_2(L5_2, L6_2)
        if not L4_2 then
          L4_2 = IsDisabledControlPressed
          L5_2 = 0
          L6_2 = 73
          L4_2 = L4_2(L5_2, L6_2)
          if not L4_2 then
            goto lbl_105
          end
        end
        L4_2 = FinePesca
        L4_2()
        do return end
        ::lbl_105::
        if 0 == L1_2 then
          L4_2 = GetGameTimer
          L4_2 = L4_2()
          L4_2 = L4_2 - L3_2
          L5_2 = 3000
          if L4_2 >= L5_2 then
            L4_2 = GetGameTimer
            L4_2 = L4_2()
            L3_2 = L4_2
            L4_2 = 1
            L5_2 = FishermanArea
            L5_2 = #L5_2
            L6_2 = 1
            for L7_2 = L4_2, L5_2, L6_2 do
              L8_2 = FishermanArea
              L2_2 = L8_2[L7_2]
              L8_2 = GetEntityCoords
              L9_2 = L0_2
              L8_2 = L8_2(L9_2)
              L9_2 = L2_2.coords
              L8_2 = L8_2 - L9_2
              L8_2 = #L8_2
              L9_2 = L2_2.grandezzaArea
              L9_2 = L9_2 * 2.0
              if L8_2 < L9_2 then
                pescando = false
                L1_2 = L7_2
                L8_2 = testo3d
                L9_2 = "Fisherman area detected!"
                L8_2(L9_2)
                L8_2 = Wait
                L9_2 = 25
                L8_2(L9_2)
                break
              end
            end
          end
        end
      end
    end
    if 0 == L1_2 then
      return
    end
    L4_2 = ClearPedTasks
    L5_2 = L0_2
    L4_2(L5_2)
    L4_2 = ExecuteCommand
    L5_2 = "e c"
    L4_2(L5_2)
    L4_2 = faiAnimPool
    L5_2 = "amb@world_human_stand_fishing@idle_a"
    L6_2 = "idle_a"
    L7_2 = -1
    L8_2 = 49
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = L19_1
    L5_2 = L84_1
    L6_2 = 18905
    L7_2 = 0.11
    L8_2 = 0.04
    L9_2 = 0.03
    L10_2 = -136.0
    L11_2 = -78.0
    L12_2 = 8.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = L2_2.coords
    L4_2 = L4_2.x
    L5_2 = L2_2.coords
    L5_2 = L5_2.y
    L6_2 = FishermanArea
    L6_2 = L6_2[L1_2]
    L6_2 = L6_2.grandezzaArea
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = FishermanArea
    L7_2 = L7_2[L1_2]
    L7_2 = L7_2.grandezzaArea
    L7_2 = L7_2 / 2
    L8_2 = nil
    L9_2 = nil
    L10_2 = false
    while not L10_2 do
      L11_2 = math
      L11_2 = L11_2.random
      L11_2 = L11_2()
      L12_2 = L7_2 - L6_2
      L11_2 = L11_2 * L12_2
      L11_2 = L11_2 + L6_2
      L8_2 = L4_2 + L11_2
      L11_2 = math
      L11_2 = L11_2.random
      L11_2 = L11_2()
      L12_2 = L7_2 - L6_2
      L11_2 = L11_2 * L12_2
      L11_2 = L11_2 + L6_2
      L9_2 = L5_2 + L11_2
      L11_2 = TestProbeAgainstWater
      L12_2 = L8_2
      L13_2 = L9_2
      L14_2 = GetEntityCoords
      L15_2 = L0_2
      L14_2 = L14_2(L15_2)
      L14_2 = L14_2.z
      L14_2 = L14_2 + 1.0
      L15_2 = L8_2
      L16_2 = L9_2
      L17_2 = GetEntityCoords
      L18_2 = L0_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.z
      L17_2 = L17_2 - 30.0
      L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      if L11_2 then
        L13_2 = vector3
        L14_2 = L8_2
        L15_2 = L9_2
        L16_2 = L12_2.z
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        takeBall = L13_2
        L10_2 = true
      end
      L13_2 = Wait
      L14_2 = 0
      L13_2(L14_2)
    end
    pescando = true
    while true do
      L11_2 = pescando
      if not L11_2 then
        break
      end
      L11_2 = IsPedFatallyInjured
      L12_2 = L0_2
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        L11_2 = IsPedSwimming
        L12_2 = L0_2
        L11_2 = L11_2(L12_2)
        if not L11_2 then
          L11_2 = IsPedSwimmingUnderWater
          L12_2 = L0_2
          L11_2 = L11_2(L12_2)
          if not L11_2 then
            L11_2 = CannaDaPesca
            if nil ~= L11_2 then
              L11_2 = CannaDaPesca
              if nil == L11_2 then
                goto lbl_277
              end
              L11_2 = DoesEntityExist
              L12_2 = CannaDaPesca
              L11_2 = L11_2(L12_2)
              if L11_2 then
                goto lbl_277
              end
            end
          end
        end
      end
      L11_2 = FinePesca
      L11_2()
      do return end
      ::lbl_277::
      L11_2 = DisableKeysWhileFish
      L11_2()
      L11_2 = EnableControlAction
      L12_2 = 0
      L13_2 = 1
      L11_2(L12_2, L13_2)
      L11_2 = EnableControlAction
      L12_2 = 0
      L13_2 = 2
      L11_2(L12_2, L13_2)
      if 0 == L1_2 then
        L11_2 = GetGameTimer
        L11_2 = L11_2()
        L12_2 = lastCheck
        L11_2 = L11_2 - L12_2
        L12_2 = 3000
        if L11_2 >= L12_2 then
          L11_2 = GetGameTimer
          L11_2 = L11_2()
          L3_2 = L11_2
          L11_2 = 1
          L12_2 = FishermanArea
          L12_2 = #L12_2
          L13_2 = 1
          for L14_2 = L11_2, L12_2, L13_2 do
            L15_2 = FishermanArea
            L2_2 = L15_2[L14_2]
            L15_2 = GetEntityCoords
            L16_2 = L0_2
            L15_2 = L15_2(L16_2)
            L16_2 = L2_2.coords
            L15_2 = L15_2 - L16_2
            L15_2 = #L15_2
            L16_2 = L2_2.grandezzaArea
            L16_2 = L16_2 * 2.0
            if L15_2 < L16_2 then
              pescando = false
              L1_2 = L14_2
              L15_2 = Wait
              L16_2 = 25
              L15_2(L16_2)
              break
            end
          end
        end
      end
      L11_2 = CannaDaPesca
      if nil ~= L11_2 then
        L11_2 = DoesEntityExist
        L12_2 = CannaDaPesca
        L11_2 = L11_2(L12_2)
        if not L11_2 then
          L11_2 = FinePesca
          L11_2()
          return
        end
      end
      L11_2 = GetFollowPedCamViewMode
      L11_2 = L11_2()
      if 4 == L11_2 then
        L11_2 = SetFollowPedCamViewMode
        L12_2 = 0
        L11_2(L12_2)
      end
      L11_2 = AmoLanciato
      if not L11_2 then
        L11_2 = GetEntitySpeed
        L12_2 = L0_2
        L11_2 = L11_2(L12_2)
        L12_2 = 0.1
        if L11_2 < L12_2 then
          L11_2 = SetEntityHeading
          L12_2 = L0_2
          L13_2 = GetGameplayCamRot
          L14_2 = 0
          L13_2 = L13_2(L14_2)
          L13_2 = L13_2.z
          L11_2(L12_2, L13_2)
          L11_2 = SetEntityHeading
          L12_2 = L0_2
          L13_2 = GetGameplayCamRot
          L14_2 = 0
          L13_2 = L13_2(L14_2)
          L13_2 = L13_2.z
          L11_2(L12_2, L13_2)
        end
      end
      L11_2 = IsControlJustPressed
      L12_2 = 0
      L13_2 = 73
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        pescando = false
      end
      L11_2 = waterCheck
      L12_2 = distanzaRotellina
      L11_2, L12_2 = L11_2(L12_2)
      L13_2 = 4.0
      L14_2 = AmoLanciato
      if not L14_2 then
        L14_2 = IsDisabledControlJustPressed
        L15_2 = 0
        L16_2 = 25
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          L14_2 = IsControlJustPressed
          L15_2 = 0
          L16_2 = 25
          L14_2 = L14_2(L15_2, L16_2)
          if not L14_2 then
            goto lbl_455
          end
        end
        L14_2 = PlaySoundFrontend
        L15_2 = -1
        L16_2 = "Boss_Message_Orange"
        L17_2 = "GTAO_Boss_Goons_FM_Soundset"
        L18_2 = 0
        L14_2(L15_2, L16_2, L17_2, L18_2)
        L14_2 = false
        while not L14_2 do
          L15_2 = math
          L15_2 = L15_2.random
          L15_2 = L15_2()
          L16_2 = L7_2 - L6_2
          L15_2 = L15_2 * L16_2
          L15_2 = L15_2 + L6_2
          L8_2 = L4_2 + L15_2
          L15_2 = math
          L15_2 = L15_2.random
          L15_2 = L15_2()
          L16_2 = L7_2 - L6_2
          L15_2 = L15_2 * L16_2
          L15_2 = L15_2 + L6_2
          L9_2 = L5_2 + L15_2
          L15_2 = TestProbeAgainstWater
          L16_2 = L8_2
          L17_2 = L9_2
          L18_2 = GetEntityCoords
          L19_2 = L0_2
          L18_2 = L18_2(L19_2)
          L18_2 = L18_2.z
          L18_2 = L18_2 + 1.0
          L19_2 = L8_2
          L20_2 = L9_2
          L21_2 = GetEntityCoords
          L22_2 = L0_2
          L21_2 = L21_2(L22_2)
          L21_2 = L21_2.z
          L21_2 = L21_2 - 30.0
          L15_2, L16_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          if L15_2 then
            L17_2 = vector3
            L18_2 = L8_2
            L19_2 = L9_2
            L20_2 = L16_2.z
            L17_2 = L17_2(L18_2, L19_2, L20_2)
            takeBall = L17_2
            L14_2 = true
          end
          L17_2 = Wait
          L18_2 = 0
          L17_2(L18_2)
        end
      end
      ::lbl_455::
      if not L11_2 then
        L14_2 = AmoLanciato
        if not L14_2 then
          goto lbl_786
        end
      end
      L14_2 = GetEntitySpeed
      L15_2 = L0_2
      L14_2 = L14_2(L15_2)
      L15_2 = 0.1
      if L14_2 < L15_2 then
        L14_2 = AmoLanciato
        if not L14_2 then
          L14_2 = whileFishing_tx
          L14_2()
        else
          L14_2 = whileFishing_2_tx
          L14_2()
        end
      end
      L14_2 = takeBall
      if nil ~= L14_2 then
        L14_2 = AmoLanciato
        if not L14_2 then
          L14_2 = DrawMarker
          L15_2 = 28
          L16_2 = L12_2.x
          L17_2 = L12_2.y
          L18_2 = L12_2.z
          L18_2 = L18_2 + 0.3
          L19_2 = 0.0
          L20_2 = 0.0
          L21_2 = 0.0
          L22_2 = 0.0
          L23_2 = 0.0
          L24_2 = 0.0
          L25_2 = 0.3
          L26_2 = 0.3
          L27_2 = 0.3
          L28_2 = 200
          L29_2 = 200
          L30_2 = 255
          L31_2 = 150
          L32_2 = false
          L33_2 = true
          L34_2 = 2
          L35_2 = nil
          L36_2 = nil
          L37_2 = false
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
          L14_2 = DrawMarker
          L15_2 = 1
          L16_2 = L12_2.x
          L17_2 = L12_2.y
          L18_2 = L12_2.z
          L18_2 = L18_2 + 0.3
          L19_2 = 0.0
          L20_2 = 0.0
          L21_2 = 0.0
          L22_2 = 0.0
          L23_2 = 0.0
          L24_2 = 0.0
          L25_2 = 0.1
          L26_2 = 0.1
          L27_2 = 10.0
          L28_2 = 200
          L29_2 = 200
          L30_2 = 255
          L31_2 = 50
          L32_2 = false
          L33_2 = true
          L34_2 = 2
          L35_2 = nil
          L36_2 = nil
          L37_2 = false
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
          L14_2 = takeBall
          L14_2 = L12_2 - L14_2
          L14_2 = #L14_2
          if L13_2 > L14_2 then
            L14_2 = DrawMarker
            L15_2 = 28
            L16_2 = takeBall
            L16_2 = L16_2.x
            L17_2 = takeBall
            L17_2 = L17_2.y
            L18_2 = takeBall
            L18_2 = L18_2.z
            L18_2 = L18_2 + 0.3
            L19_2 = 0.0
            L20_2 = 0.0
            L21_2 = 0.0
            L22_2 = 0.0
            L23_2 = 0.0
            L24_2 = 0.0
            L25_2 = 3.3
            L26_2 = 3.3
            L27_2 = 3.3
            L28_2 = 200
            L29_2 = 200
            L30_2 = 255
            L31_2 = 150
            L32_2 = false
            L33_2 = true
            L34_2 = 2
            L35_2 = nil
            L36_2 = nil
            L37_2 = false
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
            L14_2 = suonoTrovato
            if not L14_2 then
              suonoTrovato = true
              L14_2 = PlaySoundFrontend
              L15_2 = -1
              L16_2 = "ATM_WINDOW"
              L17_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              L18_2 = 1
              L14_2(L15_2, L16_2, L17_2, L18_2)
              L14_2 = vector3
              L15_2 = takeBall
              L15_2 = L15_2.x
              L16_2 = takeBall
              L16_2 = L16_2.y
              L17_2 = L12_2.z
              L17_2 = L17_2 + 0.5
              L14_2 = L14_2(L15_2, L16_2, L17_2)
              trovatoAmo = L14_2
            end
          else
            L14_2 = DrawMarker
            L15_2 = 28
            L16_2 = takeBall
            L16_2 = L16_2.x
            L17_2 = takeBall
            L17_2 = L17_2.y
            L18_2 = takeBall
            L18_2 = L18_2.z
            L18_2 = L18_2 + 0.3
            L19_2 = 0.0
            L20_2 = 0.0
            L21_2 = 0.0
            L22_2 = 0.0
            L23_2 = 0.0
            L24_2 = 0.0
            L25_2 = 3.3
            L26_2 = 3.3
            L27_2 = 3.3
            L28_2 = 255
            L29_2 = 255
            L30_2 = 255
            L31_2 = 150
            L32_2 = false
            L33_2 = true
            L34_2 = 2
            L35_2 = nil
            L36_2 = nil
            L37_2 = false
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
            L14_2 = suonoTrovato
            if L14_2 then
              suonoTrovato = false
              trovatoAmo = nil
            end
          end
        end
        L14_2 = IsDisabledControlJustPressed
        L15_2 = 0
        L16_2 = 24
        L14_2 = L14_2(L15_2, L16_2)
        if L14_2 then
          L14_2 = GetEntitySpeed
          L15_2 = L0_2
          L14_2 = L14_2(L15_2)
          L15_2 = 0.1
          if L14_2 < L15_2 then
            L14_2 = PlaySoundFrontend
            L15_2 = -1
            L16_2 = "1st_Person_Transition"
            L17_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
            L18_2 = 1
            L14_2(L15_2, L16_2, L17_2, L18_2)
            L14_2 = AmoLanciato
            if not L14_2 then
              L14_2 = true
              L96_1 = L14_2
              L14_2 = L97_1
              L14_2()
              L14_2 = L92_1
              L15_2 = L0_2
              L16_2 = takeBall
              L14_2(L15_2, L16_2)
              AmoLanciato = true
              L14_2 = ClearPedTasks
              L15_2 = L0_2
              L14_2(L15_2)
              L14_2 = ClearPedSecondaryTask
              L15_2 = L0_2
              L14_2(L15_2)
              L14_2 = faiAnimPool
              L15_2 = "amb@world_human_stand_fishing@idle_a"
              L16_2 = "idle_a"
              L17_2 = -1
              L18_2 = 49
              L14_2(L15_2, L16_2, L17_2, L18_2)
              L14_2 = FreezeEntityPosition
              L15_2 = L0_2
              L16_2 = true
              L14_2(L15_2, L16_2)
              L14_2 = GhostObj
              if nil ~= L14_2 then
                L14_2 = SetEntityAsMissionEntity
                L15_2 = GhostObj
                L14_2(L15_2)
                L14_2 = DeleteEntity
                L15_2 = GhostObj
                L14_2(L15_2)
                GhostObj = nil
              end
              L14_2 = RequestModelStriano
              L15_2 = -1837161340
              L14_2(L15_2)
              L14_2 = CreateObject
              L15_2 = -1837161340
              L16_2 = vector3
              L17_2 = takeBall
              L17_2 = L17_2.x
              L18_2 = takeBall
              L18_2 = L18_2.y
              L19_2 = L12_2.z
              L19_2 = L19_2 + 0.3
              L16_2 = L16_2(L17_2, L18_2, L19_2)
              L17_2 = true
              L14_2 = L14_2(L15_2, L16_2, L17_2)
              GhostObj = L14_2
              while true do
                L14_2 = DoesEntityExist
                L15_2 = GhostObj
                L14_2 = L14_2(L15_2)
                if L14_2 then
                  break
                end
                L14_2 = Wait
                L15_2 = 0
                L14_2(L15_2)
              end
              L14_2 = SetEntityVisible
              L15_2 = GhostObj
              L16_2 = false
              L14_2(L15_2, L16_2)
              L14_2 = FreezeEntityPosition
              L15_2 = GhostObj
              L16_2 = true
              L14_2(L15_2, L16_2)
              L14_2 = SetEntityNoCollisionEntity
              L15_2 = L0_2
              L16_2 = GhostObj
              L17_2 = true
              L14_2(L15_2, L16_2, L17_2)
              L14_2 = SetEntityCollision
              L15_2 = GhostObj
              L16_2 = false
              L17_2 = false
              L14_2(L15_2, L16_2, L17_2)
              L14_2 = CreaFilo
              L15_2 = vector3
              L16_2 = L12_2.x
              L17_2 = L12_2.y
              L18_2 = L12_2.z
              L18_2 = L18_2 + 0.3
              L15_2 = L15_2(L16_2, L17_2, L18_2)
              L16_2 = L0_2
              L14_2(L15_2, L16_2)
              L14_2 = Wait
              L15_2 = 2500
              L14_2(L15_2)
              L14_2 = math
              L14_2 = L14_2.random
              L15_2 = 1
              L16_2 = 2
              L14_2 = L14_2(L15_2, L16_2)
              if 1 == L14_2 then
                L15_2 = Wait
                L16_2 = 1000
                L15_2(L16_2)
              end
              L15_2 = math
              L15_2 = L15_2.random
              L16_2 = 1
              L17_2 = 2
              L15_2 = L15_2(L16_2, L17_2)
              L14_2 = L15_2
              if 1 == L14_2 then
                L15_2 = Wait
                L16_2 = 1500
                L15_2(L16_2)
              end
              L15_2 = math
              L15_2 = L15_2.random
              L16_2 = 1
              L17_2 = 2
              L15_2 = L15_2(L16_2, L17_2)
              L14_2 = L15_2
              if 1 == L14_2 then
                L15_2 = Wait
                L16_2 = 1000
                L15_2(L16_2)
              end
              L15_2 = false
              L96_1 = L15_2
              L15_2 = PlaySoundFrontend
              L16_2 = -1
              L17_2 = "CHALLENGE_UNLOCKED"
              L18_2 = "HUD_AWARDS"
              L19_2 = 1
              L15_2(L16_2, L17_2, L18_2, L19_2)
            else
              L14_2 = L92_1
              L15_2 = L0_2
              L16_2 = takeBall
              L14_2(L15_2, L16_2)
              L14_2 = FreezeEntityPosition
              L15_2 = L0_2
              L16_2 = true
              L14_2(L15_2, L16_2)
              pescando = false
              goto lbl_829
              ::lbl_786::
              L14_2 = AmoLanciato
              if not L14_2 then
                L14_2 = GetEntitySpeed
                L15_2 = L0_2
                L14_2 = L14_2(L15_2)
                L15_2 = 0.1
                if L14_2 < L15_2 then
                  L14_2 = takeBall
                  if nil ~= L14_2 then
                    L14_2 = DrawMarker
                    L15_2 = 28
                    L16_2 = takeBall
                    L16_2 = L16_2.x
                    L17_2 = takeBall
                    L17_2 = L17_2.y
                    L18_2 = takeBall
                    L18_2 = L18_2.z
                    L18_2 = L18_2 + 0.3
                    L19_2 = 0.0
                    L20_2 = 0.0
                    L21_2 = 0.0
                    L22_2 = 0.0
                    L23_2 = 0.0
                    L24_2 = 0.0
                    L25_2 = 3.3
                    L26_2 = 3.3
                    L27_2 = 3.3
                    L28_2 = 200
                    L29_2 = 0
                    L30_2 = 0
                    L31_2 = 50
                    L32_2 = false
                    L33_2 = true
                    L34_2 = 2
                    L35_2 = nil
                    L36_2 = nil
                    L37_2 = false
                    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
                  end
                  L14_2 = whileFishing_3_tx
                  L14_2()
                end
              end
            end
          end
        end
      end
      ::lbl_829::
      L14_2 = IsControlPressed
      L15_2 = 0
      L16_2 = 73
      L14_2 = L14_2(L15_2, L16_2)
      if not L14_2 then
        L14_2 = IsDisabledControlPressed
        L15_2 = 0
        L16_2 = 73
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          goto lbl_842
        end
      end
      pescando = false
      ::lbl_842::
      L14_2 = AmoLanciato
      if not L14_2 then
        L14_2 = IsDisabledControlPressed
        L15_2 = 0
        L16_2 = 14
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          L14_2 = IsControlPressed
          L15_2 = 0
          L16_2 = 14
          L14_2 = L14_2(L15_2, L16_2)
          if not L14_2 then
            goto lbl_867
          end
        end
        L14_2 = distanzaRotellina
        L14_2 = L14_2 - 1.5
        distanzaRotellina = L14_2
        L14_2 = PlaySoundFrontend
        L15_2 = -1
        L16_2 = "Reset_Prop_Position"
        L17_2 = "DLC_Dmod_Prop_Editor_Sounds"
        L18_2 = 0
        L14_2(L15_2, L16_2, L17_2, L18_2)
        ::lbl_867::
        L14_2 = IsDisabledControlPressed
        L15_2 = 0
        L16_2 = 15
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          L14_2 = IsControlPressed
          L15_2 = 0
          L16_2 = 15
          L14_2 = L14_2(L15_2, L16_2)
          if not L14_2 then
            goto lbl_889
          end
        end
        L14_2 = distanzaRotellina
        L14_2 = L14_2 + 1.5
        distanzaRotellina = L14_2
        L14_2 = PlaySoundFrontend
        L15_2 = -1
        L16_2 = "Reset_Prop_Position"
        L17_2 = "DLC_Dmod_Prop_Editor_Sounds"
        L18_2 = 0
        L14_2(L15_2, L16_2, L17_2, L18_2)
      end
      ::lbl_889::
      L14_2 = Wait
      L15_2 = 0
      L14_2(L15_2)
    end
    L11_2 = IsPedFatallyInjured
    L12_2 = L0_2
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = IsPedSwimming
      L12_2 = L0_2
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        L11_2 = IsPedSwimmingUnderWater
        L12_2 = L0_2
        L11_2 = L11_2(L12_2)
        if not L11_2 then
          L11_2 = IsDisabledControlPressed
          L12_2 = 0
          L13_2 = 24
          L11_2 = L11_2(L12_2, L13_2)
          if L11_2 then
            L11_2 = L92_1
            L12_2 = L0_2
            L13_2 = takeBall
            L11_2(L12_2, L13_2)
            distanzaRotellina = -25.0
            L11_2 = SetEntityAnimSpeed
            L12_2 = L0_2
            L13_2 = "amb@world_human_stand_fishing@idle_a"
            L14_2 = "idle_c"
            L15_2 = 3.0
            L11_2(L12_2, L13_2, L14_2, L15_2)
            L11_2 = faiAnimPool
            L12_2 = "amb@world_human_stand_fishing@idle_a"
            L13_2 = "idle_c"
            L14_2 = -1
            L15_2 = 49
            L11_2(L12_2, L13_2, L14_2, L15_2)
            L11_2 = Wait
            L12_2 = 4950
            L11_2(L12_2)
            L11_2 = PrendiPesce
            L12_2 = L1_2
            L11_2(L12_2)
          else
            L11_2 = PlaySoundFrontend
            L12_2 = -1
            L13_2 = "Bus_Schedule_Pickup"
            L14_2 = "DLC_PRISON_BREAK_HEIST_SOUNDS"
            L15_2 = 0
            L11_2(L12_2, L13_2, L14_2, L15_2)
            L11_2 = AmoLanciato
            if not L11_2 then
              while true do
                L11_2 = IsControlPressed
                L12_2 = 0
                L13_2 = 73
                L11_2 = L11_2(L12_2, L13_2)
                if not L11_2 then
                  L11_2 = IsDisabledControlPressed
                  L12_2 = 0
                  L13_2 = 73
                  L11_2 = L11_2(L12_2, L13_2)
                  if not L11_2 then
                    break
                  end
                end
                L11_2 = Wait
                L12_2 = 0
                L11_2(L12_2)
              end
              L11_2 = L93_1
              L11_2()
              L11_2 = FreezeEntityPosition
              L12_2 = L0_2
              L13_2 = false
              L11_2(L12_2, L13_2)
              L11_2 = faiAnimPool
              L12_2 = "switch@franklin@chopshop"
              L13_2 = "wipehands"
              L14_2 = 2500
              L15_2 = 49
              L11_2(L12_2, L13_2, L14_2, L15_2)
              L11_2 = filo
              if nil ~= L11_2 then
                L11_2 = DeleteRope
                L12_2 = filo
                L11_2(L12_2)
                filo = nil
              end
              L11_2 = PropMano
              if nil ~= L11_2 then
                L11_2 = SetEntityAsMissionEntity
                L12_2 = PropMano
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = PropMano
                L11_2(L12_2)
                PropMano = nil
              end
              distanzaRotellina = -25.0
              L11_2 = FinePesca
              L11_2()
              takeBall = nil
            else
              AmoLanciato = false
              L11_2 = faiAnimPool
              L12_2 = "amb@world_human_stand_fishing@idle_a"
              L13_2 = "idle_a"
              L14_2 = -1
              L15_2 = 49
              L11_2(L12_2, L13_2, L14_2, L15_2)
              L11_2 = Wait
              L12_2 = 25
              L11_2(L12_2)
              trovatoAmo = nil
              L11_2 = FreezeEntityPosition
              L12_2 = L0_2
              L13_2 = false
              L11_2(L12_2, L13_2)
              L11_2 = FinePesca
              L11_2()
            end
          end
      end
    end
    else
      distanzaRotellina = -25.0
      AmoLanciato = false
      L11_2 = L93_1
      L11_2()
      L11_2 = FreezeEntityPosition
      L12_2 = L0_2
      L13_2 = false
      L11_2(L12_2, L13_2)
    end
  else
    L4_2 = faiAnimPool
    L5_2 = "amb@world_human_stand_fishing@idle_a"
    L6_2 = "idle_a"
    L7_2 = -1
    L8_2 = 49
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L98_1(L99_1, L100_1)
L98_1 = _ENV
L99_1 = "waterCheck"
function L100_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetPedBoneCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 31086
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = 0.0
  L5_2 = 100.0
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = TestProbeAgainstWater
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L6_2 = L6_2 + 1.0
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L9_2 = L9_2 - 30.0
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L98_1[L99_1] = L100_1
L98_1 = _ENV
L99_1 = "CreaFilo"
function L100_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L2_2 = PropMano
  if nil ~= L2_2 then
    L2_2 = SetEntityAsMissionEntity
    L3_2 = PropMano
    L2_2(L3_2)
    L2_2 = DeleteEntity
    L3_2 = PropMano
    L2_2(L3_2)
    PropMano = nil
  end
  L2_2 = RequestModelStriano
  L3_2 = -1837161340
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetPedBoneIndex
  L4_2 = L2_2
  L5_2 = 18905
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GetWorldPositionOfEntityBone
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CreateObject
  L6_2 = -1837161340
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = true
  L11_2 = true
  L12_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  PropMano = L5_2
  L5_2 = SetEntityVisible
  L6_2 = PropMano
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = AttachEntityToEntity
  L6_2 = PropMano
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = 1.8
  L10_2 = 1.74
  L11_2 = -0.57
  L12_2 = -4.5
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = false
  L19_2 = 1
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = filo
  if nil ~= L5_2 then
    L5_2 = DeleteRope
    L6_2 = filo
    L5_2(L6_2)
    filo = nil
  end
  L5_2 = GetEntityCoords
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityForwardVector
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = GetEntityCoords
  L9_2 = PlayerPedId
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L9_2 = L6_2 * 1.5
  L8_2 = L8_2 + L9_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L10_2 = vector3
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = L9_2 + 2.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L5_2 = L10_2
  L10_2 = A0_2 - L5_2
  L10_2 = #L10_2
  L11_2 = L10_2
  L12_2 = AddRope
  L13_2 = A0_2.x
  L14_2 = A0_2.y
  L15_2 = A0_2.z
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 0.0
  L19_2 = L11_2
  L20_2 = 4
  L21_2 = L11_2
  L22_2 = 1.0
  L23_2 = 9.0
  L24_2 = false
  L25_2 = true
  L26_2 = true
  L27_2 = 1.0
  L28_2 = false
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  filo = L12_2
  L13_2 = PlaySoundFrontend
  L14_2 = -1
  L15_2 = "LEADERBOARD"
  L16_2 = "HUD_MINI_GAME_SOUNDSET"
  L17_2 = 1
  L13_2(L14_2, L15_2, L16_2, L17_2)
  while true do
    L13_2 = DoesRopeExist
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      break
    end
    L13_2 = Wait
    L14_2 = 0
    L13_2(L14_2)
  end
  L13_2 = RopeLoadTextures
  L13_2()
  while true do
    L13_2 = RopeAreTexturesLoaded
    L13_2 = L13_2()
    if L13_2 then
      break
    end
    L13_2 = Wait
    L14_2 = 0
    L13_2(L14_2)
  end
  L13_2 = N_0xa1ae736541b0fca3
  L14_2 = L12_2
  L15_2 = true
  L13_2(L14_2, L15_2)
  L13_2 = PinRopeVertex
  L14_2 = L12_2
  L15_2 = GetRopeVertexCount
  L16_2 = L12_2
  L15_2 = L15_2(L16_2)
  L15_2 = L15_2 - 1
  L16_2 = GetEntityCoords
  L17_2 = PropMano
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L16_2(L17_2)
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L13_2 = RopeSetUpdateOrder
  L14_2 = L12_2
  L15_2 = 0
  L13_2(L14_2, L15_2)
  L13_2 = LoopPosFilo
  L13_2()
end
L98_1[L99_1] = L100_1
L98_1 = 0
L99_1 = _ENV
L100_1 = "PrendiPesce"
function L101_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L1_2 = trovatoAmo
  if nil ~= L1_2 then
    L1_2 = FishermanArea
    L1_2 = L1_2[A0_2]
    if nil == L1_2 then
      L1_2 = L93_1
      L1_2()
      L1_2 = ClearPedTasks
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L2_2()
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L1_2 = fishEntity
      if nil ~= L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = fishEntity
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = fishEntity
        L1_2(L2_2)
        L1_2 = HoRimossoIlPesce
        L2_2 = fishEntity
        L1_2(L2_2)
        fishEntity = nil
      end
      L1_2 = filo
      if nil ~= L1_2 then
        L1_2 = DeleteRope
        L2_2 = filo
        L1_2(L2_2)
        filo = nil
      end
      L1_2 = PropMano
      if nil ~= L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = PropMano
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = PropMano
        L1_2(L2_2)
        PropMano = nil
      end
      L1_2 = Wait
      L2_2 = 25
      L1_2(L2_2)
      L1_2 = FinePesca
      L1_2()
      return
    end
    L1_2 = GetPackBack
    L2_2 = FishermanArea
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.Pack
    L1_2 = L1_2(L2_2)
    L2_2 = FishermanArea
    L2_2 = L2_2[A0_2]
    L3_2 = {}
    L2_2.ricompensa = L3_2
    L2_2 = 1
    L3_2 = #L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = FishermanArea
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.ricompensa
      L8_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2)
    end
    L2_2 = Wait
    L3_2 = 25
    L2_2(L3_2)
    L2_2 = FishermanArea
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.ricompensa
    L3_2 = GeneraLoot
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    tabPesci = L3_2
    L3_2 = tabPesci
    L3_2 = L3_2.m
    if nil == L3_2 then
      L3_2 = faiAnimPool
      L4_2 = "amb@world_human_stand_fishing@idle_a"
      L5_2 = "idle_c"
      L6_2 = -1
      L7_2 = 49
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = Wait
      L4_2 = 3500
      L3_2(L4_2)
      L3_2 = PlaySoundFrontend
      L4_2 = -1
      L5_2 = "Turn"
      L6_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
      L7_2 = 1
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = PlaySoundFrontend
      L4_2 = -1
      L5_2 = "Zoom_In"
      L6_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
      L7_2 = 1
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = L93_1
      L3_2()
      L3_2 = ClearPedTasks
      L4_2 = PlayerPedId
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L4_2()
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L3_2 = fishEntity
      if nil ~= L3_2 then
        L3_2 = SetEntityAsMissionEntity
        L4_2 = fishEntity
        L3_2(L4_2)
        L3_2 = DeleteEntity
        L4_2 = fishEntity
        L3_2(L4_2)
        L3_2 = HoRimossoIlPesce
        L4_2 = fishEntity
        L3_2(L4_2)
        fishEntity = nil
      end
      L3_2 = filo
      if nil ~= L3_2 then
        L3_2 = DeleteRope
        L4_2 = filo
        L3_2(L4_2)
        filo = nil
      end
      L3_2 = PropMano
      if nil ~= L3_2 then
        L3_2 = SetEntityAsMissionEntity
        L4_2 = PropMano
        L3_2(L4_2)
        L3_2 = DeleteEntity
        L4_2 = PropMano
        L3_2(L4_2)
        PropMano = nil
      end
      L3_2 = Wait
      L4_2 = 25
      L3_2(L4_2)
      L3_2 = FinePesca
      L3_2()
      L3_2 = Wait
      L4_2 = 25
      L3_2(L4_2)
      L3_2 = faiAnimPool
      L4_2 = "gestures@f@standing@casual"
      L5_2 = "gesture_bring_it_on"
      L6_2 = 1500
      L7_2 = 49
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = nil
      L4_2 = RequestModelStriano
      L5_2 = tabPesci
      L5_2 = L5_2.m
      L4_2(L5_2)
      L4_2 = IsAFish
      L5_2 = GetHashKey
      L6_2 = tabPesci
      L6_2 = L6_2.m
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      if not L4_2 then
        L3_2 = true
      end
      L4_2 = StoPerCrearePesce
      L5_2 = GetHashKey
      L6_2 = tabPesci
      L6_2 = L6_2.m
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L4_2 = CreateObject
      L5_2 = GetHashKey
      L6_2 = tabPesci
      L6_2 = L6_2.m
      L5_2 = L5_2(L6_2)
      L6_2 = trovatoAmo
      L7_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      fishEntity = L4_2
      while true do
        L4_2 = DoesEntityExist
        L5_2 = fishEntity
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 0
        L4_2(L5_2)
      end
      L4_2 = SetModelAsNoLongerNeeded
      L5_2 = GetHashKey
      L6_2 = tabPesci
      L6_2 = L6_2.m
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L4_2 = FreezeEntityPosition
      L5_2 = fishEntity
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = AttachEntityToEntity
      L5_2 = fishEntity
      L6_2 = GhostObj
      L7_2 = GetPedBoneIndex
      L8_2 = PlayerPedId
      L8_2 = L8_2()
      L9_2 = 0
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = 0.0
      L9_2 = 0.0
      L10_2 = 0.0
      L11_2 = 0.0
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = true
      L15_2 = true
      L16_2 = false
      L17_2 = false
      L18_2 = 2
      L19_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L4_2 = GetEntityForwardVector
      L5_2 = PlayerPedId
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L5_2 = table
      L5_2 = L5_2.unpack
      L6_2 = GetEntityCoords
      L7_2 = PlayerPedId
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L7_2()
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L7_2 = L4_2 * 0.5
      L6_2 = L6_2 + L7_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L8_2 = vector3
      L9_2 = L5_2
      L10_2 = L6_2
      L11_2 = L7_2 + 0.5
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L98_1
      if 0 == L9_2 then
        L9_2 = GetGameTimer
        L9_2 = L9_2()
        L98_1 = L9_2
      end
      L9_2 = CreateThread
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = TransitionEntity
        L1_3 = "Linear"
        L2_3 = GhostObj
        L3_3 = GetEntityRotation
        L4_3 = PlayerPedId
        L4_3, L5_3 = L4_3()
        L3_3 = L3_3(L4_3, L5_3)
        L4_3 = L8_2
        L5_3 = 1.5
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
      L9_2(L10_2)
      while true do
        L9_2 = GetEntityCoords
        L10_2 = GhostObj
        L9_2 = L9_2(L10_2)
        L9_2 = L8_2 - L9_2
        L9_2 = #L9_2
        L10_2 = 1.5
        if not (L9_2 > L10_2) then
          break
        end
        L9_2 = Wait
        L10_2 = 0
        L9_2(L10_2)
      end
      while true do
        L9_2 = GetGameTimer
        L9_2 = L9_2()
        L10_2 = L98_1
        L9_2 = L9_2 - L10_2
        L10_2 = 1500
        if not (L9_2 < L10_2) then
          break
        end
        L9_2 = Wait
        L10_2 = 0
        L9_2(L10_2)
      end
      L9_2 = SetEntityAsMissionEntity
      L10_2 = GhostObj
      L9_2(L10_2)
      L9_2 = DeleteEntity
      L10_2 = GhostObj
      L9_2(L10_2)
      GhostObj = nil
      L9_2 = 0
      L98_1 = L9_2
      L9_2 = GetEntityForwardVector
      L10_2 = PlayerPedId
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L10_2()
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L10_2 = table
      L10_2 = L10_2.unpack
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L12_2 = L9_2 * 1.5
      L11_2 = L11_2 + L12_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      L13_2 = SetEntityAnimSpeed
      L14_2 = PlayerPedId
      L14_2 = L14_2()
      L15_2 = "amb@world_human_stand_fishing@idle_a"
      L16_2 = "idle_c"
      L17_2 = 0.0
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L13_2 = DetachEntity
      L14_2 = fishEntity
      L13_2(L14_2)
      L13_2 = FreezeEntityPosition
      L14_2 = fishEntity
      L15_2 = true
      L13_2(L14_2, L15_2)
      L13_2 = RequestModelStriano
      L14_2 = -1837161340
      L13_2(L14_2)
      L13_2 = CreateObject
      L14_2 = -1837161340
      L15_2 = vector3
      L16_2 = L10_2
      L17_2 = L11_2
      L18_2 = L12_2 + 0.3
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L16_2 = true
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      GhostObj = L13_2
      while true do
        L13_2 = DoesEntityExist
        L14_2 = GhostObj
        L13_2 = L13_2(L14_2)
        if L13_2 then
          break
        end
        L13_2 = Wait
        L14_2 = 1
        L13_2(L14_2)
      end
      L13_2 = SetEntityVisible
      L14_2 = GhostObj
      L15_2 = false
      L13_2(L14_2, L15_2)
      L13_2 = FreezeEntityPosition
      L14_2 = GhostObj
      L15_2 = true
      L13_2(L14_2, L15_2)
      L13_2 = SetEntityNoCollisionEntity
      L14_2 = PlayerPedId
      L14_2 = L14_2()
      L15_2 = GhostObj
      L16_2 = true
      L13_2(L14_2, L15_2, L16_2)
      L13_2 = FreezeEntityPosition
      L14_2 = fishEntity
      L15_2 = true
      L13_2(L14_2, L15_2)
      L13_2 = AttachEntityToEntity
      L14_2 = fishEntity
      L15_2 = GhostObj
      L16_2 = GetPedBoneIndex
      L17_2 = PlayerPedId
      L17_2 = L17_2()
      L18_2 = 0
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = 0.0
      L18_2 = 0.0
      L19_2 = 0.0
      L20_2 = 0.0
      L21_2 = 0.0
      L22_2 = 0.0
      L23_2 = true
      L24_2 = true
      L25_2 = false
      L26_2 = false
      L27_2 = 2
      L28_2 = true
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L13_2 = SetEntityCollision
      L14_2 = GhostObj
      L15_2 = false
      L16_2 = false
      L13_2(L14_2, L15_2, L16_2)
      if nil == L3_2 then
        while true do
          L13_2 = GetEntityRotation
          L14_2 = GhostObj
          L13_2 = L13_2(L14_2)
          L13_2 = L13_2.x
          if -90.0 == L13_2 then
            break
          end
          L13_2 = SetEntityRotation
          L14_2 = GhostObj
          L15_2 = -90.0
          L16_2 = 0.0
          L17_2 = 0.0
          L13_2(L14_2, L15_2, L16_2, L17_2)
          L13_2 = Wait
          L14_2 = 1
          L13_2(L14_2)
        end
      end
      L13_2 = AppendiPesce
      L14_2 = tabPesci
      L13_2(L14_2)
    end
  else
    L1_2 = print
    L2_2 = "Non trovo l'amo!"
    L1_2(L2_2)
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Turn"
    L4_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Zoom_In"
    L4_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = L93_1
    L1_2()
    L1_2 = ClearPedTasks
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L1_2 = fishEntity
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = fishEntity
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = fishEntity
      L1_2(L2_2)
      L1_2 = HoRimossoIlPesce
      L2_2 = fishEntity
      L1_2(L2_2)
      fishEntity = nil
    end
    L1_2 = filo
    if nil ~= L1_2 then
      L1_2 = DeleteRope
      L2_2 = filo
      L1_2(L2_2)
      filo = nil
    end
    L1_2 = PropMano
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = PropMano
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = PropMano
      L1_2(L2_2)
      PropMano = nil
    end
    L1_2 = Wait
    L2_2 = 25
    L1_2(L2_2)
    L1_2 = FinePesca
    L1_2()
    L1_2 = Wait
    L2_2 = 25
    L1_2(L2_2)
    L1_2 = TriggerEvent
    L2_2 = "IniziaPesca"
    L1_2(L2_2)
  end
end
L99_1[L100_1] = L101_1
L99_1 = _ENV
L100_1 = "LoopPosFilo"
function L101_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = Wait
      L1_3 = 7
      L0_3(L1_3)
      L0_3 = filo
      if nil ~= L0_3 then
        L0_3 = PropMano
        if nil ~= L0_3 then
          L0_3 = bloccaLoopFilo
          if not L0_3 then
            goto lbl_15
          end
        end
      end
      bloccaLoopFilo = false
      do return end
      ::lbl_15::
      L0_3 = PinRopeVertex
      L1_3 = filo
      L2_3 = GetRopeVertexCount
      L3_3 = filo
      L2_3 = L2_3(L3_3)
      L2_3 = L2_3 - 1
      L3_3 = GetEntityCoords
      L4_3 = PropMano
      L3_3, L4_3 = L3_3(L4_3)
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  L0_2(L1_2)
end
L99_1[L100_1] = L101_1
L99_1 = _ENV
L100_1 = "AppendiPesce"
function L101_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = AfterTakeTheFish
  L1_2()
  L1_2 = RequestModelStriano
  L2_2 = -1837161340
  L1_2(L2_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetPedBoneIndex
  L3_2 = L1_2
  L4_2 = 18905
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetWorldPositionOfEntityBone
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = PropMano
  if nil == L4_2 then
    L4_2 = CreateObject
    L5_2 = -1837161340
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L8_2 = L3_2.z
    L9_2 = true
    L10_2 = true
    L11_2 = true
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    PropMano = L4_2
    L4_2 = SetEntityVisible
    L5_2 = PropMano
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = AttachEntityToEntity
    L5_2 = PropMano
    L6_2 = L1_2
    L7_2 = L2_2
    L8_2 = 1.84
    L9_2 = 1.73
    L10_2 = -0.67
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = true
    L15_2 = true
    L16_2 = false
    L17_2 = true
    L18_2 = 1
    L19_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  end
  L4_2 = filo
  if nil ~= L4_2 then
    L4_2 = DeleteRope
    L5_2 = filo
    L4_2(L5_2)
    filo = nil
  end
  L4_2 = GetEntityCoords
  L5_2 = PropMano
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityCoords
  L6_2 = fishEntity
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2 - L4_2
  L6_2 = #L6_2
  L7_2 = L6_2 - 0.8
  L8_2 = AddRope
  L9_2 = L5_2.x
  L10_2 = L5_2.y
  L11_2 = L5_2.z
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = L7_2
  L16_2 = 4
  L17_2 = L7_2
  L18_2 = 1.0
  L19_2 = 9.0
  L20_2 = false
  L21_2 = true
  L22_2 = true
  L23_2 = 1.0
  L24_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  filo = L8_2
  L9_2 = PlaySoundFrontend
  L10_2 = -1
  L11_2 = "LEADERBOARD"
  L12_2 = "HUD_MINI_GAME_SOUNDSET"
  L13_2 = 1
  L9_2(L10_2, L11_2, L12_2, L13_2)
  while true do
    L9_2 = DoesRopeExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = RopeLoadTextures
  L9_2()
  while true do
    L9_2 = RopeAreTexturesLoaded
    L9_2 = L9_2()
    if L9_2 then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = N_0xa1ae736541b0fca3
  L10_2 = L8_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = PinRopeVertex
  L10_2 = L8_2
  L11_2 = GetRopeVertexCount
  L12_2 = L8_2
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 - 1
  L12_2 = GetEntityCoords
  L13_2 = PropMano
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L9_2 = RopeSetUpdateOrder
  L10_2 = L8_2
  L11_2 = 0
  L9_2(L10_2, L11_2)
  while true do
    L9_2 = IsDisabledControlJustPressed
    L10_2 = 0
    L11_2 = 24
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      break
    end
    L9_2 = IsControlJustPressed
    L10_2 = 0
    L11_2 = 24
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      break
    end
    L9_2 = IsDisabledControlJustPressed
    L10_2 = 0
    L11_2 = 73
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      break
    end
    L9_2 = GetEntityCoords
    L10_2 = fishEntity
    L9_2 = L9_2(L10_2)
    L10_2 = GetEntityRotation
    L11_2 = PlayerPedId
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2()
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L11_2 = DrawSpotLightWithShadow
    L12_2 = L9_2.x
    L13_2 = L9_2.y
    L14_2 = L9_2.z
    L14_2 = L14_2 + 1.3
    L15_2 = L10_2.x
    L16_2 = L10_2.y
    L17_2 = L10_2.z
    L17_2 = L17_2 - 180
    L18_2 = 255
    L19_2 = 255
    L20_2 = 190
    L21_2 = 7.0
    L22_2 = 0.15
    L23_2 = 5.0
    L24_2 = 150.0
    L25_2 = 10.0
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L11_2 = DrawSpotLightWithShadow
    L12_2 = L9_2.x
    L13_2 = L9_2.y
    L14_2 = L9_2.z
    L14_2 = L14_2 + 1.3
    L15_2 = L10_2.x
    L16_2 = L10_2.y
    L17_2 = L10_2.z
    L17_2 = L17_2 - 180
    L18_2 = 255
    L19_2 = 255
    L20_2 = 190
    L21_2 = 7.0
    L22_2 = 0.15
    L23_2 = 5.0
    L24_2 = 150.0
    L25_2 = 10.0
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L11_2 = DisableKeysWhileFish
    L11_2()
    L11_2 = takeFromWire_tx
    L11_2()
    L11_2 = Wait
    L12_2 = 0
    L11_2(L12_2)
  end
  L9_2 = DetachEntity
  L10_2 = fishEntity
  L9_2(L10_2)
  bloccaLoopFilo = true
  L9_2 = SetEntityAnimSpeed
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = "amb@world_human_stand_fishing@idle_a"
  L12_2 = "idle_a"
  L13_2 = 1.0
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = PropMano
  if nil ~= L9_2 then
    L9_2 = SetEntityAsMissionEntity
    L10_2 = PropMano
    L9_2(L10_2)
    L9_2 = DeleteEntity
    L10_2 = PropMano
    L9_2(L10_2)
    PropMano = nil
  end
  AmoLanciato = false
  L9_2 = L93_1
  L9_2()
  L9_2 = AggrappaPesce
  L10_2 = nil
  L11_2 = fishEntity
  L12_2 = A0_2.item
  L13_2 = 1
  L9_2(L10_2, L11_2, L12_2, L13_2)
end
L99_1[L100_1] = L101_1
L99_1 = _ENV
L100_1 = "ItemFromInventory"
function L101_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.getItemFromModel
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L99_1[L100_1] = L101_1
L99_1 = _ENV
L100_1 = "RemoveVehicleAttachedProp"
function L101_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_12::
  L1_2 = GetEntityAttachedTo
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_26
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_26::
  L2_2 = IsEntityAVehicle
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = GetVehicleNumberPlateText
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerServerEvent
  L5_2 = "vehicleProps:remove"
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = true
  return L4_2
end
L99_1[L100_1] = L101_1
L99_1 = _ENV
L100_1 = "RemoveWorldContainerAttachedProp"
function L101_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_12::
  L1_2 = GetEntityAttachedTo
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_26
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_26::
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.worldContainer
  if true ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.worldContainerId
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerServerEvent
  L5_2 = "worldContainer:removeProp"
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = true
  return L4_2
end
L99_1[L100_1] = L101_1
L99_1 = RegisterCommand
L100_1 = "FinePesca"
function L101_1()
  local L0_2, L1_2
  L0_2 = FinePesca
  L0_2()
end
L99_1(L100_1, L101_1)
L99_1 = {}
L100_1 = 0
L101_1 = _ENV
L102_1 = "AggrappaPesce"
function L103_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = IsEntityPlayingAnim
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = "abigail_mcs_2-5"
  L8_2 = "player_zero_dual-5"
  L9_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L5_2 = IsEntityPlayingAnim
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = "missrappel"
    L8_2 = "rope_idle"
    L9_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      return
    end
  end
  L5_2 = IsEntityPlayingAnim
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = "impexp_int-0"
  L8_2 = "mp_m_waremech_01_dual-0"
  L9_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    return
  end
  L5_2 = ResetOutlineEnt
  L5_2()
  L5_2 = nil
  cassaChePorto = nil
  if nil ~= A1_2 then
    L6_2 = IsEntityAttached
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = veicolovicino
      if L6_2 > 0 then
        L6_2 = IsEntityAVehicle
        L7_2 = veicolovicino
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = GetVehicleDoorLockStatus
          L7_2 = veicolovicino
          L6_2 = L6_2(L7_2)
          if 2 == L6_2 then
            L6_2 = ResetOutlineEnt
            L6_2()
            L6_2 = CreateThread
            function L7_2()
              local L0_3, L1_3
              L0_3 = Wait
              L1_3 = 150
              L0_3(L1_3)
              L0_3 = VehicleLockedFish
              L0_3()
            end
            L6_2(L7_2)
            L6_2 = Wait
            L7_2 = 150
            L6_2(L7_2)
            L6_2 = ClearPedTasks
            L7_2 = PlayerPedId
            L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2()
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            possoFareSelector = true
            fishEntity = nil
            return
          end
        end
      end
    end
    L6_2 = 0
    while true do
      L7_2 = NetworkHasControlOfEntity
      L8_2 = A1_2
      L7_2 = L7_2(L8_2)
      if not (not L7_2 and L6_2 < 100) then
        break
      end
      L7_2 = NetworkRequestControlOfEntity
      L8_2 = A1_2
      L7_2(L8_2)
      L6_2 = L6_2 + 1
      L7_2 = Wait
      L8_2 = 100
      L7_2(L8_2)
    end
    L7_2 = NetworkRequestControlOfEntity
    L8_2 = A1_2
    L7_2(L8_2)
    L7_2 = GetEntityModel
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
    L7_2 = Entity
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L7_2 = L7_2.worldContainer
    L7_2 = true == L7_2
    if L7_2 then
      fishEntity = A1_2
    else
      L8_2 = ipairs
      L9_2 = GetGamePool
      L10_2 = "CObject"
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        if L13_2 ~= A1_2 then
          L14_2 = DoesEntityExist
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          if L14_2 then
            L14_2 = IsEntityAttachedToEntity
            L15_2 = L13_2
            L16_2 = A1_2
            L14_2 = L14_2(L15_2, L16_2)
            if L14_2 then
              L14_2 = DetachEntity
              L15_2 = L13_2
              L16_2 = true
              L17_2 = true
              L14_2(L15_2, L16_2, L17_2)
            end
          end
        end
      end
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
      L8_2 = GetEntityCoords
      L9_2 = A1_2
      L8_2 = L8_2(L9_2)
      L9_2 = SetEntityAsMissionEntity
      L10_2 = A1_2
      L9_2(L10_2)
      L9_2 = DeleteEntity
      L10_2 = A1_2
      L9_2(L10_2)
      L9_2 = Wait
      L10_2 = 0
      L9_2(L10_2)
      L9_2 = RequestModelStriano
      L10_2 = L5_2
      L9_2(L10_2)
      L9_2 = StoPerCrearePesce
      L10_2 = L5_2
      L9_2(L10_2)
      L9_2 = CreateObject
      L10_2 = L5_2
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = true
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      fishEntity = L9_2
      L9_2 = SetModelAsNoLongerNeeded
      L10_2 = L5_2
      L9_2(L10_2)
    end
  else
    if nil == A0_2 then
      L6_2 = GetEntityModel
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      A0_2 = L6_2
    end
    L6_2 = RequestModelStriano
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = StoPerCrearePesce
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = CreateObject
    L7_2 = A0_2
    L8_2 = GetEntityCoords
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    fishEntity = L6_2
    L6_2 = SetModelAsNoLongerNeeded
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = GetEntityModel
    L7_2 = fishEntity
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = Wait
  L7_2 = 0
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_inventory
  L7_2 = L6_2
  L6_2 = L6_2.IsWeaponProp
  L8_2 = fishEntity
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    A2_2 = L7_2
  elseif nil ~= A2_2 then
    L9_2 = A2_2
    L8_2 = A2_2.match
    L10_2 = "^[^#]+"
    L8_2 = L8_2(L9_2, L10_2)
    A2_2 = L8_2 or A2_2
    if not L8_2 then
    end
  end
  if nil ~= A2_2 and "melee_weapon" == A2_2 then
    L8_2 = exports
    L8_2 = L8_2.striano_combat
    L9_2 = L8_2
    L8_2 = L8_2.GetMeleeWeaponModel
    L10_2 = A3_2
    L8_2 = L8_2(L9_2, L10_2)
    A0_2 = L8_2
    L8_2 = GetEntityModel
    L9_2 = fishEntity
    L8_2 = L8_2(L9_2)
    if L8_2 ~= A0_2 then
      L8_2 = print
      L9_2 = "Rilevata arma da lasciare!"
      L8_2(L9_2)
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
      L8_2 = RequestModelStriano
      L9_2 = A0_2
      L8_2(L9_2)
      L8_2 = StoPerCrearePesce
      L9_2 = A0_2
      L8_2(L9_2)
      L8_2 = CreateObject
      L9_2 = A0_2
      L10_2 = GetEntityCoords
      L11_2 = PlayerPedId
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = true
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      while true do
        L9_2 = DoesEntityExist
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          break
        end
        L9_2 = Wait
        L10_2 = 0
        L9_2(L10_2)
      end
      L9_2 = SetEntityCollision
      L10_2 = L8_2
      L11_2 = false
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = fishEntity
      if nil ~= L9_2 then
        L9_2 = SetEntityAsMissionEntity
        L10_2 = fishEntity
        L9_2(L10_2)
        L9_2 = DeleteEntity
        L10_2 = fishEntity
        L9_2(L10_2)
      end
      fishEntity = L8_2
      L9_2 = SetModelAsNoLongerNeeded
      L10_2 = A0_2
      L9_2(L10_2)
    end
  end
  L8_2 = 0
  while true do
    L9_2 = DoesEntityExist
    L10_2 = fishEntity
    L9_2 = L9_2(L10_2)
    if not (not L9_2 and L8_2 < 100) then
      break
    end
    L8_2 = L8_2 + 1
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  if L8_2 <= 100 then
    while true do
      L9_2 = IsControlPressed
      L10_2 = 0
      L11_2 = 73
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        break
      end
      L9_2 = Wait
      L10_2 = 0
      L9_2(L10_2)
    end
    L9_2 = PlaySoundFrontend
    L10_2 = -1
    L11_2 = "LEADERBOARD"
    L12_2 = "HUD_MINI_GAME_SOUNDSET"
    L13_2 = 1
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = GhostObj
    if nil ~= L9_2 then
      L9_2 = SetEntityAsMissionEntity
      L10_2 = GhostObj
      L9_2(L10_2)
      L9_2 = DeleteEntity
      L10_2 = GhostObj
      L9_2(L10_2)
      GhostObj = nil
    end
    L9_2 = filo
    if nil ~= L9_2 then
      L9_2 = DeleteRope
      L10_2 = filo
      L9_2(L10_2)
      filo = nil
    end
    L9_2 = PropMano
    if nil ~= L9_2 then
      L9_2 = SetEntityAsMissionEntity
      L10_2 = PropMano
      L9_2(L10_2)
      L9_2 = DeleteEntity
      L10_2 = PropMano
      L9_2(L10_2)
      PropMano = nil
    end
    L9_2 = FreezeEntityPosition
    L10_2 = PlayerPedId
    L10_2 = L10_2()
    L11_2 = false
    L9_2(L10_2, L11_2)
    L9_2 = Wait
    L10_2 = 25
    L9_2(L10_2)
    L9_2 = StartFollowHandsProp
    L10_2 = fishEntity
    L9_2(L10_2)
    L9_2 = VeicoloVicinoRaycast
    L10_2 = fishEntity
    L9_2 = L9_2(L10_2)
    veicolovicino = L9_2
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3
      while true do
        L0_3 = DoesEntityExist
        L1_3 = fishEntity
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L100_1
        L1_3 = L0_3 - L1_3
        L2_3 = 250
        if L1_3 >= L2_3 then
          L100_1 = L0_3
          L1_3 = VeicoloVicinoRaycast
          L2_3 = fishEntity
          L1_3 = L1_3(L2_3)
          veicolovicino = L1_3
        end
        L1_3 = exports
        L1_3 = L1_3.striano_inventory
        L2_3 = L1_3
        L1_3 = L1_3.IsWeaponProp
        L3_3 = fishEntity
        L1_3, L2_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L3_3 = IsDisabledControlJustPressed
          L4_3 = 0
          L5_3 = 47
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlJustPressed
            L4_3 = 0
            L5_3 = 47
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              goto lbl_49
            end
          end
          L3_3 = veicolovicino
          if 0 == L3_3 then
            L3_3 = exports
            L3_3 = L3_3.striano_inventory
            L4_3 = L3_3
            L3_3 = L3_3.EquipWorldWeapon
            L5_3 = L2_3
            L3_3(L4_3, L5_3)
          end
        end
        ::lbl_49::
        L3_3 = exports
        L3_3 = L3_3.striano_combat
        L4_3 = L3_3
        L3_3 = L3_3.isACombatSword
        L5_3 = GetEntityModel
        L6_3 = fishEntity
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L5_3(L6_3)
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
        if not L3_3 then
          L4_3 = L5_2
          if "Unknown" == L4_3 then
            L4_3 = fishTaked_tx2
            L4_3()
        end
        else
          L4_3 = fishTaked_tx
          L5_3 = A3_2
          L6_3 = L5_2
          L7_3 = L1_3
          L8_3 = fishEntity
          L4_3(L5_3, L6_3, L7_3, L8_3)
        end
        L4_3 = DisableKeysWhileFish
        L4_3()
        L4_3 = IsDisabledControlJustPressed
        L5_3 = 0
        L6_3 = 38
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsControlJustPressed
          L5_3 = 0
          L6_3 = 38
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_198
          end
        end
        L4_3 = Entity
        L5_3 = fishEntity
        L4_3 = L4_3(L5_3)
        L4_3 = L4_3.state
        L4_3 = L4_3.worldContainer
        L4_3 = true == L4_3
        if not L4_3 then
          L5_3 = exports
          L5_3 = L5_3.striano_inventory
          L6_3 = L5_3
          L5_3 = L5_3.getItemFromModel
          L7_3 = L5_2
          L5_3 = L5_3(L6_3, L7_3)
          if "Unknown" ~= L5_3 or L3_3 then
            L6_3 = GetEntityModel
            L7_3 = fishEntity
            L6_3 = L6_3(L7_3)
            L7_3 = A2_2
            if nil == L7_3 then
              L7_3 = ItemFromInventory
              L8_3 = L6_3
              L7_3 = L7_3(L8_3)
              if not L7_3 then
                L7_3 = exports
                L7_3 = L7_3.striano_combat
                L8_3 = L7_3
                L7_3 = L7_3.doesModelExist
                L9_3 = L6_3
                L7_3 = L7_3(L8_3, L9_3)
                if not L7_3 then
                  L7_3 = exports
                  L7_3 = L7_3.striano_combat
                  L8_3 = L7_3
                  L7_3 = L7_3.doesModelExist
                  L9_3 = L6_3
                  L7_3 = L7_3(L8_3, L9_3)
                  if not L7_3 then
                    goto lbl_190
                  end
                end
              end
            end
            L7_3 = DetachEntity
            L8_3 = fishEntity
            L9_3 = 1
            L10_3 = true
            L7_3(L8_3, L9_3, L10_3)
            L7_3 = SetEntityAsMissionEntity
            L8_3 = fishEntity
            L7_3(L8_3)
            L7_3 = DeleteEntity
            L8_3 = fishEntity
            L7_3(L8_3)
            L7_3 = HoRimossoIlPesce
            L8_3 = fishEntity
            L7_3(L8_3)
            L7_3 = Wait
            L8_3 = 250
            L7_3(L8_3)
            L7_3 = faiAnimPool
            L8_3 = "gestures@f@standing@casual"
            L9_3 = "gesture_pleased"
            L10_3 = 5
            L11_3 = 1
            L7_3(L8_3, L9_3, L10_3, L11_3)
            L7_3 = faiAnimPool
            L8_3 = "cellphone@"
            L9_3 = "cellphone_cellphone_outro"
            L10_3 = 1000
            L11_3 = 49
            L7_3(L8_3, L9_3, L10_3, L11_3)
            L7_3 = Wait
            L8_3 = 250
            L7_3(L8_3)
            L7_3 = exports
            L7_3 = L7_3.striano_combat
            L8_3 = L7_3
            L7_3 = L7_3.isACombatSword
            L9_3 = L6_3
            L7_3 = L7_3(L8_3, L9_3)
            if L7_3 then
              L8_3 = GetItemFish
              L9_3 = "melee_weapon"
              L10_3 = A3_2
              L8_3(L9_3, L10_3)
            else
              L8_3 = GetItemFish
              L9_3 = A2_2
              if not L9_3 then
                L9_3 = ItemFromInventory
                L10_3 = L6_3
                L9_3 = L9_3(L10_3)
              end
              L10_3 = A3_2
              L8_3(L9_3, L10_3)
            end
            fishEntity = nil
            L8_3 = Wait
            L9_3 = 750
            L8_3(L9_3)
            L8_3 = FinePesca
            L8_3()
            do return end
            goto lbl_198
            ::lbl_190::
            L7_3 = CantStore
            L7_3()
          else
            L6_3 = CantStore
            L6_3()
          end
        else
          L5_3 = CantStore
          L5_3()
        end
        ::lbl_198::
        L4_3 = IsDisabledControlJustPressed
        L5_3 = 0
        L6_3 = 24
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsControlJustPressed
          L5_3 = 0
          L6_3 = 24
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_801
          end
        end
        L4_3 = veicolovicino
        if 0 == L4_3 then
          L4_3 = DoesEntityExist
          L5_3 = fishEntity
          L4_3 = L4_3(L5_3)
          if L4_3 then
            L4_3 = GetEntityCoords
            L5_3 = L4_2
            L4_3 = L4_3(L5_3)
            L5_3 = GetEntityCoords
            L6_3 = fishEntity
            L5_3 = L5_3(L6_3)
            L4_3 = L4_3 - L5_3
            L4_3 = #L4_3
            if L4_3 < 15.0 then
              L4_3 = exports
              L4_3 = L4_3.striano_editor
              L5_3 = L4_3
              L4_3 = L4_3.releaseProp
              L4_3(L5_3)
              L4_3 = DetachEntity
              L5_3 = fishEntity
              L4_3(L5_3)
              L4_3 = GetEntityModel
              L5_3 = fishEntity
              L4_3 = L4_3(L5_3)
              L5_3 = GetEntityCoords
              L6_3 = fishEntity
              L5_3 = L5_3(L6_3)
              L6_3 = GetEntityRotation
              L7_3 = fishEntity
              L8_3 = 2
              L6_3 = L6_3(L7_3, L8_3)
              L7_3 = L82_1
              L7_3 = L7_3[L4_3]
              if L7_3 then
                L7_3 = Entity
                L8_3 = fishEntity
                L7_3 = L7_3(L8_3)
                L7_3 = L7_3.state
                L7_3 = L7_3.worldContainerId
                L8_3 = testo3d
                L9_3 = "Refillable crate"
                L8_3(L9_3)
                if L7_3 then
                  L8_3 = SetEntityCollision
                  L9_3 = fishEntity
                  L10_3 = true
                  L11_3 = true
                  L8_3(L9_3, L10_3, L11_3)
                  fishEntity = nil
                else
                  L8_3 = DoesEntityExist
                  L9_3 = fishEntity
                  L8_3 = L8_3(L9_3)
                  if L8_3 then
                    L8_3 = SetEntityAsMissionEntity
                    L9_3 = fishEntity
                    L10_3 = true
                    L11_3 = true
                    L8_3(L9_3, L10_3, L11_3)
                    L8_3 = DeleteEntity
                    L9_3 = fishEntity
                    L8_3(L9_3)
                  end
                  fishEntity = nil
                  L8_3 = TriggerServerEvent
                  L9_3 = "worldContainer:requestCreate"
                  L10_3 = L4_3
                  L11_3 = L5_3.x
                  L12_3 = L5_3.y
                  L13_3 = L5_3.z
                  L14_3 = L6_3.x
                  L15_3 = L6_3.y
                  L16_3 = L6_3.z
                  L17_3 = A3_2
                  if not L17_3 then
                    L17_3 = 0
                  end
                  L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                end
                L8_3 = onItemPlace
                L8_3()
                L8_3 = ClearSelector
                L8_3()
              else
                L7_3 = SetEntityCollision
                L8_3 = fishEntity
                L9_3 = false
                L10_3 = false
                L7_3(L8_3, L9_3, L10_3)
                L7_3 = L0_1
                L7_3()
                L7_3 = Wait
                L8_3 = 7
                L7_3(L8_3)
                L7_3 = TriggerServerEvent
                L8_3 = "placer:addpool"
                L9_3 = L4_3
                L10_3 = L5_3.x
                L11_3 = L5_3.y
                L12_3 = L5_3.z
                L13_3 = L6_3.x
                L14_3 = L6_3.y
                L15_3 = L6_3.z
                L16_3 = true
                L17_3 = A3_2
                if not L17_3 then
                  L17_3 = 0
                end
                L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                L7_3 = onItemPlace
                L7_3()
                L7_3 = ClearSelector
                L7_3()
                L7_3 = Wait
                L8_3 = 550
                L7_3(L8_3)
                L7_3 = ControlloUnioneOggetti
                L7_3()
                L7_3 = Wait
                L8_3 = 500
                L7_3(L8_3)
                L7_3 = ControlloVenditaPesce
                L7_3()
              end
              return
          end
          else
            L4_3 = testo3d
            L5_3 = "Too far!"
            L4_3(L5_3)
          end
        else
          L4_3 = fishEntity
          L5_3 = veicolovicino
          if L5_3 > 0 then
            L5_3 = GetEntityCoords
            L6_3 = L4_3
            L5_3 = L5_3(L6_3)
            L6_3 = GetEntityCoords
            L7_3 = L4_2
            L6_3 = L6_3(L7_3)
            L5_3 = L5_3 - L6_3
            L5_3 = #L5_3
            L6_3 = maxDistObj
            L6_3 = L6_3 * 3
            if L5_3 < L6_3 then
              L5_3 = veicolovicino
              if not (L5_3 > 0) then
                goto lbl_801
              end
              L6_3 = GetEntityCoords
              L7_3 = L4_3
              L6_3 = L6_3(L7_3)
              L6_3 = L6_3.z
              L7_3 = GetEntityCoords
              L8_3 = L5_3
              L7_3 = L7_3(L8_3)
              L7_3 = L7_3.z
              L7_3 = L7_3 - 1.0
              if not (L6_3 < L7_3) then
                L6_3 = GetEntityCoords
                L7_3 = L5_3
                L6_3 = L6_3(L7_3)
                L7_3 = GetEntityCoords
                L8_3 = L4_3
                L7_3 = L7_3(L8_3)
                L6_3 = L6_3 - L7_3
                L6_3 = #L6_3
                if not (L6_3 > 5.0) then
                  goto lbl_438
                end
              end
              L6_3 = ToccoVeicoloMex
              L6_3()
              L6_3 = GetEntityCoords
              L7_3 = L4_3
              L6_3 = L6_3(L7_3)
              L6_3 = L6_3.z
              L7_3 = GetEntityCoords
              L8_3 = L5_3
              L7_3 = L7_3(L8_3)
              L7_3 = L7_3.z
              L7_3 = L7_3 - 1.0
              if not (L6_3 < L7_3) then
                L6_3 = GetEntityCoords
                L7_3 = L5_3
                L6_3 = L6_3(L7_3)
                L7_3 = GetEntityCoords
                L8_3 = L4_3
                L7_3 = L7_3(L8_3)
                L6_3 = L6_3 - L7_3
                L6_3 = #L6_3
                if not (L6_3 > 5.0) then
                  goto lbl_801
                end
              end
              L6_3 = GetEntityForwardVector
              L7_3 = L4_2
              L6_3 = L6_3(L7_3)
              L7_3 = table
              L7_3 = L7_3.unpack
              L8_3 = GetEntityCoords
              L9_3 = L4_2
              L8_3 = L8_3(L9_3)
              L9_3 = L6_3 * 0.55
              L8_3 = L8_3 + L9_3
              L7_3, L8_3, L9_3 = L7_3(L8_3)
              L10_3 = SetEntityCoords
              L11_3 = L4_3
              L12_3 = L7_3
              L13_3 = L8_3
              L14_3 = L9_3 - 1.0
              L10_3(L11_3, L12_3, L13_3, L14_3)
              globaloffz = 0
              globalRot = 0
              globalRotY = 0
              goto lbl_801
              ::lbl_438::
              L6_3 = veicolovicino
              L7_3 = exports
              L7_3 = L7_3.striano_editor
              L8_3 = L7_3
              L7_3 = L7_3.releaseProp
              L9_3 = L6_3
              L7_3(L8_3, L9_3)
              L7_3 = L4_3
              L8_3 = GetEntityCoords
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              L9_3 = GetEntityRotation
              L10_3 = L7_3
              L11_3 = 2
              L9_3 = L9_3(L10_3, L11_3)
              L10_3 = GetEntityRotation
              L11_3 = L6_3
              L12_3 = 2
              L10_3 = L10_3(L11_3, L12_3)
              L11_3 = GetOffsetFromEntityGivenWorldCoords
              L12_3 = L6_3
              L13_3 = L8_3
              L11_3 = L11_3(L12_3, L13_3)
              L12_3 = L9_3.z
              L13_3 = L10_3.z
              L12_3 = L12_3 - L13_3
              L13_3 = GetEntityCoords
              L14_3 = L4_3
              L13_3 = L13_3(L14_3)
              L14_3 = PlaySoundFrontend
              L15_3 = -1
              L16_3 = "OPENED"
              L17_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
              L18_3 = 1
              L14_3(L15_3, L16_3, L17_3, L18_3)
              L14_3 = FreezeEntityPosition
              L15_3 = L4_3
              L16_3 = true
              L14_3(L15_3, L16_3)
              L14_3 = GetEntityModel
              L15_3 = L4_3
              L14_3 = L14_3(L15_3)
              L15_3 = A3_2
              L16_3 = IsEntityAPed
              L17_3 = L6_3
              L16_3 = L16_3(L17_3)
              if L16_3 then
                L16_3 = NetworkGetEntityIsNetworked
                L17_3 = L4_3
                L16_3 = L16_3(L17_3)
                if not L16_3 then
                  L16_3 = NetworkRegisterEntityAsNetworked
                  L17_3 = L4_3
                  L16_3(L17_3)
                  L16_3 = GetGameTimer
                  L16_3 = L16_3()
                  L16_3 = L16_3 + 1000
                  while true do
                    L17_3 = NetworkGetEntityIsNetworked
                    L18_3 = L4_3
                    L17_3 = L17_3(L18_3)
                    if L17_3 then
                      break
                    end
                    L17_3 = GetGameTimer
                    L17_3 = L17_3()
                    if not (L16_3 > L17_3) then
                      break
                    end
                    L17_3 = Wait
                    L18_3 = 0
                    L17_3(L18_3)
                  end
                end
                L16_3 = GetEntityBoneIndexByName
                L17_3 = L6_3
                L18_3 = "SKEL_Spine1"
                L16_3 = L16_3(L17_3, L18_3)
                L17_3 = AttachEntityToEntity
                L18_3 = L4_3
                L19_3 = L6_3
                L20_3 = L16_3
                L21_3 = L11_3.x
                L22_3 = L11_3.y
                L23_3 = L11_3.z
                L24_3 = 0.0
                L25_3 = 0.0
                L26_3 = L12_3
                L27_3 = true
                L28_3 = true
                L29_3 = false
                L30_3 = false
                L31_3 = 0
                L32_3 = true
                L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                L17_3 = IsEntityAttachedToEntity
                L18_3 = L4_3
                L19_3 = L6_3
                L17_3 = L17_3(L18_3, L19_3)
                if L17_3 then
                  L17_3 = L99_1
                  L17_3[L6_3] = true
                  L17_3 = NetworkGetEntityIsNetworked
                  L18_3 = L4_3
                  L17_3 = L17_3(L18_3)
                  if L17_3 then
                    L17_3 = NetworkGetNetworkIdFromEntity
                    L18_3 = L4_3
                    L17_3 = L17_3(L18_3)
                    L18_3 = tonumber
                    L19_3 = L15_3
                    L18_3 = L18_3(L19_3)
                    if not L18_3 then
                      L18_3 = 0
                    end
                    if L17_3 and 0 ~= L17_3 then
                      L19_3 = TriggerServerEvent
                      L20_3 = "pedProp:setAmount"
                      L21_3 = L17_3
                      L22_3 = L18_3
                      L19_3(L20_3, L21_3, L22_3)
                    end
                  else
                    L17_3 = print
                    L18_3 = "^1[PED PROP]^7 objEditor NON NETWORKED dopo timeout:"
                    L19_3 = L4_3
                    L17_3(L18_3, L19_3)
                  end
                end
              else
                L16_3 = IsEntityAVehicle
                L17_3 = L6_3
                L16_3 = L16_3(L17_3)
                if L16_3 then
                  L16_3 = GetVehicleNumberPlateText
                  L17_3 = L6_3
                  L16_3 = L16_3(L17_3)
                  L17_3 = TriggerServerEvent
                  L18_3 = "vehicleProps:add"
                  L19_3 = L16_3
                  L20_3 = L14_3
                  L21_3 = L15_3
                  L17_3(L18_3, L19_3, L20_3, L21_3)
                  L17_3 = NetworkGetEntityIsNetworked
                  L18_3 = L4_3
                  L17_3 = L17_3(L18_3)
                  if L17_3 then
                    L17_3 = NetworkGetEntityIsNetworked
                    L18_3 = L6_3
                    L17_3 = L17_3(L18_3)
                    if L17_3 then
                      L17_3 = TriggerServerEvent
                      L18_3 = "sendBoxSync"
                      L19_3 = GetPlayerServerId
                      L20_3 = PlayerId
                      L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L20_3()
                      L19_3 = L19_3(L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                      L20_3 = NetworkGetNetworkIdFromEntity
                      L21_3 = L4_3
                      L20_3 = L20_3(L21_3)
                      L21_3 = NetworkGetNetworkIdFromEntity
                      L22_3 = L6_3
                      L21_3 = L21_3(L22_3)
                      L22_3 = L13_3.x
                      L23_3 = L13_3.y
                      L24_3 = L13_3.z
                      L25_3 = L11_3
                      L26_3 = L12_3
                      L27_3 = GetEntityHeading
                      L28_3 = L4_3
                      L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L27_3(L28_3)
                      L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                    end
                  end
                  L17_3 = AttachEntityToEntity
                  L18_3 = L4_3
                  L19_3 = L6_3
                  L20_3 = -1
                  L21_3 = L11_3
                  L22_3 = 0.0
                  L23_3 = 0.0
                  L24_3 = L12_3
                  L25_3 = true
                  L26_3 = true
                  L27_3 = false
                  L28_3 = false
                  L29_3 = 0
                  L30_3 = true
                  L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
                  L17_3 = IsEntityAttachedToEntity
                  L18_3 = L4_3
                  L19_3 = L6_3
                  L17_3 = L17_3(L18_3, L19_3)
                  if L17_3 then
                    L17_3 = L99_1
                    L17_3[L6_3] = true
                  end
                else
                  L16_3 = IsEntityAnObject
                  L17_3 = L6_3
                  L16_3 = L16_3(L17_3)
                  if L16_3 then
                    L16_3 = NetworkGetEntityIsNetworked
                    L17_3 = L6_3
                    L16_3 = L16_3(L17_3)
                    if not L16_3 then
                      L16_3 = NetworkRegisterEntityAsNetworked
                      L17_3 = L6_3
                      L16_3(L17_3)
                      L16_3 = GetGameTimer
                      L16_3 = L16_3()
                      L16_3 = L16_3 + 1000
                      while true do
                        L17_3 = NetworkGetEntityIsNetworked
                        L18_3 = L6_3
                        L17_3 = L17_3(L18_3)
                        if L17_3 then
                          break
                        end
                        L17_3 = GetGameTimer
                        L17_3 = L17_3()
                        if not (L16_3 > L17_3) then
                          break
                        end
                        L17_3 = Wait
                        L18_3 = 0
                        L17_3(L18_3)
                      end
                    end
                    L16_3 = print
                    L17_3 = "^3[OBJECT ATTACH]^7"
                    L18_3 = "CHILD:"
                    L19_3 = L4_3
                    L20_3 = "PARENT:"
                    L21_3 = L6_3
                    L22_3 = "CHILD NETWORK:"
                    L23_3 = NetworkGetEntityIsNetworked
                    L24_3 = L4_3
                    L23_3 = L23_3(L24_3)
                    L24_3 = "PARENT NETWORK:"
                    L25_3 = NetworkGetEntityIsNetworked
                    L26_3 = L6_3
                    L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L25_3(L26_3)
                    L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                    L16_3 = FreezeEntityPosition
                    L17_3 = L4_3
                    L18_3 = false
                    L16_3(L17_3, L18_3)
                    L16_3 = AttachEntityToEntity
                    L17_3 = L4_3
                    L18_3 = L6_3
                    L19_3 = -1
                    L20_3 = L11_3.x
                    L21_3 = L11_3.y
                    L22_3 = L11_3.z
                    L22_3 = L22_3 - 0.1
                    L23_3 = 0.0
                    L24_3 = 0.0
                    L25_3 = L12_3
                    L26_3 = false
                    L27_3 = false
                    L28_3 = false
                    L29_3 = false
                    L30_3 = 0
                    L31_3 = true
                    L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
                    L16_3 = IsEntityAttachedToEntity
                    L17_3 = L4_3
                    L18_3 = L6_3
                    L16_3 = L16_3(L17_3, L18_3)
                    if L16_3 then
                      L16_3 = L99_1
                      L16_3[L6_3] = true
                      L16_3 = Entity
                      L17_3 = L6_3
                      L16_3 = L16_3(L17_3)
                      L16_3 = L16_3.state
                      L16_3 = L16_3.worldContainerId
                      if L16_3 then
                        L17_3 = TriggerServerEvent
                        L18_3 = "worldContainer:addProp"
                        L19_3 = L16_3
                        L20_3 = GetEntityModel
                        L21_3 = L4_3
                        L20_3 = L20_3(L21_3)
                        L21_3 = L15_3 or L21_3
                        if not L15_3 then
                          L21_3 = 0
                        end
                        L17_3(L18_3, L19_3, L20_3, L21_3)
                        L17_3 = print
                        L18_3 = "worldContainer:addProp"
                        L19_3 = L15_3
                        L17_3(L18_3, L19_3)
                      end
                    end
                    L16_3 = print
                    L17_3 = "^2[OBJECT ATTACH RESULT]^7"
                    L18_3 = IsEntityAttachedToEntity
                    L19_3 = L4_3
                    L20_3 = L6_3
                    L18_3 = L18_3(L19_3, L20_3)
                    L19_3 = "PARENT NETWORK:"
                    L20_3 = NetworkGetEntityIsNetworked
                    L21_3 = L6_3
                    L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L20_3(L21_3)
                    L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                  end
                end
              end
              L16_3 = SetEntityAsMissionEntity
              L17_3 = L4_3
              L16_3(L17_3)
              L16_3 = SetEntityAsMissionEntity
              L17_3 = L6_3
              L16_3(L17_3)
              globalRot = 0
              globalRotY = 0
              L16_3 = SetEntityDrawOutline
              L17_3 = L4_3
              L18_3 = false
              L16_3(L17_3, L18_3)
              L16_3 = GetEntityModel
              L17_3 = L4_3
              L16_3 = L16_3(L17_3)
              L17_3 = IsEntityAVehicle
              L18_3 = L6_3
              L17_3 = L17_3(L18_3)
              if L17_3 then
                L17_3 = GetVehicleClass
                L18_3 = L6_3
                L17_3 = L17_3(L18_3)
                if 14 == L17_3 then
                  L17_3 = IsEntityPositionFrozen
                  L18_3 = L6_3
                  L17_3 = L17_3(L18_3)
                  if L17_3 then
                    L17_3 = FreezeEntityPosition
                    L18_3 = L6_3
                    L19_3 = false
                    L17_3(L18_3, L19_3)
                  end
                end
              end
              AmoLanciato = false
              trovatoAmo = nil
              GlobalPos = nil
              eInteractPos = nil
              L17_3 = onItemPlace
              L17_3()
              modalitaPesci = false
              pescando = false
              fishEntity = nil
              L17_3 = testo3d
              L18_3 = "Placed"
              L17_3(L18_3)
              return
            else
              L5_3 = testo3d
              L6_3 = "Not nearest attach."
              L5_3(L6_3)
            end
          else
            L5_3 = testo3d
            L6_3 = "Not valid attachable."
            L5_3(L6_3)
          end
        end
        ::lbl_801::
      end
    end
    L9_2(L10_2)
  else
    L9_2 = ClearPedTasks
    L10_2 = PlayerPedId
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = print
    L10_2 = "Nessun pesce rilevato."
    L9_2(L10_2)
  end
end
L101_1[L102_1] = L103_1
L101_1 = _ENV
L102_1 = "exports"
L101_1 = L101_1[L102_1]
L102_1 = "stopescando"
function L103_1()
  local L0_2, L1_2
  L0_2 = pescando
  if L0_2 then
    L0_2 = print
    L1_2 = "^1[stopescando]^7 blocked: pescando"
    L0_2(L1_2)
    L0_2 = true
    return L0_2
  end
  L0_2 = GhostObj
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = GhostObj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = GhostObj
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = GhostObj
      L0_2(L1_2)
      L0_2 = print
      L1_2 = "^1[stopescando]^7 blocked: GhostObj (CLEARED)"
      L0_2(L1_2)
      L0_2 = true
      return L0_2
    end
  end
  L0_2 = filo
  if nil ~= L0_2 then
    L0_2 = print
    L1_2 = "^1[stopescando]^7 blocked: filo"
    L0_2(L1_2)
    L0_2 = true
    return L0_2
  end
  L0_2 = PropMano
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = PropMano
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = print
      L1_2 = "^1[stopescando]^7 blocked: PropMano"
      L0_2(L1_2)
      L0_2 = true
      return L0_2
    end
  end
  L0_2 = fishEntity
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = fishEntity
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = print
      L1_2 = "^1[stopescando]^7 blocked: fishEntity"
      L0_2(L1_2)
      L0_2 = true
      return L0_2
    end
  end
  L0_2 = false
  return L0_2
end
L101_1(L102_1, L103_1)
L101_1 = _ENV
L102_1 = "exports"
L101_1 = L101_1[L102_1]
L102_1 = "hitTree"
function L103_1()
  local L0_2, L1_2, L2_2
  L0_2 = L9_1
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_2 = L1_2(L2_2)
  L2_2 = 1.5
  L0_2 = L0_2(L1_2, L2_2)
  if nil ~= L0_2 then
    L1_2 = ColpisciAlbero
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L101_1(L102_1, L103_1)
L101_1 = _ENV
L102_1 = "exports"
L101_1 = L101_1[L102_1]
L102_1 = "nearTree"
function L103_1()
  local L0_2, L1_2, L2_2
  L0_2 = L9_1
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_2 = L1_2(L2_2)
  L2_2 = 1.5
  L0_2 = L0_2(L1_2, L2_2)
  return L0_2
end
L101_1(L102_1, L103_1)
L101_1 = _ENV
L102_1 = "exports"
L101_1 = L101_1[L102_1]
L102_1 = "hitStone"
function L103_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L12_1
  L2_2 = GetEntityCoords
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 2.0
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 then
    L2_2 = pietre
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.pietra
    L3_2 = L92_1
    L4_2 = L0_2
    L5_2 = GetEntityCoords
    L6_2 = L2_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L2_2 = Wait
  L3_2 = 50
  L2_2(L3_2)
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = GetEntityCoords
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2 * 0.7
  L4_2 = L4_2 + L5_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = PlayEffect
  L7_2 = "core"
  L8_2 = "ent_brk_concrete"
  L9_2 = vector3
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = L5_2 - 1.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = 1.0
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = ControlloPietraColpita
  L7_2 = vector3
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L101_1(L102_1, L103_1)
L101_1 = {}
function L102_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L101_1 = L0_2
  L0_2 = 1
  L1_2 = fishValidList
  if not L1_2 then
    L1_2 = {}
  end
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = fishValidList
    L4_2 = L4_2[L3_2]
    L5_2 = type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if "string" == L5_2 then
      L5_2 = GetHashKey
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L6_2 = L101_1
      L6_2[L5_2] = true
    else
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if "number" == L5_2 then
        L5_2 = L101_1
        L5_2[L4_2] = true
      end
    end
  end
end
L103_1 = L102_1
L103_1()
L103_1 = RegisterNetEvent
L104_1 = "sendFishSync"
L103_1(L104_1)
L103_1 = AddEventHandler
L104_1 = "sendFishSync"
function L105_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L8_2 = GetPlayerServerId
  L9_2 = PlayerId
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L8_2 ~= A0_2 then
    L8_2 = GetEntityCoords
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = vector3
    L10_2 = A2_2
    L11_2 = A3_2
    L12_2 = A4_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2 = L8_2 - L9_2
    L8_2 = #L8_2
    L9_2 = 300.0
    if L8_2 < L9_2 then
      L8_2 = NetToObj
      L9_2 = A1_2
      L8_2 = L8_2(L9_2)
      L9_2 = DoesEntityExist
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = SetEntityCollision
        L10_2 = NetToObj
        L11_2 = A1_2
        L10_2 = L10_2(L11_2)
        L11_2 = false
        L12_2 = false
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = FreezeEntityPosition
        L10_2 = NetToObj
        L11_2 = A1_2
        L10_2 = L10_2(L11_2)
        L11_2 = true
        L9_2(L10_2, L11_2)
        L9_2 = 0
        while true do
          L10_2 = NetworkHasControlOfEntity
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if not (not L10_2 and L9_2 < 100) then
            break
          end
          L10_2 = NetworkRequestControlOfEntity
          L11_2 = L8_2
          L10_2(L11_2)
          L9_2 = L9_2 + 1
          L10_2 = Wait
          L11_2 = 100
          L10_2(L11_2)
        end
        L10_2 = NetworkRequestControlOfEntity
        L11_2 = L8_2
        L10_2(L11_2)
        L10_2 = Wait
        L11_2 = 25
        L10_2(L11_2)
        L10_2 = SetEntityCoords
        L11_2 = NetToObj
        L12_2 = A1_2
        L11_2 = L11_2(L12_2)
        L12_2 = A2_2
        L13_2 = A3_2
        L14_2 = A4_2
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = Wait
        L11_2 = 25
        L10_2(L11_2)
        L10_2 = SetEntityHeading
        L11_2 = NetToObj
        L12_2 = A1_2
        L11_2 = L11_2(L12_2)
        L12_2 = A7_2
        L10_2(L11_2, L12_2)
      end
    end
  end
end
L103_1(L104_1, L105_1)
L103_1 = RegisterNetEvent
L104_1 = "sendBoxSync"
L103_1(L104_1)
L103_1 = AddEventHandler
L104_1 = "sendBoxSync"
function L105_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L9_2 = nil
  L10_2 = GetPlayerServerId
  L11_2 = PlayerId
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if L10_2 ~= A0_2 then
    L10_2 = GetEntityCoords
    L11_2 = PlayerPedId
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = vector3
    L12_2 = A3_2
    L13_2 = A4_2
    L14_2 = A5_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2 = L10_2 - L11_2
    L10_2 = #L10_2
    L11_2 = 150.0
    if L10_2 < L11_2 then
      L10_2 = NetToObj
      L11_2 = A1_2
      L10_2 = L10_2(L11_2)
      if nil ~= L10_2 then
        L11_2 = DoesEntityExist
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = SetEntityCollision
          L12_2 = NetToObj
          L13_2 = A1_2
          L12_2 = L12_2(L13_2)
          L13_2 = false
          L14_2 = false
          L11_2(L12_2, L13_2, L14_2)
          L11_2 = FreezeEntityPosition
          L12_2 = NetToObj
          L13_2 = A1_2
          L12_2 = L12_2(L13_2)
          L13_2 = true
          L11_2(L12_2, L13_2)
          L11_2 = 0
          while true do
            L12_2 = NetworkHasControlOfEntity
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            if not (not L12_2 and L11_2 < 100) then
              break
            end
            L12_2 = NetworkRequestControlOfEntity
            L13_2 = L10_2
            L12_2(L13_2)
            L11_2 = L11_2 + 1
            L12_2 = Wait
            L13_2 = 100
            L12_2(L13_2)
          end
          L12_2 = NetworkRequestControlOfEntity
          L13_2 = L10_2
          L12_2(L13_2)
          L12_2 = Wait
          L13_2 = 25
          L12_2(L13_2)
          L12_2 = SetEntityCoords
          L13_2 = NetToObj
          L14_2 = A1_2
          L13_2 = L13_2(L14_2)
          L14_2 = A3_2
          L15_2 = A4_2
          L16_2 = A5_2
          L12_2(L13_2, L14_2, L15_2, L16_2)
          L12_2 = Wait
          L13_2 = 25
          L12_2(L13_2)
          L12_2 = SetEntityHeading
          L13_2 = NetToObj
          L14_2 = A1_2
          L13_2 = L13_2(L14_2)
          L14_2 = A8_2
          L12_2(L13_2, L14_2)
        end
      end
    end
  end
end
L103_1(L104_1, L105_1)
L103_1 = _ENV
L104_1 = "HandlerMenuManager"
function L105_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = IsDisabledControlJustPressed
  L2_2 = 0
  L3_2 = 74
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsControlJustPressed
    L2_2 = 0
    L3_2 = 74
    L1_2 = L1_2(L2_2, L3_2)
  end
  if L1_2 and A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = getPoolIdFromEntity
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if nil ~= L1_2 then
        L2_2 = SetEntityDrawOutline
        L3_2 = A0_2
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = pool
        L2_2 = L2_2[L1_2]
        if L2_2 then
          L2_2 = pool
          L2_2 = L2_2[L1_2]
          L2_2 = L2_2.amount
          if L2_2 then
            goto lbl_39
          end
        end
        L2_2 = 1
        ::lbl_39::
        L3_2 = ClearSelector
        L3_2()
        AmoLanciato = false
        trovatoAmo = nil
        GlobalPos = nil
        eInteractPos = nil
        modalitaPesci = false
        pescando = false
        fishEntity = nil
        L3_2 = Wait
        L4_2 = 125
        L3_2(L4_2)
        L3_2 = OpenMenuManagement
        L4_2 = A0_2
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        return
      else
        L2_2 = testo3d
        L3_2 = "Not a perm object!"
        L2_2(L3_2)
        L2_2 = PlaySoundFrontend
        L3_2 = -1
        L4_2 = "SELECT"
        L5_2 = "HUD_MINI_GAME_SOUNDSET"
        L6_2 = 1
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
end
L103_1[L104_1] = L105_1
L103_1 = _ENV
L104_1 = "OutlineEntSOD"
function L105_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lastOutline
  if L1_2 ~= A0_2 then
    L1_2 = ResetOutlineEnt
    L1_2()
    L1_2 = SetEntityAlpha
    L2_2 = A0_2
    L3_2 = 150
    L1_2(L2_2, L3_2)
    lastOutline = A0_2
    L1_2 = SetEntityDrawOutline
    L2_2 = lastOutline
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityDrawOutlineColor
    L2_2 = 255
    L3_2 = 255
    L4_2 = 255
    L5_2 = 50
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L103_1[L104_1] = L105_1
L103_1 = _ENV
L104_1 = "ResetOutlineEnt"
function L105_1()
  local L0_2, L1_2, L2_2
  L0_2 = lastOutline
  if nil ~= L0_2 then
    L0_2 = ResetEntityAlpha
    L1_2 = lastOutline
    L0_2(L1_2)
    L0_2 = SetEntityDrawOutline
    L1_2 = lastOutline
    L2_2 = false
    L0_2(L1_2, L2_2)
    lastOutline = nil
  end
end
L103_1[L104_1] = L105_1
L103_1 = _ENV
L104_1 = "soundNewFound"
function L105_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lastOutline
  if L1_2 ~= A0_2 then
    L1_2 = ResetOutlineEnt
    L1_2()
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Bus_Schedule_Pickup"
    L4_2 = "DLC_PRISON_BREAK_HEIST_SOUNDS"
    L5_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L103_1[L104_1] = L105_1
L103_1 = _ENV
L104_1 = "ClearSelector"
function L105_1()
  local L0_2, L1_2
  eInteractPos = nil
  modalitaPesci = false
  pescando = false
  L0_2 = ExecuteCommand
  L1_2 = "pointingstop"
  L0_2(L1_2)
  L0_2 = FinePesca
  L0_2()
end
L103_1[L104_1] = L105_1
L103_1 = _ENV
L104_1 = "CheckRaccogliFrutta"
function L105_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = false
  L1_2 = L10_1
  L2_2 = GetEntityCoords
  L3_2 = sonoSullaScala
  L2_2 = L2_2(L3_2)
  L3_2 = 2.0
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 then
    L2_2 = banano
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.bush
    if nil ~= L2_2 then
      L0_2 = true
    end
  end
  L2_2 = Wait
  L3_2 = 5000
  L2_2(L3_2)
  L2_2 = IsEntityPlayingAnim
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
  L5_2 = "weed_crouch_checkingleaves_idle_01_inspector"
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    if not L0_2 then
      L2_2 = faiAnimPool
      L3_2 = "abigail_mcs_2-5"
      L4_2 = "player_zero_dual-5"
      L5_2 = 1200
      L6_2 = 49
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = banano
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.life
      if L2_2 > 0 then
        L2_2 = GetEntityCoords
        L3_2 = sonoSullaScala
        L2_2 = L2_2(L3_2)
        L3_2 = GetEntityForwardVector
        L4_2 = sonoSullaScala
        L3_2 = L3_2(L4_2)
        L4_2 = 1.5
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 1
        L7_2 = 5
        L5_2 = L5_2(L6_2, L7_2)
        if 2 == L5_2 then
          L4_2 = 0.8
        end
        if 3 == L5_2 then
          L4_2 = 0.9
        end
        if 4 == L5_2 then
          L4_2 = 1.2
        end
        if 5 == L5_2 then
          L4_2 = 1.5
        end
        L6_2 = table
        L6_2 = L6_2.unpack
        L7_2 = L3_2 * L4_2
        L7_2 = L2_2 + L7_2
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        L9_2 = RequestModelStriano
        L10_2 = 1273152681
        L9_2(L10_2)
        L9_2 = CreateObject
        L10_2 = 1273152681
        L11_2 = L6_2
        L12_2 = L7_2
        L13_2 = L8_2
        L14_2 = true
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L10_2 = PlaceObjectOnGroundProperly
        L11_2 = L9_2
        L10_2(L11_2)
        L10_2 = GetEntityCoords
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L11_2 = PlayEffect
        L12_2 = "core"
        L13_2 = "ent_dst_rocks"
        L14_2 = vector3
        L15_2 = L10_2.x
        L16_2 = L10_2.y
        L17_2 = L10_2.z
        L17_2 = L17_2 + 0.2
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L15_2 = 0.3
        L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = PlaySoundFrontend
        L12_2 = -1
        L13_2 = "Zoom_In"
        L14_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
        L15_2 = 1
        L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = ClearPedTasks
        L12_2 = PlayerPedId
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2()
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L11_2 = banano
        L11_2 = L11_2[L1_2]
        L12_2 = banano
        L12_2 = L12_2[L1_2]
        L12_2 = L12_2.life
        L12_2 = L12_2 - 1
        L11_2.life = L12_2
        L11_2 = banano
        L11_2 = L11_2[L1_2]
        L11_2 = L11_2.life
        if 0 == L11_2 then
          L11_2 = banano
          L11_2 = L11_2[L1_2]
          L11_2 = L11_2.bush
          L12_2 = SetEntityAsMissionEntity
          L13_2 = L11_2
          L12_2(L13_2)
          L12_2 = DeleteEntity
          L13_2 = L11_2
          L12_2(L13_2)
          L12_2 = PlaySoundFrontend
          L13_2 = -1
          L14_2 = "DELETE"
          L15_2 = "HUD_DEATHMATCH_SOUNDSET"
          L16_2 = 1
          L12_2(L13_2, L14_2, L15_2, L16_2)
        end
      else
        L2_2 = faiAnimPool
        L3_2 = "abigail_mcs_2-5"
        L4_2 = "player_zero_dual-5"
        L5_2 = 1200
        L6_2 = 49
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
end
L103_1[L104_1] = L105_1
L103_1 = _ENV
L104_1 = "FinePesca"
function L105_1()
  local L0_2, L1_2, L2_2
  pescando = false
  L0_2 = L93_1
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 255
    L0_3(L1_3)
    L0_3 = fishEntity
    if nil ~= L0_3 then
      L0_3 = SetEntityAsMissionEntity
      L1_3 = fishEntity
      L0_3(L1_3)
      L0_3 = DeleteEntity
      L1_3 = fishEntity
      L0_3(L1_3)
      L0_3 = HoRimossoIlPesce
      L1_3 = fishEntity
      L0_3(L1_3)
      fishEntity = nil
    end
    L0_3 = filo
    if nil ~= L0_3 then
      L0_3 = DeleteRope
      L1_3 = filo
      L0_3(L1_3)
      filo = nil
    end
    L0_3 = PropMano
    if nil ~= L0_3 then
      L0_3 = SetEntityAsMissionEntity
      L1_3 = PropMano
      L0_3(L1_3)
      L0_3 = DeleteEntity
      L1_3 = PropMano
      L0_3(L1_3)
      PropMano = nil
    end
    L0_3 = GhostObj
    if nil ~= L0_3 then
      L0_3 = SetEntityAsMissionEntity
      L1_3 = GhostObj
      L0_3(L1_3)
      L0_3 = DeleteEntity
      L1_3 = GhostObj
      L0_3(L1_3)
      GhostObj = nil
    end
  end
  L0_2(L1_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  AmoLanciato = false
  trovatoAmo = nil
  modalitaPesci = false
  GlobalPos = nil
  eInteractPos = nil
  L0_2 = ExecuteCommand
  L1_2 = "pointingstop"
  L0_2(L1_2)
end
L103_1[L104_1] = L105_1
L103_1 = _ENV
L104_1 = "Transition"
L105_1 = {}
L103_1[L104_1] = L105_1
function L103_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = vec3
  L4_2 = A0_2.x
  L5_2 = A1_2.x
  L6_2 = A0_2.x
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 * A2_2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.y
  L6_2 = A1_2.y
  L7_2 = A0_2.y
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 * A2_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.z
  L7_2 = A1_2.z
  L8_2 = A0_2.z
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 * A2_2
  L6_2 = L6_2 + L7_2
  return L3_2(L4_2, L5_2, L6_2)
end
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "Linear"
function L106_1(A0_2)
  local L1_2
  return A0_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "EaseIn"
function L106_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  return L1_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "EaseOut"
function L106_1(A0_2)
  local L1_2
  L1_2 = 2
  L1_2 = L1_2 - A0_2
  L1_2 = A0_2 * L1_2
  return L1_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "EaseInOut"
function L106_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = 2 * A0_2
    L1_2 = L1_2 * A0_2
    return L1_2
  else
    L1_2 = 2 * A0_2
    L2_2 = 4
    L1_2 = L2_2 - L1_2
    L1_2 = L1_2 * A0_2
    L1_2 = -1 + L1_2
    return L1_2
  end
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "EaseInCubic"
function L106_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  L1_2 = L1_2 * A0_2
  return L1_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "EaseOutCubic"
function L106_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 - 1
  L2_2 = L1_2 * L1_2
  L2_2 = L2_2 * L1_2
  L2_2 = L2_2 + 1
  return L2_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "EaseInOutCubic"
function L106_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = 4 * A0_2
    L1_2 = L1_2 * A0_2
    L1_2 = L1_2 * A0_2
    return L1_2
  else
    L1_2 = 2 * A0_2
    L1_2 = L1_2 - 2
    L2_2 = 0.5 * L1_2
    L2_2 = L2_2 * L1_2
    L2_2 = L2_2 * L1_2
    L2_2 = L2_2 + 1
    return L2_2
  end
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "ElasticIn"
function L106_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 3
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_44
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_44
    end
  end
  L2_2 = A0_2 - 1
  L2_2 = 10 * L2_2
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L2_2 = -L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = A0_2 - 1
  L5_2 = L1_2 / 4
  L4_2 = L4_2 - L5_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = 2 * L5_2
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 / L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  ::lbl_44::
  return L2_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "ElasticOut"
function L106_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 3
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_41
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_41
    end
  end
  L2_2 = -10 * A0_2
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2 / 4
  L4_2 = A0_2 - L4_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = 2 * L5_2
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 / L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + 1
  ::lbl_41::
  return L2_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "ElasticInOut"
function L106_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 4.5
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_64
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_64
    end
  end
  L2_2 = 0.5
  if A0_2 < L2_2 then
    L2_2 = 20 * A0_2
    L2_2 = L2_2 - 10
    L3_2 = 2
    L2_2 = L3_2 ^ L2_2
    L2_2 = -0.5 * L2_2
    L3_2 = math
    L3_2 = L3_2.sin
    L4_2 = 20 * A0_2
    L4_2 = L4_2 - 11.125
    L4_2 = L4_2 * L1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 * L3_2
    if L2_2 then
      goto lbl_64
    end
  end
  L2_2 = -20 * A0_2
  L2_2 = L2_2 + 10
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L2_2 = 0.5 * L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = 20 * A0_2
  L4_2 = L4_2 - 11.125
  L4_2 = L4_2 * L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + 1
  ::lbl_64::
  return L2_2
end
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "Transition"
L104_1 = L104_1[L105_1]
L105_1 = "Functions"
L106_1 = {}
L107_1 = "Linear"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "Linear"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "EaseIn"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "EaseIn"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "EaseOut"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "EaseOut"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "EaseInOut"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "EaseInOut"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "EaseInCubic"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "EaseInCubic"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "EaseOutCubic"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "EaseOutCubic"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "EaseInOutCubic"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "EaseInOutCubic"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "ElasticIn"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "ElasticIn"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "ElasticOut"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "ElasticOut"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L107_1 = "ElasticInOut"
L108_1 = _ENV
L109_1 = "Transition"
L108_1 = L108_1[L109_1]
L109_1 = "ElasticInOut"
L108_1 = L108_1[L109_1]
L106_1[L107_1] = L108_1
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "isMovingProp"
L106_1 = {}
L104_1[L105_1] = L106_1
L104_1 = _ENV
L105_1 = "HasEntityInTable"
function L106_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L104_1[L105_1] = L106_1
function L104_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = HasEntityInTable
  L8_2 = isMovingProp
  L9_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = 0.0
    L8_2 = IsEntityPositionFrozen
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L9_2 = FreezeEntityPosition
    L10_2 = A0_2
    L11_2 = true
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = isMovingProp
    L11_2 = A0_2
    L9_2(L10_2, L11_2)
    while A5_2 > L7_2 do
      L9_2 = GetFrameTime
      L9_2 = L9_2()
      L7_2 = L7_2 + L9_2
      L9_2 = math
      L9_2 = L9_2.min
      L10_2 = math
      L10_2 = L10_2.max
      L11_2 = L7_2 / A5_2
      L12_2 = 0
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A6_2
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = SetEntityCollision
      L12_2 = A0_2
      L13_2 = false
      L11_2(L12_2, L13_2)
      if A1_2 and A2_2 then
        L11_2 = L103_1
        L12_2 = A1_2
        L13_2 = A2_2
        L14_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = SetEntityRotation
        L13_2 = A0_2
        L14_2 = L11_2.x
        L15_2 = L11_2.y
        L16_2 = L11_2.z
        L17_2 = 2
        L18_2 = true
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      end
      if A3_2 and A4_2 then
        L11_2 = L103_1
        L12_2 = A3_2
        L13_2 = A4_2
        L14_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = SetEntityCoords
        L13_2 = A0_2
        L14_2 = L11_2.x
        L15_2 = L11_2.y
        L16_2 = L11_2.z
        L17_2 = true
        L18_2 = true
        L19_2 = true
        L20_2 = false
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      end
      L11_2 = SetEntityCollision
      L12_2 = A0_2
      L13_2 = false
      L11_2(L12_2, L13_2)
      L11_2 = Wait
      L12_2 = 0
      L11_2(L12_2)
    end
    if A2_2 then
      L9_2 = SetEntityRotation
      L10_2 = A0_2
      L11_2 = A2_2.x
      L12_2 = A2_2.y
      L13_2 = A2_2.z
      L14_2 = 2
      L15_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    if A4_2 then
      L9_2 = SetEntityCoords
      L10_2 = A0_2
      L11_2 = A4_2.x
      L12_2 = A4_2.y
      L13_2 = A4_2.z
      L14_2 = true
      L15_2 = true
      L16_2 = true
      L17_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L9_2 = FreezeEntityPosition
    L10_2 = A0_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = isMovingProp
    L9_2 = #L9_2
    L10_2 = 1
    L11_2 = -1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = isMovingProp
      L13_2 = L13_2[L12_2]
      if L13_2 == A0_2 then
        L13_2 = table
        L13_2 = L13_2.remove
        L14_2 = isMovingProp
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
        break
      end
    end
  end
  L7_2 = Wait
  L8_2 = 0
  L7_2(L8_2)
  L7_2 = SetEntityCollision
  L8_2 = A0_2
  L9_2 = true
  L7_2(L8_2, L9_2)
end
L105_1 = _ENV
L106_1 = "TransitionEntity"
function L107_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = Transition
  L5_2 = L5_2.Functions
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L6_2 = print
    L7_2 = "^1Invalid transition name provided: ^7"
    L8_2 = tostring
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    return
  end
  if A2_2 then
    L6_2 = GetEntityRotation
    L7_2 = A1_2
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_23
    end
  end
  L6_2 = nil
  ::lbl_23::
  if A3_2 then
    L7_2 = GetEntityCoords
    L8_2 = A1_2
    L9_2 = true
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_32
    end
  end
  L7_2 = nil
  ::lbl_32::
  L8_2 = L104_1
  L9_2 = A1_2
  L10_2 = L6_2
  L11_2 = A2_2
  L12_2 = L7_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = L5_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L105_1[L106_1] = L107_1
function L105_1(A0_2)
  local L1_2, L2_2
  if A0_2 >= 0 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2 + 0.5
    return L1_2(L2_2)
  else
    L1_2 = math
    L1_2 = L1_2.ceil
    L2_2 = A0_2 - 0.5
    return L1_2(L2_2)
  end
end
L22_1 = L105_1
L105_1 = _ENV
L106_1 = "LanciaPesce"
function L107_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if nil ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = 64781110
      L2_2 = DetachEntity
      L3_2 = A0_2
      L4_2 = true
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = FreezeEntityPosition
      L3_2 = A0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = RequestModelStriano
      L3_2 = L1_2
      L2_2(L3_2)
      L2_2 = GetEntityForwardVector
      L3_2 = PlayerPedId
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L3_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L3_2 = table
      L3_2 = L3_2.unpack
      L4_2 = GetEntityCoords
      L5_2 = PlayerPedId
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L5_2 = L2_2 * 2.0
      L4_2 = L4_2 + L5_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L6_2 = CreateObject
      L7_2 = L1_2
      L8_2 = vector3
      L9_2 = L3_2
      L10_2 = L4_2
      L11_2 = L5_2 + 1.0
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = true
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L7_2 = SetEntityVisible
      L8_2 = L6_2
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = SetEntityAlpha
      L8_2 = L6_2
      L9_2 = 0
      L7_2(L8_2, L9_2)
      L7_2 = FreezeEntityPosition
      L8_2 = A0_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = AttachEntityToEntity
      L8_2 = A0_2
      L9_2 = L6_2
      L10_2 = GetPedBoneIndex
      L11_2 = PlayerPedId
      L11_2 = L11_2()
      L12_2 = 0
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = 0.0
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = 0.0
      L16_2 = 0.0
      L17_2 = true
      L18_2 = true
      L19_2 = false
      L20_2 = false
      L21_2 = 2
      L22_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = GetEntityCoords
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetEntityHeading
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = GetEntityForwardX
      L11_2 = L7_2
      L10_2 = L10_2(L11_2)
      L11_2 = GetEntityForwardY
      L12_2 = L7_2
      L11_2 = L11_2(L12_2)
      L12_2 = SetEntityVelocity
      L13_2 = L6_2
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L12_2 = table
      L12_2 = L12_2.unpack
      L13_2 = GetEntityCoords
      L14_2 = PlayerPedId
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L14_2()
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L14_2 = L2_2 * 5.0
      L13_2 = L13_2 + L14_2
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      L15_2 = L8_2.z
      L15_2 = L14_2 - L15_2
      L16_2 = L22_1
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2 * 1.5
      L17_2 = 7
      L18_2 = L17_2 + L16_2
      L19_2 = SetEntityVelocity
      L20_2 = L6_2
      L21_2 = L10_2 * L18_2
      L22_2 = L11_2 * L18_2
      L23_2 = L17_2 / 2.0
      L23_2 = L23_2 + L16_2
      L19_2(L20_2, L21_2, L22_2, L23_2)
      L19_2 = SetEntityAngularVelocity
      L20_2 = L6_2
      L21_2 = 250.0
      L22_2 = 250.0
      L23_2 = 250.0
      L19_2(L20_2, L21_2, L22_2, L23_2)
      L19_2 = Wait
      L20_2 = 25
      L19_2(L20_2)
      L19_2 = SetEntityAlpha
      L20_2 = A0_2
      L21_2 = 215
      L19_2(L20_2, L21_2)
      L19_2 = SetFollowPedCamViewMode
      L20_2 = 0
      L19_2(L20_2)
      L19_2 = 0
      while true do
        L20_2 = GetEntitySpeed
        L21_2 = L6_2
        L20_2 = L20_2(L21_2)
        L21_2 = 0.2
        if not (L20_2 > L21_2 and L19_2 < 100) then
          break
        end
        L19_2 = L19_2 + 1
        L20_2 = Wait
        L21_2 = 0
        L20_2(L21_2)
      end
      L20_2 = CreateThread
      function L21_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = 0
        while true do
          L1_3 = Wait
          L2_3 = 1000
          L1_3(L2_3)
          if L0_3 < 7 then
            L0_3 = L0_3 + 1
            L1_3 = IsEntityAttached
            L2_3 = A0_2
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = GetEntityCoords
              L2_3 = A0_2
              L1_3 = L1_3(L2_3)
              L2_3 = GetEntityCoords
              L3_3 = PlayerPedId
              L3_3, L4_3 = L3_3()
              L2_3 = L2_3(L3_3, L4_3)
              L1_3 = L1_3 - L2_3
              L1_3 = #L1_3
              L2_3 = 1.5
              if L1_3 < L2_3 then
                L1_3 = DoesEntityExist
                L2_3 = L6_2
                L1_3 = L1_3(L2_3)
                if L1_3 then
                  L1_3 = FreezeEntityPosition
                  L2_3 = A0_2
                  L1_3(L2_3)
                  L1_3 = SetEntityCollision
                  L2_3 = A0_2
                  L3_3 = false
                  L4_3 = false
                  L1_3(L2_3, L3_3, L4_3)
                  L1_3 = SetEntityAsMissionEntity
                  L2_3 = L6_2
                  L1_3(L2_3)
                  L1_3 = DeleteEntity
                  L2_3 = L6_2
                  L1_3(L2_3)
                  L1_3 = SetEntityAlpha
                  L2_3 = A0_2
                  L3_3 = 255
                  L1_3(L2_3, L3_3)
                  L1_3 = FishRecovMex
                  L1_3()
                  L1_3 = SetEntityAsNoLongerNeeded
                  L2_3 = A0_2
                  L1_3(L2_3)
                end
                return
              end
            end
          else
            L1_3 = DoesEntityExist
            L2_3 = A0_2
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = SetEntityAsMissionEntity
              L2_3 = A0_2
              L1_3(L2_3)
              L1_3 = DeleteEntity
              L2_3 = A0_2
              L1_3(L2_3)
            end
            L1_3 = DoesEntityExist
            L2_3 = L6_2
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = SetEntityAsMissionEntity
              L2_3 = L6_2
              L1_3(L2_3)
              L1_3 = DeleteEntity
              L2_3 = L6_2
              L1_3(L2_3)
            end
            return
          end
        end
      end
      L20_2(L21_2)
    end
  end
end
L105_1[L106_1] = L107_1
L105_1 = _ENV
L106_1 = "RiattivaPesce"
function L107_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  if A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = 64781110
      L3_2 = DetachEntity
      L4_2 = A0_2
      L5_2 = true
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = FreezeEntityPosition
      L4_2 = A0_2
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = RequestModelStriano
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = GetEntityForwardVector
      L4_2 = PlayerPedId
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L4_2()
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L4_2 = table
      L4_2 = L4_2.unpack
      L5_2 = GetEntityCoords
      L6_2 = PlayerPedId
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L6_2()
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L6_2 = L3_2 * 0.3
      L5_2 = L5_2 + L6_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L7_2 = CreateObject
      L8_2 = L2_2
      L9_2 = vector3
      L10_2 = L4_2
      L11_2 = L5_2
      L12_2 = L6_2 + 0.2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = true
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = SetEntityVisible
      L9_2 = L7_2
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = SetEntityAlpha
      L9_2 = L7_2
      L10_2 = 0
      L8_2(L9_2, L10_2)
      L8_2 = SetEntityAsMissionEntity
      L9_2 = A0_2
      L8_2(L9_2)
      L8_2 = FreezeEntityPosition
      L9_2 = A0_2
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = AttachEntityToEntity
      L9_2 = A0_2
      L10_2 = L7_2
      L11_2 = GetPedBoneIndex
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L13_2 = 0
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = 0.0
      L16_2 = 0.0
      L17_2 = 0.0
      L18_2 = true
      L19_2 = true
      L20_2 = false
      L21_2 = false
      L22_2 = 2
      L23_2 = true
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L8_2 = PlayerPedId
      L8_2 = L8_2()
      L9_2 = GetEntityCoords
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = GetEntityHeading
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L11_2 = GetEntityForwardX
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      L12_2 = GetEntityForwardY
      L13_2 = L8_2
      L12_2 = L12_2(L13_2)
      L13_2 = SetEntityVelocity
      L14_2 = L7_2
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L13_2 = table
      L13_2 = L13_2.unpack
      L14_2 = GetEntityCoords
      L15_2 = PlayerPedId
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L15_2()
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L15_2 = L3_2 * 1.5
      L14_2 = L14_2 + L15_2
      L13_2, L14_2, L15_2 = L13_2(L14_2)
      L16_2 = L9_2.z
      L16_2 = L15_2 - L16_2
      L17_2 = L22_1
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2 * 0.5
      L18_2 = 1.5
      L19_2 = L18_2 + L17_2
      L20_2 = SetEntityVelocity
      L21_2 = L7_2
      L22_2 = L11_2 * L19_2
      L23_2 = L12_2 * L19_2
      L24_2 = L18_2 + L17_2
      L20_2(L21_2, L22_2, L23_2, L24_2)
      L20_2 = SetEntityAngularVelocity
      L21_2 = L7_2
      L22_2 = 150.0
      L23_2 = 150.0
      L24_2 = 150.0
      L20_2(L21_2, L22_2, L23_2, L24_2)
      L20_2 = L7_2
      L21_2 = SetFollowPedCamViewMode
      L22_2 = 0
      L21_2(L22_2)
      L21_2 = SetEntityAsNoLongerNeeded
      L22_2 = A0_2
      L21_2(L22_2)
      L21_2 = testo3d
      L22_2 = "Not saved prop"
      L23_2 = A0_2
      L21_2(L22_2, L23_2)
      L21_2 = TriggerServerEvent
      L22_2 = "editor:qtUpdate"
      L23_2 = ObjToNet
      L24_2 = A0_2
      L23_2 = L23_2(L24_2)
      L24_2 = A1_2
      L21_2(L22_2, L23_2, L24_2)
      L21_2 = Wait
      L22_2 = 25
      L21_2(L22_2)
      L21_2 = CreateThread
      function L22_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
        while true do
          L0_3 = GetEntitySpeed
          L1_3 = L20_2
          L0_3 = L0_3(L1_3)
          L1_3 = 0.1
          if not (L0_3 > L1_3) then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
        L0_3 = FreezeEntityPosition
        L1_3 = A0_2
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = SetEntityCollision
        L1_3 = A0_2
        L2_3 = false
        L3_3 = false
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DoesEntityExist
        L1_3 = L20_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = SetEntityAsMissionEntity
          L1_3 = L20_2
          L0_3(L1_3)
          L0_3 = DeleteEntity
          L1_3 = L20_2
          L0_3(L1_3)
          L0_3 = GetEntityCoords
          L1_3 = A0_2
          L0_3 = L0_3(L1_3)
          L1_3 = TriggerServerEvent
          L2_3 = "sendFishSync"
          L3_3 = GetPlayerServerId
          L4_3 = PlayerId
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L4_3()
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L4_3 = ObjToNet
          L5_3 = A0_2
          L4_3 = L4_3(L5_3)
          L5_3 = L0_3.x
          L6_3 = L0_3.y
          L7_3 = L0_3.z
          L8_3 = nil
          L9_3 = nil
          L10_3 = GetEntityHeading
          L11_3 = A0_2
          L10_3, L11_3 = L10_3(L11_3)
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        end
      end
      L21_2(L22_2)
    end
  end
end
L105_1[L106_1] = L107_1
L105_1 = _ENV
L106_1 = "makeEntityFaceEntity"
function L107_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetEntityHeading
  L8_2 = A0_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L105_1[L106_1] = L107_1
L105_1 = _ENV
L106_1 = "TrashFunc"
function L107_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = print
  L2_2 = "Trash Func"
  L1_2(L2_2)
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = makeEntityFaceEntity
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = ExecuteCommand
  L3_2 = "e pickup"
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 1000
  L2_2(L3_2)
  L2_2 = SetEntityAsMissionEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = NetworkRequestControlOfEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = SetEntityAlpha
  L3_2 = A0_2
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = DeleteEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "leva:rbv"
  L4_2 = L1_2
  L5_2 = GetEntityModel
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = ExecuteCommand
  L3_2 = "e puliscimani"
  L2_2(L3_2)
end
L105_1[L106_1] = L107_1
L105_1 = _ENV
L106_1 = "IsEntityTooFar"
function L107_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DoesEntityExist
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = true
  do return L3_2 end
  ::lbl_13::
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2 - L4_2
  L5_2 = #L5_2
  L6_2 = GetModelDimensions
  L7_2 = GetEntityModel
  L8_2 = A0_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2)
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = L7_2 - L6_2
  L8_2 = #L8_2
  L8_2 = L8_2 * 0.5
  L9_2 = GetModelDimensions
  L10_2 = GetEntityModel
  L11_2 = A1_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
  L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L10_2 - L9_2
  L11_2 = #L11_2
  L11_2 = L11_2 * 0.5
  L12_2 = L8_2 + L11_2
  L13_2 = A2_2 or L13_2
  if not A2_2 then
    L13_2 = 0.5
  end
  L12_2 = L12_2 + L13_2
  L13_2 = L5_2 > L12_2
  L14_2 = L5_2
  L15_2 = L12_2
  return L13_2, L14_2, L15_2
end
L105_1[L106_1] = L107_1
function L105_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 75
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[SELL] +"
  L4_2 = A0_2
  L5_2 = " \240\159\146\176"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerEvent
    L1_3 = "vendiCassaPesce"
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = 1
  L2_2 = PesciVendita
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = PesciVendita
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L6_2 = "\240\159\144\159 Fish Normal"
      L7_2 = L5_2.m
      if L7_2 then
        L7_2 = string
        L7_2 = L7_2.find
        L8_2 = L5_2.m
        L9_2 = "gold"
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L6_2 = "\240\159\144\161 Fish Rare"
        end
      end
      L7_2 = L5_2.label
      if nil ~= L7_2 then
        L6_2 = L5_2.label
      end
      L7_2 = ""
      L8_2 = L5_2.price
      if nil ~= L8_2 then
        L8_2 = tostring
        L9_2 = L5_2.price
        L8_2 = L8_2(L9_2)
        L7_2 = L8_2
      end
      L8_2 = exports
      L8_2 = L8_2.striano_fastmenu
      L9_2 = L8_2
      L8_2 = L8_2.addMenuItem
      L10_2 = L6_2
      if "" ~= L7_2 then
        L11_2 = " - "
        L12_2 = L7_2
        L11_2 = L11_2 .. L12_2
        if L11_2 then
          goto lbl_63
        end
      end
      L11_2 = ""
      ::lbl_63::
      L10_2 = L10_2 .. L11_2
      function L11_2()
        local L0_3, L1_3
      end
      L12_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.open
  L1_2(L2_2)
end
L106_1 = nil
function L107_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L106_1
  if L0_2 then
    return
  end
  L0_2 = {}
  L106_1 = L0_2
  L0_2 = {}
  L1_2 = 1
  L2_2 = FishPrices
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = FishPrices
    L5_2 = L5_2[L4_2]
    L6_2 = tostring
    L7_2 = L5_2.m
    L6_2 = L6_2(L7_2)
    L0_2[L6_2] = L5_2
  end
  L1_2 = 1
  L2_2 = fishValidList
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = fishValidList
    L5_2 = L5_2[L4_2]
    L6_2 = tostring
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L6_2 = L0_2[L6_2]
    if L6_2 then
      L7_2 = GetHashKey
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = L106_1
      L9_2 = {}
      L9_2.model = L5_2
      L10_2 = L6_2.price
      L9_2.price = L10_2
      L10_2 = L6_2.label
      L9_2.label = L10_2
      L8_2[L7_2] = L9_2
    end
  end
end
L108_1 = _ENV
L109_1 = "ControlloVenditaPesce"
function L110_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = inAreaVendita
  L1_2 = L1_2()
  if nil == L1_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "getFishPrice"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = Wait
  L2_2 = 250
  L1_2(L2_2)
  L1_2 = L107_1
  L1_2()
  L1_2 = {}
  PesciVendita = L1_2
  L1_2 = 0
  L2_2 = GetGamePool
  L3_2 = "CObject"
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = GetEntityAlpha
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = 220
      if L8_2 > L9_2 then
        L8_2 = GetEntityModel
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L9_2 = L106_1
        L8_2 = L9_2[L8_2]
        if L8_2 then
          L9_2 = L8_2.price
          L1_2 = L1_2 + L9_2
          L9_2 = PesciVendita
          L10_2 = PesciVendita
          L10_2 = #L10_2
          L10_2 = L10_2 + 1
          L11_2 = {}
          L12_2 = L8_2.model
          L11_2.m = L12_2
          L11_2.o = L7_2
          L12_2 = L8_2.price
          L11_2.price = L12_2
          L12_2 = L8_2.label
          L11_2.label = L12_2
          L9_2[L10_2] = L11_2
        end
      end
    end
  end
  if L1_2 > 0 then
    L3_2 = modalitaPesci
    if not L3_2 then
      L3_2 = IsPedFatallyInjured
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsPedRagdoll
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = IsPedDeadOrDying
          L4_2 = L0_2
          L3_2 = L3_2(L4_2)
          if not L3_2 then
            L3_2 = FreezeEntityPosition
            L4_2 = L0_2
            L5_2 = true
            L3_2(L4_2, L5_2)
            L3_2 = L105_1
            L4_2 = L1_2
            L3_2(L4_2)
          end
        end
      end
    end
  else
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 150
      L0_3(L1_3)
      L0_3 = NoValidItemSell
      L0_3()
    end
    L3_2(L4_2)
  end
end
L108_1[L109_1] = L110_1
L108_1 = AddEventHandler
L109_1 = "vendiCassaPesce"
function L110_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = FreezeEntityPosition
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = false
  L1_2(L2_2, L3_2)
  closeAnyLoop = true
  L1_2 = nil
  L2_2 = 1
  L3_2 = PesciVendita
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = PesciVendita
    L6_2 = L6_2[L5_2]
    if nil ~= L6_2 then
      L6_2 = PesciVendita
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.o
      if nil ~= L6_2 then
        L6_2 = PesciVendita
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.o
        L7_2 = getPoolIdFromEntity
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if nil ~= L7_2 then
          L8_2 = delprop
          L9_2 = L7_2
          L8_2(L9_2)
          L8_2 = print
          L9_2 = "Fish selled and deleted from pool."
          L8_2(L9_2)
        end
        L8_2 = GetEntityCoords
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L1_2 = L8_2
        L8_2 = DetachEntity
        L9_2 = L6_2
        L8_2(L9_2)
        L8_2 = SetEntityAsMissionEntity
        L9_2 = L6_2
        L8_2(L9_2)
        L8_2 = DeleteEntity
        L9_2 = L6_2
        L8_2(L9_2)
      end
    end
  end
  L2_2 = {}
  PesciVendita = L2_2
  if nil ~= L1_2 then
    L2_2 = delPesci
    L3_2 = L1_2
    L2_2(L3_2)
  end
  L2_2 = EarnFromFishSell
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Enter_Area"
  L5_2 = "DLC_Lowrider_Relay_Race_Sounds"
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = {}
  PesciPresi = L2_2
  cassaChePorto = nil
  L2_2 = ClearPedTasks
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = Wait
  L3_2 = 125
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "e posatasca"
  L2_2(L3_2)
end
L108_1(L109_1, L110_1)
L108_1 = RegisterNetEvent
L109_1 = "CassaRossaFunc"
L108_1(L109_1)
L108_1 = AddEventHandler
L109_1 = "CassaRossaFunc"
function L110_1()
  local L0_2, L1_2, L2_2
  L0_2 = cassaChePorto
  if nil == L0_2 then
    L0_2 = GetHashKey
    L1_2 = "v_ind_cf_crate1_sod"
    L0_2 = L0_2(L1_2)
    L1_2 = ClearSelector
    L1_2()
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      L0_3 = Wait
      L1_3 = 255
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityForwardVector
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = customCrate
      if nil == L2_3 then
        L2_3 = table
        L2_3 = L2_3.unpack
        L3_3 = GetEntityCoords
        L4_3 = L0_3
        L3_3 = L3_3(L4_3)
        L4_3 = L1_3 * 0.55
        L3_3 = L3_3 + L4_3
        L2_3, L3_3, L4_3 = L2_3(L3_3)
        L5_3 = RequestModelStriano
        L6_3 = -1243861868
        L5_3(L6_3)
        L5_3 = -1243861868
        L0_2 = L5_3
        L5_3 = CreateObject
        L6_3 = -1243861868
        L7_3 = L2_3
        L8_3 = L3_3
        L9_3 = L4_3 - 1.0
        L10_3 = true
        L11_3 = true
        L12_3 = false
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        cassaEditor = L5_3
      else
        L2_3 = GetHashKey
        L3_3 = customCrateModel
        L2_3 = L2_3(L3_3)
        L3_3 = table
        L3_3 = L3_3.unpack
        L4_3 = GetEntityCoords
        L5_3 = L0_3
        L4_3 = L4_3(L5_3)
        L5_3 = L1_3 * 0.55
        L4_3 = L4_3 + L5_3
        L3_3, L4_3, L5_3 = L3_3(L4_3)
        L6_3 = RequestModelStriano
        L7_3 = L2_3
        L6_3(L7_3)
        L0_2 = L2_3
        L6_3 = CreateObject
        L7_3 = L2_3
        L8_3 = L3_3
        L9_3 = L4_3
        L10_3 = L5_3 - 1.0
        L11_3 = true
        L12_3 = true
        L13_3 = false
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        cassaEditor = L6_3
      end
      L2_3 = SetEntityCollision
      L3_3 = cassaEditor
      L4_3 = false
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = AggrappaPesce
      L3_3 = L0_2
      L4_3 = cassaEditor
      L5_3 = "redbox"
      L6_3 = 1
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L1_2(L2_2)
  end
end
L108_1(L109_1, L110_1)
L108_1 = RegisterNetEvent
L109_1 = "StartEditorFish"
L108_1(L109_1)
L108_1 = AddEventHandler
L109_1 = "StartEditorFish"
function L110_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = cassaChePorto
  if nil == L1_2 then
    L1_2 = AggrappaPesce
    L2_2 = nil
    L3_2 = A0_2
    L4_2 = nil
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L108_1(L109_1, L110_1)
L108_1 = RegisterNetEvent
L109_1 = "StartEditorFromPool"
L108_1(L109_1)
L108_1 = AddEventHandler
L109_1 = "StartEditorFromPool"
function L110_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = cassaChePorto
  if nil == L4_2 then
    L4_2 = AggrappaPesce
    L5_2 = A1_2
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L108_1(L109_1, L110_1)
L108_1 = _ENV
L109_1 = "AttaccaCassaBase"
function L110_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = getPoolIdFromEntity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = delprop
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L3_2 = print
    L4_2 = "Non eliminato dal pool!"
    L3_2(L4_2)
  end
  L3_2 = ClearSelector
  L3_2()
  L3_2 = AggrappaPesce
  L4_2 = L1_2
  L5_2 = nil
  L6_2 = ItemFromInventory
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L108_1[L109_1] = L110_1
L108_1 = _ENV
L109_1 = "AttaccaMotosega"
function L110_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = FuelMotosegaAttiva
  if 0 == L3_2 then
    L3_2 = getPoolIdFromEntity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      L4_2 = delprop
      L5_2 = L3_2
      L4_2(L5_2)
    else
      L4_2 = SetEntityAsMissionEntity
      L5_2 = A0_2
      L4_2(L5_2)
      L4_2 = DeleteEntity
      L5_2 = A0_2
      L4_2(L5_2)
    end
  else
    FuelMotosegaAttiva = 0
  end
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = loopMotosega
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L108_1[L109_1] = L110_1
L108_1 = _ENV
L109_1 = "loopMotosega"
function L110_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = RequestModelStriano
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = CreateObject
  L4_2 = A0_2
  L5_2 = GetEntityCoords
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = true
  L7_2 = true
  L8_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  while true do
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = SetEntityCollision
  L5_2 = L3_2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityAsMissionEntity
  L5_2 = L3_2
  L4_2(L5_2)
  if 1069395324 == A0_2 then
    L4_2 = L19_1
    L5_2 = nil
    L6_2 = 57005
    L7_2 = 0.12
    L8_2 = 0.02
    L9_2 = -0.01
    L10_2 = 8.0
    L11_2 = -84.0
    L12_2 = 156.0
    L13_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  elseif -1569653431 == A0_2 then
    L4_2 = L19_1
    L5_2 = nil
    L6_2 = 57005
    L7_2 = 0.21
    L8_2 = 0.06
    L9_2 = -0.03
    L10_2 = -6.0
    L11_2 = -90.0
    L12_2 = 0.0
    L13_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  cassaChePorto = L3_2
  if -1569653431 == A0_2 then
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = "move_weapon@jerrycan@generic"
        L1_3 = "idle"
        L2_3 = A0_2
        if 1232302069 ~= L2_3 then
          L2_3 = A0_2
          if 550150979 ~= L2_3 then
            goto lbl_15
          end
        end
        L2_3 = "anim@heists@box_carry@"
        L1_3 = "idle"
        L0_3 = L2_3
        ::lbl_15::
        L2_3 = A0_2
        if -1218018752 ~= L2_3 then
          L2_3 = A0_2
          if -1249316776 ~= L2_3 then
            goto lbl_24
          end
        end
        L2_3 = "impexp_int-0"
        L1_3 = "mp_m_waremech_01_dual-0"
        L0_3 = L2_3
        ::lbl_24::
        L2_3 = closeAnyLoop
        if L2_3 then
          closeAnyLoop = false
          L2_3 = print
          L3_3 = "Loop chiuso!"
          L2_3(L3_3)
          L2_3 = ClearPedTasks
          L3_3 = PlayerPedId
          L3_3, L4_3, L5_3, L6_3 = L3_3()
          L2_3(L3_3, L4_3, L5_3, L6_3)
          return
        end
        L2_3 = faiAnimPool
        L3_3 = L0_3
        L4_3 = L1_3
        L5_3 = -1
        L6_3 = 49
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = draw
        L3_3 = 24
        L4_3 = "Turn On (~h~"
        L5_3 = A1_2
        L6_3 = "~h~%)"
        L4_3 = L4_3 .. L5_3 .. L6_3
        L5_3 = 25
        L6_3 = "Place"
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = DisableKeysWhileFish
        L2_3()
        L2_3 = IsPedSwimming
        L3_3 = PlayerPedId
        L3_3, L4_3, L5_3, L6_3 = L3_3()
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
        if not L2_3 then
          L2_3 = IsPedSwimmingUnderWater
          L3_3 = PlayerPedId
          L3_3, L4_3, L5_3, L6_3 = L3_3()
          L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
          if not L2_3 then
            goto lbl_69
          end
        end
        L2_3 = EnableControlAction
        L3_3 = 0
        L4_3 = 21
        L2_3(L3_3, L4_3)
        ::lbl_69::
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = 25
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = ClearSelector
          L2_3()
          L2_3 = CreateThread
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = Wait
            L1_4 = 255
            L0_4(L1_4)
            L0_4 = AggrappaPesce
            L1_4 = -1569653431
            L2_4 = nil
            L3_4 = ItemFromInventory
            L4_4 = L3_2
            L3_4 = L3_4(L4_4)
            L4_4 = A1_2
            L0_4(L1_4, L2_4, L3_4, L4_4)
          end
          L2_3(L3_3)
          L2_3 = DeleteEntity
          L3_3 = L3_2
          L2_3(L3_3)
          return
        end
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = 24
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          while true do
            L2_3 = IsDisabledControlPressed
            L3_3 = 0
            L4_3 = 24
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = 25
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                break
              end
            end
            L2_3 = Wait
            L3_3 = 0
            L2_3(L3_3)
          end
          L2_3 = A1_2
          if L2_3 > 0 then
            L2_3 = A1_2
            FuelMotosegaAttiva = L2_3
            L2_3 = AttivaMotosega
            L3_3 = cassaChePorto
            L2_3(L3_3)
            return
          else
            L2_3 = faiAnimPool
            L3_3 = "ah_3b_ext-2"
            L4_3 = "player_one_dual-2"
            L5_3 = 950
            L6_3 = 49
            L2_3(L3_3, L4_3, L5_3, L6_3)
            L2_3 = NoMiscelaMex
            L2_3()
            L2_3 = Wait
            L3_3 = 950
            L2_3(L3_3)
          end
        end
      end
    end
    L4_2(L5_2)
  elseif 1069395324 == A0_2 then
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = "move_weapon@jerrycan@generic"
        L1_3 = "idle"
        L2_3 = A0_2
        if 1232302069 ~= L2_3 then
          L2_3 = A0_2
          if 550150979 ~= L2_3 then
            goto lbl_15
          end
        end
        L2_3 = "anim@heists@box_carry@"
        L1_3 = "idle"
        L0_3 = L2_3
        ::lbl_15::
        L2_3 = A0_2
        if -1218018752 ~= L2_3 then
          L2_3 = A0_2
          if -1249316776 ~= L2_3 then
            goto lbl_24
          end
        end
        L2_3 = "impexp_int-0"
        L1_3 = "mp_m_waremech_01_dual-0"
        L0_3 = L2_3
        ::lbl_24::
        L2_3 = closeAnyLoop
        if L2_3 then
          closeAnyLoop = false
          L2_3 = print
          L3_3 = "Loop chiuso!"
          L2_3(L3_3)
          L2_3 = ClearPedTasks
          L3_3 = PlayerPedId
          L3_3, L4_3, L5_3, L6_3 = L3_3()
          L2_3(L3_3, L4_3, L5_3, L6_3)
          return
        end
        L2_3 = faiAnimPool
        L3_3 = L0_3
        L4_3 = L1_3
        L5_3 = -1
        L6_3 = 49
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = draw
        L3_3 = 25
        L4_3 = "Place (~h~"
        L5_3 = A1_2
        L6_3 = "~h~ lt)"
        L4_3 = L4_3 .. L5_3 .. L6_3
        L2_3(L3_3, L4_3)
        L2_3 = DisableKeysWhileFish
        L2_3()
        L2_3 = IsPedSwimming
        L3_3 = PlayerPedId
        L3_3, L4_3, L5_3, L6_3 = L3_3()
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
        if not L2_3 then
          L2_3 = IsPedSwimmingUnderWater
          L3_3 = PlayerPedId
          L3_3, L4_3, L5_3, L6_3 = L3_3()
          L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
          if not L2_3 then
            goto lbl_67
          end
        end
        L2_3 = EnableControlAction
        L3_3 = 0
        L4_3 = 21
        L2_3(L3_3, L4_3)
        ::lbl_67::
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = 25
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = ClearSelector
          L2_3()
          L2_3 = CreateThread
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = Wait
            L1_4 = 255
            L0_4(L1_4)
            L0_4 = AggrappaPesce
            L1_4 = nil
            L2_4 = L3_2
            L3_4 = ItemFromInventory
            L4_4 = A0_2
            L3_4 = L3_4(L4_4)
            L4_4 = A1_2
            L0_4(L1_4, L2_4, L3_4, L4_4)
          end
          L2_3(L3_3)
          return
        end
      end
    end
    L4_2(L5_2)
  end
end
L108_1[L109_1] = L110_1
L108_1 = _ENV
L109_1 = "AttivaMotosega"
function L110_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = "sounds/chainstart.ogg"
  L3_2 = exports
  L3_2 = L3_2.xsound
  L4_2 = L3_2
  L3_2 = L3_2.PlayUrlPos
  L5_2 = "chainstart"
  L6_2 = L2_2
  L7_2 = 0.2
  L8_2 = GetEntityCoords
  L9_2 = PlayerPedId
  L9_2, L10_2, L11_2, L12_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = DetachEntity
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = L19_1
  L4_2 = nil
  L5_2 = 57005
  L6_2 = 0.174
  L7_2 = 0.146
  L8_2 = -0.036
  L9_2 = 5.12
  L10_2 = -53.439999999999
  L11_2 = 145.5
  L12_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = "bzzz_animation_chainsaw"
  L4_2 = "animation_chainsaw"
  L5_2 = faiAnimPool
  L6_2 = L3_2
  L7_2 = L4_2
  L8_2 = -1
  L9_2 = 49
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Wait
  L6_2 = 25
  L5_2(L6_2)
  L5_2 = SetEntityAnimSpeed
  L6_2 = L1_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = 0.0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  while true do
    L5_2 = IsEntityPlayingAnim
    L6_2 = L1_2
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      break
    end
    L5_2 = IsDisabledControlPressed
    L6_2 = 0
    L7_2 = 73
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L5_2 = IsControlPressed
    L6_2 = 0
    L7_2 = 73
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = draw
    L6_2 = 24
    L7_2 = "Cut (~h~"
    L8_2 = FuelMotosegaAttiva
    L9_2 = "~h~%)"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L8_2 = 73
    L9_2 = "Cancel"
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = faiAnimPool
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = -1
    L9_2 = 49
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = IsDisabledControlPressed
    L6_2 = 0
    L7_2 = 24
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = SetEntityAnimSpeed
      L6_2 = PlayerPedId
      L6_2 = L6_2()
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = 0.0
      L5_2(L6_2, L7_2, L8_2, L9_2)
    else
      L5_2 = SetEntityAnimSpeed
      L6_2 = PlayerPedId
      L6_2 = L6_2()
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = 0.8
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = IsDisabledControlPressed
      L6_2 = 0
      L7_2 = 24
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        L5_2 = IsControlPressed
        L6_2 = 0
        L7_2 = 25
        L5_2 = L5_2(L6_2, L7_2)
        if not L5_2 then
          goto lbl_137
        end
      end
      L5_2 = stopMusic
      L6_2 = "chainstart"
      L5_2(L6_2)
      L5_2 = "sounds/chainloop.ogg"
      L6_2 = exports
      L6_2 = L6_2.xsound
      L7_2 = L6_2
      L6_2 = L6_2.PlayUrlPos
      L8_2 = "chainloop"
      L9_2 = L5_2
      L10_2 = 0.05
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L11_2, L12_2 = L11_2(L12_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L6_2 = MotosegaCheck
      L7_2 = A0_2
      L6_2(L7_2)
      return
    end
    ::lbl_137::
  end
  L5_2 = FuelMotosegaAttiva
  L5_2 = L5_2 - 1
  FuelMotosegaAttiva = L5_2
  L5_2 = FuelMotosegaAttiva
  if nil ~= L5_2 then
    L5_2 = FuelMotosegaAttiva
    if not (L5_2 < 0) then
      goto lbl_149
    end
  end
  FuelMotosegaAttiva = 0
  ::lbl_149::
  L5_2 = ClearPedTasks
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = DetachEntity
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = stopMusic
  L6_2 = "chainstart"
  L5_2(L6_2)
  L5_2 = AttaccaMotosega
  L6_2 = A0_2
  L7_2 = FuelMotosegaAttiva
  L5_2(L6_2, L7_2)
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = DeleteEntity
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = stopMusic
  L6_2 = "chainloop"
  L5_2(L6_2)
  L5_2 = print
  L6_2 = "Chiudo Motosega!"
  L5_2(L6_2)
end
L108_1[L109_1] = L110_1
L108_1 = _ENV
L109_1 = "PlayEffectChain"
function L110_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = 3.0
  if A3_2 then
    L4_2 = A3_2
  end
  L5_2 = HasNamedPtfxAssetLoaded
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestNamedPtfxAsset
    L6_2 = A0_2
    L5_2(L6_2)
  end
  while true do
    L5_2 = HasNamedPtfxAssetLoaded
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = SetPtfxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = UseParticleFxAssetNextCall
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = StartParticleFxLoopedOnEntity
    L1_3 = A1_2
    L2_3 = A2_2
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = 0.0
    L7_3 = 0.0
    L8_3 = 0.0
    L9_3 = L4_2
    L10_3 = false
    L11_3 = false
    L12_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L1_3 = Wait
    L2_3 = 250
    L1_3(L2_3)
    L1_3 = StopParticleFxLooped
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = RemoveParticleFx
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2)
end
L108_1[L109_1] = L110_1
L108_1 = _ENV
L109_1 = "MotosegaCheck"
function L110_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L9_1
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = 2.0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = "bzzz_animation_chainsaw"
  L3_2 = "animation_chainsaw"
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = GetEntityCoords
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = PlayEffectChain
  L8_2 = "core"
  L9_2 = "ent_anim_cig_smoke"
  L10_2 = A0_2
  L11_2 = 2.0
  L7_2(L8_2, L9_2, L10_2, L11_2)
  if nil ~= L1_2 then
    L7_2 = ColpisciAlbero
    L8_2 = L1_2
    L9_2 = 3
    L7_2(L8_2, L9_2)
  end
  L7_2 = Wait
  L8_2 = 700
  L7_2(L8_2)
  if nil ~= L1_2 then
    L7_2 = ColpisciAlbero
    L8_2 = L1_2
    L9_2 = 2
    L7_2(L8_2, L9_2)
  end
  L7_2 = Wait
  L8_2 = 700
  L7_2(L8_2)
  if nil ~= L1_2 then
    L7_2 = ColpisciAlbero
    L8_2 = L1_2
    L7_2(L8_2)
  end
  L7_2 = stopMusic
  L8_2 = "chainloop"
  L7_2(L8_2)
  L7_2 = "sounds/chainstart.ogg"
  L8_2 = exports
  L8_2 = L8_2.xsound
  L9_2 = L8_2
  L8_2 = L8_2.PlayUrlPos
  L10_2 = "chainstart"
  L11_2 = L7_2
  L12_2 = 0.2
  L13_2 = GetEntityCoords
  L14_2 = PlayerPedId
  L14_2 = L14_2()
  L13_2 = L13_2(L14_2)
  L14_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if nil ~= L1_2 then
    L8_2 = ColpisciAlbero
    L9_2 = L1_2
    L8_2(L9_2)
  end
  L8_2 = FuelMotosegaAttiva
  L8_2 = L8_2 - 1
  FuelMotosegaAttiva = L8_2
  L8_2 = FuelMotosegaAttiva
  if nil ~= L8_2 then
    L8_2 = FuelMotosegaAttiva
    if not (L8_2 < 0) then
      goto lbl_77
    end
  end
  FuelMotosegaAttiva = 0
  ::lbl_77::
  L8_2 = FuelMotosegaAttiva
  if L8_2 > 1 then
    L8_2 = AttivaMotosega
    L9_2 = A0_2
    L8_2(L9_2)
  else
    L8_2 = stopMusic
    L9_2 = "chainstart"
    L8_2(L9_2)
    L8_2 = AttaccaMotosega
    L9_2 = A0_2
    L10_2 = FuelMotosegaAttiva
    L8_2(L9_2, L10_2)
  end
end
L108_1[L109_1] = L110_1
function L108_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = print
  L4_2 = "^3========== POOL DEBUG ==========^7"
  L3_2(L4_2)
  L3_2 = print
  L4_2 = "ENTITY:"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "MODEL:"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "POS:"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = 0
  L4_2 = pairs
  L5_2 = pool
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 then
      L10_2 = L9_2.model
      if L10_2 then
        L10_2 = L9_2.model
        L11_2 = type
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if "string" == L11_2 then
          L11_2 = GetHashKey
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L10_2 = L11_2
        end
        if L10_2 == L1_2 then
          L3_2 = L3_2 + 1
          L11_2 = print
          L12_2 = "^6[STESSO MODEL]^7"
          L11_2(L12_2)
          L11_2 = print
          L12_2 = "ID:"
          L13_2 = L8_2
          L11_2(L12_2, L13_2)
          L11_2 = print
          L12_2 = "MODEL:"
          L13_2 = L9_2.model
          L11_2(L12_2, L13_2)
          L11_2 = print
          L12_2 = "X:"
          L13_2 = L9_2.x
          L14_2 = "Y:"
          L15_2 = L9_2.y
          L16_2 = "Z:"
          L17_2 = L9_2.z
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          L11_2 = print
          L12_2 = "QT:"
          L13_2 = L9_2.amount
          L11_2(L12_2, L13_2)
          L11_2 = L9_2.x
          if L11_2 then
            L11_2 = L9_2.y
            if L11_2 then
              L11_2 = L9_2.z
              if L11_2 then
                L11_2 = vector3
                L12_2 = tonumber
                L13_2 = L9_2.x
                L12_2 = L12_2(L13_2)
                if not L12_2 then
                  L12_2 = 0.0
                end
                L13_2 = tonumber
                L14_2 = L9_2.y
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 0.0
                end
                L14_2 = tonumber
                L15_2 = L9_2.z
                L14_2 = L14_2(L15_2)
                if not L14_2 then
                  L14_2 = 0.0
                end
                L11_2 = L11_2(L12_2, L13_2, L14_2)
                L12_2 = print
                L13_2 = "DIST:"
                L14_2 = L2_2 - L11_2
                L14_2 = #L14_2
                L12_2(L13_2, L14_2)
              end
            end
          end
        end
      end
    end
  end
  L4_2 = print
  L5_2 = "^3TOTAL STESSO MODEL:^7"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = print
  L5_2 = "^3===============================^7"
  L4_2(L5_2)
end
L109_1 = _ENV
L110_1 = "ControlloUnioneOggetti"
function L111_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L1_2 = nil
  L2_2 = nil
  L3_2 = 3.0
  L4_2 = 3.0
  L5_2 = pairs
  L6_2 = pool
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = L10_2.model
      if L11_2 then
        L11_2 = L10_2.x
        if L11_2 then
          L11_2 = L10_2.y
          if L11_2 then
            L11_2 = L10_2.z
            if L11_2 then
              L11_2 = tonumber
              L12_2 = L10_2.model
              L11_2 = L11_2(L12_2)
              L12_2 = vector3
              L13_2 = tonumber
              L14_2 = L10_2.x
              L13_2 = L13_2(L14_2)
              L14_2 = tonumber
              L15_2 = L10_2.y
              L14_2 = L14_2(L15_2)
              L15_2 = tonumber
              L16_2 = L10_2.z
              L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L15_2(L16_2)
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
              L13_2 = L0_2 - L12_2
              L13_2 = #L13_2
              if -1569653431 == L11_2 and L3_2 > L13_2 then
                L3_2 = L13_2
                L1_2 = L9_2
              end
              if 1069395324 == L11_2 and L4_2 > L13_2 then
                L4_2 = L13_2
                L2_2 = L9_2
              end
            end
          end
        end
      end
    end
  end
  if L1_2 and L2_2 then
    L5_2 = pool
    L5_2 = L5_2[L1_2]
    L6_2 = pool
    L6_2 = L6_2[L2_2]
    L7_2 = vector3
    L8_2 = tonumber
    L9_2 = L5_2.x
    L8_2 = L8_2(L9_2)
    L9_2 = tonumber
    L10_2 = L5_2.y
    L9_2 = L9_2(L10_2)
    L10_2 = tonumber
    L11_2 = L5_2.z
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L10_2(L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L8_2 = vector3
    L9_2 = tonumber
    L10_2 = L6_2.x
    L9_2 = L9_2(L10_2)
    L10_2 = tonumber
    L11_2 = L6_2.y
    L10_2 = L10_2(L11_2)
    L11_2 = tonumber
    L12_2 = L6_2.z
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2(L12_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L9_2 = L7_2 - L8_2
    L9_2 = #L9_2
    L10_2 = 1.5
    if L9_2 < L10_2 then
      L10_2 = print
      L11_2 = "Trovata tanica vicino alla motosega!"
      L12_2 = "MOTOSEGA:"
      L13_2 = L1_2
      L14_2 = "JERRY:"
      L15_2 = L2_2
      L16_2 = "DIST:"
      L17_2 = L9_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L10_2 = tonumber
      L11_2 = L5_2.amount
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = 0
      end
      L11_2 = L6_2.amount
      if nil == L11_2 then
        L6_2.amount = 100
      end
      L11_2 = tonumber
      L12_2 = L6_2.amount
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        L11_2 = 0
      end
      if L11_2 > 0 and L10_2 < 100 then
        L12_2 = 100
        L12_2 = L12_2 - L10_2
        L13_2 = math
        L13_2 = L13_2.min
        L14_2 = L12_2
        L15_2 = L11_2
        L13_2 = L13_2(L14_2, L15_2)
        L14_2 = L11_2 - L13_2
        L6_2.amount = L14_2
        L14_2 = L10_2 + L13_2
        L5_2.amount = L14_2
        L14_2 = TriggerServerEvent
        L15_2 = "distProps:setAmount"
        L16_2 = L2_2
        L17_2 = pool
        L17_2 = L17_2[L2_2]
        L17_2 = L17_2.amount
        L14_2(L15_2, L16_2, L17_2)
        L14_2 = TriggerServerEvent
        L15_2 = "distProps:setAmount"
        L16_2 = L1_2
        L17_2 = pool
        L17_2 = L17_2[L1_2]
        L17_2 = L17_2.amount
        L14_2(L15_2, L16_2, L17_2)
        L14_2 = L6_2.amount
        if L14_2 < 0 then
          L6_2.amount = 0
        end
        L14_2 = delprop
        L15_2 = L6_2.id
        L14_2(L15_2)
        L14_2 = L5_2.amount
        if L14_2 > 100 then
          L5_2.amount = 100
        end
        L14_2 = print
        L15_2 = "^2[RIFORNIMENTO]^7"
        L16_2 = "Jerry:"
        L17_2 = L11_2
        L18_2 = "->"
        L19_2 = L6_2.amount
        L20_2 = "Motosega:"
        L21_2 = L10_2
        L22_2 = "->"
        L23_2 = L5_2.amount
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L14_2 = PlaySoundFrontend
        L15_2 = -1
        L16_2 = "PICKUP_WEAPON_SMOKEGRENADE"
        L17_2 = "HUD_FRONTEND_WEAPONS_PICKUPS_SOUNDSET"
        L18_2 = 1
        L14_2(L15_2, L16_2, L17_2, L18_2)
        L14_2 = faiAnimPool
        L15_2 = "anim@mp_snowball"
        L16_2 = "pickup_snowball"
        L17_2 = 500
        L18_2 = 49
        L14_2(L15_2, L16_2, L17_2, L18_2)
        L14_2 = "sounds/chainstart.ogg"
        L15_2 = exports
        L15_2 = L15_2.xsound
        L16_2 = L15_2
        L15_2 = L15_2.PlayUrlPos
        L17_2 = "chainstart"
        L18_2 = L14_2
        L19_2 = 0.2
        L20_2 = L0_2
        L21_2 = false
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L15_2 = CreateThread
        function L16_2()
          local L0_3, L1_3
          L0_3 = Wait
          L1_3 = 1500
          L0_3(L1_3)
          L0_3 = stopMusic
          L1_3 = "chainstart"
          L0_3(L1_3)
        end
        L15_2(L16_2)
      end
    end
  end
end
L109_1[L110_1] = L111_1
L109_1 = _ENV
L110_1 = "Autorizzato"
function L111_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = VehicleAllowed
  L1_2 = #L1_2
  if 0 == L1_2 then
    L1_2 = NetworkRequestControlOfEntity
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = true
    return L1_2
  end
  L1_2 = 1
  L2_2 = VehicleAllowed
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = tostring
    L6_2 = GetEntityModel
    L7_2 = A0_2
    L6_2, L7_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = tostring
    L7_2 = VehicleAllowed
    L7_2 = L7_2[L4_2]
    L6_2 = L6_2(L7_2)
    if L5_2 == L6_2 then
      L5_2 = NetworkRequestControlOfEntity
      L6_2 = A0_2
      L5_2(L6_2)
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L109_1[L110_1] = L111_1
L109_1 = nil
function L110_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A0_2 or not A1_2 then
    return
  end
  L3_2 = A0_2[A1_2]
  if not L3_2 then
    return
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L3_2 or L4_2
  if "number" ~= L4_2 or not L3_2 then
    L4_2 = GetHashKey
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
  end
  if 0 ~= L4_2 then
    L5_2 = IsModelValid
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L109_1
      L6_2 = A2_2 or L6_2
      if not A2_2 then
        L6_2 = true
      end
      L5_2[L4_2] = L6_2
    end
  end
end
function L111_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A0_2 then
    return
  end
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 then
      L9_2 = L110_1
      L10_2 = L8_2
      L11_2 = A1_2
      L12_2 = A2_2 or L12_2
      if not A2_2 then
        L12_2 = tostring
        L13_2 = L7_2
        L12_2 = L12_2(L13_2)
      end
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
function L112_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L109_1 = L0_2
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.GetItems
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = L111_1
  L2_2 = L0_2
  L3_2 = "model"
  L4_2 = "inventory"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = GetResourceState
  L2_2 = "striano_combat"
  L1_2 = L1_2(L2_2)
  if "started" == L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.GetItems
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = {}
    end
    L2_2 = L111_1
    L3_2 = L1_2
    L4_2 = "m"
    L5_2 = "combat"
    L2_2(L3_2, L4_2, L5_2)
  end
  L1_2 = L111_1
  L2_2 = pool
  L3_2 = "model"
  L4_2 = "pool"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L111_1
  L2_2 = StoneArea
  L3_2 = "handler"
  L4_2 = "stone"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L111_1
  L2_2 = abbinamentiStone
  L3_2 = "b"
  L4_2 = "stone_abbinamento"
  L1_2(L2_2, L3_2, L4_2)
end
L113_1 = _ENV
L114_1 = "RefreshAttachedObjectModelCache"
function L115_1()
  local L0_2, L1_2
  L0_2 = L112_1
  L0_2()
end
L113_1[L114_1] = L115_1
L113_1 = _ENV
L114_1 = "exports"
L113_1 = L113_1[L114_1]
L114_1 = "RefreshAttachedObjectModelCache"
L115_1 = _ENV
L116_1 = "RefreshAttachedObjectModelCache"
L115_1 = L115_1[L116_1]
L113_1(L114_1, L115_1)
L113_1 = _ENV
L114_1 = "HasInventoryObjectAttachedToEntity"
function L115_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_12::
  L2_2 = L109_1
  if not L2_2 then
    L2_2 = L112_1
    L2_2()
  end
  if not A1_2 then
    A1_2 = 3.0
  end
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = FindFirstObject
  L3_2, L4_2 = L3_2()
  if not L3_2 or -1 == L3_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = true
  repeat
    if L4_2 and 0 ~= L4_2 then
      L6_2 = DoesEntityExist
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if L6_2 and L4_2 ~= A0_2 then
        L6_2 = GetEntityModel
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        L7_2 = L109_1
        L7_2 = L7_2[L6_2]
        if L7_2 then
          L7_2 = GetEntityCoords
          L8_2 = L4_2
          L7_2 = L7_2(L8_2)
          L7_2 = L7_2 - L2_2
          L7_2 = #L7_2
          if A1_2 >= L7_2 then
            L8_2 = GetEntityAttachedTo
            L9_2 = L4_2
            L8_2 = L8_2(L9_2)
            if L8_2 ~= A0_2 then
              L9_2 = IsEntityAttachedToEntity
              L10_2 = L4_2
              L11_2 = A0_2
              L9_2 = L9_2(L10_2, L11_2)
              if not L9_2 then
                goto lbl_74
              end
            end
            L9_2 = EndFindObject
            L10_2 = L3_2
            L9_2(L10_2)
            L9_2 = true
            return L9_2
          end
        end
      end
    end
    ::lbl_74::
    L6_2 = FindNextObject
    L7_2 = L3_2
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L7_2
    L5_2 = L6_2
  until not L5_2
  L6_2 = EndFindObject
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = false
  return L6_2
end
L113_1[L114_1] = L115_1
L113_1 = _ENV
L114_1 = "GetAttachedPlayer"
function L115_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_12::
  L1_2 = A0_2
  while true do
    L2_2 = IsEntityAttached
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = GetEntityAttachedTo
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if 0 ~= L1_2 then
      L2_2 = DoesEntityExist
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        goto lbl_31
      end
    end
    L2_2 = 0
    do return L2_2 end
    ::lbl_31::
    L2_2 = IsEntityAPed
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = IsPedAPlayer
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        return L1_2
      end
    end
  end
  L2_2 = 0
  return L2_2
end
L113_1[L114_1] = L115_1
L113_1 = _ENV
L114_1 = "GetAttachedPlayerServerId"
function L115_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetAttachedPlayer
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = NetworkGetPlayerIndexFromPed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if -1 == L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = GetPlayerServerId
  L4_2 = L2_2
  return L3_2(L4_2)
end
L113_1[L114_1] = L115_1
L113_1 = RegisterNetEvent
L114_1 = "getFishPrice"
L113_1(L114_1)
L113_1 = AddEventHandler
L114_1 = "getFishPrice"
function L115_1(A0_2)
  local L1_2
  FishPrices = A0_2
end
L113_1(L114_1, L115_1)
L113_1 = RegisterNetEvent
L114_1 = "applicaBombola"
function L115_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = bombolaGasObj
  if nil == L0_2 then
    closeFishF = false
    L0_2 = OnIndossaSub
    L0_2()
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsEntityInWater
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = MustBeWater
      L1_2()
      return
    end
    L1_2 = CreateObject
    L2_2 = -2088599787
    L3_2 = GetEntityCoords
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = true
    L5_2 = true
    L6_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    bombolaGasObj = L1_2
    L1_2 = AttachEntityToEntity
    L2_2 = bombolaGasObj
    L3_2 = L0_2
    L4_2 = GetPedBoneIndex
    L5_2 = L0_2
    L6_2 = 24818
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = -0.03
    L6_2 = -0.24
    L7_2 = 0.01
    L8_2 = 0.0
    L9_2 = 90.0
    L10_2 = 0.0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L14_2 = true
    L15_2 = 1
    L16_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L1_2 = loopsub
    L1_2()
    L1_2 = CreateObject
    L2_2 = 239157435
    L3_2 = GetEntityCoords
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = true
    L5_2 = true
    L6_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    mascheraSUBObj = L1_2
    L1_2 = AttachEntityToEntity
    L2_2 = mascheraSUBObj
    L3_2 = L0_2
    L4_2 = GetPedBoneIndex
    L5_2 = L0_2
    L6_2 = 12844
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 87.5
    L10_2 = 180.0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L14_2 = true
    L15_2 = 1
    L16_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    timerSUB = 10
    L1_2 = TriggerEvent
    L2_2 = "scarpesub"
    L1_2(L2_2)
    L1_2 = SetEnableScuba
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SetPedMaxTimeUnderwater
    L2_2 = L0_2
    L3_2 = 50.0
    L1_2(L2_2, L3_2)
    L1_2 = Wait
    L2_2 = 250
    L1_2(L2_2)
    L1_2 = faiAnimPool
    L2_2 = "oddjobs@basejump@ig_15"
    L3_2 = "puton_parachute"
    L4_2 = 2500
    L5_2 = 49
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetSwimMultiplierForPlayer
    L2_2 = PlayerId
    L2_2 = L2_2()
    L3_2 = 1.49
    L1_2(L2_2, L3_2)
  else
    L0_2 = timerSUB
    L0_2 = L0_2 + 10
    timerSUB = L0_2
  end
end
L113_1(L114_1, L115_1)
L113_1 = false
L114_1 = _ENV
L115_1 = "TogliSub"
function L116_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L113_1
  if L0_2 then
    return
  end
  L0_2 = true
  L113_1 = L0_2
  L0_2 = math
  L0_2 = L0_2.floor
  L1_2 = tonumber
  L2_2 = timerSUB
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
  end
  L1_2 = L1_2 / 10
  L0_2 = L0_2(L1_2)
  if L0_2 > 0 then
    L1_2 = TriggerServerEvent
    L2_2 = "inv3d:giveItem"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = "player"
    L5_2 = "scubagear"
    L6_2 = L0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  timerSUB = 0
  L1_2 = SetEntityInvincible
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = faiAnimPool
  L2_2 = "switch@franklin@chopshop"
  L3_2 = "wipehands"
  L4_2 = 2500
  L5_2 = 49
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetEnableScuba
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = bombolaGasObj
  if nil ~= L1_2 then
    L1_2 = DetachEntity
    L2_2 = bombolaGasObj
    L1_2(L2_2)
    L1_2 = SetEntityAsMissionEntity
    L2_2 = bombolaGasObj
    L1_2(L2_2)
    L1_2 = DeleteEntity
    L2_2 = bombolaGasObj
    L1_2(L2_2)
    bombolaGasObj = nil
  end
  L1_2 = mascheraSUBObj
  if nil ~= L1_2 then
    L1_2 = DetachEntity
    L2_2 = mascheraSUBObj
    L1_2(L2_2)
    L1_2 = SetEntityAsMissionEntity
    L2_2 = mascheraSUBObj
    L1_2(L2_2)
    L1_2 = DeleteEntity
    L2_2 = mascheraSUBObj
    L1_2(L2_2)
    mascheraSUBObj = nil
  end
  L1_2 = TriggerEvent
  L2_2 = "delscarpesub"
  L1_2(L2_2)
  L1_2 = SetPedMoveRateOverride
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = 0.0
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = false
  L113_1 = L1_2
end
L114_1[L115_1] = L116_1
function L114_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%."
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 0
  end
  L6_2 = "f"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L115_1 = _ENV
L116_1 = "GetGameTimer"
L115_1 = L115_1[L116_1]
L115_1 = L115_1()
L116_1 = _ENV
L117_1 = "loopsub"
function L118_1()
  local L0_2, L1_2, L2_2
  L0_2 = mascheraSUBObj
  if L0_2 then
  else
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L115_1
        L0_3 = L0_3 - L1_3
        L1_3 = 10000
        if L0_3 >= L1_3 then
          L0_3 = IsPedSwimmingUnderWater
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            L115_1 = L0_3
            L0_3 = math
            L0_3 = L0_3.max
            L1_3 = 0
            L2_3 = timerSUB
            L2_3 = L2_3 - 1
            L0_3 = L0_3(L1_3, L2_3)
            timerSUB = L0_3
          else
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            L115_1 = L0_3
          end
        end
        L0_3 = DisableKeysWhileFish
        L0_3()
        L0_3 = closeFishF
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            goto lbl_46
          end
        end
        L0_3 = TogliSub
        L0_3()
        closeFishF = false
        do return end
        ::lbl_46::
        L0_3 = timerSUB
        if nil ~= L0_3 then
          L0_3 = timerSUB
          if L0_3 <= 0 then
            goto lbl_55
          end
        end
        L0_3 = timerSUB
        ::lbl_55::
        if nil == L0_3 then
          L0_3 = TogliSub
          L0_3()
          L0_3 = DelTutaSub
          L0_3()
          return
        end
        L0_3 = GetEntityBonePosition_2
        L1_3 = L0_2
        L2_3 = GetPedBoneIndex
        L3_3 = L0_2
        L4_3 = 23553
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L2_3(L3_3, L4_3)
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = Draw3D
        L2_3 = L0_3.x
        L3_3 = L0_3.y
        L4_3 = L0_3.z
        L5_3 = ""
        L6_3 = L114_1
        L7_3 = timerSUB
        L8_3 = 1
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = "%"
        L5_3 = L5_3 .. L6_3 .. L7_3
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = IsPedSwimmingUnderWater
        L2_3 = L0_2
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = GetEntityHeading
          L2_3 = L0_2
          L1_3 = L1_3(L2_3)
          L2_3 = 2.5
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 34
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = SetEntityHeading
            L4_3 = L0_2
            L5_3 = L1_3 + L2_3
            L3_3(L4_3, L5_3)
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 35
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = SetEntityHeading
            L4_3 = L0_2
            L5_3 = L1_3 - L2_3
            L3_3(L4_3, L5_3)
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 21
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              goto lbl_137
            end
          end
          L3_3 = SetEntityRotation
          L4_3 = L0_2
          L5_3 = GetGameplayCamRot
          L6_3 = 0
          L5_3 = L5_3(L6_3)
          L5_3 = L5_3.x
          L6_3 = GetGameplayCamRot
          L7_3 = 0
          L6_3 = L6_3(L7_3)
          L6_3 = L6_3.y
          L7_3 = GetGameplayCamRot
          L8_3 = 0
          L7_3 = L7_3(L8_3)
          L7_3 = L7_3.z
          L3_3(L4_3, L5_3, L6_3, L7_3)
          ::lbl_137::
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = SetEntityVelocity
            L4_3 = L0_2
            L5_3 = 0.0
            L6_3 = 0.0
            L7_3 = 0.0
            L3_3(L4_3, L5_3, L6_3, L7_3)
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 44
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = GetEntityVelocity
            L4_3 = L0_2
            L3_3 = L3_3(L4_3)
            L4_3 = SetEntityVelocity
            L5_3 = L0_2
            L6_3 = L3_3.x
            L7_3 = L3_3.y
            L8_3 = 3.0
            L4_3(L5_3, L6_3, L7_3, L8_3)
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 38
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsDisabledControlPressed
            L4_3 = 0
            L5_3 = 38
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              goto lbl_185
            end
          end
          L3_3 = GetEntityVelocity
          L4_3 = L0_2
          L3_3 = L3_3(L4_3)
          L4_3 = SetEntityVelocity
          L5_3 = L0_2
          L6_3 = L3_3.x
          L7_3 = L3_3.y
          L8_3 = -3.0
          L4_3(L5_3, L6_3, L7_3, L8_3)
        end
        ::lbl_185::
      end
    end
    L1_2(L2_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      while true do
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = timerSUB
        if 0 == L0_3 then
          closeFishF = true
          L0_3 = TogliSub
          L0_3()
          return
        end
        L0_3 = IsEntityInWater
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          closeFishF = true
          L0_3 = TogliSub
          L0_3()
          return
        end
        L0_3 = IsPedSwimmingUnderWater
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = timerSUB
          if L0_3 > 0 then
            L0_3 = SetPlayerUnderwaterTimeRemaining
            L1_3 = L0_2
            L2_3 = 100.0
            L0_3(L1_3, L2_3)
            L0_3 = SetPlayerUnderwaterTimeRemaining
            L1_3 = PlayerId
            L1_3 = L1_3()
            L2_3 = 100.0
            L0_3(L1_3, L2_3)
            L0_3 = SetPedMaxTimeUnderwater
            L1_3 = L0_2
            L2_3 = 50.0
            L0_3(L1_3, L2_3)
          end
          L0_3 = GetEntityCoords
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          L0_3 = L0_3.z
          if L0_3 < -30 then
            L0_3 = SetEntityInvincible
            L1_3 = L0_2
            L2_3 = true
            L0_3(L1_3, L2_3)
          end
          L0_3 = timerSUB
          if L0_3 <= 0 then
            timerSUB = 0
            L0_3 = PlaySoundFrontend
            L1_3 = -1
            L2_3 = "5_Second_Timer"
            L3_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
            L4_3 = 0
            L0_3(L1_3, L2_3, L3_3, L4_3)
            closeFishF = true
            L0_3 = TogliSub
            L0_3()
            return
          end
          L0_3 = GetEntityCoords
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          L0_3 = L0_3.z
          L1_3 = -150.0
          if L0_3 < L1_3 then
            L0_3 = ApplyForceToEntity
            L1_3 = L0_2
            L2_3 = 1
            L3_3 = 0.0
            L4_3 = 0.0
            L5_3 = -15.0
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = true
            L10_3 = false
            L11_3 = false
            L12_3 = false
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            L0_3 = PlaySoundFrontend
            L1_3 = -1
            L2_3 = "Player_Enter_Line"
            L3_3 = "GTAO_FM_Cross_The_Line_Soundset"
            L4_3 = 0
            L0_3(L1_3, L2_3, L3_3, L4_3)
          end
        end
      end
    end
    L1_2(L2_2)
  end
end
L116_1[L117_1] = L118_1
L116_1 = false
L117_1 = _ENV
L118_1 = "vector3"
L117_1 = L117_1[L118_1]
L118_1 = 0
L119_1 = 0
L120_1 = 0
L117_1 = L117_1(L118_1, L119_1, L120_1)
L118_1 = _ENV
L119_1 = "v3Tov2"
function L120_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = vector2
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  return L1_2(L2_2, L3_2)
end
L118_1[L119_1] = L120_1
L118_1 = {}
L119_1 = nil
L120_1 = "new"
function L121_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = {}
  L1_2.list = L2_2
  L2_2 = setmetatable
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return L1_2
end
L118_1[L120_1] = L121_1
L120_1 = "getClosestPickupDistance"
function L121_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 500
  L3_2 = pairs
  L4_2 = A0_2.list
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = v3Tov2
    L10_2 = L8_2.coords
    L9_2 = L9_2(L10_2)
    L9_2 = A1_2 - L9_2
    L9_2 = #L9_2
    if L2_2 > L9_2 then
      L2_2 = L9_2
    end
  end
  return L2_2
end
L118_1[L120_1] = L121_1
L120_1 = "isValidCoord"
function L121_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = v3Tov2
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = pickups
  L3_2 = L2_2
  L2_2 = L2_2.getClosestPickupDistance
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = DistanzaDive
  L3_2 = L3_2 / 2
  L2_2 = L2_2 >= L3_2
  return L2_2
end
L118_1[L120_1] = L121_1
L120_1 = "generateCoords"
function L121_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = vector3
  L3_2 = L22_1
  L4_2 = L1_2.x
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L22_1
  L5_2 = L1_2.y
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_2.z
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = vector3
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = L2_2.x
  L6_2 = DistanzaDive
  L5_2 = L5_2 - L6_2
  L6_2 = L2_2.x
  L7_2 = DistanzaDive
  L6_2 = L6_2 + L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = L2_2.y
  L7_2 = DistanzaDive
  L6_2 = L6_2 - L7_2
  L7_2 = L2_2.y
  L8_2 = DistanzaDive
  L7_2 = L7_2 + L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L2_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2 = L3_2
  return L1_2
end
L118_1[L120_1] = L121_1
L120_1 = "generate"
function L121_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2.generateCoords
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.isValidCoord
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = GetGroundZUltra
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L6_2 = L2_2.z
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      if false ~= L3_2 then
        L4_2 = GetWaterHeight
        L5_2 = L2_2.x
        L6_2 = L2_2.y
        L7_2 = L3_2
        L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
        L6_2 = math
        L6_2 = L6_2.abs
        L7_2 = L5_2 - L3_2
        L6_2 = L6_2(L7_2)
        if L6_2 >= 10 then
          L6_2 = L3_2 + 0.5
          L7_2 = -145.0
          if L6_2 > L7_2 then
            L6_2 = vector3
            L7_2 = L2_2.x
            L8_2 = L2_2.y
            L9_2 = L3_2 + 0.5
            L6_2 = L6_2(L7_2, L8_2, L9_2)
            L2_2 = L6_2
            L6_2 = A0_2.list
            L7_2 = A0_2.list
            L7_2 = #L7_2
            L7_2 = L7_2 + 1
            L8_2 = {}
            L8_2.coords = L2_2
            L9_2 = math
            L9_2 = L9_2.random
            L10_2 = 5
            L11_2 = 10
            L9_2 = L9_2(L10_2, L11_2)
            L9_2 = L9_2 * 1.0
            L8_2.light = L9_2
            L6_2[L7_2] = L8_2
          end
        end
      end
    end
  end
end
L118_1[L120_1] = L121_1
L120_1 = _ENV
L121_1 = "CreateThread"
L120_1 = L120_1[L121_1]
function L121_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = 2000
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L2_2 = GetWaterHeight
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L5_2 = L1_2.z
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L4_2 = L1_2.z
      L4_2 = L3_2 - L4_2
      L119_1 = L4_2
    end
    L4_2 = pickups
    L4_2 = L4_2.list
    L4_2 = #L4_2
    if L4_2 > 0 then
      L4_2 = pairs
      L5_2 = pickups
      L5_2 = L5_2.list
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = v3Tov2
        L11_2 = L1_2
        L10_2 = L10_2(L11_2)
        L11_2 = v3Tov2
        L12_2 = L9_2.coords
        L11_2 = L11_2(L12_2)
        L10_2 = L10_2 - L11_2
        L10_2 = #L10_2
        L11_2 = DistanzaDive
        if L10_2 >= L11_2 then
          L11_2 = pickups
          L12_2 = L11_2
          L11_2 = L11_2.remove
          L13_2 = L8_2
          L11_2(L12_2, L13_2)
        end
      end
    end
    L4_2 = Wait
    L5_2 = L0_2
    L4_2(L5_2)
  end
end
L120_1(L121_1)
L120_1 = _ENV
L121_1 = "loopDive"
function L122_1()
  local L0_2, L1_2
  L0_2 = L116_1
  if not L0_2 then
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
      while true do
        L0_3 = L116_1
        if not L0_3 then
          break
        end
        L0_3 = 3000
        L1_3 = pickups
        L1_3 = L1_3.list
        L1_3 = #L1_3
        if L1_3 > 0 then
          L0_3 = 1500
          L1_3 = pickups
          L1_3 = L1_3.list
          L1_3 = #L1_3
          if L1_3 > 0 then
            L1_3 = pairs
            L2_3 = pickups
            L2_3 = L2_3.list
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = GetEntityCoords
              L8_3 = PlayerPedId
              L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L8_3()
              L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
              L8_3 = L6_3.coords
              L7_3 = L7_3 - L8_3
              L7_3 = #L7_3
              L8_3 = DistanzaDive
              if L7_3 <= L8_3 then
                L0_3 = 0
                L8_3 = DrawMarker
                L9_3 = 1
                L10_3 = vector3
                L11_3 = L6_3.coords
                L11_3 = L11_3.x
                L12_3 = L6_3.coords
                L12_3 = L12_3.y
                L13_3 = L6_3.coords
                L13_3 = L13_3.z
                L13_3 = L13_3 - 0.5
                L10_3 = L10_3(L11_3, L12_3, L13_3)
                L11_3 = 0.0
                L12_3 = 0.0
                L13_3 = 0.0
                L14_3 = 0
                L15_3 = 0.0
                L16_3 = 0.0
                L17_3 = 0.1
                L18_3 = 0.1
                L19_3 = 20.0
                L20_3 = 0
                L21_3 = 0
                L22_3 = 0
                L23_3 = 50
                L24_3 = true
                L25_3 = true
                L26_3 = 2
                L27_3 = false
                L28_3 = false
                L29_3 = false
                L30_3 = false
                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
                L8_3 = DrawLightWithRange
                L9_3 = L6_3.coords
                L9_3 = L9_3.x
                L10_3 = L6_3.coords
                L10_3 = L10_3.y
                L11_3 = L6_3.coords
                L11_3 = L11_3.z
                L11_3 = L11_3 + 0.5
                L12_3 = 255
                L13_3 = 255
                L14_3 = 255
                L15_3 = L6_3.light
                L16_3 = 1.3
                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                L8_3 = 2.5
                if L7_3 <= L8_3 then
                  L8_3 = FreezeEntityPosition
                  L9_3 = PlayerPedId
                  L9_3 = L9_3()
                  L10_3 = true
                  L8_3(L9_3, L10_3)
                  L8_3 = FreezeEntityPosition
                  L9_3 = PlayerPedId
                  L9_3 = L9_3()
                  L10_3 = false
                  L8_3(L9_3, L10_3)
                  L8_3 = faiAnimPool
                  L9_3 = "anim@mp_snowball"
                  L10_3 = "pickup_snowball"
                  L11_3 = 1000
                  L12_3 = 49
                  L8_3(L9_3, L10_3, L11_3, L12_3)
                  L8_3 = PlaySoundFrontend
                  L9_3 = -1
                  L10_3 = "Zone_Neutral"
                  L11_3 = "DLC_Apartments_Drop_Zone_Sounds"
                  L12_3 = 0
                  L8_3(L9_3, L10_3, L11_3, L12_3)
                  L8_3 = GetEntityCoords
                  L9_3 = PlayerPedId
                  L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L9_3()
                  L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
                  L117_1 = L8_3
                  L8_3 = LootMarino
                  L8_3()
                  L8_3 = pickups
                  L9_3 = L8_3
                  L8_3 = L8_3.pick
                  L10_3 = L5_3
                  L8_3(L9_3, L10_3)
                  L8_3 = Wait
                  L9_3 = 9000
                  L8_3(L9_3)
                end
              end
            end
          end
        end
        L1_3 = Wait
        L2_3 = L0_3
        L1_3(L2_3)
      end
    end
    L0_2(L1_2)
  end
end
L120_1[L121_1] = L122_1
L120_1 = "pick"
function L121_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L118_1[L120_1] = L121_1
L120_1 = "remove"
function L121_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.list
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2.list
  L3_2[A1_2] = nil
end
L118_1[L120_1] = L121_1
L120_1 = _ENV
L121_1 = "pickups"
L124_1 = "new"
L123_1 = L118_1
L122_1 = L118_1[L124_1]
L122_1 = L122_1(L123_1)
L120_1[L121_1] = L122_1
L120_1 = _ENV
L121_1 = "CreateThread"
L120_1 = L120_1[L121_1]
function L121_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = 5000
    L1_2 = canTakeLootMarine
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = IsPedHuman
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if L1_2 then
        L1_2 = IsEntityPositionFrozen
        L2_2 = PlayerPedId
        L2_2, L3_2, L4_2, L5_2 = L2_2()
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityInWater
          L2_2 = PlayerPedId
          L2_2, L3_2, L4_2, L5_2 = L2_2()
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if L1_2 then
            L1_2 = L119_1
            if L1_2 then
              L1_2 = L119_1
              L2_2 = ProfonditaPerDive
              if L1_2 >= L2_2 then
                L1_2 = GetEntityCoords
                L2_2 = PlayerPedId
                L2_2, L3_2, L4_2, L5_2 = L2_2()
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                L2_2 = L117_1
                L1_2 = L1_2 - L2_2
                L1_2 = #L1_2
                L2_2 = DistanzaDive
                if L1_2 > L2_2 then
                  L1_2 = IsPedHuman
                  L2_2 = PlayerPedId
                  L2_2, L3_2, L4_2, L5_2 = L2_2()
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if L1_2 then
                    L0_2 = 500
                    L1_2 = pickups
                    L1_2 = L1_2.list
                    L1_2 = #L1_2
                    L2_2 = MassimoDive
                    if L1_2 < L2_2 then
                      L1_2 = pickups
                      L2_2 = L1_2
                      L1_2 = L1_2.generate
                      L1_2(L2_2)
                      L1_2 = L116_1
                      if not L1_2 then
                        L1_2 = loopDive
                        L1_2()
                        L1_2 = true
                        L116_1 = L1_2
                        L1_2 = PlaySoundFrontend
                        L2_2 = -1
                        L3_2 = "ATM_WINDOW"
                        L4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                        L5_2 = 1
                        L1_2(L2_2, L3_2, L4_2, L5_2)
                        L1_2 = MsgInfoDive
                        L1_2()
                      end
                    end
                end
              end
            end
          end
        end
      end
    end
    else
      L1_2 = IsEntityInWater
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if L1_2 then
        L1_2 = L119_1
        if L1_2 then
          L1_2 = L119_1
          L2_2 = ProfonditaPerDive
          if L1_2 < L2_2 then
            L1_2 = L116_1
            if L1_2 then
              L1_2 = false
              L116_1 = L1_2
            end
          end
        end
      end
    end
    L1_2 = Wait
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L120_1(L121_1)
L120_1 = false
L121_1 = {}
L122_1 = _ENV
L123_1 = "waitSpawner"
function L124_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = Wait
      L1_3 = 60000
      L0_3(L1_3)
      L1_3 = A0_2
      L0_3 = L121_1
      L3_3 = A0_2
      L2_3 = L121_1
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3 - 1
      L0_3[L1_3] = L2_3
      L0_3 = print
      L1_3 = "Sto abbassando il timer attesa per lo spawner degli alberi a zone! "
      L3_3 = A0_2
      L2_3 = L121_1
      L2_3 = L2_3[L3_3]
      L1_3 = L1_3 .. L2_3
      L0_3(L1_3)
      L1_3 = A0_2
      L0_3 = L121_1
      L0_3 = L0_3[L1_3]
      if 0 == L0_3 then
        L1_3 = A0_2
        L0_3 = L121_1
        L0_3[L1_3] = nil
        L0_3 = TreeArea
        L1_3 = A0_2
        L0_3 = L0_3[L1_3]
        L0_3.cTree = 0
        return
      end
    end
  end
  L1_2(L2_2)
end
L122_1[L123_1] = L124_1
L122_1 = _ENV
L123_1 = "addTree"
function L124_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L2_2 = true
  L3_2 = 1
  L4_2 = alberi
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = alberi
    L7_2 = L7_2[L6_2]
    if nil ~= L7_2 then
      L7_2 = GetEntityCoords
      L8_2 = alberi
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.tronco
      L7_2 = L7_2(L8_2)
      L7_2 = A0_2 - L7_2
      L7_2 = #L7_2
      if L7_2 < 2.0 then
        L2_2 = false
      end
      L7_2 = GetEntityCoords
      L8_2 = PlayerPedId
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L8_2 = GetEntityCoords
      L9_2 = alberi
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.tronco
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2 - L8_2
      L7_2 = #L7_2
      if L7_2 < 2.0 then
        L2_2 = false
      end
    end
  end
  if L2_2 then
    L3_2 = RequestModelStriano
    L4_2 = -1837161340
    L3_2(L4_2)
    L3_2 = GetGroundZUltra
    L4_2 = A0_2.x
    L4_2 = L4_2 + 0.0
    L5_2 = A0_2.y
    L5_2 = L5_2 + 0.0
    L6_2 = A0_2.z
    L6_2 = L6_2 + 999.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = CreateObject
    L5_2 = -1837161340
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = L3_2 + 1.0
    L9_2 = false
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    while true do
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
    L5_2 = SetEntityVisible
    L6_2 = L4_2
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = PlaceObjectOnGroundProperly
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 1
    L5_2(L6_2)
    L5_2 = FreezeEntityPosition
    L6_2 = L4_2
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = SetEntityNoCollisionEntity
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = L4_2
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = SetEntityCollision
    L6_2 = L4_2
    L7_2 = false
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = GetEntityCoords
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = false
    L7_2 = L5_2.z
    if L7_2 > 0 then
      L7_2 = IsEntityInWater
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = SetEntityAsMissionEntity
        L8_2 = L4_2
        L7_2(L8_2)
        L7_2 = DeleteEntity
        L8_2 = L4_2
        L7_2(L8_2)
        L4_2 = nil
        L7_2 = RequestModelStriano
        L8_2 = 64781110
        L7_2(L8_2)
        L7_2 = CreateObject
        L8_2 = 64781110
        L9_2 = vector3
        L10_2 = L5_2.x
        L11_2 = L5_2.y
        L12_2 = L5_2.z
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        while true do
          L8_2 = DoesEntityExist
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
        end
        L8_2 = SetEntityVisible
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityVelocity
        L9_2 = L7_2
        L10_2 = 0.0
        L11_2 = 0.0
        L12_2 = 0.0
        L8_2(L9_2, L10_2, L11_2, L12_2)
        L8_2 = GetEntityCoords
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L5_2 = L8_2
        L8_2 = CreateObject
        L9_2 = 64781110
        L10_2 = vector3
        L11_2 = L5_2.x
        L12_2 = L5_2.y
        L13_2 = L5_2.z
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = L6_2
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        while true do
          L9_2 = DoesEntityExist
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            break
          end
          L9_2 = Wait
          L10_2 = 0
          L9_2(L10_2)
        end
        L9_2 = AttachEntityToEntity
        L10_2 = L8_2
        L11_2 = L7_2
        L12_2 = GetPedBoneIndex
        L13_2 = PlayerPedId
        L13_2 = L13_2()
        L14_2 = 0
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = 0.0
        L14_2 = 0.0
        L15_2 = 0.3
        L16_2 = 90.0
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = true
        L20_2 = true
        L21_2 = false
        L22_2 = false
        L23_2 = 2
        L24_2 = true
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L9_2 = SetEntityVisible
        L10_2 = L8_2
        L11_2 = false
        L9_2(L10_2, L11_2)
        L9_2 = GetEntityCoords
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L5_2 = L9_2
        L9_2 = RequestModelStriano
        L10_2 = 1811737818
        L9_2(L10_2)
        L9_2 = CreateObject
        L10_2 = 1811737818
        L11_2 = vector3
        L12_2 = L5_2.x
        L13_2 = L5_2.y
        L14_2 = L5_2.z
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = L6_2
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = SetEntityAlpha
        L11_2 = L9_2
        L12_2 = 245
        L10_2(L11_2, L12_2)
        L10_2 = AttachEntityToEntity
        L11_2 = L9_2
        L12_2 = L8_2
        L13_2 = GetPedBoneIndex
        L14_2 = PlayerPedId
        L14_2 = L14_2()
        L15_2 = 0
        L13_2 = L13_2(L14_2, L15_2)
        L14_2 = 0.0
        L15_2 = 0.5
        L16_2 = 0.0
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = true
        L21_2 = true
        L22_2 = false
        L23_2 = false
        L24_2 = 2
        L25_2 = true
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        L10_2 = GetEntityCoords
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L5_2 = L10_2
        L10_2 = RequestModelStriano
        L11_2 = -1187508969
        L10_2(L11_2)
        L10_2 = CreateObject
        L11_2 = -1187508969
        L12_2 = vector3
        L13_2 = L5_2.x
        L14_2 = L5_2.y
        L15_2 = L5_2.z
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = L6_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        while true do
          L11_2 = DoesEntityExist
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            break
          end
          L11_2 = Wait
          L12_2 = 25
          L11_2(L12_2)
        end
        L11_2 = AttachEntityToEntity
        L12_2 = L10_2
        L13_2 = L9_2
        L14_2 = GetPedBoneIndex
        L15_2 = PlayerPedId
        L15_2 = L15_2()
        L16_2 = 0
        L14_2 = L14_2(L15_2, L16_2)
        L15_2 = 0.0
        L16_2 = 0.4
        L17_2 = 0.0
        L18_2 = -90.0
        L19_2 = 0.0
        L20_2 = 0.0
        L21_2 = true
        L22_2 = true
        L23_2 = false
        L24_2 = false
        L25_2 = 2
        L26_2 = true
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L11_2 = ApplyForceToEntity
        L12_2 = L7_2
        L13_2 = 1
        L14_2 = 0.0
        L15_2 = 0.0
        L16_2 = 2.0
        L17_2 = 10.0
        L18_2 = 10.0
        L19_2 = 10.0
        L20_2 = true
        L21_2 = false
        L22_2 = false
        L23_2 = false
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L11_2 = math
        L11_2 = L11_2.random
        L12_2 = 5
        L13_2 = 10
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = alberi
        L14_2 = {}
        L14_2.tronco = L9_2
        L14_2.brick = L7_2
        L14_2.brick2 = L8_2
        L14_2.bush = L10_2
        L14_2.life = L11_2
        L14_2.zona = A1_2
        L12_2(L13_2, L14_2)
        if nil ~= A1_2 then
          L12_2 = TreeArea
          L12_2 = L12_2[A1_2]
          L13_2 = TreeArea
          L13_2 = L13_2[A1_2]
          L13_2 = L13_2.cTree
          L13_2 = L13_2 + 1
          L12_2.cTree = L13_2
        end
    end
    else
      if L4_2 then
        L7_2 = DoesEntityExist
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = SetEntityAsMissionEntity
          L8_2 = L4_2
          L7_2(L8_2)
          L7_2 = DeleteEntity
          L8_2 = L4_2
          L7_2(L8_2)
          L4_2 = nil
        end
      end
      L7_2 = Wait
      L8_2 = 1000
      L7_2(L8_2)
    end
  else
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
  end
end
L122_1[L123_1] = L124_1
L122_1 = _ENV
L123_1 = "addTreeBanana"
function L124_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L2_2 = true
  L3_2 = 1
  L4_2 = banano
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = banano
    L7_2 = L7_2[L6_2]
    if nil ~= L7_2 then
      L7_2 = GetEntityCoords
      L8_2 = banano
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.tronco
      L7_2 = L7_2(L8_2)
      L7_2 = A0_2 - L7_2
      L7_2 = #L7_2
      if L7_2 < 2.0 then
        L2_2 = false
      end
      L7_2 = GetEntityCoords
      L8_2 = PlayerPedId
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L8_2 = GetEntityCoords
      L9_2 = banano
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.tronco
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2 - L8_2
      L7_2 = #L7_2
      if L7_2 < 2.0 then
        L2_2 = false
      end
    end
  end
  if L2_2 then
    L3_2 = RequestModelStriano
    L4_2 = -1837161340
    L3_2(L4_2)
    L3_2 = GetGroundZUltra
    L4_2 = A0_2.x
    L4_2 = L4_2 + 0.0
    L5_2 = A0_2.y
    L5_2 = L5_2 + 0.0
    L6_2 = A0_2.z
    L6_2 = L6_2 + 999.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = CreateObject
    L5_2 = -1837161340
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = L3_2 + 1.0
    L9_2 = false
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    while true do
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
    L5_2 = SetEntityVisible
    L6_2 = L4_2
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = PlaceObjectOnGroundProperly
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 1
    L5_2(L6_2)
    L5_2 = FreezeEntityPosition
    L6_2 = L4_2
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = SetEntityNoCollisionEntity
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = L4_2
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = SetEntityCollision
    L6_2 = L4_2
    L7_2 = false
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = GetEntityCoords
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = false
    L7_2 = L5_2.z
    if L7_2 > 0 then
      L7_2 = IsEntityInWater
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = SetEntityAsMissionEntity
        L8_2 = L4_2
        L7_2(L8_2)
        L7_2 = DeleteEntity
        L8_2 = L4_2
        L7_2(L8_2)
        L4_2 = nil
        L7_2 = RequestModelStriano
        L8_2 = 64781110
        L7_2(L8_2)
        L7_2 = CreateObject
        L8_2 = 64781110
        L9_2 = vector3
        L10_2 = L5_2.x
        L11_2 = L5_2.y
        L12_2 = L5_2.z
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        while true do
          L8_2 = DoesEntityExist
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
        end
        L8_2 = SetEntityVisible
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityVelocity
        L9_2 = L7_2
        L10_2 = 0.0
        L11_2 = 0.0
        L12_2 = 0.0
        L8_2(L9_2, L10_2, L11_2, L12_2)
        L8_2 = GetEntityCoords
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L5_2 = L8_2
        L8_2 = CreateObject
        L9_2 = 64781110
        L10_2 = vector3
        L11_2 = L5_2.x
        L12_2 = L5_2.y
        L13_2 = L5_2.z
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = L6_2
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        while true do
          L9_2 = DoesEntityExist
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            break
          end
          L9_2 = Wait
          L10_2 = 0
          L9_2(L10_2)
        end
        L9_2 = AttachEntityToEntity
        L10_2 = L8_2
        L11_2 = L7_2
        L12_2 = GetPedBoneIndex
        L13_2 = PlayerPedId
        L13_2 = L13_2()
        L14_2 = 0
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = 0.0
        L14_2 = 0.0
        L15_2 = 0.0
        L16_2 = 0.0
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = true
        L20_2 = true
        L21_2 = false
        L22_2 = false
        L23_2 = 2
        L24_2 = true
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L9_2 = SetEntityVisible
        L10_2 = L8_2
        L11_2 = false
        L9_2(L10_2, L11_2)
        L9_2 = GetEntityCoords
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L5_2 = L9_2
        L9_2 = RequestModelStriano
        L10_2 = 1850871425
        L9_2(L10_2)
        L9_2 = CreateObject
        L10_2 = 1850871425
        L11_2 = vector3
        L12_2 = L5_2.x
        L13_2 = L5_2.y
        L14_2 = L5_2.z
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = L6_2
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = AttachEntityToEntity
        L11_2 = L9_2
        L12_2 = L8_2
        L13_2 = GetPedBoneIndex
        L14_2 = PlayerPedId
        L14_2 = L14_2()
        L15_2 = 0
        L13_2 = L13_2(L14_2, L15_2)
        L14_2 = 0.0
        L15_2 = 0.3
        L16_2 = 0.0
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = true
        L21_2 = true
        L22_2 = false
        L23_2 = false
        L24_2 = 2
        L25_2 = true
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        L10_2 = GetEntityCoords
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L5_2 = L10_2
        L10_2 = RequestModelStriano
        L11_2 = 2053219262
        L10_2(L11_2)
        L10_2 = CreateObject
        L11_2 = 2053219262
        L12_2 = vector3
        L13_2 = L5_2.x
        L14_2 = L5_2.y
        L15_2 = L5_2.z
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = L6_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        while true do
          L11_2 = DoesEntityExist
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            break
          end
          L11_2 = Wait
          L12_2 = 25
          L11_2(L12_2)
        end
        L11_2 = AttachEntityToEntity
        L12_2 = L10_2
        L13_2 = L9_2
        L14_2 = GetPedBoneIndex
        L15_2 = PlayerPedId
        L15_2 = L15_2()
        L16_2 = 0
        L14_2 = L14_2(L15_2, L16_2)
        L15_2 = 0.0
        L16_2 = 0.0
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = 0.0
        L21_2 = true
        L22_2 = true
        L23_2 = false
        L24_2 = false
        L25_2 = 2
        L26_2 = true
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L11_2 = ApplyForceToEntity
        L12_2 = L7_2
        L13_2 = 1
        L14_2 = 0.0
        L15_2 = 0.0
        L16_2 = 2.0
        L17_2 = 10.0
        L18_2 = 10.0
        L19_2 = 10.0
        L20_2 = true
        L21_2 = false
        L22_2 = false
        L23_2 = false
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L11_2 = math
        L11_2 = L11_2.random
        L12_2 = 2
        L13_2 = 5
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = banano
        L14_2 = {}
        L14_2.tronco = L9_2
        L14_2.brick = L7_2
        L14_2.brick2 = L8_2
        L14_2.bush = L10_2
        L14_2.life = L11_2
        L14_2.zona = A1_2
        L12_2(L13_2, L14_2)
        if nil ~= A1_2 then
          L12_2 = BananaTreeArea
          L12_2 = L12_2[A1_2]
          L13_2 = BananaTreeArea
          L13_2 = L13_2[A1_2]
          L13_2 = L13_2.cTree
          L13_2 = L13_2 + 1
          L12_2.cTree = L13_2
        end
    end
    else
      L7_2 = Wait
      L8_2 = 1000
      L7_2(L8_2)
    end
  else
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
  end
end
L122_1[L123_1] = L124_1
L122_1 = _ENV
L123_1 = "ColpisciAlbero"
function L124_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if nil == A0_2 then
    return
  end
  L2_2 = A0_2
  L3_2 = GetEntityCoords
  L4_2 = alberi
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.tronco
  L3_2 = L3_2(L4_2)
  L4_2 = testo3d2
  L5_2 = alberi
  L5_2 = L5_2[L2_2]
  L5_2 = L5_2.life
  L6_2 = alberi
  L6_2 = L6_2[L2_2]
  L6_2 = L6_2.tronco
  L4_2(L5_2, L6_2)
  L4_2 = alberi
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.brick
  L5_2 = alberi
  L5_2 = L5_2[L2_2]
  L5_2 = L5_2.brick2
  L6_2 = alberi
  L6_2 = L6_2[L2_2]
  L6_2 = L6_2.tronco
  L7_2 = alberi
  L7_2 = L7_2[L2_2]
  L7_2 = L7_2.bush
  L8_2 = HitWood
  L9_2 = GetEntityCoords
  L10_2 = L4_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2(L10_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = ApplyForceToEntity
  L9_2 = L4_2
  L10_2 = 1
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 2.0
  L14_2 = 100.0
  L15_2 = -150.0
  L16_2 = -150.0
  L17_2 = true
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = alberi
  L8_2 = L8_2[L2_2]
  L9_2 = alberi
  L9_2 = L9_2[L2_2]
  L9_2 = L9_2.life
  L9_2 = L9_2 - A1_2
  if not L9_2 then
    L9_2 = 1
  end
  L8_2.life = L9_2
  L8_2 = alberi
  L8_2 = L8_2[L2_2]
  L8_2 = L8_2.life
  if L8_2 <= 0 then
    L8_2 = PlaySoundFrontend
    L9_2 = -1
    L10_2 = "MP_AWARD"
    L11_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    L12_2 = 1
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = DetachEntity
    L9_2 = L5_2
    L8_2(L9_2)
    L8_2 = ApplyForceToEntity
    L9_2 = L5_2
    L10_2 = 1
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = 1.0
    L14_2 = 100.0
    L15_2 = -150.0
    L16_2 = -150.0
    L17_2 = true
    L18_2 = false
    L19_2 = false
    L20_2 = false
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L8_2 = ApplyForceToEntity
    L9_2 = L5_2
    L10_2 = 1
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = 5.0
    L14_2 = 100.0
    L15_2 = -150.0
    L16_2 = -150.0
    L17_2 = true
    L18_2 = false
    L19_2 = false
    L20_2 = false
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L8_2 = SetEntityAsMissionEntity
    L9_2 = L4_2
    L8_2(L9_2)
    L8_2 = DeleteEntity
    L9_2 = L4_2
    L8_2(L9_2)
    L8_2 = exports
    L8_2 = L8_2.striano_combat
    L9_2 = L8_2
    L8_2 = L8_2.fodera2
    L8_2(L9_2)
    L8_2 = GetEntityModel
    L9_2 = cassaChePorto
    L8_2 = L8_2(L9_2)
    if -1569653431 ~= L8_2 then
      L8_2 = SetEntityAsMissionEntity
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = DeleteEntity
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = faiAnimPool
      L9_2 = "gestures@f@standing@casual"
      L10_2 = "gesture_pleased"
      L11_2 = 5
      L12_2 = 1
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = faiAnimPool2
      L9_2 = "anim@mp_snowball"
      L10_2 = "pickup_snowball"
      L11_2 = 3500
      L12_2 = 49
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = Wait
      L9_2 = 900
      L8_2(L9_2)
    end
    L8_2 = GetEntityCoords
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L9_2 = SetEntityAsMissionEntity
    L10_2 = L6_2
    L9_2(L10_2)
    L9_2 = DeleteEntity
    L10_2 = L6_2
    L9_2(L10_2)
    L9_2 = CreateObject
    L10_2 = 1811737818
    L11_2 = vector3
    L12_2 = L8_2.x
    L13_2 = L8_2.y
    L14_2 = L8_2.z
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = true
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = SetEntityAsMissionEntity
    L11_2 = L5_2
    L10_2(L11_2)
    L10_2 = DeleteEntity
    L11_2 = L5_2
    L10_2(L11_2)
    L10_2 = GetEntityModel
    L11_2 = cassaChePorto
    L10_2 = L10_2(L11_2)
    if -1569653431 == L10_2 then
      L10_2 = PlaceObjectOnGroundProperly
      L11_2 = L9_2
      L10_2(L11_2)
    end
    L10_2 = alberi
    L10_2 = L10_2[L2_2]
    L10_2 = L10_2.zona
    if nil ~= L10_2 then
      L10_2 = alberi
      L10_2 = L10_2[L2_2]
      L10_2 = L10_2.zona
      L11_2 = table
      L11_2 = L11_2.remove
      L12_2 = alberi
      L13_2 = L2_2
      L11_2(L12_2, L13_2)
      L11_2 = TreeArea
      L11_2 = L11_2[L10_2]
      L12_2 = TreeArea
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.cTree
      L12_2 = L12_2 + 1
      L11_2.cTree = L12_2
      L11_2 = TreeArea
      L11_2 = L11_2[L10_2]
      L11_2 = L11_2.cTree
      L12_2 = TreeArea
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.howmany
      if L11_2 == L12_2 then
        L11_2 = TreeArea
        L11_2 = L11_2[L10_2]
        L11_2.cTree = -1
        L11_2 = L121_1
        L12_2 = needWaitTimer
        L11_2[L10_2] = L12_2
        L11_2 = waitSpawner
        L12_2 = L10_2
        L11_2(L12_2)
      end
    end
  end
end
L122_1[L123_1] = L124_1
L122_1 = _ENV
L123_1 = "HitWood"
function L124_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayEffect
  L2_2 = "core"
  L3_2 = "bul_wood_splinter"
  L4_2 = vector3
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L7_2 = L7_2 + 0.1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 1.0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = PlayEffect
  L2_2 = "core"
  L3_2 = "bul_wood_splinter"
  L4_2 = vector3
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L7_2 = L7_2 + 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 0.3
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L122_1[L123_1] = L124_1
L122_1 = _ENV
L123_1 = "IsEntityReallyVisible"
function L124_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_12::
  L1_2 = IsEntityOnScreen
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetGameplayCamCoord
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = vector3
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L6_2 = L6_2 + 0.5
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L3_2
  L3_2 = StartShapeTestRay
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = 17
  L11_2 = PlayerPedId
  L11_2 = L11_2()
  L12_2 = 7
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetShapeTestResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  if 2 ~= L4_2 then
    L9_2 = false
    return L9_2
  end
  L9_2 = 0 == L5_2 or L8_2 == A0_2
  return L9_2
end
L122_1[L123_1] = L124_1
L122_1 = _ENV
L123_1 = "inWoodTansport"
L124_1 = false
L122_1[L123_1] = L124_1
L122_1 = _ENV
L123_1 = "exports"
L122_1 = L122_1[L123_1]
L123_1 = "inWoodTansport"
function L124_1()
  local L0_2, L1_2
  L0_2 = inWoodTansport
  return L0_2
end
L122_1(L123_1, L124_1)
L122_1 = _ENV
L123_1 = "loopLegnoPreso"
function L124_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = SetEntityCollision
  L2_2 = A0_2
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  cassaChePorto = A0_2
  L1_2 = nil
  inWoodTansport = true
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = GetClosestObjectOfType
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L2_3 = 1.4
      L3_3 = -127134267
      L4_3 = 0
      L5_3 = 0
      L6_3 = 0
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
      if nil ~= L0_3 and 0 ~= L0_3 then
        L1_3 = IsEntityReallyVisible
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = L1_2
          if nil == L1_3 then
            L1_3 = testo3d
            L2_3 = "Chainsaw table found!~n~Press [~b~G~w~] to cut!"
            L1_3(L2_3)
            L1_2 = L0_3
          end
      end
      else
        L1_3 = L1_2
        if nil ~= L1_3 then
          L1_3 = nil
          L1_2 = L1_3
        end
      end
    end
  end
  L2_2(L3_2)
  L2_2 = AggrappaPesce
  L3_2 = nil
  L4_2 = A0_2
  L5_2 = ItemFromInventory
  L6_2 = GetEntityModel
  L7_2 = A0_2
  L6_2, L7_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    while true do
      L0_3 = FollowHandsRunning
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableKeysWhileFish
      L0_3()
      L0_3 = IsPedSwimming
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      if not L0_3 then
        L0_3 = IsPedSwimmingUnderWater
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        if not L0_3 then
          goto lbl_25
        end
      end
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 21
      L0_3(L1_3, L2_3)
      ::lbl_25::
      L0_3 = L1_2
      if nil ~= L0_3 then
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 47
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 47
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            goto lbl_131
          end
        end
        L0_3 = exports
        L0_3 = L0_3.striano_editor
        L1_3 = L0_3
        L0_3 = L0_3.releaseProp
        L0_3(L1_3)
        L0_3 = FreezeEntityPosition
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = Wait
        L1_3 = 1
        L0_3(L1_3)
        L0_3 = FreezaComandi
        L1_3 = true
        L0_3(L1_3)
        L0_3 = GetEntityForwardVector
        L1_3 = L1_2
        L0_3 = L0_3(L1_3)
        L1_3 = table
        L1_3 = L1_3.unpack
        L2_3 = GetEntityCoords
        L3_3 = L1_2
        L2_3 = L2_3(L3_3)
        L3_3 = L0_3 * -0.9
        L2_3 = L2_3 + L3_3
        L1_3, L2_3, L3_3 = L1_3(L2_3)
        L4_3 = SetEntityCoords
        L5_3 = PlayerPedId
        L5_3 = L5_3()
        L6_3 = L1_3
        L7_3 = L2_3
        L8_3 = L3_3
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = SetEntityHeading
        L5_3 = PlayerPedId
        L5_3 = L5_3()
        L6_3 = GetEntityHeading
        L7_3 = L1_2
        L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L6_3(L7_3)
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L4_3 = DetachEntity
        L5_3 = A0_2
        L4_3(L5_3)
        L4_3 = L19_1
        L5_3 = nil
        L6_3 = 18905
        L7_3 = 0.24
        L8_3 = 0.05
        L9_3 = 0.18
        L10_3 = 106.5
        L11_3 = 32.5
        L12_3 = -70.0
        L13_3 = A0_2
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L4_3 = faiAnimPool
        L5_3 = "bzzz_tablesaw_cutting"
        L6_3 = "bzzz_tablesaw_cutting"
        L7_3 = -1
        L8_3 = 49
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = Wait
        L5_3 = 3000
        L4_3(L5_3)
        L4_3 = FreezeEntityPosition
        L5_3 = PlayerPedId
        L5_3 = L5_3()
        L6_3 = false
        L4_3(L5_3, L6_3)
        L4_3 = FreezaComandi
        L5_3 = false
        L4_3(L5_3)
        L4_3 = SetEntityAsMissionEntity
        L5_3 = A0_2
        L4_3(L5_3)
        L4_3 = DeleteEntity
        L5_3 = A0_2
        L4_3(L5_3)
        cassaChePorto = nil
        L4_3 = AggrappaPesce
        L5_3 = "bzzz_prop_tablesaw_wood"
        L6_3 = nil
        L7_3 = "wooddirty"
        L8_3 = 5
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = testo3d
        L5_3 = "x5"
        L4_3(L5_3)
        inWoodTansport = false
        return
      end
      ::lbl_131::
    end
    inWoodTansport = false
  end
  L2_2(L3_2)
end
L122_1[L123_1] = L124_1
L122_1 = false
L123_1 = _ENV
L124_1 = "FreezaComandi"
function L125_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = L122_1
    if not L1_2 then
      L1_2 = true
      L122_1 = L1_2
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3
        while true do
          L0_3 = L122_1
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = DisableKeysWhileFish
          L0_3()
        end
      end
      L1_2(L2_2)
    end
  else
    L1_2 = L122_1
    if L1_2 then
      L1_2 = false
      L122_1 = L1_2
    end
  end
end
L123_1[L124_1] = L125_1
L123_1 = _ENV
L124_1 = "CreateThread"
L123_1 = L123_1[L124_1]
function L124_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  while true do
    L0_2 = Wait
    L1_2 = 3000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = L11_1
    L2_2 = GetEntityCoords
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = TreeArea
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L11_1
    L3_2 = GetEntityCoords
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = StoneArea
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L11_1
    L4_2 = GetEntityCoords
    L5_2 = L0_2
    L4_2 = L4_2(L5_2)
    L5_2 = BananaTreeArea
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L11_1
    L5_2 = GetEntityCoords
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    L6_2 = PlantAshArea
    L4_2 = L4_2(L5_2, L6_2)
    if nil ~= L1_2 then
      L5_2 = TreeArea
      L5_2 = L5_2[L1_2]
      L6_2 = GetEntityCoords
      L7_2 = L0_2
      L6_2 = L6_2(L7_2)
      L7_2 = L5_2.pos
      L6_2 = L6_2 - L7_2
      L6_2 = #L6_2
      L7_2 = L5_2.range
      L7_2 = L7_2 * 2
      if L6_2 > L7_2 then
        L6_2 = 1
        L7_2 = alberi
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = alberi
          L10_2 = L10_2[L9_2]
          if nil ~= L10_2 then
            L10_2 = alberi
            L10_2 = L10_2[L9_2]
            L10_2 = L10_2.zona
            if L10_2 == L1_2 then
              L10_2 = alberi
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.brick
              if nil ~= L10_2 then
                L10_2 = alberi
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.brick
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = alberi
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.brick2
              if nil ~= L10_2 then
                L10_2 = alberi
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.brick2
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = alberi
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.bush
              if nil ~= L10_2 then
                L10_2 = alberi
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.bush
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = alberi
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.tronco
              if nil ~= L10_2 then
                L10_2 = alberi
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.tronco
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = table
              L10_2 = L10_2.remove
              L11_2 = alberi
              L12_2 = L9_2
              L10_2(L11_2, L12_2)
            end
          end
        end
        L6_2 = Wait
        L7_2 = 5000
        L6_2(L7_2)
      else
        L6_2 = GetEntityCoords
        L7_2 = L0_2
        L6_2 = L6_2(L7_2)
        L7_2 = L5_2.pos
        L6_2 = L6_2 - L7_2
        L6_2 = #L6_2
        L7_2 = L5_2.range
        L7_2 = L7_2 * 2
        if L6_2 <= L7_2 then
          L6_2 = L5_2.cTree
          if L6_2 > -1 then
            L6_2 = L5_2.cTree
            L7_2 = L5_2.howmany
            if L6_2 <= L7_2 then
              L6_2 = L121_1
              L6_2 = L6_2[L1_2]
              if nil == L6_2 then
                L6_2 = GetWaterHeightNoWaves
                L7_2 = L5_2.pos
                L7_2 = L7_2.x
                L8_2 = L5_2.pos
                L8_2 = L8_2.y
                L9_2 = L5_2.pos
                L9_2 = L9_2.z
                L9_2 = L9_2 + 100.0
                L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
                if not L6_2 then
                  L8_2 = L5_2.pos
                  L8_2 = L8_2.x
                  L9_2 = L5_2.pos
                  L9_2 = L9_2.y
                  L10_2 = L5_2.range
                  L10_2 = L10_2 * -1
                  L11_2 = L5_2.range
                  L12_2 = math
                  L12_2 = L12_2.random
                  L13_2 = L10_2
                  L14_2 = L11_2
                  L12_2 = L12_2(L13_2, L14_2)
                  L12_2 = L8_2 + L12_2
                  L13_2 = math
                  L13_2 = L13_2.random
                  L14_2 = L10_2
                  L15_2 = L11_2
                  L13_2 = L13_2(L14_2, L15_2)
                  L13_2 = L9_2 + L13_2
                  L14_2 = L5_2.pos
                  L14_2 = L14_2.z
                  L14_2 = L14_2 + 1
                  L15_2 = addTree
                  L16_2 = vector3
                  L17_2 = L12_2
                  L18_2 = L13_2
                  L19_2 = L14_2
                  L16_2 = L16_2(L17_2, L18_2, L19_2)
                  L17_2 = L1_2
                  L15_2(L16_2, L17_2)
                  L15_2 = Wait
                  L16_2 = 25
                  L15_2(L16_2)
                end
              end
              L6_2 = Wait
              L7_2 = 25
              L6_2(L7_2)
            end
          end
        else
          L6_2 = Wait
          L7_2 = 3000
          L6_2(L7_2)
        end
      end
    end
    if nil ~= L4_2 then
      L5_2 = PlantAshArea
      L5_2 = L5_2[L4_2]
      L6_2 = GetEntityCoords
      L7_2 = L0_2
      L6_2 = L6_2(L7_2)
      L7_2 = L5_2.pos
      L6_2 = L6_2 - L7_2
      L6_2 = #L6_2
      L7_2 = L5_2.range
      L7_2 = L7_2 * 2
      if L6_2 > L7_2 then
        L6_2 = 1
        L7_2 = ashtree
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = ashtree
          L10_2 = L10_2[L9_2]
          if nil ~= L10_2 then
            L10_2 = ashtree
            L10_2 = L10_2[L9_2]
            L10_2 = L10_2.zona
            if L10_2 == L4_2 then
              L10_2 = ashtree
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.tronco
              if nil ~= L10_2 then
                L10_2 = ashtree
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.tronco
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = table
              L10_2 = L10_2.remove
              L11_2 = ashtree
              L12_2 = L9_2
              L10_2(L11_2, L12_2)
            end
          end
        end
        L6_2 = Wait
        L7_2 = 5000
        L6_2(L7_2)
      else
        L6_2 = GetEntityCoords
        L7_2 = L0_2
        L6_2 = L6_2(L7_2)
        L7_2 = L5_2.pos
        L6_2 = L6_2 - L7_2
        L6_2 = #L6_2
        L7_2 = L5_2.range
        L7_2 = L7_2 * 2
        if L6_2 <= L7_2 then
          L6_2 = L5_2.cTree
          if L6_2 > -1 then
            L6_2 = L5_2.cTree
            L7_2 = L5_2.howmany
            if L6_2 <= L7_2 then
              L6_2 = L121_1
              L6_2 = L6_2[L4_2]
              if nil == L6_2 then
                L6_2 = GetWaterHeightNoWaves
                L7_2 = L5_2.pos
                L7_2 = L7_2.x
                L8_2 = L5_2.pos
                L8_2 = L8_2.y
                L9_2 = L5_2.pos
                L9_2 = L9_2.z
                L9_2 = L9_2 + 100.0
                L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
                if not L6_2 then
                  L8_2 = L5_2.pos
                  L8_2 = L8_2.x
                  L9_2 = L5_2.pos
                  L9_2 = L9_2.y
                  L10_2 = L5_2.range
                  L10_2 = L10_2 * -1
                  L11_2 = L5_2.range
                  L12_2 = math
                  L12_2 = L12_2.random
                  L13_2 = L10_2
                  L14_2 = L11_2
                  L12_2 = L12_2(L13_2, L14_2)
                  L12_2 = L8_2 + L12_2
                  L13_2 = math
                  L13_2 = L13_2.random
                  L14_2 = L10_2
                  L15_2 = L11_2
                  L13_2 = L13_2(L14_2, L15_2)
                  L13_2 = L9_2 + L13_2
                  L14_2 = L5_2.pos
                  L14_2 = L14_2.z
                  L14_2 = L14_2 + 1
                  L15_2 = addAshTree
                  L16_2 = vector3
                  L17_2 = L12_2
                  L18_2 = L13_2
                  L19_2 = L14_2
                  L16_2 = L16_2(L17_2, L18_2, L19_2)
                  L17_2 = L4_2
                  L15_2(L16_2, L17_2)
                  L15_2 = Wait
                  L16_2 = 25
                  L15_2(L16_2)
                end
              end
              L6_2 = Wait
              L7_2 = 25
              L6_2(L7_2)
            end
          end
        else
          L6_2 = Wait
          L7_2 = 3000
          L6_2(L7_2)
        end
      end
    end
    if nil ~= L3_2 then
      L5_2 = BananaTreeArea
      L5_2 = L5_2[L3_2]
      L6_2 = GetEntityCoords
      L7_2 = L0_2
      L6_2 = L6_2(L7_2)
      L7_2 = L5_2.pos
      L6_2 = L6_2 - L7_2
      L6_2 = #L6_2
      L7_2 = L5_2.range
      L7_2 = L7_2 * 2
      if L6_2 > L7_2 then
        L6_2 = 1
        L7_2 = banano
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = banano
          L10_2 = L10_2[L9_2]
          if nil ~= L10_2 then
            L10_2 = banano
            L10_2 = L10_2[L9_2]
            L10_2 = L10_2.zona
            if L10_2 == L3_2 then
              L10_2 = banano
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.brick
              if nil ~= L10_2 then
                L10_2 = banano
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.brick
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = banano
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.brick2
              if nil ~= L10_2 then
                L10_2 = banano
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.brick2
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = banano
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.bush
              if nil ~= L10_2 then
                L10_2 = banano
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.bush
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = banano
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.tronco
              if nil ~= L10_2 then
                L10_2 = banano
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.tronco
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = table
              L10_2 = L10_2.remove
              L11_2 = banano
              L12_2 = L9_2
              L10_2(L11_2, L12_2)
            end
          end
        end
        L6_2 = Wait
        L7_2 = 5000
        L6_2(L7_2)
      else
        L6_2 = GetEntityCoords
        L7_2 = L0_2
        L6_2 = L6_2(L7_2)
        L7_2 = L5_2.pos
        L6_2 = L6_2 - L7_2
        L6_2 = #L6_2
        L7_2 = L5_2.range
        L7_2 = L7_2 * 2
        if L6_2 <= L7_2 then
          L6_2 = L5_2.cTree
          if L6_2 > -1 then
            L6_2 = L5_2.cTree
            L7_2 = L5_2.howmany
            if L6_2 <= L7_2 then
              L6_2 = L121_1
              L6_2 = L6_2[L3_2]
              if nil == L6_2 then
                L6_2 = GetWaterHeightNoWaves
                L7_2 = L5_2.pos
                L7_2 = L7_2.x
                L8_2 = L5_2.pos
                L8_2 = L8_2.y
                L9_2 = L5_2.pos
                L9_2 = L9_2.z
                L9_2 = L9_2 + 100.0
                L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
                if not L6_2 then
                  L8_2 = L5_2.pos
                  L8_2 = L8_2.x
                  L9_2 = L5_2.pos
                  L9_2 = L9_2.y
                  L10_2 = L5_2.range
                  L10_2 = L10_2 * -1
                  L11_2 = L5_2.range
                  L12_2 = math
                  L12_2 = L12_2.random
                  L13_2 = L10_2
                  L14_2 = L11_2
                  L12_2 = L12_2(L13_2, L14_2)
                  L12_2 = L8_2 + L12_2
                  L13_2 = math
                  L13_2 = L13_2.random
                  L14_2 = L10_2
                  L15_2 = L11_2
                  L13_2 = L13_2(L14_2, L15_2)
                  L13_2 = L9_2 + L13_2
                  L14_2 = L5_2.pos
                  L14_2 = L14_2.z
                  L14_2 = L14_2 + 1
                  L15_2 = addTreeBanana
                  L16_2 = vector3
                  L17_2 = L12_2
                  L18_2 = L13_2
                  L19_2 = L14_2
                  L16_2 = L16_2(L17_2, L18_2, L19_2)
                  L17_2 = L3_2
                  L15_2(L16_2, L17_2)
                  L15_2 = Wait
                  L16_2 = 25
                  L15_2(L16_2)
                end
              end
              L6_2 = Wait
              L7_2 = 25
              L6_2(L7_2)
            end
          end
        else
          L6_2 = Wait
          L7_2 = 3000
          L6_2(L7_2)
        end
      end
    end
    if nil ~= L2_2 then
      L5_2 = StoneArea
      L5_2 = L5_2[L2_2]
      L6_2 = GetEntityCoords
      L7_2 = L0_2
      L6_2 = L6_2(L7_2)
      L7_2 = L5_2.pos
      L6_2 = L6_2 - L7_2
      L6_2 = #L6_2
      if L6_2 > 100.0 then
        L6_2 = 1
        L7_2 = pietre
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = pietre
          L10_2 = L10_2[L9_2]
          if nil ~= L10_2 then
            L10_2 = pietre
            L10_2 = L10_2[L9_2]
            L10_2 = L10_2.zona
            if L10_2 == L2_2 then
              L10_2 = pietre
              L10_2 = L10_2[L9_2]
              L10_2 = L10_2.pietra
              if nil ~= L10_2 then
                L10_2 = pietre
                L10_2 = L10_2[L9_2]
                L10_2 = L10_2.pietra
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L10_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L10_2
                L11_2(L12_2)
              end
              L10_2 = table
              L10_2 = L10_2.remove
              L11_2 = pietre
              L12_2 = L9_2
              L10_2(L11_2, L12_2)
            end
          end
        end
        L6_2 = Wait
        L7_2 = 5000
        L6_2(L7_2)
      else
        L6_2 = GetEntityCoords
        L7_2 = L0_2
        L6_2 = L6_2(L7_2)
        L7_2 = L5_2.pos
        L6_2 = L6_2 - L7_2
        L6_2 = #L6_2
        if L6_2 <= 100.0 then
          L6_2 = L5_2.pietra
          if nil == L6_2 then
            L6_2 = L121_1
            L6_2 = L6_2[L2_2]
            if nil == L6_2 then
              L6_2 = addStone
              L7_2 = vector3
              L8_2 = L5_2.pos
              L8_2 = L8_2.x
              L9_2 = L5_2.pos
              L9_2 = L9_2.y
              L10_2 = L5_2.pos
              L10_2 = L10_2.z
              L7_2 = L7_2(L8_2, L9_2, L10_2)
              L8_2 = L2_2
              L9_2 = L5_2.mother
              L10_2 = L5_2.handler
              L11_2 = L5_2.life
              L12_2 = L5_2.itemToGET
              L13_2 = L5_2.noGroundCheck
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
              L6_2 = Wait
              L7_2 = 25
              L6_2(L7_2)
            end
          else
            L6_2 = Wait
            L7_2 = 1500
            L6_2(L7_2)
          end
        else
          L6_2 = Wait
          L7_2 = 3000
          L6_2(L7_2)
        end
      end
    else
      L5_2 = Wait
      L6_2 = 5000
      L5_2(L6_2)
    end
  end
end
L123_1(L124_1)
L123_1 = _ENV
L124_1 = "IsValidGround"
function L125_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2
  L3_2 = StartShapeTestRay
  L4_2 = L2_2
  L5_2 = vector3
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = L2_2.z
  L8_2 = L8_2 - 15.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = 17
  L7_2 = L1_2
  L8_2 = 7
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = GetShapeTestResultIncludingMaterial
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L10_2 = tostring
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  if "-1885547121" == L10_2 then
    L10_2 = L6_2.z
    if L10_2 > 0.0 then
      L10_2 = true
      return L10_2
    end
  end
  L10_2 = false
  return L10_2
end
L123_1[L124_1] = L125_1
L123_1 = _ENV
L124_1 = "addAshTree"
function L125_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L3_2 = true
  L4_2 = 1
  L5_2 = ashtree
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = ashtree
    L8_2 = L8_2[L7_2]
    if nil ~= L8_2 then
      L8_2 = GetEntityCoords
      L9_2 = ashtree
      L9_2 = L9_2[L7_2]
      L9_2 = L9_2.tronco
      L8_2 = L8_2(L9_2)
      L8_2 = A0_2 - L8_2
      L8_2 = #L8_2
      if L8_2 < 2.0 then
        L3_2 = false
      end
      L8_2 = GetEntityCoords
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L9_2 = GetEntityCoords
      L10_2 = ashtree
      L10_2 = L10_2[L7_2]
      L10_2 = L10_2.tronco
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2 - L9_2
      L8_2 = #L8_2
      if L8_2 < 2.0 then
        L3_2 = false
      end
    end
  end
  if L3_2 then
    L4_2 = IsValidGround
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = print
      L5_2 = "Spawned item on map: "
      L6_2 = A0_2
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
      L4_2 = GetHashKey
      L5_2 = "prop_bush_dead_02"
      L4_2 = L4_2(L5_2)
      L5_2 = math
      L5_2 = L5_2.random
      L6_2 = 1
      L7_2 = 2
      L5_2 = L5_2(L6_2, L7_2)
      if 2 == L5_2 then
        L6_2 = GetHashKey
        L7_2 = "striano_gterra_xl"
        L6_2 = L6_2(L7_2)
        L4_2 = L6_2
      end
      L6_2 = RequestModelStriano
      L7_2 = L4_2
      L6_2(L7_2)
      L6_2 = CreateObject
      L7_2 = L4_2
      L8_2 = L2_2.x
      L9_2 = L2_2.y
      L10_2 = L2_2.z
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L7_2 = SetEntityAlpha
      L8_2 = L6_2
      L9_2 = 200
      L7_2(L8_2, L9_2)
      L7_2 = 0
      while true do
        if nil ~= L6_2 then
          L8_2 = DoesEntityExist
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          if not (not L8_2 and L7_2 < 100) then
            break
          end
        end
        L8_2 = Wait
        L9_2 = 0
        L8_2(L9_2)
        L7_2 = L7_2 + 1
      end
      if L7_2 < 100 then
        L8_2 = Wait
        L9_2 = 25
        L8_2(L9_2)
        L8_2 = PlaceObjectOnGroundProperly
        L9_2 = L6_2
        L8_2(L9_2)
        L8_2 = Wait
        L9_2 = 25
        L8_2(L9_2)
        L8_2 = GetEntityCoords
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L9_2 = SetEntityCoords
        L10_2 = L6_2
        L11_2 = L8_2.x
        L12_2 = L8_2.y
        L13_2 = L8_2.z
        L13_2 = L13_2 - 0.3
        L9_2(L10_2, L11_2, L12_2, L13_2)
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = ashtree
        L11_2 = {}
        L11_2.tronco = L6_2
        L11_2.zona = A1_2
        L9_2(L10_2, L11_2)
        if nil ~= A1_2 then
          L9_2 = PlantAshArea
          L9_2 = L9_2[A1_2]
          L10_2 = PlantAshArea
          L10_2 = L10_2[A1_2]
          L10_2 = L10_2.cTree
          L10_2 = L10_2 + 1
          L9_2.cTree = L10_2
        end
      end
  end
  else
    L4_2 = Wait
    L5_2 = 1000
    L4_2(L5_2)
  end
end
L123_1[L124_1] = L125_1
L123_1 = _ENV
L124_1 = "PlayEffectEnt"
function L125_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L9_2 = HasNamedPtfxAssetLoaded
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = RequestNamedPtfxAsset
    L10_2 = A1_2
    L9_2(L10_2)
  end
  while true do
    L9_2 = HasNamedPtfxAssetLoaded
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = UseParticleFxAssetNextCall
  L10_2 = A1_2
  L9_2(L10_2)
  if nil == A6_2 then
    A6_2 = 24818
  end
  if nil == A7_2 then
    L9_2 = vector3
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    A7_2 = L9_2
  end
  if nil == A8_2 then
    L9_2 = vector3
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    A8_2 = L9_2
  end
  L9_2 = StartParticleFxLoopedOnEntityBone
  L10_2 = A2_2
  L11_2 = A0_2
  L12_2 = A8_2.x
  L13_2 = A8_2.y
  L14_2 = A8_2.z
  L15_2 = A7_2.x
  L16_2 = A7_2.y
  L17_2 = A7_2.z
  L18_2 = GetPedBoneIndex
  L19_2 = A0_2
  L20_2 = A6_2
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = A3_2
  L20_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if nil ~= A4_2 then
    L10_2 = SetParticleFxLoopedColour
    L11_2 = L9_2
    L12_2 = A4_2[1]
    L13_2 = A4_2[2]
    L14_2 = A4_2[3]
    L15_2 = 0
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  if nil ~= A5_2 then
    L10_2 = SetParticleFxLoopedAlpha
    L11_2 = L9_2
    L12_2 = A5_2
    L10_2(L11_2, L12_2)
  end
  return L9_2
end
L123_1[L124_1] = L125_1
L123_1 = _ENV
L124_1 = "CreateThread"
L123_1 = L123_1[L124_1]
function L124_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = false
    L2_2 = 1
    L3_2 = ashtree
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = ashtree
      L6_2 = L6_2[L5_2]
      if nil ~= L6_2 then
        L1_2 = true
        L6_2 = ashtree
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.tronco
        L7_2 = lightProp
        if L7_2 then
          L7_2 = DoesEntityExist
          L8_2 = lightProp
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = GetEntityCoords
            L8_2 = lightProp
            L7_2 = L7_2(L8_2)
            L8_2 = GetEntityCoords
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            L7_2 = L7_2 - L8_2
            L7_2 = #L7_2
            L8_2 = 1.5
            if L7_2 < L8_2 then
              L7_2 = Citizen
              L7_2 = L7_2.InvokeNative
              L8_2 = -7918206464511161279
              L9_2 = L0_2
              L7_2 = L7_2(L8_2, L9_2)
              if L7_2 then
                L7_2 = Wait
                L8_2 = 1500
                L7_2(L8_2)
                L7_2 = ExecuteCommand
                L8_2 = "pointingstop"
                L7_2(L8_2)
                L7_2 = ExecuteCommand
                L8_2 = "e malditesta3"
                L7_2(L8_2)
                L7_2 = GetEntityCoords
                L8_2 = L0_2
                L7_2 = L7_2(L8_2)
                L8_2 = 0.1
                L9_2 = 1
                L10_2 = 5
                L11_2 = 1
                for L12_2 = L9_2, L10_2, L11_2 do
                  L13_2 = PlayEffectEnt
                  L14_2 = L6_2
                  L15_2 = "core"
                  L16_2 = "ent_amb_fbi_fire_beam"
                  L17_2 = 0.5 + L8_2
                  L18_2 = nil
                  L19_2 = 1.0
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                  L13_2 = PlayEffectEnt
                  L14_2 = L6_2
                  L15_2 = "core"
                  L16_2 = "fire_wrecked_plane_cockpit"
                  L17_2 = 1.0 + L8_2
                  L18_2 = nil
                  L19_2 = 1.0
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                  L13_2 = PlayEffectEnt
                  L14_2 = L6_2
                  L15_2 = "core"
                  L16_2 = "fire_wrecked_train"
                  L17_2 = 1.0 + L8_2
                  L18_2 = nil
                  L19_2 = 1.0
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                  L8_2 = L8_2 + 0.1
                  L13_2 = Wait
                  L14_2 = 1600
                  L13_2(L14_2)
                end
                L9_2 = PlayEffect
                L10_2 = "core"
                L11_2 = "ent_amb_generator_smoke"
                L12_2 = GetEntityCoords
                L13_2 = L6_2
                L12_2 = L12_2(L13_2)
                L13_2 = 4.5
                L14_2 = 1.0
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
                L9_2 = GetHashKey
                L10_2 = "bzzz_prop_seeds_001"
                L9_2 = L9_2(L10_2)
                L10_2 = GetEntityRotation
                L11_2 = L6_2
                L12_2 = 2
                L10_2 = L10_2(L11_2, L12_2)
                L11_2 = L0_1
                L11_2()
                L11_2 = Wait
                L12_2 = 25
                L11_2(L12_2)
                L11_2 = TriggerServerEvent
                L12_2 = "placer:addpool"
                L13_2 = L9_2
                L14_2 = L7_2.x
                L15_2 = L7_2.y
                L16_2 = L7_2.z
                L16_2 = L16_2 - 0.95
                L17_2 = 0.0
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = true
                L21_2 = 1
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                L11_2 = Wait
                L12_2 = 250
                L11_2(L12_2)
                L11_2 = SetEntityAsMissionEntity
                L12_2 = L6_2
                L11_2(L12_2)
                L11_2 = DeleteEntity
                L12_2 = L6_2
                L11_2(L12_2)
                L11_2 = table
                L11_2 = L11_2.remove
                L12_2 = ashtree
                L13_2 = L5_2
                L11_2(L12_2, L13_2)
                L11_2 = Wait
                L12_2 = 3000
                L11_2(L12_2)
                break
              end
            end
          end
        end
      end
    end
    if not L1_2 then
      L2_2 = Wait
      L3_2 = 3000
      L2_2(L3_2)
    end
  end
end
L123_1(L124_1)
L123_1 = _ENV
L124_1 = "ControlloPietraColpita"
function L125_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L1_2 = GetGamePool
  L2_2 = "CObject"
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = GetEntityCoords
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L8_2 = A0_2 - L8_2
      L8_2 = #L8_2
      if L8_2 < 2.0 then
        L8_2 = 1
        L9_2 = abbinamentiStone
        L9_2 = #L9_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = GetEntityModel
          L13_2 = L7_2
          L12_2 = L12_2(L13_2)
          L13_2 = abbinamentiStone
          L13_2 = L13_2[L11_2]
          L13_2 = L13_2.a
          if L12_2 == L13_2 then
            L12_2 = Entity
            L13_2 = L7_2
            L12_2 = L12_2(L13_2)
            L12_2 = L12_2.state
            L13_2 = L12_2.vita
            if not L13_2 then
              L14_2 = L12_2
              L13_2 = L12_2.set
              L15_2 = "vita"
              L16_2 = abbinamentiStone
              L16_2 = L16_2[L11_2]
              L16_2 = L16_2.durezza
              L17_2 = true
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = testo3d2
              L14_2 = abbinamentiStone
              L14_2 = L14_2[L11_2]
              L14_2 = L14_2.durezza
              L14_2 = L14_2 + 1
              L15_2 = L7_2
              L13_2(L14_2, L15_2)
              return
            end
            L13_2 = tonumber
            L14_2 = L12_2.vita
            L13_2 = L13_2(L14_2)
            L13_2 = L13_2 - 1
            L15_2 = L12_2
            L14_2 = L12_2.set
            L16_2 = "vita"
            L17_2 = L13_2
            L18_2 = true
            L14_2(L15_2, L16_2, L17_2, L18_2)
            L14_2 = GetEntityCoords
            L15_2 = L7_2
            L14_2 = L14_2(L15_2)
            L15_2 = testo3d2
            L16_2 = L13_2
            L17_2 = L7_2
            L15_2(L16_2, L17_2)
            L15_2 = PlayEffect
            L16_2 = "core"
            L17_2 = "ent_brk_concrete"
            L18_2 = vector3
            L19_2 = L14_2.x
            L20_2 = L14_2.y
            L21_2 = L14_2.z
            L21_2 = L21_2 + 0.5
            L18_2 = L18_2(L19_2, L20_2, L21_2)
            L19_2 = 0.1
            L15_2(L16_2, L17_2, L18_2, L19_2)
            L15_2 = PlayEffect
            L16_2 = "core"
            L17_2 = "ent_brk_concrete"
            L18_2 = vector3
            L19_2 = L14_2.x
            L20_2 = L14_2.y
            L21_2 = L14_2.z
            L21_2 = L21_2 + 1.0
            L18_2 = L18_2(L19_2, L20_2, L21_2)
            L19_2 = 0.75
            L15_2(L16_2, L17_2, L18_2, L19_2)
            if L13_2 <= 0 then
              L15_2 = abbinamentiStone
              L15_2 = L15_2[L11_2]
              L15_2 = L15_2.b
              L16_2 = RequestModelStriano
              L17_2 = L15_2
              L16_2(L17_2)
              L16_2 = GetEntityForwardVector
              L17_2 = L7_2
              L16_2 = L16_2(L17_2)
              L17_2 = GetEntityCoords
              L18_2 = L7_2
              L17_2 = L17_2(L18_2)
              L18_2 = L16_2 * 0.25
              L17_2 = L17_2 + L18_2
              L18_2 = CreateObject
              L19_2 = L15_2
              L20_2 = L17_2.x
              L21_2 = L17_2.y
              L22_2 = L17_2.z
              L22_2 = L22_2 + 0.09
              L23_2 = true
              L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
              while true do
                L19_2 = DoesEntityExist
                L20_2 = L18_2
                L19_2 = L19_2(L20_2)
                if L19_2 then
                  break
                end
                L19_2 = Wait
                L20_2 = 0
                L19_2(L20_2)
              end
              L19_2 = SetEntityAsMissionEntity
              L20_2 = L18_2
              L21_2 = true
              L22_2 = true
              L19_2(L20_2, L21_2, L22_2)
              L19_2 = GetEntityCoords
              L20_2 = L7_2
              L19_2 = L19_2(L20_2)
              L20_2 = CreateObject
              L21_2 = L15_2
              L22_2 = L19_2.x
              L23_2 = L19_2.y
              L24_2 = L19_2.z
              L24_2 = L24_2 + 0.09
              L25_2 = true
              L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
              while true do
                L21_2 = DoesEntityExist
                L22_2 = L20_2
                L21_2 = L21_2(L22_2)
                if L21_2 then
                  break
                end
                L21_2 = Wait
                L22_2 = 0
                L21_2(L22_2)
              end
              L21_2 = SetEntityAsMissionEntity
              L22_2 = L20_2
              L23_2 = true
              L24_2 = true
              L21_2(L22_2, L23_2, L24_2)
              L22_2 = L12_2
              L21_2 = L12_2.set
              L23_2 = "vita"
              L24_2 = nil
              L25_2 = true
              L21_2(L22_2, L23_2, L24_2, L25_2)
              L21_2 = SetEntityAsMissionEntity
              L22_2 = L7_2
              L23_2 = true
              L24_2 = true
              L21_2(L22_2, L23_2, L24_2)
              L21_2 = DeleteEntity
              L22_2 = L7_2
              L21_2(L22_2)
              L21_2 = PlaySoundFrontend
              L22_2 = -1
              L23_2 = "HUD_FREEMODE_CANCEL_MASTER"
              L24_2 = "0"
              L25_2 = 1
              L21_2(L22_2, L23_2, L24_2, L25_2)
              L21_2 = Wait
              L22_2 = 100
              L21_2(L22_2)
              L21_2 = PlayEffect
              L22_2 = "core"
              L23_2 = "ent_brk_concrete"
              L24_2 = vector3
              L25_2 = L19_2.x
              L26_2 = L19_2.y
              L27_2 = L19_2.z
              L27_2 = L27_2 + 0.5
              L24_2 = L24_2(L25_2, L26_2, L27_2)
              L25_2 = 0.12
              L21_2(L22_2, L23_2, L24_2, L25_2)
              L21_2 = PlayEffect
              L22_2 = "core"
              L23_2 = "ent_brk_concrete"
              L24_2 = vector3
              L25_2 = L19_2.x
              L26_2 = L19_2.y
              L27_2 = L19_2.z
              L27_2 = L27_2 + 1.0
              L24_2 = L24_2(L25_2, L26_2, L27_2)
              L25_2 = 0.1
              L21_2(L22_2, L23_2, L24_2, L25_2)
              return
            end
            return
          end
        end
      end
    end
  end
  L2_2 = 1
  L3_2 = pietre
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = pietre
    L6_2 = L6_2[L5_2]
    if nil ~= L6_2 then
      L6_2 = GetEntityCoords
      L7_2 = pietre
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.pietra
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2 - A0_2
      L7_2 = #L7_2
      L8_2 = 1.7
      if L7_2 < L8_2 then
        L7_2 = pietre
        L7_2 = L7_2[L5_2]
        L8_2 = pietre
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2.life
        L8_2 = L8_2 - 1
        L7_2.life = L8_2
        L7_2 = testo3d2
        L8_2 = pietre
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2.life
        L9_2 = pietre
        L9_2 = L9_2[L5_2]
        L9_2 = L9_2.pietra
        L7_2(L8_2, L9_2)
        L7_2 = Wait
        L8_2 = 25
        L7_2(L8_2)
        L7_2 = PlayEffect
        L8_2 = "core"
        L9_2 = "ent_brk_concrete"
        L10_2 = vector3
        L11_2 = L6_2.x
        L12_2 = L6_2.y
        L13_2 = L6_2.z
        L13_2 = L13_2 + 0.5
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = 3.0
        L7_2(L8_2, L9_2, L10_2, L11_2)
        L7_2 = PlayEffect
        L8_2 = "core"
        L9_2 = "ent_brk_concrete"
        L10_2 = vector3
        L11_2 = L6_2.x
        L12_2 = L6_2.y
        L13_2 = L6_2.z
        L13_2 = L13_2 + 1.0
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = 2.0
        L7_2(L8_2, L9_2, L10_2, L11_2)
        L7_2 = pietre
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.life
        if L7_2 <= 0 then
          L7_2 = exports
          L7_2 = L7_2.striano_combat
          L8_2 = L7_2
          L7_2 = L7_2.fodera2
          L7_2(L8_2)
          L7_2 = PlaySoundFrontend
          L8_2 = -1
          L9_2 = "MP_AWARD"
          L10_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          L11_2 = 1
          L7_2(L8_2, L9_2, L10_2, L11_2)
          L7_2 = CreateThread
          function L8_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
            L0_3 = GetEntityCoords
            L1_3 = pietre
            L2_3 = L5_2
            L1_3 = L1_3[L2_3]
            L1_3 = L1_3.pietra
            L0_3 = L0_3(L1_3)
            L1_3 = pietre
            L2_3 = L5_2
            L1_3 = L1_3[L2_3]
            L1_3 = L1_3.handler
            L2_3 = 0
            L3_3 = RequestModelStriano
            L4_3 = L1_3
            L3_3(L4_3)
            if L2_3 < 100 then
              L3_3 = CreateObject
              L4_3 = L1_3
              L5_3 = vector3
              L6_3 = L0_3.x
              L7_3 = L0_3.y
              L8_3 = L0_3.z
              L8_3 = L8_3 + 0.05
              L5_3 = L5_3(L6_3, L7_3, L8_3)
              L6_3 = true
              L3_3 = L3_3(L4_3, L5_3, L6_3)
              while true do
                L4_3 = DoesEntityExist
                L5_3 = L3_3
                L4_3 = L4_3(L5_3)
                if L4_3 then
                  break
                end
                L4_3 = Wait
                L5_3 = 0
                L4_3(L5_3)
              end
              L4_3 = Wait
              L5_3 = 25
              L4_3(L5_3)
              L4_3 = pietre
              L5_3 = L5_2
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.pietra
              L5_3 = SetEntityAsMissionEntity
              L6_3 = L4_3
              L5_3(L6_3)
              L5_3 = DeleteEntity
              L6_3 = L4_3
              L5_3(L6_3)
              L5_3 = pietre
              L6_3 = L5_2
              L5_3 = L5_3[L6_3]
              L5_3.pietra = nil
              L5_3 = Wait
              L6_3 = 25
              L5_3(L6_3)
              L5_3 = PlayEffect
              L6_3 = "core"
              L7_3 = "ent_brk_concrete"
              L8_3 = vector3
              L9_3 = L6_2.x
              L10_3 = L6_2.y
              L11_3 = L6_2.z
              L8_3 = L8_3(L9_3, L10_3, L11_3)
              L9_3 = 2.5
              L5_3(L6_3, L7_3, L8_3, L9_3)
              L5_3 = PlayEffect
              L6_3 = "core"
              L7_3 = "ent_dst_rocks"
              L8_3 = vector3
              L9_3 = L6_2.x
              L10_3 = L6_2.y
              L11_3 = L6_2.z
              L8_3 = L8_3(L9_3, L10_3, L11_3)
              L9_3 = 1.5
              L5_3(L6_3, L7_3, L8_3, L9_3)
              L5_3 = Wait
              L6_3 = 25
              L5_3(L6_3)
              L5_3 = ClearPedTasks
              L6_3 = PlayerPedId
              L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L6_3()
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
              L5_3 = L92_1
              L6_3 = PlayerPedId
              L6_3 = L6_3()
              L7_3 = GetEntityCoords
              L8_3 = L3_3
              L7_3, L8_3, L9_3, L10_3, L11_3 = L7_3(L8_3)
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
              L5_3 = faiAnimPool
              L6_3 = "anim@mp_snowball"
              L7_3 = "pickup_snowball"
              L8_3 = 3500
              L9_3 = 49
              L5_3(L6_3, L7_3, L8_3, L9_3)
              L5_3 = Wait
              L6_3 = 900
              L5_3(L6_3)
              L5_3 = SetEntityAsMissionEntity
              L6_3 = L3_3
              L5_3(L6_3)
              L5_3 = DeleteEntity
              L6_3 = L3_3
              L5_3(L6_3)
              L5_3 = FreezaComandi
              L6_3 = false
              L5_3(L6_3)
              L5_3 = Wait
              L6_3 = 1
              L5_3(L6_3)
              L5_3 = AggrappaPesce
              L6_3 = pietre
              L7_3 = L5_2
              L6_3 = L6_3[L7_3]
              L6_3 = L6_3.handler
              L7_3 = nil
              L8_3 = pietre
              L9_3 = L5_2
              L8_3 = L8_3[L9_3]
              L8_3 = L8_3.itemToGET
              L9_3 = 1
              L5_3(L6_3, L7_3, L8_3, L9_3)
              L5_3 = print
              L6_3 = "I get the stone!"
              L5_3(L6_3)
              L5_3 = FreezeEntityPosition
              L6_3 = PlayerPedId
              L6_3 = L6_3()
              L7_3 = false
              L5_3(L6_3, L7_3)
              L5_3 = Wait
              L6_3 = 30000
              L5_3(L6_3)
              L5_3 = StoneArea
              L6_3 = pietre
              L7_3 = L5_2
              L6_3 = L6_3[L7_3]
              L6_3 = L6_3.zona
              L5_3 = L5_3[L6_3]
              L5_3.pietra = nil
              L5_3 = table
              L5_3 = L5_3.remove
              L6_3 = pietre
              L7_3 = L5_2
              L5_3(L6_3, L7_3)
            else
              L3_3 = print
              L4_3 = "Invalid handler object after the rock is ready to give reward!"
              L3_3(L4_3)
            end
          end
          L7_2(L8_2)
        end
        break
      end
    end
  end
end
L123_1[L124_1] = L125_1
L123_1 = _ENV
L124_1 = "addStone"
function L125_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = A2_2
  L9_2 = StoneArea
  L9_2 = L9_2[A1_2]
  if L9_2 then
    L9_2 = StoneArea
    L9_2 = L9_2[A1_2]
    L9_2 = L9_2.pietra
    if L9_2 then
      L9_2 = DoesEntityExist
      L10_2 = StoneArea
      L10_2 = L10_2[A1_2]
      L10_2 = L10_2.pietra
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = SetEntityAsMissionEntity
        L10_2 = StoneArea
        L10_2 = L10_2[A1_2]
        L10_2 = L10_2.pietra
        L11_2 = true
        L12_2 = true
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = DeleteObject
        L10_2 = StoneArea
        L10_2 = L10_2[A1_2]
        L10_2 = L10_2.pietra
        L9_2(L10_2)
        L9_2 = DeleteEntity
        L10_2 = StoneArea
        L10_2 = L10_2[A1_2]
        L10_2 = L10_2.pietra
        L9_2(L10_2)
        L9_2 = StoneArea
        L9_2 = L9_2[A1_2]
        L9_2.pietra = nil
        L9_2 = Wait
        L10_2 = 50
        L9_2(L10_2)
      end
    end
  end
  L9_2 = GetClosestObjectOfType
  L10_2 = A0_2.x
  L10_2 = L10_2 + 0.0
  L11_2 = A0_2.y
  L11_2 = L11_2 + 0.0
  L12_2 = A0_2.z
  L12_2 = L12_2 + 0.0
  L13_2 = 3.0
  L14_2 = L8_2
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L9_2 and 0 ~= L9_2 then
    L10_2 = DoesEntityExist
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = SetEntityAsMissionEntity
      L11_2 = L9_2
      L12_2 = true
      L13_2 = true
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = DeleteObject
      L11_2 = L9_2
      L10_2(L11_2)
      L10_2 = DeleteEntity
      L11_2 = L9_2
      L10_2(L11_2)
      L10_2 = Wait
      L11_2 = 50
      L10_2(L11_2)
    end
  end
  L10_2 = pietre
  L10_2 = #L10_2
  L11_2 = 1
  L12_2 = -1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = pietre
    L14_2 = L14_2[L13_2]
    if nil ~= L14_2 then
      L14_2 = pietre
      L14_2 = L14_2[L13_2]
      L14_2 = L14_2.zona
      if L14_2 == A1_2 then
        L14_2 = pietre
        L14_2 = L14_2[L13_2]
        L14_2 = L14_2.pietra
        if L14_2 then
          L14_2 = DoesEntityExist
          L15_2 = pietre
          L15_2 = L15_2[L13_2]
          L15_2 = L15_2.pietra
          L14_2 = L14_2(L15_2)
          if L14_2 then
            L14_2 = SetEntityAsMissionEntity
            L15_2 = pietre
            L15_2 = L15_2[L13_2]
            L15_2 = L15_2.pietra
            L16_2 = true
            L17_2 = true
            L14_2(L15_2, L16_2, L17_2)
            L14_2 = DeleteObject
            L15_2 = pietre
            L15_2 = L15_2[L13_2]
            L15_2 = L15_2.pietra
            L14_2(L15_2)
            L14_2 = DeleteEntity
            L15_2 = pietre
            L15_2 = L15_2[L13_2]
            L15_2 = L15_2.pietra
            L14_2(L15_2)
          end
        end
        L14_2 = table
        L14_2 = L14_2.remove
        L15_2 = pietre
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      else
        L14_2 = pietre
        L14_2 = L14_2[L13_2]
        L14_2 = L14_2.pietra
        if nil ~= L14_2 then
          L14_2 = DoesEntityExist
          L15_2 = pietre
          L15_2 = L15_2[L13_2]
          L15_2 = L15_2.pietra
          L14_2 = L14_2(L15_2)
          if L14_2 then
            goto lbl_148
          end
        end
        L14_2 = table
        L14_2 = L14_2.remove
        L15_2 = pietre
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
    ::lbl_148::
  end
  L10_2 = true
  L11_2 = 1
  L12_2 = pietre
  L12_2 = #L12_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = pietre
    L15_2 = L15_2[L14_2]
    if nil ~= L15_2 then
      L15_2 = pietre
      L15_2 = L15_2[L14_2]
      L15_2 = L15_2.pietra
      if nil ~= L15_2 then
        L15_2 = DoesEntityExist
        L16_2 = pietre
        L16_2 = L16_2[L14_2]
        L16_2 = L16_2.pietra
        L15_2 = L15_2(L16_2)
        if L15_2 then
          L15_2 = GetEntityCoords
          L16_2 = pietre
          L16_2 = L16_2[L14_2]
          L16_2 = L16_2.pietra
          L15_2 = L15_2(L16_2)
          L15_2 = A0_2 - L15_2
          L15_2 = #L15_2
          if L15_2 < 2.0 then
            L10_2 = false
          end
          L15_2 = GetEntityCoords
          L16_2 = L7_2
          L15_2 = L15_2(L16_2)
          L16_2 = GetEntityCoords
          L17_2 = pietre
          L17_2 = L17_2[L14_2]
          L17_2 = L17_2.pietra
          L16_2 = L16_2(L17_2)
          L15_2 = L15_2 - L16_2
          L15_2 = #L15_2
          if L15_2 < 2.0 then
            L10_2 = false
          end
        end
      end
    end
  end
  if L10_2 then
    L11_2 = nil
    L12_2 = vector3
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = nil
    L14_2 = true
    if not A6_2 then
      L15_2 = RequestModelStriano
      L16_2 = -1837161340
      L15_2(L16_2)
      L15_2 = GetGroundZUltra
      L16_2 = A0_2.x
      L16_2 = L16_2 + 0.0
      L17_2 = A0_2.y
      L17_2 = L17_2 + 0.0
      L18_2 = A0_2.z
      L18_2 = L18_2 + 999.0
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L16_2 = CreateObject
      L17_2 = -1837161340
      L18_2 = A0_2.x
      L19_2 = A0_2.y
      L20_2 = L15_2 + 1.0
      L21_2 = false
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      L13_2 = L16_2
      while true do
        L16_2 = DoesEntityExist
        L17_2 = L13_2
        L16_2 = L16_2(L17_2)
        if L16_2 then
          break
        end
        L16_2 = Wait
        L17_2 = 0
        L16_2(L17_2)
      end
      L16_2 = SetEntityVisible
      L17_2 = L13_2
      L18_2 = false
      L16_2(L17_2, L18_2)
      L16_2 = PlaceObjectOnGroundProperly
      L17_2 = L13_2
      L16_2(L17_2)
      L16_2 = Wait
      L17_2 = 1
      L16_2(L17_2)
      L16_2 = FreezeEntityPosition
      L17_2 = L13_2
      L18_2 = true
      L16_2(L17_2, L18_2)
      L16_2 = Wait
      L17_2 = 25
      L16_2(L17_2)
      L16_2 = SetEntityNoCollisionEntity
      L17_2 = L7_2
      L18_2 = L13_2
      L19_2 = true
      L16_2(L17_2, L18_2, L19_2)
      L16_2 = SetEntityCollision
      L17_2 = L13_2
      L18_2 = false
      L19_2 = false
      L16_2(L17_2, L18_2, L19_2)
      L16_2 = GetEntityCoords
      L17_2 = L13_2
      L16_2 = L16_2(L17_2)
      L11_2 = L16_2
      L16_2 = GetEntityRotation
      L17_2 = L13_2
      L16_2 = L16_2(L17_2)
      L12_2 = L16_2
      L16_2 = L11_2.z
      L16_2 = IsEntityInWater
      L17_2 = L13_2
      L16_2 = L16_2(L17_2)
      L14_2 = L16_2 > 0 and L14_2
    else
      L15_2 = vector3
      L16_2 = A0_2.x
      L17_2 = A0_2.y
      L18_2 = A0_2.z
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L11_2 = L15_2
      L15_2 = vector3
      L16_2 = 0.0
      L17_2 = 0.0
      L18_2 = 0.0
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L12_2 = L15_2
      L14_2 = true
    end
    L15_2 = false
    if L14_2 then
      if L13_2 then
        L16_2 = DoesEntityExist
        L17_2 = L13_2
        L16_2 = L16_2(L17_2)
        if L16_2 then
          L16_2 = SetEntityAsMissionEntity
          L17_2 = L13_2
          L18_2 = true
          L19_2 = true
          L16_2(L17_2, L18_2, L19_2)
          L16_2 = DeleteEntity
          L17_2 = L13_2
          L16_2(L17_2)
          L13_2 = nil
        end
      end
      L16_2 = RequestModelStriano
      L17_2 = L8_2
      L16_2(L17_2)
      L16_2 = GetEntityCoords
      L17_2 = L7_2
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2 - L11_2
      L16_2 = #L16_2
      L17_2 = 1.5
      if L16_2 < L17_2 then
        L16_2 = faiAnimPool
        L17_2 = "skydive@parachute@"
        L18_2 = "land_steps"
        L19_2 = 1500
        L20_2 = 1
        L16_2(L17_2, L18_2, L19_2, L20_2)
        L16_2 = Wait
        L17_2 = 750
        L16_2(L17_2)
      end
      L16_2 = CreateObject
      L17_2 = L8_2
      L18_2 = vector3
      L19_2 = L11_2.x
      L20_2 = L11_2.y
      L21_2 = L11_2.z
      L21_2 = L21_2 - 0.1
      L18_2 = L18_2(L19_2, L20_2, L21_2)
      L19_2 = L15_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      while true do
        L17_2 = DoesEntityExist
        L18_2 = L16_2
        L17_2 = L17_2(L18_2)
        if L17_2 then
          break
        end
        L17_2 = Wait
        L18_2 = 0
        L17_2(L18_2)
      end
      L17_2 = table
      L17_2 = L17_2.insert
      L18_2 = pietre
      L19_2 = {}
      L19_2.pietra = L16_2
      L19_2.life = A4_2
      L19_2.zona = A1_2
      L19_2.handler = A3_2
      L19_2.itemToGET = A5_2
      L17_2(L18_2, L19_2)
      L17_2 = FreezeEntityPosition
      L18_2 = L16_2
      L19_2 = true
      L17_2(L18_2, L19_2)
      L17_2 = StoneArea
      L17_2 = L17_2[A1_2]
      L17_2.pietra = L16_2
      L17_2 = SetModelAsNoLongerNeeded
      L18_2 = L8_2
      L17_2(L18_2)
      L17_2 = Wait
      L18_2 = 25
      L17_2(L18_2)
      L17_2 = SetEntityRotation
      L18_2 = L16_2
      L19_2 = L12_2.x
      L20_2 = L12_2.y
      L21_2 = L12_2.z
      L22_2 = 2
      L23_2 = true
      L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    else
      if L13_2 then
        L16_2 = DoesEntityExist
        L17_2 = L13_2
        L16_2 = L16_2(L17_2)
        if L16_2 then
          L16_2 = SetEntityAsMissionEntity
          L17_2 = L13_2
          L18_2 = true
          L19_2 = true
          L16_2(L17_2, L18_2, L19_2)
          L16_2 = DeleteEntity
          L17_2 = L13_2
          L16_2(L17_2)
        end
      end
      L16_2 = Wait
      L17_2 = 1000
      L16_2(L17_2)
    end
  else
    L11_2 = Wait
    L12_2 = 1000
    L11_2(L12_2)
  end
end
L123_1[L124_1] = L125_1
L123_1 = _ENV
L124_1 = "delPesci"
function L125_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = nil
  if nil == A0_2 then
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L1_2 = L2_2
  else
    L1_2 = A0_2
  end
  L2_2 = GetGamePool
  L3_2 = "CObject"
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetEntityCoords
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L9_2 = L1_2 - L9_2
    L9_2 = #L9_2
    if L9_2 < 1.0 then
      L9_2 = ipairs
      L10_2 = fishValidList
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = GetEntityModel
        L16_2 = L8_2
        L15_2 = L15_2(L16_2)
        L16_2 = GetHashKey
        L17_2 = L14_2
        L16_2 = L16_2(L17_2)
        if L15_2 ~= L16_2 then
          L15_2 = GetEntityModel
          L16_2 = L8_2
          L15_2 = L15_2(L16_2)
          if L15_2 ~= L14_2 then
            goto lbl_54
          end
        end
        L15_2 = DoesEntityExist
        L16_2 = L8_2
        L15_2 = L15_2(L16_2)
        if L15_2 then
          L15_2 = SetEntityAsMissionEntity
          L16_2 = L8_2
          L15_2(L16_2)
          L15_2 = DeleteEntity
          L16_2 = L8_2
          L15_2(L16_2)
        end
        ::lbl_54::
      end
    end
  end
end
L123_1[L124_1] = L125_1
L123_1 = RegisterNetEvent
L124_1 = "delPesci"
L123_1(L124_1)
L123_1 = AddEventHandler
L124_1 = "delPesci"
function L125_1()
  local L0_2, L1_2
  L0_2 = delPesci
  L0_2()
end
L123_1(L124_1, L125_1)
L123_1 = _ENV
L124_1 = "DisableKeyBase"
function L125_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 24
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 25
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 140
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 141
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 142
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 143
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L123_1[L124_1] = L125_1
L123_1 = 0.14
L124_1 = 350
L125_1 = 0
L126_1 = _ENV
L127_1 = "AnimSecondariaDrag"
function L128_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = faiAnimPool
  L2_2 = "anim@amb@nightclub@lazlow@ig1_vip@"
  L3_2 = "clubvip_base_laz"
  L4_2 = -1
  L5_2 = 49
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 1917885559 ~= L1_2 then
    L1_2 = GetEntityModel
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if -527501070 ~= L1_2 then
      L1_2 = CarriolaObj
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = L125_1
        if 0 == L1_2 then
          L1_2 = GetGameTimer
          L1_2 = L1_2()
          L125_1 = L1_2
        else
          L1_2 = GetGameTimer
          L1_2 = L1_2()
          L2_2 = L125_1
          L1_2 = L1_2 - L2_2
          L2_2 = L124_1
          if L1_2 >= L2_2 then
            L1_2 = 0.8
            L2_2 = GetEntityModel
            L3_2 = A0_2
            L2_2 = L2_2(L3_2)
            if 214384272 == L2_2 then
              L1_2 = 0.4
            else
              L2_2 = GetEntityModel
              L3_2 = A0_2
              L2_2 = L2_2(L3_2)
              if 1971443925 == L2_2 then
                L1_2 = 1.5
              end
            end
            L2_2 = GetEntityForwardVector
            L3_2 = PlayerPedId
            L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2()
            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            L3_2 = table
            L3_2 = L3_2.unpack
            L4_2 = GetEntityCoords
            L5_2 = PlayerPedId
            L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
            L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            L5_2 = L2_2 * L1_2
            L4_2 = L4_2 + L5_2
            L3_2, L4_2, L5_2 = L3_2(L4_2)
            L6_2 = vector3
            L7_2 = L3_2
            L8_2 = L4_2
            L9_2 = L5_2 - 0.98
            L6_2 = L6_2(L7_2, L8_2, L9_2)
            L7_2 = PlayEffect
            L8_2 = "core"
            L9_2 = "ent_dst_rocks_small"
            L10_2 = L6_2
            L11_2 = 0.9
            L12_2 = 0.5
            L13_2 = L124_1
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            L7_2 = PlayEffect
            L8_2 = "core"
            L9_2 = "bul_gravel"
            L10_2 = L6_2
            L11_2 = 0.9
            L12_2 = 0.5
            L13_2 = L124_1
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            L7_2 = 0
            L125_1 = L7_2
          end
        end
      end
    end
  end
end
L126_1[L127_1] = L128_1
L126_1 = _ENV
L127_1 = "PlayEffectDrag"
function L128_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = 350
  if nil ~= A5_2 then
    L6_2 = A5_2
  end
  L7_2 = HasNamedPtfxAssetLoaded
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = RequestNamedPtfxAsset
    L8_2 = A0_2
    L7_2(L8_2)
  end
  while true do
    L7_2 = HasNamedPtfxAssetLoaded
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = SetPtfxAssetNextCall
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = UseParticleFxAssetNextCall
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = StartParticleFxLoopedAtCoord
    L1_3 = A1_2
    L2_3 = A2_2
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = A3_2
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L1_3 = A4_2
    if L1_3 then
      L1_3 = SetParticleFxLoopedAlpha
      L2_3 = L0_3
      L3_3 = A4_2
      L1_3(L2_3, L3_3)
    end
    L1_3 = Wait
    L2_3 = L6_2
    L1_3(L2_3)
    L1_3 = StopParticleFxLooped
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = RemoveParticleFx
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L7_2(L8_2)
end
L126_1[L127_1] = L128_1
L126_1 = _ENV
L127_1 = "CreateThread"
L126_1 = L126_1[L127_1]
function L127_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = Wait
    L1_2 = 30000
    L0_2(L1_2)
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 57
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 57
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_58
      end
    end
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 289
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 289
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_58
      end
    end
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 170
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 170
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_58
      end
    end
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 318
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 318
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_58
      end
    end
    L0_2 = TriggerServerEvent
    L1_2 = "fivem_netstatus"
    L0_2(L1_2)
    L0_2 = Wait
    L1_2 = 30000
    L0_2(L1_2)
    ::lbl_58::
  end
end
L126_1(L127_1)
L126_1 = 0
L127_1 = _ENV
L128_1 = "loopTrascina"
function L129_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = ClearPedTasks
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = "combat@drag_ped@"
  L3_2 = "injured_drag_plyr"
  L4_2 = IsEntityPlayingAnim
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L4_2 = ClearPedTasks
    L5_2 = PlayerPedId
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2()
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L4_2 = IsEntityPlayingAnim
  L5_2 = L1_2
  L6_2 = "anim@amb@nightclub@lazlow@ig1_vip@"
  L7_2 = "clubvip_base_laz"
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L4_2 = ClearPedTasks
    L5_2 = PlayerPedId
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2()
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L4_2 = faiAnimPool
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = -1
  L8_2 = 1
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = IsEntityPlayingAnim
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = TaskPlayAnim
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = 3.0
    L9_2 = 3.0
    L10_2 = -1
    L11_2 = 1
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L4_2 = AnimSecondariaDrag
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 29
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 157
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 158
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 159
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 160
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 161
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 162
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 163
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 164
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 165
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 23
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 37
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 192
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 204
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 221
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 349
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 16
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 17
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 170
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 24
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 25
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 44
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 140
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 141
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 142
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 257
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 263
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 264
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 245
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = L1_2
      L2_3 = L2_2
      L3_3 = L3_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        return
      end
      while true do
        L0_3 = IsEntityPlayingAnim
        L1_3 = L1_2
        L2_3 = L2_2
        L3_3 = L3_2
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if not L0_3 then
          break
        end
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 32
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 25
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 25
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = SetEntityAnimSpeed
        L1_3 = L1_2
        L2_3 = L2_2
        L3_3 = L3_2
        L4_3 = 0
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = veicolovicino
        if L0_3 > 0 then
          L0_3 = IsEntityAttached
          L1_3 = A0_2
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = GetVehicleDoorLockStatus
            L1_3 = veicolovicino
            L0_3 = L0_3(L1_3)
            if 2 ~= L0_3 then
              L0_3 = draw
              L1_3 = 25
              L2_3 = "Place on vehicle"
              L3_3 = 32
              L4_3 = "Drag"
              L5_3 = 73
              L6_3 = "Drop"
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
          end
        end
        else
          L0_3 = draw
          L1_3 = 32
          L2_3 = "Drag"
          L3_3 = 73
          L4_3 = "Drop"
          L0_3(L1_3, L2_3, L3_3, L4_3)
        end
      end
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 73
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlJustPressed
          L1_3 = 0
          L2_3 = 25
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlJustPressed
            L1_3 = 0
            L2_3 = 25
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              goto lbl_268
            end
          end
        end
      end
      L0_3 = ClearPedTasks
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L1_3()
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L0_3 = L126_1
      if L0_3 > 0 then
        L0_3 = 0
        L126_1 = L0_3
      end
      do return end
      ::lbl_268::
      L0_3 = AnimSecondariaDrag
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 21
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = SetEntityAnimSpeed
        L1_3 = L1_2
        L2_3 = L2_2
        L3_3 = L3_2
        L4_3 = 1.0
        L0_3(L1_3, L2_3, L3_3, L4_3)
      else
        L0_3 = SetEntityAnimSpeed
        L1_3 = L1_2
        L2_3 = L2_2
        L3_3 = L3_2
        L4_3 = 0.75
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L0_3 = L126_1
      L0_3 = L0_3 + 1
      L126_1 = L0_3
      L0_3 = L126_1
      if 50 == L0_3 then
        L0_3 = GetEntityCoords
        L1_3 = L1_2
        L0_3 = L0_3(L1_3)
        L1_3 = TriggerServerEvent
        L2_3 = "updateTrascinaFisher"
        L3_3 = GetPlayerServerId
        L4_3 = PlayerId
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L4_3()
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        L4_3 = L0_3.x
        L5_3 = L0_3.y
        L6_3 = L0_3.z
        L7_3 = GetEntityHeading
        L8_3 = L1_2
        L7_3, L8_3, L9_3, L10_3, L11_3 = L7_3(L8_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        L1_3 = 0
        L126_1 = L1_3
      end
      L0_3 = IsEntityPlayingAnim
      L1_3 = L1_2
      L2_3 = L2_2
      L3_3 = L3_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if L0_3 then
        L0_3 = GetEntityAnimCurrentTime
        L1_3 = L1_2
        L2_3 = L2_2
        L3_3 = L3_2
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = L123_1
        if L0_3 >= L1_3 then
          L1_3 = SetEntityAnimCurrentTime
          L2_3 = L1_2
          L3_3 = L2_2
          L4_3 = L3_2
          L5_3 = L0_3
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = TaskPlayAnim
          L2_3 = L1_2
          L3_3 = L2_2
          L4_3 = L3_2
          L5_3 = 3.0
          L6_3 = 3.0
          L7_3 = -1
          L8_3 = 1
          L9_3 = false
          L10_3 = false
          L11_3 = false
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        end
        L1_3 = GetEntityHeading
        L2_3 = L1_2
        L1_3 = L1_3(L2_3)
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 34
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = SetEntityHeading
          L3_3 = L1_2
          L4_3 = L1_3 + 1.1
          L2_3(L3_3, L4_3)
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = 35
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = SetEntityHeading
          L3_3 = L1_2
          L4_3 = L1_3 - 1.1
          L2_3(L3_3, L4_3)
        end
      end
    end
  end
  L4_2(L5_2)
end
L127_1[L128_1] = L129_1
L127_1 = RegisterNetEvent
L128_1 = "updateTrascinaFisher"
function L129_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if L5_2 == A0_2 then
  else
    L5_2 = GetEntityCoords
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L6_2 = vector3
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2 - L6_2
    L5_2 = #L5_2
    L6_2 = 150.0
    if L5_2 < L6_2 then
      L5_2 = GetPlayerPed
      L6_2 = GetPlayerFromServerId
      L7_2 = A0_2
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L6_2 = SetEntityHeading
      L7_2 = L5_2
      L8_2 = A4_2
      L6_2(L7_2, L8_2)
      L6_2 = SetEntityCoords
      L7_2 = L5_2
      L8_2 = A1_2
      L9_2 = A2_2
      L10_2 = A3_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L127_1(L128_1, L129_1)
function L127_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = 0.0
  if nil == A0_2 then
    L2_2 = 3.0
  else
    L2_2 = A0_2
  end
  L3_2 = L75_1
  L3_2 = L3_2()
  L4_2 = -1
  L5_2 = -1
  L6_2 = nil
  L7_2 = false
  L8_2 = PlayerId
  L8_2 = L8_2()
  if nil == L6_2 then
    L7_2 = true
    L9_2 = GetEntityCoords
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    L6_2 = L9_2
  end
  L9_2 = 1
  L10_2 = #L3_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = GetPlayerPed
    L14_2 = L3_2[L12_2]
    L13_2 = L13_2(L14_2)
    if L7_2 then
      if not L7_2 then
        goto lbl_55
      end
      L14_2 = L3_2[L12_2]
      if L14_2 == L8_2 then
        goto lbl_55
      end
    end
    L14_2 = GetEntityCoords
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L15_2 = vector3
    L16_2 = L6_2.x
    L17_2 = L6_2.y
    L18_2 = L6_2.z
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L15_2 = L14_2 - L15_2
    L15_2 = #L15_2
    if -1 == L4_2 or L4_2 > L15_2 and L2_2 > L15_2 then
      L5_2 = L3_2[L12_2]
      L4_2 = L15_2
    end
    ::lbl_55::
  end
  return L5_2
end
L128_1 = _ENV
L129_1 = "InteragisciProp"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L92_1
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = SetEntityDrawOutline
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityDrawOutlineColor
  L2_2 = 100
  L3_2 = 0
  L4_2 = 100
  L5_2 = 150
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = FreezeEntityPosition
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = faiAnimPool
  L2_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
  L3_2 = "load_and_tune_guilotine_v1_billcutter"
  L4_2 = -1
  L5_2 = 49
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Wait
  L2_2 = 150
  L1_2(L2_2)
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.accensione
  if nil == L1_2 then
    L1_2 = false
  end
  L2_2 = "OFF"
  if L1_2 then
    L2_2 = "ON"
  end
  while true do
    L3_2 = IsEntityPlayingAnim
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
    L6_2 = "load_and_tune_guilotine_v1_billcutter"
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = Entity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    L3_2 = L3_2.corrente
    if nil == L3_2 then
      L3_2 = 0
    end
    L4_2 = GetEntityCoords
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = "Stato: "
    L6_2 = L2_2
    L7_2 = "~n~Corrente: "
    L8_2 = L3_2
    L9_2 = "%"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L6_2 = Draw3D
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = L4_2.z
    L9_2 = L9_2 + 1.0
    L10_2 = L5_2
    L11_2 = 0.4
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    if not L1_2 then
      L6_2 = draw
      L7_2 = 38
      L8_2 = "Turn on & start production"
      L9_2 = 45
      L10_2 = "Recharge batter"
      L11_2 = 73
      L12_2 = "Exit"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L6_2 = draw
      L7_2 = 38
      L8_2 = "Turn off & Stop production"
      L9_2 = 45
      L10_2 = "Recharge"
      L11_2 = 73
      L12_2 = "Exit"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L6_2 = IsControlJustPressed
    L7_2 = 0
    L8_2 = 38
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = IsDisabledControlJustPressed
      L7_2 = 0
      L8_2 = 38
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_184
      end
    end
    if L3_2 > 0 then
      L6_2 = PlaySoundFrontend
      L7_2 = -1
      L8_2 = "ERROR"
      L9_2 = "HUD_AMMO_SHOP_SOUNDSET"
      L10_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = not L1_2
      L7_2 = false
      if true == L6_2 then
        L8_2 = ControlloOggettiMeth
        L9_2 = A0_2
        L8_2 = L8_2(L9_2)
        L7_2 = L8_2
      end
      L8_2 = Wait
      L9_2 = 25
      L8_2(L9_2)
      L8_2 = FreezeEntityPosition
      L9_2 = PlayerPedId
      L9_2 = L9_2()
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = SetEntityDrawOutline
      L9_2 = A0_2
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = ClearPedTasks
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2 = L9_2()
      L8_2(L9_2, L10_2, L11_2, L12_2)
      if not L7_2 then
        L8_2 = Entity
        L9_2 = A0_2
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2.state
        L9_2 = L8_2
        L8_2 = L8_2.set
        L10_2 = "accensione"
        L11_2 = L6_2
        L12_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2)
        if false == L6_2 then
          L8_2 = InteragisciProp
          L9_2 = A0_2
          L8_2(L9_2)
        end
      else
        L8_2 = MissPropMsg
        L8_2()
        L8_2 = faiAnimPool
        L9_2 = "gestures@f@standing@casual"
        L10_2 = "gesture_bring_it_on"
        L11_2 = 950
        L12_2 = 49
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      return
    else
      L6_2 = PlaySoundFrontend
      L7_2 = -1
      L8_2 = "Pin_Bad"
      L9_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
      L10_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = Wait
      L7_2 = 1000
      L6_2(L7_2)
    end
    ::lbl_184::
    L6_2 = IsControlJustPressed
    L7_2 = 0
    L8_2 = 45
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = IsDisabledControlJustPressed
      L7_2 = 0
      L8_2 = 45
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_241
      end
    end
    L6_2 = PlaySoundFrontend
    L7_2 = -1
    L8_2 = "Event_Start_Text"
    L9_2 = "GTAO_FM_Events_Soundset"
    L10_2 = 0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Entity
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.state
    L6_2 = L6_2.corrente
    if nil == L6_2 then
      L6_2 = 0
    end
    L7_2 = L6_2 + 25
    if L7_2 > 100 then
      L7_2 = 100
    end
    L8_2 = Entity
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.state
    L9_2 = L8_2
    L8_2 = L8_2.set
    L10_2 = "corrente"
    L11_2 = L7_2
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = FreezeEntityPosition
    L9_2 = PlayerPedId
    L9_2 = L9_2()
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityDrawOutline
    L9_2 = A0_2
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = ClearPedTasks
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2 = L9_2()
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = InteragisciProp
    L9_2 = A0_2
    L8_2(L9_2)
    do return end
    ::lbl_241::
  end
  L3_2 = FreezeEntityPosition
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityDrawOutline
  L4_2 = A0_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = ClearPedTasks
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "ControlloOggettiMeth"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = GetEntityCoords
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L13_2 = GetGamePool
  L14_2 = "CObject"
  L13_2 = L13_2(L14_2)
  L14_2 = ipairs
  L15_2 = L13_2
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
  for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
    L20_2 = GetEntityCoords
    L21_2 = L19_2
    L20_2 = L20_2(L21_2)
    L20_2 = L20_2 - L12_2
    L20_2 = #L20_2
    L21_2 = 3.5
    if L20_2 < L21_2 then
      L20_2 = GetEntityModel
      L21_2 = L19_2
      L20_2 = L20_2(L21_2)
      if 304964818 == L20_2 then
        L1_2 = L19_2
        L20_2 = print
        L21_2 = "Ho trovato un tavolo!"
        L20_2(L21_2)
        L6_2 = L6_2 + 1
      end
      L20_2 = GetEntityModel
      L21_2 = L19_2
      L20_2 = L20_2(L21_2)
      if 1298403575 == L20_2 then
        L2_2 = L19_2
        L20_2 = print
        L21_2 = "Ho trovato un barile!"
        L20_2(L21_2)
        L7_2 = L7_2 + 1
      end
      L20_2 = GetEntityModel
      L21_2 = L19_2
      L20_2 = L20_2(L21_2)
      if 282049592 == L20_2 then
        L3_2 = L19_2
        L20_2 = print
        L21_2 = "Ho trovato un bollitore!"
        L20_2(L21_2)
        L8_2 = L8_2 + 1
      end
      L20_2 = GetEntityModel
      L21_2 = L19_2
      L20_2 = L20_2(L21_2)
      if 1879761629 == L20_2 then
        L4_2 = L19_2
        L20_2 = print
        L21_2 = "Ho trovato il solvente!"
        L20_2(L21_2)
        L9_2 = L9_2 + 1
      end
      L20_2 = GetEntityModel
      L21_2 = L19_2
      L20_2 = L20_2(L21_2)
      if 1232302069 ~= L20_2 then
        L20_2 = GetEntityModel
        L21_2 = L19_2
        L20_2 = L20_2(L21_2)
        if 550150979 ~= L20_2 then
          goto lbl_87
        end
      end
      L5_2 = L19_2
      L20_2 = print
      L21_2 = "Ho trovato una placca!"
      L20_2(L21_2)
      L10_2 = L10_2 + 1
      ::lbl_87::
      L20_2 = GetEntityModel
      L21_2 = L19_2
      L20_2 = L20_2(L21_2)
      if 1917885559 == L20_2 and L19_2 ~= A0_2 then
        L5_2 = L19_2
        L20_2 = print
        L21_2 = "Ho trovato un'altro generatore!"
        L20_2(L21_2)
        L11_2 = L11_2 + 1
      end
    end
  end
  L14_2 = Wait
  L15_2 = 25
  L14_2(L15_2)
  if L6_2 > 1 or L7_2 > 1 or L8_2 > 1 or L9_2 > 1 or L10_2 > 1 or L11_2 > 1 then
    L14_2 = true
    return L14_2
  end
  if nil ~= L3_2 then
    L14_2 = GetEntityCoords
    L15_2 = L3_2
    L14_2 = L14_2(L15_2)
    L14_2 = L14_2.z
    L15_2 = GetEntityCoords
    L16_2 = L1_2
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2.z
    L15_2 = L15_2 + 0.8
    if L14_2 < L15_2 then
      L14_2 = true
      return L14_2
    end
  end
  if nil ~= L4_2 then
    L14_2 = GetEntityCoords
    L15_2 = L4_2
    L14_2 = L14_2(L15_2)
    L14_2 = L14_2.z
    L15_2 = GetEntityCoords
    L16_2 = L1_2
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2.z
    L15_2 = L15_2 + 0.8
    if L14_2 < L15_2 then
      L14_2 = true
      return L14_2
    end
  end
  if nil ~= L5_2 then
    L14_2 = GetEntityCoords
    L15_2 = L5_2
    L14_2 = L14_2(L15_2)
    L14_2 = L14_2.z
    L15_2 = GetEntityCoords
    L16_2 = L1_2
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2.z
    L15_2 = L15_2 + 0.8
    if L14_2 < L15_2 then
      L14_2 = true
      return L14_2
    end
  end
  if nil == L1_2 or nil == L2_2 or nil == L3_2 or nil == L4_2 or nil == L5_2 then
    L14_2 = true
    return L14_2
  else
    L14_2 = IniziaProduzioneMeth
    L15_2 = L1_2
    L16_2 = L2_2
    L17_2 = L3_2
    L18_2 = L4_2
    L19_2 = L5_2
    L20_2 = A0_2
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L14_2 = false
    return L14_2
  end
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "IniziaProduzioneMeth"
function L130_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = false
  L7_2 = Entity
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.state
  L7_2 = L7_2.qtolio
  if nil == L7_2 or 0 == L7_2 then
    L7_2 = 20
    L8_2 = Entity
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.state
    L9_2 = L8_2
    L8_2 = L8_2.set
    L10_2 = "qtolio"
    L11_2 = L7_2
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L8_2 = Entity
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.state
  L8_2 = L8_2.qtsolvente
  if nil == L8_2 or 0 == L8_2 then
    L8_2 = 10
    L9_2 = Entity
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2.state
    L10_2 = L9_2
    L9_2 = L9_2.set
    L11_2 = "qtsolvente"
    L12_2 = L8_2
    L13_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L9_2 = Entity
  L10_2 = A5_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.state
  L9_2 = L9_2.corrente
  L10_2 = A4_2
  L11_2 = GetEntityCoords
  L12_2 = A4_2
  L11_2 = L11_2(L12_2)
  L12_2 = StartProd
  L12_2()
  L12_2 = Wait
  L13_2 = 150
  L12_2(L13_2)
  L12_2 = 0
  L13_2 = 0
  L14_2 = CreateThread
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L6_2
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        if not L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          if not L0_3 then
            goto lbl_23
          end
        end
      end
      L0_3 = print
      L1_3 = "Produzione fermata anche per il marker!"
      L0_3(L1_3)
      do return end
      ::lbl_23::
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      L1_3 = L11_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 1.2
      if L0_3 >= L1_3 then
        L0_3 = DrawMarker
        L1_3 = 0
        L2_3 = L11_2.x
        L3_3 = L11_2.y
        L4_3 = L11_2.z
        L4_3 = L4_3 + 1.0
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.13
        L12_3 = 0.13
        L13_3 = 0.2
        L14_3 = 255
        L15_3 = 255
        L16_3 = 255
        L17_3 = 150
        L18_3 = true
        L19_3 = false
        L20_3 = 0
        L21_3 = false
        L22_3 = nil
        L23_3 = nil
        L24_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      else
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L3_3 = "load_and_tune_guilotine_v1_billcutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = L10_2
          L0_3 = L0_3(L1_3)
          L1_3 = Entity
          L2_3 = L10_2
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L1_3 = L1_3.qtPlacche
          if nil == L1_3 then
            L1_3 = 0
          end
          L2_3 = "Totale: ~h~"
          L3_3 = L1_3
          L4_3 = " placche~h~~n~Prodotte ora: ~h~"
          L5_3 = L13_2
          L6_3 = " placche"
          L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
          L3_3 = Draw3D
          L4_3 = L0_3.x
          L5_3 = L0_3.y
          L6_3 = L0_3.z
          L6_3 = L6_3 + 0.3
          L7_3 = L2_3
          L8_3 = 0.4
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        end
      end
    end
  end
  L14_2(L15_2)
  L14_2 = CreateThread
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = L12_2
      L0_3 = L0_3 + 1
      L12_2 = L0_3
      L0_3 = DoesEntityExist
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L6_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L6_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A2_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L6_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A3_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L6_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = L10_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L6_2 = L0_3
      end
      L0_3 = Entity
      L1_3 = A5_2
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.state
      L0_3 = L0_3.accensione
      if false == L0_3 then
        L0_3 = true
        L6_2 = L0_3
      end
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L1_3 = GetEntityCoords
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      if L0_3 > 10.0 then
        L0_3 = true
        L6_2 = L0_3
        L0_3 = print
        L1_3 = "Produzione fermata per troppa distanza dal generatore."
        L0_3(L1_3)
      end
      L0_3 = L6_2
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        if not L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          if not L0_3 then
            goto lbl_107
          end
        end
      end
      L0_3 = Entity
      L1_3 = A5_2
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.state
      L1_3 = L0_3
      L0_3 = L0_3.set
      L2_3 = "accensione"
      L3_3 = false
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = SetEntityDrawOutline
      L1_3 = L10_2
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = faiAnimPool
      L1_3 = "gestures@f@standing@casual"
      L2_3 = "gesture_bring_it_on"
      L3_3 = 1500
      L4_3 = 49
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = print
      L1_3 = "La produzione \195\168 stata fermata."
      L0_3(L1_3)
      do return end
      ::lbl_107::
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L1_3 = L11_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 1.3
      if L0_3 < L1_3 then
        L0_3 = faiAnimPool
        L1_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L2_3 = "load_and_tune_guilotine_v1_billcutter"
        L3_3 = -1
        L4_3 = 49
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L3_3 = "load_and_tune_guilotine_v1_billcutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = L7_2
          if L0_3 > 1 then
            L0_3 = L7_2
            L0_3 = L0_3 - 1
            L7_2 = L0_3
            L0_3 = Entity
            L1_3 = A1_2
            L0_3 = L0_3(L1_3)
            L0_3 = L0_3.state
            L1_3 = L0_3
            L0_3 = L0_3.set
            L2_3 = "qtolio"
            L3_3 = L7_2
            L4_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = print
            L1_3 = "Olio aggiornato: "
            L2_3 = L7_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
          else
            L0_3 = print
            L1_3 = "Produzione fermata: Olio terminato."
            L0_3(L1_3)
            L0_3 = SetEntityAsMissionEntity
            L1_3 = A1_2
            L0_3(L1_3)
            L0_3 = DeleteEntity
            L1_3 = A1_2
            L0_3(L1_3)
            L0_3 = true
            L6_2 = L0_3
          end
          L0_3 = L8_2
          if L0_3 > 1 then
            L0_3 = L8_2
            L0_3 = L0_3 - 1
            L8_2 = L0_3
            L0_3 = Entity
            L1_3 = A3_2
            L0_3 = L0_3(L1_3)
            L0_3 = L0_3.state
            L1_3 = L0_3
            L0_3 = L0_3.set
            L2_3 = "qtsolvente"
            L3_3 = L8_2
            L4_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = print
            L1_3 = "Solvente aggiornato: "
            L2_3 = L8_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
          else
            L0_3 = print
            L1_3 = "Produzione fermata: Solvente terminato."
            L0_3(L1_3)
            L0_3 = SetEntityAsMissionEntity
            L1_3 = A3_2
            L0_3(L1_3)
            L0_3 = DeleteEntity
            L1_3 = A3_2
            L0_3(L1_3)
            L0_3 = true
            L6_2 = L0_3
          end
          L0_3 = L9_2
          if L0_3 > 1 then
            L0_3 = L9_2
            L0_3 = L0_3 - 0.1
            L9_2 = L0_3
            L0_3 = Entity
            L1_3 = A5_2
            L0_3 = L0_3(L1_3)
            L0_3 = L0_3.state
            L1_3 = L0_3
            L0_3 = L0_3.set
            L2_3 = "corrente"
            L3_3 = L9_2
            L4_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = print
            L1_3 = "Corrente generatore aggiornata: "
            L2_3 = L9_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
          else
            L0_3 = print
            L1_3 = "Produzione fermata: Generatore scarico."
            L0_3(L1_3)
            L0_3 = true
            L6_2 = L0_3
          end
          L0_3 = L92_1
          L1_3 = PlayerPedId
          L1_3 = L1_3()
          L2_3 = GetEntityCoords
          L3_3 = A0_2
          L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3(L3_3)
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          L0_3 = Wait
          L1_3 = 2500
          L0_3(L1_3)
          L0_3 = Entity
          L1_3 = L10_2
          L0_3 = L0_3(L1_3)
          L0_3 = L0_3.state
          L0_3 = L0_3.qtPlacche
          if nil == L0_3 then
            L1_3 = GetEntityCoords
            L2_3 = A4_2
            L1_3 = L1_3(L2_3)
            L2_3 = GetEntityRotation
            L3_3 = A4_2
            L2_3 = L2_3(L3_3)
            L3_3 = SetEntityAsMissionEntity
            L4_3 = A4_2
            L3_3(L4_3)
            L3_3 = DeleteEntity
            L4_3 = A4_2
            L3_3(L4_3)
            L3_3 = CreateObject
            L4_3 = 550150979
            L5_3 = L1_3.x
            L6_3 = L1_3.y
            L7_3 = L1_3.z
            L8_3 = true
            L9_3 = true
            L10_3 = false
            L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
            L10_2 = L3_3
            while true do
              L3_3 = DoesEntityExist
              L4_3 = L10_2
              L3_3 = L3_3(L4_3)
              if L3_3 then
                break
              end
              L3_3 = Wait
              L4_3 = 25
              L3_3(L4_3)
            end
            L3_3 = SetEntityRotation
            L4_3 = L10_2
            L5_3 = L2_3
            L3_3(L4_3, L5_3)
            L0_3 = 0
          end
          L1_3 = Entity
          L2_3 = L10_2
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L2_3 = L1_3
          L1_3 = L1_3.set
          L3_3 = "qtPlacche"
          L4_3 = L0_3 + 1
          L5_3 = true
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = print
          L2_3 = "Le placche pronte ora sono in totale "
          L3_3 = L0_3 + 1
          L2_3 = L2_3 .. L3_3
          L1_3(L2_3)
          L1_3 = L13_2
          L1_3 = L1_3 + 1
          L13_2 = L1_3
        end
      end
    end
  end
  L14_2(L15_2)
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "GestisciGenFrullatore"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L92_1
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = SetEntityDrawOutline
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityDrawOutlineColor
  L2_2 = 100
  L3_2 = 0
  L4_2 = 100
  L5_2 = 150
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = FreezeEntityPosition
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = faiAnimPool
  L2_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
  L3_2 = "load_and_tune_guilotine_v1_billcutter"
  L4_2 = -1
  L5_2 = 49
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Wait
  L2_2 = 150
  L1_2(L2_2)
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.accensione
  if nil == L1_2 then
    L1_2 = false
  end
  L2_2 = "OFF"
  if L1_2 then
    L2_2 = "ON"
  end
  while true do
    L3_2 = IsEntityPlayingAnim
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
    L6_2 = "load_and_tune_guilotine_v1_billcutter"
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = Entity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    L3_2 = L3_2.corrente
    if nil == L3_2 then
      L3_2 = 0
    end
    L4_2 = GetEntityCoords
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = "Stato: "
    L6_2 = L2_2
    L7_2 = "~n~Corrente: "
    L8_2 = L3_2
    L9_2 = "%"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L6_2 = Draw3D
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = L4_2.z
    L9_2 = L9_2 + 1.0
    L10_2 = L5_2
    L11_2 = 0.4
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    if not L1_2 then
      L6_2 = draw
      L7_2 = 38
      L8_2 = "Turn on & start production"
      L9_2 = 45
      L10_2 = "Recharge battery"
      L11_2 = 73
      L12_2 = "Cancel"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L6_2 = draw
      L7_2 = 38
      L8_2 = "Turn off & stop production"
      L9_2 = 45
      L10_2 = "Recharge battery"
      L11_2 = 73
      L12_2 = "Cancel"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L6_2 = IsControlJustPressed
    L7_2 = 0
    L8_2 = 38
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = IsDisabledControlJustPressed
      L7_2 = 0
      L8_2 = 38
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_184
      end
    end
    if L3_2 > 0 then
      L6_2 = PlaySoundFrontend
      L7_2 = -1
      L8_2 = "ERROR"
      L9_2 = "HUD_AMMO_SHOP_SOUNDSET"
      L10_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = not L1_2
      L7_2 = false
      if true == L6_2 then
        L8_2 = ControlloOggettiFrullatore
        L9_2 = A0_2
        L8_2 = L8_2(L9_2)
        L7_2 = L8_2
      end
      L8_2 = Wait
      L9_2 = 25
      L8_2(L9_2)
      L8_2 = FreezeEntityPosition
      L9_2 = PlayerPedId
      L9_2 = L9_2()
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = SetEntityDrawOutline
      L9_2 = A0_2
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = ClearPedTasks
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2 = L9_2()
      L8_2(L9_2, L10_2, L11_2, L12_2)
      if not L7_2 then
        L8_2 = Entity
        L9_2 = A0_2
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2.state
        L9_2 = L8_2
        L8_2 = L8_2.set
        L10_2 = "accensione"
        L11_2 = L6_2
        L12_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2)
        if false == L6_2 then
          L8_2 = GestisciGenFrullatore
          L9_2 = A0_2
          L8_2(L9_2)
        end
      else
        L8_2 = MissPropMsg
        L8_2()
        L8_2 = faiAnimPool
        L9_2 = "gestures@f@standing@casual"
        L10_2 = "gesture_bring_it_on"
        L11_2 = 950
        L12_2 = 49
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      return
    else
      L6_2 = PlaySoundFrontend
      L7_2 = -1
      L8_2 = "Pin_Bad"
      L9_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
      L10_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = Wait
      L7_2 = 1000
      L6_2(L7_2)
    end
    ::lbl_184::
    L6_2 = IsControlJustPressed
    L7_2 = 0
    L8_2 = 45
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = IsDisabledControlJustPressed
      L7_2 = 0
      L8_2 = 45
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_241
      end
    end
    L6_2 = PlaySoundFrontend
    L7_2 = -1
    L8_2 = "Event_Start_Text"
    L9_2 = "GTAO_FM_Events_Soundset"
    L10_2 = 0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Entity
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.state
    L6_2 = L6_2.corrente
    if nil == L6_2 then
      L6_2 = 0
    end
    L7_2 = L6_2 + 25
    if L7_2 > 100 then
      L7_2 = 100
    end
    L8_2 = Entity
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.state
    L9_2 = L8_2
    L8_2 = L8_2.set
    L10_2 = "corrente"
    L11_2 = L7_2
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = FreezeEntityPosition
    L9_2 = PlayerPedId
    L9_2 = L9_2()
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityDrawOutline
    L9_2 = A0_2
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = ClearPedTasks
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2 = L9_2()
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = GestisciGenFrullatore
    L9_2 = A0_2
    L8_2(L9_2)
    do return end
    ::lbl_241::
  end
  L3_2 = FreezeEntityPosition
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityDrawOutline
  L4_2 = A0_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = ClearPedTasks
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "ControlloOggettiFrullatore"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = GetEntityCoords
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L10_2 = GetGamePool
  L11_2 = "CObject"
  L10_2 = L10_2(L11_2)
  L11_2 = ipairs
  L12_2 = L10_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = GetEntityCoords
    L18_2 = L16_2
    L17_2 = L17_2(L18_2)
    L17_2 = L17_2 - L9_2
    L17_2 = #L17_2
    L18_2 = 3.5
    if L17_2 < L18_2 then
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if 304964818 == L17_2 then
        L1_2 = L16_2
        L17_2 = print
        L18_2 = "Ho trovato un tavolo!"
        L17_2(L18_2)
        L5_2 = L5_2 + 1
      end
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if 550150979 == L17_2 then
        L2_2 = L16_2
        L17_2 = print
        L18_2 = "Ho trovato una placcapiena!"
        L17_2(L18_2)
        L6_2 = L6_2 + 1
      end
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if 818840219 == L17_2 then
        L3_2 = L16_2
        L17_2 = print
        L18_2 = "Ho trovato un frullatore!"
        L17_2(L18_2)
        L7_2 = L7_2 + 1
      end
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if 1565769055 ~= L17_2 then
        L17_2 = GetEntityModel
        L18_2 = L16_2
        L17_2 = L17_2(L18_2)
        if 628573572 ~= L17_2 then
          goto lbl_74
        end
      end
      L4_2 = L16_2
      L17_2 = print
      L18_2 = "Ho trovato un contenitore!"
      L17_2(L18_2)
      L8_2 = L8_2 + 1
    end
    ::lbl_74::
  end
  L11_2 = Wait
  L12_2 = 25
  L11_2(L12_2)
  if L5_2 > 1 or L6_2 > 1 or L7_2 > 1 or L8_2 > 1 then
    L11_2 = true
    return L11_2
  end
  if nil ~= L4_2 then
    L11_2 = GetEntityCoords
    L12_2 = L4_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2.z
    L12_2 = GetEntityCoords
    L13_2 = L1_2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2.z
    L12_2 = L12_2 + 0.8
    if L11_2 < L12_2 then
      L11_2 = true
      return L11_2
    end
  end
  if nil ~= L2_2 then
    L11_2 = GetEntityCoords
    L12_2 = L2_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2.z
    L12_2 = GetEntityCoords
    L13_2 = L1_2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2.z
    L12_2 = L12_2 + 0.8
    if L11_2 < L12_2 then
      L11_2 = true
      return L11_2
    end
  end
  if nil == L1_2 or nil == L2_2 or nil == L3_2 or nil == L4_2 then
    L11_2 = true
    return L11_2
  else
    L11_2 = IniziaFrullatore
    L12_2 = L1_2
    L13_2 = L2_2
    L14_2 = L3_2
    L15_2 = L4_2
    L16_2 = A0_2
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = false
    return L11_2
  end
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "IniziaFrullatore"
function L130_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = false
  L6_2 = Entity
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.state
  L6_2 = L6_2.qtPlacche
  if nil == L6_2 then
    L6_2 = 1
  end
  L7_2 = Entity
  L8_2 = A4_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.state
  L7_2 = L7_2.corrente
  if nil == L7_2 then
    L7_2 = 0
    L8_2 = Entity
    L9_2 = A4_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.state
    L9_2 = L8_2
    L8_2 = L8_2.set
    L10_2 = "corrente"
    L11_2 = 0
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L8_2 = Entity
  L9_2 = A3_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.state
  L8_2 = L8_2.qtMixata
  if nil == L8_2 then
    L8_2 = Entity
    L9_2 = A3_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.state
    L9_2 = L8_2
    L8_2 = L8_2.set
    L10_2 = "qtMixata"
    L11_2 = 0
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L8_2 = A1_2
  L9_2 = GetEntityCoords
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = StartProd
  L10_2()
  L10_2 = Wait
  L11_2 = 150
  L10_2(L11_2)
  L10_2 = 0
  L11_2 = 0
  L12_2 = CreateThread
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L5_2
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        if not L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          if not L0_3 then
            goto lbl_23
          end
        end
      end
      L0_3 = print
      L1_3 = "Produzione fermata anche per il marker!"
      L0_3(L1_3)
      do return end
      ::lbl_23::
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      L1_3 = L9_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 1.2
      if L0_3 >= L1_3 then
        L0_3 = DrawMarker
        L1_3 = 0
        L2_3 = L9_2.x
        L3_3 = L9_2.y
        L4_3 = L9_2.z
        L4_3 = L4_3 + 1.0
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.13
        L12_3 = 0.13
        L13_3 = 0.2
        L14_3 = 255
        L15_3 = 255
        L16_3 = 255
        L17_3 = 150
        L18_3 = true
        L19_3 = false
        L20_3 = 0
        L21_3 = false
        L22_3 = nil
        L23_3 = nil
        L24_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      else
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L3_3 = "load_and_tune_guilotine_v1_billcutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = L8_2
          L0_3 = L0_3(L1_3)
          L1_3 = Entity
          L2_3 = L8_2
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L1_3 = L1_3.qtPlacche
          if nil == L1_3 then
            L1_3 = 0
          end
          L2_3 = "Placche in attesa: ~h~"
          L3_3 = L1_3
          L4_3 = " placche~h~~n~Produzione: ~h~"
          L5_3 = L11_2
          L6_3 = " pillole"
          L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
          L3_3 = Draw3D
          L4_3 = L0_3.x
          L5_3 = L0_3.y
          L6_3 = L0_3.z
          L6_3 = L6_3 + 0.3
          L7_3 = L2_3
          L8_3 = 0.4
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        end
      end
    end
  end
  L12_2(L13_2)
  L12_2 = CreateThread
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = L10_2
      L0_3 = L0_3 + 1
      L10_2 = L0_3
      L0_3 = DoesEntityExist
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L5_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L5_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A2_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L5_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A3_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L5_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = L8_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L5_2 = L0_3
      end
      L0_3 = Entity
      L1_3 = A4_2
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.state
      L0_3 = L0_3.accensione
      if false == L0_3 then
        L0_3 = true
        L5_2 = L0_3
      end
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3 = GetEntityCoords
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      if L0_3 > 10.0 then
        L0_3 = true
        L5_2 = L0_3
        L0_3 = print
        L1_3 = "Produzione fermata per troppa distanza dal generatore."
        L0_3(L1_3)
      end
      L0_3 = L5_2
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        if not L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          if not L0_3 then
            goto lbl_107
          end
        end
      end
      L0_3 = Entity
      L1_3 = A4_2
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.state
      L1_3 = L0_3
      L0_3 = L0_3.set
      L2_3 = "accensione"
      L3_3 = false
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = SetEntityDrawOutline
      L1_3 = L8_2
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = faiAnimPool
      L1_3 = "gestures@f@standing@casual"
      L2_3 = "gesture_bring_it_on"
      L3_3 = 1500
      L4_3 = 49
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = print
      L1_3 = "La produzione \195\168 stata fermata."
      L0_3(L1_3)
      do return end
      ::lbl_107::
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3 = L9_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 1.3
      if L0_3 < L1_3 then
        L0_3 = faiAnimPool
        L1_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L2_3 = "load_and_tune_guilotine_v1_billcutter"
        L3_3 = -1
        L4_3 = 49
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L3_3 = "load_and_tune_guilotine_v1_billcutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = L6_2
          if L0_3 >= 1 then
            L0_3 = L6_2
            L0_3 = L0_3 - 1
            L6_2 = L0_3
            L0_3 = Entity
            L1_3 = L8_2
            L0_3 = L0_3(L1_3)
            L0_3 = L0_3.state
            L1_3 = L0_3
            L0_3 = L0_3.set
            L2_3 = "qtplacche"
            L3_3 = L6_2
            L4_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = print
            L1_3 = "Placche piene aggiornate: "
            L2_3 = L6_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
          else
            L0_3 = print
            L1_3 = "Produzione fermata: Placche terminate."
            L0_3(L1_3)
            L0_3 = SetEntityAsMissionEntity
            L1_3 = L8_2
            L0_3(L1_3)
            L0_3 = DeleteEntity
            L1_3 = L8_2
            L0_3(L1_3)
            L0_3 = true
            L5_2 = L0_3
          end
          L0_3 = L7_2
          if L0_3 >= 1 then
            L0_3 = L7_2
            L0_3 = L0_3 - 0.1
            L7_2 = L0_3
            L0_3 = Entity
            L1_3 = A4_2
            L0_3 = L0_3(L1_3)
            L0_3 = L0_3.state
            L1_3 = L0_3
            L0_3 = L0_3.set
            L2_3 = "corrente"
            L3_3 = L7_2
            L4_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = print
            L1_3 = "Corrente generatore aggiornata: "
            L2_3 = L7_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
          else
            L0_3 = print
            L1_3 = "Produzione fermata: Generatore scarico."
            L0_3(L1_3)
            L0_3 = true
            L5_2 = L0_3
          end
          L0_3 = L92_1
          L1_3 = PlayerPedId
          L1_3 = L1_3()
          L2_3 = GetEntityCoords
          L3_3 = A0_2
          L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L2_3(L3_3)
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          L0_3 = Wait
          L1_3 = 2500
          L0_3(L1_3)
          function L0_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
            L0_4 = GetEntityModel
            L1_4 = A3_2
            L0_4 = L0_4(L1_4)
            if 628573572 ~= L0_4 then
              L0_4 = GetEntityCoords
              L1_4 = A3_2
              L0_4 = L0_4(L1_4)
              L1_4 = GetEntityRotation
              L2_4 = A3_2
              L1_4 = L1_4(L2_4)
              L2_4 = SetEntityAsMissionEntity
              L3_4 = A3_2
              L2_4(L3_4)
              L2_4 = DeleteEntity
              L3_4 = A3_2
              L2_4(L3_4)
              L2_4 = CreateObject
              L3_4 = 628573572
              L4_4 = L0_4.x
              L5_4 = L0_4.y
              L6_4 = L0_4.z
              L7_4 = true
              L8_4 = true
              L9_4 = false
              L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4)
              A3_2 = L2_4
              while true do
                L2_4 = DoesEntityExist
                L3_4 = A3_2
                L2_4 = L2_4(L3_4)
                if L2_4 then
                  break
                end
                L2_4 = Wait
                L3_4 = 25
                L2_4(L3_4)
              end
              L2_4 = SetEntityRotation
              L3_4 = A3_2
              L4_4 = L1_4
              L2_4(L3_4, L4_4)
            end
          end
          L1_3 = 25
          L2_3 = Entity
          L3_3 = L8_2
          L2_3 = L2_3(L3_3)
          L2_3 = L2_3.state
          L2_3 = L2_3.qtPlacche
          if nil == L2_3 or 1 == L2_3 then
            L3_3 = GetEntityCoords
            L4_3 = A1_2
            L3_3 = L3_3(L4_3)
            L4_3 = GetEntityRotation
            L5_3 = A1_2
            L4_3 = L4_3(L5_3)
            L5_3 = SetEntityAsMissionEntity
            L6_3 = A1_2
            L5_3(L6_3)
            L5_3 = DeleteEntity
            L6_3 = A1_2
            L5_3(L6_3)
            L5_3 = CreateObject
            L6_3 = 1232302069
            L7_3 = L3_3.x
            L8_3 = L3_3.y
            L9_3 = L3_3.z
            L10_3 = true
            L11_3 = true
            L12_3 = false
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            L8_2 = L5_3
            while true do
              L5_3 = DoesEntityExist
              L6_3 = L8_2
              L5_3 = L5_3(L6_3)
              if L5_3 then
                break
              end
              L5_3 = Wait
              L6_3 = 25
              L5_3(L6_3)
            end
            L5_3 = SetEntityRotation
            L6_3 = L8_2
            L7_3 = L4_3
            L5_3(L6_3, L7_3)
            L5_3 = print
            L6_3 = "Le placche pronte sono finite."
            L5_3(L6_3)
            L5_3 = L0_3
            L5_3()
          else
            L3_3 = Entity
            L4_3 = L8_2
            L3_3 = L3_3(L4_3)
            L3_3 = L3_3.state
            L4_3 = L3_3
            L3_3 = L3_3.set
            L5_3 = "qtPlacche"
            L6_3 = L2_3 - 1
            L7_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3)
            L3_3 = print
            L4_3 = "Le placche pronte ora sono diminuite a "
            L5_3 = L2_3 - 1
            L4_3 = L4_3 .. L5_3
            L3_3(L4_3)
          end
          L3_3 = Entity
          L4_3 = A3_2
          L3_3 = L3_3(L4_3)
          L3_3 = L3_3.state
          L3_3 = L3_3.qtMixata
          if nil == L3_3 or L3_3 >= 10 then
            L4_3 = L0_3
            L4_3()
          end
          L4_3 = Entity
          L5_3 = A3_2
          L4_3 = L4_3(L5_3)
          L4_3 = L4_3.state
          L5_3 = L4_3
          L4_3 = L4_3.set
          L6_3 = "qtMixata"
          L7_3 = L3_3 + L1_3
          L8_3 = true
          L4_3(L5_3, L6_3, L7_3, L8_3)
          L4_3 = print
          L5_3 = "Contenitore con le pillole aggiornato "
          L6_3 = L3_3 + L1_3
          L5_3 = L5_3 .. L6_3
          L4_3(L5_3)
          L4_3 = L11_2
          L4_3 = L4_3 + L1_3
          L11_2 = L4_3
        end
      end
    end
  end
  L12_2(L13_2)
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "GestisciImbustamento"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L92_1
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = SetEntityDrawOutline
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityDrawOutlineColor
  L2_2 = 100
  L3_2 = 0
  L4_2 = 100
  L5_2 = 150
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = FreezeEntityPosition
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = faiAnimPool
  L2_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
  L3_2 = "load_and_tune_guilotine_v1_billcutter"
  L4_2 = -1
  L5_2 = 49
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Wait
  L2_2 = 150
  L1_2(L2_2)
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.accensione
  if nil == L1_2 then
    L1_2 = false
  end
  L2_2 = "OFF"
  if L1_2 then
    L2_2 = "ON"
  end
  while true do
    L3_2 = IsEntityPlayingAnim
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
    L6_2 = "load_and_tune_guilotine_v1_billcutter"
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = Entity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    L3_2 = L3_2.corrente
    if nil == L3_2 then
      L3_2 = 0
    end
    L4_2 = GetEntityCoords
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = "Stato: "
    L6_2 = L2_2
    L7_2 = "~n~Corrente: "
    L8_2 = L3_2
    L9_2 = "%"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L6_2 = Draw3D
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = L4_2.z
    L9_2 = L9_2 + 1.0
    L10_2 = L5_2
    L11_2 = 0.4
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    if not L1_2 then
      L6_2 = draw
      L7_2 = 38
      L8_2 = "Start packager"
      L9_2 = 45
      L10_2 = "Recharge battery"
      L11_2 = 73
      L12_2 = "Exit"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L6_2 = draw
      L7_2 = 38
      L8_2 = "Turn off"
      L9_2 = 45
      L10_2 = "Recharge battery"
      L11_2 = 73
      L12_2 = "Exit"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L6_2 = IsControlJustPressed
    L7_2 = 0
    L8_2 = 38
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = IsDisabledControlJustPressed
      L7_2 = 0
      L8_2 = 38
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_184
      end
    end
    if L3_2 > 0 then
      L6_2 = PlaySoundFrontend
      L7_2 = -1
      L8_2 = "ERROR"
      L9_2 = "HUD_AMMO_SHOP_SOUNDSET"
      L10_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = not L1_2
      L7_2 = false
      if true == L6_2 then
        L8_2 = ControlloOggettiImbustamento
        L9_2 = A0_2
        L8_2 = L8_2(L9_2)
        L7_2 = L8_2
      end
      L8_2 = Wait
      L9_2 = 25
      L8_2(L9_2)
      L8_2 = FreezeEntityPosition
      L9_2 = PlayerPedId
      L9_2 = L9_2()
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = SetEntityDrawOutline
      L9_2 = A0_2
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = ClearPedTasks
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2 = L9_2()
      L8_2(L9_2, L10_2, L11_2, L12_2)
      if not L7_2 then
        L8_2 = Entity
        L9_2 = A0_2
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2.state
        L9_2 = L8_2
        L8_2 = L8_2.set
        L10_2 = "accensione"
        L11_2 = L6_2
        L12_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2)
        if false == L6_2 then
          L8_2 = GestisciImbustamento
          L9_2 = A0_2
          L8_2(L9_2)
        end
      else
        L8_2 = MissPropMsg
        L8_2()
        L8_2 = faiAnimPool
        L9_2 = "gestures@f@standing@casual"
        L10_2 = "gesture_bring_it_on"
        L11_2 = 950
        L12_2 = 49
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      return
    else
      L6_2 = PlaySoundFrontend
      L7_2 = -1
      L8_2 = "Pin_Bad"
      L9_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
      L10_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = Wait
      L7_2 = 1000
      L6_2(L7_2)
    end
    ::lbl_184::
    L6_2 = IsControlJustPressed
    L7_2 = 0
    L8_2 = 45
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = IsDisabledControlJustPressed
      L7_2 = 0
      L8_2 = 45
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_241
      end
    end
    L6_2 = PlaySoundFrontend
    L7_2 = -1
    L8_2 = "Event_Start_Text"
    L9_2 = "GTAO_FM_Events_Soundset"
    L10_2 = 0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Entity
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.state
    L6_2 = L6_2.corrente
    if nil == L6_2 then
      L6_2 = 0
    end
    L7_2 = L6_2 + 25
    if L7_2 > 100 then
      L7_2 = 100
    end
    L8_2 = Entity
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.state
    L9_2 = L8_2
    L8_2 = L8_2.set
    L10_2 = "corrente"
    L11_2 = L7_2
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = FreezeEntityPosition
    L9_2 = PlayerPedId
    L9_2 = L9_2()
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityDrawOutline
    L9_2 = A0_2
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = ClearPedTasks
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2 = L9_2()
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = GestisciImbustamento
    L9_2 = A0_2
    L8_2(L9_2)
    do return end
    ::lbl_241::
  end
  L3_2 = FreezeEntityPosition
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityDrawOutline
  L4_2 = A0_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = ClearPedTasks
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "ControlloOggettiImbustamento"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = GetEntityCoords
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L10_2 = GetGamePool
  L11_2 = "CObject"
  L10_2 = L10_2(L11_2)
  L11_2 = ipairs
  L12_2 = L10_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = GetEntityCoords
    L18_2 = L16_2
    L17_2 = L17_2(L18_2)
    L17_2 = L17_2 - L9_2
    L17_2 = #L17_2
    L18_2 = 3.5
    if L17_2 < L18_2 then
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if 304964818 == L17_2 then
        L1_2 = L16_2
        L17_2 = print
        L18_2 = "Ho trovato un tavolo!"
        L17_2(L18_2)
        L5_2 = L5_2 + 1
      end
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if 628573572 == L17_2 then
        L2_2 = L16_2
        L17_2 = print
        L18_2 = "Ho trovato un contenitore pieno!"
        L17_2(L18_2)
        L6_2 = L6_2 + 1
      end
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if -1218018752 == L17_2 then
        L3_2 = L16_2
        L17_2 = print
        L18_2 = "Ho trovato bustine vuote!"
        L17_2(L18_2)
        L7_2 = L7_2 + 1
      end
      L17_2 = GetEntityModel
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if 92887898 == L17_2 then
        L4_2 = L16_2
        L17_2 = print
        L18_2 = "Ho trovato un imbustatrice!"
        L17_2(L18_2)
        L8_2 = L8_2 + 1
      end
    end
  end
  L11_2 = Wait
  L12_2 = 25
  L11_2(L12_2)
  if L5_2 > 1 or L6_2 > 1 or L7_2 > 1 or L8_2 > 1 then
    L11_2 = true
    return L11_2
  end
  if nil ~= L4_2 then
    L11_2 = GetEntityCoords
    L12_2 = L4_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2.z
    L12_2 = GetEntityCoords
    L13_2 = L1_2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2.z
    L12_2 = L12_2 + 0.8
    if L11_2 < L12_2 then
      L11_2 = true
      return L11_2
    end
  end
  if nil ~= L3_2 then
    L11_2 = GetEntityCoords
    L12_2 = L3_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2.z
    L12_2 = GetEntityCoords
    L13_2 = L1_2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2.z
    L12_2 = L12_2 + 0.8
    if L11_2 < L12_2 then
      L11_2 = true
      return L11_2
    end
  end
  if nil == L1_2 or nil == L3_2 or nil == L4_2 or nil == L2_2 then
    L11_2 = true
    return L11_2
  else
    L11_2 = IniziaImbustamentoMeth
    L12_2 = L1_2
    L13_2 = L2_2
    L14_2 = L3_2
    L15_2 = L4_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
    L11_2 = false
    return L11_2
  end
end
L128_1[L129_1] = L130_1
L128_1 = _ENV
L129_1 = "IniziaImbustamentoMeth"
function L130_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = false
  L5_2 = Entity
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L5_2 = L5_2.qtMixata
  if nil == L5_2 then
    L5_2 = 0
  end
  L6_2 = Entity
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.state
  L6_2 = L6_2.corrente
  if nil == L6_2 then
    L6_2 = 0
    L7_2 = Entity
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "corrente"
    L10_2 = 0
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L7_2 = Entity
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.state
  L7_2 = L7_2.qtMixata
  if nil == L7_2 then
    L7_2 = Entity
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "qtMixata"
    L10_2 = 0
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L7_2 = A2_2
  L8_2 = GetEntityCoords
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = StartProd
  L9_2()
  L9_2 = Wait
  L10_2 = 150
  L9_2(L10_2)
  L9_2 = 0
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L4_2
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        if not L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          if not L0_3 then
            goto lbl_23
          end
        end
      end
      L0_3 = print
      L1_3 = "Produzione fermata anche per il marker!"
      L0_3(L1_3)
      do return end
      ::lbl_23::
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      L1_3 = L8_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 1.2
      if L0_3 >= L1_3 then
        L0_3 = DrawMarker
        L1_3 = 0
        L2_3 = L8_2.x
        L3_3 = L8_2.y
        L4_3 = L8_2.z
        L4_3 = L4_3 + 0.5
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.13
        L12_3 = 0.13
        L13_3 = 0.2
        L14_3 = 255
        L15_3 = 255
        L16_3 = 255
        L17_3 = 150
        L18_3 = true
        L19_3 = false
        L20_3 = 0
        L21_3 = false
        L22_3 = nil
        L23_3 = nil
        L24_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      else
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L3_3 = "load_and_tune_guilotine_v1_billcutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = A3_2
          L0_3 = L0_3(L1_3)
          L1_3 = "Bustine meth completate: ~h~"
          L2_3 = L9_2
          L3_3 = "~h~~n~(Imbustate: ~h~"
          L4_3 = L9_2
          L4_3 = L4_3 * 100
          L5_3 = " pillole totali)"
          L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3
          L2_3 = Draw3D
          L3_3 = L0_3.x
          L4_3 = L0_3.y
          L5_3 = L0_3.z
          L5_3 = L5_3 + 0.3
          L6_3 = L1_3
          L7_3 = 0.4
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
        end
      end
    end
  end
  L10_2(L11_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = DoesEntityExist
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L4_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A2_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L4_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L4_2 = L0_3
      end
      L0_3 = DoesEntityExist
      L1_3 = L7_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = true
        L4_2 = L0_3
      end
      L0_3 = Entity
      L1_3 = A3_2
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.state
      L0_3 = L0_3.accensione
      if false == L0_3 then
        L0_3 = true
        L4_2 = L0_3
      end
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3 = GetEntityCoords
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      if L0_3 > 10.0 then
        L0_3 = true
        L4_2 = L0_3
        L0_3 = print
        L1_3 = "Produzione fermata per troppa distanza dal generatore."
        L0_3(L1_3)
      end
      L0_3 = L4_2
      if not L0_3 then
        L0_3 = IsPedFatallyInjured
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        if not L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          if not L0_3 then
            goto lbl_96
          end
        end
      end
      L0_3 = Entity
      L1_3 = A3_2
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.state
      L1_3 = L0_3
      L0_3 = L0_3.set
      L2_3 = "accensione"
      L3_3 = false
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = SetEntityDrawOutline
      L1_3 = L7_2
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = faiAnimPool
      L1_3 = "gestures@f@standing@casual"
      L2_3 = "gesture_bring_it_on"
      L3_3 = 1500
      L4_3 = 49
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = print
      L1_3 = "La produzione \195\168 stata fermata."
      L0_3(L1_3)
      do return end
      ::lbl_96::
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3 = L8_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 1.3
      if L0_3 < L1_3 then
        L0_3 = faiAnimPool
        L1_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L2_3 = "load_and_tune_guilotine_v1_billcutter"
        L3_3 = -1
        L4_3 = 49
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
        L3_3 = "load_and_tune_guilotine_v1_billcutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = L5_2
          if L0_3 >= 1 then
            L0_3 = L5_2
            L0_3 = L0_3 - 1
            L5_2 = L0_3
            L0_3 = Entity
            L1_3 = L7_2
            L0_3 = L0_3(L1_3)
            L0_3 = L0_3.state
            L1_3 = L0_3
            L0_3 = L0_3.set
            L2_3 = "qtplacche"
            L3_3 = L5_2
            L4_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = print
            L1_3 = "Placche piene aggiornate: "
            L2_3 = L5_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
          else
            L0_3 = print
            L1_3 = "Produzione fermata: Placche terminate."
            L0_3(L1_3)
            L0_3 = SetEntityAsMissionEntity
            L1_3 = L7_2
            L0_3(L1_3)
            L0_3 = DeleteEntity
            L1_3 = L7_2
            L0_3(L1_3)
            L0_3 = true
            L4_2 = L0_3
          end
          L0_3 = L6_2
          if L0_3 >= 1 then
            L0_3 = L6_2
            L0_3 = L0_3 - 0.1
            L6_2 = L0_3
            L0_3 = Entity
            L1_3 = A3_2
            L0_3 = L0_3(L1_3)
            L0_3 = L0_3.state
            L1_3 = L0_3
            L0_3 = L0_3.set
            L2_3 = "corrente"
            L3_3 = L6_2
            L4_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = print
            L1_3 = "Corrente generatore aggiornata: "
            L2_3 = L6_2
            L1_3 = L1_3 .. L2_3
            L0_3(L1_3)
          else
            L0_3 = print
            L1_3 = "Produzione fermata: Generatore scarico."
            L0_3(L1_3)
            L0_3 = true
            L4_2 = L0_3
          end
          L0_3 = L92_1
          L1_3 = PlayerPedId
          L1_3 = L1_3()
          L2_3 = GetEntityCoords
          L3_3 = A0_2
          L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L2_3(L3_3)
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          L0_3 = Wait
          L1_3 = 2500
          L0_3(L1_3)
          function L0_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
            L0_4 = GetClosestObjectOfType
            L1_4 = GetEntityCoords
            L2_4 = L7_2
            L1_4 = L1_4(L2_4)
            L2_4 = 1.3
            L3_4 = -1249316776
            L4_4 = 0
            L5_4 = 0
            L6_4 = 0
            L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4)
            if nil == L0_4 or 0 == L0_4 then
              L1_4 = GetEntityCoords
              L2_4 = L7_2
              L1_4 = L1_4(L2_4)
              L2_4 = GetEntityRotation
              L3_4 = L7_2
              L2_4 = L2_4(L3_4)
              L3_4 = CreateObject
              L4_4 = -1249316776
              L5_4 = L1_4.x
              L6_4 = L1_4.y
              L7_4 = L1_4.z
              L7_4 = L7_4 + 0.05
              L8_4 = true
              L9_4 = true
              L10_4 = false
              L3_4 = L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4)
              while true do
                L4_4 = DoesEntityExist
                L5_4 = L3_4
                L4_4 = L4_4(L5_4)
                if L4_4 then
                  break
                end
                L4_4 = Wait
                L5_4 = 25
                L4_4(L5_4)
              end
              L4_4 = SetEntityRotation
              L5_4 = L3_4
              L6_4 = L2_4
              L4_4(L5_4, L6_4)
              L4_4 = Entity
              L5_4 = L3_4
              L4_4 = L4_4(L5_4)
              L4_4 = L4_4.state
              L5_4 = L4_4
              L4_4 = L4_4.set
              L6_4 = "qtMeth"
              L7_4 = 1
              L8_4 = true
              L4_4(L5_4, L6_4, L7_4, L8_4)
            end
          end
          L1_3 = 1
          L2_3 = L0_3
          L2_3()
          L2_3 = Entity
          L3_3 = A1_2
          L2_3 = L2_3(L3_3)
          L2_3 = L2_3.state
          L2_3 = L2_3.qtMixata
          if L2_3 < 100 then
            L3_3 = NotEnoghEnt
            L3_3()
            if L2_3 <= 0 then
              L3_3 = GetEntityCoords
              L4_3 = A1_2
              L3_3 = L3_3(L4_3)
              L4_3 = GetEntityRotation
              L5_3 = A1_2
              L4_3 = L4_3(L5_3)
              L5_3 = SetEntityAsMissionEntity
              L6_3 = A1_2
              L5_3(L6_3)
              L5_3 = DeleteEntity
              L6_3 = A1_2
              L5_3(L6_3)
              L5_3 = CreateObject
              L6_3 = 1565769055
              L7_3 = L3_3.x
              L8_3 = L3_3.y
              L9_3 = L3_3.z
              L10_3 = true
              L11_3 = true
              L12_3 = false
              L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
              while true do
                L6_3 = DoesEntityExist
                L7_3 = L5_3
                L6_3 = L6_3(L7_3)
                if L6_3 then
                  break
                end
                L6_3 = Wait
                L7_3 = 25
                L6_3(L7_3)
              end
              L6_3 = SetEntityRotation
              L7_3 = L5_3
              L8_3 = L4_3
              L6_3(L7_3, L8_3)
            end
            L3_3 = true
            L4_2 = L3_3
          else
            L3_3 = Entity
            L4_3 = L7_2
            L3_3 = L3_3(L4_3)
            L3_3 = L3_3.state
            L3_3 = L3_3.qtBustine
            L4_3 = Entity
            L5_3 = L7_2
            L4_3 = L4_3(L5_3)
            L4_3 = L4_3.state
            L5_3 = L4_3
            L4_3 = L4_3.set
            L6_3 = "qtBustine"
            L7_3 = L3_3 - 1
            L8_3 = true
            L4_3(L5_3, L6_3, L7_3, L8_3)
            L4_3 = print
            L5_3 = "Le bustine vuote ora sono diminuite a "
            L6_3 = L3_3 - 1
            L5_3 = L5_3 .. L6_3
            L4_3(L5_3)
            L4_3 = L3_3 - 1
            if L4_3 <= 0 then
              L4_3 = print
              L5_3 = "Le bustine vuote sono sono finite."
              L4_3(L5_3)
              L4_3 = SetEntityAsMissionEntity
              L5_3 = L7_2
              L4_3(L5_3)
              L4_3 = DeleteEntity
              L5_3 = L7_2
              L4_3(L5_3)
              L4_3 = true
              L4_2 = L4_3
            end
            L4_3 = GetClosestObjectOfType
            L5_3 = GetEntityCoords
            L6_3 = L7_2
            L5_3 = L5_3(L6_3)
            L6_3 = 1.3
            L7_3 = -1249316776
            L8_3 = 0
            L9_3 = 0
            L10_3 = 0
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
            if nil ~= L4_3 or 0 ~= L4_3 then
              L5_3 = Entity
              L6_3 = L4_3
              L5_3 = L5_3(L6_3)
              L5_3 = L5_3.state
              L5_3 = L5_3.qtMeth
              if nil == L5_3 or 0 == L5_3 then
                L5_3 = 1
                L6_3 = Entity
                L7_3 = L4_3
                L6_3 = L6_3(L7_3)
                L6_3 = L6_3.state
                L7_3 = L6_3
                L6_3 = L6_3.set
                L8_3 = "qtMeth"
                L9_3 = L5_3
                L10_3 = true
                L6_3(L7_3, L8_3, L9_3, L10_3)
              end
              L6_3 = Entity
              L7_3 = L4_3
              L6_3 = L6_3(L7_3)
              L6_3 = L6_3.state
              L7_3 = L6_3
              L6_3 = L6_3.set
              L8_3 = "qtMeth"
              L9_3 = L5_3 + L1_3
              L10_3 = true
              L6_3(L7_3, L8_3, L9_3, L10_3)
              L6_3 = print
              L7_3 = "Buste con pillole aggiornate "
              L8_3 = L5_3 + L1_3
              L7_3 = L7_3 .. L8_3
              L6_3(L7_3)
              L6_3 = L9_2
              L6_3 = L6_3 + L1_3
              L9_2 = L6_3
              L6_3 = Entity
              L7_3 = A1_2
              L6_3 = L6_3(L7_3)
              L6_3 = L6_3.state
              L7_3 = L6_3
              L6_3 = L6_3.set
              L8_3 = "qtMixata"
              L9_3 = L2_3 - 100
              L10_3 = true
              L6_3(L7_3, L8_3, L9_3, L10_3)
              L6_3 = print
              L7_3 = "Contenitore pillole aggiornato "
              L8_3 = L2_3 - 100
              L7_3 = L7_3 .. L8_3
              L6_3(L7_3)
            end
          end
        end
      end
    end
  end
  L10_2(L11_2)
end
L128_1[L129_1] = L130_1
L128_1 = AddEventHandler
L129_1 = "onResourceStop"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = ipairs
    L2_2 = SpawnedPedProps
    L3_2 = ent
    L2_2 = L2_2[L3_2]
    if not L2_2 then
      L2_2 = {}
    end
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = SetEntityAsMissionEntity
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = DeleteEntity
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
    L1_2 = 1
    L2_2 = alberi
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = alberi
      L5_2 = L5_2[L4_2]
      if nil ~= L5_2 then
        L5_2 = alberi
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.brick
        if nil ~= L5_2 then
          L5_2 = alberi
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.brick
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
        L5_2 = alberi
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.brick2
        if nil ~= L5_2 then
          L5_2 = alberi
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.brick2
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
        L5_2 = alberi
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.bush
        if nil ~= L5_2 then
          L5_2 = alberi
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.bush
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
        L5_2 = alberi
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.tronco
        if nil ~= L5_2 then
          L5_2 = alberi
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.tronco
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
      end
    end
    L1_2 = 1
    L2_2 = ashtree
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = ashtree
      L5_2 = L5_2[L4_2]
      if nil ~= L5_2 then
        L5_2 = ashtree
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.tronco
        if nil ~= L5_2 then
          L5_2 = ashtree
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.tronco
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
      end
    end
    L1_2 = 1
    L2_2 = banano
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = banano
      L5_2 = L5_2[L4_2]
      if nil ~= L5_2 then
        L5_2 = banano
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.brick
        if nil ~= L5_2 then
          L5_2 = banano
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.brick
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
        L5_2 = banano
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.brick2
        if nil ~= L5_2 then
          L5_2 = banano
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.brick2
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
        L5_2 = banano
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.bush
        if nil ~= L5_2 then
          L5_2 = banano
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.bush
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
        L5_2 = banano
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.tronco
        if nil ~= L5_2 then
          L5_2 = banano
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.tronco
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2
          L6_2(L7_2)
        end
      end
    end
    L1_2 = fishEntity
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = fishEntity
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = fishEntity
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = fishEntity
        L1_2(L2_2)
        fishEntity = nil
      end
    end
    L1_2 = bombolaGasObj
    if nil ~= L1_2 then
      L1_2 = DetachEntity
      L2_2 = bombolaGasObj
      L1_2(L2_2)
      L1_2 = SetEntityAsMissionEntity
      L2_2 = bombolaGasObj
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = bombolaGasObj
      L1_2(L2_2)
      bombolaGasObj = nil
    end
    L1_2 = mascheraSUBObj
    if nil ~= L1_2 then
      L1_2 = DetachEntity
      L2_2 = mascheraSUBObj
      L1_2(L2_2)
      L1_2 = SetEntityAsMissionEntity
      L2_2 = mascheraSUBObj
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = mascheraSUBObj
      L1_2(L2_2)
      mascheraSUBObj = nil
    end
    L1_2 = DoesEntityExist
    L2_2 = PreviewObj
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = PreviewObj
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = PreviewObj
      L1_2(L2_2)
      PreviewObj = nil
    end
    L1_2 = DoesEntityExist
    L2_2 = lightProp
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = lightProp
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = lightProp
      L1_2(L2_2)
      lightProp = nil
    end
    L1_2 = pairs
    L2_2 = active
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.handle
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.handle
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = SetEntityAsMissionEntity
          L8_2 = L6_2.handle
          L7_2(L8_2)
          L7_2 = DeleteEntity
          L8_2 = L6_2.handle
          L7_2(L8_2)
        end
      end
      L7_2 = L6_2.child
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.child
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = SetEntityAsMissionEntity
          L8_2 = L6_2.child
          L7_2(L8_2)
          L7_2 = DeleteObject
          L8_2 = L6_2.child
          L7_2(L8_2)
        end
      end
    end
    L1_2 = {}
    active = L1_2
    L1_2 = {}
    byHandle = L1_2
    L1_2 = ResetEntityAlpha
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = ExecuteCommand
    L2_2 = "clearWaypoints"
    L1_2(L2_2)
  end
end
L128_1(L129_1, L130_1)
L128_1 = _ENV
L129_1 = "exports"
L128_1 = L128_1[L129_1]
L129_1 = "stoposizionando"
function L130_1()
  local L0_2, L1_2
  L0_2 = IsNuiFocused
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = cassaChePorto
    if nil == L0_2 then
      L0_2 = lastOutline
      if nil == L0_2 then
        L0_2 = outlineVeh
        if nil == L0_2 then
          L0_2 = fishEntity
          if nil == L0_2 then
            L0_2 = ghost
            if nil == L0_2 then
              L0_2 = ent
              if nil == L0_2 then
                L0_2 = he
                if nil == L0_2 then
                  goto lbl_29
                end
              end
            end
          end
        end
      end
    end
  end
  L0_2 = true
  do return L0_2 end
  goto lbl_31
  ::lbl_29::
  L0_2 = false
  do return L0_2 end
  ::lbl_31::
end
L128_1(L129_1, L130_1)
L128_1 = _ENV
L129_1 = "FindAttachedClampByEntity_Fish"
function L130_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 15.0
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = GetGamePool
  L4_2 = "CObject"
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = ipairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetEntityModel
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 == A0_2 then
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = GetEntityCoords
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      L11_2 = L11_2 - L12_2
      L11_2 = #L11_2
      L12_2 = tonumber
      L13_2 = L2_2
      L12_2 = L12_2(L13_2)
      if L11_2 < L12_2 then
        L11_2 = DoesEntityExist
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = SetEntityAsMissionEntity
          L12_2 = L10_2
          L11_2(L12_2)
          L11_2 = DeleteEntity
          L12_2 = L10_2
          L11_2(L12_2)
          L4_2 = L4_2 + 1
        end
      end
    end
  end
end
L128_1[L129_1] = L130_1
L128_1 = RegisterNetEvent
L129_1 = "FindAttachedClampByEntity_Fish"
L128_1(L129_1)
L128_1 = AddEventHandler
L129_1 = "FindAttachedClampByEntity_Fish"
function L130_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if nil ~= A0_2 then
    function L2_2(A0_3)
      local L1_3, L2_3
      L1_3 = type
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if "string" == L1_3 then
        L1_3 = GetHashKey
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        A0_3 = L1_3
      else
        L1_3 = tonumber
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        A0_3 = L1_3 or A0_3
        if not L1_3 then
          A0_3 = 0
        end
      end
      return A0_3
    end
    L3_2 = FindAttachedClampByEntity_Fish
    L4_2 = L2_2
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L128_1(L129_1, L130_1)
L128_1 = _ENV
L129_1 = "LoopDeleteMode"
function L130_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    while true do
      L1_3 = deleteMode
      if not L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = pairs
      L3_3 = active
      if not L3_3 then
        L3_3 = {}
      end
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.handle
        if L8_3 then
          L9_3 = DoesEntityExist
          L10_3 = L8_3
          L9_3 = L9_3(L10_3)
          if L9_3 then
            L9_3 = GetEntityCoords
            L10_3 = L8_3
            L9_3 = L9_3(L10_3)
            L10_3 = L1_3 - L9_3
            L10_3 = #L10_3
            if L10_3 <= 15.0 then
              L11_3 = DrawMarker
              L12_3 = 28
              L13_3 = L9_3.x
              L14_3 = L9_3.y
              L15_3 = L9_3.z
              L15_3 = L15_3 + 0.5
              L16_3 = 0.0
              L17_3 = 0.0
              L18_3 = 0.0
              L19_3 = 0.0
              L20_3 = 0.0
              L21_3 = 0.0
              L22_3 = 0.25
              L23_3 = 0.25
              L24_3 = 0.25
              L25_3 = 255
              L26_3 = 0
              L27_3 = 0
              L28_3 = 150
              L29_3 = false
              L30_3 = false
              L31_3 = 2
              L32_3 = false
              L33_3 = nil
              L34_3 = nil
              L35_3 = false
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
              L11_3 = DrawMarkerThroughWalls
              L12_3 = vector3
              L13_3 = L9_3.x
              L14_3 = L9_3.y
              L15_3 = L9_3.z
              L15_3 = L15_3 + 0.15
              L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L12_3(L13_3, L14_3, L15_3)
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L11_3 = L7_3.child
              if L11_3 then
                L11_3 = DoesEntityExist
                L12_3 = L7_3.child
                L11_3 = L11_3(L12_3)
                if L11_3 then
                  L11_3 = GetEntityCoords
                  L12_3 = L7_3.child
                  L11_3 = L11_3(L12_3)
                  L12_3 = DrawMarker
                  L13_3 = 28
                  L14_3 = L11_3.x
                  L15_3 = L11_3.y
                  L16_3 = L11_3.z
                  L16_3 = L16_3 + 0.5
                  L17_3 = 0.0
                  L18_3 = 0.0
                  L19_3 = 0.0
                  L20_3 = 0.0
                  L21_3 = 0.0
                  L22_3 = 0.0
                  L23_3 = 0.1
                  L24_3 = 0.1
                  L25_3 = 0.1
                  L26_3 = 0
                  L27_3 = 150
                  L28_3 = 255
                  L29_3 = 150
                  L30_3 = false
                  L31_3 = false
                  L32_3 = 2
                  L33_3 = false
                  L34_3 = nil
                  L35_3 = nil
                  L36_3 = false
                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
                end
              end
            end
          end
        end
      end
    end
  end
  L0_2(L1_2)
end
L128_1[L129_1] = L130_1
L128_1 = RegisterNetEvent
L129_1 = "bracierePos"
L128_1(L129_1)
L128_1 = AddEventHandler
L129_1 = "bracierePos"
function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = LoadParticleAsset
  L2_2 = "core"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = print
    L2_2 = "Error loading core particles."
    L1_2(L2_2)
  end
  L1_2 = myBraciere
  if nil ~= L1_2 then
    L1_2 = StopParticleFxLooped
    L2_2 = myBraciere
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.updateMyCoords
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  myBracierePos = A0_2
  L1_2 = UseParticleFxAssetNextCall
  L2_2 = "core"
  L1_2(L2_2)
  L1_2 = StartParticleFxLoopedAtCoord
  L2_2 = "ent_amb_torch_fire"
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L5_2 = L5_2 + 0.65
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 1.7
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  myBraciere = L1_2
  L1_2 = PlayEffect
  L2_2 = "scr_exile1"
  L3_2 = "scr_ex1_dust_impact"
  L4_2 = A0_2
  L5_2 = 0.5
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = makeEntityFacePos
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = ExecuteCommand
  L2_2 = "e falo"
  L1_2(L2_2)
end
L128_1(L129_1, L130_1)
function L128_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_12::
  L2_2 = NetworkGetEntityIsNetworked
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = NetworkHasControlOfEntity
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = GetGameTimer
      L2_2 = L2_2()
      L2_2 = L2_2 + 1000
      while true do
        L3_2 = NetworkHasControlOfEntity
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = GetGameTimer
        L3_2 = L3_2()
        if not (L2_2 > L3_2) then
          break
        end
        L3_2 = NetworkRequestControlOfEntity
        L4_2 = A0_2
        L3_2(L4_2)
        L3_2 = Wait
        L4_2 = 0
        L3_2(L4_2)
      end
    end
  end
  L2_2 = NetworkGetEntityIsNetworked
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = NetworkHasControlOfEntity
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = print
      L3_2 = "^1[WORLD CONTAINER] NO CONTROL FOR FREEZE^7"
      L2_2(L3_2)
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = FreezeEntityPosition
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = print
  L3_2 = "^3[WORLD CONTAINER FREEZE]^7"
  L4_2 = "ENTITY:"
  L5_2 = A0_2
  L6_2 = "CONTROL:"
  L7_2 = NetworkHasControlOfEntity
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = "FROZEN:"
  L9_2 = IsEntityPositionFrozen
  L10_2 = A0_2
  L9_2, L10_2 = L9_2(L10_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = IsEntityPositionFrozen
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 == A1_2
  return L2_2
end
L129_1 = RegisterNetEvent
L130_1 = "worldContainer:create"
function L131_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L8_2 = RequestModelStriano
  L9_2 = A1_2
  L8_2(L9_2)
  L8_2 = CreateObject
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  while true do
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  if L8_2 and 0 ~= L8_2 then
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_35
    end
  end
  L9_2 = print
  L10_2 = "^1[WORLD CONTAINER] Creazione client fallita^7"
  L9_2(L10_2)
  do return end
  ::lbl_35::
  L9_2 = SetEntityRotation
  L10_2 = L8_2
  L11_2 = A5_2 or L11_2
  if not A5_2 then
    L11_2 = 0.0
  end
  L12_2 = A6_2 or L12_2
  if not A6_2 then
    L12_2 = 0.0
  end
  L13_2 = A7_2 or L13_2
  if not A7_2 then
    L13_2 = 0.0
  end
  L14_2 = 2
  L15_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = SetEntityAsMissionEntity
  L10_2 = L8_2
  L11_2 = true
  L12_2 = true
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = SetEntityCollision
  L10_2 = L8_2
  L11_2 = true
  L12_2 = true
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = GetGameTimer
  L9_2 = L9_2()
  L9_2 = L9_2 + 2000
  while true do
    L10_2 = NetworkGetEntityIsNetworked
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      break
    end
    L10_2 = GetGameTimer
    L10_2 = L10_2()
    if not (L9_2 > L10_2) then
      break
    end
    L10_2 = Wait
    L11_2 = 0
    L10_2(L11_2)
  end
  L10_2 = NetworkGetEntityIsNetworked
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = print
    L11_2 = "^1[WORLD CONTAINER] Entity non networked^7"
    L10_2(L11_2)
    L10_2 = DeleteEntity
    L11_2 = L8_2
    L10_2(L11_2)
    return
  end
  L10_2 = NetworkGetNetworkIdFromEntity
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  if not L10_2 or 0 == L10_2 then
    L11_2 = print
    L12_2 = "^1[WORLD CONTAINER] NetID non valido^7"
    L11_2(L12_2)
    L11_2 = DeleteEntity
    L12_2 = L8_2
    L11_2(L12_2)
    return
  end
  L11_2 = SetNetworkIdCanMigrate
  L12_2 = L10_2
  L13_2 = true
  L11_2(L12_2, L13_2)
  L11_2 = SetNetworkIdExistsOnAllMachines
  L12_2 = L10_2
  L13_2 = true
  L11_2(L12_2, L13_2)
  L11_2 = L128_1
  L12_2 = L8_2
  L13_2 = true
  L11_2(L12_2, L13_2)
  L11_2 = testo3d
  L12_2 = "Refillable crate"
  L11_2(L12_2)
  L11_2 = SetModelAsNoLongerNeeded
  L12_2 = A1_2
  L11_2(L12_2)
  L11_2 = print
  L12_2 = "^2[WORLD CONTAINER CREATED]^7"
  L13_2 = "ID:"
  L14_2 = A0_2
  L15_2 = "ENTITY:"
  L16_2 = L8_2
  L17_2 = "NET:"
  L18_2 = L10_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = TriggerServerEvent
  L12_2 = "worldContainer:register"
  L13_2 = A0_2
  L14_2 = L10_2
  L11_2(L12_2, L13_2, L14_2)
end
L129_1(L130_1, L131_1)
L129_1 = RegisterCommand
L130_1 = "delworldcontainer"
function L131_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = fishEntity
  if L0_2 then
    L0_2 = fishEntity
    if 0 ~= L0_2 then
      L0_2 = DoesEntityExist
      L1_2 = fishEntity
      L0_2 = L0_2(L1_2)
      if L0_2 then
        goto lbl_16
      end
    end
  end
  L0_2 = print
  L1_2 = "^1[WORLD CONTAINER]^7 Devi avere una cassa in mano"
  L0_2(L1_2)
  do return end
  ::lbl_16::
  L0_2 = Entity
  L1_2 = fishEntity
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.state
  L0_2 = L0_2.worldContainer
  if true ~= L0_2 then
    L0_2 = print
    L1_2 = "^1[WORLD CONTAINER]^7 L'oggetto in mano non \195\168 una World Container"
    L0_2(L1_2)
    return
  end
  L0_2 = fishEntity
  L1_2 = Entity
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.worldContainerId
  if not L1_2 then
    L2_2 = print
    L3_2 = "^1[WORLD CONTAINER]^7 Container ID mancante"
    L2_2(L3_2)
    return
  end
  L2_2 = print
  L3_2 = "^3[WORLD CONTAINER DELETE]^7"
  L4_2 = "ID:"
  L5_2 = L1_2
  L6_2 = "ENTITY:"
  L7_2 = L0_2
  L8_2 = "CONTROL:"
  L9_2 = NetworkHasControlOfEntity
  L10_2 = L0_2
  L9_2, L10_2 = L9_2(L10_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 2000
  while true do
    L3_2 = DoesEntityExist
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = NetworkHasControlOfEntity
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = L0_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = print
  L4_2 = "^3[WORLD CONTAINER DELETE CONTROL]^7"
  L5_2 = NetworkHasControlOfEntity
  L6_2 = L0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = NetworkHasControlOfEntity
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = print
    L4_2 = "^1[WORLD CONTAINER]^7 Non ho ottenuto il controllo"
    L3_2(L4_2)
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "worldContainer:remove"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = exports
  L3_2 = L3_2.striano_editor
  L4_2 = L3_2
  L3_2 = L3_2.releaseProp
  L3_2(L4_2)
  L3_2 = DetachEntity
  L4_2 = L0_2
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityAsMissionEntity
  L4_2 = L0_2
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = DeleteEntity
  L4_2 = L0_2
  L3_2(L4_2)
  L3_2 = print
  L4_2 = "^2[WORLD CONTAINER DELETE RESULT]^7"
  L5_2 = "EXISTS:"
  L6_2 = DoesEntityExist
  L7_2 = L0_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = DoesEntityExist
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    fishEntity = nil
  end
end
L132_1 = false
L129_1(L130_1, L131_1, L132_1)
L129_1 = RegisterNetEvent
L130_1 = "worldContainer:deleteEntity"
function L131_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 or 0 == A0_2 then
    return
  end
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = NetworkGetEntityFromNetworkId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 1500
  while true do
    L3_2 = NetworkHasControlOfEntity
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = L1_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = NetworkHasControlOfEntity
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = print
    L4_2 = "^1[WORLD CONTAINER] Impossibile ottenere controllo per delete^7"
    L3_2(L4_2)
    return
  end
  L3_2 = SetEntityAsMissionEntity
  L4_2 = L1_2
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = DeleteEntity
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = fishEntity
  if L3_2 == L1_2 then
    fishEntity = nil
  end
  L3_2 = print
  L4_2 = "^2[WORLD CONTAINER CLIENT DELETE]^7"
  L5_2 = "NET:"
  L6_2 = A0_2
  L7_2 = "DELETED:"
  L8_2 = DoesEntityExist
  L9_2 = L1_2
  L8_2 = L8_2(L9_2)
  L8_2 = not L8_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L129_1(L130_1, L131_1)
L129_1 = RegisterCommand
L130_1 = "createYmap"
function L131_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L4_1
  L2_2 = #L2_2
  if 0 == L2_2 then
    L2_2 = print
    L3_2 = "^1[YMAP]^7 Nessun oggetto selezionato."
    L2_2(L3_2)
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "striano_editor:createYmap"
  L4_2 = A1_2[1]
  L5_2 = L4_1
  L2_2(L3_2, L4_2, L5_2)
end
L129_1(L130_1, L131_1)
L129_1 = RegisterNetEvent
L130_1 = "striano_editor:ymapResult"
function L131_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    L3_2 = print
    L4_2 = "^1[YMAP]^7 "
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L3_2 = {}
  L4_1 = L3_2
  L3_2 = print
  L4_2 = "^2[YMAP]^7 %d oggetti convertiti -> %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A2_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L129_1(L130_1, L131_1)
