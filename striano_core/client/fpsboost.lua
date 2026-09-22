local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = nil
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = RopeDrawShadowEnabled
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = CascadeShadowsClearShadowSampleType
  L2_2()
  L2_2 = CascadeShadowsSetAircraftMode
  L3_2 = A1_2
  L2_2(L3_2)
end
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = CascadeShadowsEnableEntityTracker
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = CascadeShadowsSetDynamicDepthMode
  L6_2 = A1_2
  L5_2(L6_2)
  L5_2 = CascadeShadowsSetEntityTrackerScale
  L6_2 = A2_2
  L5_2(L6_2)
  L5_2 = CascadeShadowsSetDynamicDepthValue
  L6_2 = A3_2
  L5_2(L6_2)
  L5_2 = CascadeShadowsSetCascadeBoundsScale
  L6_2 = A4_2
  L5_2(L6_2)
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SetFlashLightFadeDistance
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = SetLightsCutoffDistanceTweak
  L3_2 = A1_2
  L2_2(L3_2)
end
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = A0_2
  L1_2(L2_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if "reset" == A0_2 then
    L1_2 = L1_1
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L2_2 = true
    L3_2 = true
    L4_2 = 5.0
    L5_2 = 5.0
    L6_2 = 5.0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = L3_1
    L2_2 = 10.0
    L3_2 = 10.0
    L1_2(L2_2, L3_2)
    L1_2 = L4_1
    L2_2 = "Mode: Reset"
    L1_2(L2_2)
  elseif "ulow" == A0_2 then
    L1_2 = L1_1
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L2_2 = true
    L3_2 = false
    L4_2 = 0.0
    L5_2 = 0.0
    L6_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = L3_1
    L2_2 = 0.0
    L3_2 = 0.0
    L1_2(L2_2, L3_2)
    L1_2 = L4_1
    L2_2 = "Mode: Ultra Low"
    L1_2(L2_2)
  elseif "low" == A0_2 then
    L1_2 = L1_1
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L2_2 = true
    L3_2 = false
    L4_2 = 0.0
    L5_2 = 0.0
    L6_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = L3_1
    L2_2 = 5.0
    L3_2 = 5.0
    L1_2(L2_2, L3_2)
    L1_2 = L4_1
    L2_2 = "Mode: Low"
    L1_2(L2_2)
  elseif "medium" == A0_2 then
    L1_2 = L1_1
    L2_2 = true
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L2_2 = true
    L3_2 = false
    L4_2 = 5.0
    L5_2 = 3.0
    L6_2 = 3.0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = L3_1
    L2_2 = 3.0
    L3_2 = 3.0
    L1_2(L2_2, L3_2)
    L1_2 = L4_1
    L2_2 = "Mode: Medium"
    L1_2(L2_2)
  else
    L1_2 = L4_1
    L2_2 = "Usage: /fps [reset/ulow/low/medium]"
    L1_2(L2_2)
    L1_2 = L4_1
    L2_2 = "Invalid type: "
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    return
  end
  L0_1 = A0_2
end
L6_1 = RegisterCommand
L7_1 = "fps"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    L2_2 = L4_1
    L3_2 = "Usage: /fps [reset/ulow/low/medium]"
    L2_2(L3_2)
    return
  end
  L2_2 = L5_1
  L3_2 = A1_2[1]
  L2_2(L3_2)
end
L9_1 = false
L6_1(L7_1, L8_1, L9_1)
