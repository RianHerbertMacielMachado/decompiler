local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = BagsClient
if not L0_1 then
  L0_1 = {}
end
BagsClient = L0_1
L0_1 = AttachedBags
if not L0_1 then
  L0_1 = {}
end
AttachedBags = L0_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = #L0_2
    L7_2 = L7_2 + 1
    L8_2 = {}
    L8_2.id = L5_2
    L9_2 = L6_2.label
    L8_2.label = L9_2
    L0_2[L7_2] = L8_2
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "inv2d:secondaryButtons"
  L2_2.buttons = L0_2
  L1_2(L2_2)
end
RefreshSecondaryButtons = L1_1
L1_1 = {}
L1_1.bone = 24818
L2_1 = vec3
L3_1 = 0.1
L4_1 = 0.105
L5_1 = 0.0
L2_1 = L2_1(L3_1, L4_1, L5_1)
L1_1.pos = L2_1
L2_1 = vec3
L3_1 = -5.0
L4_1 = 91.000000000001
L5_1 = 180.0
L2_1 = L2_1(L3_1, L4_1, L5_1)
L1_1.rot = L2_1
L2_1 = {}
L3_1 = 0.09
L4_1 = -0.12
L5_1 = 0.0
L6_1 = -5.0
L7_1 = 91.000000000001
L8_1 = 357.0
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L1_1.front = L2_1
oldBagObj = nil
L2_1 = RegisterCommand
L3_1 = "openbag"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = nil
  L1_2 = nil
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = AttachedBags
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 then
      L9_2 = DoesEntityExist
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = tonumber
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L0_2 = L9_2
        L1_2 = L8_2
        break
      end
    end
  end
  if not L0_2 then
    L3_2 = ExecuteCommand
    L4_2 = "e shrug5"
    L3_2(L4_2)
    L3_2 = testo3d
    L4_2 = "No bag"
    L3_2(L4_2)
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "inv3d:server:setLastShared"
  L5_2 = "bag_"
  L6_2 = L0_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = openBagInventory
  L4_2 = L0_2
  L3_2(L4_2)
  if L1_2 then
    L3_2 = DoesEntityExist
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = faiAnim
      L4_2 = "anim@amb@business@cfid@cfid_photograph@"
      L5_2 = "base_photographer"
      L6_2 = -1
      L7_2 = 49
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = DetachEntity
      L4_2 = L1_2
      L3_2(L4_2)
      oldBagObj = L1_2
      L3_2 = AttachEntityToEntity
      L4_2 = L1_2
      L5_2 = L2_2
      L6_2 = GetPedBoneIndex
      L7_2 = L2_2
      L8_2 = 24818
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L1_1.front
      L7_2 = L7_2[1]
      L8_2 = L1_1.front
      L8_2 = L8_2[2]
      L9_2 = L1_1.front
      L9_2 = L9_2[3]
      L10_2 = L1_1.front
      L10_2 = L10_2[4]
      L11_2 = L1_1.front
      L11_2 = L11_2[5]
      L12_2 = L1_1.front
      L12_2 = L12_2[6]
      L13_2 = true
      L14_2 = true
      L15_2 = false
      L16_2 = true
      L17_2 = 1
      L18_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L3_2 = Wait
      L4_2 = 75
      L3_2(L4_2)
      L3_2 = CreateThread
      function L4_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
        while true do
          L0_3 = exports
          L0_3 = L0_3.striano_inventory
          L1_3 = L0_3
          L0_3 = L0_3.IsInventory2DOpen
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
        L0_3 = oldBagObj
        if L0_3 then
          L0_3 = DoesEntityExist
          L1_3 = oldBagObj
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = exports
            L0_3 = L0_3.striano_combat
            L1_3 = L0_3
            L0_3 = L0_3.submex
            L2_3 = " "
            L0_3(L1_3, L2_3)
            L0_3 = Wait
            L1_3 = 125
            L0_3(L1_3)
            L0_3 = faiAnim
            L1_3 = "anim@heists@ornate_bank@ig_4_grab_gold"
            L2_3 = "enter"
            L3_3 = 750
            L4_3 = 49
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = Wait
            L1_3 = 225
            L0_3(L1_3)
            L0_3 = PlaySoundFrontend
            L1_3 = -1
            L2_3 = "Grab_Parachute"
            L3_3 = "BASEJUMPS_SOUNDS"
            L4_3 = 1
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = AttachEntityToEntity
            L1_3 = oldBagObj
            L2_3 = L2_2
            L3_3 = GetPedBoneIndex
            L4_3 = L2_2
            L5_3 = L1_1.bone
            L3_3 = L3_3(L4_3, L5_3)
            L4_3 = L1_1.pos
            L4_3 = L4_3.x
            L5_3 = L1_1.pos
            L5_3 = L5_3.y
            L6_3 = L1_1.pos
            L6_3 = L6_3.z
            L7_3 = L1_1.rot
            L7_3 = L7_3.x
            L8_3 = L1_1.rot
            L8_3 = L8_3.y
            L9_3 = L1_1.rot
            L9_3 = L9_3.z
            L10_3 = true
            L11_3 = true
            L12_3 = false
            L13_3 = true
            L14_3 = 1
            L15_3 = true
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          end
        end
      end
      L3_2(L4_2)
    end
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = joaat
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
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
      L3_2 = nil
      return L3_2
    end
  end
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = A0_2
      L3_2 = true
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DeleteEntity
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = openInventory2D
  L2_2 = "bag_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = {}
  L3_2.title = "Bag"
  L3_2.columns = 7
  L3_2.rows = 4
  L1_2(L2_2, L3_2)
  L1_2 = SetTimeout
  L2_2 = 100
  function L3_2()
    local L0_3, L1_3
    L0_3 = RefreshSecondaryButtons
    L0_3()
  end
  L1_2(L2_2, L3_2)
end
openBagInventory = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or not A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = L2_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = AttachedBags
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = L3_1
    L5_2 = AttachedBags
    L5_2 = L5_2[A0_2]
    L4_2(L5_2)
    L4_2 = AttachedBags
    L4_2[A0_2] = nil
  end
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = CreateObject
  L6_2 = L3_2
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  while true do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = SetEntityAsMissionEntity
  L7_2 = L5_2
  L8_2 = true
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetEntityCollision
  L7_2 = L5_2
  L8_2 = false
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = FreezeEntityPosition
  L7_2 = L5_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = AttachEntityToEntity
  L7_2 = L5_2
  L8_2 = L2_2
  L9_2 = GetPedBoneIndex
  L10_2 = L2_2
  L11_2 = L1_1.bone
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L1_1.pos
  L10_2 = L10_2.x
  L11_2 = L1_1.pos
  L11_2 = L11_2.y
  L12_2 = L1_1.pos
  L12_2 = L12_2.z
  L13_2 = L1_1.rot
  L13_2 = L13_2.x
  L14_2 = L1_1.rot
  L14_2 = L14_2.y
  L15_2 = L1_1.rot
  L15_2 = L15_2.z
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L19_2 = true
  L20_2 = 1
  L21_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L6_2 = AttachedBags
  L6_2[A0_2] = L5_2
  L6_2 = SetModelAsNoLongerNeeded
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = true
  return L6_2
end
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = AttachedBags
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L3_1
    L2_2 = AttachedBags
    L2_2 = L2_2[A0_2]
    L1_2(L2_2)
    L1_2 = AttachedBags
    L1_2[A0_2] = nil
  end
end
removeAttachedBag = L5_1
L5_1 = RegisterNetEvent
L6_1 = "bags:client:fullSync"
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  BagsClient = L1_2
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "bags:client:updateBag"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = BagsClient
  L2_2[A0_2] = A1_2
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "bags:client:removeBag"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = removeAttachedBag
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = BagsClient
  L1_2[A0_2] = nil
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "bags:client:attachBag"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or not A1_2 then
    return
  end
  L2_2 = BagsClient
  L3_2 = BagsClient
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[A0_2] = L3_2
  L2_2 = BagsClient
  L2_2 = L2_2[A0_2]
  L2_2.id = A0_2
  L2_2 = BagsClient
  L2_2 = L2_2[A0_2]
  L2_2.model = A1_2
  L2_2 = BagsClient
  L2_2 = L2_2[A0_2]
  L2_2.owner = true
  L2_2 = BagsClient
  L2_2 = L2_2[A0_2]
  L2_2.poolId = nil
  L2_2 = BagsClient
  L2_2 = L2_2[A0_2]
  L2_2.coords = nil
  L2_2 = L4_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "bags:client:detachBag"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = removeAttachedBag
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = BagsClient
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = BagsClient
    L1_2 = L1_2[A0_2]
    L1_2.owner = nil
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "bags:client:openBagInventory"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = openBagInventory
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "bags:client:pickupBag"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "bags:server:pickupEmptyBag"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "bags:client:interactBag"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "bags:server:openBag"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "OpenBag"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = openBagInventory
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "AttachBag"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "RemoveAttachedBag"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = removeAttachedBag
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "GetBag"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = BagsClient
  L1_2 = L1_2[A0_2]
  return L1_2
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "GetAllBags"
function L7_1()
  local L0_2, L1_2
  L0_2 = BagsClient
  return L0_2
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "InteractBag"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "bags:server:openBag"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "PickupBag"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "bags:server:pickupEmptyBag"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "DropBag"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if not A0_2 then
    return
  end
  L3_2 = removeAttachedBag
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = TriggerServerEvent
  L4_2 = "bags:server:dropBagToWorld"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L7_2 = L7_2(L8_2)
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "onResourceStop"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = AttachedBags
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L3_1
    L8_2 = L6_2
    L7_2(L8_2)
  end
  L1_2 = {}
  AttachedBags = L1_2
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "onResourceStart"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = HasAnyBagAttached
  L1_2, L2_2, L3_2 = L1_2()
  if L1_2 then
    L4_2 = Wait
    L5_2 = 1000
    L4_2(L5_2)
    L4_2 = faiAnim
    L5_2 = "anim@heists@ornate_bank@ig_4_grab_gold"
    L6_2 = "enter"
    L7_2 = 750
    L8_2 = 49
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = Wait
    L5_2 = 225
    L4_2(L5_2)
    L4_2 = PlaySoundFrontend
    L5_2 = -1
    L6_2 = "Grab_Parachute"
    L7_2 = "BASEJUMPS_SOUNDS"
    L8_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = TriggerServerEvent
  L5_2 = "bags:server:requestSync"
  L4_2(L5_2)
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "hideBag"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = HasAnyBagAttached
  L0_2, L1_2, L2_2 = L0_2()
  if L0_2 then
    L3_2 = SetEntityAlpha
    L4_2 = L2_2
    L5_2 = 0
    L3_2(L4_2, L5_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "showBag"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = HasAnyBagAttached
  L0_2, L1_2, L2_2 = L0_2()
  if L0_2 then
    L3_2 = SetEntityAlpha
    L4_2 = L2_2
    L5_2 = 255
    L3_2(L4_2, L5_2)
  end
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = AttachedBags
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = true
        L7_2 = L4_2
        L8_2 = L5_2
        return L6_2, L7_2, L8_2
      end
    end
  end
  L0_2 = false
  return L0_2
end
HasAnyBagAttached = L5_1
L5_1 = exports
L6_1 = "AddSecondaryButton"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A0_2 and A1_2 then
    L3_2 = type
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if "function" == L3_2 then
      goto lbl_12
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_12::
  L3_2 = L0_1
  L4_2 = {}
  L4_2.label = A1_2
  L4_2.callback = A2_2
  L3_2[A0_2] = L4_2
  L3_2 = true
  return L3_2
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "RemoveSecondaryButton"
function L7_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "ClearSecondaryButtons"
function L7_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_1 = L0_2
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "inv2d:secondaryAction"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tostring
  L3_2 = A0_2.id
  if not L3_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  L4_2 = A0_2.invName
  if not L4_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  if L4_2 then
    L5_2 = type
    L6_2 = L4_2.callback
    L5_2 = L5_2(L6_2)
    if "function" == L5_2 then
      L5_2 = L4_2.callback
      L6_2 = L3_2
      L5_2(L6_2)
    end
  end
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = {}
L5_1.label = "Disassemble"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^bag_(%d+)$"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = IsInventoryEmpty
  L3_2 = "bag_"
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = ExecuteCommand
      L2_3 = "cinv"
      L1_3(L2_3)
      L1_3 = CreateThread
      function L2_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
        L0_4 = Wait
        L1_4 = 125
        L0_4(L1_4)
        L0_4 = removeAttachedBag
        L1_4 = L1_2
        L0_4(L1_4)
        L0_4 = TriggerServerEvent
        L1_4 = "bags:server:DeleteBag"
        L2_4 = L1_2
        L0_4(L1_4, L2_4)
        L0_4 = TriggerServerEvent
        L1_4 = "inv3d:giveItem"
        L2_4 = GetPlayerServerId
        L3_4 = PlayerId
        L3_4, L4_4, L5_4 = L3_4()
        L2_4 = L2_4(L3_4, L4_4, L5_4)
        L3_4 = "player"
        L4_4 = "empty_bag"
        L5_4 = 1
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
      end
      L1_3(L2_3)
    else
      L1_3 = ExecuteCommand
      L2_3 = "prova Not empty."
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L5_1.callback = L6_1
L0_1.bag_remove = L5_1
L5_1 = {}
L5_1.label = "Drop"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^bag_(%d+)$"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = AttachedBags
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L3_2 = ExecuteCommand
  L4_2 = "cinv"
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = Wait
    L1_3 = 125
    L0_3(L1_3)
    L0_3 = DetachEntity
    L1_3 = L2_2
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = TriggerEvent
    L1_3 = "StartEditorFromPool"
    L2_3 = L2_2
    L3_3 = GetEntityModel
    L4_3 = L2_2
    L3_3 = L3_3(L4_3)
    L4_3 = "bag"
    L5_3 = L1_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = TriggerServerEvent
    L1_3 = "bags:server:dropBagToWorld"
    L2_3 = L1_2
    L3_3 = GetEntityCoords
    L4_3 = L2_2
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = AttachedBags
    L1_3 = L1_2
    L0_3[L1_3] = nil
  end
  L3_2(L4_2)
end
L5_1.callback = L6_1
L0_1.bag_drop = L5_1
