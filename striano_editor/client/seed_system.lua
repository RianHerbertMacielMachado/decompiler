local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
ZoneScavate = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = HasNamedPtfxAssetLoaded
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = RequestNamedPtfxAsset
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L0_3 = RequestNamedPtfxAsset
    L1_3 = A0_2
    L0_3(L1_3)
    while true do
      L0_3 = HasNamedPtfxAssetLoaded
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = UseParticleFxAssetNextCall
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 10
    L0_3(L1_3)
    L0_3 = _ENV
    L1_3 = "StartNetworkedParticleFxNonLoopedOnPedBone"
    L0_3 = L0_3[L1_3]
    L1_3 = A1_2
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = 0.0
    L7_3 = 0.0
    L8_3 = 0.0
    L9_3 = A2_2
    L10_3 = A5_2
    if not L10_3 then
      L10_3 = 0.7
    end
    L11_3 = true
    L12_3 = true
    L13_3 = true
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    while true do
      L1_3 = IsEntityPlayingAnim
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = A3_2
      L4_3 = A4_2
      L5_3 = 3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = StopParticleFxLooped
    L2_3 = L0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = RemoveParticleFx
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L6_2(L7_2)
end
PlayEffectPickle = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = -1
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2 + 1.5
  L10_2 = L1_2
  L11_2 = L2_2
  L12_2 = L3_2 - 5.0
  L13_2 = L4_2
  L14_2 = -1
  L15_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if L6_2 then
    L10_2 = vector3
    L11_2 = L7_2.x
    L12_2 = L7_2.y
    L13_2 = L7_2.z
    L13_2 = L13_2 + 1.0
    return L10_2(L11_2, L12_2, L13_2)
  end
end
myGhost = nil
L1_1 = {}
PianteInAttesa = L1_1
L1_1 = false
L2_1 = nil
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PianteInAttesa
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = nil
    return L0_2
  end
  L0_2 = nil
  L1_2 = 2.5
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = 1
  L4_2 = PianteInAttesa
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = PianteInAttesa
    L7_2 = L7_2[L6_2]
    if L7_2 then
      L8_2 = nil
      L9_2 = L7_2.o
      if L9_2 then
        L9_2 = DoesEntityExist
        L10_2 = L7_2.o
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L8_2 = L7_2.o
      end
      else
        L9_2 = L7_2.netId
        if L9_2 then
          L9_2 = NetworkGetEntityFromNetworkId
          L10_2 = tonumber
          L11_2 = L7_2.netId
          L10_2, L11_2 = L10_2(L11_2)
          L9_2 = L9_2(L10_2, L11_2)
          L8_2 = L9_2
        end
      end
      if L8_2 and 0 ~= L8_2 then
        L9_2 = DoesEntityExist
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = GetEntityCoords
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          L10_2 = L9_2 - L2_2
          L10_2 = #L10_2
          if L1_2 >= L10_2 then
            L1_2 = L10_2
            L0_2 = L6_2
          end
        end
      end
    end
  end
  return L0_2
end
getClosestPianta = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = StartShapeTestRay
  L2_2 = L0_2
  L3_2 = vector3
  L4_2 = L0_2.x
  L5_2 = L0_2.y
  L6_2 = L0_2.z
  L6_2 = L6_2 - 2.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = 17
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = 7
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = GetShapeTestResultIncludingMaterial
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  if L3_2 then
    if -1833527165 == L6_2 or 1333033863 == L6_2 or -700658213 == L6_2 or 1109728704 == L6_2 or -642658848 == L6_2 or -1885547121 == L6_2 or -1942898710 == L6_2 or 951832588 == L6_2 or 510490462 == L6_2 or 1635937914 == L6_2 or -1286696947 == L6_2 then
      L8_2 = true
      return L8_2
    else
      L8_2 = false
      return L8_2
    end
  else
    L8_2 = false
    return L8_2
  end
  L8_2 = false
  return L8_2
end
L4_1 = RegisterCommand
L5_1 = "spawnmpped"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetEntityForwardVector
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L4_2 * 0.5
  L6_2 = L3_2 + L6_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = SpawnaUgoRandom
  L9_2 = vector3
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = L7_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 1
  L12_2 = 359
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L8_2(L9_2, L10_2, L11_2, L12_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterCommand
L5_1 = "spawnmpped2"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = LocalPlayer
  L3_2 = L3_2.state
  L3_2 = L3_2.adminLevel
  if not L3_2 then
    L3_2 = 0
  end
  if 0 == L3_2 then
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = GetEntityForwardVector
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = table
  L6_2 = L6_2.unpack
  L7_2 = L5_2 * 0.5
  L7_2 = L4_2 + L7_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L9_2 = SpawnaUgoRandom2
  L10_2 = vector3
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L8_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = math
  L11_2 = L11_2.random
  L12_2 = 1
  L13_2 = 359
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2)
end
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = "mp_m_freemode_01"
  L3_2 = RequestModelStriano
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreatePed
  L4_2 = 26
  L5_2 = L2_2
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L9_2 = A1_2
  L10_2 = true
  L11_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = SetEntityLodDist
  L5_2 = L3_2
  L6_2 = 65535
  L4_2(L5_2, L6_2)
  L4_2 = SetPedDefaultComponentVariation
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.ottieniSkinRandom
  L6_2 = true
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = exports
  L5_2 = L5_2.skinchanger
  L6_2 = L5_2
  L5_2 = L5_2.applicaUnaSkin
  L7_2 = json
  L7_2 = L7_2.decode
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L3_2
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
  L6_2 = 0
  while true do
    L7_2 = PedToNet
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if 0 ~= L7_2 then
      L7_2 = PedToNet
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if not (nil == L7_2 and L6_2 < 100) then
        break
      end
    end
    L6_2 = L6_2 + 1
    L7_2 = Wait
    L8_2 = 25
    L7_2(L8_2)
  end
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = TriggerServerEvent
    L1_3 = "AggiornaPedCopia"
    L2_3 = json
    L2_3 = L2_3.decode
    L3_3 = L4_2
    L2_3 = L2_3(L3_3)
    L3_3 = PedToNet
    L4_3 = L3_2
    L3_3 = L3_3(L4_3)
    L4_3 = GetPlayerServerId
    L5_3 = PlayerId
    L5_3 = L5_3()
    L4_3, L5_3 = L4_3(L5_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L7_2(L8_2)
  L7_2 = IsPedAPlayer
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = DoesEntityExist
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      return L3_2
    end
  end
end
SpawnaUgoRandom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = "mp_m_freemode_01"
  L3_2 = RequestModelStriano
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreatePed
  L4_2 = 26
  L5_2 = L2_2
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L9_2 = A1_2
  L10_2 = true
  L11_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = SetEntityLodDist
  L5_2 = L3_2
  L6_2 = 65535
  L4_2(L5_2, L6_2)
  L4_2 = SetPedDefaultComponentVariation
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.ottieniSkinRandomNudo
  L6_2 = true
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = exports
  L5_2 = L5_2.skinchanger
  L6_2 = L5_2
  L5_2 = L5_2.applicaUnaSkin
  L7_2 = json
  L7_2 = L7_2.decode
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L3_2
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
  L6_2 = 0
  while true do
    L7_2 = PedToNet
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if 0 ~= L7_2 then
      L7_2 = PedToNet
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if not (nil == L7_2 and L6_2 < 100) then
        break
      end
    end
    L6_2 = L6_2 + 1
    L7_2 = Wait
    L8_2 = 25
    L7_2(L8_2)
  end
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = TriggerServerEvent
    L1_3 = "AggiornaPedCopia"
    L2_3 = json
    L2_3 = L2_3.decode
    L3_3 = L4_2
    L2_3 = L2_3(L3_3)
    L3_3 = PedToNet
    L4_3 = L3_2
    L3_3 = L3_3(L4_3)
    L4_3 = GetPlayerServerId
    L5_3 = PlayerId
    L5_3 = L5_3()
    L4_3, L5_3 = L4_3(L5_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L7_2(L8_2)
  L7_2 = IsPedAPlayer
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = DoesEntityExist
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      return L3_2
    end
  end
end
SpawnaUgoRandom2 = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = true
  if nil ~= A2_2 then
    L3_2 = A2_2
  end
  L4_2 = "mp_m_freemode_01"
  L5_2 = RequestModelStriano
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = CreatePed
  L6_2 = 26
  L7_2 = L4_2
  L8_2 = A0_2.x
  L9_2 = A0_2.y
  L10_2 = A0_2.z
  L11_2 = A1_2
  L12_2 = L3_2
  L13_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = SetEntityLodDist
  L7_2 = L5_2
  L8_2 = 65535
  L6_2(L7_2, L8_2)
  L6_2 = SetPedDefaultComponentVariation
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = SetModelAsNoLongerNeeded
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_core
  L7_2 = L6_2
  L6_2 = L6_2.ottieniSkinRandomNudoBlack
  L8_2 = true
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = exports
  L7_2 = L7_2.skinchanger
  L8_2 = L7_2
  L7_2 = L7_2.applicaUnaSkin
  L9_2 = json
  L9_2 = L9_2.decode
  L10_2 = L6_2
  L9_2 = L9_2(L10_2)
  L10_2 = L5_2
  L7_2(L8_2, L9_2, L10_2)
  if L3_2 then
    L7_2 = L5_2
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
    L8_2 = 0
    while true do
      L9_2 = PedToNet
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if 0 ~= L9_2 then
        L9_2 = PedToNet
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if not (nil == L9_2 and L8_2 < 100) then
          break
        end
      end
      L8_2 = L8_2 + 1
      L9_2 = Wait
      L10_2 = 25
      L9_2(L10_2)
    end
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = TriggerServerEvent
      L1_3 = "AggiornaPedCopia"
      L2_3 = json
      L2_3 = L2_3.decode
      L3_3 = L6_2
      L2_3 = L2_3(L3_3)
      L3_3 = PedToNet
      L4_3 = L5_2
      L3_3 = L3_3(L4_3)
      L4_3 = GetPlayerServerId
      L5_3 = PlayerId
      L5_3 = L5_3()
      L4_3, L5_3 = L4_3(L5_3)
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    end
    L9_2(L10_2)
  end
  L7_2 = IsPedAPlayer
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      return L5_2
    end
  end
end
SpawnaUgoRandom3 = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = true
  if nil ~= A3_2 then
    L4_2 = A3_2
  end
  L5_2 = "mp_m_freemode_01"
  L6_2 = RequestModelStriano
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = CreatePed
  L7_2 = 26
  L8_2 = L5_2
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = A0_2.z
  L12_2 = A1_2
  L13_2 = A3_2
  L14_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = SetEntityLodDist
  L8_2 = L6_2
  L9_2 = 65535
  L7_2(L8_2, L9_2)
  L7_2 = SetPedDefaultComponentVariation
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = SetModelAsNoLongerNeeded
  L8_2 = L5_2
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_core
  L8_2 = L7_2
  L7_2 = L7_2.ottieniSkinStile
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = exports
  L8_2 = L8_2.skinchanger
  L9_2 = L8_2
  L8_2 = L8_2.applicaUnaSkin
  L10_2 = json
  L10_2 = L10_2.decode
  L11_2 = L7_2
  L10_2 = L10_2(L11_2)
  L11_2 = L6_2
  L8_2(L9_2, L10_2, L11_2)
  if L4_2 then
    L8_2 = L6_2
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
    L9_2 = 0
    while true do
      L10_2 = PedToNet
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if 0 ~= L10_2 then
        L10_2 = PedToNet
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if not (nil == L10_2 and L9_2 < 100) then
          break
        end
      end
      L9_2 = L9_2 + 1
      L10_2 = Wait
      L11_2 = 25
      L10_2(L11_2)
    end
    L10_2 = CreateThread
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = TriggerServerEvent
      L1_3 = "AggiornaPedCopia"
      L2_3 = json
      L2_3 = L2_3.decode
      L3_3 = L7_2
      L2_3 = L2_3(L3_3)
      L3_3 = PedToNet
      L4_3 = L6_2
      L3_3 = L3_3(L4_3)
      L4_3 = GetPlayerServerId
      L5_3 = PlayerId
      L5_3 = L5_3()
      L4_3, L5_3 = L4_3(L5_3)
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    end
    L10_2(L11_2)
  end
  L8_2 = IsPedAPlayer
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = DoesEntityExist
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      return L6_2
    end
  end
end
SpawnaUgoVestiti = L4_1
L4_1 = exports
L5_1 = "spawnPedRandom"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SpawnaUgoRandom
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "spawnPedRandom2"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SpawnaUgoRandom2
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "spawnPedRandom3"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = SpawnaUgoRandom3
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "spawnPedVestiti"
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = SpawnaUgoVestiti
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "spawnaBogdan"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "spawnaBogdan"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submexInfo
  L4_2 = "Tra 9 secondi il ped viene spawnato in questa posizione."
  L2_2(L3_2, L4_2)
  L2_2 = Wait
  L3_2 = 9000
  L2_2(L3_2)
  L2_2 = TriggerEvent
  L3_2 = "spawnBogdan"
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L6_2 = L6_2 - 1.0
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "spawnBogdan"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "spawnBogdan"
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = 1
  if nil ~= A3_2 then
    L4_2 = A3_2
  end
  L5_2 = 1
  L6_2 = L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = SpawnaUgoRandom
    L10_2 = vector3
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = A2_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = math
    L11_2 = L11_2.random
    L12_2 = 1
    L13_2 = 360
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2, L13_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L10_2 = IsPedAPlayer
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = {}
      L11_2 = "weapon_compactrifle"
      L12_2 = "weapon_gusenberg"
      L13_2 = "weapon_musket"
      L14_2 = "weapon_vintagepistol"
      L15_2 = "weapon_snspistol"
      L16_2 = "weapon_combatpistol"
      L17_2 = "weapon_revolver"
      L18_2 = "weapon_pumpshotgun"
      L10_2[1] = L11_2
      L10_2[2] = L12_2
      L10_2[3] = L13_2
      L10_2[4] = L14_2
      L10_2[5] = L15_2
      L10_2[6] = L16_2
      L10_2[7] = L17_2
      L10_2[8] = L18_2
      L11_2 = GetHashKey
      L12_2 = math
      L12_2 = L12_2.random
      L13_2 = 1
      L14_2 = #L10_2
      L12_2 = L12_2(L13_2, L14_2)
      L12_2 = L10_2[L12_2]
      L11_2 = L11_2(L12_2)
      L12_2 = GiveWeaponToPed
      L13_2 = L9_2
      L14_2 = L11_2
      L15_2 = 100
      L16_2 = false
      L17_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = Wait
      L13_2 = 25
      L12_2(L13_2)
      L12_2 = SetCurrentPedWeapon
      L13_2 = L9_2
      L14_2 = L11_2
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = TaskWanderStandard
      L13_2 = L9_2
      L14_2 = 10.0
      L15_2 = 10
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetPedCombatAttributes
      L13_2 = L9_2
      L14_2 = 0
      L15_2 = 1
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetPedCombatAttributes
      L13_2 = L9_2
      L14_2 = 43
      L15_2 = 1
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetPedCombatAttributes
      L13_2 = L9_2
      L14_2 = 46
      L15_2 = 1
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetPedCombatAttributes
      L13_2 = L9_2
      L14_2 = 50
      L15_2 = 1
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetPedSeeingRange
      L13_2 = L9_2
      L14_2 = 50.0
      L12_2(L13_2, L14_2)
      L12_2 = SetPedHearingRange
      L13_2 = L9_2
      L14_2 = 50.0
      L12_2(L13_2, L14_2)
      L12_2 = SetPedFleeAttributes
      L13_2 = L9_2
      L14_2 = 0
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetPedCombatRange
      L13_2 = L9_2
      L14_2 = math
      L14_2 = L14_2.random
      L15_2 = 0
      L16_2 = 3
      L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2, L16_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L12_2 = SetPedArmour
      L13_2 = L9_2
      L14_2 = 100
      L12_2(L13_2, L14_2)
      L12_2 = SetPedAccuracy
      L13_2 = L9_2
      L14_2 = 50
      L12_2(L13_2, L14_2)
      L12_2 = SetPedHasAiBlip
      L13_2 = L9_2
      L14_2 = true
      L12_2(L13_2, L14_2)
      L12_2 = SetPedAsEnemy
      L13_2 = L9_2
      L14_2 = true
      L12_2(L13_2, L14_2)
      L12_2 = TaskCombatPed
      L13_2 = L9_2
      L14_2 = ped
      L15_2 = 0
      L16_2 = 16
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L12_2 = SetPedKeepTask
      L13_2 = L9_2
      L14_2 = true
      L12_2(L13_2, L14_2)
      L12_2 = SetPedDropsWeaponsWhenDead
      L13_2 = L9_2
      L14_2 = false
      L12_2(L13_2, L14_2)
      L12_2 = SetPedRelationshipGroupHash
      L13_2 = L9_2
      L14_2 = GetHashKey
      L15_2 = "AGGRESSIVE"
      L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L12_2 = {}
      L12_2.p = L9_2
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = enemys
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = false
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetNightvision
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetSeethrough
  L1_2 = false
  L0_2(L1_2)
  L0_2 = DisplayRadar
  L1_2 = false
  L0_2(L1_2)
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 0
  L2_2 = 13
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = GetResourceKvpInt
  L2_2 = "ParaSalvato"
  L1_2 = L1_2(L2_2)
  if L1_2 > 0 then
    L1_2 = GetResourceKvpInt
    L2_2 = "ParaSalvato"
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2
    L1_2 = print
    L2_2 = "Parachute loaded: "
    L3_2 = L0_2
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = SetPlayerParachuteTintIndex
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetPlayerReserveParachuteTintIndex
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
InitZombie = L5_1
L5_1 = RegisterCommand
L6_1 = "interior"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "Interior: "
  L3_2 = GetInteriorFromEntity
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = "menupara"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ExecuteCommand
  L4_2 = "cinv"
  L3_2(L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.clearMenu
  L3_2(L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = "DISASSEMBLE PARACHUTE"
  function L6_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "smontapara"
    L0_3(L1_3)
  end
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = "CHECK PARACHUTE"
  function L6_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "checkpara"
    L0_3(L1_3)
  end
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = "PARACHUTE COLOR"
  function L6_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "para"
    L0_3(L1_3)
  end
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.openMenu
  L3_2(L4_2)
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "cmdParaMenu"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = ExecuteCommand
  L2_2 = A0_2[1]
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = "checkpara"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GetPedParachuteState
  L4_2 = PlayerPedId
  L4_2, L5_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 > -1 then
  else
    L3_2 = exports
    L3_2 = L3_2.striano_inventory
    L4_2 = L3_2
    L3_2 = L3_2.hoparacadute
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexInfo
      L5_2 = "You have a parachute equipped."
      L3_2(L4_2, L5_2)
    else
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "You dont have a parachute equipped."
      L3_2(L4_2, L5_2)
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "UsaParacadute"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "UsaParacadute"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetPedParachuteState
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 > -1 then
  else
    L1_2 = exports
    L1_2 = L1_2.striano_inventory
    L2_2 = L1_2
    L1_2 = L1_2.hoparacadute
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = SetCurrentPedWeapon
      L2_2 = L0_2
      L3_2 = -1569615261
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = GiveWeaponToPed
      L2_2 = L0_2
      L3_2 = -72657034
      L4_2 = 1
      L5_2 = false
      L6_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.testo3d
      L3_2 = "Parachute equipped."
      L1_2(L2_2, L3_2)
      L1_2 = ExecuteCommand
      L2_2 = "e indossa"
      L1_2(L2_2)
    else
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.testo3d
      L3_2 = "Parachute equipped."
      L1_2(L2_2, L3_2)
      L1_2 = ExecuteCommand
      L2_2 = "e posatasca"
      L1_2(L2_2)
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = "paracadute"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = ExecuteCommand
  L4_2 = "para"
  L3_2(L4_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = "para"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    L2_2 = GetResourceState
    L3_2 = "striano_fastmenu"
    L2_2 = L2_2(L3_2)
    if "started" == L2_2 then
      L2_2 = exports
      L2_2 = L2_2.striano_fastmenu
      L3_2 = L2_2
      L2_2 = L2_2.clearMenu
      L2_2(L3_2)
      L2_2 = {}
      L3_2 = {}
      L4_2 = "\240\159\140\136 Arcobaleno"
      L5_2 = 0
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L4_2 = {}
      L5_2 = "\240\159\148\180 Red"
      L6_2 = 1
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L5_2 = {}
      L6_2 = "\240\159\140\138 Sea"
      L7_2 = 2
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L6_2 = {}
      L7_2 = "\240\159\144\141 Snake"
      L8_2 = 3
      L6_2[1] = L7_2
      L6_2[2] = L8_2
      L7_2 = {}
      L8_2 = "\240\159\135\186\240\159\135\184 Patriot"
      L9_2 = 4
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L8_2 = {}
      L9_2 = "\240\159\148\181 Blu"
      L10_2 = 5
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L9_2 = {}
      L10_2 = "\240\159\144\157 Bee"
      L11_2 = 7
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L10_2 = {}
      L11_2 = "\226\156\136\239\184\143 AirForce"
      L12_2 = 8
      L10_2[1] = L11_2
      L10_2[2] = L12_2
      L11_2 = {}
      L12_2 = "\240\159\143\156\239\184\143 Desert"
      L13_2 = 9
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L12_2 = {}
      L13_2 = "\240\159\140\145 Shadow"
      L14_2 = 10
      L12_2[1] = L13_2
      L12_2[2] = L14_2
      L13_2 = {}
      L14_2 = "\240\159\145\145 Highest"
      L15_2 = 11
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L14_2 = {}
      L15_2 = "\226\152\129\239\184\143 Air"
      L16_2 = 12
      L14_2[1] = L15_2
      L14_2[2] = L16_2
      L15_2 = {}
      L16_2 = "\240\159\140\135 Sunset"
      L17_2 = 13
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L2_2[4] = L6_2
      L2_2[5] = L7_2
      L2_2[6] = L8_2
      L2_2[7] = L9_2
      L2_2[8] = L10_2
      L2_2[9] = L11_2
      L2_2[10] = L12_2
      L2_2[11] = L13_2
      L2_2[12] = L14_2
      L2_2[13] = L15_2
      L3_2 = exports
      L3_2 = L3_2.striano_fastmenu
      L4_2 = L3_2
      L3_2 = L3_2.addMenuItem
      L5_2 = "\240\159\142\168 CHANGE PARACHUTE COLOR"
      function L6_2()
        local L0_3, L1_3
      end
      L7_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = ipairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2[1]
        L10_2 = L8_2[2]
        L11_2 = exports
        L11_2 = L11_2.striano_fastmenu
        L12_2 = L11_2
        L11_2 = L11_2.addMenuItem
        L13_2 = L9_2
        function L14_2()
          local L0_3, L1_3, L2_3
          L0_3 = SetPlayerParachuteTintIndex
          L1_3 = PlayerId
          L1_3 = L1_3()
          L2_3 = L10_2
          L0_3(L1_3, L2_3)
          L0_3 = SetPlayerReserveParachuteTintIndex
          L1_3 = PlayerId
          L1_3 = L1_3()
          L2_3 = L10_2
          L0_3(L1_3, L2_3)
          L0_3 = SetResourceKvpInt
          L1_3 = "ParaSalvato"
          L2_3 = L10_2
          L0_3(L1_3, L2_3)
          L0_3 = GetResourceState
          L1_3 = "striano_combat"
          L0_3 = L0_3(L1_3)
          if "started" == L0_3 then
            L0_3 = exports
            L0_3 = L0_3.striano_combat
            L1_3 = L0_3
            L0_3 = L0_3.submexError
            L2_3 = "Parachute color selected."
            L0_3(L1_3, L2_3)
          end
        end
        L15_2 = true
        L11_2(L12_2, L13_2, L14_2, L15_2)
      end
      L3_2 = exports
      L3_2 = L3_2.striano_fastmenu
      L4_2 = L3_2
      L3_2 = L3_2.openMenu
      L3_2(L4_2)
    end
  else
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    if not L2_2 or L2_2 < 0 or L2_2 > 13 then
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "Insert an ID between 0 & 13."
      L3_2(L4_2, L5_2)
      return
    end
    L3_2 = SetPlayerParachuteTintIndex
    L4_2 = PlayerId
    L4_2 = L4_2()
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = SetPlayerReserveParachuteTintIndex
    L4_2 = PlayerId
    L4_2 = L4_2()
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = SetResourceKvpInt
    L4_2 = "ParaSalvato"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Parachute color selected."
    L3_2(L4_2, L5_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = InitZombie
  L0_2()
end
L5_1(L6_1)
L5_1 = RegisterNetEvent
L6_1 = "UsaAcquaSemi"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "UsaAcquaSemi"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = getClosestPianta
  L0_2 = L0_2()
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Wait
  L3_2 = 25
  L2_2(L3_2)
  if nil ~= L0_2 then
    L2_2 = makeEntityFaceEntity
    L3_2 = L1_2
    L4_2 = PianteInAttesa
    L4_2 = L4_2[L0_2]
    L4_2 = L4_2.o
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "e versaacqua"
    L2_2(L3_2)
    L2_2 = PlayEffectPickle
    L3_2 = "core"
    L4_2 = "ent_sht_paint_cans"
    L5_2 = 64113
    L6_2 = "missarmenian3_gardener"
    L7_2 = "blower_idle_a"
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = Wait
    L3_2 = 3000
    L2_2(L3_2)
    L2_2 = IsEntityPlayingAnim
    L3_2 = L1_2
    L4_2 = "missarmenian3_gardener"
    L5_2 = "blower_idle_a"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L2_2 = PianteInAttesa
      L2_2 = L2_2[L0_2]
      L3_2 = PianteInAttesa
      L3_2 = L3_2[L0_2]
      L3_2 = L3_2.acqua
      L3_2 = L3_2 + 1
      L2_2.acqua = L3_2
      L2_2 = ExecuteCommand
      L3_2 = "e puliscimani"
      L2_2(L3_2)
      L2_2 = TriggerServerEvent
      L3_2 = "inv3d:giveItem"
      L4_2 = GetPlayerServerId
      L5_2 = PlayerId
      L5_2, L6_2, L7_2, L8_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = "player"
      L6_2 = "plastic"
      L7_2 = 1
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    else
      L2_2 = math
      L2_2 = L2_2.random
      L3_2 = 1
      L4_2 = 2
      L2_2 = L2_2(L3_2, L4_2)
      if 1 == L2_2 then
        L3_2 = TriggerServerEvent
        L4_2 = "inv3d:giveItem"
        L5_2 = GetPlayerServerId
        L6_2 = PlayerId
        L6_2, L7_2, L8_2 = L6_2()
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L6_2 = "player"
        L7_2 = "waterdirty"
        L8_2 = 1
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      end
      L3_2 = ExecuteCommand
      L4_2 = "e c"
      L3_2(L4_2)
      L3_2 = ExecuteCommand
      L4_2 = "e shrug5"
      L3_2(L4_2)
    end
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.testo3d
    L4_2 = "No plant nearly."
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "e shrug5"
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 1000
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "inv3d:giveItem"
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2, L7_2, L8_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = "player"
    L6_2 = "waterdirty"
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "UsaFertilizzante"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "UsaFertilizzante"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = getClosestPianta
  L1_2 = L1_2()
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  if nil ~= L1_2 then
    L3_2 = makeEntityFaceEntity
    L4_2 = L2_2
    L5_2 = PianteInAttesa
    L5_2 = L5_2[L1_2]
    L5_2 = L5_2.o
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "e usafertilizzante"
    L3_2(L4_2)
    L3_2 = PlayEffectPickle
    L4_2 = "core"
    L5_2 = "ent_sht_paint_cans"
    L6_2 = 26614
    L7_2 = "missfbi3_waterboard"
    L8_2 = "waterboard_loop_player"
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = Wait
    L4_2 = 3000
    L3_2(L4_2)
    L3_2 = IsEntityPlayingAnim
    L4_2 = L2_2
    L5_2 = "missarmenian3_gardener"
    L6_2 = "blower_idle_a"
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = IsEntityPlayingAnim
      L4_2 = L2_2
      L5_2 = "missfbi3_waterboard"
      L6_2 = "waterboard_loop_player"
      L7_2 = 3
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if not L3_2 then
        goto lbl_57
      end
    end
    L3_2 = PianteInAttesa
    L3_2 = L3_2[L1_2]
    L4_2 = PianteInAttesa
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2.fertilizzante
    L4_2 = L4_2 + 1
    L3_2.fertilizzante = L4_2
    L3_2 = ExecuteCommand
    L4_2 = "e puliscimani"
    L3_2(L4_2)
    goto lbl_92
    ::lbl_57::
    L3_2 = TriggerServerEvent
    L4_2 = "inv3d:giveItem"
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2, L7_2, L8_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = "player"
    L7_2 = "fert"
    L8_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = ExecuteCommand
    L4_2 = "e c"
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e shrug5"
    L3_2(L4_2)
  else
    L3_2 = TriggerServerEvent
    L4_2 = "inv3d:giveItem"
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2, L7_2, L8_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = "player"
    L7_2 = "fert"
    L8_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.testo3d
    L5_2 = "No plant nearly."
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "e shrug5"
    L3_2(L4_2)
  end
  ::lbl_92::
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "getAcquaSemi"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "getAcquaSemi"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GlobalState
  L0_2 = L0_2.SafeModeActive
  if L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "e shrug5"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = "Water is contaminated with Fog."
    L0_2(L1_2, L2_2)
  else
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsEntityInWater
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsPedFatallyInjured
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedFalling
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedRagdoll
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsPedGettingUp
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = ExecuteCommand
              L2_2 = "e prendi6"
              L1_2(L2_2)
              L1_2 = Wait
              L2_2 = 1000
              L1_2(L2_2)
              L1_2 = TriggerServerEvent
              L2_2 = "inv3d:giveItem"
              L3_2 = GetPlayerServerId
              L4_2 = PlayerId
              L4_2, L5_2, L6_2 = L4_2()
              L3_2 = L3_2(L4_2, L5_2, L6_2)
              L4_2 = "player"
              L5_2 = "waterdirty"
              L6_2 = 1
              L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          end
        end
      end
    end
    else
      L1_2 = ExecuteCommand
      L2_2 = "e shrug"
      L1_2(L2_2)
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.testo3d
      L3_2 = "~r~Not in water to fill."
      L1_2(L2_2, L3_2)
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
      L1_2 = TriggerServerEvent
      L2_2 = "inv3d:giveItem"
      L3_2 = GetPlayerServerId
      L4_2 = PlayerId
      L4_2, L5_2, L6_2 = L4_2()
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L4_2 = "player"
      L5_2 = "plastic"
      L6_2 = 1
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "PiantaSeme"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "PiantaSeme"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = L3_1
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = PlayerVicinoPed
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if -1 ~= L3_2 and L4_2 <= 3.0 then
      L5_2 = exports
      L5_2 = L5_2.striano_combat
      L6_2 = L5_2
      L5_2 = L5_2.testo3d
      L7_2 = "~r~Too close to another player."
      L5_2(L6_2, L7_2)
      L5_2 = Wait
      L6_2 = 1000
      L5_2(L6_2)
      L5_2 = TriggerServerEvent
      L6_2 = "inv3d:giveItem"
      L7_2 = GetPlayerServerId
      L8_2 = PlayerId
      L8_2, L9_2, L10_2, L11_2 = L8_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = "player"
      L9_2 = A1_2
      L10_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = ExecuteCommand
      L6_2 = "e shrug"
      L5_2(L6_2)
    else
      L5_2 = exports
      L5_2 = L5_2.striano_combat
      L6_2 = L5_2
      L5_2 = L5_2.sfoggiate
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.fodera2
        L5_2(L6_2)
        L5_2 = Wait
        L6_2 = 350
        L5_2(L6_2)
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.checkarmi
        L5_2(L6_2)
      else
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.checkarmi
        L5_2(L6_2)
      end
      L5_2 = ClearPedTasks
      L6_2 = L2_2
      L5_2(L6_2)
      L5_2 = ClearPedSecondaryTask
      L6_2 = L2_2
      L5_2(L6_2)
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = ZoneScavate
      L7_2 = GetEntityCoords
      L8_2 = L2_2
      L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = ExecuteCommand
      L6_2 = "e c"
      L5_2(L6_2)
      L5_2 = ExecuteCommand
      L6_2 = "e cc"
      L5_2(L6_2)
      L5_2 = Wait
      L6_2 = 25
      L5_2(L6_2)
      L5_2 = ExecuteCommand
      L6_2 = "e zappa"
      L5_2(L6_2)
      L5_2 = Wait
      L6_2 = 550
      L5_2(L6_2)
      L5_2 = PlayEffectPickle
      L6_2 = "des_trailerpark"
      L7_2 = "ent_ray_trailerpark_dust_terrain"
      L8_2 = 52301
      L9_2 = "anim@amb@business@coc@coc_unpack_cut@"
      L10_2 = "fullcut_cycle_v2_cokecutter"
      L11_2 = 0.2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = Wait
      L6_2 = 550
      L5_2(L6_2)
      L5_2 = PlayEffectPickle
      L6_2 = "des_trailerpark"
      L7_2 = "ent_ray_trailerpark_dust_terrain"
      L8_2 = 14201
      L9_2 = "anim@amb@business@coc@coc_unpack_cut@"
      L10_2 = "fullcut_cycle_v2_cokecutter"
      L11_2 = 0.3
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = Wait
      L6_2 = 1500
      L5_2(L6_2)
      L5_2 = IsEntityPlayingAnim
      L6_2 = L2_2
      L7_2 = "anim@amb@drug_field_workers@rake@male_b@base"
      L8_2 = "base"
      L9_2 = 3
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if L5_2 then
        L5_2 = ClearPedTasks
        L6_2 = L2_2
        L5_2(L6_2)
        L5_2 = AttivaSeme
        L6_2 = A0_2
        L5_2(L6_2)
      else
        L5_2 = TriggerServerEvent
        L6_2 = "inv3d:giveItem"
        L7_2 = GetPlayerServerId
        L8_2 = PlayerId
        L8_2, L9_2, L10_2, L11_2 = L8_2()
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L8_2 = "player"
        L9_2 = A1_2
        L10_2 = 1
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L5_2 = ExecuteCommand
        L6_2 = "e shrug"
        L5_2(L6_2)
      end
    end
  else
    L3_2 = TriggerServerEvent
    L4_2 = "inv3d:giveItem"
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = "player"
    L7_2 = A1_2
    L8_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.testo3d
    L5_2 = "Not a good terrain."
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "e shrug5"
    L3_2(L4_2)
  end
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = ClearPedTasks
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "e kneel3"
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 150
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "e lavoraterra2"
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 350
  L2_2(L3_2)
  L2_2 = PlayEffectPickle
  L3_2 = "des_trailerpark"
  L4_2 = "ent_ray_trailerpark_dust_terrain"
  L5_2 = 14201
  L6_2 = "anim@amb@business@coc@coc_unpack_cut@"
  L7_2 = "fullcut_cycle_v2_cokecutter"
  L8_2 = 0.2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = Wait
  L3_2 = 350
  L2_2(L3_2)
  L2_2 = PlayEffectPickle
  L3_2 = "des_trailerpark"
  L4_2 = "ent_ray_trailerpark_dust_terrain"
  L5_2 = 52301
  L6_2 = "anim@amb@business@coc@coc_unpack_cut@"
  L7_2 = "fullcut_cycle_v2_cokecutter"
  L8_2 = 0.3
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = Wait
  L3_2 = 1500
  L2_2(L3_2)
  L2_2 = PlayEffectPickle
  L3_2 = "des_trailerpark"
  L4_2 = "ent_ray_trailerpark_dust_terrain"
  L5_2 = 14201
  L6_2 = "anim@amb@business@coc@coc_unpack_cut@"
  L7_2 = "fullcut_cycle_v2_cokecutter"
  L8_2 = 0.3
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = IsEntityPlayingAnim
  L3_2 = L1_2
  L4_2 = "anim@amb@business@coc@coc_unpack_cut@"
  L5_2 = "fullcut_cycle_v2_cokecutter"
  L6_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L2_2 = ClearPedTasks
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "e c"
    L2_2(L3_2)
    L2_2 = Zappa
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = ClearPedTasks
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "e c"
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 25
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "e shrug"
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.testo3d
    L4_2 = "Retry."
    L2_2(L3_2, L4_2)
  end
end
AttivaSeme = L5_1
L5_1 = RegisterNetEvent
L6_1 = "plant:updateGrowClient"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = NetworkDoesNetworkIdExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NetToObj
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = GetEntityCoords
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = FreezeEntityPosition
      L5_2 = L2_2
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = SetEntityCoordsNoOffset
      L5_2 = L2_2
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = A1_2
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L4_2 = FreezeEntityPosition
      L5_2 = L2_2
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = SetEntityAlpha
      L5_2 = L2_2
      L6_2 = 200
      L4_2(L5_2, L6_2)
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "getPianteInAttesa"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  PianteInAttesa = L1_2
  L1_2 = pairs
  L2_2 = PianteInAttesa
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2.netId
      if L7_2 then
        L7_2 = NetworkGetEntityFromNetworkId
        L8_2 = tonumber
        L9_2 = L6_2.netId
        L8_2, L9_2 = L8_2(L9_2)
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 and 0 ~= L7_2 then
          L8_2 = DoesEntityExist
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L6_2.o = L7_2
          end
        end
      end
    end
  end
  L1_2 = pairs
  L2_2 = PianteInAttesa
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    L6_2.localStart = L7_2
    L7_2 = tonumber
    L8_2 = L6_2.tempo
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = 0
    end
    L6_2.startTempo = L7_2
  end
  L1_2 = LoopPiante
  L1_2()
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "LIMIT"
  L4_2 = "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS"
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ExecuteCommand
  L2_2 = "e alzati"
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "e puliscimani"
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = "Remember to use water and fertiliser to get the plant."
  L1_2(L2_2, L3_2)
  L1_2 = true
  L2_2 = GetEntityForwardVector
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L5_2 = L2_2 * 0.3
  L4_2 = L4_2 + L5_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = 1
  L7_2 = PianteInAttesa
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = vector3
    L11_2 = L3_2
    L12_2 = L4_2
    L13_2 = L5_2 - 0.5
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = GetEntityCoords
    L12_2 = PianteInAttesa
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.o
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 - L11_2
    L10_2 = #L10_2
    if L10_2 < 2.0 then
      L1_2 = false
      break
    end
  end
  L6_2 = Wait
  L7_2 = 0
  L6_2(L7_2)
  if L1_2 then
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 2
    L8_2 = 6
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = GetHashKey
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L8_2 = CreateObject
    L9_2 = L7_2
    L10_2 = L3_2
    L11_2 = L4_2
    L12_2 = L5_2
    L13_2 = true
    L14_2 = true
    L15_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L9_2 = 0
    while true do
      L10_2 = DoesEntityExist
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if not (not L10_2 and L9_2 < 100) then
        break
      end
      L10_2 = Wait
      L11_2 = 0
      L10_2(L11_2)
      L9_2 = L9_2 + 1
    end
    if L9_2 < 100 then
      L10_2 = NetworkRegisterEntityAsNetworked
      L11_2 = L8_2
      L10_2(L11_2)
      L10_2 = PlaceObjectOnGroundProperly
      L11_2 = L8_2
      L10_2(L11_2)
      L10_2 = FreezeEntityPosition
      L11_2 = L8_2
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityCollision
      L11_2 = L8_2
      L12_2 = false
      L13_2 = false
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = GetEntityCoords
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L11_2 = SetModelAsNoLongerNeeded
      L12_2 = L7_2
      L11_2(L12_2)
      L11_2 = GetModelDimensions
      L12_2 = L7_2
      L11_2, L12_2 = L11_2(L12_2)
      L13_2 = math
      L13_2 = L13_2.abs
      L14_2 = L12_2.z
      L15_2 = L11_2.z
      L14_2 = L14_2 - L15_2
      L13_2 = L13_2(L14_2)
      L14_2 = L13_2 * 0.015
      L15_2 = L10_2.z
      L15_2 = L15_2 - L13_2
      L15_2 = L15_2 + 0.05
      L16_2 = SetEntityCoords
      L17_2 = L8_2
      L18_2 = L10_2.x
      L19_2 = L10_2.y
      L20_2 = L15_2
      L16_2(L17_2, L18_2, L19_2, L20_2)
      L16_2 = SetEntityAlpha
      L17_2 = L8_2
      L18_2 = 200
      L16_2(L17_2, L18_2)
      L16_2 = vector3
      L17_2 = L10_2.x
      L18_2 = L10_2.y
      L19_2 = L15_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      if L6_2 > 1 then
        L14_2 = L14_2 / L6_2
      end
      L17_2 = math
      L17_2 = L17_2.abs
      L18_2 = L12_2.z
      L19_2 = L11_2.z
      L18_2 = L18_2 - L19_2
      L17_2 = L17_2(L18_2)
      L18_2 = {}
      L18_2.o = L8_2
      L18_2.baseZ = L15_2
      L18_2.pos = L10_2
      L19_2 = L6_2 * 60
      L18_2.tempo = L19_2
      L19_2 = L17_2 - 0.1
      L18_2.maxGrow = L19_2
      L18_2.growed = 0.0
      L19_2 = L6_2 * 60
      L19_2 = L17_2 / L19_2
      L18_2.mv = L19_2
      L18_2.acqua = 0
      L18_2.fertilizzante = 0
      L19_2 = table
      L19_2 = L19_2.insert
      L20_2 = PianteInAttesa
      L21_2 = L18_2
      L19_2(L20_2, L21_2)
      L19_2 = L18_2.baseZ
      L20_2 = L18_2.growed
      L19_2 = L19_2 + L20_2
      L20_2 = NetworkRegisterEntityAsNetworked
      L21_2 = L8_2
      L20_2(L21_2)
      L20_2 = 0
      while true do
        L21_2 = NetworkGetEntityIsNetworked
        L22_2 = L8_2
        L21_2 = L21_2(L22_2)
        if not (not L21_2 and L20_2 < 50) then
          break
        end
        L21_2 = NetworkRegisterEntityAsNetworked
        L22_2 = L8_2
        L21_2(L22_2)
        L21_2 = Wait
        L22_2 = 50
        L21_2(L22_2)
        L20_2 = L20_2 + 1
      end
      L21_2 = NetworkGetNetworkIdFromEntity
      L22_2 = L8_2
      L21_2 = L21_2(L22_2)
      if L21_2 and 0 ~= L21_2 then
        L18_2.netId = L21_2
        L18_2.o = L8_2
        L22_2 = TriggerServerEvent
        L23_2 = "sendPianteInAttesa"
        L24_2 = L18_2
        L25_2 = L21_2
        L22_2(L23_2, L24_2, L25_2)
      end
    else
      L10_2 = exports
      L10_2 = L10_2.striano_combat
      L11_2 = L10_2
      L10_2 = L10_2.testo3d
      L12_2 = "Plant model not exist."
      L10_2(L11_2, L12_2)
    end
  else
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.testo3d
    L8_2 = "Place busy."
    L6_2(L7_2, L8_2)
    L6_2 = ExecuteCommand
    L7_2 = "e shrug5"
    L6_2(L7_2)
  end
end
Zappa = L5_1
L5_1 = 4
L6_1 = RegisterCommand
L7_1 = "IDFONTColtiva"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2[1]
  if L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    L5_1 = L2_2
  end
end
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = World3dToScreen2d
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L7_2 = SetTextScale
    L8_2 = 0.55
    L9_2 = 0.55
    L7_2(L8_2, L9_2)
    L7_2 = SetTextFont
    L8_2 = L5_1
    L7_2(L8_2)
    L7_2 = SetTextProportional
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = SetTextColour
    L8_2 = 255
    L9_2 = 255
    L10_2 = 255
    L11_2 = 200
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetTextEntry
    L8_2 = "STRING"
    L7_2(L8_2)
    L7_2 = SetTextOutline
    L7_2()
    L7_2 = SetTextCentre
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = AddTextComponentString
    L8_2 = A3_2
    L7_2(L8_2)
    L7_2 = DrawText
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L7_1 = false
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2.o
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2.o
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2.o
      return L1_2
    end
  end
  L1_2 = A0_2.netId
  if L1_2 then
    L1_2 = NetworkGetEntityFromNetworkId
    L2_2 = tonumber
    L3_2 = A0_2.netId
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 and 0 ~= L1_2 then
      L2_2 = DoesEntityExist
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        A0_2.o = L1_2
        return L1_2
      end
    end
  end
  L1_2 = 0
  return L1_2
end
function L9_1()
  local L0_2, L1_2
  L0_2 = L7_1
  if L0_2 then
    return
  end
  L0_2 = true
  L7_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3
    while true do
      L0_3 = L7_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PianteInAttesa
      if L0_3 then
        L0_3 = PianteInAttesa
        L0_3 = #L0_3
        if not (L0_3 <= 0) then
          goto lbl_20
        end
      end
      L0_3 = false
      L7_1 = L0_3
      L0_3 = print
      L1_3 = "[PLANTS] loop stop: no plants"
      L0_3(L1_3)
      do return end
      ::lbl_20::
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = false
      L3_3 = 1
      L4_3 = PianteInAttesa
      L4_3 = #L4_3
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = PianteInAttesa
        L7_3 = L7_3[L6_3]
        L8_3 = L8_1
        L9_3 = L7_3
        L8_3 = L8_3(L9_3)
        if 0 ~= L8_3 then
          L9_3 = GetEntityCoords
          L10_3 = L8_3
          L9_3 = L9_3(L10_3)
          L10_3 = L1_3 - L9_3
          L10_3 = #L10_3
          L11_3 = 7.5
          if L10_3 < L11_3 then
            L2_3 = true
            L11_3 = L7_3.pos
            if not L11_3 then
              L11_3 = L9_3
            end
            L12_3 = tonumber
            L13_3 = L7_3.startTempo
            L12_3 = L12_3(L13_3)
            if not L12_3 then
              L12_3 = tonumber
              L13_3 = L7_3.tempo
              L12_3 = L12_3(L13_3)
              if not L12_3 then
                L12_3 = 0
              end
            end
            L13_3 = math
            L13_3 = L13_3.floor
            L14_3 = GetGameTimer
            L14_3 = L14_3()
            L15_3 = L7_3.localStart
            if not L15_3 then
              L15_3 = GetGameTimer
              L15_3 = L15_3()
            end
            L14_3 = L14_3 - L15_3
            L14_3 = L14_3 / 1000
            L13_3 = L13_3(L14_3)
            L14_3 = math
            L14_3 = L14_3.max
            L15_3 = 0
            L16_3 = L12_3 - L13_3
            L14_3 = L14_3(L15_3, L16_3)
            L15_3 = Citizen
            L15_3 = L15_3.InvokeNative
            L16_3 = -7918206464511161279
            L17_3 = L0_3
            L15_3 = L15_3(L16_3, L17_3)
            if L15_3 then
              L15_3 = L6_1
              L16_3 = L11_3.x
              L17_3 = L11_3.y
              L18_3 = L11_3.z
              L18_3 = L18_3 + 0.3
              L19_3 = tostring
              L20_3 = L14_3
              L19_3 = L19_3(L20_3)
              L20_3 = "s~n~Fert: "
              L21_3 = L7_3.fertilizzante
              if not L21_3 then
                L21_3 = 0
              end
              L22_3 = "~n~Wat: "
              L23_3 = L7_3.acqua
              if not L23_3 then
                L23_3 = 0
              end
              L19_3 = L19_3 .. L20_3 .. L21_3 .. L22_3 .. L23_3
              L15_3(L16_3, L17_3, L18_3, L19_3)
            else
              L15_3 = L6_1
              L16_3 = L11_3.x
              L17_3 = L11_3.y
              L18_3 = L11_3.z
              L18_3 = L18_3 + 0.3
              L19_3 = tostring
              L20_3 = L14_3
              L19_3 = L19_3(L20_3)
              L20_3 = "s"
              L19_3 = L19_3 .. L20_3
              L15_3(L16_3, L17_3, L18_3, L19_3)
            end
          elseif L10_3 < 30.0 then
            L2_3 = true
            L11_3 = DrawMarker
            L12_3 = 1
            L13_3 = L9_3.x
            L14_3 = L9_3.y
            L15_3 = L9_3.z
            L16_3 = 0.0
            L17_3 = 0.0
            L18_3 = 0.0
            L19_3 = 0.0
            L20_3 = 0.0
            L21_3 = 0.0
            L22_3 = 0.05
            L23_3 = 0.05
            L24_3 = 75.0
            L25_3 = 0
            L26_3 = 255
            L27_3 = 0
            L28_3 = 255
            L29_3 = false
            L30_3 = true
            L31_3 = 2
            L32_3 = false
            L33_3 = nil
            L34_3 = nil
            L35_3 = false
            L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
          end
        else
          L9_3 = print
          L10_3 = "[PLANTS] ent non trovata"
          L11_3 = L6_3
          L12_3 = L7_3 or L12_3
          if L7_3 then
            L12_3 = L7_3.netId
          end
          L9_3(L10_3, L11_3, L12_3)
        end
      end
      if not L2_3 then
        L3_3 = Wait
        L4_3 = 1000
        L3_3(L4_3)
      end
    end
  end
  L0_2(L1_2)
end
LoopPiante = L9_1
L9_1 = RegisterCommand
L10_1 = "terreno"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StartShapeTestRay
  L3_2 = L1_2
  L4_2 = vector3
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L7_2 = L7_2 - 2.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 17
  L6_2 = L0_2
  L7_2 = 7
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = GetShapeTestResultIncludingMaterial
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L9_2 = print
  L10_2 = "Terreno: "
  L11_2 = L7_2
  L10_2 = L10_2 .. L11_2
  L9_2(L10_2)
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "getTerreno"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StartShapeTestRay
  L3_2 = L1_2
  L4_2 = vector3
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L7_2 = L7_2 - 2.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 17
  L6_2 = L0_2
  L7_2 = 7
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = GetShapeTestResultIncludingMaterial
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  return L7_2
end
L9_1(L10_1, L11_1)
L9_1 = {}
Uccellini = L9_1
L9_1 = RegisterCommand
L10_1 = "uccelli"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = fUccellini
  L3_2()
end
L9_1(L10_1, L11_1)
L9_1 = RegisterCommand
L10_1 = "uccelli2"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = fUccellini2
  L3_2()
end
L9_1(L10_1, L11_1)
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = pairs
    L1_2 = Uccellini
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = DoesEntityExist
      L7_2 = L5_2.ped
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L5_2.ped
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = DeletePed
        L7_2 = L5_2.ped
        L6_2(L7_2)
      end
      L6_2 = DoesEntityExist
      L7_2 = L5_2.palla
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L5_2.palla
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = DeletePed
        L7_2 = L5_2.palla
        L6_2(L7_2)
      end
    end
    L0_2 = {}
    Uccellini = L0_2
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedSwimming
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = GetInteriorFromEntity
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if 0 == L1_2 then
        L1_2 = 1
        L2_2 = 10
        L3_2 = 1
        for L4_2 = L1_2, L2_2, L3_2 do
          L5_2 = "a_c_seagull"
          L6_2 = math
          L6_2 = L6_2.random
          L7_2 = 1
          L8_2 = 4
          L6_2 = L6_2(L7_2, L8_2)
          if 1 == L6_2 then
            L5_2 = "a_c_pigeon"
          end
          if 2 == L6_2 then
            L5_2 = "a_c_crow"
          end
          if 3 == L6_2 then
            L5_2 = "a_c_chickenhawk"
          end
          L7_2 = RequestModelStriano
          L8_2 = GetHashKey
          L9_2 = L5_2
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          L7_2 = GetEntityCoords
          L8_2 = L0_2
          L7_2 = L7_2(L8_2)
          L8_2 = vector3
          L9_2 = L7_2.x
          L10_2 = math
          L10_2 = L10_2.random
          L11_2 = -15
          L12_2 = 15
          L10_2 = L10_2(L11_2, L12_2)
          L9_2 = L9_2 + L10_2
          L10_2 = L7_2.y
          L11_2 = math
          L11_2 = L11_2.random
          L12_2 = -15
          L13_2 = 15
          L11_2 = L11_2(L12_2, L13_2)
          L10_2 = L10_2 + L11_2
          L11_2 = L7_2.z
          L12_2 = math
          L12_2 = L12_2.random
          L13_2 = 25
          L14_2 = 35
          L12_2 = L12_2(L13_2, L14_2)
          L11_2 = L11_2 + L12_2
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          L9_2 = CreatePed
          L10_2 = 26
          L11_2 = GetHashKey
          L12_2 = L5_2
          L11_2 = L11_2(L12_2)
          L12_2 = L8_2
          L13_2 = 0.0
          L14_2 = false
          L15_2 = false
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          while true do
            L10_2 = HasCollisionForModelLoaded
            L11_2 = GetHashKey
            L12_2 = L5_2
            L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
            if L10_2 then
              break
            end
            L10_2 = RequestCollisionForModel
            L11_2 = GetHashKey
            L12_2 = L5_2
            L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
            L10_2 = Wait
            L11_2 = 0
            L10_2(L11_2)
          end
          L10_2 = CreateThread
          function L11_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
            L0_3 = "p_ld_soc_ball_01"
            L1_3 = RequestModelStriano
            L2_3 = L0_3
            L1_3(L2_3)
            L1_3 = CreateObject
            L2_3 = L0_3
            L3_3 = L8_2.x
            L4_3 = L8_2.y
            L5_3 = L8_2.z
            L6_3 = false
            L7_3 = false
            L8_3 = false
            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            L2_3 = SetEntityVisible
            L3_3 = L1_3
            L4_3 = false
            L2_3(L3_3, L4_3)
            L2_3 = AttachEntityToEntity
            L3_3 = L9_2
            L4_3 = L1_3
            L5_3 = 0
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.0
            L11_3 = 0
            L12_3 = false
            L13_3 = false
            L14_3 = false
            L15_3 = false
            L16_3 = 2
            L17_3 = false
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            L2_3 = table
            L2_3 = L2_3.insert
            L3_3 = Uccellini
            L4_3 = {}
            L5_3 = L9_2
            L4_3.ped = L5_3
            L4_3.palla = L1_3
            L2_3(L3_3, L4_3)
            L2_3 = ApplyForceToEntityCenterOfMass
            L3_3 = L1_3
            L4_3 = 4
            L5_3 = 0.0
            L6_3 = 0.0
            L7_3 = 0.09
            L8_3 = true
            L9_3 = true
            L10_3 = true
            L11_3 = true
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
            while true do
              L2_3 = Wait
              L3_3 = 1
              L2_3(L3_3)
              L2_3 = HasEntityCollidedWithAnything
              L3_3 = L1_3
              L2_3 = L2_3(L3_3)
              if L2_3 then
                L2_3 = GetEntityCoords
                L3_3 = L0_2
                L2_3 = L2_3(L3_3)
                L3_3 = GetEntityCoords
                L4_3 = L1_3
                L3_3 = L3_3(L4_3)
                L2_3 = L2_3 - L3_3
                L2_3 = #L2_3
                if L2_3 < 30.0 then
                  L2_3 = TriggerEvent
                  L3_3 = "ffxallpos"
                  L4_3 = "bul_rubber_dust"
                  L5_3 = GetEntityCoords
                  L6_3 = L9_2
                  L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L5_3(L6_3)
                  L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                  L2_3 = DetachEntity
                  L3_3 = L9_2
                  L2_3(L3_3)
                  L2_3 = SetEntityAsMissionEntity
                  L3_3 = L1_3
                  L4_3 = true
                  L2_3(L3_3, L4_3)
                  L2_3 = DeleteObject
                  L3_3 = L1_3
                  L2_3(L3_3)
                  L2_3 = DoesEntityExist
                  L3_3 = L9_2
                  L2_3 = L2_3(L3_3)
                  if L2_3 then
                    L2_3 = SetPedToRagdoll
                    L3_3 = L9_2
                    L4_3 = 0
                    L5_3 = 0
                    L6_3 = 4
                    L7_3 = 0
                    L8_3 = 0
                    L9_3 = 0
                    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                    L2_3 = Wait
                    L3_3 = 1
                    L2_3(L3_3)
                    L2_3 = ApplyForceToEntityCenterOfMass
                    L3_3 = L9_2
                    L4_3 = 4
                    L5_3 = 0.0
                    L6_3 = 0.0
                    L7_3 = 0.2
                    L8_3 = true
                    L9_3 = true
                    L10_3 = true
                    L11_3 = true
                    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                    L2_3 = Wait
                    L3_3 = 1
                    L2_3(L3_3)
                    L2_3 = SetPedToRagdoll
                    L3_3 = L9_2
                    L4_3 = 0
                    L5_3 = 0
                    L6_3 = 4
                    L7_3 = 0
                    L8_3 = 0
                    L9_3 = 0
                    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                    L2_3 = Wait
                    L3_3 = 1
                    L2_3(L3_3)
                    L2_3 = ApplyForceToEntityCenterOfMass
                    L3_3 = L9_2
                    L4_3 = 4
                    L5_3 = 0.0
                    L6_3 = 0.0
                    L7_3 = 0.9
                    L8_3 = true
                    L9_3 = true
                    L10_3 = true
                    L11_3 = true
                    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                    L2_3 = Wait
                    L3_3 = 1
                    L2_3(L3_3)
                    L2_3 = SetPedToRagdoll
                    L3_3 = L9_2
                    L4_3 = 0
                    L5_3 = 0
                    L6_3 = 4
                    L7_3 = 0
                    L8_3 = 0
                    L9_3 = 0
                    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                    L2_3 = Wait
                    L3_3 = 25
                    L2_3(L3_3)
                    L2_3 = SetEntityHealth
                    L3_3 = L9_2
                    L4_3 = 0
                    L2_3(L3_3, L4_3)
                    L2_3 = Wait
                    L3_3 = 25
                    L2_3(L3_3)
                    L2_3 = SetPedToRagdoll
                    L3_3 = L9_2
                    L4_3 = 0
                    L5_3 = 0
                    L6_3 = 4
                    L7_3 = 0
                    L8_3 = 0
                    L9_3 = 0
                    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                  end
                else
                  L2_3 = DetachEntity
                  L3_3 = L9_2
                  L2_3(L3_3)
                  L2_3 = Wait
                  L3_3 = 25
                  L2_3(L3_3)
                  L2_3 = SetPedToRagdoll
                  L3_3 = L9_2
                  L4_3 = 0
                  L5_3 = 0
                  L6_3 = 4
                  L7_3 = 0
                  L8_3 = 0
                  L9_3 = 0
                  L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                  L2_3 = SetEntityAsMissionEntity
                  L3_3 = L1_3
                  L4_3 = true
                  L2_3(L3_3, L4_3)
                  L2_3 = DeleteObject
                  L3_3 = L1_3
                  L2_3(L3_3)
                  L2_3 = SetEntityHealth
                  L3_3 = L9_2
                  L4_3 = 0
                  L2_3(L3_3, L4_3)
                  L2_3 = Wait
                  L3_3 = 25
                  L2_3(L3_3)
                  L2_3 = SetPedToRagdoll
                  L3_3 = L9_2
                  L4_3 = 0
                  L5_3 = 0
                  L6_3 = 4
                  L7_3 = 0
                  L8_3 = 0
                  L9_3 = 0
                  L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                end
              end
            end
          end
          L10_2(L11_2)
        end
        L1_2 = Wait
        L2_2 = 30000
        L1_2(L2_2)
        L1_2 = pairs
        L2_2 = Uccellini
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          L7_2 = DoesEntityExist
          L8_2 = L6_2.palla
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = SetEntityAsMissionEntity
            L8_2 = L6_2.palla
            L9_2 = true
            L7_2(L8_2, L9_2)
            L7_2 = DeleteEntity
            L8_2 = L6_2.palla
            L7_2(L8_2)
          end
          L7_2 = DoesEntityExist
          L8_2 = L6_2.ped
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = SetEntityAsMissionEntity
            L8_2 = L6_2.ped
            L9_2 = true
            L7_2(L8_2, L9_2)
            L7_2 = DeleteEntity
            L8_2 = L6_2.ped
            L7_2(L8_2)
          end
        end
      end
    end
  end
end
fUccellini2 = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = Wait
      L1_3 = 250
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L0_3 = L0_3 + 7000
      while true do
        L1_3 = DoesEntityExist
        L2_3 = A0_2
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          break
        end
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        if not (L0_3 > L1_3) then
          break
        end
        L1_3 = GetEntityVelocity
        L2_3 = A0_2
        L1_3 = L1_3(L2_3)
        L2_3 = SetEntityVelocity
        L3_3 = A0_2
        L4_3 = L1_3.x
        L5_3 = L1_3.y
        L6_3 = L1_3.z
        L6_3 = L6_3 + 2.0
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = Wait
        L3_3 = 250
        L2_3(L3_3)
      end
    end
    L1_2(L2_2)
  end
end
RotatePedUp = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.gettutorial
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsPedHuman
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsPedSwimming
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = GetInteriorFromEntity
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if 0 == L1_2 then
          L1_2 = IsPedInAnyVehicle
          L2_2 = L0_2
          L3_2 = false
          L1_2 = L1_2(L2_2, L3_2)
          if not L1_2 then
            L1_2 = pairs
            L2_2 = Uccellini
            L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
            for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
              L7_2 = DoesEntityExist
              L8_2 = L6_2.ped
              L7_2 = L7_2(L8_2)
              if L7_2 then
                L7_2 = SetEntityAsMissionEntity
                L8_2 = L6_2.ped
                L9_2 = true
                L7_2(L8_2, L9_2)
                L7_2 = DeletePed
                L8_2 = L6_2.ped
                L7_2(L8_2)
              end
              L7_2 = DoesEntityExist
              L8_2 = L6_2.palla
              L7_2 = L7_2(L8_2)
              if L7_2 then
                L7_2 = SetEntityAsMissionEntity
                L8_2 = L6_2.palla
                L9_2 = true
                L7_2(L8_2, L9_2)
                L7_2 = DeletePed
                L8_2 = L6_2.palla
                L7_2(L8_2)
              end
            end
            L1_2 = {}
            Uccellini = L1_2
            L1_2 = 1
            L2_2 = math
            L2_2 = L2_2.random
            L3_2 = 2
            L4_2 = 6
            L2_2 = L2_2(L3_2, L4_2)
            L3_2 = 1
            for L4_2 = L1_2, L2_2, L3_2 do
              L5_2 = "a_c_seagull"
              L6_2 = math
              L6_2 = L6_2.random
              L7_2 = 1
              L8_2 = 4
              L6_2 = L6_2(L7_2, L8_2)
              if 1 == L6_2 then
                L5_2 = "a_c_pigeon"
              end
              if 3 == L6_2 then
                L5_2 = "a_c_chickenhawk"
              end
              if 4 == L6_2 then
                L5_2 = "a_c_crow"
              end
              L7_2 = RequestModelStriano
              L8_2 = GetHashKey
              L9_2 = L5_2
              L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2)
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
              L7_2 = GetEntityForwardVector
              L8_2 = L0_2
              L7_2 = L7_2(L8_2)
              L8_2 = table
              L8_2 = L8_2.unpack
              L9_2 = GetEntityCoords
              L10_2 = L0_2
              L9_2 = L9_2(L10_2)
              L10_2 = L7_2 * -0.1
              L9_2 = L9_2 + L10_2
              L8_2, L9_2, L10_2 = L8_2(L9_2)
              L11_2 = CreatePed
              L12_2 = 26
              L13_2 = GetHashKey
              L14_2 = L5_2
              L13_2 = L13_2(L14_2)
              L14_2 = vector3
              L15_2 = L8_2
              L16_2 = L9_2
              L17_2 = L10_2 - 0.5
              L14_2 = L14_2(L15_2, L16_2, L17_2)
              L15_2 = 0.0
              L16_2 = false
              L17_2 = false
              L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
              L12_2 = SetEntityVisible
              L13_2 = L11_2
              L14_2 = false
              L12_2(L13_2, L14_2)
              L12_2 = Wait
              L13_2 = 25
              L12_2(L13_2)
              L12_2 = GetEntityHeading
              L13_2 = L0_2
              L12_2 = L12_2(L13_2)
              L13_2 = math
              L13_2 = L13_2.random
              L14_2 = -30
              L15_2 = 30
              L13_2 = L13_2(L14_2, L15_2)
              L13_2 = L12_2 + L13_2
              if L13_2 < 0.0 then
                L13_2 = L13_2 + 360.0
              else
                L14_2 = 360.0
                if L13_2 >= L14_2 then
                  L13_2 = L13_2 - 360.0
                end
              end
              L14_2 = SetEntityHeading
              L15_2 = L11_2
              L16_2 = L13_2
              L14_2(L15_2, L16_2)
              L14_2 = Wait
              L15_2 = 0
              L14_2(L15_2)
              L14_2 = SetPedAlertness
              L15_2 = L11_2
              L16_2 = 3
              L14_2(L15_2, L16_2)
              L14_2 = TaskReactAndFleePed
              L15_2 = L11_2
              L16_2 = L0_2
              L14_2(L15_2, L16_2)
              L14_2 = table
              L14_2 = L14_2.insert
              L15_2 = Uccellini
              L16_2 = {}
              L16_2.ped = L11_2
              L14_2(L15_2, L16_2)
            end
            L1_2 = Wait
            L2_2 = 0
            L1_2(L2_2)
            L1_2 = pairs
            L2_2 = Uccellini
            L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
            for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
              L7_2 = SetPedRelationshipGroupHash
              L8_2 = L6_2.ped
              L9_2 = GetHashKey
              L10_2 = "WILD_ANIMAL"
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
              L7_2 = SetEntityAsMissionEntity
              L8_2 = L6_2.ped
              L9_2 = true
              L10_2 = true
              L7_2(L8_2, L9_2, L10_2)
              L7_2 = GetOffsetFromEntityInWorldCoords
              L8_2 = L0_2
              L9_2 = 0.0
              L10_2 = 0.2
              L11_2 = 0.0
              L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
              L8_2 = IsEntityAttached
              L9_2 = L0_2
              L8_2 = L8_2(L9_2)
              if not L8_2 then
                L8_2 = legacyGoEntity2
                L9_2 = L0_2
                L10_2 = L7_2
                L11_2 = 0.5
                L12_2 = -1
                L13_2 = GetEntityHeading
                L14_2 = L0_2
                L13_2 = L13_2(L14_2)
                L14_2 = 0.0
                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
              end
              L8_2 = SetEntityVisible
              L9_2 = Uccellini
              L9_2 = L9_2[L5_2]
              L9_2 = L9_2.ped
              L10_2 = true
              L8_2(L9_2, L10_2)
              L8_2 = RotatePedUp
              L9_2 = L6_2.ped
              L8_2(L9_2)
            end
          end
        end
      end
    end
  end
end
fUccellini = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A0_2 then
    L6_2 = DoesEntityExist
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_10
    end
  end
  L6_2 = false
  do return L6_2 end
  ::lbl_10::
  if not A1_2 then
    L6_2 = false
    return L6_2
  end
  if not A2_2 then
    A2_2 = 1.0
  end
  if not A3_2 then
    A3_2 = -1
  end
  if not A4_2 then
    L6_2 = GetEntityHeading
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    A4_2 = L6_2
  end
  if not A5_2 then
    A5_2 = 0.0
  end
  L6_2 = ClearPedTasks
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = TaskGoStraightToCoord
  L7_2 = A0_2
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L14_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = true
  return L6_2
end
legacyGoEntity2 = L9_1
L9_1 = RegisterNetEvent
L10_1 = "funcUccellini"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "funcUccellini"
function L11_1()
  local L0_2, L1_2
  L0_2 = fUccellini
  L0_2()
end
L9_1(L10_1, L11_1)
possoMorire = true
L9_1 = RegisterCommand
L10_1 = "trasformazione"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.pedinbraccio
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "You can't at moment."
    L1_2(L2_2, L3_2)
  else
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = exports
    L2_2 = L2_2.striano_core
    L3_2 = L2_2
    L2_2 = L2_2.gettutorial
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = IsPedHuman
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = L2_1
        if nil == L2_2 then
          L2_2 = "a_c_crow"
          L2_1 = L2_2
        end
        L2_2 = exports
        L2_2 = L2_2.striano_combat
        L3_2 = L2_2
        L2_2 = L2_2.submexInfo
        L4_2 = "Waiting for transformation, are you sure you want?"
        L2_2(L3_2, L4_2)
        while true do
          L2_2 = ExecuteCommand
          L3_2 = "e pray30"
          L2_2(L3_2)
          L2_2 = draw
          L3_2 = 38
          L4_2 = "Yes, transform me as animal!"
          L5_2 = 47
          L6_2 = "No, cancel"
          L2_2(L3_2, L4_2, L5_2, L6_2)
          L2_2 = IsDisabledControlPressed
          L3_2 = 0
          L4_2 = 73
          L2_2 = L2_2(L3_2, L4_2)
          if not L2_2 then
            L2_2 = IsControlPressed
            L3_2 = 0
            L4_2 = 73
            L2_2 = L2_2(L3_2, L4_2)
            if not L2_2 then
              L2_2 = IsDisabledControlPressed
              L3_2 = 0
              L4_2 = 25
              L2_2 = L2_2(L3_2, L4_2)
              if not L2_2 then
                L2_2 = IsControlPressed
                L3_2 = 0
                L4_2 = 25
                L2_2 = L2_2(L3_2, L4_2)
                if not L2_2 then
                  goto lbl_71
                end
              end
            end
          end
          do return end
          goto lbl_97
          ::lbl_71::
          L2_2 = IsDisabledControlPressed
          L3_2 = 0
          L4_2 = 38
          L2_2 = L2_2(L3_2, L4_2)
          if not L2_2 then
            L2_2 = IsControlPressed
            L3_2 = 0
            L4_2 = 38
            L2_2 = L2_2(L3_2, L4_2)
            if not L2_2 then
              L2_2 = IsPedFalling
              L3_2 = L1_2
              L2_2 = L2_2(L3_2)
              if not L2_2 then
                L2_2 = IsPedJumping
                L3_2 = L1_2
                L2_2 = L2_2(L3_2)
                if not L2_2 then
                  goto lbl_97
                end
              end
            end
          end
          L2_2 = Trasformazione
          L3_2 = L2_1
          L2_2(L3_2)
          do return end
          ::lbl_97::
          L2_2 = Wait
          L3_2 = 0
          L2_2(L3_2)
        end
        L2_2 = exports
        L2_2 = L2_2.striano_combat
        L3_2 = L2_2
        L2_2 = L2_2.submex
        L4_2 = ""
        L2_2(L3_2, L4_2)
        L2_2 = ExecuteCommand
        L3_2 = "e posatasca"
        L2_2(L3_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.delallarmi
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 125
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsEntityAttached
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedInAnyVehicle
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedFatallyInjured
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = L0_2
          L3_2 = "combat@damage@rb_writhe"
          L4_2 = "rb_writhe_loop"
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_combat
            L2_2 = L1_2
            L1_2 = L1_2.checkarmi
            L1_2(L2_2)
            L1_2 = Wait
            L2_2 = 25
            L1_2(L2_2)
            L1_2 = TriggerServerEvent
            L2_2 = "tornaUmano"
            L3_2 = L2_1
            L4_2 = GetPlayerServerId
            L5_2 = PlayerId
            L5_2 = L5_2()
            L4_2, L5_2 = L4_2(L5_2)
            L1_2(L2_2, L3_2, L4_2, L5_2)
            L1_2 = exports
            L1_2 = L1_2.striano_combat
            L2_2 = L1_2
            L1_2 = L1_2.submex
            L3_2 = ""
            L1_2(L2_2, L3_2)
            possoMorire = true
            L1_2 = Wait
            L2_2 = 225
            L1_2(L2_2)
            L1_2 = ExecuteCommand
            L2_2 = "startvolo"
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
Trasformazione = L9_1
L9_1 = RegisterNetEvent
L10_1 = "trasformazioneAnimale"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "trasformazioneAnimale"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L2_1
    if nil == L1_2 then
      L1_2 = "a_c_chickenhawk"
      L2_1 = L1_2
    end
    L1_2 = Trasformazione
    L1_2()
    while true do
      L1_2 = IsPedHuman
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      if not L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
    end
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = FreezeEntityPosition
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityInvincible
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityCanBeDamaged
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetPedCanRagdoll
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetPedCanRagdollFromPlayerImpact
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetBlockingOfNonTemporaryEvents
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L3_2 = SetEntityCoordsNoOffset
    L4_2 = L1_2
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = FreezeEntityPosition
    L4_2 = L1_2
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L1_2 = TriggerEvent
    L2_2 = "trasformazioneAUmano"
    L1_2(L2_2)
    while true do
      L1_2 = IsPedHuman
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      if not L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
    end
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = FreezeEntityPosition
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityInvincible
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityCanBeDamaged
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetPedCanRagdoll
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetPedCanRagdollFromPlayerImpact
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetBlockingOfNonTemporaryEvents
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L3_2 = SetEntityCoordsNoOffset
    L4_2 = L1_2
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L7_2 = L7_2 + 1.0
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = FreezeEntityPosition
    L4_2 = L1_2
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "trasformazioneAUmano"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "trasformazioneAUmano"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = ClearPedTasks
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "tornaUmano"
    L4_2 = nil
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2 = L6_2()
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = ExecuteCommand
    L3_2 = "e cc"
    L2_2(L3_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = AddEventHandler
L10_1 = "onResourceStop"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.EndOrbitCam
    L1_2(L2_2)
    L1_2 = myGhost
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = myGhost
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = myGhost
      L1_2(L2_2)
    end
    L1_2 = pairs
    L2_2 = PianteInAttesa
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.o
      if L7_2 then
        L7_2 = SetEntityAsMissionEntity
        L8_2 = L6_2.o
        L7_2(L8_2)
        L7_2 = DeleteEntity
        L8_2 = L6_2.o
        L7_2(L8_2)
      end
    end
    L1_2 = Uccellini
    if L1_2 then
      L1_2 = Uccellini
      L1_2 = #L1_2
      if L1_2 > 0 then
        L1_2 = 1
        L2_2 = Uccellini
        L2_2 = #L2_2
        L3_2 = 1
        for L4_2 = L1_2, L2_2, L3_2 do
          L5_2 = DoesEntityExist
          L6_2 = Uccellini
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.ped
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = SetEntityAsMissionEntity
            L6_2 = Uccellini
            L6_2 = L6_2[L4_2]
            L6_2 = L6_2.ped
            L7_2 = true
            L5_2(L6_2, L7_2)
            L5_2 = DeletePed
            L6_2 = Uccellini
            L6_2 = L6_2[L4_2]
            L6_2 = L6_2.ped
            L5_2(L6_2)
          end
          L5_2 = DoesEntityExist
          L6_2 = Uccellini
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.palla
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = SetEntityAsMissionEntity
            L6_2 = Uccellini
            L6_2 = L6_2[L4_2]
            L6_2 = L6_2.palla
            L7_2 = true
            L5_2(L6_2, L7_2)
            L5_2 = DeletePed
            L6_2 = Uccellini
            L6_2 = L6_2[L4_2]
            L6_2 = L6_2.palla
            L5_2(L6_2)
          end
        end
      end
    end
    L1_2 = funi
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = funi
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = funi
      L1_2(L2_2)
    end
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
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
  L9_2 = L6_2 - 150.0
  L7_2(L8_2, L9_2)
end
makeEntityFaceEntity2 = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
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
    L2_3 = 1500
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
PlayEffectGhost = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetEntityCoords
  L1_2 = myGhost
  L0_2 = L0_2(L1_2)
  L1_2 = SetEntityAsMissionEntity
  L2_2 = myGhost
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = PlayEffectGhost
  L2_2 = "core"
  L3_2 = "ent_dst_electrical"
  L4_2 = vector3
  L5_2 = L0_2.x
  L6_2 = L0_2.y
  L7_2 = L0_2.z
  L7_2 = L7_2 + 0.3
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 2.5
  L6_2 = 1.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DeleteEntity
  L2_2 = myGhost
  L1_2(L2_2)
  myGhost = nil
  L1_2 = ExecuteCommand
  L2_2 = "e malditesta8"
  L1_2(L2_2)
end
L10_1 = RegisterCommand
L11_1 = "ghost"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = myGhost
  if L3_2 then
    L3_2 = L9_1
    L3_2()
  else
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    while true do
      L4_2 = IsPedGettingUp
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = IsPedRagdoll
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          L4_2 = IsPedFatallyInjured
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if not L4_2 then
            L4_2 = GetEntitySpeed
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            if not (L4_2 > 0) then
              L4_2 = IsEntityAttached
              L5_2 = L3_2
              L4_2 = L4_2(L5_2)
              if not L4_2 then
                break
              end
            end
          end
        end
      end
      L4_2 = Wait
      L5_2 = 25
      L4_2(L5_2)
    end
    L4_2 = RequestModelStriano
    L5_2 = -117527142
    L4_2(L5_2)
    L4_2 = GetEntityCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetEntityForwardVector
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = table
    L6_2 = L6_2.unpack
    L7_2 = L5_2 * 1.5
    L7_2 = L4_2 + L7_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L9_2 = exports
    L9_2 = L9_2.striano_combat
    L10_2 = L9_2
    L9_2 = L9_2.e_shareSound
    L11_2 = "sounds/striano_combat/magic/soulsteal"
    L12_2 = 0.1
    L13_2 = L3_2
    L14_2 = 3.0
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = PlayEffectGhost
    L10_2 = "core"
    L11_2 = "ent_ray_prologue_elec_crackle"
    L12_2 = vector3
    L13_2 = L6_2
    L14_2 = L7_2
    L15_2 = L8_2 - 1.5
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = 2.5
    L14_2 = 1.5
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = CreateObject
    L10_2 = -117527142
    L11_2 = L6_2
    L12_2 = L7_2
    L13_2 = L8_2 - 1.2
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    myGhost = L9_2
    L9_2 = FreezeEntityPosition
    L10_2 = myGhost
    L11_2 = true
    L9_2(L10_2, L11_2)
    L9_2 = SetEntityAlpha
    L10_2 = myGhost
    L11_2 = 150
    L9_2(L10_2, L11_2)
    L9_2 = SetEntityCollision
    L10_2 = myGhost
    L11_2 = false
    L12_2 = false
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = SetModelAsNoLongerNeeded
    L10_2 = -117527142
    L9_2(L10_2)
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = 0
      while true do
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = DoesEntityExist
        L2_3 = myGhost
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          return
        end
        L1_3 = makeEntityFaceEntity2
        L2_3 = myGhost
        L3_3 = L3_2
        L1_3(L2_3, L3_3)
        L1_3 = GetEntityCoords
        L2_3 = L3_2
        L1_3 = L1_3(L2_3)
        L2_3 = GetEntityCoords
        L3_3 = myGhost
        L2_3 = L2_3(L3_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        if L1_3 > 10.0 then
          L1_3 = L9_1
          L1_3()
          return
        end
      end
    end
    L9_2(L10_2)
    L9_2 = ExecuteCommand
    L10_2 = "e oddio"
    L9_2(L10_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2
  while true do
    L0_2 = NetworkGetTargetingMode
    L0_2 = L0_2()
    if 3 ~= L0_2 then
      L0_2 = SetPlayerTargetingMode
      L1_2 = 3
      L0_2(L1_2)
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
    L0_2 = Wait
    L1_2 = 200
    L0_2(L1_2)
  end
end
L10_1(L11_1)
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetSelectedPedWeapon
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = SetPedConfigFlag
    L3_2 = L0_2
    L4_2 = 43
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    if 0 ~= L1_2 and -1569615261 ~= L1_2 then
      L2_2 = GetLockonDistanceOfCurrentPedWeapon
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L3_2 = 500.0
      if L2_2 > L3_2 then
        L3_2 = PlayerId
        L3_2 = L3_2()
        L4_2 = SetPlayerLockon
        L5_2 = L3_2
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = SetPlayerLockonRangeOverride
        L5_2 = L3_2
        L6_2 = -1.0
        L4_2(L5_2, L6_2)
      end
    end
    L2_2 = Wait
    L3_2 = 2500
    L2_2(L3_2)
  end
end
L10_1(L11_1)
L10_1 = RegisterNetEvent
L11_1 = "AggiornaPedCopia"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L3_2 == A2_2 then
  elseif A1_2 then
    L3_2 = A1_2
    L4_2 = 0
    while true do
      L5_2 = NetworkDoesEntityExistWithNetworkId
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if not (not L5_2 and L4_2 < 100) then
        break
      end
      L4_2 = L4_2 + 1
      L5_2 = Wait
      L6_2 = 1
      L5_2(L6_2)
    end
    L5_2 = 0
    while true do
      L6_2 = NetworkDoesNetworkIdExist
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      if not (not L6_2 and L5_2 < 100) then
        break
      end
      L5_2 = L5_2 + 1
      L6_2 = Wait
      L7_2 = 1
      L6_2(L7_2)
    end
    L6_2 = NetworkDoesNetworkIdExist
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = NetworkDoesEntityExistWithNetworkId
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = NetToPed
        L7_2 = A1_2
        L6_2 = L6_2(L7_2)
        L7_2 = DoesEntityExist
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = exports
          L7_2 = L7_2.skinchanger
          L8_2 = L7_2
          L7_2 = L7_2.applicaUnaSkin
          L9_2 = A0_2
          L10_2 = L6_2
          L7_2(L8_2, L9_2, L10_2)
        else
        end
      else
      end
    end
  end
end
L10_1(L11_1, L12_1)
