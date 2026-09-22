local L0_1, L1_1, L2_1, L3_1
L0_1 = exports
L0_1 = L0_1.xsound
L1_1 = RegisterNetEvent
L2_1 = "striano_djset:playSoundPos"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = 250.0
  if nil ~= A4_2 then
    L5_2 = A4_2
  end
  L6_2 = 0.1
  if nil ~= A3_2 then
    L6_2 = A3_2
  end
  L7_2 = L0_1
  L8_2 = L7_2
  L7_2 = L7_2.PlayUrlPos
  L9_2 = -1
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = L6_2
  L13_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L0_1
  L8_2 = L7_2
  L7_2 = L7_2.Distance
  L9_2 = -1
  L10_2 = A0_2
  L11_2 = L5_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "striano_djset:playMusic"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = pairs
  L2_2 = Locations
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = 0.03
    L8_2 = source
    L9_2 = GetPlayerPed
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = GetEntityCoords
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = L6_2.coords
    L11_2 = L10_2 - L11_2
    L11_2 = #L11_2
    L12_2 = L6_2.radius
    if L11_2 < L12_2 then
      L12_2 = L0_1
      L13_2 = L12_2
      L12_2 = L12_2.PlayUrlPos
      L14_2 = -1
      L15_2 = L6_2.job
      L16_2 = A0_2
      L17_2 = L7_2
      L18_2 = L10_2
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L12_2 = L0_1
      L13_2 = L12_2
      L12_2 = L12_2.Distance
      L14_2 = -1
      L15_2 = L6_2.job
      L16_2 = L6_2.radius
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L6_2.toggler = true
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "striano_djset:stopMusic"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = pairs
  L1_2 = Locations
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = source
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2.coords
    L9_2 = L8_2 - L9_2
    L9_2 = #L9_2
    L10_2 = L5_2.radius
    if L9_2 < L10_2 then
      L10_2 = L5_2.toggler
      if L10_2 then
        L5_2.toggler = false
        L10_2 = L0_1
        L11_2 = L10_2
        L10_2 = L10_2.Destroy
        L12_2 = -1
        L13_2 = L5_2.job
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "striano_djset:pauseMusic"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = pairs
  L1_2 = Locations
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = source
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2.coords
    L9_2 = L8_2 - L9_2
    L9_2 = #L9_2
    L10_2 = L5_2.radius
    if L9_2 < L10_2 then
      L10_2 = L5_2.toggler
      if L10_2 then
        L5_2.toggler = false
        L10_2 = L0_1
        L11_2 = L10_2
        L10_2 = L10_2.Pause
        L12_2 = -1
        L13_2 = L5_2.job
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "striano_djset:resumeMusic"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = pairs
  L1_2 = Locations
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = source
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2.coords
    L9_2 = L8_2 - L9_2
    L9_2 = #L9_2
    L10_2 = L5_2.radius
    if L9_2 < L10_2 then
      L10_2 = L5_2.toggler
      if not L10_2 then
        L5_2.toggler = true
        L10_2 = L0_1
        L11_2 = L10_2
        L10_2 = L10_2.Resume
        L12_2 = -1
        L13_2 = L5_2.job
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "striano_djset:cambiaVolume"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = pairs
  L2_2 = Locations
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = source
    L8_2 = GetPlayerPed
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = GetEntityCoords
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = L6_2.coords
    L10_2 = L9_2 - L10_2
    L10_2 = #L10_2
    L11_2 = L6_2.radius
    if L10_2 < L11_2 then
      L11_2 = tonumber
      L12_2 = A0_2
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        return
      end
      L11_2 = L6_2.toggler
      if L11_2 then
        L11_2 = L0_1
        L12_2 = L11_2
        L11_2 = L11_2.setVolume
        L13_2 = -1
        L14_2 = L6_2.job
        L15_2 = A0_2
        L11_2(L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
