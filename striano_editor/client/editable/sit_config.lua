local L0_1, L1_1, L2_1
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
CommandName = "sit"
CommandName2 = "att"
CommandName3 = "sta"
CommandName4 = "attp"
CommandReset = "resetsit"
MaxDistanceEditor = 5.0
ParkourMode = true
MsgLockVeh = "Not valid in a vehicle."
MsgVehFast = "Vehicle need to be stopped."
NoVehNear = "No vehicles near."
NoPlNear = "No players near."
NoPlNear = "Player need to be stopped."
GoOut = "Please get out of veh and use /att to attach."
DeveFermo = "Player need to be stopped."
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedFatallyInjured
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedRagdoll
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = true
      return L1_2
  end
  else
    L1_2 = false
    return L1_2
  end
end
canParkur = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = drawinfo
  L1_2 = 23
  L2_2 = "Lock cam"
  L3_2 = 21
  L4_2 = "Up"
  L5_2 = 22
  L6_2 = "Rotate"
  L7_2 = 15
  L8_2 = "Zoom"
  L9_2 = 38
  L10_2 = "Apply Sit"
  L11_2 = 73
  L12_2 = "~h~(x2)~h~ Exit"
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
DrawInfo = L0_1
L0_1 = exports
L1_1 = "inEDITORsyt"
function L2_1()
  local L0_2, L1_2
  L0_2 = inEDITOR
  return L0_2
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = loopSitAttivo
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = exports
  L0_2 = L0_2.skinchanger
  L1_2 = L0_2
  L0_2 = L0_2.ineditskin
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = notify
    L1_2 = "You are in edit skin, sit not available."
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = IsEntityAttached
  L1_2 = ped
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = notify
    L1_2 = "Press to time X to exit from sit."
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = IsEntityPlayingAnim
  L1_2 = ped
  L2_2 = "combat@drag_ped@"
  L3_2 = "injured_drag_plyr"
  L4_2 = 3
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = IsEntityPlayingAnim
  L1_2 = ped
  L2_2 = "missfinale_c2mcs_1"
  L3_2 = "fin_c2_mcs_1_camman"
  L4_2 = 3
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = posLastAtt
  if nil ~= L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = CommandName3
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = IsPedInAnyVehicle
  L1_2 = ped
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = notify
    L1_2 = GoOut
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = GetEntitySpeed
  L1_2 = ped
  L0_2 = L0_2(L1_2)
  L1_2 = 0.5
  if L0_2 > L1_2 then
    L0_2 = notify
    L1_2 = "Don't move to use sit editor."
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = IsEntityPositionFrozen
  L1_2 = ped
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = notify
    L1_2 = "Not available in this moment, you are frozen."
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end
canGoOn = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = IsControlJustReleased
  L1_2 = 0
  L2_2 = 74
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "copia "
    L2_2 = math
    L2_2 = L2_2.abs
    L3_2 = VX
    L2_2 = L2_2(L3_2)
    L3_2 = 0.001
    if L2_2 < L3_2 then
      L2_2 = 0.0
      if L2_2 then
        goto lbl_20
      end
    end
    L2_2 = VX
    ::lbl_20::
    L3_2 = ","
    L4_2 = math
    L4_2 = L4_2.abs
    L5_2 = VY
    L4_2 = L4_2(L5_2)
    L5_2 = 0.001
    if L4_2 < L5_2 then
      L4_2 = 0.0
      if L4_2 then
        goto lbl_32
      end
    end
    L4_2 = VY
    ::lbl_32::
    L5_2 = ","
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = VZ
    L6_2 = L6_2(L7_2)
    L7_2 = 0.001
    if L6_2 < L7_2 then
      L6_2 = 0.0
      if L6_2 then
        goto lbl_44
      end
    end
    L6_2 = VZ
    ::lbl_44::
    L7_2 = ","
    L8_2 = math
    L8_2 = L8_2.abs
    L9_2 = VRX
    L8_2 = L8_2(L9_2)
    L9_2 = 0.001
    if L8_2 < L9_2 then
      L8_2 = 0.0
      if L8_2 then
        goto lbl_56
      end
    end
    L8_2 = VRX
    ::lbl_56::
    L9_2 = ","
    L10_2 = math
    L10_2 = L10_2.abs
    L11_2 = VRY
    L10_2 = L10_2(L11_2)
    L11_2 = 0.001
    if L10_2 < L11_2 then
      L10_2 = 0.0
      if L10_2 then
        goto lbl_68
      end
    end
    L10_2 = VRY
    ::lbl_68::
    L11_2 = ","
    L12_2 = math
    L12_2 = L12_2.abs
    L13_2 = VR
    L12_2 = L12_2(L13_2)
    L13_2 = 0.001
    if L12_2 < L13_2 then
      L12_2 = 0.0
      if L12_2 then
        goto lbl_80
      end
    end
    L12_2 = VR
    ::lbl_80::
    L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L0_2(L1_2)
  end
end
onCopyLoop = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "CaricamiCamminata"
  L0_2(L1_2)
  modelloAttesa = nil
end
onSitStopped = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.insuperjump
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.checksuperjump
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.inblock
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.inanim
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = exports
          L0_2 = L0_2.striano_combat
          L1_2 = L0_2
          L0_2 = L0_2.inroll
          L0_2 = L0_2(L1_2)
          if not L0_2 then
            L0_2 = true
            return L0_2
        end
      end
    end
  end
  else
    L0_2 = false
    return L0_2
  end
end
canParkour = L0_1
L0_1 = true
loopSitAttivo = false
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = loopSitAttivo
  if L0_2 then
    return
  end
  loopSitAttivo = true
  while true do
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 73
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      break
    end
    L0_2 = IsDisabledControlPressed
    L1_2 = 0
    L2_2 = 73
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L0_1
    if L0_2 then
      L0_2 = "Normal"
      if L0_2 then
        goto lbl_28
      end
    end
    L0_2 = "Orbit"
    ::lbl_28::
    L1_2 = drawinfo
    L2_2 = 73
    L3_2 = "Stop Sit"
    L4_2 = 74
    L5_2 = "Change Cam to (~h~"
    L6_2 = L0_2
    L7_2 = "~h~)"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = IsControlJustPressed
    L2_2 = 0
    L3_2 = 73
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsDisabledControlJustPressed
      L2_2 = 0
      L3_2 = 73
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        goto lbl_53
      end
    end
    loopSitAttivo = false
    L1_2 = AnnullaSit
    L1_2()
    do return end
    ::lbl_53::
    L1_2 = IsControlJustPressed
    L2_2 = 0
    L3_2 = 74
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsDisabledControlJustPressed
      L2_2 = 0
      L3_2 = 74
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        goto lbl_84
      end
    end
    L1_2 = L0_1
    L1_2 = not L1_2
    L0_1 = L1_2
    L1_2 = L0_1
    if not L1_2 then
      L1_2 = EndOrbitCam
      L1_2()
    else
      L1_2 = StartOrbitCam
      L2_2 = vector3
      L3_2 = 0.0
      L4_2 = 0.0
      L5_2 = 0.0
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = 2
      L1_2(L2_2, L3_2, L4_2)
    end
    ::lbl_84::
  end
  loopSitAttivo = false
end
LoopSitSospeso = L1_1
