local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1
L0_1 = 1
L1_1 = 0
L2_1 = 0
L3_1 = "Tuttofare"
L4_1 = 0
L5_1 = {}
L6_1 = vector3
L7_1 = 0.0
L8_1 = 0.0
L9_1 = 0.0
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.pos = L6_1
L6_1 = {}
L7_1 = vector3
L8_1 = 0.0
L9_1 = 0.0
L10_1 = 0.0
L7_1 = L7_1(L8_1, L9_1, L10_1)
L6_1.pos = L7_1
function L7_1(A0_2)
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
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = GetGameplayCamRot
  L2_2 = L2_2()
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  L4_2 = L7_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = L3_2.x
  L7_2 = L4_2.x
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L7_2 = L4_2.y
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L3_2.z
  L7_2 = L4_2.z
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.z = L6_2
  if nil == A1_2 then
    A1_2 = -1
  end
  L6_2 = GetShapeTestResult
  L7_2 = StartShapeTestRay
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L11_2 = L5_2.x
  L12_2 = L5_2.y
  L13_2 = L5_2.z
  L14_2 = A1_2
  L15_2 = PlayerPedId
  L15_2 = L15_2()
  L16_2 = 7
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = L10_2
  return L11_2, L12_2, L13_2
end
L9_1 = nil
L10_1 = false
L11_1 = false
L12_1 = ""
L13_1 = ""
L14_1 = 0
bbadmin = false
L15_1 = nil
L16_1 = AddEventHandler
L17_1 = "esx:onPlayerDeath"
function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  if L1_2 then
    L1_2 = ExecuteCommand
    L2_2 = "inbraccio"
    L1_2(L2_2)
  end
end
L16_1(L17_1, L18_1)
L16_1 = CreateThread
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  while true do
    L1_2 = HasCollisionLoadedAroundEntity
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  while true do
    L1_2 = NetworkIsSessionStarted
    L1_2 = L1_2()
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.getStatusClient
  L3_2 = "classepl"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_1 = L1_2
  end
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.getStatusClient
  L4_2 = "craftxp"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L1_1 = L2_2
  end
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.getStatusClient
  L5_2 = "craftlv"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L0_1 = L3_2
  end
end
L16_1(L17_1)
L16_1 = {}
L17_1 = {}
L18_1 = 3383496913
L19_1 = "carta"
L17_1[1] = L18_1
L17_1[2] = L19_1
L18_1 = {}
L19_1 = 1832502141
L20_1 = "bottigliavuota"
L18_1[1] = L19_1
L18_1[2] = L20_1
L19_1 = {}
L20_1 = 683570518
L21_1 = "bottigliavuota"
L19_1[1] = L20_1
L19_1[2] = L21_1
L20_1 = {}
L21_1 = 746336278
L22_1 = "bottigliavuota"
L20_1[1] = L21_1
L20_1[2] = L22_1
L21_1 = {}
L22_1 = 1020618269
L23_1 = "bottigliavuota"
L21_1[1] = L22_1
L21_1[2] = L23_1
L22_1 = {}
L23_1 = 2976174023
L24_1 = "bottigliavuota"
L22_1[1] = L23_1
L22_1[2] = L24_1
L23_1 = {}
L24_1 = -1318793273
L25_1 = "bottigliavuota"
L23_1[1] = L24_1
L23_1[2] = L25_1
L24_1 = {}
L25_1 = -1122944124
L26_1 = "bottigliavuota"
L24_1[1] = L25_1
L24_1[2] = L26_1
L25_1 = {}
L26_1 = -598185919
L27_1 = "bottigliavuota"
L25_1[1] = L26_1
L25_1[2] = L27_1
L26_1 = {}
L27_1 = 2094167240
L28_1 = "bottigliavuota"
L26_1[1] = L27_1
L26_1[2] = L28_1
L27_1 = {}
L28_1 = 1450083036
L29_1 = "lattinasporca"
L27_1[1] = L28_1
L27_1[2] = L29_1
L28_1 = {}
L29_1 = 242383520
L30_1 = "plastica"
L28_1[1] = L29_1
L28_1[2] = L30_1
L29_1 = {}
L30_1 = -1782124930
L31_1 = "carta"
L29_1[1] = L30_1
L29_1[2] = L31_1
L30_1 = {}
L31_1 = -934709748
L32_1 = "lattinasporca"
L30_1[1] = L31_1
L30_1[2] = L32_1
L31_1 = {}
L32_1 = -318675343
L33_1 = "bottigliavuota"
L31_1[1] = L32_1
L31_1[2] = L33_1
L32_1 = {}
L33_1 = 373968603
L34_1 = "bottigliavuota"
L32_1[1] = L33_1
L32_1[2] = L34_1
L33_1 = {}
L34_1 = -2034186658
L35_1 = "bottigliavuota"
L33_1[1] = L34_1
L33_1[2] = L35_1
L34_1 = {}
L35_1 = 128947832
L36_1 = "bottigliavuota"
L34_1[1] = L35_1
L34_1[2] = L36_1
L35_1 = {}
L36_1 = 1865096345
L37_1 = "bottigliavuota"
L35_1[1] = L36_1
L35_1[2] = L37_1
L36_1 = {}
L37_1 = 1683627545
L38_1 = "bottigliavuota"
L36_1[1] = L37_1
L36_1[2] = L38_1
L37_1 = {}
L38_1 = -1972908162
L39_1 = "bottigliavuota"
L37_1[1] = L38_1
L37_1[2] = L39_1
L38_1 = {}
L39_1 = 677373472
L40_1 = "bottigliavuota"
L38_1[1] = L39_1
L38_1[2] = L40_1
L39_1 = {}
L40_1 = 69171637
L41_1 = "bottigliavuota"
L39_1[1] = L40_1
L39_1[2] = L41_1
L40_1 = {}
L41_1 = 1318242715
L42_1 = "bottigliavuota"
L40_1[1] = L41_1
L40_1[2] = L42_1
L16_1[1] = L17_1
L16_1[2] = L18_1
L16_1[3] = L19_1
L16_1[4] = L20_1
L16_1[5] = L21_1
L16_1[6] = L22_1
L16_1[7] = L23_1
L16_1[8] = L24_1
L16_1[9] = L25_1
L16_1[10] = L26_1
L16_1[11] = L27_1
L16_1[12] = L28_1
L16_1[13] = L29_1
L16_1[14] = L30_1
L16_1[15] = L31_1
L16_1[16] = L32_1
L16_1[17] = L33_1
L16_1[18] = L34_1
L16_1[19] = L35_1
L16_1[20] = L36_1
L16_1[21] = L37_1
L16_1[22] = L38_1
L16_1[23] = L39_1
L16_1[24] = L40_1
L17_1 = true
L18_1 = RegisterKeyMapping
L19_1 = "resync"
L20_1 = "Resync PG"
L21_1 = "keyboard"
L22_1 = "f5"
L18_1(L19_1, L20_1, L21_1, L22_1)
L18_1 = RegisterCommand
L19_1 = "resync"
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L17_1
  if L1_2 then
    L1_2 = IsPedHuman
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L1_2 then
      L1_2 = IsPedRagdoll
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      if not L1_2 then
        L1_2 = PlayerPedId
        L1_2 = L1_2()
        L2_2 = exports
        L2_2 = L2_2.striano_editor
        L3_2 = L2_2
        L2_2 = L2_2.IsPlayerProne
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = IsEntityPositionFrozen
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          if not L2_2 then
            L2_2 = IsPedSittingInAnyVehicle
            L3_2 = L1_2
            L2_2 = L2_2(L3_2)
            if L2_2 then
              L2_2 = false
              L17_1 = L2_2
              L2_2 = Wait
              L3_2 = 2000
              L2_2(L3_2)
              L2_2 = true
              L17_1 = L2_2
              L2_2 = ResetPedRagdollTimer
              L3_2 = L1_2
              L2_2(L3_2)
            else
              L2_2 = IsPedRunning
              L3_2 = L1_2
              L2_2 = L2_2(L3_2)
              if not L2_2 then
                L2_2 = IsPedSprinting
                L3_2 = L1_2
                L2_2 = L2_2(L3_2)
                if not L2_2 then
                  L2_2 = IsPedWalking
                  L3_2 = L1_2
                  L2_2 = L2_2(L3_2)
                  if not L2_2 then
                    goto lbl_71
                  end
                end
              end
              L2_2 = false
              L17_1 = L2_2
              L2_2 = Wait
              L3_2 = 2000
              L2_2(L3_2)
              L2_2 = true
              L17_1 = L2_2
              L2_2 = ResetPedRagdollTimer
              L3_2 = L1_2
              L2_2(L3_2)
              goto lbl_110
              ::lbl_71::
              L2_2 = L17_1
              if L2_2 then
                L2_2 = TriggerEvent
                L3_2 = "CaricamiCamminata"
                L2_2(L3_2)
                L2_2 = PlaySoundFrontend
                L3_2 = -1
                L4_2 = "LEADERBOARD"
                L5_2 = "HUD_MINI_GAME_SOUNDSET"
                L6_2 = 1
                L2_2(L3_2, L4_2, L5_2, L6_2)
                L2_2 = SetPedToRagdollWithFall
                L3_2 = L1_2
                L4_2 = 75
                L5_2 = 75
                L6_2 = 1
                L7_2 = GetEntityForwardVector
                L8_2 = L1_2
                L7_2 = L7_2(L8_2)
                L8_2 = 1.0
                L9_2 = 0.0
                L10_2 = 0.0
                L11_2 = 0.0
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
                L2_2 = Wait
                L3_2 = 250
                L2_2(L3_2)
                L2_2 = ExecuteCommand
                L3_2 = "e stretch5"
                L2_2(L3_2)
                L2_2 = Wait
                L3_2 = 2000
                L2_2(L3_2)
                L2_2 = true
                L17_1 = L2_2
              end
            end
          end
        end
      end
    end
  end
  ::lbl_110::
end
L18_1(L19_1, L20_1)
L18_1 = RegisterCommand
L19_1 = "fxm"
function L20_1()
  local L0_2, L1_2
  L0_2 = MumbleSetActive
  L1_2 = false
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = MumbleSetActive
  L1_2 = true
  L0_2(L1_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "c_leva:rbv"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "c_leva:rbv"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetClosestObjectOfType
  L3_2 = A0_2
  L4_2 = 0.1
  L5_2 = A1_2
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  gate = L2_2
  L2_2 = gate
  if 0 ~= L2_2 then
    L2_2 = SetEntityAsMissionEntity
    L3_2 = gate
    L2_2(L3_2)
    L2_2 = SetEntityAlpha
    L3_2 = gate
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = DeleteEntity
    L3_2 = gate
    L2_2(L3_2)
  end
end
L18_1(L19_1, L20_1)
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  L3_2 = 10
  L2_2 = L3_2 ^ L2_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 * L2_2
  L4_2 = L4_2 + 0.5
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / L2_2
  return L3_2
end
round3 = L18_1
L18_1 = false
L19_1 = 0
L20_1 = CreateThread
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedInAnyVehicle
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = bbadmin
      if L1_2 then
        L1_2 = IsControlJustReleased
        L2_2 = 0
        L3_2 = Keys
        L3_2 = L3_2.B
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = L19_1
          if L1_2 > 0 then
            L1_2 = ExecuteCommand
            L2_2 = "pointingstop"
            L1_2(L2_2)
            L1_2 = false
            L18_1 = L1_2
          end
          L1_2 = 0
          L19_1 = L1_2
        else
          L1_2 = IsControlPressed
          L2_2 = 0
          L3_2 = Keys
          L3_2 = L3_2.B
          L1_2 = L1_2(L2_2, L3_2)
          if L1_2 then
            L1_2 = L19_1
            if L1_2 < 1 then
              L1_2 = L19_1
              L1_2 = L1_2 + 1
              L19_1 = L1_2
          end
          else
            L1_2 = L19_1
            if L1_2 < 1 then
              L1_2 = Wait
              L2_2 = 500
              L1_2(L2_2)
            end
          end
        end
        L1_2 = L19_1
        if L1_2 > 0 then
          L1_2 = IsPedOnFoot
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if L1_2 then
            L1_2 = IsPedRagdoll
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = 25.0
              L2_2 = L8_1
              L3_2 = L1_2
              L2_2, L3_2, L4_2 = L2_2(L3_2)
              L5_2 = GetEntityCoords
              L6_2 = L0_2
              L5_2 = L5_2(L6_2)
              if not L2_2 or 0 == L4_2 or nil == L4_2 then
                goto lbl_305
              end
              L6_2 = DoesEntityExist
              L7_2 = L4_2
              L6_2 = L6_2(L7_2)
              if not L6_2 then
                goto lbl_305
              end
              L6_2 = DoesEntityExist
              L7_2 = L4_2
              L6_2 = L6_2(L7_2)
              if not L6_2 then
                goto lbl_305
              end
              L6_2 = GetEntityCoords
              L7_2 = L0_2
              L6_2 = L6_2(L7_2)
              L7_2 = GetEntityCoords
              L8_2 = L4_2
              L7_2 = L7_2(L8_2)
              L6_2 = L6_2 - L7_2
              L6_2 = #L6_2
              if not (L1_2 > L6_2) then
                goto lbl_305
              end
              L6_2 = DrawLine
              L7_2 = L5_2.x
              L8_2 = L5_2.y
              L9_2 = L5_2.z
              L10_2 = L3_2.x
              L11_2 = L3_2.y
              L12_2 = L3_2.z
              L13_2 = 255
              L14_2 = 255
              L15_2 = 255
              L16_2 = 1.0
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              L6_2 = L15_1
              if L6_2 ~= L4_2 then
                L15_1 = L4_2
                L6_2 = GetEntityCoords
                L7_2 = L4_2
                L6_2 = L6_2(L7_2)
                L9_1 = L6_2
                L6_2 = NetworkRequestControlOfEntity
                L7_2 = L4_2
                L6_2(L7_2)
              end
              L6_2 = DoesEntityExist
              L7_2 = L4_2
              L6_2 = L6_2(L7_2)
              if not L6_2 then
                goto lbl_305
              end
              L6_2 = GetEntityCoords
              L7_2 = L4_2
              L6_2 = L6_2(L7_2)
              L7_2 = GetEntityHeading
              L8_2 = L4_2
              L7_2 = L7_2(L8_2)
              L8_2 = GetEntityRotation
              L9_2 = L4_2
              L8_2 = L8_2(L9_2)
              L9_2 = DrawMarker
              L10_2 = 1
              L11_2 = L6_2.x
              L12_2 = L6_2.y
              L13_2 = L6_2.z
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = 0.2
              L21_2 = 0.2
              L22_2 = 10.0
              L23_2 = 255
              L24_2 = 255
              L25_2 = 255
              L26_2 = 50
              L27_2 = false
              L28_2 = true
              L29_2 = 2
              L30_2 = false
              L31_2 = false
              L32_2 = false
              L33_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
              L9_2 = DrawMarker
              L10_2 = 1
              L11_2 = L6_2.x
              L12_2 = L6_2.y
              L13_2 = L6_2.z
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = 2.0
              L21_2 = 2.0
              L22_2 = 10.0
              L23_2 = 255
              L24_2 = 0
              L25_2 = 110
              L26_2 = 100
              L27_2 = false
              L28_2 = true
              L29_2 = 2
              L30_2 = false
              L31_2 = false
              L32_2 = false
              L33_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
              L9_2 = L18_1
              if L9_2 then
                goto lbl_305
              end
              L9_2 = true
              L18_1 = L9_2
              L9_2 = print
              L10_2 = GetEntityModel
              L11_2 = L4_2
              L10_2 = L10_2(L11_2)
              L11_2 = " POS and ROT copiati in clipboard."
              L10_2 = L10_2 .. L11_2
              L9_2(L10_2)
              L9_2 = ExecuteCommand
              L10_2 = "copia "
              L11_2 = GetEntityModel
              L12_2 = L4_2
              L11_2 = L11_2(L12_2)
              L12_2 = " / "
              L13_2 = round3
              L14_2 = math
              L14_2 = L14_2.abs
              L15_2 = L6_2.x
              L14_2 = L14_2(L15_2)
              L15_2 = 0.001
              if L14_2 < L15_2 then
                L14_2 = 0.0
                if L14_2 then
                  goto lbl_219
                end
              end
              L14_2 = L6_2.x
              ::lbl_219::
              L13_2 = L13_2(L14_2)
              L14_2 = ", "
              L15_2 = round3
              L16_2 = math
              L16_2 = L16_2.abs
              L17_2 = L6_2.y
              L16_2 = L16_2(L17_2)
              L17_2 = 0.001
              if L16_2 < L17_2 then
                L16_2 = 0.0
                if L16_2 then
                  goto lbl_233
                end
              end
              L16_2 = L6_2.y
              ::lbl_233::
              L15_2 = L15_2(L16_2)
              L16_2 = ", "
              L17_2 = round3
              L18_2 = math
              L18_2 = L18_2.abs
              L19_2 = L6_2.z
              L18_2 = L18_2(L19_2)
              L19_2 = 0.001
              if L18_2 < L19_2 then
                L18_2 = 0.0
                if L18_2 then
                  goto lbl_247
                end
              end
              L18_2 = L6_2.z
              ::lbl_247::
              L17_2 = L17_2(L18_2)
              L18_2 = " / "
              L19_2 = round3
              L20_2 = math
              L20_2 = L20_2.abs
              L21_2 = L8_2.x
              L20_2 = L20_2(L21_2)
              L21_2 = 0.001
              if L20_2 < L21_2 then
                L20_2 = 0.0
                if L20_2 then
                  goto lbl_261
                end
              end
              L20_2 = L8_2.x
              ::lbl_261::
              L19_2 = L19_2(L20_2)
              L20_2 = " "
              L21_2 = round3
              L22_2 = math
              L22_2 = L22_2.abs
              L23_2 = L8_2.y
              L22_2 = L22_2(L23_2)
              L23_2 = 0.001
              if L22_2 < L23_2 then
                L22_2 = 0.0
                if L22_2 then
                  goto lbl_275
                end
              end
              L22_2 = L8_2.y
              ::lbl_275::
              L21_2 = L21_2(L22_2)
              L22_2 = " "
              L23_2 = round3
              L24_2 = math
              L24_2 = L24_2.abs
              L25_2 = L8_2.z
              L24_2 = L24_2(L25_2)
              L25_2 = 0.001
              if L24_2 < L25_2 then
                L24_2 = 0.0
                if L24_2 then
                  goto lbl_289
                end
              end
              L24_2 = L8_2.z
              ::lbl_289::
              L23_2 = L23_2(L24_2)
              L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2
              L9_2(L10_2)
          end
        end
        else
          L1_2 = Wait
          L2_2 = 1000
          L1_2(L2_2)
        end
    end
    else
      L1_2 = L19_1
      if L1_2 > 0 then
        L1_2 = 0
        L19_1 = L1_2
      end
      L1_2 = Wait
      L2_2 = 3000
      L1_2(L2_2)
    end
    ::lbl_305::
  end
end
L20_1(L21_1)
function L20_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = World3dToScreen2d
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L7_2 = SetTextOutline
    L7_2()
    L7_2 = SetTextScale
    L8_2 = 0.5
    L9_2 = 0.5
    L7_2(L8_2, L9_2)
    L7_2 = SetTextFont
    L8_2 = 4
    L7_2(L8_2)
    L7_2 = SetTextProportional
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = SetTextColour
    L8_2 = 255
    L9_2 = 255
    L10_2 = 255
    L11_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetTextEntry
    L8_2 = "STRING"
    L7_2(L8_2)
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
Draw3DText = L20_1
L20_1 = false
L21_1 = ""
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L20_1
  if L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Modalit\195\160 Report: ~r~disattiva~w~."
    L2_2(L3_2, L4_2)
    L2_2 = false
    L20_1 = L2_2
    L2_2 = ""
    L21_1 = L2_2
  else
    L2_2 = OpenInput
    L3_2 = "Scrivi brevemente cosa vuoi reportare."
    L2_2 = L2_2(L3_2)
    L3_2 = #L2_2
    if L3_2 < 1 then
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "Non ci sono abbastanza caratteri, riprova."
      L3_2(L4_2, L5_2)
      return
    end
    L21_1 = L2_2
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Modalit\195\160 Report: ~q~attiva~w~."
    L3_2(L4_2, L5_2)
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexInfo
    L5_2 = "Punta con la telecamera il giocatore."
    L3_2(L4_2, L5_2)
    L3_2 = FunzioneReportPL
    L3_2()
    L3_2 = true
    L20_1 = L3_2
  end
end
funcReport = L22_1
L22_1 = RegisterCommand
L23_1 = "rep"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = funcReport
  L4_2 = A1_2[1]
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = RegisterCommand
L23_1 = "report"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = funcReport
  L4_2 = A1_2[1]
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = RegisterCommand
L23_1 = "reporta"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = funcReport
  L4_2 = A1_2[1]
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = RegisterCommand
L23_1 = "nomeveicolo"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if nil == L0_2 or 0 == L0_2 then
    return
  end
  L1_2 = GetLabelText
  L2_2 = GetDisplayNameFromVehicleModel
  L3_2 = GetEntityModel
  L4_2 = L0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submex
  L4_2 = "Nome del veicolo: ~c~"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterCommand
L23_1 = "classeveicolo"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if nil == L0_2 or 0 == L0_2 then
    return
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = "Classe del veicolo: ~c~"
  L4_2 = GetLabelText
  L5_2 = "VEH_CLASS_"
  L6_2 = GetVehicleClass
  L7_2 = L0_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = " ~w~ID: "
  L6_2 = GetVehicleClass
  L7_2 = L0_2
  L6_2 = L6_2(L7_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L1_2(L2_2, L3_2)
end
L22_1(L23_1, L24_1)
function L22_1()
  local L0_2, L1_2
  L0_2 = L20_1
  if L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L20_1
      if L0_3 then
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 177
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_combat
          L1_3 = L0_3
          L0_3 = L0_3.submexError
          L2_3 = "Mod report closed."
          L0_3(L1_3, L2_3)
          L0_3 = exports
          L0_3 = L0_3.striano_combat
          L1_3 = L0_3
          L0_3 = L0_3.submex
          L2_3 = ""
          L0_3(L1_3, L2_3)
          return
        end
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = L8_1
        L3_3 = 150.0
        L4_3 = 4
        L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
        if nil ~= L4_3 then
          L5_3 = L3_3.x
          if 0 ~= L5_3 then
            L5_3 = L3_3.y
            if 0 ~= L5_3 then
              L5_3 = L3_3.z
              if 0 ~= L5_3 then
                L5_3 = IsPedAPlayer
                L6_3 = L4_3
                L5_3 = L5_3(L6_3)
                if L5_3 then
                  L5_3 = DrawLine
                  L6_3 = L1_3.x
                  L7_3 = L1_3.y
                  L8_3 = L1_3.z
                  L8_3 = L8_3 + 0.7
                  L9_3 = L3_3.x
                  L10_3 = L3_3.y
                  L11_3 = L3_3.z
                  L12_3 = 255
                  L13_3 = 0
                  L14_3 = 110
                  L15_3 = 255
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                  L5_3 = exports
                  L5_3 = L5_3.striano_core
                  L6_3 = L5_3
                  L5_3 = L5_3.draw
                  L7_3 = 73
                  L8_3 = "Report"
                  L9_3 = 177
                  L10_3 = "Close"
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 73
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = false
                    L20_1 = L5_3
                    L5_3 = GetEntityCoords
                    L6_3 = L0_3
                    L5_3 = L5_3(L6_3)
                    L6_3 = SetEntityCoords
                    L7_3 = L0_3
                    L8_3 = L3_3.x
                    L9_3 = L3_3.y
                    L10_3 = L3_3.z
                    L10_3 = L10_3 - 1
                    L6_3(L7_3, L8_3, L9_3, L10_3)
                    L6_3 = PlayerVicino
                    L6_3, L7_3 = L6_3()
                    L8_3 = exports
                    L8_3 = L8_3.striano_combat
                    L9_3 = L8_3
                    L8_3 = L8_3.submexInfo
                    L10_3 = "Player reported."
                    L8_3(L9_3, L10_3)
                    L8_3 = TriggerServerEvent
                    L9_3 = "ff:report"
                    L10_3 = GetPlayerServerId
                    L11_3 = L6_3
                    L10_3 = L10_3(L11_3)
                    L11_3 = L21_1
                    L8_3(L9_3, L10_3, L11_3)
                    L8_3 = SetEntityCoords
                    L9_3 = L0_3
                    L10_3 = vector3
                    L11_3 = L5_3.x
                    L12_3 = L5_3.y
                    L13_3 = L5_3.z
                    L13_3 = L13_3 - 1
                    L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L10_3(L11_3, L12_3, L13_3)
                    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                    L8_3 = print
                    L9_3 = "PLAYER REPORTED: "
                    L10_3 = GetPlayerName
                    L11_3 = L6_3
                    L10_3 = L10_3(L11_3)
                    L11_3 = " "
                    L12_3 = GetPlayerServerId
                    L13_3 = L6_3
                    L12_3 = L12_3(L13_3)
                    L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3
                    L8_3(L9_3)
                    return
                  end
                else
                  L5_3 = DrawLine
                  L6_3 = L1_3.x
                  L7_3 = L1_3.y
                  L8_3 = L1_3.z
                  L8_3 = L8_3 + 0.7
                  L9_3 = L3_3.x
                  L10_3 = L3_3.y
                  L11_3 = L3_3.z
                  L12_3 = 255
                  L13_3 = 0
                  L14_3 = 0
                  L15_3 = 255
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                  L5_3 = exports
                  L5_3 = L5_3.striano_combat
                  L6_3 = L5_3
                  L5_3 = L5_3.submexError
                  L7_3 = "Not a player."
                  L5_3(L6_3, L7_3)
                end
              end
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
FunzioneReportPL = L22_1
L22_1 = RegisterCommand
L23_1 = "users"
function L24_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "user"
  L0_2(L1_2)
end
L25_1 = false
L22_1(L23_1, L24_1, L25_1)
L22_1 = 0.0
L23_1 = 0.0
L24_1 = 0.0
L25_1 = 0.0
L26_1 = 0.0
L27_1 = 0.0
L28_1 = nil
L29_1 = RegisterCommand
L30_1 = "ra"
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ped
  L1_2 = L28_1
  if L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Operazione disponibile un animale per volta al momento."
    return L1_2(L2_2, L3_2)
  end
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = false
  L3_2 = GetClosestPedStriano
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 and L3_2 > 0 then
    L4_2 = IsPedAPlayer
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = IsPedHuman
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2 - L1_2
        L4_2 = #L4_2
        if L4_2 < 2.0 then
          L4_2 = IsEntityAttached
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if not L4_2 and L3_2 ~= L0_2 and not L2_2 then
            L2_2 = true
            L4_2 = RimorchioAnimale
            L5_2 = L0_2
            L6_2 = L3_2
            L4_2(L5_2, L6_2)
          end
        end
      end
    end
  end
  if not L2_2 then
    L4_2 = exports
    L4_2 = L4_2.striano_combat
    L5_2 = L4_2
    L4_2 = L4_2.submexError
    L6_2 = "Nessun animale nelle vicinanze disponibile per il rimorchio."
    L4_2(L5_2, L6_2)
    L4_2 = ExecuteCommand
    L5_2 = "e shrug"
    L4_2(L5_2)
  end
end
L29_1(L30_1, L31_1)
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = NetworkRequestControlOfEntity
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetVehiclePedIsIn
  L4_2 = ped
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if nil == L3_2 or 0 == L3_2 then
    L4_2 = GetClosestVehicle
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L8_2 = 5.0
    L9_2 = 0
    L10_2 = 70
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L4_2
  end
  if nil ~= L3_2 and 0 ~= L3_2 then
    L4_2 = GetPedType
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if 28 == L4_2 then
      L4_2 = IsPedInAnyVehicle
      L5_2 = ped
      L6_2 = true
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        L4_2 = makeEntityFaceEntity
        L5_2 = ped
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      end
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.submexError
      L6_2 = "Animale in modifica, utilizza ~h~Freccette, Spazio e Shift~h~ per posizionare come vuoi."
      L4_2(L5_2, L6_2)
      L4_2 = UpdateMuoviAnimale
      L4_2()
      L28_1 = A1_2
      L4_2 = GetEntityCoords
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = 0.0
      L22_1 = L5_2
      L5_2 = -1.0
      L23_1 = L5_2
      L5_2 = L2_2.z
      L6_2 = L4_2.z
      L5_2 = L5_2 - L6_2
      L24_1 = L5_2
      L5_2 = 0.0
      L25_1 = L5_2
      L5_2 = 0.0
      L26_1 = L5_2
      L5_2 = 0.0
      L27_1 = L5_2
      vx = 0.0
      vy = -1.0
      L5_2 = L2_2.z
      L6_2 = L4_2.z
      L5_2 = L5_2 - L6_2
      vz = L5_2
      L5_2 = AttachEntityToEntity
      L6_2 = A1_2
      L7_2 = L3_2
      L8_2 = -1
      L9_2 = 0.0
      L10_2 = vy
      L11_2 = vz
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = L27_1
      L15_2 = false
      L16_2 = false
      L17_2 = false
      L18_2 = false
      L19_2 = false
      L20_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L5_2 = SetEntityAsMissionEntity
      L6_2 = A1_2
      L5_2(L6_2)
      L5_2 = ExecuteCommand
      L6_2 = "cinv"
      L5_2(L6_2)
      L5_2 = ExecuteCommand
      L6_2 = "e prendi5"
      L5_2(L6_2)
    else
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.submexError
      L6_2 = "Non sembra esserci un ~h~animale~h~ nelle vicinanze."
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = exports
    L4_2 = L4_2.striano_combat
    L5_2 = L4_2
    L4_2 = L4_2.submexError
    L6_2 = "Nessun veicolo rilevato per ~h~attaccare~h~ l'animale."
    L4_2(L5_2, L6_2)
  end
end
RimorchioAnimale = L29_1
L29_1 = RegisterCommand
L30_1 = "sa"
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = false
  L3_2 = GetClosestPedStriano
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 and L3_2 > 0 then
    L4_2 = IsPedAPlayer
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = IsPedHuman
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2 - L1_2
        L4_2 = #L4_2
        if L4_2 < 5.0 then
          L4_2 = IsEntityAttached
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = GetPedType
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            if 28 == L4_2 then
              L2_2 = true
              L4_2 = exports
              L4_2 = L4_2.striano_combat
              L5_2 = L4_2
              L4_2 = L4_2.submexError
              L6_2 = "Animale staccato dal veicolo."
              L4_2(L5_2, L6_2)
              L4_2 = TriggerServerEvent
              L5_2 = "ff:staccaAnimale"
              L6_2 = L3_2
              L7_2 = L1_2.x
              L8_2 = L1_2.y
              L9_2 = L1_2.z
              L9_2 = L9_2 - 1
              L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
              L4_2 = L28_1
              if L3_2 == L4_2 then
                L4_2 = nil
                L28_1 = L4_2
              end
            end
          end
        end
      end
    end
  end
  if not L2_2 then
    L4_2 = exports
    L4_2 = L4_2.striano_combat
    L5_2 = L4_2
    L4_2 = L4_2.submexError
    L6_2 = "Nessun animale nelle vicinanze disponibile da staccare dal rimorchio."
    L4_2(L5_2, L6_2)
    L4_2 = ExecuteCommand
    L5_2 = "e shrug"
    L4_2(L5_2)
  end
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "ff:staccaAnimale"
L29_1(L30_1)
L29_1 = AddEventHandler
L30_1 = "ff:staccaAnimale"
function L31_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = DetachEntity
  L5_2 = A0_2
  L6_2 = true
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetPedToRagdoll
  L5_2 = A0_2
  L6_2 = 0
  L7_2 = 0
  L8_2 = 4
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = ApplyForceToEntity
  L5_2 = A0_2
  L6_2 = 0
  L7_2 = -70.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = -1
  L14_2 = true
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "FaCrashare:msgAdminClient"
L29_1(L30_1)
L29_1 = AddEventHandler
L30_1 = "FaCrashare:msgAdminClient"
function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerServerEvent
  L4_2 = "FaCrashare:msgAdmin"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L29_1(L30_1, L31_1)
function L29_1()
  local L0_2, L1_2
  L0_2 = L28_1
  if nil ~= L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L28_1
      L1_3 = GetEntityAttachedTo
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if nil ~= L1_3 then
        L2_3 = L28_1
        if nil ~= L2_3 then
          L2_3 = DoesEntityExist
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = GetEntityCoords
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 22
            L3_3(L4_3, L5_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 21
            L3_3(L4_3, L5_3)
            L3_3 = DisableControlAction
            L4_3 = 0
            L5_3 = 155
            L3_3(L4_3, L5_3)
            L3_3 = IsDisabledControlPressed
            L4_3 = 0
            L5_3 = 155
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = GetEntityCoords
              L4_3 = L0_3
              L3_3 = L3_3(L4_3)
              L3_3 = L3_3 - L2_3
              L3_3 = #L3_3
              if L3_3 < 5 then
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 172
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L24_1
                  L3_3 = L3_3 + 0.02
                  L24_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 173
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L24_1
                  L3_3 = L3_3 - 0.02
                  L24_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 174
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L27_1
                  L3_3 = L3_3 + 3
                  L27_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 175
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L27_1
                  L3_3 = L3_3 - 3
                  L27_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
              end
            else
              L3_3 = GetEntityCoords
              L4_3 = L0_3
              L3_3 = L3_3(L4_3)
              L3_3 = L3_3 - L2_3
              L3_3 = #L3_3
              if L3_3 < 5 then
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 174
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L22_1
                  L3_3 = L3_3 - 0.05
                  L22_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 175
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L22_1
                  L3_3 = L3_3 + 0.05
                  L22_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 172
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L23_1
                  L3_3 = L3_3 + 0.05
                  L23_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 173
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L23_1
                  L3_3 = L3_3 - 0.05
                  L23_1 = L3_3
                  L3_3 = DetachEntity
                  L4_3 = L0_3
                  L5_3 = true
                  L6_3 = true
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = AttachEntityToEntity
                  L4_3 = L0_3
                  L5_3 = L1_3
                  L6_3 = -1
                  L7_3 = L22_1
                  L8_3 = L23_1
                  L9_3 = L24_1
                  L10_3 = L25_1
                  L11_3 = L26_1
                  L12_3 = L27_1
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                end
              end
            end
        end
      end
      else
        return
      end
      L2_3 = Wait
      L3_3 = 5
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
UpdateMuoviAnimale = L29_1
L29_1 = nil
L30_1 = nil
L31_1 = 0.0
L32_1 = 0.0
L33_1 = 0.0
L34_1 = 0.0
L35_1 = 0.0
L36_1 = 0.0
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L8_2 = L29_1
  if nil ~= L8_2 then
    L8_2 = DeleteEntity
    L9_2 = L29_1
    L8_2(L9_2)
    L8_2 = nil
    L29_1 = L8_2
  end
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = RequestModelStriano
  L13_2 = A0_2
  L12_2(L13_2)
  L12_2 = CreateObject
  L13_2 = GetHashKey
  L14_2 = A0_2
  L13_2 = L13_2(L14_2)
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = L11_2 + 0.2
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  prop = L12_2
  L12_2 = AttachEntityToEntity
  L13_2 = prop
  L14_2 = L8_2
  L15_2 = GetPedBoneIndex
  L16_2 = L8_2
  L17_2 = A1_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = true
  L26_2 = 1
  L27_2 = true
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = prop
  L29_1 = L12_2
  L30_1 = A1_2
  L12_2 = SetModelAsNoLongerNeeded
  L13_2 = A0_2
  L12_2(L13_2)
end
AddPropToPlayerFF = L37_1
InEditV = nil
L37_1 = RegisterNetEvent
L38_1 = "ff:avviaEditorPlayer"
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = AddPropToPlayerFF
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = L5_1
  L6_2 = L6_1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = ExecuteCommand
  L3_2 = "prova3 Editor active."
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 25
  L2_2(L3_2)
  L2_2 = UpdateEditorAtt
  L2_2()
end
L37_1(L38_1, L39_1)
L37_1 = RegisterCommand
L38_1 = "stopeditatt"
function L39_1()
  local L0_2, L1_2, L2_2
  L0_2 = L29_1
  if nil ~= L0_2 then
    L0_2 = DeleteEntity
    L1_2 = L29_1
    L0_2(L1_2)
  end
  InEditV = nil
  L0_2 = nil
  L1_2 = nil
  L30_1 = L1_2
  L29_1 = L0_2
  L0_2 = 0.0
  L1_2 = 0.0
  L2_2 = 0.0
  L33_1 = L2_2
  L32_1 = L1_2
  L31_1 = L0_2
  L0_2 = 0.0
  L1_2 = 0.0
  L2_2 = 0.0
  L36_1 = L2_2
  L35_1 = L1_2
  L34_1 = L0_2
end
L37_1(L38_1, L39_1)
function L37_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    while true do
      L0_3 = L29_1
      if nil == L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = L29_1
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L29_1
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = 0.002
      L3_3 = 0.08
      L4_3 = IsControlPressed
      L5_3 = 0
      L6_3 = 155
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 then
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
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 172
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 172
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_51
              end
            end
            L4_3 = L33_1
            L4_3 = L4_3 + L2_3
            L33_1 = L4_3
            ::lbl_51::
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 173
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 173
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_67
              end
            end
            L4_3 = L33_1
            L4_3 = L4_3 - L2_3
            L33_1 = L4_3
            ::lbl_67::
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 174
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 174
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_83
              end
            end
            L4_3 = L36_1
            L4_3 = L4_3 + 0.5
            L36_1 = L4_3
            ::lbl_83::
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 175
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 175
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_99
              end
            end
            L4_3 = L36_1
            L4_3 = L4_3 - 0.5
            L36_1 = L4_3
          end
        end
      end
      ::lbl_99::
      L4_3 = IsControlPressed
      L5_3 = 0
      L6_3 = 155
      L4_3 = L4_3(L5_3, L6_3)
      if not L4_3 then
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
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 174
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 174
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_133
              end
            end
            L4_3 = L31_1
            L4_3 = L4_3 + L2_3
            L31_1 = L4_3
            ::lbl_133::
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 175
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 175
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_149
              end
            end
            L4_3 = L31_1
            L4_3 = L4_3 - L2_3
            L31_1 = L4_3
            ::lbl_149::
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 172
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 172
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_165
              end
            end
            L4_3 = L32_1
            L4_3 = L4_3 + L2_3
            L32_1 = L4_3
            ::lbl_165::
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 173
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsDisabledControlPressed
              L5_3 = 0
              L6_3 = 173
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_181
              end
            end
            L4_3 = L32_1
            L4_3 = L4_3 - L2_3
            L32_1 = L4_3
          end
        end
      end
      ::lbl_181::
      L4_3 = IsControlPressed
      L5_3 = 0
      L6_3 = 155
      L4_3 = L4_3(L5_3, L6_3)
      if not L4_3 then
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
            goto lbl_263
          end
        end
        L4_3 = IsControlPressed
        L5_3 = 0
        L6_3 = 174
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsDisabledControlPressed
          L5_3 = 0
          L6_3 = 174
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_215
          end
        end
        L4_3 = L34_1
        L4_3 = L4_3 + L3_3
        L34_1 = L4_3
        ::lbl_215::
        L4_3 = IsControlPressed
        L5_3 = 0
        L6_3 = 175
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsDisabledControlPressed
          L5_3 = 0
          L6_3 = 175
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_231
          end
        end
        L4_3 = L34_1
        L4_3 = L4_3 - L3_3
        L34_1 = L4_3
        ::lbl_231::
        L4_3 = IsControlPressed
        L5_3 = 0
        L6_3 = 172
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsDisabledControlPressed
          L5_3 = 0
          L6_3 = 172
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_247
          end
        end
        L4_3 = L35_1
        L4_3 = L4_3 + L3_3
        L35_1 = L4_3
        ::lbl_247::
        L4_3 = IsControlPressed
        L5_3 = 0
        L6_3 = 173
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsDisabledControlPressed
          L5_3 = 0
          L6_3 = 173
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_263
          end
        end
        L4_3 = L35_1
        L4_3 = L4_3 - L3_3
        L35_1 = L4_3
      end
      ::lbl_263::
      L4_3 = AttachEntityToEntity
      L5_3 = L29_1
      L6_3 = L1_3
      L7_3 = GetPedBoneIndex
      L8_3 = L1_3
      L9_3 = L30_1
      L7_3 = L7_3(L8_3, L9_3)
      L8_3 = L31_1
      L9_3 = L32_1
      L10_3 = L33_1
      L11_3 = L34_1
      L12_3 = L35_1
      L13_3 = L36_1
      L14_3 = true
      L15_3 = true
      L16_3 = false
      L17_3 = true
      L18_3 = 1
      L19_3 = true
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
      L4_3 = IsControlJustPressed
      L5_3 = 0
      L6_3 = 74
      L4_3 = L4_3(L5_3, L6_3)
      if not L4_3 then
        L4_3 = IsDisabledControlJustPressed
        L5_3 = 0
        L6_3 = 74
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          goto lbl_388
        end
      end
      L4_3 = PlaySoundFrontend
      L5_3 = -1
      L6_3 = "5_Second_Timer"
      L7_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
      L8_3 = 0
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L31_1
      L4_3 = L4_3(L5_3)
      L5_3 = 0.001
      if L4_3 < L5_3 then
        L4_3 = 0.0
        if L4_3 then
          goto lbl_312
        end
      end
      L4_3 = L31_1
      ::lbl_312::
      L31_1 = L4_3
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L32_1
      L4_3 = L4_3(L5_3)
      L5_3 = 0.001
      if L4_3 < L5_3 then
        L4_3 = 0.0
        if L4_3 then
          goto lbl_324
        end
      end
      L4_3 = L32_1
      ::lbl_324::
      L32_1 = L4_3
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L33_1
      L4_3 = L4_3(L5_3)
      L5_3 = 0.001
      if L4_3 < L5_3 then
        L4_3 = 0.0
        if L4_3 then
          goto lbl_336
        end
      end
      L4_3 = L33_1
      ::lbl_336::
      L33_1 = L4_3
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L34_1
      L4_3 = L4_3(L5_3)
      L5_3 = 0.001
      if L4_3 < L5_3 then
        L4_3 = 0.0
        if L4_3 then
          goto lbl_348
        end
      end
      L4_3 = L34_1
      ::lbl_348::
      L34_1 = L4_3
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L35_1
      L4_3 = L4_3(L5_3)
      L5_3 = 0.001
      if L4_3 < L5_3 then
        L4_3 = 0.0
        if L4_3 then
          goto lbl_360
        end
      end
      L4_3 = L35_1
      ::lbl_360::
      L35_1 = L4_3
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L36_1
      L4_3 = L4_3(L5_3)
      L5_3 = 0.001
      if L4_3 < L5_3 then
        L4_3 = 0.0
        if L4_3 then
          goto lbl_372
        end
      end
      L4_3 = L36_1
      ::lbl_372::
      L36_1 = L4_3
      L4_3 = ExecuteCommand
      L5_3 = "copia "
      L6_3 = L31_1
      L7_3 = ","
      L8_3 = L32_1
      L9_3 = ","
      L10_3 = L33_1
      L11_3 = ","
      L12_3 = L34_1
      L13_3 = ","
      L14_3 = L35_1
      L15_3 = ","
      L16_3 = L36_1
      L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3 .. L16_3
      L4_3(L5_3)
      ::lbl_388::
    end
    L0_3 = print
    L1_3 = "Editoratt chiuso."
    L0_3(L1_3)
  end
  L0_2(L1_2)
end
UpdateEditorAtt = L37_1
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  if 0 ~= A0_2 and nil ~= A0_2 then
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = GetEntityCoords
    L10_2 = A0_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L9_2(L10_2)
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L11_2 = RequestModelStriano
    L12_2 = A1_2
    L11_2(L12_2)
    L11_2 = CreateObject
    L12_2 = GetHashKey
    L13_2 = A1_2
    L12_2 = L12_2(L13_2)
    L13_2 = L8_2
    L14_2 = L9_2
    L15_2 = L10_2 + 0.2
    L16_2 = true
    L17_2 = true
    L18_2 = true
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    prop = L11_2
    L11_2 = AttachEntityToEntity
    L12_2 = prop
    L13_2 = A0_2
    L14_2 = -1
    L15_2 = A2_2
    L16_2 = A3_2
    L17_2 = A4_2
    L18_2 = A5_2
    L19_2 = A6_2
    L20_2 = A7_2
    L21_2 = true
    L22_2 = true
    L23_2 = false
    L24_2 = true
    L25_2 = 1
    L26_2 = true
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L11_2 = SetModelAsNoLongerNeeded
    L12_2 = A1_2
    L11_2(L12_2)
    L11_2 = prop
    return L11_2
  end
end
AddPropToVehicleFF = L37_1
L37_1 = RegisterNetEvent
L38_1 = "ff:avviaEditorVeicolo"
L37_1(L38_1)
L37_1 = AddEventHandler
L38_1 = "ff:avviaEditorVeicolo"
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetVehiclePedIsIn
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if nil == L1_2 or -1 == L1_2 or 0 == L1_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Devi essere in un veicolo."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = GetVehicleTrailerVehicle
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 and L1_2 ~= L3_2 then
    L1_2 = L3_2
  end
  L4_2 = AddPropToVehicleFF
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L29_1 = L4_2
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.submexError
  L6_2 = "Editor veh attivo."
  L4_2(L5_2, L6_2)
  L4_2 = UpdateVEditorAtt
  L5_2 = L1_2
  L4_2(L5_2)
end
L37_1(L38_1, L39_1)
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = InEditV
  if nil == L1_2 then
    InEditV = A0_2
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
      while true do
        L0_3 = DoesEntityExist
        L1_3 = InEditV
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 155
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 22
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 172
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L33_1
              L0_3 = L0_3 + 0.005
              L33_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 173
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L33_1
              L0_3 = L0_3 - 0.005
              L33_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 174
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L36_1
              L0_3 = L0_3 + 0.1
              L36_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 175
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L36_1
              L0_3 = L0_3 - 0.1
              L36_1 = L0_3
            end
          end
        end
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 155
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 22
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 174
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L31_1
              L0_3 = L0_3 + 0.005
              L31_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 175
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L31_1
              L0_3 = L0_3 - 0.005
              L31_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 172
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L32_1
              L0_3 = L0_3 + 0.005
              L32_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 173
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L32_1
              L0_3 = L0_3 - 0.005
              L32_1 = L0_3
            end
          end
        end
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 155
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 22
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 174
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L34_1
              L0_3 = L0_3 + 0.1
              L34_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 175
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L34_1
              L0_3 = L0_3 - 0.1
              L34_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 172
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L35_1
              L0_3 = L0_3 + 0.1
              L35_1 = L0_3
            end
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 173
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = L35_1
              L0_3 = L0_3 - 0.1
              L35_1 = L0_3
            end
          end
        end
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 74
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = PlaySoundFrontend
          L1_3 = -1
          L2_3 = "5_Second_Timer"
          L3_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
          L4_3 = 0
          L0_3(L1_3, L2_3, L3_3, L4_3)
          L0_3 = math
          L0_3 = L0_3.abs
          L1_3 = L31_1
          L0_3 = L0_3(L1_3)
          L1_3 = 0.001
          if L0_3 < L1_3 then
            L0_3 = 0.0
            if L0_3 then
              goto lbl_188
            end
          end
          L0_3 = L31_1
          ::lbl_188::
          L31_1 = L0_3
          L0_3 = math
          L0_3 = L0_3.abs
          L1_3 = L32_1
          L0_3 = L0_3(L1_3)
          L1_3 = 0.001
          if L0_3 < L1_3 then
            L0_3 = 0.0
            if L0_3 then
              goto lbl_200
            end
          end
          L0_3 = L32_1
          ::lbl_200::
          L32_1 = L0_3
          L0_3 = math
          L0_3 = L0_3.abs
          L1_3 = L33_1
          L0_3 = L0_3(L1_3)
          L1_3 = 0.001
          if L0_3 < L1_3 then
            L0_3 = 0.0
            if L0_3 then
              goto lbl_212
            end
          end
          L0_3 = L33_1
          ::lbl_212::
          L33_1 = L0_3
          L0_3 = math
          L0_3 = L0_3.abs
          L1_3 = L34_1
          L0_3 = L0_3(L1_3)
          L1_3 = 0.001
          if L0_3 < L1_3 then
            L0_3 = 0.0
            if L0_3 then
              goto lbl_224
            end
          end
          L0_3 = L34_1
          ::lbl_224::
          L34_1 = L0_3
          L0_3 = math
          L0_3 = L0_3.abs
          L1_3 = L35_1
          L0_3 = L0_3(L1_3)
          L1_3 = 0.001
          if L0_3 < L1_3 then
            L0_3 = 0.0
            if L0_3 then
              goto lbl_236
            end
          end
          L0_3 = L35_1
          ::lbl_236::
          L35_1 = L0_3
          L0_3 = math
          L0_3 = L0_3.abs
          L1_3 = L36_1
          L0_3 = L0_3(L1_3)
          L1_3 = 0.001
          if L0_3 < L1_3 then
            L0_3 = 0.0
            if L0_3 then
              goto lbl_248
            end
          end
          L0_3 = L36_1
          ::lbl_248::
          L36_1 = L0_3
          L0_3 = ExecuteCommand
          L1_3 = "copia "
          L2_3 = L31_1
          L3_3 = ", "
          L4_3 = L32_1
          L5_3 = ", "
          L6_3 = L33_1
          L7_3 = ", "
          L8_3 = L34_1
          L9_3 = ", "
          L10_3 = L35_1
          L11_3 = ", "
          L12_3 = L36_1
          L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3
          L0_3(L1_3)
        end
        L0_3 = AttachEntityToEntity
        L1_3 = L29_1
        L2_3 = InEditV
        L3_3 = -1
        L4_3 = L31_1
        L5_3 = L32_1
        L6_3 = L33_1
        L7_3 = L34_1
        L8_3 = L35_1
        L9_3 = L36_1
        L10_3 = true
        L11_3 = true
        L12_3 = false
        L13_3 = true
        L14_3 = 1
        L15_3 = true
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      end
    end
    L1_2(L2_2)
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Editor gi\195\160 attivo."
    L1_2(L2_2, L3_2)
  end
end
UpdateVEditorAtt = L37_1
function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = nil
  if A2_2 then
    L4_2 = A2_2 * A2_2
    if L4_2 then
      goto lbl_10
    end
  end
  L4_2 = math
  L4_2 = L4_2.huge
  ::lbl_10::
  L5_2 = FindFirstPed
  L5_2, L6_2 = L5_2()
  if not L5_2 or -1 == L5_2 then
    L7_2 = nil
    L8_2 = nil
    return L7_2, L8_2
  end
  L7_2 = true
  repeat
    if L6_2 and 0 ~= L6_2 then
      L8_2 = DoesEntityExist
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      if L8_2 and (not A1_2 or L6_2 ~= A1_2) then
        L8_2 = IsEntityDead
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = IsPedAPlayer
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          if not L8_2 then
            L8_2 = GetEntityCoords
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            L9_2 = L8_2.x
            L10_2 = A0_2.x
            L9_2 = L9_2 - L10_2
            L10_2 = L8_2.y
            L11_2 = A0_2.y
            L10_2 = L10_2 - L11_2
            L11_2 = L8_2.z
            L12_2 = A0_2.z
            L11_2 = L11_2 - L12_2
            L12_2 = L9_2 * L9_2
            L13_2 = L10_2 * L10_2
            L12_2 = L12_2 + L13_2
            L13_2 = L11_2 * L11_2
            L12_2 = L12_2 + L13_2
            if L4_2 > L12_2 then
              L4_2 = L12_2
              L3_2 = L6_2
            end
          end
        end
      end
    end
    L8_2 = FindNextPed
    L9_2 = L5_2
    L8_2, L9_2 = L8_2(L9_2)
    L6_2 = L9_2
    L7_2 = L8_2
  until not L7_2
  L8_2 = EndFindPed
  L9_2 = L5_2
  L8_2(L9_2)
  if L3_2 then
    L8_2 = L3_2
    L9_2 = math
    L9_2 = L9_2.sqrt
    L10_2 = L4_2
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
    return L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L8_2 = nil
  L9_2 = nil
  return L8_2, L9_2
end
GetClosestDeadAnimal = L37_1
L37_1 = true
L38_1 = exports
L39_1 = "scuoio"
function L40_1()
  local L0_2, L1_2
  L0_2 = L37_1
  return L0_2
end
L38_1(L39_1, L40_1)
L38_1 = RegisterCommand
L39_1 = "scuoia"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = IsEntityPositionFrozen
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = PlayerVicino
  L1_2, L2_2 = L1_2()
  if -1 ~= L1_2 then
    L3_2 = 2.5
    if L2_2 <= L3_2 then
      L3_2 = ExecuteCommand
      L4_2 = "e shrug5"
      L3_2(L4_2)
      return
    end
  end
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.getTagliente
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.sfoggiate
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.getmysword
      L3_2 = L3_2(L4_2)
      if 2 == L3_2 then
        L3_2 = GetEntityCoords
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        L4_2 = false
        L5_2 = GetClosestDeadAnimal
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        if nil ~= L5_2 and L5_2 > 0 then
          L6_2 = IsPedAPlayer
          L7_2 = L5_2
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = IsPedHuman
            L7_2 = L5_2
            L6_2 = L6_2(L7_2)
            if not L6_2 then
              L6_2 = GetEntityCoords
              L7_2 = L5_2
              L6_2 = L6_2(L7_2)
              L6_2 = L6_2 - L3_2
              L6_2 = #L6_2
              if L6_2 < 2.0 then
                L6_2 = NetworkRequestControlOfEntity
                L7_2 = L5_2
                L6_2(L7_2)
                L6_2 = DoesEntityExist
                L7_2 = L5_2
                L6_2 = L6_2(L7_2)
                if L6_2 then
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_chickenhawk"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Falco"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_boar"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Cinghiale"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_mtlion"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Ghepardo"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_cormorant"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Cormorano"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_cow"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Mucca"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_deer"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Cervo"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_coyote"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Coyote"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_crow"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Corvo"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_hen"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Gallina"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_pig"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Maiale"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_rabbit_01"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Coniglio"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_rat"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Ratto"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_seagull"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Gabbiano"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_pigeon"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Piccione"
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = GetEntityModel
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = GetHashKey
                  L8_2 = "a_c_panther"
                  L7_2 = L7_2(L8_2)
                  if L6_2 == L7_2 then
                    L4_2 = true
                    L6_2 = Scuoia
                    L7_2 = L5_2
                    L8_2 = "Ghepardo"
                    L6_2(L7_2, L8_2)
                  end
                end
              end
            end
          end
        end
        if not L4_2 then
          L6_2 = ExecuteCommand
          L7_2 = "e shrug5"
          L6_2(L7_2)
        end
    end
  end
  else
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "You need a hunter knife in hand."
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "e shrug5"
    L3_2(L4_2)
  end
end
L38_1(L39_1, L40_1)
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L37_1
  if L2_2 then
    L2_2 = 1
    L3_2 = false
    L37_1 = L3_2
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = IsPedDeadOrDying
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = ExecuteCommand
      L4_2 = "e shrug5"
      L3_2(L4_2)
      L3_2 = true
      L37_1 = L3_2
      return
    end
    L3_2 = GetEntityAlpha
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = 255
    if L3_2 < L4_2 then
      L3_2 = ExecuteCommand
      L4_2 = "e shrug5"
      L3_2(L4_2)
      L3_2 = true
      L37_1 = L3_2
      return
    end
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = true
      L37_1 = L3_2
      return
    end
    L3_2 = FreezeEntityPosition
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = ClearPedTasks
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = makeEntityFaceEntity
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "e kneel3"
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 500
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e cerca"
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 8000
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e cc"
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e alzati"
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    if "Cervo" == A1_2 or "Mucca" == A1_2 or "Cinghiale" == A1_2 then
      L2_2 = 5
    elseif "Gallina" == A1_2 then
    else
      L2_2 = 3
    end
    L3_2 = DeleteEntity
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e pickup"
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 750
    L3_2(L4_2)
    L3_2 = FreezeEntityPosition
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = true
    L37_1 = L3_2
    L3_2 = TriggerServerEvent
    L4_2 = "inv3d:giveItem"
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2, L7_2, L8_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = "player"
    L7_2 = "meat"
    L8_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
Scuoia = L38_1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPedCauseOfDeath
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "WEAPON_RUN_OVER_BY_CAR" ~= L1_2 and "WEAPON_RAMMED_BY_CAR" ~= L1_2 then
    L2_2 = HasEntityBeenDamagedByAnyVehicle
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_16
    end
  end
  L2_2 = false
  do return L2_2 end
  goto lbl_51
  ::lbl_16::
  L2_2 = GetWeapontypeGroup
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L2_2 = GetWeapontypeGroup
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "GROUP_UNARMED" == L2_2 or "GROUP_MELEE" == L2_2 then
      L3_2 = "OK"
      return L3_2
    elseif "GROUP_PISTOL" == L2_2 or "GROUP_SMG" == L2_2 or "GROUP_SNIPER" == L2_2 then
      L3_2 = "OK"
      return L3_2
    elseif "GROUP_MG" == L2_2 or "GROUP_SHOTGUN" == L2_2 or "GROUP_RIFLE" == L2_2 then
      L3_2 = "OK"
      return L3_2
    else
      L3_2 = false
      return L3_2
    end
  end
  ::lbl_51::
  L2_2 = false
  return L2_2
end
COD = L38_1
L38_1 = RegisterCommand
L39_1 = "bbadmin"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = bbadmin
  L0_2 = not L0_2
  bbadmin = L0_2
  L0_2 = bbadmin
  if L0_2 then
    L0_2 = PlaySoundFrontend
    L1_2 = -1
    L2_2 = "Turn"
    L3_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
    L4_2 = 1
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end
L38_1(L39_1, L40_1)
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L15_1
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai ancora selezionato un oggetto tenendo premuto ~h~B~h~."
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = GetEntityCoords
  L1_2 = L15_1
  L0_2 = L0_2(L1_2)
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = L1_2 - L0_2
  L1_2 = #L1_2
  L2_2 = 3.5
  if L1_2 > L2_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Sei troppo distante dall'oggetto selezionato."
    L1_2(L2_2, L3_2)
  else
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Turn"
    L4_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Hai ~h~bloccato ~h~l'oggetto selezionato con ~h~B~h~."
    L1_2(L2_2, L3_2)
    L1_2 = L9_1
    L2_2 = TriggerServerEvent
    L3_2 = "freezeprop:sync"
    L4_2 = GetEntityModel
    L5_2 = L15_1
    L4_2 = L4_2(L5_2)
    L5_2 = true
    L6_2 = vector3
    L7_2 = L1_2.x
    L8_2 = L1_2.y
    L9_2 = L1_2.z
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = makeEntityFaceEntity
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L15_1
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "e prendi5"
    L2_2(L3_2)
  end
end
BloccaProp = L38_1
L38_1 = RegisterCommand
L39_1 = "bloccaprop"
function L40_1()
  local L0_2, L1_2
  L0_2 = BloccaProp
  L0_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterCommand
L39_1 = "bpr"
function L40_1()
  local L0_2, L1_2
  L0_2 = BloccaProp
  L0_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterCommand
L39_1 = "blocca"
function L40_1()
  local L0_2, L1_2, L2_2
  L0_2 = L15_1
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai ancora selezionato un oggetto tenendo premuto ~h~B~h~."
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = IsEntityPositionFrozen
  L1_2 = L15_1
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = SbloccaProp
    L0_2()
  else
    L0_2 = BloccaProp
    L0_2()
  end
end
L38_1(L39_1, L40_1)
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L15_1
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai ancora selezionato un oggetto tenendo premuto ~h~B~h~."
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = GetEntityCoords
  L1_2 = L15_1
  L0_2 = L0_2(L1_2)
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = L1_2 - L0_2
  L1_2 = #L1_2
  L2_2 = 3.5
  if L1_2 > L2_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Sei troppo distante dall'oggetto selezionato."
    L1_2(L2_2, L3_2)
  else
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Turn"
    L4_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Hai ~h~sbloccato ~h~l'oggetto selezionato con ~h~B~h~."
    L1_2(L2_2, L3_2)
    L1_2 = L9_1
    L2_2 = TriggerServerEvent
    L3_2 = "freezeprop:sync"
    L4_2 = GetEntityModel
    L5_2 = L15_1
    L4_2 = L4_2(L5_2)
    L5_2 = false
    L6_2 = vector3
    L7_2 = L1_2.x
    L8_2 = L1_2.y
    L9_2 = L1_2.z
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = makeEntityFaceEntity
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L15_1
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "e prendi5"
    L2_2(L3_2)
  end
end
SbloccaProp = L38_1
L38_1 = RegisterCommand
L39_1 = "sbloccaprop"
function L40_1()
  local L0_2, L1_2
  L0_2 = SbloccaProp
  L0_2()
end
L41_1 = false
L38_1(L39_1, L40_1, L41_1)
L38_1 = RegisterCommand
L39_1 = "sp"
function L40_1()
  local L0_2, L1_2
  L0_2 = SbloccaProp
  L0_2()
end
L41_1 = false
L38_1(L39_1, L40_1, L41_1)
L38_1 = RegisterNetEvent
L39_1 = "freezeprop:syncAll"
L38_1(L39_1)
L38_1 = AddEventHandler
L39_1 = "freezeprop:syncAll"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetClosestObjectOfType
  L4_2 = A2_2
  L5_2 = 0.1
  L6_2 = A0_2
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if nil ~= L3_2 and 0 ~= L3_2 then
    L4_2 = FreezeEntityPosition
    L5_2 = L3_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L4_2 = print
    L5_2 = "Prop bloccata da un giocatore"
    L4_2(L5_2)
  end
end
L38_1(L39_1, L40_1)
L38_1 = CreateThread
function L39_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = Wait
    L1_2 = 5000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.gettutorial
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsEntityVisible
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = IsPedPerformingMeleeAction
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsEntityDead
          L2_2 = L0_2
          L3_2 = 1
          L1_2 = L1_2(L2_2, L3_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = L0_2
            L3_2 = "ped"
            L4_2 = "hit_wall"
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsPedRagdoll
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
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = L0_2
                  L3_2 = "amb@lo_res_idles@"
                  L4_2 = "world_human_bum_slumped_right_lo_res_base"
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = L0_2
                    L3_2 = "anim@scripted@heist@ig25_beach@male@"
                    L4_2 = "action"
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if not L1_2 then
                      L1_2 = 105
                      L2_2 = 120
                      L3_2 = IsPedRagdoll
                      L4_2 = L0_2
                      L3_2 = L3_2(L4_2)
                      if not L3_2 then
                        L3_2 = IsPedSwimming
                        L4_2 = L0_2
                        L3_2 = L3_2(L4_2)
                        if not L3_2 then
                          L3_2 = IsPedSwimmingUnderWater
                          L4_2 = L0_2
                          L3_2 = L3_2(L4_2)
                          if not L3_2 then
                            goto lbl_109
                          end
                        end
                      end
                      L3_2 = exports
                      L3_2 = L3_2.striano_editor
                      L4_2 = L3_2
                      L3_2 = L3_2.crouchato
                      L3_2 = L3_2(L4_2)
                      if not L3_2 then
                        L3_2 = exports
                        L3_2 = L3_2.striano_editor
                        L4_2 = L3_2
                        L3_2 = L3_2.stealth
                        L3_2 = L3_2(L4_2)
                        if not L3_2 then
                          goto lbl_105
                        end
                      end
                      L3_2 = IsEntityInAir
                      L4_2 = L0_2
                      L3_2 = L3_2(L4_2)
                      if not L3_2 then
                        L3_2 = L10_1
                        if not L3_2 then
                          L3_2 = ExecuteCommand
                          L4_2 = "fixcrouch"
                          L3_2(L4_2)
                        end
                      end
                      ::lbl_105::
                      L3_2 = Wait
                      L4_2 = 1000
                      L3_2(L4_2)
                      goto lbl_186
                      ::lbl_109::
                      L3_2 = IsPedRagdoll
                      L4_2 = L0_2
                      L3_2 = L3_2(L4_2)
                      if not L3_2 then
                        L3_2 = IsPedInAnyVehicle
                        L4_2 = L0_2
                        L5_2 = true
                        L3_2 = L3_2(L4_2, L5_2)
                        if not L3_2 then
                          L3_2 = IsEntityInAir
                          L4_2 = L0_2
                          L3_2 = L3_2(L4_2)
                          if not L3_2 then
                            L3_2 = GetResourceState
                            L4_2 = "striano_editor"
                            L3_2 = L3_2(L4_2)
                            if "started" ~= L3_2 then
                              goto lbl_186
                            end
                            L3_2 = exports
                            L3_2 = L3_2.striano_editor
                            L4_2 = L3_2
                            L3_2 = L3_2.crouchato
                            L3_2 = L3_2(L4_2)
                            if L3_2 then
                              goto lbl_186
                            end
                            L3_2 = L10_1
                            if not L3_2 then
                              L3_2 = GetEntityHealth
                              L4_2 = L0_2
                              L3_2 = L3_2(L4_2)
                              if L1_2 < L3_2 then
                                L3_2 = GetEntityHealth
                                L4_2 = L0_2
                                L3_2 = L3_2(L4_2)
                                if L2_2 >= L3_2 then
                                  goto lbl_152
                                end
                              end
                              L3_2 = L11_1
                              ::lbl_152::
                              if L3_2 then
                                L3_2 = setHurt
                                L3_2()
                                L3_2 = Wait
                                L4_2 = 1000
                                L3_2(L4_2)
                              end
                            else
                              L3_2 = L10_1
                              if L3_2 then
                                L3_2 = GetEntityHealth
                                L4_2 = L0_2
                                L3_2 = L3_2(L4_2)
                                if L2_2 < L3_2 then
                                  L3_2 = false
                                  L10_1 = L3_2
                                  L3_2 = TriggerEvent
                                  L4_2 = "CaricamiCamminata"
                                  L3_2(L4_2)
                                  L3_2 = Wait
                                  L4_2 = 1000
                                  L3_2(L4_2)
                                end
                              else
                                L3_2 = Wait
                                L4_2 = 1000
                                L3_2(L4_2)
                              end
                            end
                        end
                      end
                      else
                        L3_2 = Wait
                        L4_2 = 1000
                        L3_2(L4_2)
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
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
    ::lbl_186::
  end
end
L38_1(L39_1)
function L38_1(A0_2, A1_2, A2_2, A3_2)
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
PlayEffectFF = L38_1
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.crouchato
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_editor
    L1_2 = L0_2
    L0_2 = L0_2.stealth
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = ExecuteCommand
      L1_2 = "w drunk2"
      L0_2(L1_2)
      L0_2 = true
      L10_1 = L0_2
      L0_2 = LoopInciampare
      L0_2()
      L0_2 = SetPlayerStamina
      L1_2 = PlayerId
      L1_2 = L1_2()
      L2_2 = 0
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedSwimming
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = IsPedSwimmingUnderWater
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if not L1_2 and not L2_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_editor
    L4_2 = L3_2
    L3_2 = L3_2.crouchato
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = GetEntitySpeed
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L4_2 = 0.1
      if L3_2 > L4_2 then
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 22
        L3_2(L4_2, L5_2)
      end
    end
  end
end
setHurt = L38_1
L38_1 = false
L39_1 = false
function L40_1()
  local L0_2, L1_2
  L0_2 = L39_1
  if not L0_2 then
    L0_2 = true
    L39_1 = L0_2
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      while true do
        L0_3 = L10_1
        if not L0_3 then
          L0_3 = false
          L39_1 = L0_3
          return
        end
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetEntitySpeed
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = 0.7
        if L1_3 > L2_3 then
          L1_3 = IsPedWalking
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = IsPedRunning
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = IsPedSprinting
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                goto lbl_195
              end
            end
          end
          L1_3 = L38_1
          if L1_3 then
            L1_3 = IsEntityInWater
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = IsPedFalling
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                L1_3 = IsPedRagdoll
                L2_3 = L0_3
                L1_3 = L1_3(L2_3)
                if not L1_3 then
                  L1_3 = exports
                  L1_3 = L1_3.striano_combat
                  L2_3 = L1_3
                  L1_3 = L1_3.insuperjump
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = 3
                    L2_3 = IsPedRunning
                    L3_3 = L0_3
                    L2_3 = L2_3(L3_3)
                    if not L2_3 then
                      L2_3 = IsPedSprinting
                      L3_3 = L0_3
                      L2_3 = L2_3(L3_3)
                      if not L2_3 then
                        goto lbl_94
                      end
                    end
                    L2_3 = ExecuteCommand
                    L3_3 = "e inciampa"
                    L2_3(L3_3)
                    L2_3 = ExecuteCommand
                    L3_3 = "addsangue"
                    L2_3(L3_3)
                    L2_3 = SetEntityHealth
                    L3_3 = L0_3
                    L4_3 = GetEntityHealth
                    L5_3 = L0_3
                    L4_3 = L4_3(L5_3)
                    L4_3 = L4_3 - 1
                    L2_3(L3_3, L4_3)
                    L2_3 = IsPedFatallyInjured
                    L3_3 = L0_3
                    L2_3 = L2_3(L3_3)
                    if not L2_3 then
                      L2_3 = exports
                      L2_3 = L2_3.striano_combat
                      L3_3 = L2_3
                      L2_3 = L2_3.gengrunt
                      L2_3(L3_3)
                      L2_3 = exports
                      L2_3 = L2_3.striano_combat
                      L3_3 = L2_3
                      L2_3 = L2_3.submexError
                      L4_3 = "Stai sanguinando, non correre per non perdere ulteriore vita. Cammina fino a quando non trovi un modo per curare la ferita. Utilizza un veicolo o una cavalcatura per spostarti senza perdere vita."
                      L2_3(L3_3, L4_3)
                      L1_3 = 8
                    end
                    ::lbl_94::
                    L2_3 = IsPedFatallyInjured
                    L3_3 = L0_3
                    L2_3 = L2_3(L3_3)
                    if not L2_3 then
                      L2_3 = 1
                      L3_3 = L1_3
                      L4_3 = 1
                      for L5_3 = L2_3, L3_3, L4_3 do
                        L6_3 = GetEntityCoords
                        L7_3 = L0_3
                        L6_3 = L6_3(L7_3)
                        L7_3 = math
                        L7_3 = L7_3.random
                        L7_3 = L7_3()
                        L7_3 = L7_3 - 0.1
                        L8_3 = math
                        L8_3 = L8_3.random
                        L8_3 = L8_3()
                        L8_3 = L8_3 - 0.1
                        L9_3 = math
                        L9_3 = L9_3.random
                        L9_3 = L9_3()
                        L9_3 = L9_3 * 0.9
                        L10_3 = TriggerServerEvent
                        L11_3 = "PlayEffectServer"
                        L12_3 = {}
                        L12_3.a = "core"
                        L12_3.b = "blood_stab"
                        L13_3 = vector3
                        L14_3 = L6_3.x
                        L14_3 = L14_3 + L7_3
                        L15_3 = L6_3.y
                        L15_3 = L15_3 + L8_3
                        L16_3 = L6_3.z
                        L16_3 = L16_3 - L9_3
                        L13_3 = L13_3(L14_3, L15_3, L16_3)
                        L12_3.pos = L13_3
                        L10_3(L11_3, L12_3)
                        L10_3 = TriggerServerEvent
                        L11_3 = "PlayEffectServer"
                        L12_3 = {}
                        L12_3.a = "core"
                        L12_3.b = "blood_entry_sniper"
                        L13_3 = vector3
                        L14_3 = L6_3.x
                        L14_3 = L14_3 + L7_3
                        L15_3 = L6_3.y
                        L15_3 = L15_3 + L8_3
                        L16_3 = L6_3.z
                        L16_3 = L16_3 - L9_3
                        L13_3 = L13_3(L14_3, L15_3, L16_3)
                        L12_3.pos = L13_3
                        L10_3(L11_3, L12_3)
                      end
                      L2_3 = PlaySoundFrontend
                      L3_3 = -1
                      L4_3 = "Pre_Screen_Stinger"
                      L5_3 = "DLC_HEISTS_PREP_SCREEN_SOUNDS"
                      L6_3 = 1
                      L2_3(L3_3, L4_3, L5_3, L6_3)
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = 25
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        L2_3 = math
                        L2_3 = L2_3.random
                        L3_3 = 1
                        L4_3 = 2
                        L2_3 = L2_3(L3_3, L4_3)
                        if 1 == L2_3 then
                          L3_3 = ExecuteCommand
                          L4_3 = "e respiro"
                          L5_3 = math
                          L5_3 = L5_3.random
                          L6_3 = 1
                          L7_3 = 2
                          L5_3 = L5_3(L6_3, L7_3)
                          L4_3 = L4_3 .. L5_3
                          L3_3(L4_3)
                        else
                          L3_3 = ExecuteCommand
                          L4_3 = "e injured"
                          L3_3(L4_3)
                        end
                      end
                      L2_3 = Wait
                      L3_3 = 5000
                      L2_3(L3_3)
                    end
                  end
                end
              end
            end
          end
        end
        ::lbl_195::
        L1_3 = Wait
        L2_3 = 5000
        L1_3(L2_3)
      end
    end
    L0_2(L1_2)
  end
end
LoopInciampare = L40_1
L40_1 = RegisterCommand
L41_1 = "closenui"
function L42_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocusKeepInput
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetFrontendActive
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetMouseCursorVisibleInMenus
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetPlayerControl
  L1_2 = PlayerId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetCursorLocation
  L1_2 = 0.5
  L2_2 = 0.5
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "focus NUI rilasciato e controlli ripristinati."
  L0_2(L1_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterCommand
L41_1 = "tirafuori"
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedSwimming
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedSwimmingUnderWater
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_19
    end
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexError
  L3_2 = "Non devi essere in acqua per questa operazione. Costruisci una pedana sull'acqua se serve a salvare un veicolo."
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_19::
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetClosestVehicle
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L6_2 = 20.0
  L7_2 = 0
  L8_2 = 70
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = IsEntityInWater
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = GetEntityCoords
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2.z
        if not (L3_2 < 41.0) then
          goto lbl_101
        end
      end
      L3_2 = 0
      L4_2 = SetEntityAsMissionEntity
      L5_2 = L2_2
      L4_2(L5_2)
      while true do
        L4_2 = NetworkHasControlOfEntity
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        if not (not L4_2 and L3_2 < 100) then
          break
        end
        L4_2 = DoesEntityExist
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 1
        L4_2(L5_2)
        L4_2 = NetworkRequestControlOfEntity
        L5_2 = L2_2
        L4_2(L5_2)
        L3_2 = L3_2 + 1
      end
      L4_2 = SetEntityCoords
      L5_2 = L2_2
      L6_2 = L1_2.x
      L7_2 = L1_2.y
      L8_2 = L1_2.z
      L8_2 = L8_2 - 1
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = exports
      L4_2 = L4_2.striano_core
      L5_2 = L4_2
      L4_2 = L4_2.getsubmisID
      L4_2 = L4_2(L5_2)
      if 0 == L4_2 then
        L4_2 = TaskWarpPedIntoVehicle
        L5_2 = L0_2
        L6_2 = L2_2
        L7_2 = -1
        L4_2(L5_2, L6_2, L7_2)
      end
      L4_2 = Wait
      L5_2 = 250
      L4_2(L5_2)
      L4_2 = TriggerEvent
      L5_2 = "fixaVeicolo"
      L6_2 = L2_2
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      goto lbl_112
      ::lbl_101::
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "Il veicolo non sembra in acqua."
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Non sembra esserci un veicolo in acqua da poter tirare fuori."
    L3_2(L4_2, L5_2)
  end
  ::lbl_112::
end
L40_1(L41_1, L42_1)
L40_1 = "off"
L41_1 = {}
L42_1 = 0
L43_1 = 1
L44_1 = 2
L45_1 = 3
L46_1 = 4
L47_1 = 5
L48_1 = 6
L49_1 = 7
L50_1 = 8
L51_1 = 9
L52_1 = 10
L53_1 = 11
L54_1 = 12
L55_1 = 17
L56_1 = 18
L57_1 = 19
L58_1 = 20
L41_1[1] = L42_1
L41_1[2] = L43_1
L41_1[3] = L44_1
L41_1[4] = L45_1
L41_1[5] = L46_1
L41_1[6] = L47_1
L41_1[7] = L48_1
L41_1[8] = L49_1
L41_1[9] = L50_1
L41_1[10] = L51_1
L41_1[11] = L52_1
L41_1[12] = L53_1
L41_1[13] = L54_1
L41_1[14] = L55_1
L41_1[15] = L56_1
L41_1[16] = L57_1
L41_1[17] = L58_1
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
has_valueff = L42_1
L42_1 = RegisterCommand
L43_1 = "mterra"
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = GetVehicleWheelSurfaceMaterial
  L2_2 = L0_2
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = print
  L3_2 = "Materiale "
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L42_1(L43_1, L44_1)
L42_1 = RegisterCommand
L43_1 = "getsporco"
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = print
  L1_2 = "Dirt of vehicle "
  L2_2 = GetVehicleDirtLevel
  L3_2 = GetVehiclePedIsIn
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
L42_1(L43_1, L44_1)
L42_1 = AddEventHandler
L43_1 = "onResourceStop"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L29_1
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = L29_1
      L1_2(L2_2)
    end
    L1_2 = nil
    L2_2 = nil
    L30_1 = L2_2
    L29_1 = L1_2
    L1_2 = 0.0
    L2_2 = 0.0
    L3_2 = 0.0
    L33_1 = L3_2
    L32_1 = L2_2
    L31_1 = L1_2
    L1_2 = 0.0
    L2_2 = 0.0
    L3_2 = 0.0
    L36_1 = L3_2
    L35_1 = L2_2
    L34_1 = L1_2
  end
end
L42_1(L43_1, L44_1)
L42_1 = nil
function L43_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ""
  L5_2 = A3_2
  L6_2 = ""
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = SetTextScale
  L6_2 = 0.35
  L7_2 = 0.35
  L5_2(L6_2, L7_2)
  L5_2 = SetTextFont
  L6_2 = 7
  L5_2(L6_2)
  L5_2 = SetTextOutline
  L5_2()
  L5_2 = SetTextProportional
  L6_2 = 1
  L5_2(L6_2)
  L5_2 = SetTextColour
  L6_2 = 255
  L7_2 = 255
  L8_2 = 255
  L9_2 = 215
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetTextEntry
  L6_2 = "STRING"
  L5_2(L6_2)
  L5_2 = SetTextCentre
  L6_2 = true
  L5_2(L6_2)
  L5_2 = AddTextComponentString
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = SetDrawOrigin
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = DrawText
  L6_2 = 0.0
  L7_2 = 0.0
  L5_2(L6_2, L7_2)
  L5_2 = ClearDrawOrigin
  L5_2()
end
L44_1 = RegisterKeyMapping
L45_1 = "ancora"
L46_1 = "Ancora Barca"
L47_1 = "keyboard"
L48_1 = "h"
L44_1(L45_1, L46_1, L47_1, L48_1)
L44_1 = RegisterCommand
L45_1 = "ancora"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsPedInAnyBoat
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetVehiclePedIsIn
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetPedInVehicleSeat
    L4_2 = L2_2
    L5_2 = -1
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == L1_2 then
      L3_2 = GetEntitySpeed
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = 2.7777777777777777
      if L3_2 <= L4_2 then
        L3_2 = IsBoatAnchoredAndFrozen
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = SetBoatAnchor
          L4_2 = L2_2
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = SetBoatFrozenWhenAnchored
          L4_2 = L2_2
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = SetForcedBoatLocationWhenAnchored
          L4_2 = L2_2
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = TriggerServerEvent
          L4_2 = "D_Ancorata:set"
          L5_2 = VehToNet
          L6_2 = L2_2
          L5_2 = L5_2(L6_2)
          L6_2 = false
          L3_2(L4_2, L5_2, L6_2)
        else
          L3_2 = IsEntityInWater
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          if not L3_2 then
            L3_2 = CanAnchorBoatHere
            L4_2 = L2_2
            L3_2 = L3_2(L4_2)
            if not L3_2 then
              goto lbl_79
            end
          end
          L3_2 = SetBoatAnchor
          L4_2 = L2_2
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = SetBoatFrozenWhenAnchored
          L4_2 = L2_2
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = SetForcedBoatLocationWhenAnchored
          L4_2 = L2_2
          L5_2 = true
          L3_2(L4_2, L5_2)
          L42_1 = L2_2
          L3_2 = TriggerServerEvent
          L4_2 = "D_Ancorata:set"
          L5_2 = VehToNet
          L6_2 = L2_2
          L5_2 = L5_2(L6_2)
          L6_2 = true
          L3_2(L4_2, L5_2, L6_2)
          goto lbl_90
          ::lbl_79::
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submexInfo
          L5_2 = "You must be in water to anchor a boat."
          L3_2(L4_2, L5_2)
        end
      else
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.submexInfo
        L5_2 = "Too fast to anchor a boat."
        L3_2(L4_2, L5_2)
      end
    end
  end
  ::lbl_90::
end
L44_1(L45_1, L46_1)
L44_1 = CreateThread
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = L42_1
    if nil == L1_2 then
      L1_2 = GetVehiclePedIsIn
      L2_2 = L0_2
      L3_2 = false
      L1_2 = L1_2(L2_2, L3_2)
      if nil == L1_2 or 0 == L1_2 then
      else
        L42_1 = L1_2
      end
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
    else
      L1_2 = Entity
      L2_2 = L42_1
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2.state
      L1_2 = L1_2.D_Ancorata
      if L1_2 then
        L2_2 = IsPedSittingInAnyVehicle
        L3_2 = L0_2
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = L42_1
          L3_2 = GetVehiclePedIsIn
          L4_2 = L0_2
          L5_2 = false
          L3_2 = L3_2(L4_2, L5_2)
          if L2_2 == L3_2 then
            L2_2 = GetEntityCoords
            L3_2 = L42_1
            L2_2 = L2_2(L3_2)
            L3_2 = L43_1
            L4_2 = L2_2.x
            L5_2 = L2_2.y
            L6_2 = L2_2.z
            L6_2 = L6_2 + 0.5
            L7_2 = "[H] Detach Anchor"
            L3_2(L4_2, L5_2, L6_2, L7_2)
          end
        end
      elseif nil == L1_2 then
        L2_2 = nil
        L42_1 = L2_2
        L2_2 = Wait
        L3_2 = 1000
        L2_2(L3_2)
      end
    end
  end
end
L44_1(L45_1)
L44_1 = false
L45_1 = RegisterCommand
L46_1 = "editorpanda"
function L47_1(A0_2, A1_2)
  local L2_2
  L2_2 = L44_1
  L2_2 = not L2_2
  L44_1 = L2_2
  L2_2 = L44_1
  if L2_2 then
    L2_2 = fPanda
    L2_2()
  end
end
L45_1(L46_1, L47_1)
function L45_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = SetTextFont
  L7_2 = A1_2
  L6_2(L7_2)
  L6_2 = SetTextScale
  L7_2 = A3_2
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L6_2 = SetTextColour
  L7_2 = A2_2[1]
  L8_2 = A2_2[2]
  L9_2 = A2_2[3]
  L10_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = SetTextEntry
  L7_2 = "STRING"
  L6_2(L7_2)
  L6_2 = SetTextDropShadow
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = SetTextDropShadow
  L6_2()
  L6_2 = SetTextEdge
  L7_2 = 4
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = SetTextOutline
  L6_2()
  L6_2 = AddTextComponentString
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = DrawText
  L7_2 = A4_2
  L8_2 = A5_2
  L6_2(L7_2, L8_2)
end
Legacy2D = L45_1
L45_1 = 0
function L46_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    while true do
      L0_3 = L44_1
      if L0_3 then
        L0_3 = {}
        L0_3.r = 255
        L0_3.g = 0
        L0_3.b = 110
        L0_3.a = 200
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        L2_3 = L8_1
        L3_3 = 300.0
        L2_3, L3_3, L4_3 = L2_3(L3_3)
        if L4_3 > 0 then
          L5_3 = Legacy2D
          L6_3 = "Sto selezionando entity ID: "
          L7_3 = L4_3
          L6_3 = L6_3 .. L7_3
          L7_3 = 4
          L8_3 = {}
          L9_3 = 255
          L10_3 = 255
          L11_3 = 255
          L8_3[1] = L9_3
          L8_3[2] = L10_3
          L8_3[3] = L11_3
          L9_3 = 0.4
          L10_3 = 0.55
          L11_3 = 0.888
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L5_3 = DrawLine
          L6_3 = L1_3.x
          L7_3 = L1_3.y
          L8_3 = L1_3.z
          L8_3 = L8_3 + 0.5
          L9_3 = L3_3.x
          L10_3 = L3_3.y
          L11_3 = L3_3.z
          L12_3 = L0_3.r
          L13_3 = L0_3.g
          L14_3 = L0_3.b
          L15_3 = L0_3.a
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          L5_3 = DrawMarker
          L6_3 = 28
          L7_3 = L3_3.x
          L8_3 = L3_3.y
          L9_3 = L3_3.z
          L10_3 = 0.0
          L11_3 = 0.0
          L12_3 = 0.0
          L13_3 = 0.0
          L14_3 = 180.0
          L15_3 = 0.0
          L16_3 = 0.05
          L17_3 = 0.05
          L18_3 = 0.05
          L19_3 = L0_3.r
          L20_3 = L0_3.g
          L21_3 = L0_3.b
          L22_3 = L0_3.a
          L23_3 = false
          L24_3 = true
          L25_3 = 2
          L26_3 = nil
          L27_3 = nil
          L28_3 = false
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          L5_3 = L45_1
          if 0 == L5_3 then
            L5_3 = L45_1
            if L5_3 ~= L4_3 then
              L45_1 = L4_3
              L5_3 = SetEntityDrawOutline
              L6_3 = L4_3
              L7_3 = true
              L5_3(L6_3, L7_3)
              L5_3 = SetEntityDrawOutlineColor
              L6_3 = 255
              L7_3 = 0
              L8_3 = 110
              L9_3 = 150
              L5_3(L6_3, L7_3, L8_3, L9_3)
            else
              L5_3 = SetEntityDrawOutline
              L6_3 = L45_1
              L7_3 = false
              L5_3(L6_3, L7_3)
              L5_3 = 0
              L45_1 = L5_3
            end
          else
            L5_3 = L45_1
            if L5_3 ~= L4_3 then
              L5_3 = SetEntityDrawOutline
              L6_3 = L45_1
              L7_3 = false
              L5_3(L6_3, L7_3)
              L5_3 = 0
              L45_1 = L5_3
            end
          end
        else
          L5_3 = Legacy2D
          L6_3 = "Nessuna entity rilevata, puntala con la telecamera."
          L7_3 = 4
          L8_3 = {}
          L9_3 = 255
          L10_3 = 255
          L11_3 = 255
          L8_3[1] = L9_3
          L8_3[2] = L10_3
          L8_3[3] = L11_3
          L9_3 = 0.4
          L10_3 = 0.55
          L11_3 = 0.888
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L5_3 = L45_1
          if 0 ~= L5_3 then
            L5_3 = SetEntityDrawOutline
            L6_3 = L4_3
            L7_3 = false
            L5_3(L6_3, L7_3)
            L5_3 = 0
            L45_1 = L5_3
          end
        end
      else
        return
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
fPanda = L46_1
L46_1 = CreateThread
function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = {}
  L1_2 = "WORLD_VEHICLE_MILITARY_PLANES_SMALL"
  L2_2 = "WORLD_VEHICLE_MILITARY_PLANES_BIG"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = {}
  L2_2 = 2017590552
  L3_2 = 2141866469
  L4_2 = 1409640232
  L5_2 = "ng_planes"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L2_2 = {}
  L3_2 = "SHAMAL"
  L4_2 = "LUXOR"
  L5_2 = "LUXOR2"
  L6_2 = "JET"
  L7_2 = "LAZER"
  L8_2 = "TITAN"
  L9_2 = "BARRACKS"
  L10_2 = "BARRACKS2"
  L11_2 = "CRUSADER"
  L12_2 = "RHINO"
  L13_2 = "AIRTUG"
  L14_2 = "RIPLEY"
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
  while true do
    L3_2 = next
    L4_2 = L0_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = SetScenarioTypeEnabled
      L10_2 = L8_2
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
    L3_2 = next
    L4_2 = L1_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = SetScenarioGroupEnabled
      L10_2 = L8_2
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
    L3_2 = next
    L4_2 = L2_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = SetVehicleModelIsSuppressed
      L10_2 = GetHashKey
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L11_2 = true
      L9_2(L10_2, L11_2)
    end
    L3_2 = Wait
    L4_2 = 10000
    L3_2(L4_2)
  end
end
L46_1(L47_1)
L46_1 = exports
L47_1 = "onSpostaItem"
function L48_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = string
  L6_2 = L6_2.find
  L7_2 = A3_2
  L8_2 = "content"
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = string
    L6_2 = L6_2.find
    L7_2 = A1_2
    L8_2 = "spell"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
    end
  end
end
L46_1(L47_1, L48_1)
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.gettutorial
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = IsEntityPositionFrozen
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = IsPedFatallyInjured
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = -1
  L2_2 = {}
  L3_2 = {}
  L3_2.label = "Generalist"
  L3_2.value = 0
  L4_2 = {}
  L4_2.label = "Engineer"
  L4_2.value = 1
  L5_2 = {}
  L5_2.label = "Explorer"
  L5_2.value = 2
  L6_2 = {}
  L6_2.label = "Forgemaster"
  L6_2.value = 3
  L7_2 = {}
  L7_2.label = "Alchemist"
  L7_2.value = 4
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.clearMenu
    L0_3(L1_3)
    L0_3 = ipairs
    L1_3 = L2_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = exports
      L6_3 = L6_3.striano_fastmenu
      L7_3 = L6_3
      L6_3 = L6_3.addMenuItem
      L8_3 = L5_3.label
      function L9_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
        L0_4 = L1_2
        if -1 == L0_4 then
          L0_4 = L0_1
          if L0_4 > 0 then
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.submexInfo
            L2_4 = "Select again to choose, remember you will lose you current Craft Level. (LV: "
            L3_4 = L0_1
            L4_4 = " ["
            L5_4 = L1_1
            L6_4 = "])"
            L2_4 = L2_4 .. L3_4 .. L4_4 .. L5_4 .. L6_4
            L0_4(L1_4, L2_4)
          else
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.submexInfo
            L2_4 = "Select again to confirm this Class."
            L0_4(L1_4, L2_4)
          end
          L0_4 = L5_3.value
          L1_2 = L0_4
          return
        end
        L0_4 = L2_1
        L1_4 = L1_2
        if L0_4 == L1_4 then
          L0_4 = exports
          L0_4 = L0_4.striano_combat
          L1_4 = L0_4
          L0_4 = L0_4.submexError
          L2_4 = "Can't select same Class."
          L0_4(L1_4, L2_4)
          L0_4 = -1
          L1_2 = L0_4
          return
        end
        L0_4 = L5_3.value
        L1_4 = L1_2
        if L0_4 ~= L1_4 then
          L0_4 = exports
          L0_4 = L0_4.striano_combat
          L1_4 = L0_4
          L0_4 = L0_4.submexError
          L2_4 = "You must select the same class 2 times to Apply."
          L0_4(L1_4, L2_4)
          L0_4 = -1
          L1_2 = L0_4
          return
        end
        L0_4 = TriggerServerEvent
        L1_4 = "status:set"
        L2_4 = GetPlayerServerId
        L3_4 = PlayerId
        L3_4, L4_4, L5_4, L6_4 = L3_4()
        L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
        L3_4 = "classepl"
        L4_4 = L5_3.value
        L0_4(L1_4, L2_4, L3_4, L4_4)
        L0_4 = exports
        L0_4 = L0_4.striano_combat
        L1_4 = L0_4
        L0_4 = L0_4.submexInfo
        L2_4 = "Class selected correctly."
        L0_4(L1_4, L2_4)
        L0_4 = 0
        L0_1 = L0_4
        L0_4 = TriggerServerEvent
        L1_4 = "status:set"
        L2_4 = GetPlayerServerId
        L3_4 = PlayerId
        L3_4, L4_4, L5_4, L6_4 = L3_4()
        L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
        L3_4 = "craftlv"
        L4_4 = L0_1
        L0_4(L1_4, L2_4, L3_4, L4_4)
        L0_4 = 0
        L1_1 = L0_4
        L0_4 = TriggerServerEvent
        L1_4 = "status:set"
        L2_4 = GetPlayerServerId
        L3_4 = PlayerId
        L3_4, L4_4, L5_4, L6_4 = L3_4()
        L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
        L3_4 = "craftxp"
        L4_4 = L1_1
        L0_4(L1_4, L2_4, L3_4, L4_4)
        L0_4 = L5_3.value
        L2_1 = L0_4
        L0_4 = -1
        L1_2 = L0_4
        L0_4 = exports
        L0_4 = L0_4.striano_fastmenu
        L1_4 = L0_4
        L0_4 = L0_4.closeMenu
        L0_4(L1_4)
      end
      L6_3(L7_3, L8_3, L9_3)
    end
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.openMenu
    L0_3(L1_3)
  end
  L4_2 = L3_2
  L4_2()
end
L47_1 = RegisterCommand
L48_1 = "class"
function L49_1(A0_2)
  local L1_2
  L1_2 = L46_1
  L1_2()
end
L47_1(L48_1, L49_1)
