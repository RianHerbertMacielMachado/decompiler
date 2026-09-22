local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1
L0_1 = {}
L0_1.ESC = 322
L0_1.F1 = 288
L0_1.F2 = 289
L0_1.F3 = 170
L0_1.F5 = 166
L0_1.F6 = 167
L0_1.F7 = 168
L0_1.F8 = 169
L0_1.F9 = 56
L0_1.F10 = 57
L0_1["~"] = 243
L0_1["1"] = 157
L0_1["2"] = 158
L0_1["3"] = 160
L0_1["4"] = 164
L0_1["5"] = 165
L0_1["6"] = 159
L0_1["7"] = 161
L0_1["8"] = 162
L0_1["9"] = 163
L0_1["-"] = 84
L0_1["="] = 83
L0_1.BACKSPACE = 177
L0_1.TAB = 37
L0_1.Q = 44
L0_1.W = 32
L0_1.E = 38
L0_1.R = 45
L0_1.T = 245
L0_1.Y = 246
L0_1.U = 303
L0_1.P = 199
L0_1["["] = 39
L0_1["]"] = 40
L0_1.ENTER = 18
L0_1.CAPS = 137
L0_1.A = 34
L0_1.S = 8
L0_1.D = 9
L0_1.F = 23
L0_1.G = 47
L0_1.H = 74
L0_1.K = 311
L0_1.L = 182
L0_1.LEFTSHIFT = 21
L0_1.Z = 20
L0_1.X = 73
L0_1.C = 26
L0_1.V = 0
L0_1.B = 29
L0_1.N = 249
L0_1.M = 244
L0_1[","] = 82
L0_1["."] = 81
L0_1.LEFTCTRL = 36
L0_1.LEFTALT = 19
L0_1.SPACE = 22
L0_1.RIGHTCTRL = 70
L0_1.HOME = 213
L0_1.PAGEUP = 10
L0_1.PAGEDOWN = 11
L0_1.DELETE = 178
L0_1.LEFT = 174
L0_1.RIGHT = 175
L0_1.TOP = 27
L0_1.DOWN = 173
L0_1.NENTER = 201
L0_1.N4 = 108
L0_1.N5 = 60
L0_1.N6 = 107
L0_1["N+"] = 96
L0_1["N-"] = 97
L0_1.N7 = 117
L0_1.N8 = 61
L0_1.N9 = 118
function L1_1()
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = 0.0
  if nil == A0_2 then
    L1_2 = 3.0
  else
    L1_2 = A0_2
  end
  L2_2 = L1_1
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
  L9_2 = L4_2
  L10_2 = L3_2
  return L9_2, L10_2
end
PlayerVicino = L2_1
L2_1 = 50
L3_1 = false
L4_1 = false
L5_1 = nil
L6_1 = 1
L7_1 = 1
L8_1 = false
L9_1 = {}
L10_1 = 0
L11_1 = nil
L12_1 = false
L13_1 = nil
PlayerCaricato = false
L14_1 = {}
currentTattoos = L14_1
L14_1 = json
L14_1 = L14_1.decode
L15_1 = LoadResourceFile
L16_1 = GetCurrentResourceName
L16_1 = L16_1()
L17_1 = "tattoos/AllTattoos.json"
L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1 = L15_1(L16_1, L17_1)
L14_1 = L14_1(L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1)
AllTattooList = L14_1
L14_1 = {}
L15_1 = {}
L16_1 = "ZONE_HAIR"
L17_1 = "Head Shade"
L15_1[1] = L16_1
L15_1[2] = L17_1
L16_1 = {}
L17_1 = "ZONE_HEAD"
L18_1 = "Facial"
L16_1[1] = L17_1
L16_1[2] = L18_1
L17_1 = {}
L18_1 = "ZONE_TORSO"
L19_1 = "Chest/Back"
L17_1[1] = L18_1
L17_1[2] = L19_1
L18_1 = {}
L19_1 = "ZONE_LEFT_LEG"
L20_1 = "Leg Left"
L18_1[1] = L19_1
L18_1[2] = L20_1
L19_1 = {}
L20_1 = "ZONE_LEFT_ARM"
L21_1 = "Arm Left"
L19_1[1] = L20_1
L19_1[2] = L21_1
L20_1 = {}
L21_1 = "ZONE_RIGHT_LEG"
L22_1 = "Leg Right"
L20_1[1] = L21_1
L20_1[2] = L22_1
L21_1 = {}
L22_1 = "ZONE_RIGHT_ARM"
L23_1 = "Arm Right"
L21_1[1] = L22_1
L21_1[2] = L23_1
L22_1 = {}
L23_1 = "ZONA_CUSTOM"
L24_1 = "V.I.P"
L22_1[1] = L23_1
L22_1[2] = L24_1
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L14_1[7] = L21_1
L14_1[8] = L22_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = L5_1
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = L5_1
    L0_2(L1_2)
    L0_2 = nil
    L5_1 = L0_2
  end
  L0_2 = ResetSkin
  L0_2()
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.EndOrbitCam
  L0_2(L1_2)
  L0_2 = SetEntityCollision
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = ExecuteCommand
  L1_2 = "e c"
  L0_2(L1_2)
  L0_2 = 1
  L6_1 = L0_2
  L0_2 = false
  L8_1 = L0_2
  L0_2 = {}
  L9_1 = L0_2
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = true
  L12_1 = L0_2
  L0_2 = Wait
  L1_2 = 1
  L0_2(L1_2)
  L0_2 = false
  L12_1 = L0_2
  L0_2 = ExecuteCommand
  L1_2 = "loadskin"
  L0_2(L1_2)
end
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L7_1
  if L0_2 > 0 then
    L0_2 = L7_1
    L1_2 = L9_1
    L1_2 = L1_2[L0_2]
    if L1_2 then
      L1_2 = L9_1
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.label
      if "Nulla" == L1_2 then
        L1_2 = exports
        L1_2 = L1_2.striano_combat
        L2_2 = L1_2
        L1_2 = L1_2.submexInfo
        L3_2 = ""
        L1_2(L2_2, L3_2)
        L1_2 = DrawTattoo
        L1_2()
      else
        L1_2 = exports
        L1_2 = L1_2.striano_combat
        L2_2 = L1_2
        L1_2 = L1_2.submexInfo
        L3_2 = "["
        L4_2 = L0_2
        L5_2 = "] "
        L6_2 = L9_1
        L6_2 = L6_2[L0_2]
        L6_2 = L6_2.label
        L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
        L1_2(L2_2, L3_2)
        L1_2 = DrawTattoo
        L2_2 = L9_1
        L2_2 = L2_2[L0_2]
        L2_2 = L2_2.Collection
        L3_2 = L9_1
        L3_2 = L3_2[L0_2]
        L3_2 = L3_2.HashName
        L1_2(L2_2, L3_2)
      end
    end
  end
end
UpdateTattoo = L16_1
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = L0_1.F2
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = L0_1.F3
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = L0_1.K
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = L0_1.F5
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 37
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 38
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 18
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 74
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 47
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 24
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 25
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 22
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 44
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 174
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 175
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 26
      L0_3(L1_3, L2_3)
      L0_3 = SetEntityVelocity
      L1_3 = L0_2
      L2_3 = 0.0
      L3_3 = 0.0
      L4_3 = 0.0
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = IsDisabledControlJustPressed
      L1_3 = 0
      L2_3 = 194
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = true
        L12_1 = L0_3
      end
      L0_3 = L12_1
      if not L0_3 then
        L0_3 = GetFollowPedCamViewMode
        L0_3 = L0_3()
        if 4 == L0_3 then
          L0_3 = SetFollowPedCamViewMode
          L1_3 = 0
          L0_3(L1_3)
        end
        L0_3 = DisableAllControlActions
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 24
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 201
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.ENTER
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.Z
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.P
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.RIGHT
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.LEFT
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.TOP
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.DOWN
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.X
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = L0_1.M
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 26
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 32
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 33
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 24
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L8_1
        if not L0_3 then
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 175
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = L6_1
            L0_3 = L0_3 + 1
            L6_1 = L0_3
            L0_3 = L6_1
            L1_3 = L14_1
            L1_3 = #L1_3
            if L0_3 > L1_3 then
              L0_3 = 1
              L6_1 = L0_3
            end
            L0_3 = PlaySoundFrontend
            L1_3 = -1
            L2_3 = "WEAPON_ATTACHMENT_EQUIP"
            L3_3 = "HUD_AMMO_SHOP_SOUNDSET"
            L4_3 = 1
            L0_3(L1_3, L2_3, L3_3, L4_3)
          end
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 174
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = L6_1
            L0_3 = L0_3 - 1
            L6_1 = L0_3
            L0_3 = L6_1
            if L0_3 < 1 then
              L0_3 = L14_1
              L0_3 = #L0_3
              L6_1 = L0_3
            end
            L0_3 = PlaySoundFrontend
            L1_3 = -1
            L2_3 = "WEAPON_ATTACHMENT_EQUIP"
            L3_3 = "HUD_AMMO_SHOP_SOUNDSET"
            L4_3 = 1
            L0_3(L1_3, L2_3, L3_3, L4_3)
          end
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 18
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = SelezionaTattoo
            L2_3 = L6_1
            L1_3 = L14_1
            L1_3 = L1_3[L2_3]
            L1_3 = L1_3[1]
            L0_3(L1_3)
            L0_3 = L7_1
            L1_3 = L9_1
            L1_3 = #L1_3
            if L0_3 > L1_3 then
              L0_3 = 1
              L7_1 = L0_3
            end
            L0_3 = true
            L8_1 = L0_3
          end
        else
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 18
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = 0
            L1_3 = pairs
            L2_3 = currentTattoos
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = L6_3.nameHash
              L9_3 = L7_1
              L8_3 = L9_1
              L8_3 = L8_3[L9_3]
              L8_3 = L8_3.HashName
              if L7_3 == L8_3 then
                L0_3 = L0_3 + 1
              end
            end
            if L0_3 < 3 then
              L1_3 = BuyTattoo
              L3_3 = L7_1
              L2_3 = L9_1
              L2_3 = L2_3[L3_3]
              L2_3 = L2_3.Collection
              L4_3 = L7_1
              L3_3 = L9_1
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.HashName
              L5_3 = L6_1
              L4_3 = L14_1
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3[1]
              L6_3 = L7_1
              L5_3 = L9_1
              L5_3 = L5_3[L6_3]
              L5_3 = L5_3.value
              L1_3(L2_3, L3_3, L4_3, L5_3)
            else
            end
          end
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 175
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = L7_1
            L0_3 = L0_3 + 1
            L7_1 = L0_3
            L0_3 = L7_1
            L1_3 = L9_1
            L1_3 = #L1_3
            if L0_3 > L1_3 then
              L0_3 = 1
              L7_1 = L0_3
            end
            L0_3 = UpdateTattoo
            L0_3()
          end
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 174
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = L7_1
            L0_3 = L0_3 - 1
            L7_1 = L0_3
            L0_3 = L7_1
            if L0_3 < 1 then
              L0_3 = L9_1
              L0_3 = #L0_3
              L7_1 = L0_3
            end
            L0_3 = UpdateTattoo
            L0_3()
          end
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 26
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = OpenInput
            L1_3 = "ID 1-"
            L2_3 = L9_1
            L2_3 = #L2_3
            L1_3 = L1_3 .. L2_3
            L0_3 = L0_3(L1_3)
            L1_3 = tonumber
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            L2_3 = L9_1
            L2_3 = #L2_3
            if L1_3 <= L2_3 then
              L1_3 = tonumber
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if L1_3 > 0 then
                L1_3 = tonumber
                L2_3 = L0_3
                L1_3 = L1_3(L2_3)
                L7_1 = L1_3
                L1_3 = UpdateTattoo
                L1_3()
              end
            end
          end
        end
        L0_3 = L8_1
        if not L0_3 then
          L0_3 = draw
          L1_3 = 174
          L2_3 = ""
          L3_3 = 175
          L4_3 = "~h~"
          L5_3 = L6_1
          L6_3 = "/"
          L7_3 = L14_1
          L7_3 = #L7_3
          L8_3 = " "
          L10_3 = L6_1
          L9_3 = L14_1
          L9_3 = L9_3[L10_3]
          L9_3 = L9_3[2]
          L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
          L5_3 = 18
          L6_3 = "Confirm Category"
          L7_3 = 32
          L8_3 = "Move"
          L9_3 = 35
          L10_3 = "FOV"
          L11_3 = 16
          L12_3 = "Zoom (+ Shift)"
          L13_3 = 56
          L14_3 = "My Tattoo"
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        else
          L0_3 = "Nothing"
          L2_3 = L7_1
          L1_3 = L9_1
          L1_3 = L1_3[L2_3]
          L1_3 = L1_3.label
          if nil == L1_3 then
            L0_3 = "Nothing"
          else
            L2_3 = L7_1
            L1_3 = L9_1
            L1_3 = L1_3[L2_3]
            L0_3 = L1_3.label
          end
          L1_3 = draw
          L2_3 = 174
          L3_3 = ""
          L4_3 = 175
          L5_3 = "~h~"
          L6_3 = L7_1
          L7_3 = "/"
          L8_3 = L9_1
          L8_3 = #L8_3
          L9_3 = " "
          L10_3 = L0_3
          L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3
          L6_3 = 18
          L7_3 = "Apply"
          L8_3 = 26
          L9_3 = "ID"
          L10_3 = 32
          L11_3 = "Move"
          L12_3 = 35
          L13_3 = "FOV"
          L14_3 = 16
          L15_3 = "Zoom (+ Shift)"
          L16_3 = 73
          L17_3 = "Back"
          L18_3 = 56
          L19_3 = "My Tattoo"
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 73
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = IsDisabledControlJustPressed
            L2_3 = 0
            L3_3 = 73
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              goto lbl_445
            end
          end
          L1_3 = {}
          L9_1 = L1_3
          L1_3 = 1
          L6_1 = L1_3
          L1_3 = false
          L8_1 = L1_3
        end
        ::lbl_445::
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 56
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_combat
          L1_3 = L0_3
          L0_3 = L0_3.submexInfo
          L2_3 = ""
          L0_3(L1_3, L2_3)
          L0_3 = ExecuteCommand
          L1_3 = "myTattoo"
          L0_3(L1_3)
          return
        end
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 35
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_core
          L1_3 = L0_3
          L0_3 = L0_3.updateFOVcam
          L2_3 = 1
          L0_3(L1_3, L2_3)
        else
          L0_3 = IsDisabledControlPressed
          L1_3 = 0
          L2_3 = 34
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = exports
            L0_3 = L0_3.striano_core
            L1_3 = L0_3
            L0_3 = L0_3.updateFOVcam
            L2_3 = 2
            L0_3(L1_3, L2_3)
          end
        end
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 32
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = L5_1
          if L0_3 then
            L0_3 = GetEntityCoords
            L1_3 = L5_1
            L0_3 = L0_3(L1_3)
            L1_3 = L0_3.z
            L2_3 = GetEntityCoords
            L3_3 = L0_2
            L2_3 = L2_3(L3_3)
            L2_3 = L2_3.z
            L1_3 = L1_3 - L2_3
            if L1_3 < 1.0 then
              L1_3 = SetEntityCoords
              L2_3 = L5_1
              L3_3 = L0_3.x
              L4_3 = L0_3.y
              L5_3 = L0_3.z
              L5_3 = L5_3 + 0.02
              L1_3(L2_3, L3_3, L4_3, L5_3)
            end
        end
        else
          L0_3 = IsDisabledControlPressed
          L1_3 = 0
          L2_3 = 33
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = GetEntityCoords
            L1_3 = L5_1
            L0_3 = L0_3(L1_3)
            L1_3 = L0_3.z
            L2_3 = GetEntityCoords
            L3_3 = L0_2
            L2_3 = L2_3(L3_3)
            L2_3 = L2_3.z
            L2_3 = L2_3 - 1.5
            if L1_3 > L2_3 then
              L1_3 = SetEntityCoords
              L2_3 = L5_1
              L3_3 = L0_3.x
              L4_3 = L0_3.y
              L5_3 = L0_3.z
              L5_3 = L5_3 - 0.02
              L1_3(L2_3, L3_3, L4_3, L5_3)
            end
          end
        end
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 74
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlJustPressed
          L1_3 = 0
          L2_3 = 74
          L0_3 = L0_3(L1_3, L2_3)
        end
        if L0_3 then
          L0_3 = IsEntityPositionFrozen
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsEntityAttached
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = IsEntityPlayingAnim
              L1_3 = L0_2
              L2_3 = "anim@mp_corona_idles@female_b@idle_a"
              L3_3 = "idle_a"
              L4_3 = 1
              L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
              if not L0_3 then
                L0_3 = ExecuteCommand
                L1_3 = "e idle5"
                L0_3(L1_3)
              else
                L0_3 = ExecuteCommand
                L1_3 = "e c"
                L0_3(L1_3)
                L0_3 = ClearPedTasks
                L1_3 = L0_2
                L0_3(L1_3)
              end
            end
          end
        end
      else
        L0_3 = exports
        L0_3 = L0_3.striano_combat
        L1_3 = L0_3
        L0_3 = L0_3.submexInfo
        L2_3 = ""
        L0_3(L1_3, L2_3)
        L0_3 = L15_1
        L0_3()
        return
      end
    end
    L0_3 = exports
    L0_3 = L0_3.striano_combat
    L1_3 = L0_3
    L0_3 = L0_3.submexInfo
    L2_3 = ""
    L0_3(L1_3, L2_3)
    L0_3 = L15_1
    L0_3()
  end
  L1_2(L2_2)
end
LoopCameraTattoo = L16_1
L16_1 = exports
L17_1 = "NumeroTattoo"
function L18_1()
  local L0_2, L1_2
  L0_2 = L10_1
  return L0_2
end
L16_1(L17_1, L18_1)
L16_1 = exports
L17_1 = "intattooedit"
function L18_1()
  local L0_2, L1_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L5_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = true
      return L0_2
  end
  else
    L0_2 = false
    return L0_2
  end
end
L16_1(L17_1, L18_1)
L16_1 = CreateThread
function L17_1()
  local L0_2, L1_2, L2_2
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
  PlayerCaricato = false
  L1_2 = {}
  currentTattoos = L1_2
  L1_2 = nil
  L13_1 = L1_2
  L1_2 = ClearPedDecorations
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  PlayerCaricato = true
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_2 = L1_2(L2_2)
  if 1885233650 ~= L1_2 then
    L1_2 = GetEntityModel
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L1_2 = L1_2(L2_2)
    if -1667301416 ~= L1_2 then
  end
  else
    L1_2 = CaricaTattooPlayer
    L1_2()
  end
end
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "onResourceStart"
function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    PlayerCaricato = true
    L1_2 = CaricaTattooPlayer
    L1_2()
  end
end
L16_1(L17_1, L18_1)
L16_1 = false
L17_1 = RegisterCommand
L18_1 = "nometattoo"
function L19_1()
  local L0_2, L1_2
  L0_2 = L16_1
  L0_2 = not L0_2
  L16_1 = L0_2
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCommand
L18_1 = "loadtattoo"
function L19_1()
  local L0_2, L1_2
  L0_2 = PlayerCaricato
  if not L0_2 then
    return
  end
  L0_2 = CaricaTattooPlayer
  L0_2()
end
L17_1(L18_1, L19_1)
L17_1 = {}
L18_1 = 0
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L18_1
  L1_2 = L1_2 + 1
  L18_1 = L1_2
  L1_2 = L18_1
  L2_2 = L17_1
  L2_2[L1_2] = A0_2
  L2_2 = TriggerServerEvent
  L3_2 = "SmallTattoos:GetPlayerTattoos"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
GetPlayerTattoosStandalone = L19_1
L19_1 = RegisterNetEvent
L20_1 = "SmallTattoos:GetPlayerTattoos:cb"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L17_1
    L2_2 = L2_2[A0_2]
    L3_2 = A1_2
    L2_2(L3_2)
    L2_2 = L17_1
    L2_2[A0_2] = nil
  end
end
L19_1(L20_1, L21_1)
L19_1 = false
function L20_1()
  local L0_2, L1_2
  L0_2 = L19_1
  if L0_2 then
    return
  end
  L0_2 = true
  L19_1 = L0_2
  L0_2 = GetPlayerTattoosStandalone
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if nil ~= A0_3 and "" ~= A0_3 then
      L1_3 = #A0_3
      if L1_3 > 5 then
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = tostring
        L3_3 = A0_3
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3(L3_3)
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        A0_3 = L1_3
        L1_3 = ClearPedDecorations
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3()
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L1_3 = type
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if "table" == L1_3 then
          L1_3 = #A0_3
          L10_1 = L1_3
          L1_3 = pairs
          L2_3 = A0_3
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
            L7_3 = L6_3.collection
            if nil ~= L7_3 then
              L7_3 = L6_3.nameHash
              if nil ~= L7_3 then
                L7_3 = SetPedDecoration
                L8_3 = PlayerPedId
                L8_3 = L8_3()
                L9_3 = L6_3.collection
                L10_3 = L6_3.nameHash
                L7_3(L8_3, L9_3, L10_3)
              end
            end
            L7_3 = L6_3.collection
            if "spack_overlays" ~= L7_3 then
              L7_3 = L6_3.collection
              if "tattoo_sod_overlays" ~= L7_3 then
                L7_3 = L6_3.collection
                if "sodbloodtattoo_overlays" ~= L7_3 then
                  goto lbl_55
                end
              end
            end
            L7_3 = L10_1
            L7_3 = L7_3 - 1
            L10_1 = L7_3
            ::lbl_55::
          end
          currentTattoos = A0_3
        else
          L1_3 = print
          L2_3 = "tattoo non \195\168 una tabella"
          L1_3(L2_3)
          L1_3 = {}
          currentTattoos = L1_3
          L1_3 = ClearPedDecorations
          L2_3 = PlayerPedId
          L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3()
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        end
    end
    else
      L1_3 = ClearPedDecorations
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3()
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    end
  end
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = false
  L19_1 = L0_2
end
CaricaTattooPlayer = L20_1
L20_1 = exports
L21_1 = "getMyTattooList"
function L22_1()
  local L0_2, L1_2
  L0_2 = currentTattoos
  return L0_2
end
L20_1(L21_1, L22_1)
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = ClearPedDecorations
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = pairs
  L4_2 = currentTattoos
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = SetPedDecoration
    L10_2 = L2_2
    L11_2 = L8_2.collection
    L12_2 = L8_2.nameHash
    L9_2(L10_2, L11_2, L12_2)
  end
  if nil ~= A0_2 and nil ~= A1_2 then
    L3_2 = SetPedDecoration
    L4_2 = L2_2
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L16_1
    if L3_2 then
      L3_2 = print
      L4_2 = "Debug tattoo: [collection] "
      L5_2 = A0_2
      L6_2 = " - [name] "
      L7_2 = A1_2
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
      L3_2(L4_2)
    end
  end
end
DrawTattoo = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L13_1
  if nil == L0_2 then
    L0_2 = true
    L3_1 = L0_2
    L0_2 = LoopCameraTattoo
    L0_2()
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = L5_1
    if nil == L1_2 then
      L1_2 = CreateObject
      L2_2 = GetHashKey
      L3_2 = "prop_cs_leaf"
      L2_2 = L2_2(L3_2)
      L3_2 = GetEntityCoords
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L4_2 = true
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L5_1 = L1_2
      L1_2 = SetEntityVisible
      L2_2 = L5_1
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = FreezeEntityPosition
      L2_2 = L5_1
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityNoCollisionEntity
      L2_2 = L0_2
      L3_2 = L5_1
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = FreezeEntityPosition
      L2_2 = L0_2
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityCollision
      L2_2 = L5_1
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetEntityCollision
      L2_2 = L0_2
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      while true do
        L1_2 = DoesEntityExist
        L2_2 = L5_1
        L1_2 = L1_2(L2_2)
        if L1_2 then
          break
        end
        L1_2 = Wait
        L2_2 = 0
        L1_2(L2_2)
      end
      L1_2 = exports
      L1_2 = L1_2.striano_core
      L2_2 = L1_2
      L1_2 = L1_2.StartOrbitCam
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 0.5
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L4_2 = L5_1
      L5_2 = nil
      L6_2 = 3.0
      L7_2 = 15.0
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    end
    L1_2 = {}
    L13_1 = L1_2
    L1_2 = TriggerEvent
    L2_2 = "skinchanger:getSkin"
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3
      L13_1 = A0_3
      L1_3 = GetEntityModel
      L2_3 = L0_2
      L1_3 = L1_3(L2_3)
      if 1885233650 == L1_3 then
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:loadSkin"
        L3_3 = {}
        L3_3.sex = 0
        L3_3.tshirt_1 = 15
        L3_3.tshirt_2 = 0
        L3_3.arms = 15
        L3_3.arms_2 = 0
        L3_3.torso_1 = 15
        L3_3.torso_2 = 0
        L3_3.pants_1 = 61
        L3_3.pants_2 = 0
        L3_3.shoes_1 = 34
        L3_3.shoes_2 = 0
        L3_3.glasses_1 = 0
        L3_3.helmet_1 = -1
        L3_3.helmet_2 = 0
        L3_3.bproof_1 = 0
        L3_3.bproof_2 = 0
        L3_3.mask_1 = 0
        L3_3.mask_2 = 0
        L3_3.braceletes_1 = -1
        L3_3.braceletes_2 = 0
        L1_3(L2_3, L3_3)
      else
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:loadSkin"
        L3_3 = {}
        L3_3.sex = 1
        L3_3.tshirt_1 = 15
        L3_3.tshirt_2 = 0
        L3_3.arms = 15
        L3_3.arms_2 = 0
        L3_3.torso_1 = 15
        L3_3.torso_2 = 0
        L3_3.pants_1 = 15
        L3_3.pants_2 = 0
        L3_3.shoes_1 = 35
        L3_3.shoes_2 = 0
        L3_3.glasses_1 = 5
        L3_3.helmet_1 = -1
        L3_3.helmet_2 = 0
        L3_3.bproof_1 = 0
        L3_3.bproof_2 = 0
        L3_3.mask_1 = 0
        L3_3.mask_2 = 0
        L3_3.braceletes_1 = -1
        L3_3.braceletes_2 = 0
        L1_3(L2_3, L3_3)
      end
    end
    L1_2(L2_2, L3_2)
  end
end
GetNaked = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L13_1
  if nil ~= L0_2 then
    L0_2 = TriggerEvent
    L1_2 = "skinchanger:loadSkin"
    L2_2 = L13_1
    L0_2(L1_2, L2_2)
    L0_2 = nil
    L13_1 = L0_2
  end
  L0_2 = ClearPedDecorations
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L0_2 = pairs
  L1_2 = currentTattoos
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = SetPedDecoration
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = L5_2.collection
    L9_2 = L5_2.nameHash
    L6_2(L7_2, L8_2, L9_2)
  end
end
ResetSkin = L20_1
function L20_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "SaveMySkin"
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "e idle"
  L0_2(L1_2)
  L0_2 = GetNaked
  L0_2()
end
OpenTattooShop = L20_1
L20_1 = RegisterNetEvent
L21_1 = "xnTattoos:shop"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "xnTattoos:shop"
function L22_1()
  local L0_2, L1_2
  L0_2 = OpenTattooShop
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "clearMyTattoo"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "clearMyTattoo"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  currentTattoos = L0_2
  L0_2 = ClearPedDecorations
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = TriggerServerEvent
  L1_2 = "SmallTattoos:UpdateTattoo"
  L2_2 = currentTattoos
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "tattoo"
function L22_1()
  local L0_2, L1_2
  L0_2 = OpenTattooShop
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = false
  L5_2 = currentTattoos
  L5_2 = #L5_2
  if L5_2 >= 15 then
    L5_2 = exports
    L5_2 = L5_2.striano_core
    L6_2 = L5_2
    L5_2 = L5_2.gettutorial
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L4_2 = true
    end
  end
  L5_2 = L2_1
  if "spack_overlays" == A0_2 or "sodbloodtattoo_overlays" == A0_2 or "tattoo_sod_overlays" == A0_2 then
    L6_2 = L2_1
    L5_2 = L6_2 * 3
  end
  L6_2 = L10_1
  if L5_2 > L6_2 or L4_2 then
    L6_2 = {}
    L6_2.collection = A0_2
    L6_2.nameHash = A1_2
    L6_2.zona = A2_2
    L6_2.label = A3_2
    L7_2 = L10_1
    L7_2 = L7_2 + 1
    L10_1 = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = currentTattoos
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = TriggerServerEvent
    L8_2 = "SmallTattoos:UpdateTattoo"
    L9_2 = currentTattoos
    L10_2 = GetPlayerServerId
    L11_2 = PlayerId
    L11_2 = L11_2()
    L10_2, L11_2 = L10_2(L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
    if "spack_overlays" ~= A0_2 and "tattoo_sod_overlays" ~= A0_2 and "sodbloodtattoo_overlays" ~= A0_2 then
      L7_2 = exports
      L7_2 = L7_2.striano_combat
      L8_2 = L7_2
      L7_2 = L7_2.submexInfo
      L9_2 = "Apply: "
      L10_2 = A3_2
      L9_2 = L9_2 .. L10_2
      L7_2(L8_2, L9_2)
    end
  else
    L6_2 = print
    L7_2 = "Possiedi il massimo di tattoo consentiti."
    L6_2(L7_2)
    L6_2 = ExecuteCommand
    L7_2 = "e shrug4"
    L6_2(L7_2)
  end
end
BuyTattoo = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = currentTattoos
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      L7_2 = exports
      L7_2 = L7_2.striano_combat
      L8_2 = L7_2
      L7_2 = L7_2.submex
      L9_2 = ""
      L7_2(L8_2, L9_2)
      L7_2 = print
      L8_2 = "Tattoo trovato e rimosso ("
      L9_2 = L6_2.nameHash
      L10_2 = ")"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L7_2(L8_2)
      break
    end
  end
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SetPedDecoration
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = L6_2.collection
    L10_2 = L6_2.nameHash
    L7_2(L8_2, L9_2, L10_2)
  end
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "SmallTattoos:UpdateTattoo"
  L3_2 = currentTattoos
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
RemoveTattoo = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = ClearPedDecorations
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L0_2 = 1
  L1_2 = 20
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = pairs
    L5_2 = currentTattoos
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.collection
      if "spack_overlays" == L10_2 then
        L10_2 = table
        L10_2 = L10_2.remove
        L11_2 = currentTattoos
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  L0_2 = pairs
  L1_2 = currentTattoos
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = SetPedDecoration
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = L5_2.collection
    L9_2 = L5_2.nameHash
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "SmallTattoos:UpdateTattoo"
  L2_2 = currentTattoos
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
ResetFerite = L20_1
L20_1 = exports
L21_1 = "ResettaFerite"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetFerite
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = ClearPedDecorations
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L0_2 = 1
  L1_2 = 20
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = pairs
    L5_2 = currentTattoos
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.collection
      if "tattoo_sod_overlays" ~= L10_2 then
        L10_2 = L9_2.collection
        if "sodbloodtattoo_overlays" ~= L10_2 then
          goto lbl_24
        end
      end
      L10_2 = table
      L10_2 = L10_2.remove
      L11_2 = currentTattoos
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
      ::lbl_24::
    end
  end
  L0_2 = pairs
  L1_2 = currentTattoos
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = SetPedDecoration
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = L5_2.collection
    L9_2 = L5_2.nameHash
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "SmallTattoos:UpdateTattoo"
  L2_2 = currentTattoos
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
ResetSporco = L20_1
L20_1 = exports
L21_1 = "ResettaSporco"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetSporco
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "totsporco"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.collection
    if "tattoo_sod_overlays" ~= L7_2 then
      L7_2 = L6_2.collection
      if "sodbloodtattoo_overlays" ~= L7_2 then
        goto lbl_14
      end
    end
    L0_2 = L0_2 + 1
    ::lbl_14::
  end
  if L0_2 > 0 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexInfo
    L3_2 = "You have "
    L4_2 = L0_2
    L5_2 = " staines of dirty/blood, you need a shower."
    L3_2 = L3_2 .. L4_2 .. L5_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexInfo
    L3_2 = "You don't have staines of dirty or blood, you are clean!"
    L1_2(L2_2, L3_2)
  end
  L1_2 = ExecuteCommand
  L2_2 = "loadtattoo"
  L1_2(L2_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "totferite"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.collection
    if "spack_overlays" == L7_2 then
      L0_2 = L0_2 + 1
    end
  end
  if L0_2 > 0 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexInfo
    L3_2 = "You have "
    L4_2 = L0_2
    L5_2 = " hematomas, you need a medikit."
    L3_2 = L3_2 .. L4_2 .. L5_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexInfo
    L3_2 = "No wounds detected."
    L1_2(L2_2, L3_2)
  end
  L1_2 = ExecuteCommand
  L2_2 = "loadtattoo"
  L1_2(L2_2)
end
L20_1(L21_1, L22_1)
L20_1 = exports
L21_1 = "salvaTattoo"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = TriggerServerEvent
  L1_2 = "SmallTattoos:UpdateTattoo"
  L2_2 = currentTattoos
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L20_1(L21_1, L22_1)
L20_1 = exports
L21_1 = "resettaferitasingola"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetFerita
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = ClearPedDecorations
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L0_2 = false
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.collection
    if "spack_overlays" ~= L7_2 then
      L7_2 = L6_2.collection
      if "sodbloodtattoo_overlays" ~= L7_2 then
        goto lbl_23
      end
    end
    L7_2 = table
    L7_2 = L7_2.remove
    L8_2 = currentTattoos
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L0_2 = true
    do break end
    ::lbl_23::
  end
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SetPedDecoration
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = L6_2.collection
    L10_2 = L6_2.nameHash
    L7_2(L8_2, L9_2, L10_2)
  end
  L1_2 = TriggerServerEvent
  L2_2 = "SmallTattoos:UpdateTattoo"
  L3_2 = currentTattoos
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
ResetFerita = L20_1
L20_1 = RegisterNetEvent
L21_1 = "xnTattoos:resetferita"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "xnTattoos:resetferita"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetFerita
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "xnTattoos:resetferite"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "xnTattoos:resetferite"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetFerite
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = ClearPedDecorations
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L0_2 = false
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.collection
    if "tattoo_sod_overlays" ~= L7_2 then
      L7_2 = L6_2.collection
      if "sodbloodtattoo_overlays" ~= L7_2 then
        goto lbl_23
      end
    end
    L7_2 = table
    L7_2 = L7_2.remove
    L8_2 = currentTattoos
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L0_2 = true
    do break end
    ::lbl_23::
  end
  L1_2 = pairs
  L2_2 = currentTattoos
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SetPedDecoration
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = L6_2.collection
    L10_2 = L6_2.nameHash
    L7_2(L8_2, L9_2, L10_2)
  end
  L1_2 = TriggerServerEvent
  L2_2 = "SmallTattoos:UpdateTattoo"
  L3_2 = currentTattoos
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
ResetSporcoSingolo = L20_1
L20_1 = exports
L21_1 = "ResettaSporcoSingolo"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetSporcoSingolo
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "ResettaSporcoSingolo"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetSporcoSingolo
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "xnTattoos:resetsporco"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "xnTattoos:resetsporco"
function L22_1()
  local L0_2, L1_2
  L0_2 = ResetSporco
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "xnTattoos:resetferiteVicino"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "xnTattoos:resetferiteVicino"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerVicino
  L0_2, L1_2 = L0_2()
  if -1 == L0_2 or L1_2 > 2.0 then
    L2_2 = ExecuteCommand
    L3_2 = "e shrug"
    L2_2(L3_2)
  else
    L2_2 = makeEntityFaceEntity
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = GetPlayerPed
    L5_2 = L0_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = ExecuteCommand
    L3_2 = "e mechanic4"
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "xnTattoos:resetferiteServer"
    L4_2 = GetPlayerServerId
    L5_2 = L0_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Wait
    L3_2 = 5000
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "e c"
    L2_2(L3_2)
    L2_2 = ClearPedTasks
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2 = L3_2()
    L2_2(L3_2, L4_2, L5_2)
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "mieitattoo"
function L22_1()
  local L0_2, L1_2
  L0_2 = ListaTuoiTattoo
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "mytattoo"
function L22_1()
  local L0_2, L1_2
  L0_2 = ListaTuoiTattoo
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = nil
  L11_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = currentTattoos
  L1_2 = #L1_2
  if L1_2 > 0 then
    L1_2 = exports
    L1_2 = L1_2.striano_fastmenu
    L2_2 = L1_2
    L1_2 = L1_2.opened
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_fastmenu
      L2_2 = L1_2
      L1_2 = L1_2.close
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 25
      L1_2(L2_2)
    end
    L1_2 = exports
    L1_2 = L1_2.striano_fastmenu
    L2_2 = L1_2
    L1_2 = L1_2.clearMenu
    L1_2(L2_2)
    L1_2 = 0
    L2_2 = pairs
    L3_2 = currentTattoos
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.collection
      if "spack_overlays" ~= L8_2 then
        L8_2 = L7_2.collection
        if "sodbloodtattoo_overlays" ~= L8_2 then
          L8_2 = L7_2.collection
          if "tattoo_sod_overlays" ~= L8_2 then
            L1_2 = L1_2 + 1
            L8_2 = GetLabelText
            L9_2 = L7_2.label
            L8_2 = L8_2(L9_2)
            if "NULL" == L8_2 then
              L8_2 = L7_2.label
            end
            L9_2 = exports
            L9_2 = L9_2.striano_fastmenu
            L10_2 = L9_2
            L9_2 = L9_2.addMenuItem
            L11_2 = "[%s] %s"
            L12_2 = L11_2
            L11_2 = L11_2.format
            L13_2 = L6_2
            L14_2 = L8_2
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            function L12_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
              L0_3 = L7_2.collection
              L1_3 = L7_2.nameHash
              L2_3 = L6_2
              L3_3 = L11_1
              if nil == L3_3 then
                L3_3 = exports
                L3_3 = L3_3.striano_combat
                L4_3 = L3_3
                L3_3 = L3_3.submexInfo
                L5_3 = "[ID "
                L6_3 = L2_3
                L7_3 = "] Select again to remove [E-N]."
                L5_3 = L5_3 .. L6_3 .. L7_3
                L3_3(L4_3, L5_3)
                L11_1 = L2_3
                L3_3 = ClearPedDecorations
                L4_3 = PlayerPedId
                L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L4_3()
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                L3_3 = Wait
                L4_3 = 1
                L3_3(L4_3)
                L3_3 = pairs
                L4_3 = currentTattoos
                L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
                for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
                  L9_3 = L8_3.nameHash
                  if L9_3 == L1_3 then
                    L9_3 = SetPedDecoration
                    L10_3 = L0_2
                    L11_3 = L8_3.collection
                    L12_3 = L8_3.nameHash
                    L9_3(L10_3, L11_3, L12_3)
                  end
                  L9_3 = Wait
                  L10_3 = 1
                  L9_3(L10_3)
                end
              else
                L3_3 = L11_1
                if L3_3 == L2_3 then
                  L3_3 = RemoveTattoo
                  L4_3 = L11_1
                  L3_3(L4_3)
                  L3_3 = exports
                  L3_3 = L3_3.striano_combat
                  L4_3 = L3_3
                  L3_3 = L3_3.submexInfo
                  L5_3 = "Tattoo rimosso con successo."
                  L3_3(L4_3, L5_3)
                  L3_3 = exports
                  L3_3 = L3_3.striano_fastmenu
                  L4_3 = L3_3
                  L3_3 = L3_3.close
                  L3_3(L4_3)
                  return
                else
                  L3_3 = exports
                  L3_3 = L3_3.striano_combat
                  L4_3 = L3_3
                  L3_3 = L3_3.submexInfo
                  L5_3 = "[ID "
                  L6_3 = L2_3
                  L7_3 = "] Select again to remove."
                  L5_3 = L5_3 .. L6_3 .. L7_3
                  L3_3(L4_3, L5_3)
                  L11_1 = L2_3
                  L3_3 = ClearPedDecorations
                  L4_3 = PlayerPedId
                  L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L4_3()
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                  L3_3 = Wait
                  L4_3 = 1
                  L3_3(L4_3)
                  L3_3 = pairs
                  L4_3 = currentTattoos
                  L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
                  for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
                    L9_3 = L8_3.nameHash
                    if L9_3 == L1_3 then
                      L9_3 = SetPedDecoration
                      L10_3 = L0_2
                      L11_3 = L8_3.collection
                      L12_3 = L8_3.nameHash
                      L9_3(L10_3, L11_3, L12_3)
                    end
                    L9_3 = Wait
                    L10_3 = 1
                    L9_3(L10_3)
                  end
                end
              end
            end
            L13_2 = false
            L9_2(L10_2, L11_2, L12_2, L13_2)
          end
        end
      end
    end
    if L1_2 > 0 then
      L2_2 = exports
      L2_2 = L2_2.striano_fastmenu
      L3_2 = L2_2
      L2_2 = L2_2.openMenu
      L2_2(L3_2)
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
      while true do
        L2_2 = exports
        L2_2 = L2_2.striano_fastmenu
        L3_2 = L2_2
        L2_2 = L2_2.opened
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          break
        end
        L2_2 = Wait
        L3_2 = 0
        L2_2(L3_2)
      end
      L2_2 = true
      L12_1 = L2_2
      L2_2 = L15_1
      L2_2()
      L2_2 = Wait
      L3_2 = 25
      L2_2(L3_2)
      L2_2 = ExecuteCommand
      L3_2 = "loadtattoo"
      L2_2(L3_2)
    else
      L2_2 = faiAnim
      L3_2 = "gestures@f@standing@casual"
      L4_2 = "gesture_shrug_hard"
      L5_2 = 750
      L6_2 = 49
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = PlaySoundFrontend
      L3_2 = -1
      L4_2 = "Highlight_Error"
      L5_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
      L6_2 = 1
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = testo3d
      L3_2 = "~r~No tattoo."
      L2_2(L3_2)
    end
  else
    L1_2 = faiAnim
    L2_2 = "gestures@f@standing@casual"
    L3_2 = "gesture_shrug_hard"
    L4_2 = 750
    L5_2 = 49
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Highlight_Error"
    L4_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = testo3d
    L2_2 = "~r~No tattoo in list."
    L1_2(L2_2)
  end
end
ListaTuoiTattoo = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L9_1
  L3_2 = {}
  L3_2.label = "Nulla"
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = AllTattooList
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetEntityModel
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    if 1885233650 == L7_2 then
      L7_2 = L6_2.Zone
      if L7_2 ~= A0_2 then
        goto lbl_132
      end
      L7_2 = L6_2.HashNameMale
      if "" == L7_2 then
        goto lbl_132
      end
      L7_2 = L6_2.Collection
      if "spack_overlays" == L7_2 then
        goto lbl_132
      end
      L7_2 = L6_2.Collection
      if "sodbloodtattoo_overlays" == L7_2 then
        goto lbl_132
      end
      L7_2 = false
      L8_2 = pairs
      L9_2 = currentTattoos
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.nameHash
        L15_2 = L6_2.HashNameMale
        if L14_2 ~= L15_2 then
          L14_2 = L13_2.nameHash
          L15_2 = L6_2.HashNameFemale
          if L14_2 ~= L15_2 then
            goto lbl_44
          end
        end
        L7_2 = true
        ::lbl_44::
      end
      L8_2 = L6_2.HashNameMale
      if "FM_Tat_Award_M_000" ~= L8_2 then
        L8_2 = GetLabelText
        L9_2 = L6_2.Name
        L8_2 = L8_2(L9_2)
        if "NULL" == L8_2 then
          L8_2 = L6_2.Name
        end
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L9_1
        L11_2 = {}
        L12_2 = "%s"
        L13_2 = L12_2
        L12_2 = L12_2.format
        L14_2 = L8_2
        L12_2 = L12_2(L13_2, L14_2)
        L11_2.label = L12_2
        L12_2 = L6_2.Collection
        L11_2.Collection = L12_2
        L12_2 = L6_2.HashNameMale
        L11_2.HashName = L12_2
        L11_2.value = L8_2
        L9_2(L10_2, L11_2)
      end
    else
      L7_2 = L6_2.Zone
      if L7_2 == A0_2 then
        L7_2 = L6_2.HashNameFemale
        if "" ~= L7_2 then
          L7_2 = L6_2.Collection
          if "spack_overlays" ~= L7_2 then
            L7_2 = L6_2.Collection
            if "sodbloodtattoo_overlays" ~= L7_2 then
              L7_2 = L6_2.Collection
              if "tattoo_sod_overlays" ~= L7_2 then
                L7_2 = false
                L8_2 = pairs
                L9_2 = currentTattoos
                L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
                for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
                  L14_2 = L13_2.nameHash
                  L15_2 = L6_2.HashNameMale
                  if L14_2 ~= L15_2 then
                    L14_2 = L13_2.nameHash
                    L15_2 = L6_2.HashNameFemale
                    if L14_2 ~= L15_2 then
                      goto lbl_102
                    end
                  end
                  L7_2 = true
                  ::lbl_102::
                end
                if not L7_2 then
                  L8_2 = L6_2.HashNameMale
                  if "FM_Tat_Award_M_000" ~= L8_2 then
                    L8_2 = GetLabelText
                    L9_2 = L6_2.Name
                    L8_2 = L8_2(L9_2)
                    if "NULL" == L8_2 then
                      L8_2 = L6_2.Name
                    end
                    L9_2 = table
                    L9_2 = L9_2.insert
                    L10_2 = L9_1
                    L11_2 = {}
                    L12_2 = "%s"
                    L13_2 = L12_2
                    L12_2 = L12_2.format
                    L14_2 = L8_2
                    L12_2 = L12_2(L13_2, L14_2)
                    L11_2.label = L12_2
                    L12_2 = L6_2.Collection
                    L11_2.Collection = L12_2
                    L12_2 = L6_2.HashNameFemale
                    L11_2.HashName = L12_2
                    L11_2.value = L8_2
                    L9_2(L10_2, L11_2)
                  end
                end
              end
            end
          end
        end
      end
    end
    ::lbl_132::
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexInfo
  L3_2 = "Category with "
  L4_2 = L9_1
  L4_2 = #L4_2
  L5_2 = " tattoos."
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
end
SelezionaTattoo = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetEntityModel
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if 1885233650 ~= L0_2 then
    L0_2 = GetEntityModel
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if -1667301416 ~= L0_2 then
      goto lbl_139
    end
  end
  L0_2 = {}
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if 1885233650 == L1_2 then
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "tattoo_sod_overlays" == L7_2 then
        L7_2 = L6_2.HashNameMale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  else
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "tattoo_sod_overlays" == L7_2 then
        L7_2 = L6_2.HashNameFemale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = currentTattoos
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.collection
    if "spack_overlays" ~= L8_2 then
      L8_2 = L7_2.collection
      if "sodbloodtattoo_overlays" ~= L8_2 then
        goto lbl_71
      end
    end
    L1_2 = L1_2 + 1
    ::lbl_71::
  end
  L2_2 = #L0_2
  if L2_2 > 0 then
    L2_2 = L2_1
    if L1_2 < L2_2 then
      L2_2 = math
      L2_2 = L2_2.random
      L3_2 = 1
      L4_2 = #L0_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = false
      L4_2 = pairs
      L5_2 = currentTattoos
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.nameHash
        L11_2 = L0_2[L2_2]
        L11_2 = L11_2.HashNameMale
        if L10_2 ~= L11_2 then
          L10_2 = L9_2.nameHash
          L11_2 = L0_2[L2_2]
          L11_2 = L11_2.HashNameFemale
          if L10_2 ~= L11_2 then
            goto lbl_102
          end
        end
        L3_2 = true
        do break end
        ::lbl_102::
      end
      if not L3_2 then
        L4_2 = ""
        L5_2 = GetEntityModel
        L6_2 = PlayerPedId
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        if 1885233650 == L5_2 then
          L5_2 = L0_2[L2_2]
          L4_2 = L5_2.HashNameMale
        else
          L5_2 = L0_2[L2_2]
          L4_2 = L5_2.HashNameFemale
        end
        L5_2 = GetLabelText
        L6_2 = L0_2[L2_2]
        L6_2 = L6_2.Name
        L5_2 = L5_2(L6_2)
        if "NULL" == L5_2 then
          L6_2 = L0_2[L2_2]
          L5_2 = L6_2.Name
        end
        L6_2 = BuyTattoo
        L7_2 = L0_2[L2_2]
        L7_2 = L7_2.Collection
        L8_2 = L4_2
        L9_2 = ZonaCorpo
        L10_2 = L5_2
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = DrawTattoo
        L7_2 = L0_2[L2_2]
        L7_2 = L7_2.Collection
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  ::lbl_139::
end
ApplicaSporcoRandom = L20_1
L20_1 = RegisterCommand
L21_1 = "addsporco"
function L22_1()
  local L0_2, L1_2
  L0_2 = ApplicaSporcoRandom
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = GetEntityModel
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if 1885233650 ~= L0_2 then
    L0_2 = GetEntityModel
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    if -1667301416 ~= L0_2 then
      goto lbl_130
    end
  end
  L0_2 = {}
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if 1885233650 == L1_2 then
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "tattoo_sod_overlays" == L7_2 then
        L7_2 = L6_2.HashNameMale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  else
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "tattoo_sod_overlays" == L7_2 then
        L7_2 = L6_2.HashNameFemale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = currentTattoos
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.collection
    if "tattoo_sod_overlays" == L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = #L0_2
  if L2_2 > 0 then
    L2_2 = L2_1
    if L1_2 < L2_2 then
      L2_2 = pairs
      L3_2 = L0_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = false
        L9_2 = pairs
        L10_2 = currentTattoos
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L15_2 = L14_2.nameHash
          L16_2 = L7_2.HashNameMale
          if L15_2 ~= L16_2 then
            L15_2 = L14_2.nameHash
            L16_2 = L7_2.HashNameFemale
            if L15_2 ~= L16_2 then
              goto lbl_96
            end
          end
          L8_2 = true
          do break end
          ::lbl_96::
        end
        if not L8_2 then
          L9_2 = ""
          L10_2 = GetEntityModel
          L11_2 = PlayerPedId
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          if 1885233650 == L10_2 then
            L9_2 = L7_2.HashNameMale
          else
            L9_2 = L7_2.HashNameFemale
          end
          L10_2 = GetLabelText
          L11_2 = L7_2.Name
          L10_2 = L10_2(L11_2)
          if "NULL" == L10_2 then
            L10_2 = L7_2.Name
          end
          L11_2 = BuyTattoo
          L12_2 = L7_2.Collection
          L13_2 = L9_2
          L14_2 = ZonaCorpo
          L15_2 = L10_2
          L11_2(L12_2, L13_2, L14_2, L15_2)
          L11_2 = DrawTattoo
          L12_2 = L7_2.Collection
          L13_2 = L9_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
  ::lbl_130::
end
ApplicaSporcoFull = L20_1
L20_1 = RegisterCommand
L21_1 = "addsporcoFull"
function L22_1()
  local L0_2, L1_2
  L0_2 = ApplicaSporcoFull
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = GetEntityModel
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if 1885233650 ~= L0_2 then
    L0_2 = GetEntityModel
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    if -1667301416 ~= L0_2 then
      goto lbl_143
    end
  end
  L0_2 = {}
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if 1885233650 == L1_2 then
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "spack_overlays" == L7_2 then
        L7_2 = L6_2.HashNameMale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  else
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "spack_overlays" == L7_2 then
        L7_2 = L6_2.HashNameMale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = currentTattoos
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.collection
    if "spack_overlays" == L8_2 then
      L1_2 = L1_2 + 1
      if L1_2 > 5 then
        L8_2 = ExecuteCommand
        L9_2 = "addsangue"
        L8_2(L9_2)
      end
    end
  end
  L2_2 = #L0_2
  if L2_2 > 0 then
    L2_2 = L2_1
    if L1_2 < L2_2 then
      L2_2 = math
      L2_2 = L2_2.random
      L3_2 = 1
      L4_2 = #L0_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L0_2[L2_2]
      L3_2 = L3_2.Zone
      L4_2 = false
      L5_2 = pairs
      L6_2 = currentTattoos
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L10_2.nameHash
        L12_2 = L0_2[L2_2]
        L12_2 = L12_2.HashNameMale
        if L11_2 ~= L12_2 then
          L11_2 = L10_2.nameHash
          L12_2 = L0_2[L2_2]
          L12_2 = L12_2.HashNameFemale
          if L11_2 ~= L12_2 then
            goto lbl_106
          end
        end
        L4_2 = true
        do break end
        ::lbl_106::
      end
      if not L4_2 then
        L5_2 = ""
        L6_2 = GetEntityModel
        L7_2 = PlayerPedId
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        if 1885233650 == L6_2 then
          L6_2 = L0_2[L2_2]
          L5_2 = L6_2.HashNameMale
        else
          L6_2 = L0_2[L2_2]
          L5_2 = L6_2.HashNameFemale
        end
        L6_2 = GetLabelText
        L7_2 = L0_2[L2_2]
        L7_2 = L7_2.Name
        L6_2 = L6_2(L7_2)
        if "NULL" == L6_2 then
          L7_2 = L0_2[L2_2]
          L6_2 = L7_2.Name
        end
        L7_2 = BuyTattoo
        L8_2 = L0_2[L2_2]
        L8_2 = L8_2.Collection
        L9_2 = L5_2
        L10_2 = L3_2
        L11_2 = L6_2
        L7_2(L8_2, L9_2, L10_2, L11_2)
        L7_2 = DrawTattoo
        L8_2 = L0_2[L2_2]
        L8_2 = L8_2.Collection
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  ::lbl_143::
end
ApplicaFeritaRandomFacciale = L20_1
L20_1 = exports
L21_1 = "addFeritaFacciale"
function L22_1()
  local L0_2, L1_2
  L0_2 = ApplicaFeritaRandomFacciale
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "addferita"
function L22_1()
  local L0_2, L1_2
  L0_2 = ApplicaFeritaRandomFacciale
  L0_2()
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetEntityModel
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if 1885233650 ~= L0_2 then
    L0_2 = GetEntityModel
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if -1667301416 ~= L0_2 then
      goto lbl_136
    end
  end
  L0_2 = {}
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if 1885233650 == L1_2 then
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "sodbloodtattoo_overlays" == L7_2 then
        L7_2 = L6_2.HashNameMale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  else
    L1_2 = pairs
    L2_2 = AllTattooList
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Collection
      if "sodbloodtattoo_overlays" == L7_2 then
        L7_2 = L6_2.HashNameFemale
        if "" ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = currentTattoos
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.collection
    if "sodbloodtattoo_overlays" == L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = #L0_2
  if L2_2 > 0 then
    L2_2 = L2_1
    if L1_2 < L2_2 then
      L2_2 = math
      L2_2 = L2_2.random
      L3_2 = 1
      L4_2 = #L0_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = false
      L4_2 = pairs
      L5_2 = currentTattoos
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.nameHash
        L11_2 = L0_2[L2_2]
        L11_2 = L11_2.HashNameMale
        if L10_2 ~= L11_2 then
          L10_2 = L9_2.nameHash
          L11_2 = L0_2[L2_2]
          L11_2 = L11_2.HashNameFemale
          if L10_2 ~= L11_2 then
            goto lbl_99
          end
        end
        L3_2 = true
        do break end
        ::lbl_99::
      end
      if not L3_2 then
        L4_2 = ""
        L5_2 = GetEntityModel
        L6_2 = PlayerPedId
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        if 1885233650 == L5_2 then
          L5_2 = L0_2[L2_2]
          L4_2 = L5_2.HashNameMale
        else
          L5_2 = L0_2[L2_2]
          L4_2 = L5_2.HashNameFemale
        end
        L5_2 = GetLabelText
        L6_2 = L0_2[L2_2]
        L6_2 = L6_2.Name
        L5_2 = L5_2(L6_2)
        if "NULL" == L5_2 then
          L6_2 = L0_2[L2_2]
          L5_2 = L6_2.Name
        end
        L6_2 = BuyTattoo
        L7_2 = L0_2[L2_2]
        L7_2 = L7_2.Collection
        L8_2 = L4_2
        L9_2 = ZonaCorpo
        L10_2 = L5_2
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = DrawTattoo
        L7_2 = L0_2[L2_2]
        L7_2 = L7_2.Collection
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  ::lbl_136::
end
ApplicaSangue = L20_1
L20_1 = RegisterCommand
L21_1 = "addsangue"
function L22_1()
  local L0_2, L1_2
  L0_2 = ApplicaSangue
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = {}
L21_1 = {}
L22_1 = {}
L23_1 = {}
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    return A0_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 and "" ~= A0_2 then
    L1_2 = #A0_2
    if L1_2 > 5 then
      L1_2 = pcall
      L2_2 = json
      L2_2 = L2_2.decode
      L3_2 = A0_2
      L1_2, L2_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L3_2 = type
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if "table" == L3_2 then
          return L2_2
        end
      end
    end
  end
  L1_2 = {}
  return L1_2
end
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if A0_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = ClearPedDecorations
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.collection
    if L8_2 then
      L8_2 = L7_2.nameHash
      if L8_2 then
        L8_2 = SetPedDecoration
        L9_2 = A0_2
        L10_2 = L7_2.collection
        L11_2 = L7_2.nameHash
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  L2_2 = true
  return L2_2
end
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L22_1
  L2_2 = L22_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  L1_2[A0_2] = L2_2
end
function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L20_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = GetPlayerFromServerId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if -1 == L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = GetPlayerPed
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = DoesEntityExist
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  if L4_2 == L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L22_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = 0
  end
  L6_2 = L23_1
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    L6_2 = -1
  end
  L7_2 = L21_1
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2 == L4_2
  if not A1_2 and L7_2 and L6_2 == L5_2 then
    L8_2 = false
    return L8_2
  end
  L8_2 = L25_1
  L9_2 = L4_2
  L10_2 = L2_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L9_2 = L21_1
    L9_2[A0_2] = L4_2
    L9_2 = L23_1
    L9_2[A0_2] = L5_2
  end
  return L8_2
end
function L28_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = Wait
    L1_3 = A1_2
    if not L1_3 then
      L1_3 = 300
    end
    L0_3(L1_3)
    L0_3 = 1
    L1_3 = 10
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L27_1
      L5_3 = A0_2
      L6_3 = true
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 then
        return
      end
      L4_3 = Wait
      L5_3 = 500
      L4_3(L5_3)
    end
  end
  L2_2(L3_2)
end
L29_1 = RegisterNetEvent
L30_1 = "SmallTattoos:syncPlayerTattoos"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    return
  end
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2)
  if A0_2 == L2_2 then
    return
  end
  L2_2 = L20_1
  L3_2 = L24_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2[A0_2] = L3_2
  L2_2 = L26_1
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = L28_1
  L3_2 = A0_2
  L4_2 = 300
  L2_2(L3_2, L4_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "SmallTattoos:syncAllTattoos"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return
  end
  L1_2 = GetPlayerServerId
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tonumber
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L7_2 = L9_2
    if L7_2 and L7_2 ~= L1_2 then
      L9_2 = L20_1
      L10_2 = L24_1
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L9_2[L7_2] = L10_2
      L9_2 = L26_1
      L10_2 = L7_2
      L9_2(L10_2)
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L2_2[L9_2] = L7_2
    end
  end
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L28_1
    L8_2 = L2_2[L6_2]
    L9_2 = 300
    L7_2(L8_2, L9_2)
  end
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "SmallTattoos:removePlayerTattoos"
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    return
  end
  L1_2 = L20_1
  L1_2[A0_2] = nil
  L1_2 = L21_1
  L1_2[A0_2] = nil
  L1_2 = L22_1
  L1_2[A0_2] = nil
  L1_2 = L23_1
  L1_2[A0_2] = nil
end
L29_1(L30_1, L31_1)
L29_1 = CreateThread
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = Wait
    L1_2 = 3000
    L0_2(L1_2)
    L0_2 = pairs
    L1_2 = L20_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2 in L0_2, L1_2, L2_2, L3_2 do
      L5_2 = L27_1
      L6_2 = L4_2
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  end
end
L29_1(L30_1)
