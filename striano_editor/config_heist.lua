local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
FleecaTargets = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = FleecaTargets
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return
  end
  L1_2 = FleecaTargets
  L1_2[A0_2] = true
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.addSphereZone
  L3_2 = {}
  L4_2 = "fleeca_grab_"
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L3_2.name = L4_2
  L4_2 = Config
  L4_2 = L4_2.FleecaHeist
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.grab
  L4_2 = L4_2.pos
  L3_2.coords = L4_2
  L3_2.radius = 2.0
  L4_2 = {}
  L5_2 = {}
  L5_2.label = "Grab"
  L5_2.distance = 2.0
  function L6_2()
    local L0_3, L1_3
    L0_3 = grabNow
    L0_3 = Config
    L0_3 = L0_3.FleecaHeist
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.grab
    L0_3 = L0_3.loot
    L0_3 = not L0_3 and L0_3
    return L0_3
  end
  L5_2.canInteract = L6_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = Grab
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L5_2.onSelect = L6_2
  L4_2[1] = L5_2
  L3_2.options = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.FleecaHeist
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.trollys
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = exports
    L7_2 = L7_2.striano_core
    L8_2 = L7_2
    L7_2 = L7_2.addSphereZone
    L9_2 = {}
    L10_2 = "fleeca_trolly_"
    L11_2 = A0_2
    L12_2 = "_"
    L13_2 = L5_2
    L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
    L9_2.name = L10_2
    L10_2 = L6_2.coords
    L9_2.coords = L10_2
    L9_2.radius = 2.0
    L10_2 = {}
    L11_2 = {}
    L11_2.label = "Grab Trolly"
    L11_2.distance = 2.0
    function L12_2()
      local L0_3, L1_3
      L0_3 = grabNow
      L0_3 = Config
      L0_3 = L0_3.FleecaHeist
      L1_3 = A0_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.trollys
      L1_3 = L5_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.loot
      L0_3 = not L0_3 and L0_3
      return L0_3
    end
    L11_2.canInteract = L12_2
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = GrabTrolly
      L1_3 = A0_2
      L2_3 = L5_2
      L0_3(L1_3, L2_3)
    end
    L11_2.onSelect = L12_2
    L10_2[1] = L11_2
    L9_2.options = L10_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.FleecaHeist
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.drills
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = exports
    L7_2 = L7_2.striano_core
    L8_2 = L7_2
    L7_2 = L7_2.addSphereZone
    L9_2 = {}
    L10_2 = "fleeca_drill_"
    L11_2 = A0_2
    L12_2 = "_"
    L13_2 = L5_2
    L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
    L9_2.name = L10_2
    L10_2 = L6_2.coords
    L9_2.coords = L10_2
    L9_2.radius = 2.0
    L10_2 = {}
    L11_2 = {}
    L11_2.label = "Drill"
    L11_2.distance = 2.0
    function L12_2()
      local L0_3, L1_3
      L0_3 = grabNow
      L0_3 = Config
      L0_3 = L0_3.FleecaHeist
      L1_3 = A0_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.drills
      L1_3 = L5_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.loot
      L0_3 = not L0_3 and L0_3
      return L0_3
    end
    L11_2.canInteract = L12_2
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = Drill
      L1_3 = A0_2
      L2_3 = L5_2
      L0_3(L1_3, L2_3)
    end
    L11_2.onSelect = L12_2
    L10_2[1] = L11_2
    L9_2.options = L10_2
    L7_2(L8_2, L9_2)
  end
end
SetupFleecaTargets = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.removeZone
  L3_2 = "fleeca_grab_"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.FleecaHeist
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.trollys
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = exports
    L6_2 = L6_2.striano_core
    L7_2 = L6_2
    L6_2 = L6_2.removeZone
    L8_2 = "fleeca_trolly_"
    L9_2 = A0_2
    L10_2 = "_"
    L11_2 = L5_2
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.FleecaHeist
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.drills
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = exports
    L6_2 = L6_2.striano_core
    L7_2 = L6_2
    L6_2 = L6_2.removeZone
    L8_2 = "fleeca_drill_"
    L9_2 = A0_2
    L10_2 = "_"
    L11_2 = L5_2
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = FleecaTargets
  L1_2[A0_2] = nil
end
RemoveFleecaTargets = L0_1
L0_1 = {}
Config = L0_1
L0_1 = Config
L1_1 = {}
L1_1.requiredPoliceCount = 3
L2_1 = {}
L3_1 = "drill"
L4_1 = "bag"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.requiredItems = L2_1
L2_1 = {}
L3_1 = {}
L3_1.item = nil
L3_1.count = 5000
L3_1.multiGrabCount = 750000
L2_1.cashTrolly = L3_1
L1_1.rewardItems = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = "gold"
  L2_2 = "cash"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_2[L1_2]
  return L2_2
end
L1_1.grabReward = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = "cash"
  L0_2[1] = L1_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 3
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_2[L1_2]
  return L2_2
end
L1_1.trollyReward = L2_1
L0_1.FleecaMain = L1_1
L0_1 = Config
L1_1 = {}
L2_1 = {}
L2_1.scenePed = nil
L2_1.sceneModel = "a_f_m_fatbla_01"
L3_1 = vector3
L4_1 = 3358.16
L5_1 = 7359.567
L6_1 = 7.184
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.scenePedStart = L3_1
L2_1.scenePedStartHead = 205.0
L3_1 = {}
L4_1 = nil
L5_1 = nil
L3_1[1] = L4_1
L3_1[2] = L5_1
L2_1.doorHeading = L3_1
L2_1.doorCalc = true
L3_1 = GetHashKey
L4_1 = "prop_gold_vault_gate_01"
L3_1 = L3_1(L4_1)
L2_1.doorModel = L3_1
L3_1 = {}
L4_1 = vector3
L5_1 = 3360.773
L6_1 = 7370.443
L7_1 = 8.007
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.pos = L4_1
L3_1.heading = 25.0
L3_1.loot = false
L2_1.grab = L3_1
L3_1 = {}
L4_1 = {}
L5_1 = vector3
L6_1 = 3363.441
L7_1 = 7368.945
L8_1 = 7.185
L5_1 = L5_1(L6_1, L7_1, L8_1)
L4_1.coords = L5_1
L4_1.loot = false
L3_1[1] = L4_1
L2_1.drills = L3_1
L3_1 = {}
L2_1.trollys = L3_1
L3_1 = {}
L4_1 = vector3
L5_1 = 3362.666
L6_1 = 7362.042
L7_1 = 7.181
L4_1 = L4_1(L5_1, L6_1, L7_1)
L5_1 = vector3
L6_1 = 3362.992
L7_1 = 7365.841
L8_1 = 7.18
L5_1, L6_1, L7_1, L8_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L2_1.pedRoute = L3_1
L2_1.headFinalPad = 70.0
function L3_1(A0_2)
  local L1_2
end
L2_1.dispatchEvent = L3_1
L1_1[1] = L2_1
L0_1.FleecaHeist = L1_1
