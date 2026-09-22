local L0_1, L1_1, L2_1, L3_1
closeAllMenu = false
L0_1 = {}
myRACES = L0_1
inCreateRace = false
troppoTempo = 0
inCrossID = 0
Laps = 1
siComincia = 0
DistanzaPrendiCheck = 15.0
toggleRace = false
chiudiVisualizzatore = false
L0_1 = AddEventHandler
L1_1 = "visualizzaCorse"
function L2_1(A0_2)
  local L1_2, L2_2
  toggleRace = true
  chiudiVisualizzatore = false
  L1_2 = SetNuiFocusKeepInput
  L2_2 = true
  L1_2(L2_2)
  L1_2 = loopMyRaces
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "raceCreate"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = inCreateRace
  if not L0_2 then
    L0_2 = notify
    L1_2 = ""
    L0_2(L1_2)
    inCreateRace = true
    chiudiVisualizzatore = true
    L0_2 = Wait
    L1_2 = 7
    L0_2(L1_2)
    chiudiVisualizzatore = false
    L0_2 = 1
    L1_2 = myRACES
    L1_2 = #L1_2
    if L1_2 > 0 then
      L1_2 = myRACES
      L1_2 = #L1_2
      L0_2 = L1_2 + 1
      L1_2 = myRACES
      L2_2 = {}
      L1_2[L0_2] = L2_2
      L1_2 = myRACES
      L1_2 = L1_2[L0_2]
      L1_2.completa = false
      L1_2 = myRACES
      L1_2 = L1_2[L0_2]
      L1_2.Laps = 1
    else
      L1_2 = myRACES
      L2_2 = {}
      L1_2[1] = L2_2
      L1_2 = myRACES
      L1_2 = L1_2[1]
      L1_2.completa = false
      L1_2 = myRACES
      L1_2 = L1_2[1]
      L1_2.Laps = 1
    end
    L1_2 = loopRaceCreator
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "raceList"
function L2_1()
  local L0_2, L1_2
  L0_2 = openMyRaces
  L0_2()
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3
    while true do
      L0_3 = closeAllMenu
      if L0_3 then
        break
      end
      L0_3 = toggleRace
      if not L0_3 then
        break
      end
      L0_3 = chiudiVisualizzatore
      if L0_3 then
        break
      end
      L0_3 = 1
      L1_3 = myRACES
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = A0_2
        if L3_3 == L4_3 then
          L4_3 = myRACES
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.Checks
          L4_3 = L4_3[1]
          if nil ~= L4_3 then
            L4_3 = myRACES
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.Checks
            L4_3 = L4_3[1]
            L5_3 = Draw3D
            L6_3 = L4_3.x
            L7_3 = L4_3.y
            L8_3 = L4_3.z
            L8_3 = L8_3 + 1.0
            L9_3 = "~g~"
            L10_3 = L3_3
            L11_3 = ""
            L9_3 = L9_3 .. L10_3 .. L11_3
            L10_3 = 0.8
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
            L5_3 = DrawMarker
            L6_3 = 28
            L7_3 = L4_3.x
            L8_3 = L4_3.y
            L9_3 = L4_3.z
            L10_3 = 0.0
            L11_3 = 0.0
            L12_3 = 0.0
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.3
            L17_3 = 0.3
            L18_3 = 0.3
            L19_3 = 0
            L20_3 = 200
            L21_3 = 0
            L22_3 = 150
            L23_3 = false
            L24_3 = true
            L25_3 = 2
            L26_3 = nil
            L27_3 = nil
            L28_3 = false
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            L5_3 = DrawMarker
            L6_3 = 1
            L7_3 = L4_3.x
            L8_3 = L4_3.y
            L9_3 = L4_3.z
            L10_3 = 0.0
            L11_3 = 0.0
            L12_3 = 0.0
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.3
            L17_3 = 0.3
            L18_3 = 150.0
            L19_3 = 0
            L20_3 = 200
            L21_3 = 0
            L22_3 = 150
            L23_3 = false
            L24_3 = true
            L25_3 = 2
            L26_3 = nil
            L27_3 = nil
            L28_3 = false
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          end
          L4_3 = myRACES
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.Checks
          L4_3 = L4_3[1]
          if nil ~= L4_3 then
            L4_3 = myRACES
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.Checks
            L5_3 = myRACES
            L5_3 = L5_3[L3_3]
            L5_3 = L5_3.Checks
            L5_3 = #L5_3
            L4_3 = L4_3[L5_3]
            L5_3 = Draw3D
            L6_3 = L4_3.x
            L7_3 = L4_3.y
            L8_3 = L4_3.z
            L8_3 = L8_3 + 1.0
            L9_3 = "~r~"
            L10_3 = L3_3
            L11_3 = ""
            L9_3 = L9_3 .. L10_3 .. L11_3
            L10_3 = 0.8
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
            L5_3 = DrawMarker
            L6_3 = 28
            L7_3 = L4_3.x
            L8_3 = L4_3.y
            L9_3 = L4_3.z
            L10_3 = 0.0
            L11_3 = 0.0
            L12_3 = 0.0
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.3
            L17_3 = 0.3
            L18_3 = 0.3
            L19_3 = 200
            L20_3 = 0
            L21_3 = 0
            L22_3 = 150
            L23_3 = false
            L24_3 = true
            L25_3 = 2
            L26_3 = nil
            L27_3 = nil
            L28_3 = false
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            L5_3 = DrawMarker
            L6_3 = 1
            L7_3 = L4_3.x
            L8_3 = L4_3.y
            L9_3 = L4_3.z
            L10_3 = 0.0
            L11_3 = 0.0
            L12_3 = 0.0
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.3
            L17_3 = 0.3
            L18_3 = 150.0
            L19_3 = 200
            L20_3 = 0
            L21_3 = 0
            L22_3 = 150
            L23_3 = false
            L24_3 = true
            L25_3 = 2
            L26_3 = nil
            L27_3 = nil
            L28_3 = false
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          end
          L4_3 = 1
          L5_3 = myRACES
          L5_3 = L5_3[L3_3]
          L5_3 = L5_3.Checks
          L5_3 = #L5_3
          L6_3 = 1
          for L7_3 = L4_3, L5_3, L6_3 do
            if L7_3 > 1 then
              L8_3 = myRACES
              L8_3 = L8_3[L3_3]
              L8_3 = L8_3.Checks
              L8_3 = #L8_3
              if L7_3 < L8_3 then
                L8_3 = myRACES
                L8_3 = L8_3[L3_3]
                L8_3 = L8_3.Checks
                L8_3 = L8_3[L7_3]
                L9_3 = Draw3D
                L10_3 = L8_3.x
                L11_3 = L8_3.y
                L12_3 = L8_3.z
                L12_3 = L12_3 + 1.0
                L13_3 = "*"
                L14_3 = 0.8
                L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
                L9_3 = DrawMarker
                L10_3 = 28
                L11_3 = L8_3.x
                L12_3 = L8_3.y
                L13_3 = L8_3.z
                L14_3 = 0.0
                L15_3 = 0.0
                L16_3 = 0.0
                L17_3 = 0.0
                L18_3 = 0.0
                L19_3 = 0.0
                L20_3 = 0.3
                L21_3 = 0.3
                L22_3 = 0.3
                L23_3 = 200
                L24_3 = 200
                L25_3 = 255
                L26_3 = 150
                L27_3 = false
                L28_3 = true
                L29_3 = 2
                L30_3 = nil
                L31_3 = nil
                L32_3 = false
                L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                L9_3 = DrawMarker
                L10_3 = 1
                L11_3 = L8_3.x
                L12_3 = L8_3.y
                L13_3 = L8_3.z
                L14_3 = 0.0
                L15_3 = 0.0
                L16_3 = 0.0
                L17_3 = 0.0
                L18_3 = 0.0
                L19_3 = 0.0
                L20_3 = 0.2
                L21_3 = 0.2
                L22_3 = 150.0
                L23_3 = 200
                L24_3 = 200
                L25_3 = 255
                L26_3 = 150
                L27_3 = false
                L28_3 = true
                L29_3 = 2
                L30_3 = nil
                L31_3 = nil
                L32_3 = false
                L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
              end
            end
          end
        end
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    closeAllMenu = false
    toggleRace = false
  end
  L1_2(L2_2)
end
loopMyRaces = L0_1
L0_1 = 2
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = 2
  L0_1 = L1_2
  L1_2 = myRACES
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.Checks
  if nil == L1_2 then
    L1_2 = myRACES
    L1_2 = L1_2[A0_2]
    L2_2 = {}
    L1_2.Checks = L2_2
  end
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    while true do
      L0_3 = inCreateRace
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = drawInfos
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 73
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = myRACES
        L1_3 = A0_2
        L0_3[L1_3] = nil
        inCreateRace = false
        L0_3 = 2
        L0_1 = L0_3
        L0_3 = openMenuRace
        L0_3()
        return
      end
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 74
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = true
        L1_3 = 1
        L2_3 = myRACES
        L3_3 = A0_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.Checks
        L2_3 = #L2_3
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = GetEntityCoords
          L6_3 = PlayerPedId
          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L6_3()
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          L6_3 = myRACES
          L7_3 = A0_2
          L6_3 = L6_3[L7_3]
          L6_3 = L6_3.Checks
          L6_3 = L6_3[L4_3]
          L5_3 = L5_3 - L6_3
          L5_3 = #L5_3
          if L5_3 < 15.0 then
            L0_3 = false
          end
        end
        if L0_3 then
          L1_3 = table
          L1_3 = L1_3.insert
          L2_3 = myRACES
          L3_3 = A0_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.Checks
          L3_3 = GetEntityCoords
          L4_3 = PlayerPedId
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L4_3()
          L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          L1_3 = L0_1
          L1_3 = L1_3 + 1
          L0_1 = L1_3
          L1_3 = PlaySoundFrontend
          L2_3 = -1
          L3_3 = "5_SEC_WARNING"
          L4_3 = "HUD_MINI_GAME_SOUNDSET"
          L5_3 = 1
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = tx_checkAdded
          L2_3 = L0_1
          L1_3(L2_3)
        else
          L1_3 = tx_tooclose
          L1_3()
        end
      end
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 23
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 23
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_155
        end
      end
      L0_3 = myRACES
      L1_3 = A0_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.Checks
      L0_3 = #L0_3
      if L0_3 > 3 then
        L0_3 = myRACES
        L1_3 = A0_2
        L0_3 = L0_3[L1_3]
        L0_3.completa = true
        L0_3 = myRACES
        L1_3 = A0_2
        L0_3 = L0_3[L1_3]
        L0_3.Laps = 1
        L0_3 = TriggerServerEvent
        L1_3 = "sendRace"
        L2_3 = GetPlayerServerId
        L3_3 = PlayerId
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L3_3()
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        L3_3 = A0_2
        L4_3 = myRACES
        L5_3 = A0_2
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.Checks
        L0_3(L1_3, L2_3, L3_3, L4_3)
        inCreateRace = false
        L0_3 = PlaySoundFrontend
        L1_3 = -1
        L2_3 = "5_Second_Timer"
        L3_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
        L4_3 = 0
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = SetNuiFocusKeepInput
        L1_3 = true
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = loopMyRaces
        L1_3 = A0_2
        L0_3(L1_3)
        L0_3 = TriggerEvent
        L1_3 = "visualizzaCorse"
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = TriggerEvent
        L1_3 = "GestisciGara"
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
        return
      else
        L0_3 = tx_notMuch
        L0_3()
      end
      ::lbl_155::
      L0_3 = 1
      L1_3 = myRACES
      L2_3 = A0_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.Checks
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = myRACES
        L5_3 = A0_2
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.Checks
        L4_3 = L4_3[L3_3]
        L5_3 = DrawMarker
        L6_3 = 28
        L7_3 = L4_3.x
        L8_3 = L4_3.y
        L9_3 = L4_3.z
        L10_3 = 0.0
        L11_3 = 0.0
        L12_3 = 0.0
        L13_3 = 0.0
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.5
        L17_3 = 0.5
        L18_3 = 0.5
        L19_3 = 200
        L20_3 = 200
        L21_3 = 255
        L22_3 = 150
        L23_3 = false
        L24_3 = true
        L25_3 = 2
        L26_3 = nil
        L27_3 = nil
        L28_3 = false
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        L5_3 = DrawMarker
        L6_3 = 1
        L7_3 = L4_3.x
        L8_3 = L4_3.y
        L9_3 = L4_3.z
        L10_3 = 0.0
        L11_3 = 0.0
        L12_3 = 0.0
        L13_3 = 0.0
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.5
        L17_3 = 0.5
        L18_3 = 10.0
        L19_3 = 200
        L20_3 = 200
        L21_3 = 255
        L22_3 = 150
        L23_3 = false
        L24_3 = true
        L25_3 = 2
        L26_3 = nil
        L27_3 = nil
        L28_3 = false
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
      end
    end
  end
  L1_2(L2_2)
end
loopRaceCreator = L1_1
L1_1 = RegisterNetEvent
L2_1 = "PreparaCorsa"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "PreparaCorsa"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = siComincia
  if 0 == L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2[1]
    L2_2 = L2_2 - L3_2
    L2_2 = #L2_2
    L3_2 = DistanzaPrendiCheck
    L3_2 = L3_2 * 3
    if L2_2 <= L3_2 then
      siComincia = A1_2
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
        while true do
          L0_3 = siComincia
          if not (L0_3 > 0) then
            break
          end
          L0_3 = GetEntityCoords
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
          L1_3 = A0_2
          L1_3 = L1_3[1]
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          L1_3 = DistanzaPrendiCheck
          if L0_3 > L1_3 then
            L0_3 = GetEntityCoords
            L1_3 = PlayerPedId
            L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L1_3()
            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
            L1_3 = A0_2
            L1_3 = L1_3[1]
            L0_3 = L0_3 - L1_3
            L0_3 = #L0_3
            L1_3 = DistanzaPrendiCheck
            L1_3 = L1_3 * 3
            if L0_3 <= L1_3 then
              L0_3 = DrawMarker
              L1_3 = 28
              L2_3 = A0_2
              L2_3 = L2_3[1]
              L2_3 = L2_3.x
              L3_3 = A0_2
              L3_3 = L3_3[1]
              L3_3 = L3_3.y
              L4_3 = A0_2
              L4_3 = L4_3[1]
              L4_3 = L4_3.z
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0.0
              L9_3 = 180.0
              L10_3 = 0.0
              L11_3 = DistanzaPrendiCheck
              L12_3 = DistanzaPrendiCheck
              L13_3 = DistanzaPrendiCheck
              L14_3 = 0
              L15_3 = 255
              L16_3 = 0
              L17_3 = 50
              L18_3 = true
              L19_3 = true
              L20_3 = 2
              L21_3 = nil
              L22_3 = nil
              L23_3 = false
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
              L0_3 = GetEntityCoords
              L1_3 = PlayerPedId
              L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L1_3()
              L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
              L1_3 = A0_2
              L1_3 = L1_3[1]
              L0_3 = L0_3 - L1_3
              L0_3 = #L0_3
              L1_3 = DistanzaPrendiCheck
              L1_3 = L1_3 + 5.0
              if L0_3 > L1_3 then
                L0_3 = DrawMarker
                L1_3 = 1
                L2_3 = vector3
                L3_3 = A0_2
                L3_3 = L3_3[1]
                L3_3 = L3_3.x
                L4_3 = A0_2
                L4_3 = L4_3[1]
                L4_3 = L4_3.y
                L5_3 = A0_2
                L5_3 = L5_3[1]
                L5_3 = L5_3.z
                L2_3 = L2_3(L3_3, L4_3, L5_3)
                L3_3 = 0.0
                L4_3 = 0.0
                L5_3 = 0.0
                L6_3 = 0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 20.0
                L10_3 = 20.0
                L11_3 = 9000.0
                L12_3 = 0
                L13_3 = 255
                L14_3 = 0
                L15_3 = 50
                L16_3 = true
                L17_3 = true
                L18_3 = 2
                L19_3 = false
                L20_3 = false
                L21_3 = false
                L22_3 = false
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
              end
          end
          else
            L0_3 = IsPedFatallyInjured
            L1_3 = PlayerPedId
            L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L1_3()
            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
            if not L0_3 then
              L0_3 = DrawMarker
              L1_3 = 28
              L2_3 = A0_2
              L2_3 = L2_3[1]
              L2_3 = L2_3.x
              L3_3 = A0_2
              L3_3 = L3_3[1]
              L3_3 = L3_3.y
              L4_3 = A0_2
              L4_3 = L4_3[1]
              L4_3 = L4_3.z
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0.0
              L9_3 = 180.0
              L10_3 = 0.0
              L11_3 = DistanzaPrendiCheck
              L12_3 = DistanzaPrendiCheck
              L13_3 = DistanzaPrendiCheck
              L14_3 = 0
              L15_3 = 255
              L16_3 = 0
              L17_3 = 50
              L18_3 = true
              L19_3 = true
              L20_3 = 2
              L21_3 = nil
              L22_3 = nil
              L23_3 = false
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
            end
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
      end
      L2_2(L3_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "AvviaCorsa"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "AvviaCorsa"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2[1]
  L2_2 = L2_2 - L3_2
  L2_2 = #L2_2
  L3_2 = DistanzaPrendiCheck
  L3_2 = L3_2 * 3
  if L2_2 <= L3_2 then
    L2_2 = IsPedFatallyInjured
    L3_2 = PlayerPedId
    L3_2, L4_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = DeleteWaypoint
      L2_2()
      L2_2 = FreezaComandi
      L3_2 = true
      L2_2(L3_2)
      L2_2 = notify
      L3_2 = ""
      L2_2(L3_2)
      L2_2 = Wait
      L3_2 = 1500
      L2_2(L3_2)
      L2_2 = notify
      L3_2 = ""
      L2_2(L3_2)
      L2_2 = TreDueUno
      L2_2()
      L2_2 = notify
      L3_2 = ""
      L2_2(L3_2)
      L2_2 = FreezaComandi
      L3_2 = false
      L2_2(L3_2)
      inCrossID = 2
      L2_2 = LoopGara
      L3_2 = A0_2
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = LoopTimerPrendiCheck
      L2_2()
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
      Testo3D = ""
    else
      L2_2 = FineGara
      L2_2()
      L2_2 = debugPrint
      if L2_2 then
        L2_2 = print
        L3_2 = "You didn't participate in the race because you died."
        L2_2(L3_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L2_2 = A0_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = inCrossID
      if L1_3 > 0 then
        L1_3 = nil
        L2_3 = nil
        L4_3 = inCrossID
        L3_3 = L2_2
        L1_3 = L3_3[L4_3]
        L3_3 = inCrossID
        L4_3 = L3_3 + 1
        L3_3 = L2_2
        L3_3 = L3_3[L4_3]
        if nil ~= L3_3 then
          L3_3 = inCrossID
          L4_3 = L3_3 + 1
          L3_3 = L2_2
          L2_3 = L3_3[L4_3]
        end
        L3_3 = MarkerRaceRed
        L4_3 = vector3
        L5_3 = L1_3.x
        L6_3 = L1_3.y
        L7_3 = L1_3.z
        L4_3 = L4_3(L5_3, L6_3, L7_3)
        L5_3 = 1
        L3_3(L4_3, L5_3)
        L3_3 = Draw3D
        L4_3 = L1_3.x
        L5_3 = L1_3.y
        L6_3 = L1_3.z
        L6_3 = L6_3 + 1.0
        L7_3 = "~r~*"
        L8_3 = 1.0
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        if nil ~= L2_3 then
          L3_3 = MarkerRaceWhite
          L4_3 = vector3
          L5_3 = L2_3.x
          L6_3 = L2_3.y
          L7_3 = L2_3.z
          L4_3 = L4_3(L5_3, L6_3, L7_3)
          L5_3 = 1
          L3_3(L4_3, L5_3)
          L3_3 = Draw3D
          L4_3 = L2_3.x
          L5_3 = L2_3.y
          L6_3 = L2_3.z
          L6_3 = L6_3 + 1.0
          L7_3 = "*"
          L8_3 = 1.0
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        end
        L3_3 = GetEntityCoords
        L4_3 = L0_3
        L3_3 = L3_3(L4_3)
        L4_3 = vector3
        L5_3 = L1_3.x
        L6_3 = L1_3.y
        L7_3 = L1_3.z
        L4_3 = L4_3(L5_3, L6_3, L7_3)
        L3_3 = L3_3 - L4_3
        L3_3 = #L3_3
        L4_3 = DistanzaPrendiCheck
        L4_3 = L4_3 / 2
        if L3_3 < L4_3 then
          L3_3 = tx_infoCheck
          L4_3 = inCrossID
          L5_3 = L2_2
          L6_3 = Laps
          L7_3 = A1_2
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = inCrossID
          L3_3 = L3_3 + 1
          inCrossID = L3_3
          troppoTempo = 0
          L3_3 = DeleteWaypoint
          L3_3()
          L3_3 = SoundTakeMarker
          L3_3()
          L3_3 = inCrossID
          L4_3 = L2_2
          L4_3 = #L4_3
          L4_3 = L4_3 + 1
          if L3_3 == L4_3 then
            L3_3 = Laps
            L4_3 = A1_2
            if L3_3 == L4_3 then
              L3_3 = TriggerServerEvent
              L4_3 = "StrianoEndRace"
              L5_3 = GetPlayerServerId
              L6_3 = PlayerId
              L6_3, L7_3, L8_3 = L6_3()
              L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3, L7_3, L8_3)
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
              inCrossID = 0
              Laps = 1
              return
            else
              L3_3 = tx_lapComplete
              L4_3 = Laps
              L5_3 = A1_2
              L3_3(L4_3, L5_3)
              L3_3 = Laps
              L3_3 = L3_3 + 1
              Laps = L3_3
              inCrossID = 1
            end
          end
        end
      else
        return
      end
    end
  end
  L3_2(L4_2)
end
LoopGara = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 120000
    while true do
      L2_3 = Wait
      L3_3 = 200
      L2_3(L3_3)
      L2_3 = inCrossID
      if 0 == L2_3 then
        return
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      if L1_3 <= L2_3 then
        L3_3 = FineGara
        L3_3()
        L3_3 = debugPrint
        if L3_3 then
          L3_3 = print
          L4_3 = "You were expelled from the race because you did not enter the checkpoint in time."
          L3_3(L4_3)
        end
        return
      end
    end
  end
  L0_2(L1_2)
end
LoopTimerPrendiCheck = L1_1
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = L1_1
    if not L1_2 then
      L1_2 = true
      L1_1 = L1_2
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3, L2_3
        while true do
          L0_3 = L1_1
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = DisableAllControlActions
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = DisableAllControlActions
          L1_3 = 1
          L0_3(L1_3)
          L0_3 = DisableAllControlActions
          L1_3 = 2
          L0_3(L1_3)
          L0_3 = EnableControlAction
          L1_3 = 0
          L2_3 = 1
          L0_3(L1_3, L2_3)
          L0_3 = EnableControlAction
          L1_3 = 0
          L2_3 = 2
          L0_3(L1_3, L2_3)
        end
      end
      L1_2(L2_2)
    end
  else
    L1_2 = L1_1
    if L1_2 then
      L1_2 = false
      L1_1 = L1_2
    end
  end
end
FreezaComandi = L2_1
function L2_1()
  local L0_2, L1_2
  siComincia = 0
  inCrossID = 0
  Laps = 1
end
FineGara = L2_1
