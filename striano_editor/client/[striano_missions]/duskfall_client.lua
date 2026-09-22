local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1
L0_1 = vector3
L1_1 = 3940.186
L2_1 = 7494.51
L3_1 = 1.058
L0_1 = L0_1(L1_1, L2_1, L3_1)
duskmodepos = L0_1
maxManaGlobal = 100
L0_1 = false
L1_1 = 0
L2_1 = 0
L3_1 = 500
L4_1 = "left"
L5_1 = "exploration"
L6_1 = {}
L7_1 = {}
L8_1 = ipairs
L9_1 = Firearms
L8_1, L9_1, L10_1, L11_1 = L8_1(L9_1)
for L12_1, L13_1 in L8_1, L9_1, L10_1, L11_1 do
  L7_1[L13_1] = true
end
L8_1 = RegisterNetEvent
L9_1 = "sod:loadout:enforce"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L6_1 = L1_2
  L1_2 = ipairs
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_1
    L7_2[L6_2] = true
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = RemoveAllPedWeapons
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = L6_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GiveWeaponToPed
    L9_2 = L1_2
    L10_2 = L6_2
    L11_2 = 250
    L12_2 = false
    L13_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = SetCurrentPedWeapon
    L9_2 = L1_2
    L10_2 = L6_2
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "striano_missions:setHUDPosition"
function L10_1(A0_2)
  local L1_2, L2_2
  if A0_2 and ("left" == A0_2 or "center" == A0_2 or "right" == A0_2) then
    L4_1 = A0_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "setHUDPosition"
    L2_2.position = A0_2
    L1_2(L2_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = "hudoff2"
function L10_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.hideHealthBar
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "hideManaBar"
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = "hudon2"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.showHealthBar
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "showManaBar"
  L2_2 = maxManaGlobal
  L1_2.maxMana = L2_2
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "striano_missions:updateMana"
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.getMana
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = "hidemana"
function L10_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "hideManaBar"
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = "showMana"
function L10_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "hideManaBar"
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "striano_missions:setHUDVisibility"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = A0_2.visible
    if nil ~= L1_2 then
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.type = "setHUDVisibility"
      L3_2 = A0_2.visible
      L2_2.visible = L3_2
      L1_2(L2_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "striano_missions:initHUD"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "showHUD"
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.showHealthBar
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.getliferank
  L0_2 = L0_2(L1_2)
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.getliferank
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2.striano_editor
  L3_2 = L2_2
  L2_2 = L2_2.updateMaxHealth
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "setHUDPosition"
  L3_2.position = "left"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 2000
  L0_2(L1_2)
  while true do
    L0_2 = IsInPowerSavingMode
    L0_2 = L0_2()
    if not L0_2 then
      break
    end
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.draw
    L2_2 = -1
    L3_2 = "focus..."
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  while true do
    L0_2 = IsPauseMenuActive
    L0_2 = L0_2()
    if not L0_2 then
      break
    end
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.draw
    L2_2 = -1
    L3_2 = "pause..."
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  while true do
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.draw
    L2_2 = -1
    L3_2 = "session..."
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    if nil ~= L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = TriggerEvent
  L1_2 = "striano_missions:initHUD"
  L0_2(L1_2)
end
L8_1(L9_1)
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = StartParticleFxLoopedAtCoord
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = L4_2
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  return L5_2
end
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_core
    if L0_2 then
      L0_2 = type
      L1_2 = exports
      L1_2 = L1_2.striano_core
      L1_2 = L1_2.gettutorial
      L0_2 = L0_2(L1_2)
      if "function" == L0_2 then
        goto lbl_17
      end
    end
  end
  L0_2 = true
  do return L0_2 end
  ::lbl_17::
  L0_2 = false
  L1_2 = pcall
  function L2_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_core
    L1_3 = L0_3
    L0_3 = L0_3.gettutorial
    L0_3 = L0_3(L1_3)
    L0_2 = L0_3
  end
  L1_2(L2_2)
  if L0_2 then
    L1_2 = true
    if L1_2 then
      goto lbl_27
    end
  end
  L1_2 = false
  ::lbl_27::
  return L1_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = NetworkResurrectLocalPlayer
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L5_2 = A0_2.head
  L6_2 = true
  L7_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = SetEntityCoordsNoOffset
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L6_2 = false
  L7_2 = false
  L8_2 = false
  L9_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = SetEntityHeading
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2.head
  L1_2(L2_2, L3_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 25
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "loadtattoo"
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
RespawnPed = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = 0.55
  if nil ~= A4_2 then
    L5_2 = A4_2
  end
  L6_2 = World3dToScreen2d
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L9_2 = SetTextScale
    L10_2 = L5_2
    L11_2 = L5_2
    L9_2(L10_2, L11_2)
    L9_2 = SetTextFont
    L10_2 = 4
    L9_2(L10_2)
    L9_2 = SetTextProportional
    L10_2 = 1
    L9_2(L10_2)
    L9_2 = SetTextColour
    L10_2 = 255
    L11_2 = 255
    L12_2 = 255
    L13_2 = 200
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = SetTextEntry
    L10_2 = "STRING"
    L9_2(L10_2)
    L9_2 = SetTextOutline
    L9_2()
    L9_2 = AddTextComponentString
    L10_2 = A3_2
    L9_2(L10_2)
    L9_2 = DrawText
    L10_2 = L7_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
DrawText3D = L10_1
L10_1 = 0
L11_1 = {}
L12_1 = false
L13_1 = 80.0
L14_1 = 0
L15_1 = 0
L16_1 = false
L17_1 = false
L18_1 = false
L19_1 = 0
L20_1 = false
L21_1 = false
L22_1 = nil
L23_1 = false
L24_1 = AddEventHandler
L25_1 = "gameEventTriggered"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if "CEventNetworkEntityDamage" == A0_2 then
    L2_2 = A1_2[1]
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    if L2_2 == L3_2 then
      L3_2 = GetPedLastDamageBone
      L4_2 = L2_2
      L3_2, L4_2 = L3_2(L4_2)
      if L4_2 and 31086 == L3_2 then
        L5_2 = true
        L23_1 = L5_2
      end
    end
  end
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "induskfalls"
function L26_1()
  local L0_2, L1_2
  L0_2 = L16_1
  return L0_2
end
L24_1(L25_1, L26_1)
L24_1 = 150.0
L25_1 = 60
function L26_1(A0_2, A1_2, A2_2)
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
GetGroundZUltra = L26_1
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = 0
  L3_2 = L13_1
  if not L3_2 then
    L3_2 = 2000.0
  end
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L2_3 = GetSafeCoordForPed
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = 1000.0
    L6_3 = true
    L7_3 = 0
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    if L2_3 and L5_3 then
      L6_3 = L3_2
      if L5_3 < L6_3 and L5_3 > 0.0 then
        L6_3 = vector3
        L7_3 = L3_3
        L8_3 = L4_3
        L9_3 = L5_3 + 0.1
        return L6_3(L7_3, L8_3, L9_3)
      end
    end
    L6_3 = {}
    L7_3 = 1000.0
    L8_3 = 300.0
    L9_3 = 120.0
    L10_3 = 80.0
    L11_3 = 50.0
    L12_3 = 30.0
    L13_3 = 5.0
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L6_3[4] = L10_3
    L6_3[5] = L11_3
    L6_3[6] = L12_3
    L6_3[7] = L13_3
    L7_3 = ipairs
    L8_3 = L6_3
    L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
    for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
      L13_3 = RequestCollisionAtCoord
      L14_3 = A0_3
      L15_3 = A1_3
      L16_3 = L12_3
      L13_3(L14_3, L15_3, L16_3)
      L13_3 = GetGroundZUltra
      L14_3 = A0_3
      L15_3 = A1_3
      L16_3 = L12_3
      L17_3 = true
      L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3)
      if L13_3 then
        L14_3 = L3_2
        if L13_3 < L14_3 and L13_3 > 0 then
          L14_3 = vector3
          L15_3 = A0_3
          L16_3 = A1_3
          L17_3 = L13_3 + 0.1
          L14_3, L15_3, L16_3, L17_3, L18_3 = L14_3(L15_3, L16_3, L17_3)
          return L14_3, L15_3, L16_3, L17_3, L18_3
        end
      end
      L14_3 = Wait
      L15_3 = 0
      L14_3(L15_3)
    end
    L7_3 = vector3
    L8_3 = A0_3
    L9_3 = A1_3
    L10_3 = 1000.0
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L8_3 = vector3
    L9_3 = A0_3
    L10_3 = A1_3
    L11_3 = -100.0
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L9_3 = StartShapeTestRay
    L10_3 = L7_3.x
    L11_3 = L7_3.y
    L12_3 = L7_3.z
    L13_3 = L8_3.x
    L14_3 = L8_3.y
    L15_3 = L8_3.z
    L16_3 = 1
    L17_3 = 0
    L18_3 = 7
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    L10_3 = GetShapeTestResult
    L11_3 = L9_3
    L10_3, L11_3, L12_3, L13_3, L14_3 = L10_3(L11_3)
    if 1 == L11_3 and L14_3 then
      L15_3 = L3_2
      if L14_3 < L15_3 and L12_3 > 0 then
        L15_3 = vector3
        L16_3 = L12_3
        L17_3 = L13_3
        L18_3 = L14_3 + 0.1
        return L15_3(L16_3, L17_3, L18_3)
      end
    end
    L15_3 = nil
    return L15_3
  end
  while true do
    L2_2 = L2_2 + 1
    L5_2 = math
    L5_2 = L5_2.random
    L5_2 = L5_2()
    L6_2 = math
    L6_2 = L6_2.pi
    L5_2 = L5_2 * L6_2
    L5_2 = L5_2 * 2.0
    L6_2 = math
    L6_2 = L6_2.sqrt
    L7_2 = math
    L7_2 = L7_2.random
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L6_2 = L6_2 * A1_2
    L7_2 = A0_2.x
    L8_2 = math
    L8_2 = L8_2.cos
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * L6_2
    L7_2 = L7_2 + L8_2
    L8_2 = A0_2.y
    L9_2 = math
    L9_2 = L9_2.sin
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 * L6_2
    L8_2 = L8_2 + L9_2
    L9_2 = L4_2
    L10_2 = L7_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L10_2 = RequestCollisionAtCoord
      L11_2 = L9_2.x
      L12_2 = L9_2.y
      L13_2 = L9_2.z
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = PlayerPedId
      L10_2 = L10_2()
      L11_2 = 1
      L12_2 = 30
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        if 0 ~= L10_2 then
          L15_2 = HasCollisionLoadedAroundEntity
          L16_2 = L10_2
          L15_2 = L15_2(L16_2)
          if L15_2 then
            break
          end
        end
        L15_2 = Wait
        L16_2 = 0
        L15_2(L16_2)
      end
      return L9_2
    end
    L10_2 = L2_2 % 10
    if 0 == L10_2 then
      L10_2 = Wait
      L11_2 = 0
      L10_2(L11_2)
    end
    L10_2 = L2_2 % 60
    if 0 == L10_2 then
      A1_2 = A1_2 + 5.0
    end
  end
end
L27_1 = {}
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = math
  L4_2 = L4_2.sqrt
  L5_2 = L2_2 * L2_2
  L6_2 = L3_2 * L3_2
  L5_2 = L5_2 + L6_2
  return L4_2(L5_2)
end
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = -1
  L3_2 = ipairs
  L4_2 = posSecolari
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L28_1
    L10_2 = A0_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L2_2 < L9_2 then
      L2_2 = L9_2
      L1_2 = L7_2
    end
  end
  L3_2 = L1_2
  L4_2 = posSecolari
  L4_2 = L4_2[L1_2]
  L5_2 = L2_2
  return L3_2, L4_2, L5_2
end
GetFarthestTree = L29_1
L29_1 = {}
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = 0
  L1_2 = 0
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = L29_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.qt
    if 1 == L9_2 then
      L0_2 = L0_2 + 1
    else
      L9_2 = L8_2.qt
      if 2 == L9_2 then
        L1_2 = L1_2 + 1
      else
        L9_2 = L8_2.qt
        if 3 == L9_2 then
          L2_2 = L2_2 + 1
        end
      end
    end
  end
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = L29_1
  L5_2 = #L5_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = print
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "[SonsOfDecadence] Distribuzione: 1=%d (%.1f%%), 2=%d (%.1f%%), 3-5=%d (%.1f%%)"
  L7_2 = L0_2
  L8_2 = L0_2 / L3_2
  L8_2 = L8_2 * 100.0
  L9_2 = L1_2
  L10_2 = L1_2 / L3_2
  L10_2 = L10_2 * 100.0
  L11_2 = L2_2
  L12_2 = L2_2 / L3_2
  L12_2 = L12_2 * 100.0
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = 1
  if nil ~= A1_2 then
    L2_2 = 2
  end
  L3_2 = "cut_sil"
  L4_2 = RequestNamedPtfxAsset
  L5_2 = L3_2
  L4_2(L5_2)
  while true do
    L4_2 = HasNamedPtfxAssetLoaded
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = UseParticleFxAssetNextCall
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = StartParticleFxLoopedAtCoord
  L5_2 = "cs_xm_pred_cloak_startup"
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L9_2 = 3.0
  L9_2 = L9_2 / L2_2
  L8_2 = L8_2 + L9_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 5.0
  L12_2 = L12_2 / L2_2
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L27_1
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = StartParticleFxLoopedAtCoord
  L6_2 = "cs_xm_pred_cloak_startup"
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L10_2 = 3.5
  L10_2 = L10_2 / L2_2
  L9_2 = L9_2 + L10_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 2.0
  L13_2 = L13_2 / L2_2
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L27_1
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = "scr_xm_heat"
  L7_2 = RequestNamedPtfxAsset
  L8_2 = L6_2
  L7_2(L8_2)
  while true do
    L7_2 = HasNamedPtfxAssetLoaded
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = UseParticleFxAssetNextCall
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = StartParticleFxLoopedAtCoord
  L8_2 = "scr_xm_heat_camo"
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = A0_2.z
  L12_2 = 7.0
  L12_2 = L12_2 / L2_2
  L11_2 = L11_2 + L12_2
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 10.0
  L15_2 = L15_2 / L2_2
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = L27_1
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
Nube = L31_1
function L31_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = IsEntityPlayingAnim
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = A0_2
      L3_3 = A1_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 0
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 30
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 31
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 21
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 22
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 44
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 73
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L2_2(L3_2)
end
BloccaAnim = L31_1
L31_1 = RegisterCommand
L32_1 = "startduskfalls"
function L33_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerServerEvent
  L1_2 = "addfeed"
  L2_2 = "Duskfalls (AvA) starting in 9 sec."
  L3_2 = 10000
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Wait
  L1_2 = 9000
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "INIZIADUSK"
  L0_2(L1_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "INIZIADUSK"
L31_1(L32_1)
L31_1 = AddEventHandler
L32_1 = "INIZIADUSK"
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = L18_1
  if L0_2 then
    L0_2 = TriggerEvent
    L1_2 = "dropHorse"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = ""
    L0_2(L1_2, L2_2)
    L0_2 = StartDuskfalls
    L0_2()
    L0_2 = false
    L18_1 = L0_2
  end
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "duskfalls:statsSync"
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetPlayerServerId
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = print
  L3_2 = "[DEBUG] Sync stats for me (ID %s): K=%d | D=%d"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = L1_2
  L6_2 = A0_2.kills
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = A0_2.death
  if not L7_2 then
    L7_2 = 0
  end
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "duskfalls:debugKill"
function L33_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetWeaponName
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerName
  L5_2 = GetPlayerFromServerId
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L4_2 then
    L4_2 = "?"
  end
  L5_2 = GetPlayerName
  L6_2 = GetPlayerFromServerId
  L7_2 = A1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L5_2 then
    L5_2 = "?"
  end
  L6_2 = print
  L7_2 = "[DEBUG] %s (%s) kill %s (%s) -> %s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L4_2
  L10_2 = A0_2
  L11_2 = L5_2
  L12_2 = A1_2
  L13_2 = L3_2 or L13_2
  if not L3_2 then
    L13_2 = "?"
  end
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L31_1(L32_1, L33_1)
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = math
  L0_2 = L0_2.randomseed
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 & 2147483647
  L0_2(L1_2)
  L0_2 = L16_1
  if not L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.type = "hideManaBar"
    L0_2(L1_2)
    L0_2 = print
    L1_2 = "Duskfalls started!"
    L0_2(L1_2)
    L0_2 = ExecuteCommand
    L1_2 = "hudcenter"
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = DoScreenFadeOut
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = ExecuteCommand
    L2_2 = "detachme"
    L1_2(L2_2)
    L1_2 = SetPedCanRagdoll
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SetPlayerFallDistance
    L2_2 = PlayerId
    L2_2 = L2_2()
    L3_2 = 8.0
    L1_2(L2_2, L3_2)
    L1_2 = SetPedConfigFlag
    L2_2 = L0_2
    L3_2 = 164
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = HudWeaponWheelIgnoreSelection
    L2_2 = false
    L1_2(L2_2)
    L1_2 = SetPedCanSwitchWeapon
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = exports
    L1_2 = L1_2.striano_inventory
    L2_2 = L1_2
    L1_2 = L1_2.duskevent_on
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2.text_guide
    L2_2 = L1_2
    L1_2 = L1_2.ClearGuideText
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2.text_guide
    L2_2 = L1_2
    L1_2 = L1_2.GuidaNascondi
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.delallarmi
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2.striano_editor
    L2_2 = L1_2
    L1_2 = L1_2.updateKD
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = exports
    L1_2 = L1_2.striano_editor
    L2_2 = L1_2
    L1_2 = L1_2.updateKills
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = exports
    L1_2 = L1_2.striano_editor
    L2_2 = L1_2
    L1_2 = L1_2.updateDeaths
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = TriggerEvent
    L2_2 = "xnTattoos:resetsporco"
    L1_2(L2_2)
    L1_2 = "HALLOWEEN"
    L2_2 = SetWeatherTypeNowPersist
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = ClearOverrideWeather
    L2_2()
    L2_2 = ClearWeatherTypePersist
    L2_2()
    L2_2 = SetWeatherTypePersist
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = SetWeatherTypeNow
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = SetWeatherTypeNowPersist
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = NetworkOverrideClockTime
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetTimecycleModifier
    L3_2 = "V_FIB_stairs"
    L2_2(L3_2)
    L2_2 = SetTimecycleModifierStrength
    L3_2 = 1.0
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 2500
    L2_2(L3_2)
    L2_2 = SetPedMaxHealth
    L3_2 = L0_2
    L4_2 = 500
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityHealth
    L3_2 = L0_2
    L4_2 = 500
    L2_2(L3_2, L4_2)
    L2_2 = RemoveAllPedWeapons
    L3_2 = L0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetCurrentPedWeapon
    L3_2 = L0_2
    L4_2 = -1569615261
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = true
    L16_1 = L2_2
    L2_2 = ExecuteCommand
    L3_2 = "hudoff"
    L2_2(L3_2)
    L2_2 = L26_1
    L3_2 = mapCenter
    L4_2 = L24_1
    L5_2 = L24_1
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 - 15
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = SetEntityCoords
    L4_2 = L0_2
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L11_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2 = "bowdown@kneeling"
    L4_2 = "base"
    L5_2 = faiAnim
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = -1
    L9_2 = 1
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = Wait
    L6_2 = 25
    L5_2(L6_2)
    L5_2 = BloccaAnim
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 500
    L5_2(L6_2)
    L5_2 = DoScreenFadeIn
    L6_2 = 1000
    L5_2(L6_2)
    L5_2 = exports
    L5_2 = L5_2.striano_editor
    L6_2 = L5_2
    L5_2 = L5_2.updateMaxHealth
    L7_2 = 500
    L5_2(L6_2, L7_2)
    L5_2 = SetPedMaxHealth
    L6_2 = L0_2
    L7_2 = 500
    L5_2(L6_2, L7_2)
    L5_2 = SetEntityHealth
    L6_2 = L0_2
    L7_2 = 500
    L5_2(L6_2, L7_2)
    L5_2 = L8_1
    L6_2 = "cut_josh_4"
    L7_2 = "scr_josh3_house_smoked"
    L8_2 = L2_2
    L9_2 = 2.5
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = CreateThread
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = StopParticleFxLooped
      L1_3 = L5_2
      L0_3(L1_3)
      L0_3 = RemoveParticleFx
      L1_3 = L5_2
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L6_2(L7_2)
    function L6_2(A0_3, A1_3, A2_3, A3_3)
      local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = A2_3
      L6_3 = GetWeaponName
      if L6_3 then
        L6_3 = GetWeaponName
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          goto lbl_13
        end
      end
      L6_3 = nil
      ::lbl_13::
      L7_3 = GetEntityCoords
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      if A1_3 then
        L8_3 = GetEntityCoords
        L9_3 = GetPlayerPed
        L10_3 = A1_3
        L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L9_3(L10_3)
        L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        if L8_3 then
          goto lbl_26
        end
      end
      L8_3 = L7_3
      ::lbl_26::
      L9_3 = L7_3 - L8_3
      L9_3 = #L9_3
      L10_3 = print
      L11_3 = "DUSKFALLS - Ucciso da ID: %s"
      L12_3 = L11_3
      L11_3 = L11_3.format
      L13_3 = A0_3
      L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L11_3(L12_3, L13_3)
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L10_3 = TriggerServerEvent
      L11_3 = "duskfalls:kills"
      L12_3 = A0_3
      L13_3 = L5_3
      L14_3 = A3_3
      L15_3 = L6_3
      L16_3 = L23_1
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L10_3 = false
      L23_1 = L10_3
    end
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = A0_3
      L3_3 = GetWeaponName
      if L3_3 then
        L3_3 = GetWeaponName
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        if L3_3 then
          goto lbl_13
        end
      end
      L3_3 = nil
      ::lbl_13::
      L4_3 = GetEntityCoords
      L5_3 = L1_3
      L4_3 = L4_3(L5_3)
      L5_3 = TriggerServerEvent
      L6_3 = "duskfalls:kills"
      L7_3 = nil
      L8_3 = L2_3
      L9_3 = L14_1
      L10_3 = L3_3
      L11_3 = L23_1
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L5_3 = false
      L23_1 = L5_3
    end
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      while true do
        L0_3 = L16_1
        if not L0_3 then
          break
        end
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = IsEntityVisible
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = L9_1
          L1_3 = L1_3()
          if L1_3 then
            L1_3 = IsPedFatallyInjured
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = L12_1
              if not L1_3 then
                L1_3 = true
                L12_1 = L1_3
                L1_3 = GetPedSourceOfDeath
                L2_3 = L0_3
                L1_3 = L1_3(L2_3)
                L2_3 = GetPedCauseOfDeath
                L3_3 = L0_3
                L2_3 = L2_3(L3_3)
                L3_3 = nil
                L4_3 = nil
                if 0 ~= L1_3 then
                  L5_3 = DoesEntityExist
                  L6_3 = L1_3
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = IsEntityAPed
                    L6_3 = L1_3
                    L5_3 = L5_3(L6_3)
                    if L5_3 then
                      L5_3 = IsPedAPlayer
                      L6_3 = L1_3
                      L5_3 = L5_3(L6_3)
                      if L5_3 then
                        L5_3 = NetworkGetPlayerIndexFromPed
                        L6_3 = L1_3
                        L5_3 = L5_3(L6_3)
                        L3_3 = L5_3
                    end
                    else
                      L5_3 = IsEntityAVehicle
                      L6_3 = L1_3
                      L5_3 = L5_3(L6_3)
                      if L5_3 then
                        L5_3 = GetPedInVehicleSeat
                        L6_3 = L1_3
                        L7_3 = -1
                        L5_3 = L5_3(L6_3, L7_3)
                        if 0 ~= L5_3 then
                          L6_3 = IsPedAPlayer
                          L7_3 = L5_3
                          L6_3 = L6_3(L7_3)
                          if L6_3 then
                            L6_3 = NetworkGetPlayerIndexFromPed
                            L7_3 = L5_3
                            L6_3 = L6_3(L7_3)
                            L3_3 = L6_3
                          end
                        end
                      end
                    end
                  end
                end
                if L3_3 then
                  L5_3 = NetworkIsPlayerActive
                  L6_3 = L3_3
                  L5_3 = L5_3(L6_3)
                  if L5_3 then
                    L5_3 = GetPlayerServerId
                    L6_3 = L3_3
                    L5_3 = L5_3(L6_3)
                    L4_3 = L5_3
                  end
                end
                L5_3 = GetPlayerServerId
                L6_3 = PlayerId
                L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3()
                L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
                if L4_3 and L4_3 ~= L5_3 then
                  L6_3 = L6_2
                  L7_3 = L4_3
                  L8_3 = L3_3
                  L9_3 = L2_3
                  L10_3 = L14_1
                  L6_3(L7_3, L8_3, L9_3, L10_3)
                else
                  L6_3 = L7_2
                  L7_3 = L2_3
                  L6_3(L7_3)
                end
              end
            else
              L1_3 = L12_1
              if L1_3 then
                L1_3 = false
                L12_1 = L1_3
              end
            end
          end
        end
        L1_3 = Wait
        L2_3 = 250
        L1_3(L2_3)
      end
    end
    L8_2(L9_2)
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = 0.1
      while true do
        L2_3 = L16_1
        if not L2_3 then
          break
        end
        L1_3 = L1_3 - 0.001
        L2_3 = 0.01
        if L1_3 < L2_3 then
          L1_3 = 0.01
        end
        L2_3 = ShakeGameplayCam
        L3_3 = "SMALL_EXPLOSION_SHAKE"
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        L2_3 = L2_3 - L0_3
        L3_3 = 5000
        if L2_3 > L3_3 then
          L2_3 = StopGameplayCamShaking
          L3_3 = true
          L2_3(L3_3)
          return
        end
        L2_3 = Wait
        L3_3 = 75
        L2_3(L3_3)
      end
    end
    L8_2(L9_2)
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      while true do
        L0_3 = L16_1
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = pairs
        L2_3 = L7_1
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_1
          L7_3 = L7_3[L5_3]
          if not L7_3 then
            L7_3 = HasPedGotWeapon
            L8_3 = L0_3
            L9_3 = L5_3
            L10_3 = false
            L7_3 = L7_3(L8_3, L9_3, L10_3)
            if L7_3 then
              L7_3 = RemoveWeaponFromPed
              L8_3 = L0_3
              L9_3 = L5_3
              L7_3(L8_3, L9_3)
            end
          end
        end
      end
    end
    L8_2(L9_2)
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
      while true do
        L0_3 = L16_1
        if not L0_3 then
          break
        end
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = false
        L3_3 = ipairs
        L4_3 = L11_1
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          if L8_3 then
            L9_3 = vector3
            L10_3 = L8_3.x
            L11_3 = L8_3.y
            L12_3 = L8_3.z
            L9_3 = L9_3(L10_3, L11_3, L12_3)
            if L8_3 then
              L10_3 = L1_3 - L9_3
              L10_3 = #L10_3
              L11_3 = 1.5
              if L10_3 < L11_3 then
                L10_3 = GetTrapped
                L11_3 = L8_3.tipo
                L12_3 = L9_3
                L10_3(L11_3, L12_3)
                L10_3 = TriggerServerEvent
                L11_3 = "removeTrap"
                L12_3 = L8_3.id
                L10_3(L11_3, L12_3)
                L10_3 = table
                L10_3 = L10_3.remove
                L11_3 = L11_1
                L12_3 = L7_3
                L10_3(L11_3, L12_3)
                break
              end
            end
            if L8_3 then
              L10_3 = L1_3 - L9_3
              L10_3 = #L10_3
              if L10_3 < 20.0 then
                L2_3 = true
                L10_3 = L8_3.owner
                L11_3 = GetPlayerServerId
                L12_3 = PlayerId
                L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L12_3()
                L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                if L10_3 == L11_3 then
                  L10_3 = DrawText3D
                  L11_3 = L8_3.x
                  L12_3 = L8_3.y
                  L13_3 = L8_3.z
                  L13_3 = L13_3 + 0.9
                  L14_3 = "~r~~h~TRAP"
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                  L10_3 = DrawMarker
                  L11_3 = 1
                  L12_3 = L9_3.x
                  L13_3 = L9_3.y
                  L14_3 = L9_3.z
                  L14_3 = L14_3 - 2.0
                  L15_3 = 0.0
                  L16_3 = 0.0
                  L17_3 = 0.0
                  L18_3 = 0.0
                  L19_3 = 0.0
                  L20_3 = 0.0
                  L21_3 = 2.0
                  L22_3 = 2.0
                  L23_3 = 25.0
                  L24_3 = 255
                  L25_3 = 0
                  L26_3 = 0
                  L27_3 = 150
                  L28_3 = false
                  L29_3 = true
                  L30_3 = 2
                  L31_3 = false
                  L32_3 = nil
                  L33_3 = nil
                  L34_3 = false
                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                end
              end
            end
          end
        end
        if L2_3 then
          L3_3 = Wait
          L4_3 = 0
          L3_3(L4_3)
        else
          L3_3 = Wait
          L4_3 = 150
          L3_3(L4_3)
        end
      end
    end
    L8_2(L9_2)
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      while true do
        L0_3 = L16_1
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetSelectedPedWeapon
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = GetAmmoInPedWeapon
        L3_3 = L0_3
        L4_3 = L1_3
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = IsPedShooting
        L4_3 = L0_3
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          L3_3 = IsControlJustPressed
          L4_3 = 0
          L5_3 = 24
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_48
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 25
          L3_3 = L3_3(L4_3, L5_3)
          if not (L3_3 and L2_3 > 0) then
            goto lbl_48
          end
        end
        L3_3 = GetGameTimer
        L3_3 = L3_3()
        L4_3 = L2_1
        L4_3 = L3_3 - L4_3
        L5_3 = L3_1
        if L4_3 > L5_3 then
          L2_1 = L3_3
          L4_3 = TriggerServerEvent
          L5_3 = "sod:reveal:ping"
          L6_3 = "shoot"
          L4_3(L5_3, L6_3)
        end
        ::lbl_48::
        L3_3 = IsPedSprinting
        L4_3 = L0_3
        L3_3 = L3_3(L4_3)
        if L3_3 then
          L3_3 = GetGameTimer
          L3_3 = L3_3()
          L4_3 = L2_1
          L4_3 = L3_3 - L4_3
          L5_3 = L3_1
          if L4_3 > L5_3 then
            L2_1 = L3_3
            L4_3 = TriggerServerEvent
            L5_3 = "sod:reveal:ping"
            L6_3 = "run"
            L4_3(L5_3, L6_3)
          end
        end
      end
    end
    L8_2(L9_2)
    L8_2 = 1
    L9_2 = L27_1
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = StopParticleFxLooped
      L13_2 = L27_1
      L13_2 = L13_2[L11_2]
      L14_2 = 0
      L12_2(L13_2, L14_2)
      L12_2 = RemoveParticleFx
      L13_2 = L27_1
      L13_2 = L13_2[L11_2]
      L14_2 = true
      L12_2(L13_2, L14_2)
    end
    L8_2 = {}
    L27_1 = L8_2
    L8_2 = ipairs
    L9_2 = posSecolari
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = Nube
      L15_2 = L13_2
      L14_2(L15_2)
    end
    L8_2 = exports
    L8_2 = L8_2.xsound
    L9_2 = L8_2
    L8_2 = L8_2.PlayUrl
    L10_2 = "bgsoul"
    L11_2 = "sounds/striano_combat/magic/bgsoul.mp3"
    L12_2 = 0.1
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = ExecuteCommand
    L9_2 = "prova DuskFalls trema in attesa del tuo tributo..."
    L8_2(L9_2)
    L8_2 = Wait
    L9_2 = 5000
    L8_2(L9_2)
    L8_2 = ExecuteCommand
    L9_2 = "prova Trees need dusts..."
    L8_2(L9_2)
    L8_2 = NetworkOverrideClockTime
    L9_2 = 19
    L10_2 = 30
    L11_2 = 0
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = Wait
    L9_2 = 3500
    L8_2(L9_2)
    L8_2 = ExecuteCommand
    L9_2 = "prova Il Sacrificio ha inizio... sopravvivi ed alimenta la Fiamma Nera."
    L8_2(L9_2)
    L8_2 = ExecuteCommand
    L9_2 = "e alzati"
    L8_2(L9_2)
    L8_2 = StopParticleFxLooped
    L9_2 = L5_2
    L8_2(L9_2)
    L8_2 = RemoveParticleFx
    L9_2 = L5_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = 1
    L9_2 = L25_1
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L26_1
      L13_2 = mapCenter
      L14_2 = L24_1
      L15_2 = L24_1
      L14_2 = L14_2 + L15_2
      L14_2 = L14_2 - 15
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = math
      L13_2 = L13_2.random
      L14_2 = 1
      L15_2 = 5
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L29_1
      L16_2 = {}
      L16_2.pos = L12_2
      L16_2.fx = nil
      L16_2.qt = L13_2
      L14_2(L15_2, L16_2)
    end
    L8_2 = exports
    L8_2 = L8_2.striano_editor
    L9_2 = L8_2
    L8_2 = L8_2.showPointsDisplay
    L8_2(L9_2)
    L8_2 = exports
    L8_2 = L8_2.striano_editor
    L9_2 = L8_2
    L8_2 = L8_2.startTimer
    L8_2(L9_2)
    L8_2 = exports
    L8_2 = L8_2.striano_editor
    L9_2 = L8_2
    L8_2 = L8_2.updateMaxHealth
    L10_2 = 500
    L8_2(L9_2, L10_2)
    L8_2 = ipairs
    L9_2 = L29_1
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2.qt
      L14_2 = L14_2 / 3.5
      L15_2 = L13_2.qt
      if L15_2 > 1 then
        L15_2 = L13_2.qt
        L14_2 = L15_2 / 5.5
      end
      L15_2 = L8_1
      L16_2 = "core"
      L17_2 = "env_dust_devil_rural_sma"
      L18_2 = L13_2.pos
      L19_2 = L14_2 + 0.0
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      L13_2.fx = L15_2
      L15_2 = SetParticleFxLoopedAlpha
      L16_2 = L13_2.fx
      L17_2 = 0.7
      L15_2(L16_2, L17_2)
    end
    L8_2 = LoopHashes
    L8_2()
    L8_2 = Wait
    L9_2 = 5000
    L8_2(L9_2)
    L8_2 = exports
    L8_2 = L8_2.striano_combat
    L9_2 = L8_2
    L8_2 = L8_2.strianosetweapon
    L10_2 = 5
    L8_2(L9_2, L10_2)
    L8_2 = mostraAshInfo
    L8_2()
  else
    L0_2 = print
    L1_2 = "You are still in Duskfalls mode!"
    L0_2(L1_2)
  end
end
StartDuskfalls = L31_1
L31_1 = nil
L32_1 = false
L33_1 = false
function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = L14_1
  if 0 == L2_2 then
    L2_2 = true
    L32_1 = L2_2
  end
  L2_2 = L14_1
  L2_2 = L2_2 + 1
  L14_1 = L2_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Whoosh_1s_L_to_R"
  L5_2 = "MP_LOBBY_SOUNDS"
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_editor
  L3_2 = L2_2
  L2_2 = L2_2.setPoints
  L4_2 = L14_1
  L2_2(L3_2, L4_2)
  L2_2 = exports
  L2_2 = L2_2.striano_editor
  L3_2 = L2_2
  L2_2 = L2_2.showPointsDisplay
  L2_2(L3_2)
  L2_2 = A0_2.tolte
  if nil == L2_2 then
    A0_2.tolte = 0
  end
  L2_2 = A0_2.tolte
  L2_2 = L2_2 + 1
  A0_2.tolte = L2_2
  L2_2 = A0_2.tolte
  L3_2 = A0_2.qt
  if L2_2 >= L3_2 then
    L2_2 = L32_1
    if L2_2 then
      L2_2 = L33_1
      if not L2_2 then
        L2_2 = true
        L33_1 = L2_2
        L2_2 = ExecuteCommand
        L3_2 = "Collect Ashes for survival rewards and deliver them to the Ancient Trees! (Pink Circle Marker)"
        L2_2(L3_2)
        L2_2 = PlaySoundFrontend
        L3_2 = -1
        L4_2 = "Start_Squelch"
        L5_2 = "CB_RADIO_SFX"
        L6_2 = 1
        L2_2(L3_2, L4_2, L5_2, L6_2)
        L2_2 = "SNOWLIGHT"
        L3_2 = SetWeatherTypeNowPersist
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = ClearOverrideWeather
        L3_2()
        L3_2 = ClearWeatherTypePersist
        L3_2()
        L3_2 = SetWeatherTypePersist
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetWeatherTypeNow
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetWeatherTypeNowPersist
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = NetworkOverrideClockTime
        L4_2 = 19
        L5_2 = 10
        L6_2 = 0
        L3_2(L4_2, L5_2, L6_2)
      end
    end
    L2_2 = L1_1
    L2_2 = L2_2 + 1
    L1_1 = L2_2
    L2_2 = L0_1
    if not L2_2 then
      L2_2 = 0
      L1_1 = L2_2
      L2_2 = true
      L0_1 = L2_2
      L2_2 = TriggerServerEvent
      L3_2 = "sod:loadout:giveRandom"
      L2_2(L3_2)
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = ExecuteCommand
        L1_3 = "guardaArma"
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = GuidaDuskfallsTasti
        L0_3()
      end
      L2_2(L3_2)
      L2_2 = PlaySoundFrontend
      L3_2 = -1
      L4_2 = "PICK_UP_WEAPON"
      L5_2 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
      L6_2 = 1
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = MakePedReload
      L3_2 = ped
      L2_2(L3_2)
      L2_2 = RefillAmmoInstantly
      L3_2 = ped
      L2_2(L3_2)
    else
      L2_2 = OttieniTrappola
      L2_2()
    end
    L2_2 = L1_1
    if L2_2 >= 3 then
      L2_2 = 0
      L1_1 = L2_2
      L2_2 = TriggerServerEvent
      L3_2 = "sod:loadout:giveRandom"
      L2_2(L3_2)
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.fodera
      L2_2(L3_2)
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = ExecuteCommand
        L1_3 = "guardaArma"
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = GuidaDuskfallsTasti
        L0_3()
      end
      L2_2(L3_2)
      L2_2 = PlaySoundFrontend
      L3_2 = -1
      L4_2 = "PICK_UP_WEAPON"
      L5_2 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
      L6_2 = 1
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = MakePedReload
      L3_2 = ped
      L2_2(L3_2)
      L2_2 = RefillAmmoInstantly
      L3_2 = ped
      L2_2(L3_2)
    end
    L2_2 = ExecuteCommand
    L3_2 = "addsporco"
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "addsangue"
    L2_2(L3_2)
    L2_2 = 3
    L3_2 = 1
    L4_2 = L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = GetEntityCoords
      L8_2 = ped
      L7_2 = L7_2(L8_2)
      L8_2 = math
      L8_2 = L8_2.random
      L8_2 = L8_2()
      L8_2 = L8_2 - 0.05
      L9_2 = math
      L9_2 = L9_2.random
      L9_2 = L9_2()
      L9_2 = L9_2 - 0.05
      L10_2 = math
      L10_2 = L10_2.random
      L10_2 = L10_2()
      L10_2 = L10_2 * 0.9
      L11_2 = TriggerServerEvent
      L12_2 = "PlayEffectServer"
      L13_2 = {}
      L13_2.a = "core"
      L13_2.b = "blood_stab"
      L14_2 = vector3
      L15_2 = L7_2.x
      L15_2 = L15_2 + L8_2
      L16_2 = L7_2.y
      L16_2 = L16_2 + L9_2
      L17_2 = L7_2.z
      L17_2 = L17_2 - L10_2
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L13_2.pos = L14_2
      L13_2.s = 0.5
      L11_2(L12_2, L13_2)
      L11_2 = TriggerServerEvent
      L12_2 = "PlayEffectServer"
      L13_2 = {}
      L13_2.a = "core"
      L13_2.b = "blood_entry_sniper"
      L14_2 = vector3
      L15_2 = L7_2.x
      L15_2 = L15_2 + L8_2
      L16_2 = L7_2.y
      L16_2 = L16_2 + L9_2
      L17_2 = L7_2.z
      L17_2 = L17_2 - L10_2
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L13_2.pos = L14_2
      L13_2.s = 0.5
      L11_2(L12_2, L13_2)
    end
    L3_2 = SetParticleFxLoopedAlpha
    L4_2 = A0_2.fx
    L5_2 = 0.0
    L3_2(L4_2, L5_2)
    L3_2 = StopParticleFxLooped
    L4_2 = A0_2.fx
    L3_2(L4_2)
    L3_2 = RemoveParticleFx
    L4_2 = A0_2.fx
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = A0_2.pos
      L1_3 = L8_1
      L2_3 = "core"
      L3_3 = "exp_grd_plane_post"
      L4_3 = L0_3
      L5_3 = A0_2.qt
      L5_3 = L5_3 - 1.0
      L5_3 = L5_3 + 0.0
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L2_3 = Wait
      L3_3 = 900
      L2_3(L3_3)
      L2_3 = StopParticleFxLooped
      L3_3 = L1_3
      L2_3(L3_3)
      L2_3 = RemoveParticleFx
      L3_3 = L1_3
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = SetParticleFxLoopedAlpha
      L3_3 = A0_2.fx
      L4_3 = 1.0
      L2_3(L3_3, L4_3)
    end
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.xsound
    L4_2 = L3_2
    L3_2 = L3_2.PlayUrl
    L5_2 = "soulsteal"
    L6_2 = "sounds/striano_combat/magic/soulsteal.mp3"
    L7_2 = 0.1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = 0.05
      while true do
        L1_3 = L1_3 - 1.0E-4
        L2_3 = 0.001
        if L1_3 < L2_3 then
          L1_3 = 0.001
        end
        L2_3 = ShakeGameplayCam
        L3_3 = "SMALL_EXPLOSION_SHAKE"
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        L2_3 = L2_3 - L0_3
        L3_3 = 2000
        if L2_3 > L3_3 then
          L2_3 = StopGameplayCamShaking
          L3_3 = true
          L2_3(L3_3)
          return
        end
        L2_3 = Wait
        L3_3 = 75
        L2_3(L3_3)
      end
    end
    L3_2(L4_2)
    L3_2 = L32_1
    if not L3_2 then
      L3_2 = L33_1
      if L3_2 then
        L3_2 = OttieniTrappola
        L3_2()
      end
    end
    L3_2 = ExecuteCommand
    L4_2 = "e posatasca"
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e alzati"
    L3_2(L4_2)
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = L29_1
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = nil
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 5000
    L0_3(L1_3)
    L0_3 = true
    L1_2 = L0_3
  end
  L3_2(L4_2)
  L3_2 = 0
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
    while true do
      L0_3 = L16_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L17_1
      if L0_3 then
        L0_3 = Wait
        L1_3 = 3000
        L0_3(L1_3)
        return
      else
        L0_3 = GetEntityCoords
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        L1_3 = mapCenter
        L1_3 = L0_3 - L1_3
        L1_3 = #L1_3
        L2_3 = L24_1
        L2_3 = L2_3 * 2.0
        L3_3 = L10_1
        L2_3 = L2_3 - L3_3
        if L1_3 < 0.0 then
          L1_3 = 0.0
        end
        if L2_3 < L1_3 then
          L1_3 = L2_3
        end
        L3_3 = math
        L3_3 = L3_3.floor
        L4_3 = L1_3 / L2_3
        L4_3 = L4_3 * 100
        L3_3 = L3_3(L4_3)
        L4_3 = DrawMarker
        L5_3 = 28
        L6_3 = mapCenter
        L6_3 = L6_3.x
        L7_3 = mapCenter
        L7_3 = L7_3.y
        L8_3 = mapCenter
        L8_3 = L8_3.z
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.0
        L12_3 = 0.0
        L13_3 = 0.0
        L14_3 = 0.0
        L15_3 = L24_1
        L15_3 = L15_3 * 2
        L16_3 = L10_1
        L15_3 = L15_3 - L16_3
        L16_3 = L24_1
        L16_3 = L16_3 * 2
        L17_3 = L10_1
        L16_3 = L16_3 - L17_3
        L17_3 = L24_1
        L17_3 = L17_3 * 2
        L18_3 = L10_1
        L17_3 = L17_3 - L18_3
        L18_3 = 255
        L19_3 = 192
        L20_3 = 203
        L21_3 = L3_3
        L22_3 = false
        L23_3 = true
        L24_3 = 2
        L25_3 = false
        L26_3 = nil
        L27_3 = nil
        L28_3 = false
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        L4_3 = ipairs
        L5_3 = posSecolari
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = vector3
          L11_3 = L9_3.x
          L12_3 = L9_3.y
          L13_3 = L9_3.z
          L10_3 = L10_3(L11_3, L12_3, L13_3)
          L11_3 = mapCenter
          L10_3 = L10_3 - L11_3
          L10_3 = #L10_3
          L11_3 = L24_1
          L11_3 = L11_3 * 2
          L12_3 = L10_1
          L11_3 = L11_3 - L12_3
          if L10_3 < L11_3 then
            L10_3 = DrawMarker
            L11_3 = 28
            L12_3 = L9_3.x
            L13_3 = L9_3.y
            L14_3 = L9_3.z
            L14_3 = L14_3 + 30.0
            L15_3 = 0.0
            L16_3 = 0.0
            L17_3 = 0.0
            L18_3 = 0.0
            L19_3 = 0.0
            L20_3 = 0.0
            L21_3 = 3.5
            L22_3 = 3.5
            L23_3 = 3.5
            L24_3 = 255
            L25_3 = 192
            L26_3 = 203
            L27_3 = 200
            L28_3 = true
            L29_3 = true
            L30_3 = 2
            L31_3 = false
            L32_3 = nil
            L33_3 = nil
            L34_3 = false
            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          end
          L10_3 = L0_3 - L9_3
          L10_3 = #L10_3
          if L10_3 < 2.0 then
            L10_3 = IsControlPressed
            L11_3 = 0
            L12_3 = 24
            L10_3 = L10_3(L11_3, L12_3)
            if not L10_3 then
              L10_3 = IsControlPressed
              L11_3 = 0
              L12_3 = 25
              L10_3 = L10_3(L11_3, L12_3)
              if not L10_3 then
                L10_3 = IsPedFatallyInjured
                L11_3 = L0_2
                L10_3 = L10_3(L11_3)
                if not L10_3 then
                  L10_3 = DrawText3D
                  L11_3 = L9_3.x
                  L12_3 = L9_3.y
                  L13_3 = L9_3.z
                  L13_3 = L13_3 + 0.9
                  L14_3 = "~q~~h~E ~h~~w~DEPOSIT ASHES"
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                  L10_3 = IsControlJustPressed
                  L11_3 = 0
                  L12_3 = 38
                  L10_3 = L10_3(L11_3, L12_3)
                  if L10_3 then
                    L10_3 = L14_1
                    if L10_3 > 0 then
                      L10_3 = L21_1
                      if not L10_3 then
                        L10_3 = L8_1
                        L11_3 = "cut_josh_4"
                        L12_3 = "scr_josh3_house_smoked"
                        L13_3 = L9_3
                        L14_3 = 5.0
                        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
                        L11_3 = CreateThread
                        function L12_3()
                          local L0_4, L1_4, L2_4
                          L0_4 = Wait
                          L1_4 = 5000
                          L0_4(L1_4)
                          L0_4 = StopParticleFxLooped
                          L1_4 = L10_3
                          L0_4(L1_4)
                          L0_4 = RemoveParticleFx
                          L1_4 = L10_3
                          L2_4 = true
                          L0_4(L1_4, L2_4)
                        end
                        L11_3(L12_3)
                        L11_3 = TriggerServerEvent
                        L12_3 = "DepositaDusk"
                        L13_3 = GetPlayerServerId
                        L14_3 = PlayerId
                        L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L14_3()
                        L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                        L14_3 = L14_1
                        L11_3(L12_3, L13_3, L14_3)
                        L11_3 = L15_1
                        L12_3 = L14_1
                        L11_3 = L11_3 + L12_3
                        L15_1 = L11_3
                        L11_3 = exports
                        L11_3 = L11_3.striano_editor
                        L12_3 = L11_3
                        L11_3 = L11_3.updateKD
                        L13_3 = L15_1
                        L11_3(L12_3, L13_3)
                        L11_3 = 0
                        L14_1 = L11_3
                        L11_3 = exports
                        L11_3 = L11_3.striano_editor
                        L12_3 = L11_3
                        L11_3 = L11_3.setPoints
                        L13_3 = L14_1
                        L11_3(L12_3, L13_3)
                        L11_3 = exports
                        L11_3 = L11_3.xsound
                        L12_3 = L11_3
                        L11_3 = L11_3.PlayUrl
                        L13_3 = "soulsteal2"
                        L14_3 = "sounds/striano_combat/magic/soulsteal2.mp3"
                        L11_3(L12_3, L13_3, L14_3)
                        L11_3 = TriggerEvent
                        L12_3 = "xnTattoos:resetsporco"
                        L11_3(L12_3)
                        L11_3 = ExecuteCommand
                        L12_3 = "prova Dust gived to the tree..."
                        L11_3(L12_3)
                        L11_3 = ExecuteCommand
                        L12_3 = "e prendi6"
                        L11_3(L12_3)
                    end
                    else
                      L10_3 = ExecuteCommand
                      L11_3 = "e inciampa"
                      L10_3(L11_3)
                      L10_3 = L21_1
                      if L10_3 then
                        L10_3 = ExecuteCommand
                        L11_3 = "prova3 This tree refuse the soul."
                        L10_3(L11_3)
                      else
                        L10_3 = ExecuteCommand
                        L11_3 = "prova3 You dont have dust to give."
                        L10_3(L11_3)
                      end
                      L10_3 = "sounds/striano_combat/magic/risata3.mp3"
                      L11_3 = exports
                      L11_3 = L11_3.xsound
                      L12_3 = L11_3
                      L11_3 = L11_3.PlayUrl
                      L13_3 = "risata3"
                      L14_3 = L10_3
                      L15_3 = 0.1
                      L11_3(L12_3, L13_3, L14_3, L15_3)
                      L11_3 = Wait
                      L12_3 = 1500
                      L11_3(L12_3)
                    end
                  end
                end
              end
            end
          end
        end
        L4_3 = false
        L5_3 = ipairs
        L6_3 = L29_1
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
        for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
          L11_3 = L10_3.pos
          L12_3 = mapCenter
          L11_3 = L11_3 - L12_3
          L11_3 = #L11_3
          L12_3 = L24_1
          L12_3 = L12_3 * 2
          L13_3 = L10_1
          L12_3 = L12_3 - L13_3
          if L11_3 > L12_3 then
            L11_3 = StopParticleFxLooped
            L12_3 = L10_3.fx
            L13_3 = 0
            L11_3(L12_3, L13_3)
            L11_3 = RemoveParticleFx
            L12_3 = L10_3.fx
            L13_3 = true
            L11_3(L12_3, L13_3)
            L11_3 = L8_1
            L12_3 = "core"
            L13_3 = "ent_amb_fbi_fire_beam"
            L14_3 = L10_3.pos
            L15_3 = 5.0
            L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
            L12_3 = CreateThread
            function L13_3()
              local L0_4, L1_4, L2_4
              L0_4 = Wait
              L1_4 = 5000
              L0_4(L1_4)
              L0_4 = StopParticleFxLooped
              L1_4 = L11_3
              L0_4(L1_4)
              L0_4 = RemoveParticleFx
              L1_4 = L11_3
              L2_4 = true
              L0_4(L1_4, L2_4)
            end
            L12_3(L13_3)
            L12_3 = table
            L12_3 = L12_3.remove
            L13_3 = L29_1
            L14_3 = L9_3
            L12_3(L13_3, L14_3)
            break
          end
          L11_3 = L10_3.pos
          L11_3 = L0_3 - L11_3
          L11_3 = #L11_3
          if L11_3 < 2.0 then
            L4_3 = true
            L11_3 = PlayerPedId
            L11_3 = L11_3()
            L12_3 = IsControlPressed
            L13_3 = 0
            L14_3 = 24
            L12_3 = L12_3(L13_3, L14_3)
            if not L12_3 then
              L12_3 = IsControlPressed
              L13_3 = 0
              L14_3 = 25
              L12_3 = L12_3(L13_3, L14_3)
              if not L12_3 then
                L12_3 = IsPedRagdoll
                L13_3 = L11_3
                L12_3 = L12_3(L13_3)
                if not L12_3 then
                  L12_3 = IsPedFatallyInjured
                  L13_3 = L11_3
                  L12_3 = L12_3(L13_3)
                  if not L12_3 then
                    L12_3 = L20_1
                    if L12_3 then
                      L12_3 = ExecuteCommand
                      L13_3 = "e inciampa"
                      L12_3(L13_3)
                      L12_3 = ExecuteCommand
                      L13_3 = "prova3 La cenere respinge l'anima."
                      L12_3(L13_3)
                      L12_3 = "sounds/striano_combat/magic/risata3.mp3"
                      L13_3 = exports
                      L13_3 = L13_3.xsound
                      L14_3 = L13_3
                      L13_3 = L13_3.PlayUrl
                      L15_3 = "risata3"
                      L16_3 = L12_3
                      L17_3 = 0.1
                      L13_3(L14_3, L15_3, L16_3, L17_3)
                      L13_3 = Wait
                      L14_3 = 1500
                      L13_3(L14_3)
                    else
                      L12_3 = IsControlPressed
                      L13_3 = 0
                      L14_3 = 38
                      L12_3 = L12_3(L13_3, L14_3)
                      if not L12_3 then
                        L12_3 = 0
                        L13_3 = L10_3.tolte
                        if nil == L13_3 then
                          L12_3 = L10_3.qt
                        else
                          L13_3 = L10_3.qt
                          L14_3 = L10_3.tolte
                          L12_3 = L13_3 - L14_3
                        end
                        L13_3 = DrawText3D
                        L14_3 = L10_3.pos
                        L14_3 = L14_3.x
                        L15_3 = L10_3.pos
                        L15_3 = L15_3.y
                        L16_3 = L10_3.pos
                        L16_3 = L16_3.z
                        L16_3 = L16_3 + 0.9
                        L17_3 = "~h~E ~h~TAKE ASHES ~h~("
                        L18_3 = L12_3
                        L19_3 = ")"
                        L17_3 = L17_3 .. L18_3 .. L19_3
                        L13_3(L14_3, L15_3, L16_3, L17_3)
                        L13_3 = L2_2
                        if nil ~= L13_3 then
                          L13_3 = nil
                          L2_2 = L13_3
                        end
                        L13_3 = IsEntityPlayingAnim
                        L14_3 = L11_3
                        L15_3 = "oddjobs@shop_robbery@rob_till"
                        L16_3 = "loop"
                        L17_3 = 3
                        L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3)
                        if L13_3 then
                          L13_3 = ExecuteCommand
                          L14_3 = "e cc"
                          L13_3(L14_3)
                          L13_3 = ExecuteCommand
                          L14_3 = "e alzati"
                          L13_3(L14_3)
                        end
                      else
                        L12_3 = 0
                        L13_3 = L10_3.tolte
                        if nil == L13_3 then
                          L12_3 = L10_3.qt
                        else
                          L13_3 = L10_3.qt
                          L14_3 = L10_3.tolte
                          L12_3 = L13_3 - L14_3
                        end
                        L13_3 = DrawText3D
                        L14_3 = L10_3.pos
                        L14_3 = L14_3.x
                        L15_3 = L10_3.pos
                        L15_3 = L15_3.y
                        L16_3 = L10_3.pos
                        L16_3 = L16_3.z
                        L16_3 = L16_3 + 0.9
                        L17_3 = "ASHES ~h~("
                        L18_3 = L12_3
                        L19_3 = ")"
                        L17_3 = L17_3 .. L18_3 .. L19_3
                        L13_3(L14_3, L15_3, L16_3, L17_3)
                        L13_3 = IsEntityPlayingAnim
                        L14_3 = L11_3
                        L15_3 = "oddjobs@shop_robbery@rob_till"
                        L16_3 = "loop"
                        L17_3 = 3
                        L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3)
                        if not L13_3 then
                          L13_3 = ExecuteCommand
                          L14_3 = "e kneel3"
                          L13_3(L14_3)
                          L13_3 = faiAnim
                          L14_3 = "oddjobs@shop_robbery@rob_till"
                          L15_3 = "loop"
                          L16_3 = -1
                          L17_3 = 49
                          L13_3(L14_3, L15_3, L16_3, L17_3)
                        end
                        L13_3 = L2_2
                        if nil == L13_3 then
                          L13_3 = GetGameTimer
                          L13_3 = L13_3()
                          L2_2 = L13_3
                        end
                        L13_3 = GetGameTimer
                        L13_3 = L13_3()
                        L14_3 = L2_2
                        L13_3 = L13_3 - L14_3
                        L14_3 = 1500
                        if L13_3 > L14_3 then
                          L13_3 = IsEntityPlayingAnim
                          L14_3 = L11_3
                          L15_3 = "oddjobs@shop_robbery@rob_till"
                          L16_3 = "loop"
                          L17_3 = 3
                          L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3)
                          if L13_3 then
                            L13_3 = nil
                            L2_2 = L13_3
                            L13_3 = L34_1
                            L14_3 = L10_3
                            L15_3 = L9_3
                            L13_3(L14_3, L15_3)
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
        if not L4_3 then
          L5_3 = IsEntityPlayingAnim
          L6_3 = L0_2
          L7_3 = "oddjobs@shop_robbery@rob_till"
          L8_3 = "loop"
          L9_3 = 3
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
          if L5_3 then
            L5_3 = ExecuteCommand
            L6_3 = "e cc"
            L5_3(L6_3)
            L5_3 = ExecuteCommand
            L6_3 = "e alzati"
            L5_3(L6_3)
          end
        end
        L5_3 = L1_2
        if L5_3 then
          L5_3 = IsPedFatallyInjured
          L6_3 = L0_2
          L5_3 = L5_3(L6_3)
          if not L5_3 then
            L5_3 = mapCenter
            L5_3 = L0_3 - L5_3
            L5_3 = #L5_3
            L6_3 = L24_1
            L6_3 = L6_3 * 2
            L7_3 = L10_1
            L6_3 = L6_3 - L7_3
            if L5_3 > L6_3 then
              L5_3 = vector3
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0.0
              L5_3 = L5_3(L6_3, L7_3, L8_3)
              L5_3 = L0_3 - L5_3
              L5_3 = #L5_3
              if L5_3 > 50.0 then
                L5_3 = ExecuteCommand
                L6_3 = "prova Enter the match radius to avoid dying!"
                L5_3(L6_3)
                L5_3 = "sounds/impact_event.mp3"
                L6_3 = exports
                L6_3 = L6_3.xsound
                L7_3 = L6_3
                L6_3 = L6_3.PlayUrl
                L8_3 = "impact_event"
                L9_3 = L5_3
                L10_3 = 0.05
                L6_3(L7_3, L8_3, L9_3, L10_3)
                while true do
                  L6_3 = GetEntityCoords
                  L7_3 = L0_2
                  L6_3 = L6_3(L7_3)
                  L7_3 = mapCenter
                  L6_3 = L6_3 - L7_3
                  L6_3 = #L6_3
                  L7_3 = L24_1
                  L7_3 = L7_3 * 2
                  L8_3 = L10_1
                  L7_3 = L7_3 - L8_3
                  if not (L6_3 > L7_3) then
                    break
                  end
                  L6_3 = DrawMarker
                  L7_3 = 1
                  L8_3 = mapCenter
                  L8_3 = L8_3.x
                  L9_3 = mapCenter
                  L9_3 = L9_3.y
                  L10_3 = mapCenter
                  L10_3 = L10_3.z
                  L11_3 = 0.0
                  L12_3 = 0.0
                  L13_3 = 0.0
                  L14_3 = 0.0
                  L15_3 = 0.0
                  L16_3 = 0.0
                  L17_3 = 5.0
                  L18_3 = 5.0
                  L19_3 = 1000.0
                  L20_3 = 255
                  L21_3 = 0
                  L22_3 = 0
                  L23_3 = 150
                  L24_3 = true
                  L25_3 = true
                  L26_3 = 2
                  L27_3 = false
                  L28_3 = nil
                  L29_3 = nil
                  L30_3 = false
                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
                  L6_3 = timerPerdoVita
                  if nil == L6_3 then
                    L6_3 = GetGameTimer
                    L6_3 = L6_3()
                    timerPerdoVita = L6_3
                  end
                  L6_3 = GetGameTimer
                  L6_3 = L6_3()
                  L7_3 = timerPerdoVita
                  L6_3 = L6_3 - L7_3
                  L7_3 = 500
                  if L6_3 > L7_3 then
                    L6_3 = GetGameTimer
                    L6_3 = L6_3()
                    timerPerdoVita = L6_3
                    L6_3 = GetEntityHealth
                    L7_3 = L0_2
                    L6_3 = L6_3(L7_3)
                    if L6_3 > 0 then
                      L7_3 = SetEntityHealth
                      L8_3 = L0_2
                      L9_3 = L6_3 - 5
                      L7_3(L8_3, L9_3)
                      L7_3 = PlaySoundFrontend
                      L8_3 = -1
                      L9_3 = "Zoom_Right"
                      L10_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
                      L11_3 = 1
                      L7_3(L8_3, L9_3, L10_3, L11_3)
                    end
                  end
                  L6_3 = DrawMarker
                  L7_3 = 28
                  L8_3 = mapCenter
                  L8_3 = L8_3.x
                  L9_3 = mapCenter
                  L9_3 = L9_3.y
                  L10_3 = mapCenter
                  L10_3 = L10_3.z
                  L11_3 = 0.0
                  L12_3 = 0.0
                  L13_3 = 0.0
                  L14_3 = 0.0
                  L15_3 = 0.0
                  L16_3 = 0.0
                  L17_3 = L24_1
                  L17_3 = L17_3 * 2
                  L18_3 = L10_1
                  L17_3 = L17_3 - L18_3
                  L18_3 = L24_1
                  L18_3 = L18_3 * 2
                  L19_3 = L10_1
                  L18_3 = L18_3 - L19_3
                  L19_3 = L24_1
                  L19_3 = L19_3 * 2
                  L20_3 = L10_1
                  L19_3 = L19_3 - L20_3
                  L20_3 = 255
                  L21_3 = 0
                  L22_3 = 0
                  L23_3 = 25
                  L24_3 = false
                  L25_3 = true
                  L26_3 = 2
                  L27_3 = false
                  L28_3 = nil
                  L29_3 = nil
                  L30_3 = false
                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
                  L6_3 = Wait
                  L7_3 = 0
                  L6_3(L7_3)
                end
              end
            end
          end
        end
      end
    end
  end
  L4_2(L5_2)
end
LoopHashes = L35_1
L35_1 = 100.0
L36_1 = nil
L37_1 = nil
function L38_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
    while true do
      L0_3 = L35_1
      if not (L0_3 > 2.0) then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = ipairs
      L1_3 = L29_1
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = vector3
        L7_3 = 255
        L8_3 = 255
        L9_3 = 255
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L7_3 = L5_3.qt
        if 2 == L7_3 then
          L7_3 = vector3
          L8_3 = 255
          L9_3 = 255
          L10_3 = 0
          L7_3 = L7_3(L8_3, L9_3, L10_3)
          L6_3 = L7_3
        end
        L7_3 = L5_3.qt
        if L7_3 >= 3 then
          L7_3 = vector3
          L8_3 = 0
          L9_3 = 255
          L10_3 = 255
          L7_3 = L7_3(L8_3, L9_3, L10_3)
          L6_3 = L7_3
        end
        L7_3 = L14_1
        if L7_3 > 0 then
          L7_3 = L36_1
          if nil == L7_3 then
            L7_3 = GetGameTimer
            L7_3 = L7_3()
            L36_1 = L7_3
          end
          L7_3 = GetGameTimer
          L7_3 = L7_3()
          L8_3 = L36_1
          L7_3 = L7_3 - L8_3
          L8_3 = 250
          if L7_3 > L8_3 then
            L7_3 = GetGameTimer
            L7_3 = L7_3()
            L36_1 = L7_3
            L7_3 = L35_1
            L7_3 = L7_3 - 1.0
            L35_1 = L7_3
          end
        end
        L7_3 = L5_3.pos
        L8_3 = DrawMarker
        L9_3 = 1
        L10_3 = L7_3.x
        L11_3 = L7_3.y
        L12_3 = L7_3.z
        L13_3 = 0.0
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.0
        L17_3 = 0.0
        L18_3 = 0.0
        L19_3 = 0.5
        L20_3 = 0.5
        L21_3 = L35_1
        L22_3 = L6_3
        L23_3 = 100
        L24_3 = false
        L25_3 = true
        L26_3 = 2
        L27_3 = false
        L28_3 = nil
        L29_3 = nil
        L30_3 = false
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
      end
    end
  end
  L0_2(L1_2)
end
mostraAshInfo = L38_1
L38_1 = {}
L38_1.points = 0
L38_1.kills = 0
L38_1.kd = 0
L38_1.deaths = 0
L38_1.mana = 100
L38_1.displayVisible = true
L39_1 = {}
L39_1.minutes = 0
L39_1.seconds = 0
L39_1.active = false
L39_1.totalSeconds = 0
L40_1 = {}
L40_1.currentHealth = 100
L40_1.maxHealth = 500
L40_1.visible = false
L40_1.updateLoopActive = false
function L41_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.PointsDisplay
  L0_2 = L0_2.enabled
  if not L0_2 then
    return
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "showPointsDisplay"
  L2_2 = L38_1.points
  L1_2.points = L2_2
  L2_2 = Config
  L2_2 = L2_2.PointsDisplay
  L1_2.config = L2_2
  L0_2(L1_2)
end
ShowPointsDisplay = L41_1
function L41_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "hidePointsDisplay"
  L0_2(L1_2)
end
HidePointsDisplay = L41_1
function L41_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "updatePoints"
  L2_2 = L38_1.points
  L1_2.points = L2_2
  L0_2(L1_2)
end
UpdatePointsDisplay = L41_1
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 or A0_2 <= 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L38_1.points
  L2_2 = L2_2 + A0_2
  L3_2 = Config
  L3_2 = L3_2.Points
  L3_2 = L3_2.maxPoints
  L1_2 = L1_2(L2_2, L3_2)
  L38_1.points = L1_2
  L1_2 = UpdatePointsDisplay
  L1_2()
  L1_2 = true
  return L1_2
end
AddPoints = L41_1
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 or A0_2 < 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2
  L3_2 = Config
  L3_2 = L3_2.Points
  L3_2 = L3_2.maxPoints
  L1_2 = L1_2(L2_2, L3_2)
  L38_1.points = L1_2
  L1_2 = UpdatePointsDisplay
  L1_2()
  L1_2 = true
  return L1_2
end
SetPoints = L41_1
function L41_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Points
  L0_2 = L0_2.startingPoints
  L38_1.points = L0_2
  L0_2 = UpdatePointsDisplay
  L0_2()
end
ResetPoints = L41_1
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = 0
  end
  L38_1.kills = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateKills"
  L3_2 = L38_1.kills
  L2_2.kills = L3_2
  L1_2(L2_2)
end
UpdateKills = L41_1
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = 0
  end
  L38_1.kd = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateKD"
  L3_2 = L38_1.kd
  L2_2.kd = L3_2
  L1_2(L2_2)
end
UpdateKD = L41_1
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = 0
  end
  L38_1.deaths = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateDeaths"
  L3_2 = L38_1.deaths
  L2_2.deaths = L3_2
  L1_2(L2_2)
end
UpdateDeaths = L41_1
L41_1 = exports
L42_1 = "getMana"
function L43_1()
  local L0_2, L1_2
  L0_2 = L38_1.mana
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "delMana"
function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L38_1.mana
  L1_2 = L1_2 - A0_2
  L38_1.mana = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateMana"
  L3_2 = L38_1.mana
  L2_2.currentMana = L3_2
  L1_2(L2_2)
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "addPoints"
L43_1 = AddPoints
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "setPoints"
L43_1 = SetPoints
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getPoints"
function L43_1()
  local L0_2, L1_2
  L0_2 = L38_1.points
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "showPointsDisplay"
L43_1 = ShowPointsDisplay
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "hidePointsDisplay"
L43_1 = HidePointsDisplay
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "updateKills"
L43_1 = UpdateKills
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "updateKD"
L43_1 = UpdateKD
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "updateDeaths"
L43_1 = UpdateDeaths
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getKills"
function L43_1()
  local L0_2, L1_2
  L0_2 = L38_1.kills
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getKD"
function L43_1()
  local L0_2, L1_2
  L0_2 = L38_1.kd
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getDeaths"
function L43_1()
  local L0_2, L1_2
  L0_2 = L38_1.deaths
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "startTimer"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A0_2 then
    A0_2 = 15
  end
  if not A1_2 then
    A1_2 = 0
  end
  if A0_2 < 0 then
    A0_2 = 0
  end
  if A1_2 < 0 then
    A1_2 = 0
  end
  if A1_2 > 59 then
    A1_2 = 59
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "startTimer"
  L3_2.minutes = A0_2
  L3_2.seconds = A1_2
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getTimerStatus"
function L43_1()
  local L0_2, L1_2
  L0_2 = L39_1
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getTimerMinutes"
function L43_1()
  local L0_2, L1_2
  L0_2 = L39_1.minutes
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getTimerSeconds"
function L43_1()
  local L0_2, L1_2
  L0_2 = L39_1.seconds
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "isTimerActive"
function L43_1()
  local L0_2, L1_2
  L0_2 = L39_1.active
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getTimerTotalSeconds"
function L43_1()
  local L0_2, L1_2
  L0_2 = L39_1.totalSeconds
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getTimerFormatted"
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L39_1.minutes
  L1_2 = L39_1.seconds
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%02d:%02d"
  L4_2 = L0_2
  L5_2 = L1_2
  return L2_2(L3_2, L4_2, L5_2)
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getTimerPercentage"
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L39_1.active
  if not L0_2 then
    L0_2 = 0.0
    return L0_2
  end
  L0_2 = 720
  L1_2 = L39_1.totalSeconds
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 0.0
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = 1.0
  L6_2 = L1_2 / L0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "showHealthBar"
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.getliferank
  L1_2 = L1_2(L2_2)
  if nil ~= A0_2 then
    L1_2 = A0_2
  end
  L40_1.maxHealth = L1_2
  L40_1.visible = true
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = GetEntityHealth
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L40_1.currentHealth = L3_2
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "showHealthBar"
  L4_2.maxHealth = L1_2
  L3_2(L4_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "updateMaxHealth"
  L5_2 = L1_2 - 100
  L4_2.maxHealth = L5_2
  L3_2(L4_2)
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "hideHealthBar"
function L43_1()
  local L0_2, L1_2
  L40_1.visible = false
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "hideHealthBar"
  L0_2(L1_2)
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "updateMaxHealth"
function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  if nil == A0_2 or 0 == A0_2 then
    A0_2 = 500
  end
  L40_1.maxHealth = A0_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateMaxHealth"
  L3_2 = A0_2 - 100
  L2_2.maxHealth = L3_2
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "getMaxHealth"
function L43_1()
  local L0_2, L1_2
  L0_2 = L40_1.maxHealth
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "isHealthBarVisible"
function L43_1()
  local L0_2, L1_2
  L0_2 = L40_1.visible
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "updateHealthBar"
function L43_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L40_1.visible
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if L0_2 then
    L1_2 = GetEntityHealth
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L40_1.currentHealth = L1_2
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "updateHealth"
    L3_2.currentHealth = L1_2
    L2_2(L3_2)
    L2_2 = true
    return L2_2
  end
  L1_2 = false
  return L1_2
end
L41_1(L42_1, L43_1)
L41_1 = exports
L42_1 = "setHealthBarValue"
function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 or A0_2 < 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2
  L3_2 = L40_1.maxHealth
  L1_2 = L1_2(L2_2, L3_2)
  L40_1.currentHealth = L1_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "updateHealth"
  L3_2.currentHealth = L1_2
  L2_2(L3_2)
  L2_2 = true
  return L2_2
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNUICallback
L42_1 = "getTimerStatus"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNetEvent
L42_1 = "striano_missions:showManaBar"
function L43_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "showManaBar"
  L2_2.maxMana = A0_2
  L1_2(L2_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNetEvent
L42_1 = "striano_missions:hideManaBar"
function L43_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "hideManaBar"
  L0_2(L1_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNetEvent
L42_1 = "striano_missions:updateMaxMana"
function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  maxManaGlobal = A0_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateMaxMana"
  L3_2 = maxManaGlobal
  L2_2.maxMana = L3_2
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "showManaBar"
  L3_2 = maxManaGlobal
  L2_2.maxMana = L3_2
  L1_2(L2_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNetEvent
L42_1 = "striano_missions:updateMana"
function L43_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateMana"
  L2_2.currentMana = A0_2
  L1_2(L2_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNetEvent
L42_1 = "striano_missions:addMana"
function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L38_1.mana
  L1_2 = L1_2 + A0_2
  L2_2 = maxManaGlobal
  if L1_2 < L2_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "updateMana"
    L3_2 = L38_1.mana
    L3_2 = L3_2 + A0_2
    L2_2.currentMana = L3_2
    L1_2(L2_2)
  end
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNUICallback
L42_1 = "timerUpdate"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.minutes
  if not L2_2 then
    L2_2 = 0
  end
  L39_1.minutes = L2_2
  L2_2 = A0_2.seconds
  if not L2_2 then
    L2_2 = 0
  end
  L39_1.seconds = L2_2
  L2_2 = A0_2.active
  if not L2_2 then
    L2_2 = false
  end
  L39_1.active = L2_2
  L2_2 = A0_2.totalSeconds
  if not L2_2 then
    L2_2 = 0
  end
  L39_1.totalSeconds = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNUICallback
L42_1 = "showHealthBar"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNUICallback
L42_1 = "hideHealthBar"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNUICallback
L42_1 = "updateMaxHealth"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNUICallback
L42_1 = "updateHealth"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNUICallback
L42_1 = "requestHealthUpdate"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = GetEntityHealth
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = math
    L4_2 = L4_2.max
    L5_2 = 0
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 >= 0 then
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.type = "updateHealth"
      L7_2 = L4_2 - 100
      L6_2.currentHealth = L7_2
      L5_2(L6_2)
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L41_1(L42_1, L43_1)
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = IsPauseMenuActive
    L0_2 = L0_2()
    if not L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = "STEALTH (Aiming)"
  L1_2 = "SHOULDER (Aiming)"
  L2_2 = "TRAP"
  L3_2 = "RELOAD (Hold)"
  L4_2 = "WEAPONS (Hold)"
  L5_2 = "SCARED (Fast)"
  L6_2 = "STRIP (Hold)"
  L7_2 = "GUIDE"
  L8_2 = exports
  L8_2 = L8_2.text_guide
  L9_2 = L8_2
  L8_2 = L8_2.ClearGuideText
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 50
  L8_2(L9_2)
  L8_2 = {}
  L9_2 = {}
  L10_2 = "CTRL"
  L9_2[1] = L10_2
  L8_2[L0_2] = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = "ALT-SX"
  L10_2[1] = L11_2
  L9_2[L1_2] = L10_2
  L8_2 = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = "J"
  L10_2[1] = L11_2
  L9_2[L2_2] = L10_2
  L8_2 = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = "R"
  L10_2[1] = L11_2
  L9_2[L3_2] = L10_2
  L8_2 = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = "TAB"
  L10_2[1] = L11_2
  L9_2[L4_2] = L10_2
  L8_2 = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = "M"
  L10_2[1] = L11_2
  L9_2[L5_2] = L10_2
  L8_2 = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = exports
  L11_2 = L11_2.striano_core
  L12_2 = L11_2
  L11_2 = L11_2.getInfoKey
  L13_2 = 659662656
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L9_2[L6_2] = L10_2
  L8_2 = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = exports
  L11_2 = L11_2.striano_core
  L12_2 = L11_2
  L11_2 = L11_2.getInfoKey
  L13_2 = -1259717162
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L9_2[L7_2] = L10_2
  L8_2 = L9_2
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.AddGuideText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.GuidaVisibileNV
  L9_2(L10_2)
end
GuidaDuskfallsTasti = L41_1
L41_1 = exports
L42_1 = "getMaxMana"
function L43_1()
  local L0_2, L1_2
  L0_2 = maxManaGlobal
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNetEvent
L42_1 = "loadFullMana"
L41_1(L42_1)
L41_1 = AddEventHandler
L42_1 = "loadFullMana"
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = maxManaGlobal
  L38_1.mana = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateMana"
  L3_2 = L38_1.mana
  L2_2.currentMana = L3_2
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "PlayEffectEnt"
  L3_2 = {}
  L3_2.a = "scr_rcbarry1"
  L3_2.b = "scr_alien_charging"
  L4_2 = PedToNet
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  L3_2.ent = L4_2
  L3_2.s = 1.0
  L3_2.c = nil
  L3_2.o = 0.7
  L1_2(L2_2, L3_2)
  L1_2 = TriggerEvent
  L2_2 = "rechargeMana"
  L1_2(L2_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterNetEvent
L42_1 = "resetDuskfalls"
L41_1(L42_1)
L41_1 = AddEventHandler
L42_1 = "resetDuskfalls"
function L43_1()
  local L0_2, L1_2
  L0_2 = false
  L18_1 = L0_2
end
L41_1(L42_1, L43_1)
L41_1 = RegisterCommand
L42_1 = "hub"
function L43_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityAttached
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L1_2 = GoHUB
  L1_2()
end
L41_1(L42_1, L43_1)
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L16_1
  if not L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = ExecuteCommand
      L2_2 = "stopragdoll"
      L1_2(L2_2)
      L1_2 = TriggerEvent
      L2_2 = "esx_ambulancejjj:revive3"
      L1_2(L2_2)
      L1_2 = exports
      L1_2 = L1_2.striano_core
      L2_2 = L1_2
      L1_2 = L1_2.EndOrbitCam
      L1_2(L2_2)
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.resetcolpi
      L1_2(L2_2)
    end
    L1_2 = DoScreenFadeOut
    L2_2 = 900
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2.text_guide
    L2_2 = L1_2
    L1_2 = L1_2.ClearGuideText
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2.text_guide
    L2_2 = L1_2
    L1_2 = L1_2.GuidaNascondi
    L1_2(L2_2)
    L1_2 = FreezeEntityPosition
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = TriggerEvent
    L2_2 = "esx:teleport"
    L3_2 = vector3
    L4_2 = 3024.366
    L5_2 = 7494.086
    L6_2 = 10.684
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = RemoveAllPedWeapons
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SetCurrentPedWeapon
    L2_2 = L0_2
    L3_2 = -1569615261
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = exports
    L1_2 = L1_2.xsound
    L2_2 = L1_2
    L1_2 = L1_2.PlayUrl
    L3_2 = "soulsteal"
    L4_2 = "sounds/striano_combat/magic/soulsteal.mp3"
    L5_2 = 0.1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = L8_1
    L2_2 = "cut_josh_4"
    L3_2 = "scr_josh3_house_smoked"
    L4_2 = GetEntityCoords
    L5_2 = L0_2
    L4_2 = L4_2(L5_2)
    L5_2 = 2.5
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = StopParticleFxLooped
      L1_3 = L1_2
      L0_3(L1_3)
      L0_3 = RemoveParticleFx
      L1_3 = L1_2
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "hudon"
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "hudon2"
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "vSync:getSync"
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2 = L5_2()
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = Wait
    L3_2 = 225
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "atmosfera"
    L2_2(L3_2)
    L2_2 = L8_1
    L3_2 = "cut_josh_4"
    L4_2 = "scr_josh3_house_smoked"
    L5_2 = GetEntityCoords
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    L6_2 = 2.5
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = StopParticleFxLooped
      L1_3 = L2_2
      L0_3(L1_3)
      L0_3 = RemoveParticleFx
      L1_3 = L2_2
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = FreezeEntityPosition
    L4_2 = L0_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = DoScreenFadeIn
    L4_2 = 1000
    L3_2(L4_2)
  end
end
GoHUB = L41_1
L41_1 = false
L42_1 = 0
function L43_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    while true do
      L1_3 = HasCollisionLoadedAroundEntity
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
    while true do
      L1_3 = NetworkIsSessionStarted
      L1_3 = L1_3()
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
    L1_3 = Nube
    L2_3 = duskmodepos
    L3_3 = true
    L1_3(L2_3, L3_3)
    while true do
      L1_3 = IsPedFatallyInjured
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        break
      end
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = 1000
      L3_3 = IsDead
      if not L3_3 then
        L3_3 = L16_1
        if L3_3 then
          L3_3 = print
          L4_3 = "SONO MORTO NELLA MODALITA DUSKFALLS"
          L3_3(L4_3)
          L3_3 = HidePointsDisplay
          L3_3()
          L3_3 = 0
          L19_1 = L3_3
          L3_3 = L42_1
          L3_3 = L3_3 + 5
          L42_1 = L3_3
          L3_3 = L8_1
          L4_3 = "cut_josh_4"
          L5_3 = "scr_josh3_house_smoked"
          L6_3 = GetEntityCoords
          L7_3 = L1_3
          L6_3 = L6_3(L7_3)
          L7_3 = 2.5
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
          L4_3 = SetPedConfigFlag
          L5_3 = L1_3
          L6_3 = 164
          L7_3 = false
          L4_3(L5_3, L6_3, L7_3)
          IsDead = true
          L4_3 = SetPedDropsWeaponsWhenDead
          L5_3 = L1_3
          L6_3 = false
          L4_3(L5_3, L6_3)
          L4_3 = SetPedAmmoToDrop
          L5_3 = L1_3
          L6_3 = 0
          L4_3(L5_3, L6_3)
          L4_3 = PlaySoundFrontend
          L5_3 = -1
          L6_3 = "Zone_Enemy_Capture"
          L7_3 = "DLC_Apartments_Drop_Zone_Sounds"
          L8_3 = 0
          L4_3(L5_3, L6_3, L7_3, L8_3)
          L4_3 = IsPedInAnyVehicle
          L5_3 = L1_3
          L6_3 = true
          L4_3 = L4_3(L5_3, L6_3)
          if L4_3 then
            L4_3 = GetEntityCoords
            L5_3 = L1_3
            L4_3 = L4_3(L5_3)
            L5_3 = SetEntityCoords
            L6_3 = L1_3
            L7_3 = L4_3.x
            L8_3 = L4_3.y
            L9_3 = L4_3.z
            L9_3 = L9_3 - 0.47
            L10_3 = true
            L11_3 = true
            L12_3 = false
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          end
          L4_3 = Wait
          L5_3 = 100
          L4_3(L5_3)
          L4_3 = exports
          L4_3 = L4_3.striano_core
          L5_3 = L4_3
          L4_3 = L4_3.StartOrbitCam
          L6_3 = vector3
          L7_3 = 0.0
          L8_3 = 0.0
          L9_3 = 0.5
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          L7_3 = L1_3
          L8_3 = nil
          L9_3 = 3.0
          L10_3 = 30.0
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          L4_3 = ClearRagdollBlockingFlags
          L5_3 = L1_3
          L6_3 = 26
          L4_3(L5_3, L6_3)
          L4_3 = ResetPedRagdollTimer
          L5_3 = L1_3
          L4_3(L5_3)
          L4_3 = "sounds/striano_combat/magic/risata2.mp3"
          L5_3 = exports
          L5_3 = L5_3.xsound
          L6_3 = L5_3
          L5_3 = L5_3.PlayUrl
          L7_3 = "risata2"
          L8_3 = L4_3
          L9_3 = 0.3
          L5_3(L6_3, L7_3, L8_3, L9_3)
          L5_3 = GetEntityCoords
          L6_3 = L1_3
          L5_3 = L5_3(L6_3)
          L6_3 = GetEntityHeading
          L7_3 = L1_3
          L6_3 = L6_3(L7_3)
          L7_3 = ExecuteCommand
          L8_3 = "prova3 Back to the match in "
          L9_3 = L42_1
          L10_3 = " secs."
          L8_3 = L8_3 .. L9_3 .. L10_3
          L7_3(L8_3)
          L7_3 = L42_1
          L7_3 = L7_3 * 1000
          L8_3 = Wait
          L9_3 = L7_3 - 500
          L8_3(L9_3)
          L8_3 = DoScreenFadeOut
          L9_3 = 1000
          L8_3(L9_3)
          L8_3 = Wait
          L9_3 = 2000
          L8_3(L9_3)
          L8_3 = RequestCollisionAtCoord
          L9_3 = L5_3.x
          L10_3 = L5_3.y
          L11_3 = L5_3.z
          L8_3(L9_3, L10_3, L11_3)
          L8_3 = RespawnPed
          L9_3 = {}
          L10_3 = L5_3.x
          L9_3.x = L10_3
          L10_3 = L5_3.y
          L9_3.y = L10_3
          L10_3 = L5_3.z
          L10_3 = L10_3 + 0.6
          L9_3.z = L10_3
          L9_3.heading = L6_3
          L8_3(L9_3)
          L8_3 = L26_1
          L9_3 = mapCenter
          L10_3 = L24_1
          L11_3 = L24_1
          L10_3 = L10_3 + L11_3
          L11_3 = L10_1
          L10_3 = L10_3 - L11_3
          L10_3 = L10_3 - 15
          L8_3 = L8_3(L9_3, L10_3)
          L9_3 = SetEntityCoords
          L10_3 = L1_3
          L11_3 = L8_3
          L9_3(L10_3, L11_3)
          IsDead = false
          L9_3 = Wait
          L10_3 = 2000
          L9_3(L10_3)
          L9_3 = DoScreenFadeIn
          L10_3 = 1000
          L9_3(L10_3)
          L9_3 = exports
          L9_3 = L9_3.striano_core
          L10_3 = L9_3
          L9_3 = L9_3.EndOrbitCam
          L9_3(L10_3)
          L9_3 = exports
          L9_3 = L9_3.striano_combat
          L10_3 = L9_3
          L9_3 = L9_3.resetcolpi
          L9_3(L10_3)
          L9_3 = ExecuteCommand
          L10_3 = "stopragdoll"
          L9_3(L10_3)
          L9_3 = SetPedMaxHealth
          L10_3 = L1_3
          L11_3 = 500
          L9_3(L10_3, L11_3)
          L9_3 = SetEntityHealth
          L10_3 = L1_3
          L11_3 = 500
          L9_3(L10_3, L11_3)
          L9_3 = SetCurrentPedWeapon
          L10_3 = L1_3
          L11_3 = -1569615261
          L12_3 = true
          L9_3(L10_3, L11_3, L12_3)
          L9_3 = ExecuteCommand
          L10_3 = "hudoff"
          L9_3(L10_3)
          L9_3 = ExecuteCommand
          L10_3 = "e alzati"
          L9_3(L10_3)
          L9_3 = 0
          L14_1 = L9_3
          L9_3 = exports
          L9_3 = L9_3.striano_editor
          L10_3 = L9_3
          L9_3 = L9_3.setPoints
          L11_3 = L14_1
          L9_3(L10_3, L11_3)
          L9_3 = exports
          L9_3 = L9_3.striano_editor
          L10_3 = L9_3
          L9_3 = L9_3.showPointsDisplay
          L9_3(L10_3)
          L9_3 = Wait
          L10_3 = 950
          L9_3(L10_3)
          L9_3 = ExecuteCommand
          L10_3 = "resync"
          L9_3(L10_3)
          L9_3 = StopParticleFxLooped
          L10_3 = L3_3
          L9_3(L10_3)
          L9_3 = RemoveParticleFx
          L10_3 = L3_3
          L11_3 = true
          L9_3(L10_3, L11_3)
          L9_3 = "sounds/striano_combat/magic/risata4.mp3"
          L10_3 = exports
          L10_3 = L10_3.xsound
          L11_3 = L10_3
          L10_3 = L10_3.PlayUrl
          L12_3 = "risata4"
          L13_3 = L9_3
          L14_3 = 0.3
          L10_3(L11_3, L12_3, L13_3, L14_3)
          L10_3 = Wait
          L11_3 = 950
          L10_3(L11_3)
          L10_3 = PlaySoundFrontend
          L11_3 = -1
          L12_3 = "PICK_UP_WEAPON"
          L13_3 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
          L14_3 = 1
          L10_3(L11_3, L12_3, L13_3, L14_3)
          L10_3 = MakePedReload
          L11_3 = L1_3
          L10_3(L11_3)
          L10_3 = RefillAmmoInstantly
          L11_3 = L1_3
          L10_3(L11_3)
          L10_3 = TriggerServerEvent
          L11_3 = "sod:loadout:giveRandom"
          L10_3(L11_3)
          L10_3 = CreateThread
          function L11_3()
            local L0_4, L1_4
            L0_4 = Wait
            L1_4 = 1500
            L0_4(L1_4)
            L0_4 = ExecuteCommand
            L1_4 = "guardaArma"
            L0_4(L1_4)
            L0_4 = Wait
            L1_4 = 1000
            L0_4(L1_4)
            L0_4 = GuidaDuskfallsTasti
            L0_4()
          end
          L10_3(L11_3)
        end
      end
    end
  end
  L0_2(L1_2)
end
loopDuskfalls = L43_1
L43_1 = CreateThread
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = Nube
  L1_2 = duskmodepos
  L2_2 = true
  L0_2(L1_2, L2_2)
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = duskmodepos
    L1_2 = L1_2 - L2_2
    L1_2 = #L1_2
    if L1_2 < 3.0 then
      L1_2 = IsEntityAttached
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsControlPressed
        L2_2 = 0
        L3_2 = 25
        L1_2 = L1_2(L2_2, L3_2)
        if not L1_2 then
          L1_2 = IsControlPressed
          L2_2 = 0
          L3_2 = 24
          L1_2 = L1_2(L2_2, L3_2)
          if not L1_2 then
            L1_2 = duskmodepos
            L2_2 = L18_1
            if not L2_2 then
              L2_2 = L41_1
              if not L2_2 then
                L2_2 = true
                L41_1 = L2_2
                L2_2 = exports
                L2_2 = L2_2.striano_editor
                L3_2 = L2_2
                L2_2 = L2_2.HintHud_SetPosition
                L4_2 = L1_2.x
                L5_2 = L1_2.y
                L6_2 = L1_2.z
                L7_2 = 0.95
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                L2_2 = exports
                L2_2 = L2_2.striano_editor
                L3_2 = L2_2
                L2_2 = L2_2.HintHud_RefreshButtons
                L4_2 = {}
                L5_2 = {}
                L5_2.control = 38
                L5_2.label = "Sign-up Duskfalls"
                L6_2 = {}
                L6_2.control = 74
                L6_2.label = "Get Info"
                L4_2[1] = L5_2
                L4_2[2] = L6_2
                L2_2(L3_2, L4_2)
                L2_2 = exports
                L2_2 = L2_2.striano_editor
                L3_2 = L2_2
                L2_2 = L2_2.HintHud_SetMaxDistance
                L4_2 = 80.0
                L2_2(L3_2, L4_2)
                L2_2 = exports
                L2_2 = L2_2.striano_editor
                L3_2 = L2_2
                L2_2 = L2_2.HintHud_SetVisible
                L4_2 = true
                L2_2(L3_2, L4_2)
              end
              L2_2 = IsControlJustPressed
              L3_2 = 0
              L4_2 = 74
              L2_2 = L2_2(L3_2, L4_2)
              if L2_2 then
                L2_2 = exports
                L2_2 = L2_2.striano_combat
                L3_2 = L2_2
                L2_2 = L2_2.submex
                L4_2 = "Duskfalls is a mode where survivors challenge each other to a battle royale to the death where they must follow rules dictated by the Ash Demon. Cool in 4+ players!"
                L2_2(L3_2, L4_2)
                L2_2 = ExecuteCommand
                L3_2 = "e libro"
                L2_2(L3_2)
                L2_2 = L41_1
                if L2_2 then
                  L2_2 = false
                  L41_1 = L2_2
                  L2_2 = exports
                  L2_2 = L2_2.striano_editor
                  L3_2 = L2_2
                  L2_2 = L2_2.HintHud_SetVisible
                  L4_2 = false
                  L2_2(L3_2, L4_2)
                end
                L2_2 = Wait
                L3_2 = 5000
                L2_2(L3_2)
              end
              L2_2 = IsControlJustPressed
              L3_2 = 0
              L4_2 = 38
              L2_2 = L2_2(L3_2, L4_2)
              if L2_2 then
                L2_2 = true
                L18_1 = L2_2
                L2_2 = TriggerServerEvent
                L3_2 = "addPartecipante"
                L4_2 = GetPlayerServerId
                L5_2 = PlayerId
                L5_2, L6_2, L7_2, L8_2 = L5_2()
                L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
                L2_2 = ExecuteCommand
                L3_2 = "e pray30"
                L2_2(L3_2)
                L2_2 = exports
                L2_2 = L2_2.striano_combat
                L3_2 = L2_2
                L2_2 = L2_2.submex
                L4_2 = "You're on the waiting list to participate in the free-for-all Duskfalls. The match begins as soon as there are enough participants at the control point."
                L2_2(L3_2, L4_2)
                L2_2 = Wait
                L3_2 = 3000
                L2_2(L3_2)
                L2_2 = ExecuteCommand
                L3_2 = "e cc"
                L2_2(L3_2)
              end
            else
              L2_2 = L41_1
              if not L2_2 then
                L2_2 = ""
                L2_2 = "Leave"
                L3_2 = true
                L41_1 = L3_2
                L3_2 = exports
                L3_2 = L3_2.striano_editor
                L4_2 = L3_2
                L3_2 = L3_2.HintHud_SetPosition
                L5_2 = L1_2.x
                L6_2 = L1_2.y
                L7_2 = L1_2.z
                L8_2 = 0.95
                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
                L3_2 = exports
                L3_2 = L3_2.striano_editor
                L4_2 = L3_2
                L3_2 = L3_2.HintHud_RefreshButtons
                L5_2 = {}
                L6_2 = {}
                L6_2.control = 38
                L6_2.label = L2_2
                L5_2[1] = L6_2
                L3_2(L4_2, L5_2)
                L3_2 = exports
                L3_2 = L3_2.striano_editor
                L4_2 = L3_2
                L3_2 = L3_2.HintHud_SetMaxDistance
                L5_2 = 80.0
                L3_2(L4_2, L5_2)
                L3_2 = exports
                L3_2 = L3_2.striano_editor
                L4_2 = L3_2
                L3_2 = L3_2.HintHud_SetVisible
                L5_2 = true
                L3_2(L4_2, L5_2)
              end
              L2_2 = IsControlJustPressed
              L3_2 = 0
              L4_2 = 38
              L2_2 = L2_2(L3_2, L4_2)
              if L2_2 then
                L2_2 = false
                L18_1 = L2_2
                L2_2 = ExecuteCommand
                L3_2 = "e prendi4"
                L2_2(L3_2)
                L2_2 = TriggerServerEvent
                L3_2 = "leavePartecipante"
                L4_2 = GetPlayerServerId
                L5_2 = PlayerId
                L5_2, L6_2, L7_2, L8_2 = L5_2()
                L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
                L2_2 = exports
                L2_2 = L2_2.striano_combat
                L3_2 = L2_2
                L2_2 = L2_2.submex
                L4_2 = "You have left the waiting list for this modality, you will not participate in the next check."
                L2_2(L3_2, L4_2)
                L2_2 = TriggerServerEvent
                L3_2 = "addfeedPL"
                L4_2 = GetPlayerServerId
                L5_2 = PlayerId
                L5_2, L6_2, L7_2, L8_2 = L5_2()
                L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                L5_2 = "ha rifiutato di partecipare al prossimo Duskfalls"
                L6_2 = 10000
                L2_2(L3_2, L4_2, L5_2, L6_2)
                L2_2 = Wait
                L3_2 = 3000
                L2_2(L3_2)
              end
            end
          end
        end
      end
    else
      L1_2 = L41_1
      if L1_2 then
        L1_2 = false
        L41_1 = L1_2
        L1_2 = exports
        L1_2 = L1_2.striano_editor
        L2_2 = L1_2
        L1_2 = L1_2.HintHud_SetVisible
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
      L1_2 = Wait
      L2_2 = 3000
      L1_2(L2_2)
    end
  end
end
L43_1(L44_1)
L43_1 = RegisterNUICallback
L44_1 = "timerFinished"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "FINEDUSKTIMER"
L43_1(L44_1)
L43_1 = AddEventHandler
L44_1 = "FINEDUSKTIMER"
function L45_1()
  local L0_2, L1_2
  L0_2 = EndTimer
  L0_2()
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "VincitoreDusk"
L43_1(L44_1)
L43_1 = AddEventHandler
L44_1 = "VincitoreDusk"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ExecuteCommand
  L3_2 = "prova The game is over, you can view the standings from F8. Winner: "
  L4_2 = A0_2
  L5_2 = "!"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submex
  L4_2 = "WINNER DUSKFALLS ["
  L5_2 = A0_2
  L6_2 = "]"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = print
  L3_2 = "[ Scores SoD | Mode: Duskfalls | All vs All ]"
  L2_2(L3_2)
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L2_2 == A0_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "inv3d:giveItem"
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = "player"
    L6_2 = "moneta"
    L7_2 = 295
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = print
    L9_2 = L7_2
    L8_2(L9_2)
  end
end
L43_1(L44_1, L45_1)
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L16_1
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.getliferank
    L1_2 = L1_2(L2_2)
    L2_2 = exports
    L2_2 = L2_2.striano_editor
    L3_2 = L2_2
    L2_2 = L2_2.updateMaxHealth
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = SetPedMaxHealth
    L3_2 = L0_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityHealth
    L3_2 = L0_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = exports
    L2_2 = L2_2.striano_editor
    L3_2 = L2_2
    L2_2 = L2_2.showHealthBar
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = FreezeEntityPosition
    L3_2 = L0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = false
    L32_1 = L2_2
    L2_2 = false
    L33_1 = L2_2
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.strianosetweapon
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "stopragdoll"
    L2_2(L3_2)
    L2_2 = TriggerEvent
    L3_2 = "esx_ambulancejjj:revive3"
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_core
    L3_2 = L2_2
    L2_2 = L2_2.EndOrbitCam
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.resetcolpi
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.text_guide
    L3_2 = L2_2
    L2_2 = L2_2.ClearGuideText
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 50
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.text_guide
    L3_2 = L2_2
    L2_2 = L2_2.GuidaNascondi
    L2_2(L3_2)
    L2_2 = 1
    L3_2 = L27_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = StopParticleFxLooped
      L7_2 = L27_1
      L7_2 = L7_2[L5_2]
      L8_2 = 0
      L6_2(L7_2, L8_2)
      L6_2 = RemoveParticleFx
      L7_2 = L27_1
      L7_2 = L7_2[L5_2]
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
    L2_2 = {}
    L27_1 = L2_2
    L2_2 = true
    L17_1 = L2_2
    L2_2 = "sounds/endgamesoul.mp3"
    L3_2 = exports
    L3_2 = L3_2.xsound
    L4_2 = L3_2
    L3_2 = L3_2.PlayUrl
    L5_2 = "endgamesoul"
    L6_2 = L2_2
    L7_2 = 0.25
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Wait
      L1_3 = 7000
      L0_3(L1_3)
      L0_3 = exports
      L0_3 = L0_3.xsound
      L1_3 = L0_3
      L0_3 = L0_3.fadeOut
      L2_3 = "endgamesoul"
      L3_3 = 1000
      L0_3(L1_3, L2_3, L3_3)
    end
    L3_2(L4_2)
    L3_2 = "sounds/drumssouls.mp3"
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.PlayUrl
    L6_2 = "drumssouls"
    L7_2 = L3_2
    L8_2 = 0.25
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = false
    L16_1 = L4_2
    L4_2 = ipairs
    L5_2 = L29_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = SetParticleFxLoopedAlpha
      L11_2 = L9_2.fx
      L12_2 = 0.0
      L10_2(L11_2, L12_2)
      L10_2 = StopParticleFxLooped
      L11_2 = L9_2.fx
      L10_2(L11_2)
      L10_2 = RemoveParticleFx
      L11_2 = L9_2.fx
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = table
      L10_2 = L10_2.remove
      L11_2 = L29_1
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
    L4_2 = {}
    L29_1 = L4_2
    L4_2 = exports
    L4_2 = L4_2.striano_inventory
    L5_2 = L4_2
    L4_2 = L4_2.duskevent_off
    L4_2(L5_2)
    L4_2 = ExecuteCommand
    L5_2 = "hudon"
    L4_2(L5_2)
    L4_2 = 0
    L42_1 = L4_2
    L4_2 = HidePointsDisplay
    L4_2()
    L4_2 = RemoveAllPedWeapons
    L5_2 = L0_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetCurrentPedWeapon
    L5_2 = L0_2
    L6_2 = -1569615261
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = 0.1
      while true do
        L1_3 = L1_3 - 0.001
        L2_3 = 0.01
        if L1_3 < L2_3 then
          L1_3 = 0.01
        end
        L2_3 = ShakeGameplayCam
        L3_3 = "SMALL_EXPLOSION_SHAKE"
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        L2_3 = L2_3 - L0_3
        L3_3 = 3000
        if L2_3 > L3_3 then
          L2_3 = StopGameplayCamShaking
          L3_3 = true
          L2_3(L3_3)
          return
        end
        L2_3 = Wait
        L3_3 = 75
        L2_3(L3_3)
      end
    end
    L4_2(L5_2)
    L4_2 = false
    L17_1 = L4_2
    L4_2 = "bowdown@kneeling"
    L5_2 = "base"
    L6_2 = faiAnim
    L7_2 = L4_2
    L8_2 = L5_2
    L9_2 = -1
    L10_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Wait
    L7_2 = 25
    L6_2(L7_2)
    L6_2 = BloccaAnim
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = Wait
    L7_2 = 9000
    L6_2(L7_2)
    L6_2 = 0
    L15_1 = L6_2
    L6_2 = DoScreenFadeOut
    L7_2 = 1000
    L6_2(L7_2)
    L6_2 = Wait
    L7_2 = 1500
    L6_2(L7_2)
    L6_2 = 0
    L10_1 = L6_2
    L6_2 = TriggerEvent
    L7_2 = "xnTattoos:resetsporco"
    L6_2(L7_2)
    L6_2 = exports
    L6_2 = L6_2.striano_core
    L7_2 = L6_2
    L6_2 = L6_2.getliferank
    L6_2 = L6_2(L7_2)
    L7_2 = exports
    L7_2 = L7_2.striano_editor
    L8_2 = L7_2
    L7_2 = L7_2.updateMaxHealth
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = SetPedMaxHealth
    L8_2 = L0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = SetEntityHealth
    L8_2 = L0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = exports
    L7_2 = L7_2.striano_editor
    L8_2 = L7_2
    L7_2 = L7_2.showHealthBar
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = ExecuteCommand
    L8_2 = "hudleft"
    L7_2(L8_2)
    L7_2 = ClearPedBloodDamage
    L8_2 = L0_2
    L7_2(L8_2)
    L7_2 = SendNUIMessage
    L8_2 = {}
    L8_2.type = "showManaBar"
    L9_2 = maxManaGlobal
    L8_2.maxMana = L9_2
    L7_2(L8_2)
    L7_2 = GoHUB
    L7_2()
    L7_2 = DoScreenFadeIn
    L8_2 = 1000
    L7_2(L8_2)
  end
end
EndTimer = L43_1
L43_1 = RegisterNetEvent
L44_1 = "duskfalls:statsSync"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = print
  L2_2 = "Hai %d kill e %d morti"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2.kills
  L5_2 = A0_2.death
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.updateKills
  L3_2 = A0_2.kills
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.updateDeaths
  L3_2 = A0_2.death
  L1_2(L2_2, L3_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:tokenTaken"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  tokenHolderId = A0_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_2 == A0_2
  hasSoulToken = L2_2
  L2_2 = hasSoulToken
  if L2_2 then
    L2_2 = notify
    L3_2 = "^2Hai ottenuto il Token dell'Anima! Porta il sacrificio all'Altare."
    L2_2(L3_2)
  else
    L2_2 = notify
    L3_2 = "^3ID %s ha preso il Token dell'Anima. Impediscigli la consegna!"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:tokenDropped"
function L45_1()
  local L0_2, L1_2
  tokenHolderId = nil
  hasSoulToken = false
  L0_2 = notify
  L1_2 = "^1Il Token dell'Anima \195\168 stato perso."
  L0_2(L1_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:delivered"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetPlayerServerId
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  if L1_2 == A0_2 then
    L1_2 = notify
    L2_2 = "^2Hai consegnato l'Anima. Vittoria!"
    L1_2(L2_2)
    L1_2 = TriggerServerEvent
    L2_2 = "inv3d:giveItem"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = "player"
    L5_2 = "moneta"
    L6_2 = 300
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = notify
    L2_2 = "^1ID %s ha consegnato l'Anima. La Fiamma ha deciso."
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = A0_2
    L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:deliverFailed"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = notify
  L2_2 = "^1Consegna fallita: ^7"
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sonsofdecay:safeTightenPhase"
function L45_1()
  local L0_2, L1_2
  L0_2 = L16_1
  if not L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = false
    while true do
      L1_3 = L16_1
      if not L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = L17_1
      if L1_3 then
        L1_3 = Wait
        L2_3 = 3000
        L1_3(L2_3)
        return
      else
        L1_3 = mancanoTreMin
        if not L1_3 then
          L1_3 = "sounds/drumssouls.mp3"
          L2_3 = exports
          L2_3 = L2_3.xsound
          L3_3 = L2_3
          L2_3 = L2_3.PlayUrl
          L4_3 = "drumssouls"
          L5_3 = L1_3
          L6_3 = 0.4
          L2_3(L3_3, L4_3, L5_3, L6_3)
          mancanoTreMin = true
          L2_3 = exports
          L2_3 = L2_3.striano_combat
          L3_3 = L2_3
          L2_3 = L2_3.submex
          L4_3 = "The roots are feeding, the playing area will start to shrink!"
          L2_3(L3_3, L4_3)
          L2_3 = CreateThread
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = GetGameTimer
            L0_4 = L0_4()
            L1_4 = 0.1
            while true do
              L2_4 = L16_1
              if not L2_4 then
                break
              end
              L1_4 = L1_4 - 0.001
              L2_4 = 0.01
              if L1_4 < L2_4 then
                L1_4 = 0.01
              end
              L2_4 = ShakeGameplayCam
              L3_4 = "SMALL_EXPLOSION_SHAKE"
              L4_4 = L1_4
              L2_4(L3_4, L4_4)
              L2_4 = GetGameTimer
              L2_4 = L2_4()
              L2_4 = L2_4 - L0_4
              L3_4 = 5000
              if L2_4 > L3_4 then
                L2_4 = StopGameplayCamShaking
                L3_4 = true
                L2_4(L3_4)
                return
              end
              L2_4 = Wait
              L3_4 = 75
              L2_4(L3_4)
            end
          end
          L2_3(L3_3)
          L2_3 = NetworkOverrideClockTime
          L3_3 = 10
          L4_3 = 10
          L5_3 = 0
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = "FOGGY"
          L3_3 = SetWeatherTypeNowPersist
          L4_3 = L2_3
          L3_3(L4_3)
          L3_3 = ClearOverrideWeather
          L3_3()
          L3_3 = ClearWeatherTypePersist
          L3_3()
          L3_3 = SetWeatherTypePersist
          L4_3 = L2_3
          L3_3(L4_3)
          L3_3 = SetWeatherTypeNow
          L4_3 = L2_3
          L3_3(L4_3)
          L3_3 = SetWeatherTypeNowPersist
          L4_3 = L2_3
          L3_3(L4_3)
        else
          L1_3 = L31_1
          if nil == L1_3 then
            L1_3 = GetGameTimer
            L1_3 = L1_3()
            L31_1 = L1_3
          end
          L1_3 = GetGameTimer
          L1_3 = L1_3()
          L2_3 = L31_1
          L1_3 = L1_3 - L2_3
          L2_3 = 1000
          if L1_3 > L2_3 then
            L1_3 = GetGameTimer
            L1_3 = L1_3()
            L31_1 = L1_3
            L1_3 = L10_1
            L2_3 = L24_1
            L2_3 = L2_3 * 2
            L2_3 = L2_3 - 99.0
            if L1_3 < L2_3 and not L0_3 then
              L0_3 = true
              L1_3 = 1
              L2_3 = 10
              L3_3 = 1
              for L4_3 = L1_3, L2_3, L3_3 do
                L5_3 = L26_1
                L6_3 = mapCenter
                L7_3 = 75.0
                L5_3 = L5_3(L6_3, L7_3)
                L6_3 = math
                L6_3 = L6_3.random
                L7_3 = 1
                L8_3 = 5
                L6_3 = L6_3(L7_3, L8_3)
                L7_3 = L6_3 / 3.5
                if L6_3 > 1 then
                  L7_3 = L6_3 / 5.5
                end
                L8_3 = L8_1
                L9_3 = "core"
                L10_3 = "env_dust_devil_rural_sma"
                L11_3 = L5_3
                L12_3 = L7_3 + 0.0
                L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
                L9_3 = SetParticleFxLoopedAlpha
                L10_3 = L8_3
                L11_3 = 0.7
                L9_3(L10_3, L11_3)
                L9_3 = table
                L9_3 = L9_3.insert
                L10_3 = L29_1
                L11_3 = {}
                L11_3.pos = L5_3
                L11_3.fx = L8_3
                L11_3.qt = L6_3
                L9_3(L10_3, L11_3)
              end
              L1_3 = ExecuteCommand
              L2_3 = "prova The last 10 ashes have been added to each participant for the restricted area final!"
              L1_3(L2_3)
            end
            L1_3 = L10_1
            L2_3 = L24_1
            L2_3 = L2_3 * 2
            L2_3 = L2_3 - 75.0
            if L1_3 < L2_3 then
              L1_3 = L10_1
              L1_3 = L1_3 + 1.0
              L10_1 = L1_3
            end
          end
        end
      end
    end
  end
  L0_2(L1_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:trialBegin"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2 == L2_2
  L20_1 = L3_2
  L3_2 = ExecuteCommand
  L4_2 = "prova Lost Soul choosed. Hunt is started."
  L3_2(L4_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:setBoost"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L20_1
  if not L1_2 then
    return
  end
  if A0_2 then
    L1_2 = true
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = false
  ::lbl_11::
  if L1_2 then
    L2_2 = L21_1
    if L2_2 then
      return
    end
    L2_2 = TriggerServerEvent
    L3_2 = "setNemicoPubblico"
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = ExecuteCommand
    L3_2 = "prova You've been chosen by the Black Flame to protect the Lost Soul. Stay alive for one minute to earn 30 ashes. You're faster, but visible to everyone."
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.xsound
    L3_2 = L2_2
    L2_2 = L2_2.PlayUrl
    L4_2 = "femalesoul"
    L5_2 = "sounds/striano_combat/magic/femalesoul.mp3"
    L6_2 = 0.1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = L8_1
    L3_2 = "cut_josh_4"
    L4_2 = "scr_josh3_house_smoked"
    L5_2 = GetEntityCoords
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L5_2 = L5_2(L6_2)
    L6_2 = 5.0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = StopParticleFxLooped
      L1_3 = L2_2
      L0_3(L1_3)
      L0_3 = RemoveParticleFx
      L1_3 = L2_2
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L3_2(L4_2)
    L3_2 = true
    L21_1 = L3_2
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = L21_1
        if not L0_3 then
          return
        end
        L0_3 = SetPedMoveRateOverride
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = 1.8
        L0_3(L1_3, L2_3)
      end
      L0_3 = SetPedMoveRateOverride
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = 0.0
      L0_3(L1_3, L2_3)
    end
    L3_2(L4_2)
  else
    L2_2 = false
    L21_1 = L2_2
    L2_2 = TriggerServerEvent
    L3_2 = "setNemicoPubblico"
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:trialSuccess"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L21_1
  if L1_2 then
    L1_2 = false
    L21_1 = L1_2
    L1_2 = TriggerServerEvent
    L2_2 = "setNemicoPubblico"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = false
  L20_1 = L1_2
  L1_2 = GetPlayerServerId
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  if L1_2 == A0_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submex
    L3_2 = "You have protected the Soul by earning 30 Ashes, but remember that you must consolidate them."
    L1_2(L2_2, L3_2)
    L1_2 = "sounds/striano_combat/magic/risata2.mp3"
    L2_2 = exports
    L2_2 = L2_2.xsound
    L3_2 = L2_2
    L2_2 = L2_2.PlayUrl
    L4_2 = "risata2"
    L5_2 = L1_2
    L6_2 = 0.35
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = L14_1
    L2_2 = L2_2 + 30
    L14_1 = L2_2
    L2_2 = exports
    L2_2 = L2_2.striano_editor
    L3_2 = L2_2
    L2_2 = L2_2.setPoints
    L4_2 = L14_1
    L2_2(L3_2, L4_2)
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submex
    L3_2 = "The Soul has withstood the Test, earning 30 Ashes.."
    L1_2(L2_2, L3_2)
  end
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "sod:soul:trialFailed"
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L21_1
  if L2_2 then
    L2_2 = false
    L21_1 = L2_2
    L2_2 = TriggerServerEvent
    L3_2 = "setNemicoPubblico"
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = false
  L20_1 = L2_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L2_2 == A0_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submex
    L5_2 = "You've been shot down! You didn't protect your soul.!"
    L3_2(L4_2, L5_2)
    L3_2 = "sounds/impact_event.mp3"
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.PlayUrl
    L6_2 = "impact_event"
    L7_2 = L3_2
    L8_2 = 0.05
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = "sounds/striano_combat/magic/risata3.mp3"
    L5_2 = exports
    L5_2 = L5_2.xsound
    L6_2 = L5_2
    L5_2 = L5_2.PlayUrl
    L7_2 = "risata3"
    L8_2 = L4_2
    L9_2 = 0.3
    L5_2(L6_2, L7_2, L8_2, L9_2)
  elseif L2_2 == A1_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submex
    L5_2 = "You've slain the Soul of the Chosen One! Deliver it to the Yellow Beam of Light for 30 instant ashes!"
    L3_2(L4_2, L5_2)
    L3_2 = exports
    L3_2 = L3_2.xsound
    L4_2 = L3_2
    L3_2 = L3_2.PlayUrl
    L5_2 = "soulsteal2"
    L6_2 = "sounds/striano_combat/magic/soulsteal2.mp3"
    L7_2 = 0.1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = "sounds/striano_combat/magic/risata1.mp3"
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.PlayUrl
    L6_2 = "risata1"
    L7_2 = L3_2
    L8_2 = 0.3
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = TriggerServerEvent
    L5_2 = "setNemicoPubblico"
    L6_2 = GetPlayerServerId
    L7_2 = PlayerId
    L7_2, L8_2, L9_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = ConsegnaSecolare
    L4_2()
  else
    L3_2 = "sounds/striano_combat/magic/risata4.mp3"
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.PlayUrl
    L6_2 = "risata4"
    L7_2 = L3_2
    L8_2 = 0.3
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = exports
    L4_2 = L4_2.striano_combat
    L5_2 = L4_2
    L4_2 = L4_2.submex
    L6_2 = "The Soul has been cut down, if the chosen one delivers it to the indicated tree he will receive 30 already consolidated ashes!"
    L4_2(L5_2, L6_2)
  end
end
L43_1(L44_1, L45_1)
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetFarthestTree
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  if L2_2 then
    L5_2 = print
    L6_2 = "\240\159\140\179 L'albero pi\195\185 lontano \195\168 #%d a distanza %.2f (coords: %.2f, %.2f, %.2f)"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L2_2
    L9_2 = L4_2
    L10_2 = L3_2.x
    L11_2 = L3_2.y
    L12_2 = L3_2.z
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    while true do
      L0_3 = IsPedFatallyInjured
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      L1_3 = L3_2
      L1_3 = L0_3 - L1_3
      L1_3 = #L1_3
      if L1_3 < 5.0 then
        L1_3 = IsControlPressed
        L2_3 = 0
        L3_3 = 24
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          L1_3 = IsControlPressed
          L2_3 = 0
          L3_3 = 25
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = TriggerServerEvent
            L2_3 = "DepositaDusk"
            L3_3 = GetPlayerServerId
            L4_3 = PlayerId
            L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L4_3()
            L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
            L4_3 = 30
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = TriggerServerEvent
            L2_3 = "setNemicoPubblico"
            L3_3 = GetPlayerServerId
            L4_3 = PlayerId
            L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L4_3()
            L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
            L4_3 = false
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = L15_1
            L1_3 = L1_3 + 30
            L15_1 = L1_3
            L1_3 = exports
            L1_3 = L1_3.xsound
            L2_3 = L1_3
            L1_3 = L1_3.PlayUrl
            L3_3 = "soulsteal2"
            L4_3 = "sounds/striano_combat/magic/soulsteal2.mp3"
            L5_3 = 0.1
            L1_3(L2_3, L3_3, L4_3, L5_3)
            L1_3 = ExecuteCommand
            L2_3 = "prova You get 30 dusts stolen the soul!"
            L1_3(L2_3)
            return
          end
        end
      else
        L1_3 = DrawMarker
        L2_3 = 1
        L3_3 = L3_2.x
        L4_3 = L3_2.y
        L5_3 = L3_2.z
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.0
        L12_3 = 5.0
        L13_3 = 5.0
        L14_3 = 1000.0
        L15_3 = 255
        L16_3 = 255
        L17_3 = 0
        L18_3 = 25
        L19_3 = false
        L20_3 = true
        L21_3 = 2
        L22_3 = false
        L23_3 = nil
        L24_3 = nil
        L25_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
      end
    end
    L0_3 = TriggerServerEvent
    L1_3 = "setNemicoPubblico"
    L2_3 = GetPlayerServerId
    L3_3 = PlayerId
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L3_3()
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
    L3_3 = false
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = exports
    L0_3 = L0_3.striano_combat
    L1_3 = L0_3
    L0_3 = L0_3.submex
    L2_3 = "Your Soul has vanished. You missed your chance to receive 30 instant Ashes.!"
    L0_3(L1_3, L2_3)
    L0_3 = "sounds/striano_combat/magic/risata4.mp3"
    L1_3 = exports
    L1_3 = L1_3.xsound
    L2_3 = L1_3
    L1_3 = L1_3.PlayUrl
    L3_3 = "risata4"
    L4_3 = L0_3
    L5_3 = 0.3
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = exports
    L1_3 = L1_3.xsound
    L2_3 = L1_3
    L1_3 = L1_3.PlayUrl
    L3_3 = "soulsteal2"
    L4_3 = "sounds/striano_combat/magic/soulsteal2.mp3"
    L5_3 = 0.1
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  L5_2(L6_2)
end
ConsegnaSecolare = L43_1
L43_1 = AddEventHandler
L44_1 = "onResourceStop"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = false
    L21_1 = L1_2
    L1_2 = SetPedMoveRateOverride
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = 0.0
    L1_2(L2_2, L3_2)
  end
end
L43_1(L44_1, L45_1)
L43_1 = AddEventHandler
L44_1 = "onResourceStart"
function L45_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = false
    L21_1 = L1_2
    L1_2 = SetPedMoveRateOverride
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = 0.0
    L1_2(L2_2, L3_2)
    L1_2 = exports
    L1_2 = L1_2.striano_inventory
    L2_2 = L1_2
    L1_2 = L1_2.duskevent_off
    L1_2(L2_2)
  end
end
L43_1(L44_1, L45_1)
L43_1 = {}
L44_1 = 0
L45_1 = false
L46_1 = RegisterNetEvent
L47_1 = "sod:guardian:mark"
function L48_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = L43_1
    L2_2 = L2_2[A0_2]
    if nil == L2_2 then
      L2_2 = L44_1
      L2_2 = L2_2 + 1
      L44_1 = L2_2
    end
    L2_2 = L43_1
    L2_2[A0_2] = true
    L2_2 = LoopGuardiani
    L2_2()
  else
    L2_2 = L43_1
    L2_2 = L2_2[A0_2]
    if nil ~= L2_2 then
      L2_2 = L44_1
      L2_2 = L2_2 - 1
      L44_1 = L2_2
    end
    L2_2 = L43_1
    L2_2[A0_2] = nil
  end
end
L46_1(L47_1, L48_1)
function L46_1()
  local L0_2, L1_2
  L0_2 = L45_1
  if L0_2 then
    return
  end
  L0_2 = print
  L1_2 = "Loop guardiani attivo per il Nemico Pubblico."
  L0_2(L1_2)
  L0_2 = true
  L45_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
    while true do
      L0_3 = false
      L1_3 = pairs
      L2_3 = L43_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L44_1
        if L7_3 <= 0 then
          L7_3 = false
          L45_1 = L7_3
          L7_3 = primt
          L8_3 = "LOOP GUARDIANI CHIUSO."
          L7_3(L8_3)
          return
        end
        L7_3 = GetPlayerFromServerId
        L8_3 = L5_3
        L7_3 = L7_3(L8_3)
        if -1 ~= L7_3 then
          L8_3 = GetPlayerPed
          L9_3 = L7_3
          L8_3 = L8_3(L9_3)
          L9_3 = DoesEntityExist
          L10_3 = L8_3
          L9_3 = L9_3(L10_3)
          if L9_3 then
            L9_3 = table
            L9_3 = L9_3.unpack
            L10_3 = GetEntityCoords
            L11_3 = L8_3
            L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L10_3(L11_3)
            L9_3, L10_3, L11_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
            L12_3 = DrawMarker
            L13_3 = 1
            L14_3 = L9_3
            L15_3 = L10_3
            L16_3 = L11_3 + 5.0
            L17_3 = 0.0
            L18_3 = 0.0
            L19_3 = 0.0
            L20_3 = 0.0
            L21_3 = 0.0
            L22_3 = 0.0
            L23_3 = 0.5
            L24_3 = 0.5
            L25_3 = 100.0
            L26_3 = 255
            L27_3 = 0
            L28_3 = 0
            L29_3 = 200
            L30_3 = false
            L31_3 = false
            L32_3 = 2
            L33_3 = false
            L34_3 = nil
            L35_3 = nil
            L36_3 = false
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
            L12_3 = DrawMarker
            L13_3 = 28
            L14_3 = L9_3
            L15_3 = L10_3
            L16_3 = L11_3 + 3.0
            L17_3 = 0.0
            L18_3 = 0.0
            L19_3 = 0.0
            L20_3 = 0.0
            L21_3 = 0.0
            L22_3 = 0.0
            L23_3 = 0.25
            L24_3 = 0.25
            L25_3 = 0.25
            L26_3 = 255
            L27_3 = 0
            L28_3 = 0
            L29_3 = 200
            L30_3 = false
            L31_3 = false
            L32_3 = 2
            L33_3 = false
            L34_3 = nil
            L35_3 = nil
            L36_3 = false
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
            L0_3 = true
          end
        end
      end
      L1_3 = Wait
      if L0_3 then
        L2_3 = 0
        if L2_3 then
          goto lbl_97
        end
      end
      L2_3 = 250
      ::lbl_97::
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
LoopGuardiani = L46_1
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 0
  L2_2 = 5
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 >= 0 and L0_2 <= 3 then
    L19_1 = L0_2
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 25
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = ExecuteCommand
      L2_2 = "e prendi6"
      L1_2(L2_2)
    end
    L1_2 = L19_1
    if L1_2 > 0 then
      L1_2 = "Blocca 10s"
      L2_2 = L19_1
      if 2 == L2_2 then
        L1_2 = "Cieco 10s"
      else
        L2_2 = L19_1
        if 3 == L2_2 then
          L1_2 = "Esplosivo"
        end
      end
      L2_2 = ExecuteCommand
      L3_2 = "prova3 TRAP GETTED (~h~"
      L4_2 = L1_2
      L5_2 = "~h~) ~n~[Press ~h~J~h~ to place]"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
      L2_2 = PlaySoundFrontend
      L3_2 = -1
      L4_2 = "Success"
      L5_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
      L6_2 = 1
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
OttieniTrappola = L46_1
L46_1 = RegisterKeyMapping
L47_1 = "dusktrap"
L48_1 = "Duskfalls Trap"
L49_1 = "keyboard"
L50_1 = "j"
L46_1(L47_1, L48_1, L49_1, L50_1)
L46_1 = RegisterCommand
L47_1 = "dusktrap"
function L48_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L16_1
  if L0_2 then
    L0_2 = L19_1
    if L0_2 > 0 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = IsPedRagdoll
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedFatallyInjured
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = GetEntityCoords
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          L2_2 = L19_1
          if 1 == L2_2 then
            L2_2 = exports
            L2_2 = L2_2.striano_combat
            L3_2 = L2_2
            L2_2 = L2_2.submex
            L4_2 = "You leav a trap for legs."
            L2_2(L3_2, L4_2)
          else
            L2_2 = L19_1
            if 2 == L2_2 then
              L2_2 = exports
              L2_2 = L2_2.striano_combat
              L3_2 = L2_2
              L2_2 = L2_2.submex
              L4_2 = "You leave a trap for eyes."
              L2_2(L3_2, L4_2)
            else
              L2_2 = L19_1
              if 3 == L2_2 then
                L2_2 = exports
                L2_2 = L2_2.striano_combat
                L3_2 = L2_2
                L2_2 = L2_2.submex
                L4_2 = "You leave explosive trap."
                L2_2(L3_2, L4_2)
              end
            end
          end
          L2_2 = ExecuteCommand
          L3_2 = "e prendi6"
          L2_2(L3_2)
          L2_2 = Wait
          L3_2 = 1000
          L2_2(L3_2)
          L2_2 = ExecuteCommand
          L3_2 = "prova3 ~h~TRAP ACTIVE ALSO FOR YOU in ~h~3... 2..."
          L2_2(L3_2)
          L2_2 = Wait
          L3_2 = 3000
          L2_2(L3_2)
          L2_2 = TriggerServerEvent
          L3_2 = "addTrap"
          L4_2 = GetPlayerServerId
          L5_2 = PlayerId
          L5_2, L6_2, L7_2, L8_2 = L5_2()
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
          L5_2 = L19_1
          L6_2 = L1_2.x
          L7_2 = L1_2.y
          L8_2 = L1_2.z
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
          L2_2 = 0
          L19_1 = L2_2
        end
      end
    end
  end
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "addClientTrap"
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L11_1 = A0_2
  L1_2 = print
  L2_2 = "Ho ricevuto la tabella trappole dal server! (Totali: %d)"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L11_1
  L4_2 = #L4_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "dusk:addExplosion"
function L48_1(...)
  local L0_2, L1_2
  L0_2 = AddExplosion
  L1_2 = ...
  L0_2(L1_2)
end
L46_1(L47_1, L48_1)
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = PlaySoundFrontend
  L4_2 = -1
  L5_2 = "Beep_Green"
  L6_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = ExecuteCommand
  L4_2 = "prova3 YOU FELL IN A SURVIVOR TRAP!"
  L3_2(L4_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  if 2 == A0_2 then
    L4_2 = DoScreenFadeOut
    L5_2 = 1000
    L4_2(L5_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L3_2
        L0_3 = L0_3 - L1_3
        L1_3 = 10900
        if L0_3 > L1_3 then
          L0_3 = DoScreenFadeIn
          L1_3 = 1000
          L0_3(L1_3)
          return
        end
      end
    end
    L4_2(L5_2)
  elseif 3 == A0_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "dusk:addExplosion"
    L6_2 = A1_2.x
    L7_2 = A1_2.y
    L8_2 = A1_2.z
    L9_2 = 4
    L10_2 = 1.0
    L11_2 = true
    L12_2 = false
    L13_2 = 1.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  if 1 == A0_2 then
    L4_2 = ExecuteCommand
    L5_2 = "e injured4"
    L4_2(L5_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = A0_2
        if 1 == L0_3 then
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 0
          L0_3(L1_3, L2_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 30
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 31
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 21
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 22
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 44
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 73
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = GetGameTimer
          L0_3 = L0_3()
          L1_3 = L3_2
          L0_3 = L0_3 - L1_3
          L1_3 = 10900
          if L0_3 > L1_3 then
            L0_3 = IsEntityPlayingAnim
            L1_3 = PlayerPedId
            L1_3 = L1_3()
            L2_3 = "timetable@amanda@drunk@idle_a"
            L3_3 = "idle_buzzed"
            L4_3 = 3
            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
            if L0_3 then
              L0_3 = ExecuteCommand
              L1_3 = "e alzati"
              L0_3(L1_3)
            end
            return
          end
        end
      end
    end
    L4_2(L5_2)
  end
end
GetTrapped = L46_1
L46_1 = false
L47_1 = {}
L48_1 = {}
L49_1 = false
L50_1 = RegisterNetEvent
L51_1 = "sod:reveal:update"
function L52_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2[L7_2] = true
  end
  L2_2 = L46_1
  if L2_2 then
    L2_2 = pairs
    L3_2 = L48_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L1_2[L6_2]
      if not L8_2 then
        L8_2 = DoesBlipExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = RemoveBlip
          L9_2 = L7_2
          L8_2(L9_2)
        end
        L8_2 = L48_1
        L8_2[L6_2] = nil
      end
    end
    L2_2 = 161
    L3_2 = 1
    L4_2 = 0.85
    L5_2 = pairs
    L6_2 = L1_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L48_1
      L11_2 = L11_2[L9_2]
      if not L11_2 then
        L11_2 = GetPlayerFromServerId
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        if -1 ~= L11_2 then
          L12_2 = GetPlayerPed
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L13_2 = DoesEntityExist
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          if L13_2 then
            L13_2 = AddBlipForEntity
            L14_2 = L12_2
            L13_2 = L13_2(L14_2)
            L14_2 = SetBlipSprite
            L15_2 = L13_2
            L16_2 = L2_2
            L14_2(L15_2, L16_2)
            L14_2 = SetBlipColour
            L15_2 = L13_2
            L16_2 = L3_2
            L14_2(L15_2, L16_2)
            L14_2 = SetBlipScale
            L15_2 = L13_2
            L16_2 = L4_2
            L14_2(L15_2, L16_2)
            L14_2 = ShowHeadingIndicatorOnBlip
            L15_2 = L13_2
            L16_2 = true
            L14_2(L15_2, L16_2)
            L14_2 = BeginTextCommandSetBlipName
            L15_2 = "STRING"
            L14_2(L15_2)
            L14_2 = AddTextComponentString
            L15_2 = "PEN1"
            L14_2(L15_2)
            L14_2 = EndTextCommandSetBlipName
            L15_2 = L13_2
            L14_2(L15_2)
            L14_2 = L48_1
            L14_2[L9_2] = L13_2
          end
        end
      end
    end
  end
  L47_1 = L1_2
  L2_2 = next
  L3_2 = L47_1
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L49_1
    if not L2_2 then
      L2_2 = StartRevealDrawLoop
      L2_2()
    end
  end
end
L50_1(L51_1, L52_1)
function L50_1()
  local L0_2, L1_2
  L0_2 = L49_1
  if L0_2 then
    return
  end
  L0_2 = true
  L49_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
    while true do
      L0_3 = L49_1
      if not L0_3 then
        break
      end
      L0_3 = L16_1
      if not L0_3 then
        break
      end
      L0_3 = false
      L1_3 = pairs
      L2_3 = L47_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = GetPlayerFromServerId
        L8_3 = L5_3
        L7_3 = L7_3(L8_3)
        L8_3 = GetPlayerPed
        L9_3 = L7_3
        L8_3 = L8_3(L9_3)
        L9_3 = DoesEntityExist
        L10_3 = L8_3
        L9_3 = L9_3(L10_3)
        if L9_3 then
          L9_3 = table
          L9_3 = L9_3.unpack
          L10_3 = GetEntityCoords
          L11_3 = L8_3
          L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L10_3(L11_3)
          L9_3, L10_3, L11_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
          L12_3 = DrawMarker
          L13_3 = 1
          L14_3 = L9_3
          L15_3 = L10_3
          L16_3 = L11_3 + 8.0
          L17_3 = 0.0
          L18_3 = 0.0
          L19_3 = 0.0
          L20_3 = 0.0
          L21_3 = 0.0
          L22_3 = 0.0
          L23_3 = 0.5
          L24_3 = 0.5
          L25_3 = 110.0
          L26_3 = 255
          L27_3 = 0
          L28_3 = 0
          L29_3 = 200
          L30_3 = true
          L31_3 = false
          L32_3 = 2
          L33_3 = false
          L34_3 = nil
          L35_3 = nil
          L36_3 = false
          L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
          L12_3 = DrawMarker
          L13_3 = 28
          L14_3 = L9_3
          L15_3 = L10_3
          L16_3 = L11_3 + 5.0
          L17_3 = 0.0
          L18_3 = 0.0
          L19_3 = 0.0
          L20_3 = 0.0
          L21_3 = 0.0
          L22_3 = 0.0
          L23_3 = 0.28
          L24_3 = 0.28
          L25_3 = 0.28
          L26_3 = 255
          L27_3 = 0
          L28_3 = 0
          L29_3 = 200
          L30_3 = true
          L31_3 = false
          L32_3 = 2
          L33_3 = false
          L34_3 = nil
          L35_3 = nil
          L36_3 = false
          L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
          L0_3 = true
        end
      end
      L1_3 = next
      L2_3 = L47_1
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = pairs
        L2_3 = L48_1
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = DoesBlipExist
          L8_3 = L6_3
          L7_3 = L7_3(L8_3)
          if L7_3 then
            L7_3 = RemoveBlip
            L8_3 = L6_3
            L7_3(L8_3)
          end
        end
        L1_3 = {}
        L48_1 = L1_3
        L1_3 = false
        L49_1 = L1_3
        break
      end
      L1_3 = Wait
      if L0_3 then
        L2_3 = 0
        if L2_3 then
          goto lbl_118
        end
      end
      L2_3 = 250
      ::lbl_118::
      L1_3(L2_3)
    end
    L0_3 = false
    L49_1 = L0_3
  end
  L0_2(L1_2)
end
StartRevealDrawLoop = L50_1
