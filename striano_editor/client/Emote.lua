local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1
L0_1 = 0.025
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = tostring
    L3_3 = A0_3.name
    if not L3_3 then
      L3_3 = A0_3.value
      if not L3_3 then
        L3_3 = ""
      end
    end
    L2_3 = L2_3(L3_3)
    L3_3 = L2_3
    L2_3 = L2_3.lower
    L2_3 = L2_3(L3_3)
    L3_3 = tostring
    L4_3 = A1_3.name
    if not L4_3 then
      L4_3 = A1_3.value
      if not L4_3 then
        L4_3 = ""
      end
    end
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_3)
    if L2_3 == L3_3 then
      L4_3 = tostring
      L5_3 = A0_3.label
      if not L5_3 then
        L5_3 = ""
      end
      L4_3 = L4_3(L5_3)
      L5_3 = L4_3
      L4_3 = L4_3.lower
      L4_3 = L4_3(L5_3)
      L5_3 = tostring
      L6_3 = A1_3.label
      if not L6_3 then
        L6_3 = ""
      end
      L5_3 = L5_3(L6_3)
      L6_3 = L5_3
      L5_3 = L5_3.lower
      L5_3 = L5_3(L6_3)
      L6_3 = L4_3 < L5_3
      return L6_3
    end
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
  return A0_2
end
SortAnimList = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = DistanzaSchienaSopra
  if -1 == L0_2 then
    L0_2 = draw
    L1_2 = 21
    L2_2 = "Fast"
    L3_2 = 73
    L4_2 = "Stop"
    L5_2 = 22
    L6_2 = "Back"
    L7_2 = 44
    L8_2 = "Up"
    L9_2 = 74
    L10_2 = "Info"
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L0_2 = draw
    L1_2 = 21
    L2_2 = "Fast"
    L3_2 = 74
    L4_2 = "Info"
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end
infoWhileCrawl = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = isProne
  return L0_2
end
IsPlayerProne = L1_1
L1_1 = exports
L2_1 = "IsPlayerProne"
L3_1 = IsPlayerProne
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "crouchato"
function L3_1()
  local L0_2, L1_2
  L0_2 = crouched
  return L0_2
end
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "stealth"
function L3_1()
  local L0_2, L1_2
  L0_2 = inStealth
  return L0_2
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = 0
  L3_2 = HasAnimDictLoaded
  L4_2 = a
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = RequestAnimDict
    L4_2 = A0_2
    L3_2(L4_2)
    while true do
      L3_2 = HasAnimDictLoaded
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 0
      L3_2(L4_2)
      L2_2 = L2_2 + 1
      if A1_2 <= L2_2 then
        L3_2 = print
        L4_2 = "LoadAnim WARNING: anim not exist: "
        L5_2 = A0_2
        L4_2 = L4_2 .. L5_2
        L3_2(L4_2)
        break
      end
    end
  end
end
LoadAnim = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = LoadAnim
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = ClonedPed
  if L4_2 then
    L4_2 = DoesEntityExist
    L5_2 = ClonedPed
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = IsEntityPlayingAnim
      L5_2 = ClonedPed
      L6_2 = A0_2
      L7_2 = A1_2
      L8_2 = 3
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      if not L4_2 then
        L4_2 = TaskPlayAnim
        L5_2 = ClonedPed
        L6_2 = A0_2
        L7_2 = A1_2
        L8_2 = 5.0
        L9_2 = 5.0
        L10_2 = A2_2 or L10_2
        if not A2_2 then
          L10_2 = 950
        end
        L11_2 = A3_2 or L11_2
        if not A3_2 then
          L11_2 = 1
        end
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = IsEntityPlayingAnim
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = TaskPlayAnim
    L6_2 = L4_2
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = 5.0
    L10_2 = 5.0
    L11_2 = A2_2 or L11_2
    if not A2_2 then
      L11_2 = 950
    end
    L12_2 = A3_2 or L12_2
    if not A3_2 then
      L12_2 = 1
    end
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
faiAnim = L1_1
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
isProne = false
objCava = nil
coordMento = nil
distanzaMento = -1
distanzaPelvis = -1
DistanzaDietroDX = -1
DistanzaDietroSX = -1
distanzaAvantiDX = -1
distanzaAvantiSX = -1
DistanzaSchienaSopra = -1
Schiena = false
linee = false
Collider = 511
ColliderSecondary = 1
flagColl = 7
libAnim = "move_crawl"
frwA = "onfront_fwd"
bckA = "onfront_bwd"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
Lerp = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 - A0_2
  L2_2 = L2_2 + 180.0
  L2_2 = L2_2 % 360.0
  L2_2 = L2_2 - 180.0
  return L2_2
end
AngleDiff = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = vector3
  L4_2 = A0_2.x
  L5_2 = A1_2.x
  L6_2 = A0_2.x
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 * A2_2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.y
  L6_2 = A1_2.y
  L7_2 = A0_2.y
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 * A2_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.z
  L7_2 = A1_2.z
  L8_2 = A0_2.z
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 * A2_2
  L6_2 = L6_2 + L7_2
  return L3_2(L4_2, L5_2, L6_2)
end
LerpVec = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = libAnim
  L2_2 = frwA
  L3_2 = HasAnimDictLoaded
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = RequestAnimDict
    L4_2 = L1_2
    L3_2(L4_2)
    while true do
      L3_2 = HasAnimDictLoaded
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 10
      L3_2(L4_2)
    end
  end
  L3_2 = IsEntityPlayingAnim
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = TaskPlayAnim
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = 3.0
    L8_2 = 3.0
    L9_2 = -1
    L10_2 = 1
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2 = SetEntityVelocity
    L4_2 = objCava
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  if A0_2 then
    L3_2 = SetEntityAnimSpeed
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = IsControlPressed
    L4_2 = 0
    L5_2 = 21
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = Schiena
      if not L3_2 then
        L3_2 = SetEntityAnimSpeed
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = 1.1
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L3_2 = SetEntityAnimSpeed
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = 1.5
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    else
      L3_2 = SetEntityAnimSpeed
      L4_2 = PlayerPedId
      L4_2 = L4_2()
      L5_2 = L1_2
      L6_2 = L2_2
      L7_2 = 0.85
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
PlayIdleCrawlAnim = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = libAnim
  L1_2 = bckA
  L2_2 = HasAnimDictLoaded
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDict
    L3_2 = L0_2
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  end
  L2_2 = IsEntityPlayingAnim
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = TaskPlayAnim
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L0_2
    L5_2 = L1_2
    L6_2 = 3.0
    L7_2 = 3.0
    L8_2 = -1
    L9_2 = 1
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L2_2 = IsControlPressed
  L3_2 = 0
  L4_2 = 21
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = Schiena
    if not L2_2 then
      L2_2 = SetEntityAnimSpeed
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = L0_2
      L5_2 = L1_2
      L6_2 = 1.1
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = SetEntityAnimSpeed
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = L0_2
      L5_2 = L1_2
      L6_2 = 1.5
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  else
    L2_2 = SetEntityAnimSpeed
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L0_2
    L5_2 = L1_2
    L6_2 = 0.85
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
BackAnimation = L7_1
L7_1 = 0.0
L8_1 = 25.0
L9_1 = 4.0
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = vector3
  L3_2 = A0_2.y
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.y
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.x
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2.x
  L6_2 = A1_2.z
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.x
  L6_2 = A1_2.y
  L5_2 = L5_2 * L6_2
  L6_2 = A0_2.y
  L7_2 = A1_2.x
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 - L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.sqrt
  L2_2 = A0_2.x
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A0_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A0_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1.0E-5
  if L1_2 < L2_2 then
    L2_2 = vector3
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 1.0
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = vector3
  L3_2 = A0_2.x
  L3_2 = L3_2 / L1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 / L1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 / L1_2
  return L2_2(L3_2, L4_2, L5_2)
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  return L2_2
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = vector3
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 * A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vector3
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.z
  L6_2 = A1_2.z
  L5_2 = L5_2 - L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = vector3
  L2_2 = A0_2.x
  L2_2 = -L2_2
  L3_2 = A0_2.y
  L3_2 = -L3_2
  L4_2 = A0_2.z
  L4_2 = -L4_2
  return L1_2(L2_2, L3_2, L4_2)
end
function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = L11_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = 0.05
  L5_2 = L6_1
  if L5_2 then
    L5_2 = L11_1
    L6_2 = LerpVec
    L7_2 = L6_1
    L8_2 = A1_2
    L9_2 = L4_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    A1_2 = L5_2
  end
  L5_2 = A1_2
  L6_2 = math
  L6_2 = L6_2.rad
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = vector3
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L6_2
  L9_2 = L9_2(L10_2)
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L14_1
  L9_2 = L7_2
  L10_2 = L13_1
  L11_2 = A1_2
  L12_2 = L12_1
  L13_2 = L7_2
  L14_2 = A1_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2(L13_2, L14_2)
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2 = L8_2
  L8_2 = L11_1
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L7_2 = L8_2
  L8_2 = math
  L8_2 = L8_2.abs
  L9_2 = L7_2.x
  L8_2 = L8_2(L9_2)
  L9_2 = 0.001
  if L8_2 < L9_2 then
    L8_2 = math
    L8_2 = L8_2.abs
    L9_2 = L7_2.y
    L8_2 = L8_2(L9_2)
    L9_2 = 0.001
    if L8_2 < L9_2 then
      L8_2 = math
      L8_2 = L8_2.abs
      L9_2 = L7_2.z
      L8_2 = L8_2(L9_2)
      L9_2 = 0.001
      if L8_2 < L9_2 then
        L8_2 = L11_1
        L9_2 = L10_1
        L10_2 = vector3
        L11_2 = 1.0
        L12_2 = 0.0
        L13_2 = 0.0
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = A1_2
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2, L11_2)
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L7_2 = L8_2
      end
    end
  end
  L8_2 = L11_1
  L9_2 = L10_1
  L10_2 = A1_2
  L11_2 = L7_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2, L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = L11_1
  L10_2 = L10_1
  L11_2 = L8_2
  L12_2 = A1_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2(L11_2, L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2 = L9_2
  L9_2 = L4_1
  if L9_2 then
    L9_2 = L12_1
    L10_2 = L8_2
    L11_2 = L4_1
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 < 0.0 then
      L9_2 = L15_1
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L8_2 = L9_2
      L9_2 = L15_1
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L7_2 = L9_2
    end
  end
  L9_2 = math
  L9_2 = L9_2.abs
  L10_2 = L7_1
  L9_2 = L9_2(L10_2)
  L10_2 = 0.001
  if L9_2 > L10_2 then
    L9_2 = math
    L9_2 = L9_2.rad
    L10_2 = L7_1
    L9_2 = L9_2(L10_2)
    L10_2 = math
    L10_2 = L10_2.cos
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = math
    L11_2 = L11_2.sin
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L12_2 = L8_2 * L10_2
    L13_2 = A1_2 * L11_2
    L12_2 = L12_2 + L13_2
    L13_2 = A1_2 * L10_2
    L14_2 = L8_2 * L11_2
    L13_2 = L13_2 - L14_2
    L14_2 = L11_1
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    L8_2 = L14_2
    L14_2 = L11_1
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    A1_2 = L14_2
  end
  L6_1 = L5_2
  L4_1 = L8_2
  L9_2 = SetEntityMatrix
  L10_2 = A0_2
  L11_2 = L8_2.x
  L12_2 = L8_2.y
  L13_2 = L8_2.z
  L14_2 = L7_2.x
  L15_2 = L7_2.y
  L16_2 = L7_2.z
  L17_2 = A1_2.x
  L18_2 = A1_2.y
  L19_2 = A1_2.z
  L20_2 = A3_2.x
  L21_2 = A3_2.y
  L22_2 = A3_2.z
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
end
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityBonePosition_2
  L2_2 = L0_2
  L3_2 = GetPedBoneIndex
  L4_2 = L0_2
  L5_2 = 23553
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2 = L3_2(L4_2, L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = L7_1
  L3_2 = L3_2(L4_2)
  L4_2 = L8_1
  L3_2 = L3_2 / L4_2
  L4_2 = 1.0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityForwardVector
  L4_2 = objCava
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2 * 0.25
  L4_2 = L3_2 * L4_2
  L4_2 = L1_2 + L4_2
  L5_2 = StartShapeTestCapsule
  L6_2 = L4_2.x
  L7_2 = L4_2.y
  L8_2 = L4_2.z
  L8_2 = L8_2 + 0.1
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L11_2 = L11_2 - 3.0
  L12_2 = 0.15
  L13_2 = ColliderSecondary
  L14_2 = L0_2
  L15_2 = flagColl
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = GetShapeTestResult
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  while 1 == L6_2 do
    L11_2 = isProne
    if not L11_2 then
      break
    end
    L11_2 = Wait
    L12_2 = 0
    L11_2(L12_2)
    L11_2 = GetShapeTestResult
    L12_2 = L5_2
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
    L10_2 = L15_2
    L9_2 = L14_2
    L8_2 = L13_2
    L7_2 = L12_2
    L6_2 = L11_2
  end
  if L7_2 and L8_2 then
    L11_2 = objCava
    if nil ~= L11_2 then
      L11_2 = DoesEntityExist
      L12_2 = objCava
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = vector3
        L12_2 = L1_2.x
        L13_2 = L1_2.y
        L14_2 = L8_2.z
        if not L14_2 then
          L14_2 = coordMento
          L14_2 = L14_2.z
        end
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = linee
        if L12_2 then
          L12_2 = DrawLine
          L13_2 = L1_2.x
          L14_2 = L1_2.y
          L15_2 = L1_2.z
          L15_2 = L15_2 + 0.4
          L16_2 = L1_2.x
          L17_2 = L1_2.y
          L18_2 = L1_2.z
          L18_2 = L18_2 - 3.0
          L19_2 = 0
          L20_2 = 0
          L21_2 = 0
          L22_2 = 255
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
          L12_2 = DrawMarker
          L13_2 = 28
          L14_2 = L11_2.x
          L15_2 = L11_2.y
          L16_2 = L11_2.z
          L17_2 = 0.0
          L18_2 = 0.0
          L19_2 = 0.0
          L20_2 = 0
          L21_2 = 0.0
          L22_2 = 0.0
          L23_2 = L0_1
          L23_2 = L23_2 * 2
          L24_2 = L0_1
          L24_2 = L24_2 * 2
          L25_2 = L0_1
          L25_2 = L25_2 * 2
          L26_2 = 0
          L27_2 = 0
          L28_2 = 0
          L29_2 = 255
          L30_2 = false
          L31_2 = true
          L32_2 = 2
          L33_2 = false
          L34_2 = false
          L35_2 = false
          L36_2 = false
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
        end
        L12_2 = L11_2 - L1_2
        L12_2 = #L12_2
        distanzaPelvis = L12_2
        L12_2 = IsEntityInWater
        L13_2 = objCava
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = StopProne
          L12_2()
          return
        end
        L12_2 = distanzaPelvis
        L13_2 = 0.4
        if L12_2 > L13_2 then
          L12_2 = distanzaMento
          L13_2 = 0.4
          if L12_2 > L13_2 then
            L12_2 = StopProne
            L12_2()
            return
          end
        end
      end
    end
  else
    L11_2 = StopProne
    L11_2()
  end
  L11_2 = GetEntityBonePosition_2
  L12_2 = L0_2
  L13_2 = GetPedBoneIndex
  L14_2 = L0_2
  L15_2 = 23553
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2 = L13_2(L14_2, L15_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L12_2 = StartShapeTestRay
  L13_2 = L11_2.x
  L14_2 = L11_2.y
  L15_2 = L11_2.z
  L16_2 = L11_2.x
  L17_2 = L11_2.y
  L18_2 = L11_2.z
  L18_2 = L18_2 + 1.0
  L19_2 = Collider
  L20_2 = objCava
  L21_2 = flagColl
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L13_2 = GetShapeTestResult
  L14_2 = L12_2
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
  while 1 == L13_2 do
    L18_2 = isProne
    if not L18_2 then
      break
    end
    L18_2 = Wait
    L19_2 = 0
    L18_2(L19_2)
    L18_2 = GetShapeTestResult
    L19_2 = L12_2
    L18_2, L19_2, L20_2, L21_2, L22_2 = L18_2(L19_2)
    L17_2 = L22_2
    L16_2 = L21_2
    L15_2 = L20_2
    L14_2 = L19_2
    L13_2 = L18_2
  end
  if L14_2 and L15_2 then
    L18_2 = GetEntityCoords
    L19_2 = L0_2
    L18_2 = L18_2(L19_2)
    L18_2 = L18_2 - L15_2
    L18_2 = #L18_2
    if L18_2 < 3.0 then
      L18_2 = objCava
      if nil ~= L18_2 then
        L18_2 = DoesEntityExist
        L19_2 = objCava
        L18_2 = L18_2(L19_2)
        if L18_2 then
          L18_2 = linee
          if L18_2 then
            L18_2 = DrawLine
            L19_2 = L11_2.x
            L20_2 = L11_2.y
            L21_2 = L11_2.z
            L22_2 = L11_2.x
            L23_2 = L11_2.y
            L24_2 = L11_2.z
            L24_2 = L24_2 + 1.0
            L25_2 = 255
            L26_2 = 0
            L27_2 = 0
            L28_2 = 255
            L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
            L18_2 = DrawMarker
            L19_2 = 28
            L20_2 = L15_2.x
            L21_2 = L15_2.y
            L22_2 = L15_2.z
            L23_2 = 0.0
            L24_2 = 0.0
            L25_2 = 0.0
            L26_2 = 0
            L27_2 = 0.0
            L28_2 = 0.0
            L29_2 = L0_1
            L30_2 = L0_1
            L31_2 = L0_1
            L32_2 = 255
            L33_2 = 0
            L34_2 = 0
            L35_2 = 255
            L36_2 = false
            L37_2 = true
            L38_2 = 2
            L39_2 = false
            L40_2 = false
            L41_2 = false
            L42_2 = false
            L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
            L18_2 = DrawText3D_TestRay
            L19_2 = L15_2.x
            L20_2 = L15_2.y
            L21_2 = L15_2.z
            L22_2 = "lock schiena"
            L18_2(L19_2, L20_2, L21_2, L22_2)
          end
          L18_2 = L15_2 - L11_2
          L18_2 = #L18_2
          DistanzaSchienaSopra = L18_2
      end
      else
        DistanzaSchienaSopra = -1
      end
  end
  else
    DistanzaSchienaSopra = -1
  end
end
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityBonePosition_2
  L2_2 = L0_2
  L3_2 = GetPedBoneIndex
  L4_2 = L0_2
  L5_2 = 31086
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L3_2(L4_2, L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L2_2 = StartShapeTestCapsule
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L5_2 = L5_2 + 0.05
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L8_2 = L8_2 - 1.0
  L9_2 = 0.05
  L10_2 = Collider
  L11_2 = objCava
  L12_2 = flagColl
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = GetShapeTestResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  while 1 == L3_2 do
    L8_2 = isProne
    if not L8_2 then
      break
    end
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
    L8_2 = GetShapeTestResult
    L9_2 = L2_2
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
    L7_2 = L12_2
    L6_2 = L11_2
    L5_2 = L10_2
    L4_2 = L9_2
    L3_2 = L8_2
  end
  if 1 == L4_2 then
    L8_2 = objCava
    if nil ~= L8_2 then
      L8_2 = vector3
      L9_2 = L1_2.x
      L10_2 = L1_2.y
      L11_2 = L5_2.z
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = linee
      if L9_2 then
        L9_2 = DrawLine
        L10_2 = L1_2.x
        L11_2 = L1_2.y
        L12_2 = L1_2.z
        L12_2 = L12_2 + 0.1
        L13_2 = L1_2.x
        L14_2 = L1_2.y
        L15_2 = L1_2.z
        L15_2 = L15_2 - 1.0
        L16_2 = 0
        L17_2 = 255
        L18_2 = 255
        L19_2 = 255
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L9_2 = DrawMarker
        L10_2 = 28
        L11_2 = L8_2.x
        L12_2 = L8_2.y
        L13_2 = L8_2.z
        L14_2 = 0.0
        L15_2 = 0.0
        L16_2 = 0.0
        L17_2 = 0
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = L0_1
        L21_2 = L0_1
        L22_2 = L0_1
        L23_2 = 0
        L24_2 = 255
        L25_2 = 255
        L26_2 = 255
        L27_2 = false
        L28_2 = true
        L29_2 = 2
        L30_2 = false
        L31_2 = false
        L32_2 = false
        L33_2 = false
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      end
      L9_2 = L5_2 - L8_2
      L9_2 = #L9_2
      distanzaMento = L9_2
      coordMento = L8_2
  end
  else
    distanzaMento = -1
    coordMento = nil
  end
end
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = objCava
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = objCava
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityMatrix
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L6_2 = -0.7
  L7_2 = L2_2 * 0.35
  L7_2 = L1_2 + L7_2
  L8_2 = L3_2 * 0.22
  L7_2 = L7_2 + L8_2
  L8_2 = L4_2 * L6_2
  L7_2 = L7_2 + L8_2
  L8_2 = L2_2 * 0.35
  L8_2 = L1_2 + L8_2
  L9_2 = L3_2 * 0.22
  L8_2 = L8_2 - L9_2
  L9_2 = L4_2 * L6_2
  L8_2 = L8_2 + L9_2
  L9_2 = L2_2 * 0.35
  L9_2 = L1_2 - L9_2
  L10_2 = L3_2 * 0.22
  L9_2 = L9_2 + L10_2
  L10_2 = L4_2 * L6_2
  L9_2 = L9_2 + L10_2
  L10_2 = L2_2 * 0.35
  L10_2 = L1_2 - L10_2
  L11_2 = L3_2 * 0.22
  L10_2 = L10_2 - L11_2
  L11_2 = L4_2 * L6_2
  L10_2 = L10_2 + L11_2
  function L11_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3
    L6_3 = A1_3 * A2_3
    L6_3 = A0_3 + L6_3
    L7_3 = coordMento
    if nil == L7_3 then
      L7_3 = ColliderSecondary
      if L7_3 then
        goto lbl_12
      end
    end
    L7_3 = Collider
    ::lbl_12::
    L8_3 = StartShapeTestCapsule
    L9_3 = A0_3.x
    L10_3 = A0_3.y
    L11_3 = A0_3.z
    L12_3 = L6_3.x
    L13_3 = L6_3.y
    L14_3 = L6_3.z
    L15_3 = 0.05
    L16_3 = L7_3
    L17_3 = objCava
    L18_3 = 7
    L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    L9_3 = GetShapeTestResult
    L10_3 = L8_3
    L9_3, L10_3, L11_3, L12_3, L13_3 = L9_3(L10_3)
    while 1 == L9_3 do
      L14_3 = isProne
      if not L14_3 then
        break
      end
      L14_3 = Wait
      L15_3 = 0
      L14_3(L15_3)
      L14_3 = GetShapeTestResult
      L15_3 = L8_3
      L14_3, L15_3, L16_3, L17_3, L18_3 = L14_3(L15_3)
      L13_3 = L18_3
      L12_3 = L17_3
      L11_3 = L16_3
      L10_3 = L15_3
      L9_3 = L14_3
    end
    L14_3 = linee
    if L14_3 then
      L14_3 = DrawLine
      L15_3 = A0_3.x
      L16_3 = A0_3.y
      L17_3 = A0_3.z
      L18_3 = L6_3.x
      L19_3 = L6_3.y
      L20_3 = L6_3.z
      L21_3 = A3_3
      L22_3 = A4_3
      L23_3 = A5_3
      L24_3 = 255
      L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      L14_3 = DrawMarker
      L15_3 = 28
      L16_3 = A0_3.x
      L17_3 = A0_3.y
      L18_3 = A0_3.z
      L19_3 = 0.0
      L20_3 = 0.0
      L21_3 = 0.0
      L22_3 = 0
      L23_3 = 0.0
      L24_3 = 0.0
      L25_3 = L0_1
      L26_3 = L0_1
      L27_3 = L0_1
      L28_3 = A3_3
      L29_3 = A4_3
      L30_3 = A5_3
      L31_3 = 255
      L32_3 = false
      L33_3 = true
      L34_3 = 2
      L35_3 = false
      L36_3 = false
      L37_3 = false
      L38_3 = false
      L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
      if 1 == L10_3 then
        L14_3 = DrawMarker
        L15_3 = 28
        L16_3 = L11_3.x
        L17_3 = L11_3.y
        L18_3 = L11_3.z
        L19_3 = 0.0
        L20_3 = 0.0
        L21_3 = 0.0
        L22_3 = 0
        L23_3 = 0.0
        L24_3 = 0.0
        L25_3 = L0_1
        L26_3 = L0_1
        L27_3 = L0_1
        L28_3 = A3_3
        L29_3 = A4_3
        L30_3 = A5_3
        L31_3 = 255
        L32_3 = false
        L33_3 = true
        L34_3 = 2
        L35_3 = false
        L36_3 = false
        L37_3 = false
        L38_3 = false
        L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
      end
    end
    if 1 == L10_3 then
      L14_3 = L11_3 - A0_3
      L14_3 = #L14_3
      return L14_3
    end
    L14_3 = -1
    return L14_3
  end
  L12_2 = L11_2
  L13_2 = L7_2
  L14_2 = L2_2
  L15_2 = 0.2
  L16_2 = 100
  L17_2 = 0
  L18_2 = 100
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  distanzaAvantiDX = L12_2
  L12_2 = L11_2
  L13_2 = L8_2
  L14_2 = L2_2
  L15_2 = 0.2
  L16_2 = 100
  L17_2 = 0
  L18_2 = 100
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  distanzaAvantiSX = L12_2
  L12_2 = L11_2
  L13_2 = L9_2
  L14_2 = -L2_2
  L15_2 = 0.2
  L16_2 = 0
  L17_2 = 0
  L18_2 = 255
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  DistanzaDietroDX = L12_2
  L12_2 = L11_2
  L13_2 = L10_2
  L14_2 = -L2_2
  L15_2 = 0.2
  L16_2 = 0
  L17_2 = 0
  L18_2 = 255
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  DistanzaDietroSX = L12_2
end
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsPedOnFoot
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsPedJumping
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedFalling
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedRagdoll
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_23
        end
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_23::
  L1_2 = true
  return L1_2
end
CanPlayerCrouchCrawl = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  coordMento = nil
  distanzaMento = -1
  distanzaPelvis = -1
  DistanzaDietroDX = -1
  DistanzaDietroSX = -1
  distanzaAvantiDX = -1
  distanzaAvantiSX = -1
  isProne = false
  L1_2 = IsPedFatallyInjured
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = "get_up@directional@movement@from_knees@standard"
      L2_2 = "getup_l_0"
      L3_2 = faiAnim
      L4_2 = L1_2
      L5_2 = L2_2
      L6_2 = 550
      L7_2 = 1
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  L1_2 = nil
  L1_1 = L1_2
  L1_2 = nil
  L2_1 = L1_2
  L1_2 = nil
  L3_1 = L1_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L6_1 = L3_2
  L5_1 = L2_2
  L4_1 = L1_2
  L1_2 = DoesEntityExist
  L2_2 = objCava
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = SetEntityAsMissionEntity
    L2_2 = objCava
    L1_2(L2_2)
    L1_2 = DeleteEntity
    L2_2 = objCava
    L1_2(L2_2)
    objCava = nil
  end
  L1_2 = IsPedFalling
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedClimbing
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_70
    end
  end
  L1_2 = SetPedToRagdoll
  L2_2 = L0_2
  L3_2 = 0
  L4_2 = 0
  L5_2 = 4
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  ::lbl_70::
  L1_2 = EndOrbitCam
  L1_2()
end
StopProne = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = DistanzaSchienaSopra
  L1_2 = IsControlPressed
  L2_2 = 0
  L3_2 = 44
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsDisabledControlPressed
    L2_2 = 0
    L3_2 = 44
    L1_2 = -1 == L1_2 and L1_2
  end
  if L1_2 then
    L2_2 = L8_1
    if L2_2 then
      goto lbl_23
    end
  end
  L2_2 = 0.0
  ::lbl_23::
  L3_2 = L7_1
  L4_2 = L7_1
  L4_2 = L2_2 - L4_2
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L9_1
  L7_2 = GetFrameTime
  L7_2 = L7_2()
  L6_2 = L6_2 * L7_2
  L7_2 = 1.0
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L7_1 = L3_2
  L3_2 = GetEntityCoords
  L4_2 = objCava
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = L7_1
  L5_2 = L5_2(L6_2)
  L6_2 = L8_1
  L5_2 = L5_2 / L6_2
  L6_2 = 1.0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = GetEntityForwardVector
  L6_2 = objCava
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2 * 0.25
  L6_2 = L5_2 * L6_2
  L7_2 = L3_2 + L6_2
  L8_2 = coordMento
  if nil == L8_2 then
    L8_2 = ColliderSecondary
    if L8_2 then
      goto lbl_71
    end
  end
  L8_2 = Collider
  ::lbl_71::
  L9_2 = StartShapeTestRay
  L10_2 = L7_2.x
  L11_2 = L7_2.y
  L12_2 = L7_2.z
  L12_2 = L12_2 + 0.3
  L13_2 = L7_2.x
  L14_2 = L7_2.y
  L15_2 = L7_2.z
  L15_2 = L15_2 - 1.0
  L16_2 = L8_2
  L17_2 = objCava
  L18_2 = 0
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = GetShapeTestResult
  L11_2 = L9_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  while 1 == L10_2 do
    L14_2 = isProne
    if not L14_2 then
      break
    end
    L14_2 = Wait
    L15_2 = 0
    L14_2(L15_2)
    L14_2 = GetShapeTestResult
    L15_2 = L9_2
    L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
    L13_2 = L17_2
    L12_2 = L16_2
    L11_2 = L15_2
    L10_2 = L14_2
  end
  if 1 ~= L11_2 then
    L14_2 = distanzaMento
    if not (L14_2 > 0.0) then
      goto lbl_193
    end
  end
  if 1 ~= L11_2 then
    L14_2 = GetEntityCoords
    L15_2 = objCava
    L14_2 = L14_2(L15_2)
    L12_2 = L14_2
  else
    L12_2 = L12_2 - L6_2
    L14_2 = L2_1
    if L14_2 then
      L14_2 = L11_1
      L15_2 = LerpVec
      L16_2 = L2_1
      L17_2 = L13_2
      L18_2 = 0.2
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2, L17_2, L18_2)
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      if L14_2 then
        goto lbl_132
      end
    end
    L14_2 = L13_2
    ::lbl_132::
    L2_1 = L14_2
  end
  L14_2 = L12_2
  L15_2 = L12_2
  if nil ~= A0_2 then
    L16_2 = GetEntityForwardVector
    L17_2 = objCava
    L16_2 = L16_2(L17_2)
    L17_2 = L16_2 * A0_2
    L15_2 = L12_2 + L17_2
  end
  L16_2 = L7_1
  L17_2 = L8_1
  L16_2 = L16_2 / L17_2
  L16_2 = L16_2 * 0.35
  L17_2 = vector3
  L18_2 = L15_2.x
  L19_2 = L15_2.y
  L20_2 = L15_2.z
  L20_2 = L20_2 + L16_2
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  L15_2 = L17_2
  L17_2 = L3_1
  if not L17_2 then
    L17_2 = L1_1
    if not L17_2 then
      L17_2 = GetEntityHeading
      L18_2 = objCava
      L17_2 = L17_2(L18_2)
    end
  end
  L3_1 = L17_2
  L17_2 = AngleDiff
  L18_2 = L3_1
  L19_2 = L1_1
  if not L19_2 then
    L19_2 = L3_1
  end
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = L3_1
  L19_2 = L17_2 * 0.1
  L18_2 = L18_2 + L19_2
  L18_2 = L18_2 % 360.0
  L3_1 = L18_2
  L18_2 = L2_1
  if L18_2 then
    L18_2 = L16_1
    L19_2 = objCava
    L20_2 = L2_1
    L21_2 = L3_1
    L22_2 = L15_2
    L18_2(L19_2, L20_2, L21_2, L22_2)
    goto lbl_198
    ::lbl_193::
    L14_2 = distanzaMento
    if -1 == L14_2 then
      L14_2 = StopProne
      L14_2()
    end
  end
  ::lbl_198::
end
AdjustOnTerrain = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 * 1.05
  L3_2 = L1_2 + L3_2
  L4_2 = L2_2 * 1.05
  L4_2 = L1_2 - L4_2
  L5_2 = StartShapeTestCapsule
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L8_2 = L8_2 + 0.5
  L9_2 = L3_2.x
  L10_2 = L3_2.y
  L11_2 = L3_2.z
  L11_2 = L11_2 + 0.5
  L12_2 = 0.15
  L13_2 = 1
  L14_2 = L0_2
  L15_2 = 7
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = StartShapeTestCapsule
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L9_2 = L1_2.z
  L9_2 = L9_2 + 0.5
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L12_2 = L12_2 + 0.5
  L13_2 = 0.15
  L14_2 = 1
  L15_2 = L0_2
  L16_2 = 7
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = GetShapeTestResult
  L8_2 = L5_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  L12_2 = GetShapeTestResult
  L13_2 = L6_2
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
  if 1 == L8_2 then
    L17_2 = true
    L18_2 = L11_2
    L19_2 = L9_2
    L20_2 = "front"
    return L17_2, L18_2, L19_2, L20_2
  end
  if 1 == L13_2 then
    L17_2 = true
    L18_2 = L16_2
    L19_2 = L14_2
    L20_2 = "back"
    return L17_2, L18_2, L19_2, L20_2
  end
  L17_2 = false
  L18_2 = 0
  L19_2 = nil
  L20_2 = nil
  return L17_2, L18_2, L19_2, L20_2
end
IsObjectTooClose = L20_1
infoAttive = true
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = ExecuteCommand
  L1_2 = "fixcrouch"
  L0_2(L1_2)
  L0_2 = 0
  L1_2 = objCava
  if nil == L1_2 then
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L2_2 = vector3
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L5_2 = L1_2.z
    L5_2 = L5_2 - 1.0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
    L2_2 = CreateObject
    L3_2 = -1837161340
    L4_2 = L1_2
    L5_2 = true
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    objCava = L2_2
    while true do
      L2_2 = DoesEntityExist
      L3_2 = objCava
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = linee
    if not L2_2 then
      L2_2 = SetEntityVisible
      L3_2 = objCava
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
    L2_2 = SetEntityCollision
    L3_2 = objCava
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityHeading
    L3_2 = objCava
    L4_2 = GetEntityHeading
    L5_2 = PlayerPedId
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L5_2()
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L2_2 = AttachEntityToEntity
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = objCava
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0.0
    L8_2 = 1.035
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L17_2 = 2
    L18_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L2_2 = L1_1
    if nil == L2_2 then
      L2_2 = GetEntityHeading
      L3_2 = objCava
      L2_2 = L2_2(L3_2)
      L1_1 = L2_2
      L2_2 = L1_1
      L3_1 = L2_2
      L2_2 = AdjustOnTerrain
      L2_2()
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L0_2 = L2_2
    L2_2 = StartOrbitCam
    L3_2 = vector3
    L4_2 = 0.0
    L5_2 = 0.0
    L6_2 = 0.3
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = objCava
    L2_2(L3_2, L4_2)
  end
  while true do
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 - L1_2
    L2_2 = L2_2 / 1000
    L2_2 = L2_2 * 50
    L3_2 = DisableControlAction
    L4_2 = 0
    L5_2 = 26
    L3_2(L4_2, L5_2)
    L3_2 = DisableControlAction
    L4_2 = 0
    L5_2 = 36
    L3_2(L4_2, L5_2)
    L3_2 = DisableControlAction
    L4_2 = 0
    L5_2 = 73
    L3_2(L4_2, L5_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L0_2
    L4_2 = 350
    if L3_2 > L4_2 then
      L3_2 = isProne
      if not L3_2 then
        L3_2 = StopProne
        L3_2()
        return
      end
      L3_2 = L17_1
      L3_2()
      L3_2 = L18_1
      L3_2()
      L3_2 = L19_1
      L3_2()
    end
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = IsPedFatallyInjured
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = infoAttive
      if L4_2 then
        L4_2 = infoWhileCrawl
        L4_2()
      end
    end
    L4_2 = GetPedStealthMovement
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if 1 == L4_2 then
      L4_2 = SetPedStealthMovement
      L5_2 = L3_2
      L6_2 = false
      L7_2 = "DEFAULT_ACTION"
      L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = CanPlayerCrouchCrawl
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = StopProne
      L4_2()
      return
    end
    L4_2 = IsControlJustPressed
    L5_2 = 0
    L6_2 = 74
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = infoAttive
      if L4_2 then
        infoAttive = false
      else
        infoAttive = true
      end
    end
    L4_2 = 0.7
    L5_2 = IsControlPressed
    L6_2 = 0
    L7_2 = 34
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = distanzaAvantiSX
      L5_2 = -1 == L5_2
      L6_2 = DistanzaDietroDX
      L6_2 = -1 == L6_2
      if L5_2 and L6_2 then
        L7_2 = L1_1
        if nil == L7_2 then
          L7_2 = GetEntityHeading
          L8_2 = objCava
          L7_2 = L7_2(L8_2)
          L1_1 = L7_2
        end
        L7_2 = L1_1
        L7_2 = L7_2 + L4_2
        L1_1 = L7_2
        L7_2 = AdjustOnTerrain
        L7_2()
      end
    end
    L5_2 = IsControlPressed
    L6_2 = 0
    L7_2 = 35
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = distanzaAvantiDX
      L5_2 = -1 == L5_2
      L6_2 = DistanzaDietroSX
      L6_2 = -1 == L6_2
      if L5_2 and L6_2 then
        L7_2 = L1_1
        if nil == L7_2 then
          L7_2 = GetEntityHeading
          L8_2 = objCava
          L7_2 = L7_2(L8_2)
          L1_1 = L7_2
        end
        L7_2 = L1_1
        L7_2 = L7_2 - L4_2
        L1_1 = L7_2
        L7_2 = AdjustOnTerrain
        L7_2()
      end
    end
    L5_2 = 0.004
    L6_2 = IsControlPressed
    L7_2 = 0
    L8_2 = 21
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L5_2 = 0.009
    end
    L6_2 = DistanzaSchienaSopra
    if -1 == L6_2 then
      L6_2 = IsControlPressed
      L7_2 = 0
      L8_2 = 73
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L6_2 = IsDisabledControlPressed
        L7_2 = 0
        L8_2 = 73
        L6_2 = L6_2(L7_2, L8_2)
        if not L6_2 then
          goto lbl_288
        end
      end
      isProne = false
    end
    ::lbl_288::
    L6_2 = DistanzaSchienaSopra
    L6_2 = IsControlPressed
    L7_2 = 0
    L8_2 = 44
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = IsDisabledControlPressed
      L7_2 = 0
      L8_2 = 44
      L6_2 = -1 == L6_2 and L6_2
    end
    if L6_2 then
      L7_2 = L8_1
      if L7_2 then
        goto lbl_310
      end
    end
    L7_2 = 0.0
    ::lbl_310::
    L8_2 = L7_1
    L9_2 = L7_1
    L9_2 = L7_2 - L9_2
    L10_2 = math
    L10_2 = L10_2.min
    L11_2 = L9_1
    L12_2 = GetFrameTime
    L12_2 = L12_2()
    L11_2 = L11_2 * L12_2
    L12_2 = 1.0
    L10_2 = L10_2(L11_2, L12_2)
    L9_2 = L9_2 * L10_2
    L8_2 = L8_2 + L9_2
    L7_1 = L8_2
    L8_2 = false
    L9_2 = IsControlPressed
    L10_2 = 0
    L11_2 = 32
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = IsControlPressed
      L10_2 = 0
      L11_2 = 33
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = distanzaAvantiSX
        if -1 == L9_2 then
          L9_2 = distanzaAvantiDX
          if -1 == L9_2 then
            L9_2 = AdjustOnTerrain
            L10_2 = L5_2
            L9_2(L10_2)
            L8_2 = true
          end
        end
      end
    end
    L9_2 = IsControlPressed
    L10_2 = 0
    L11_2 = 33
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = IsControlPressed
      L10_2 = 0
      L11_2 = 32
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = DistanzaDietroSX
        if -1 ~= L9_2 then
          L9_2 = DistanzaDietroDX
          if -1 ~= L9_2 then
            goto lbl_377
          end
        end
        L9_2 = BackAnimation
        L9_2()
        L9_2 = AdjustOnTerrain
        L10_2 = L5_2 * -1
        L9_2(L10_2)
        L8_2 = true
        goto lbl_386
        ::lbl_377::
        L9_2 = SetEntityVelocity
        L10_2 = objCava
        L11_2 = 0
        L12_2 = 0
        L13_2 = 0
        L9_2(L10_2, L11_2, L12_2, L13_2)
        L9_2 = PlayIdleCrawlAnim
        L10_2 = true
        L9_2(L10_2)
      end
    end
    ::lbl_386::
    if not L8_2 then
      if not L6_2 then
        L9_2 = L7_1
        L10_2 = 0.01
        if not (L9_2 > L10_2) then
          goto lbl_397
        end
      end
      L9_2 = AdjustOnTerrain
      L10_2 = nil
      L9_2(L10_2)
    end
    ::lbl_397::
    L9_2 = IsControlJustPressed
    L10_2 = 0
    L11_2 = 22
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = DistanzaSchienaSopra
      if -1 == L9_2 then
        L9_2 = Schiena
        L9_2 = not L9_2
        Schiena = L9_2
        L9_2 = PlayIdleCrawlAnim
        L9_2()
        L9_2 = Schiena
        if not L9_2 then
          frwA = "onfront_fwd"
          bckA = "onfront_bwd"
        else
          frwA = "onback_fwd"
          bckA = "onback_bwd"
        end
      end
    end
    L9_2 = IsControlPressed
    L10_2 = 0
    L11_2 = 33
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = IsControlPressed
      L10_2 = 0
      L11_2 = 32
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = IsControlPressed
        L10_2 = 0
        L11_2 = 34
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L9_2 = IsControlPressed
          L10_2 = 0
          L11_2 = 32
          L9_2 = L9_2(L10_2, L11_2)
          if L9_2 then
            goto lbl_453
          end
        end
        L9_2 = IsControlPressed
        L10_2 = 0
        L11_2 = 35
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L9_2 = IsControlPressed
          L10_2 = 0
          L11_2 = 32
          L9_2 = L9_2(L10_2, L11_2)
        end
      end
      ::lbl_453::
      L10_2 = distanzaAvantiSX
      if -1 == L10_2 then
        L10_2 = distanzaAvantiDX
        if -1 == L10_2 and L9_2 then
          L10_2 = PlayIdleCrawlAnim
          L10_2()
      end
      else
        L10_2 = SetEntityVelocity
        L11_2 = objCava
        L12_2 = 0
        L13_2 = 0
        L14_2 = 0
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = PlayIdleCrawlAnim
        L11_2 = true
        L10_2(L11_2)
      end
    end
    L9_2 = GetEntityCoords
    L10_2 = PlayerPedId
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L10_2 = RequestCollisionAtCoord
    L11_2 = L9_2.x
    L12_2 = L9_2.y
    L13_2 = L9_2.z
    L10_2(L11_2, L12_2, L13_2)
  end
end
CrawlLoop = L20_1
L20_1 = AddEventHandler
L21_1 = "onResourceStop"
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = DestroyAllProps
    L1_2()
    L1_2 = ClosePedMenu
    L1_2()
    L1_2 = objCava
    if nil ~= L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = objCava
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = objCava
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = objCava
        L1_2(L2_2)
        objCava = nil
      end
    end
    L1_2 = ClonedPed
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = ClonedPed
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = ClonedPed
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = ClonedPed
        L1_2(L2_2)
        ClonedPed = nil
      end
    end
  end
end
L20_1(L21_1, L22_1)
crouched = false
inStealth = false
L20_1 = CreateThread
function L21_1()
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
  L1_2 = RequestAnimSet
  L2_2 = "move_ped_crouched"
  L1_2(L2_2)
end
L20_1(L21_1)
L20_1 = false
function L21_1()
  local L0_2, L1_2
  L0_2 = L20_1
  if L0_2 then
    return
  end
  L0_2 = true
  L20_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = Wait
    L2_3 = 1000
    L1_3(L2_3)
    while true do
      L1_3 = crouched
      if not L1_3 then
        L1_3 = inStealth
        if not L1_3 then
          break
        end
      end
      L1_3 = DoesEntityExist
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = IsEntityVisible
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = IsPedFatallyInjured
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = Morto
            if not L1_3 then
              L1_3 = AnnullaTuttoCrouch
              L1_3()
              break
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = false
    L20_1 = L1_3
  end
  L0_2(L1_2)
end
loopMorte = L21_1
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.menuCombatOpen
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.inFullAnim
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.menuCombatOpen
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsNuiFocused
        L1_2 = L1_2()
        if not L1_2 then
          L1_2 = exports
          L1_2 = L1_2.striano_core
          L2_2 = L1_2
          L1_2 = L1_2.gettutorial
          L1_2 = L1_2(L2_2)
          if L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_combat
            L2_2 = L1_2
            L1_2 = L1_2.inCombat
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = IsPedInAnyVehicle
              L2_2 = L0_2
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = IsEntityAttached
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = exports
                  L1_2 = L1_2.striano_editor
                  L2_2 = L1_2
                  L1_2 = L1_2.editorattivo
                  L1_2 = L1_2(L2_2)
                  if not L1_2 then
                    L1_2 = true
                    return L1_2
                end
              end
            end
          end
        end
      end
    end
  end
  else
    L1_2 = false
    return L1_2
  end
end
canCrouch = L21_1
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = inStealth
  if L1_2 then
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = GetPedStealthMovement
        L1_3 = A0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = crouched
        if L0_3 then
          break
        end
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      inStealth = false
      L0_3 = SetPedStealthMovement
      L1_3 = A0_2
      L2_3 = false
      L3_3 = "DEFAULT_ACTION"
      L0_3(L1_3, L2_3, L3_3)
    end
    L1_2(L2_2)
  end
end
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
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
      L1_2 = IsNuiFocused
      L1_2 = L1_2()
      if not L1_2 then
        L1_2 = IsPedOnFoot
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = IsEntityPositionFrozen
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_core
            L2_2 = L1_2
            L1_2 = L1_2.inNoClip
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
                  L1_2 = IsPedWalking
                  L2_2 = L0_2
                  L1_2 = L1_2(L2_2)
                  if L1_2 then
                    L1_2 = canCrouch
                    L1_2 = L1_2()
                    if L1_2 then
                      L1_2 = inStealth
                      L1_2 = not L1_2
                      inStealth = L1_2
                      L1_2 = SetPedStealthMovement
                      L2_2 = L0_2
                      L3_2 = inStealth
                      L4_2 = "DEFAULT_ACTION"
                      L1_2(L2_2, L3_2, L4_2)
                      L1_2 = L21_1
                      L2_2 = L0_2
                      L1_2(L2_2)
                      crouched = false
                    end
                  else
                    L1_2 = crouched
                    if not L1_2 then
                      L1_2 = canCrouch
                      L1_2 = L1_2()
                      if L1_2 then
                        L1_2 = SetPedStealthMovement
                        L2_2 = L0_2
                        L3_2 = false
                        L4_2 = "DEFAULT_ACTION"
                        L1_2(L2_2, L3_2, L4_2)
                        inStealth = false
                        L1_2 = RequestAnimSet
                        L2_2 = "move_ped_crouched"
                        L1_2(L2_2)
                        L1_2 = SetPedMovementClipset
                        L2_2 = L0_2
                        L3_2 = "move_ped_crouched"
                        L4_2 = 0.5
                        L1_2(L2_2, L3_2, L4_2)
                        L1_2 = LoopCrouch
                        L1_2()
                      end
                    else
                      L1_2 = AnnullaTuttoCrouch
                      L1_2()
                      L1_2 = IsEntityPlayingAnim
                      L2_2 = L0_2
                      L3_2 = "amb@world_human_bum_wash@male@low@idle_a"
                      L4_2 = "idle_a"
                      L5_2 = 3
                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                      if L1_2 then
                        L1_2 = ExecuteCommand
                        L2_2 = "e c"
                        L1_2(L2_2)
                      end
                    end
                  end
              end
              else
                L1_2 = canCrouch
                L1_2 = L1_2()
                if L1_2 then
                  L1_2 = crouched
                  if L1_2 then
                    L1_2 = AnnullaTuttoCrouch
                    L1_2()
                  end
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = L0_2
                  L3_2 = "amb@world_human_bum_wash@male@low@idle_a"
                  L4_2 = "idle_a"
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if L1_2 then
                    L1_2 = ExecuteCommand
                    L2_2 = "e c"
                    L1_2(L2_2)
                  end
                  L1_2 = inStealth
                  L1_2 = not L1_2
                  inStealth = L1_2
                  L1_2 = SetPedStealthMovement
                  L2_2 = L0_2
                  L3_2 = inStealth
                  L4_2 = "DEFAULT_ACTION"
                  L1_2(L2_2, L3_2, L4_2)
                  L1_2 = L21_1
                  L2_2 = L0_2
                  L1_2(L2_2)
                  crouched = false
                end
              end
          end
        end
      end
    end
  end
  else
    L1_2 = AnnullaTuttoCrouch
    L1_2()
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "amb@world_human_bum_wash@male@low@idle_a"
    L4_2 = "idle_a"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L1_2 = ExecuteCommand
      L2_2 = "e c"
      L1_2(L2_2)
    end
  end
end
vaiCrouch = L22_1
function L22_1()
  local L0_2, L1_2, L2_2
  L0_2 = crouched
  if L0_2 then
    return
  end
  crouched = true
  L0_2 = loopMorte
  L0_2()
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = crouched
      if L0_3 then
        L0_3 = IsPedHuman
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = IsPedRagdoll
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsPedOnFoot
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = IsControlPressed
              L1_3 = 0
              L2_3 = 73
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                L0_3 = IsDisabledControlPressed
                L1_3 = 0
                L2_3 = 73
                L0_3 = L0_3(L1_3, L2_3)
                if not L0_3 then
                  L0_3 = GetEntitySpeed
                  L1_3 = L0_2
                  L0_3 = L0_3(L1_3)
                  L1_3 = 0.05
                  if L0_3 < L1_3 then
                    L0_3 = IsControlPressed
                    L1_3 = 0
                    L2_3 = 25
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      L0_3 = IsControlPressed
                      L1_3 = 0
                      L2_3 = 31
                      L0_3 = L0_3(L1_3, L2_3)
                      if not L0_3 then
                        L0_3 = IsControlPressed
                        L1_3 = 0
                        L2_3 = 32
                        L0_3 = L0_3(L1_3, L2_3)
                        if not L0_3 then
                          L0_3 = IsControlPressed
                          L1_3 = 0
                          L2_3 = 24
                          L0_3 = L0_3(L1_3, L2_3)
                          if not L0_3 then
                            L0_3 = IsControlPressed
                            L1_3 = 0
                            L2_3 = 33
                            L0_3 = L0_3(L1_3, L2_3)
                            if not L0_3 then
                              L0_3 = IsControlPressed
                              L1_3 = 0
                              L2_3 = 34
                              L0_3 = L0_3(L1_3, L2_3)
                              if not L0_3 then
                                L0_3 = IsControlPressed
                                L1_3 = 0
                                L2_3 = 35
                                L0_3 = L0_3(L1_3, L2_3)
                                if not L0_3 then
                                  L0_3 = IsEntityPlayingAnim
                                  L1_3 = L0_2
                                  L2_3 = "anim@amb@nightclub@poster@"
                                  L3_3 = "poster_placement"
                                  L4_3 = 3
                                  L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                                  if not L0_3 then
                                    L0_3 = exports
                                    L0_3 = L0_3.striano_combat
                                    L1_3 = L0_3
                                    L0_3 = L0_3.inFullAnim
                                    L0_3 = L0_3(L1_3)
                                    if not L0_3 then
                                      L0_3 = IsEntityPlayingAnim
                                      L1_3 = L0_2
                                      L2_3 = "amb@world_human_bum_wash@male@low@idle_a"
                                      L3_3 = "idle_a"
                                      L4_3 = 3
                                      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                                      if not L0_3 then
                                        L0_3 = IsPedGoingIntoCover
                                        L1_3 = L0_2
                                        L0_3 = L0_3(L1_3)
                                        if not L0_3 then
                                          L0_3 = IsPedInCover
                                          L1_3 = L0_2
                                          L2_3 = false
                                          L0_3 = L0_3(L1_3, L2_3)
                                          if not L0_3 then
                                            L0_3 = IsPedAimingFromCover
                                            L1_3 = L0_2
                                            L0_3 = L0_3(L1_3)
                                            if not L0_3 then
                                              L0_3 = IsPedInHighCover
                                              L1_3 = L0_2
                                              L0_3 = L0_3(L1_3)
                                              if not L0_3 then
                                                L0_3 = ExecuteCommand
                                                L1_3 = "e kneel3"
                                                L0_3(L1_3)
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
                        end
                      end
                    end
                  end
                  else
                    L0_3 = IsControlPressed
                    L1_3 = 0
                    L2_3 = 25
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      L0_3 = IsControlPressed
                      L1_3 = 0
                      L2_3 = 31
                      L0_3 = L0_3(L1_3, L2_3)
                      if not L0_3 then
                        L0_3 = IsControlPressed
                        L1_3 = 0
                        L2_3 = 32
                        L0_3 = L0_3(L1_3, L2_3)
                        if not L0_3 then
                          L0_3 = IsControlPressed
                          L1_3 = 0
                          L2_3 = 33
                          L0_3 = L0_3(L1_3, L2_3)
                          if not L0_3 then
                            L0_3 = IsControlPressed
                            L1_3 = 0
                            L2_3 = 34
                            L0_3 = L0_3(L1_3, L2_3)
                            if not L0_3 then
                              L0_3 = IsControlPressed
                              L1_3 = 0
                              L2_3 = 35
                              L0_3 = L0_3(L1_3, L2_3)
                              if not L0_3 then
                                L0_3 = IsDisabledControlPressed
                                L1_3 = 0
                                L2_3 = 25
                                L0_3 = L0_3(L1_3, L2_3)
                                if not L0_3 then
                                  L0_3 = IsDisabledControlPressed
                                  L1_3 = 0
                                  L2_3 = 31
                                  L0_3 = L0_3(L1_3, L2_3)
                                  if not L0_3 then
                                    L0_3 = IsDisabledControlPressed
                                    L1_3 = 0
                                    L2_3 = 32
                                    L0_3 = L0_3(L1_3, L2_3)
                                    if not L0_3 then
                                      L0_3 = IsDisabledControlPressed
                                      L1_3 = 0
                                      L2_3 = 33
                                      L0_3 = L0_3(L1_3, L2_3)
                                      if not L0_3 then
                                        L0_3 = IsDisabledControlPressed
                                        L1_3 = 0
                                        L2_3 = 34
                                        L0_3 = L0_3(L1_3, L2_3)
                                        if not L0_3 then
                                          L0_3 = IsDisabledControlPressed
                                          L1_3 = 0
                                          L2_3 = 35
                                          L0_3 = L0_3(L1_3, L2_3)
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
                    end
                    if L0_3 then
                      L0_3 = IsEntityPlayingAnim
                      L1_3 = L0_2
                      L2_3 = "anim@amb@nightclub@poster@"
                      L3_3 = "poster_placement"
                      L4_3 = 3
                      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                      if not L0_3 then
                        L0_3 = IsEntityPlayingAnim
                        L1_3 = L0_2
                        L2_3 = "amb@world_human_bum_wash@male@low@idle_a"
                        L3_3 = "idle_a"
                        L4_3 = 3
                        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                        if L0_3 then
                          L0_3 = ExecuteCommand
                          L1_3 = "e c"
                          L0_3(L1_3)
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
        L0_3 = AnnullaTuttoCrouch
        L0_3()
        return
      end
    end
  end
  L1_2(L2_2)
end
LoopCrouch = L22_1
ShowPed = false
ClonedPed = nil
heading_offset = 190.0
infoCancelAnim = 0
PedMenuZoomMode = "body"
function L22_1()
  local L0_2, L1_2
  L0_2 = ShowPed
  if not L0_2 then
    L0_2 = infoCancelAnim
    if L0_2 < 3 then
      L0_2 = infoCancelAnim
      L0_2 = L0_2 + 1
      infoCancelAnim = L0_2
      L0_2 = notifyCancel
      L1_2 = "Holdpress X to cancel fullbody anim."
      L0_2(L1_2)
    end
    ShowPed = true
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = vector3
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 10.0
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3 = L1_3 - L2_3
      L2_3 = CreatePed
      L3_3 = 26
      L4_3 = GetEntityModel
      L5_3 = L0_3
      L4_3 = L4_3(L5_3)
      L5_3 = L1_3.x
      L6_3 = L1_3.y
      L7_3 = L1_3.z
      L8_3 = 0
      L9_3 = false
      L10_3 = false
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      ClonedPed = L2_3
      L2_3 = ClonePedToTarget
      L3_3 = L0_3
      L4_3 = ClonedPed
      L2_3(L3_3, L4_3)
      L2_3 = SetEntityInvincible
      L3_3 = ClonedPed
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = SetEntityLocallyVisible
      L3_3 = ClonedPed
      L2_3(L3_3)
      L2_3 = NetworkSetEntityInvisibleToNetwork
      L3_3 = ClonedPed
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = SetEntityCanBeDamaged
      L3_3 = ClonedPed
      L4_3 = false
      L2_3(L3_3, L4_3)
      L2_3 = SetBlockingOfNonTemporaryEvents
      L3_3 = ClonedPed
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = SetEntityAlpha
      L3_3 = ClonedPed
      L4_3 = 254
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = SetEntityCollision
      L3_3 = ClonedPed
      L4_3 = false
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = SetPedCanBeTargetted
      L3_3 = ClonedPed
      L4_3 = false
      L2_3(L3_3, L4_3)
      L2_3 = {}
      L3_3 = 5
      L4_3 = 350
      L5_3 = nil
      while true do
        L6_3 = ShowPed
        if not L6_3 then
          break
        end
        L6_3 = Wait
        L7_3 = 0
        L6_3(L7_3)
        L6_3 = 0.32135417461395
        L7_3 = 0.77
        L8_3 = 3.5
        L9_3 = 0.0
        L10_3 = PedMenuZoomMode
        if "face" == L10_3 then
          L7_3 = 0.56
          L8_3 = 0.3
          L9_3 = -1.75
        end
        L10_3 = GetWorldCoordFromScreenCoord
        L11_3 = L6_3
        L12_3 = L7_3
        L10_3, L11_3 = L10_3(L11_3, L12_3)
        L12_3 = L11_3 * L8_3
        L12_3 = L10_3 + L12_3
        L13_3 = GetGameplayCamRot
        L14_3 = 2
        L13_3 = L13_3(L14_3)
        L14_3 = #L2_3
        L14_3 = L14_3 + 1
        L2_3[L14_3] = L12_3
        L14_3 = #L2_3
        if L3_3 < L14_3 then
          L14_3 = table
          L14_3 = L14_3.remove
          L15_3 = L2_3
          L16_3 = 1
          L14_3(L15_3, L16_3)
        end
        L14_3 = vector3
        L15_3 = 0
        L16_3 = 0
        L17_3 = 0
        L14_3 = L14_3(L15_3, L16_3, L17_3)
        L15_3 = ipairs
        L16_3 = L2_3
        L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3)
        for L19_3, L20_3 in L15_3, L16_3, L17_3, L18_3 do
          L14_3 = L14_3 + L20_3
        end
        L15_3 = #L2_3
        L14_3 = L14_3 / L15_3
        L15_3 = IsPedHuman
        L16_3 = ClonedPed
        L15_3 = L15_3(L16_3)
        if L15_3 then
          L15_3 = 0.0
          if L15_3 then
            goto lbl_133
          end
        end
        L15_3 = 0.5
        ::lbl_133::
        L16_3 = SetEntityCoords
        L17_3 = ClonedPed
        L18_3 = L14_3.x
        L19_3 = L14_3.y
        L20_3 = L14_3.z
        L20_3 = L20_3 + L15_3
        L20_3 = L20_3 + L9_3
        L21_3 = false
        L22_3 = false
        L23_3 = false
        L24_3 = false
        L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        L16_3 = SetEntityHeading
        L17_3 = ClonedPed
        L18_3 = L13_3.z
        L19_3 = heading_offset
        L18_3 = L18_3 + L19_3
        L16_3(L17_3, L18_3)
        L16_3 = SetEntityRotation
        L17_3 = ClonedPed
        L18_3 = L13_3.x
        L18_3 = L18_3 * -1
        L19_3 = 0.0
        L20_3 = L13_3.z
        L20_3 = L20_3 + 170.0
        L21_3 = 2
        L22_3 = false
        L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        L16_3 = ForcePedMotionState
        L17_3 = ClonedPed
        L18_3 = -294553821
        L19_3 = false
        L20_3 = 1
        L21_3 = true
        L16_3(L17_3, L18_3, L19_3, L20_3, L21_3)
        L16_3 = IsControlJustPressed
        L17_3 = 0
        L18_3 = 73
        L16_3 = L16_3(L17_3, L18_3)
        if not L16_3 then
          L16_3 = IsDisabledControlJustPressed
          L17_3 = 0
          L18_3 = 73
          L16_3 = L16_3(L17_3, L18_3)
          if not L16_3 then
            L16_3 = IsControlJustPressed
            L17_3 = 2
            L18_3 = 73
            L16_3 = L16_3(L17_3, L18_3)
            if not L16_3 then
              L16_3 = IsDisabledControlJustPressed
              L17_3 = 2
              L18_3 = 73
              L16_3 = L16_3(L17_3, L18_3)
              if not L16_3 then
                goto lbl_203
              end
            end
          end
        end
        L16_3 = ClearPedSecondaryTask
        L17_3 = ClonedPed
        L16_3(L17_3)
        L16_3 = ClearPedTasks
        L17_3 = ClonedPed
        L16_3(L17_3)
        ::lbl_203::
        L16_3 = IsControlJustPressed
        L17_3 = 0
        L18_3 = 74
        L16_3 = L16_3(L17_3, L18_3)
        if not L16_3 then
          L16_3 = IsDisabledControlJustPressed
          L17_3 = 0
          L18_3 = 74
          L16_3 = L16_3(L17_3, L18_3)
          if not L16_3 then
            goto lbl_224
          end
        end
        L16_3 = heading_offset
        L16_3 = L16_3 + 10.0
        heading_offset = L16_3
        L16_3 = heading_offset
        L17_3 = 300.0
        if L16_3 > L17_3 then
          heading_offset = 190.0
        end
        ::lbl_224::
        L16_3 = exports
        L16_3 = L16_3.striano_fastmenu
        L17_3 = L16_3
        L16_3 = L16_3.opened
        L16_3 = L16_3(L17_3)
        if L16_3 then
          L5_3 = nil
        else
          if not L5_3 then
            L16_3 = GetGameTimer
            L16_3 = L16_3()
            L5_3 = L16_3
          end
          L16_3 = GetGameTimer
          L16_3 = L16_3()
          L16_3 = L16_3 - L5_3
          if L4_3 <= L16_3 then
            L16_3 = ClosePedMenu
            L16_3()
            return
          end
        end
      end
      L6_3 = DeleteEntity
      L7_3 = ClonedPed
      L6_3(L7_3)
      ClonedPed = nil
    end
    L0_2(L1_2)
  end
end
ShowPedMenu = L22_1
function L22_1()
  local L0_2, L1_2
  ShowPed = false
  heading_offset = 190.0
  L0_2 = DoesEntityExist
  L1_2 = ClonedPed
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = DestroyAllProps
    L0_2()
    L0_2 = SetEntityAsMissionEntity
    L1_2 = ClonedPed
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = ClonedPed
    L0_2(L1_2)
    ClonedPed = nil
  end
end
ClosePedMenu = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Giocatori
  L1_2 = L1_2()
  L2_2 = -1
  L3_2 = -1
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = #L1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = GetPlayerPed
    L10_2 = L1_2[L8_2]
    L9_2 = L9_2(L10_2)
    if L9_2 ~= A0_2 then
      L10_2 = GetEntityCoords
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = L10_2 - L4_2
      L11_2 = #L11_2
      if -1 == L2_2 or L2_2 > L11_2 then
        L3_2 = L1_2[L8_2]
        L2_2 = L11_2
      end
    end
  end
  L5_2 = L3_2
  L6_2 = L2_2
  return L5_2, L6_2
end
PlayerVicinoPed = L22_1
lastAnim = nil
bloccoAnim = false
timerXAnim = 0
L22_1 = -1
L23_1 = ""
L24_1 = ""
L25_1 = false
L26_1 = 0
L27_1 = false
L28_1 = {}
L29_1 = false
L30_1 = false
L31_1 = false
L32_1 = "e_food_unidentified"
L33_1 = "sf_prop_sf_art_phone_01a"
L34_1 = false
function L35_1(A0_2)
  local L1_2, L2_2
  L1_2 = L34_1
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
faidebuganim = L35_1
L35_1 = RegisterNetEvent
L36_1 = "dp:RecieveMenu"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "dp:RecieveMenu"
function L37_1()
  local L0_2, L1_2
  L0_2 = ShowMenuAnim
  L0_2()
end
L35_1(L36_1, L37_1)
function L35_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.ESC = 322
  L1_2.F1 = 288
  L1_2.F2 = 289
  L1_2.F3 = 170
  L1_2.F5 = 166
  L1_2.F6 = 167
  L1_2.F7 = 168
  L1_2.F8 = 169
  L1_2.F9 = 56
  L1_2.F10 = 57
  L1_2["~"] = 243
  L1_2["1"] = 157
  L1_2["2"] = 158
  L1_2["3"] = 160
  L1_2["4"] = 164
  L1_2["5"] = 165
  L1_2["6"] = 159
  L1_2["7"] = 161
  L1_2["8"] = 162
  L1_2["9"] = 163
  L1_2["-"] = 84
  L1_2["="] = 83
  L1_2.BACKSPACE = 177
  L1_2.TAB = 37
  L1_2.Q = 44
  L1_2.W = 32
  L1_2.E = 38
  L1_2.R = 45
  L1_2.T = 245
  L1_2.Y = 246
  L1_2.U = 303
  L1_2.P = 199
  L1_2["["] = 39
  L1_2["]"] = 40
  L1_2.ENTER = 18
  L1_2.CAPS = 137
  L1_2.A = 34
  L1_2.S = 8
  L1_2.D = 9
  L1_2.F = 23
  L1_2.G = 47
  L1_2.H = 74
  L1_2.K = 311
  L1_2.L = 182
  L1_2.LEFTSHIFT = 21
  L1_2.Z = 20
  L1_2.X = 73
  L1_2.C = 26
  L1_2.V = 0
  L1_2.B = 29
  L1_2.N = 249
  L1_2.M = 244
  L1_2[","] = 82
  L1_2["."] = 81
  L1_2.LEFTCTRL = 36
  L1_2.LEFTALT = 19
  L1_2.SPACE = 22
  L1_2.RIGHTCTRL = 70
  L1_2.HOME = 213
  L1_2.PAGEUP = 10
  L1_2.PAGEDOWN = 11
  L1_2.DELETE = 178
  L1_2.LEFT = 174
  L1_2.RIGHT = 175
  L1_2.TOP = 27
  L1_2.DOWN = 173
  L1_2.NENTER = 201
  L1_2.N4 = 108
  L1_2.N5 = 60
  L1_2.N6 = 107
  L1_2["N+"] = 96
  L1_2["N-"] = 97
  L1_2.N7 = 117
  L1_2.N8 = 61
  L1_2.N9 = 118
  L2_2 = L1_2[A0_2]
  if L2_2 then
    L2_2 = L1_2[A0_2]
    return L2_2
  else
    L2_2 = 0
    return L2_2
  end
end
nametokey = L35_1
L35_1 = exports
L36_1 = "NtoKey"
function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = nametokey
  L2_2 = A0_2
  return L1_2(L2_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "anim:playAnim"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "anim:playAnim"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ExecuteCommand
  L2_2 = "e "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "bkanim"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "bkanim"
function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = EmoteCommandStart
  L2_2 = A0_2
  L1_2(L2_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "anim:cmd"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "anim:cmd"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = faidebuganim
  L2_2 = "comando eseguito: /"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = A0_2
  L1_2(L2_2)
end
L35_1(L36_1, L37_1)
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetPedParachuteState
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 > -1 then
    return
  end
  L2_2 = IsPedAimingFromCover
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = IsPedGoingIntoCover
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedInCover
      L3_2 = L1_2
      L4_2 = true
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsPedInCover
        L3_2 = L1_2
        L4_2 = false
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = IsPedInHighCover
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          if not L2_2 then
            goto lbl_49
          end
        end
      end
    end
  end
  L2_2 = faiAnim
  L3_2 = "gestures@f@standing@casual"
  L4_2 = "gesture_pleased"
  L5_2 = 5
  L6_2 = 49
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = false
  L25_1 = L2_2
  L2_2 = false
  L31_1 = L2_2
  L2_2 = false
  L30_1 = L2_2
  do return end
  ::lbl_49::
  L2_2 = false
  if nil ~= A0_2 then
    L2_2 = true
  end
  L3_2 = L25_1
  if L3_2 or L2_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_editor
    L4_2 = L3_2
    L3_2 = L3_2.cloned
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      L3_2 = ClearPedTasks
      L4_2 = exports
      L4_2 = L4_2.striano_editor
      L5_2 = L4_2
      L4_2 = L4_2.cloned
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = ClonedPed
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = ClonedPed
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = ClearPedTasks
        L4_2 = ClonedPed
        L3_2(L4_2)
      end
    end
    L3_2 = ClearPedTasks
    L4_2 = L1_2
    L3_2(L4_2)
    L3_2 = DestroyAllProps
    L3_2()
    L3_2 = false
    L30_1 = L3_2
    L3_2 = false
    L31_1 = L3_2
  end
  lastAnimName = nil
  lastAnimApplied = nil
  lastPropsApplied = nil
  L3_2 = false
  L25_1 = L3_2
end
EmoteCancel = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = display
  if A0_2 == L1_2 then
    L1_2 = TriggerEvent
    L2_2 = "chatMessage"
    L3_2 = "^5Anim^0"
    L4_2 = {}
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = ""
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L1_2 = TriggerEvent
    L2_2 = "chatMessage"
    L3_2 = "^5Anim^0"
    L4_2 = {}
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = ""
    L7_2 = A0_2
    L8_2 = ""
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
EmoteChatMessage = L35_1
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = 0
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = L3_2
    L0_3 = L0_3 + 1
    L3_2 = L0_3
    L1_3 = L3_2
    L0_3 = L2_2
    L0_3 = L0_3[L1_3]
    if nil == L0_3 then
      L0_3 = nil
      return L0_3
    else
      L1_3 = L3_2
      L0_3 = L2_2
      L0_3 = L0_3[L1_3]
      L2_3 = L3_2
      L1_3 = L2_2
      L2_3 = L1_3[L2_3]
      L1_3 = A0_2
      L1_3 = L1_3[L2_3]
      return L0_3, L1_3
    end
  end
  return L4_2
end
pairsByKeys = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = IsPedHuman
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L1_2 = string
      L1_2 = L1_2.lower
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if "c" == L1_2 then
        L2_2 = EmoteCancel
        L2_2()
        return
      end
      L2_2 = DP
      L2_2 = L2_2.Emotes
      L2_2 = L2_2[L1_2]
      if nil ~= L2_2 then
        L2_2 = OnEmotePlay
        L3_2 = DP
        L3_2 = L3_2.Emotes
        L3_2 = L3_2[L1_2]
        L4_2 = L1_2
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
        end
        return
      else
        L2_2 = DP
        L2_2 = L2_2.Lavori
        L2_2 = L2_2[L1_2]
        if nil ~= L2_2 then
          L2_2 = OnEmotePlay
          L3_2 = DP
          L3_2 = L3_2.Lavori
          L3_2 = L3_2[L1_2]
          L4_2 = L1_2
          L2_2 = L2_2(L3_2, L4_2)
          if L2_2 then
          end
          return
        else
          L2_2 = DP
          L2_2 = L2_2.Seduto
          L2_2 = L2_2[L1_2]
          if nil ~= L2_2 then
            L2_2 = OnEmotePlay
            L3_2 = DP
            L3_2 = L3_2.Seduto
            L3_2 = L3_2[L1_2]
            L4_2 = L1_2
            L2_2 = L2_2(L3_2, L4_2)
            if L2_2 then
            end
            return
          else
            L2_2 = DP
            L2_2 = L2_2.Adult
            L2_2 = L2_2[L1_2]
            if nil ~= L2_2 then
              L2_2 = OnEmotePlay
              L3_2 = DP
              L3_2 = L3_2.Adult
              L3_2 = L3_2[L1_2]
              L4_2 = L1_2
              L2_2 = L2_2(L3_2, L4_2)
              if L2_2 then
              end
              return
            else
              L2_2 = DP
              L2_2 = L2_2.Dances
              L2_2 = L2_2[L1_2]
              if nil ~= L2_2 then
                L2_2 = OnEmotePlay
                L3_2 = DP
                L3_2 = L3_2.Dances
                L3_2 = L3_2[L1_2]
                L4_2 = L1_2
                L2_2 = L2_2(L3_2, L4_2)
                if L2_2 then
                end
                return
              else
                L2_2 = DP
                L2_2 = L2_2.Prays
                L2_2 = L2_2[L1_2]
                if nil ~= L2_2 then
                  L2_2 = OnEmotePlay
                  L3_2 = DP
                  L3_2 = L3_2.Prays
                  L3_2 = L3_2[L1_2]
                  L4_2 = L1_2
                  L2_2 = L2_2(L3_2, L4_2)
                  if L2_2 then
                  end
                  return
                else
                  L2_2 = DP
                  L2_2 = L2_2.PropEmotes
                  L2_2 = L2_2[L1_2]
                  if nil ~= L2_2 then
                    L2_2 = OnEmotePlay
                    L3_2 = DP
                    L3_2 = L3_2.PropEmotes
                    L3_2 = L3_2[L1_2]
                    L4_2 = L1_2
                    L2_2 = L2_2(L3_2, L4_2)
                    if L2_2 then
                    end
                    return
                  else
                    L2_2 = print
                    L3_2 = "Anim "
                    L4_2 = L1_2
                    L5_2 = " not exist."
                    L3_2 = L3_2 .. L4_2 .. L5_2
                    L2_2(L3_2)
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
EmoteCommandStart = L35_1
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L28_1
  L0_2 = #L0_2
  if L0_2 > 0 then
    L0_2 = pairs
    L1_2 = L28_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L5_2
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = DeleteEntity
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
  L0_2 = false
  L27_1 = L0_2
end
DestroyAllProps = L35_1
L35_1 = RegisterNetEvent
L36_1 = "EliminaPropBK"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "EliminaPropBK"
function L37_1()
  local L0_2, L1_2
  L0_2 = DestroyAllProps
  L0_2()
end
L35_1(L36_1, L37_1)
L35_1 = exports
L36_1 = "aggiornaCan"
function L37_1(A0_2)
  local L1_2
  L32_1 = A0_2
end
L35_1(L36_1, L37_1)
L35_1 = exports
L36_1 = "mioTelefono"
function L37_1(A0_2)
  local L1_2
  L1_2 = L33_1
  return L1_2
end
L35_1(L36_1, L37_1)
function L35_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = DoesEntityExist
  L10_2 = ClonedPed
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = vengoDaFaiAnim
    if not L9_2 then
      L8_2 = ClonedPed
    end
  end
  L9_2 = DoesEntityExist
  L10_2 = ClonedPedSit
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = vengoDaFaiAnim
    if not L9_2 then
      L8_2 = ClonedPedSit
    end
  end
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  if "e_food_unidentified" == A0_2 then
    L12_2 = L32_1
    if nil ~= L12_2 then
      L12_2 = L32_1
      if "" ~= L12_2 then
        L12_2 = L32_1
        L12_2 = #L12_2
        if not (L12_2 < 3) then
          goto lbl_41
        end
      end
    end
    L12_2 = "e_food_unidentified"
    L32_1 = L12_2
    ::lbl_41::
    A0_2 = L32_1
  end
  if "sf_prop_sf_art_phone_01a" == A0_2 then
    L12_2 = L33_1
    if nil ~= L12_2 then
      L12_2 = L33_1
      if "" ~= L12_2 then
        L12_2 = L33_1
        L12_2 = #L12_2
        if not (L12_2 < 3) then
          goto lbl_56
        end
      end
    end
    L12_2 = "sf_prop_sf_art_phone_01a"
    L33_1 = L12_2
    ::lbl_56::
    A0_2 = L33_1
  end
  L12_2 = RequestModelStriano
  L13_2 = A0_2
  L12_2(L13_2)
  L12_2 = IsEntityVisible
  L13_2 = PlayerPedId
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L13_2()
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  if L12_2 then
    L12_2 = true
    L13_2 = exports
    L13_2 = L13_2.striano_editor
    L14_2 = L13_2
    L13_2 = L13_2.cloned
    L13_2 = L13_2(L14_2)
    if nil ~= L13_2 then
      L12_2 = false
    end
    L13_2 = CreateObject
    L14_2 = GetHashKey
    L15_2 = A0_2
    L14_2 = L14_2(L15_2)
    L15_2 = L9_2
    L16_2 = L10_2
    L17_2 = L11_2 + 0.2
    L18_2 = L12_2
    L19_2 = L12_2
    L20_2 = false
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L14_2 = AttachEntityToEntity
    L15_2 = L13_2
    L16_2 = L8_2
    L17_2 = GetPedBoneIndex
    L18_2 = L8_2
    L19_2 = A1_2
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = A2_2
    L19_2 = A3_2
    L20_2 = A4_2
    L21_2 = A5_2
    L22_2 = A6_2
    L23_2 = A7_2
    L24_2 = true
    L25_2 = true
    L26_2 = false
    L27_2 = true
    L28_2 = 1
    L29_2 = true
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L28_1
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = true
    L27_1 = L14_2
    L14_2 = L13_2
    while true do
      L15_2 = DoesEntityExist
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if L15_2 then
        break
      end
      L15_2 = Wait
      L16_2 = 0
      L15_2(L16_2)
    end
    while true do
      L15_2 = ObjToNet
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if 0 ~= L15_2 then
        L15_2 = ObjToNet
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        if nil ~= L15_2 then
          break
        end
      end
      L15_2 = Wait
      L16_2 = 25
      L15_2(L16_2)
    end
    L15_2 = SetModelAsNoLongerNeeded
    L16_2 = A0_2
    L15_2(L16_2)
  end
end
function L36_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = DoesEntityExist
  L10_2 = ClonedPed
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = vengoDaFaiAnim
    if not L9_2 then
      L8_2 = ClonedPed
    end
  end
  L9_2 = DoesEntityExist
  L10_2 = ClonedPedSit
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = vengoDaFaiAnim
    if not L9_2 then
      L8_2 = ClonedPedSit
    end
  end
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L12_2 = RequestModelStriano
  L13_2 = A0_2
  L12_2(L13_2)
  L12_2 = IsEntityVisible
  L13_2 = PlayerPedId
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L13_2()
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  if L12_2 then
    L12_2 = true
    L13_2 = exports
    L13_2 = L13_2.striano_editor
    L14_2 = L13_2
    L13_2 = L13_2.cloned
    L13_2 = L13_2(L14_2)
    if nil ~= L13_2 then
      L12_2 = false
    end
    L13_2 = CreateObject
    L14_2 = A0_2
    L15_2 = L9_2
    L16_2 = L10_2
    L17_2 = L11_2 + 0.2
    L18_2 = L12_2
    L19_2 = L12_2
    L20_2 = false
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L14_2 = AttachEntityToEntity
    L15_2 = L13_2
    L16_2 = L8_2
    L17_2 = GetPedBoneIndex
    L18_2 = L8_2
    L19_2 = A1_2
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = A2_2
    L19_2 = A3_2
    L20_2 = A4_2
    L21_2 = A5_2
    L22_2 = A6_2
    L23_2 = A7_2
    L24_2 = true
    L25_2 = true
    L26_2 = false
    L27_2 = true
    L28_2 = 1
    L29_2 = true
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L28_1
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = true
    L27_1 = L14_2
    L14_2 = L13_2
    while true do
      L15_2 = DoesEntityExist
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if L15_2 then
        break
      end
      L15_2 = Wait
      L16_2 = 0
      L15_2(L16_2)
    end
    while true do
      L15_2 = ObjToNet
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if 0 ~= L15_2 then
        L15_2 = ObjToNet
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        if nil ~= L15_2 then
          break
        end
      end
      L15_2 = Wait
      L16_2 = 25
      L15_2(L16_2)
    end
    L15_2 = SetModelAsNoLongerNeeded
    L16_2 = A0_2
    L15_2(L16_2)
  end
end
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetTextComponentFormat
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentString
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = DisplayHelpTextFromStringLabel
  L2_2 = 0
  L3_2 = 0
  L4_2 = 1
  L5_2 = -1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
DisplayHelpText = L37_1
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = bloccoAnim
  if not L2_2 then
    L2_2 = IsPedHuman
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = GetPedParachuteState
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L2_2 > -1 then
    return
  end
  L2_2 = exports
  L2_2 = L2_2.striano_editor
  L3_2 = L2_2
  L2_2 = L2_2.IsPlayerProne
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = exports
  L3_2 = L3_2.striano_editor
  L4_2 = L3_2
  L3_2 = L3_2.cloned
  L3_2 = L3_2(L4_2)
  if nil ~= L3_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_editor
    L4_2 = L3_2
    L3_2 = L3_2.cloned
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = IsPedInAnyVehicle
  L4_2 = L2_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  InVehicle = L3_2
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = faidebuganim
    L4_2 = "Ped non rilevato per fare PlayAnim"
    L3_2(L4_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  ename = L5_2
  L23_1 = L4_2
  L24_1 = L3_2
  L3_2 = ename
  if "Annulla Anim 2" == L3_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_editor
    L4_2 = L3_2
    L3_2 = L3_2.crouchato
    L3_2 = L3_2(L4_2)
    if L3_2 then
      return
    end
  end
  L3_2 = -1
  L22_1 = L3_2
  L3_2 = L27_1
  if L3_2 then
    L3_2 = DestroyAllProps
    L3_2()
  end
  L3_2 = LoadAnim
  L4_2 = L24_1
  L3_2(L4_2)
  L3_2 = A0_2.AnimationOptions
  if L3_2 then
    L3_2 = faidebuganim
    L4_2 = "Rilevate opzioni anim."
    L3_2(L4_2)
    L3_2 = A0_2.AnimationOptions
    L3_2 = L3_2.EmoteLoop
    if L3_2 then
      L3_2 = 1
      L26_1 = L3_2
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.EmoteMoving
      if L3_2 then
        L3_2 = 51
        L26_1 = L3_2
        L3_2 = true
        L30_1 = L3_2
      end
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.StopLast
      if L3_2 then
        L3_2 = 2
        L26_1 = L3_2
        L3_2 = true
        L30_1 = L3_2
      end
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.PerPara
      if L3_2 then
        L3_2 = 8
        L26_1 = L3_2
        L3_2 = print
        L4_2 = "Type per Para."
        L3_2(L4_2)
      end
    else
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.EmoteMoving
      if L3_2 then
        L3_2 = 51
        L26_1 = L3_2
        L3_2 = true
        L30_1 = L3_2
      else
        L3_2 = A0_2.AnimationOptions
        L3_2 = L3_2.EmoteMoving
        if false == L3_2 then
          L3_2 = 0
          L26_1 = L3_2
          L3_2 = true
          L31_1 = L3_2
        else
          L3_2 = A0_2.AnimationOptions
          L3_2 = L3_2.EmoteStuck
          if L3_2 then
            L3_2 = 50
            L26_1 = L3_2
            L3_2 = true
            L31_1 = L3_2
          else
            L3_2 = 0
            L26_1 = L3_2
            L3_2 = true
            L31_1 = L3_2
            L3_2 = faidebuganim
            L4_2 = "Full body else"
            L3_2(L4_2)
          end
        end
      end
    end
  else
    L3_2 = 0
    L26_1 = L3_2
    L3_2 = true
    L31_1 = L3_2
  end
  L3_2 = InVehicle
  if 1 == L3_2 then
    L3_2 = 51
    L26_1 = L3_2
    L3_2 = true
    L30_1 = L3_2
  end
  L3_2 = A0_2.AnimationOptions
  if L3_2 then
    L3_2 = A0_2.AnimationOptions
    L3_2 = L3_2.EmoteDuration
    if nil == L3_2 then
      L3_2 = A0_2.AnimationOptions
      L3_2.EmoteDuration = -1
    else
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.EmoteDuration
      L22_1 = L3_2
    end
  end
  L3_2 = IsPedFatallyInjured
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = ename
    if "Ferito 2" ~= L3_2 then
      L3_2 = faidebuganim
      L4_2 = "Blocco per morte"
      L3_2(L4_2)
      return
    end
  end
  L3_2 = A0_2.AnimationOptions
  if L3_2 then
    L3_2 = A0_2.AnimationOptions
    L3_2 = L3_2.ClearIfStart
    if nil ~= L3_2 then
      L3_2 = faidebuganim
      L4_2 = "Blocco se parte"
      L3_2(L4_2)
      L3_2 = ClearPedTasks
      L4_2 = PlayerPedId
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2()
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
  L3_2 = exports
  L3_2 = L3_2.striano_editor
  L4_2 = L3_2
  L3_2 = L3_2.cloned
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    L3_2 = vengoDaFaiAnim
    if L3_2 then
      L3_2 = IsEntityPlayingAnim
      L4_2 = L2_2
      L5_2 = L24_1
      L6_2 = L23_1
      L7_2 = 3
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if not L3_2 then
        L3_2 = TaskPlayAnim
        L4_2 = L2_2
        L5_2 = L24_1
        L6_2 = L23_1
        L7_2 = 2.0
        L8_2 = 2.0
        L9_2 = L22_1
        L10_2 = L26_1
        L11_2 = 0
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L3_2 = exports
        L3_2 = L3_2.striano_editor
        L4_2 = L3_2
        L3_2 = L3_2.lastAnimName
        L5_2 = tostring
        L6_2 = A1_2
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    else
      L3_2 = exports
      L3_2 = L3_2.striano_fastmenu
      L4_2 = L3_2
      L3_2 = L3_2.opened
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsEntityPlayingAnim
        L4_2 = L2_2
        L5_2 = L24_1
        L6_2 = L23_1
        L7_2 = 3
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        if not L3_2 then
          L3_2 = TaskPlayAnim
          L4_2 = L2_2
          L5_2 = L24_1
          L6_2 = L23_1
          L7_2 = 2.0
          L8_2 = 2.0
          L9_2 = L22_1
          L10_2 = L26_1
          L11_2 = 0
          L12_2 = false
          L13_2 = false
          L14_2 = false
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        end
      end
      L3_2 = DoesEntityExist
      L4_2 = ClonedPed
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = IsEntityPlayingAnim
        L4_2 = ClonedPed
        L5_2 = L24_1
        L6_2 = L23_1
        L7_2 = 3
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        if not L3_2 then
          L3_2 = TaskPlayAnim
          L4_2 = ClonedPed
          L5_2 = L24_1
          L6_2 = L23_1
          L7_2 = 2.0
          L8_2 = 2.0
          L9_2 = L22_1
          L10_2 = L26_1
          L11_2 = 0
          L12_2 = false
          L13_2 = false
          L14_2 = false
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        end
      end
    end
  else
    L3_2 = TaskPlayAnim
    L4_2 = exports
    L4_2 = L4_2.striano_editor
    L5_2 = L4_2
    L4_2 = L4_2.cloned
    L4_2 = L4_2(L5_2)
    L5_2 = L24_1
    L6_2 = L23_1
    L7_2 = 2.0
    L8_2 = 2.0
    L9_2 = -1
    L10_2 = L26_1
    L11_2 = 0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = exports
    L3_2 = L3_2.striano_editor
    L4_2 = L3_2
    L3_2 = L3_2.lastAnimName
    L5_2 = tostring
    L6_2 = A1_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = exports
  L3_2 = L3_2.striano_editor
  L4_2 = L3_2
  L3_2 = L3_2.cloned
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DoesEntityExist
    L4_2 = exports
    L4_2 = L4_2.striano_editor
    L5_2 = L4_2
    L4_2 = L4_2.cloned
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L3_2 then
      L3_2 = {}
      L4_2 = L24_1
      L3_2.dict = L4_2
      L4_2 = L23_1
      L3_2.name = L4_2
      L4_2 = L26_1
      L3_2.flag = L4_2
      lastAnimApplied = L3_2
    end
  end
  L3_2 = L22_1
  if L3_2 > 0 then
    L3_2 = A0_2.AnimationOptions
    L3_2 = L3_2.EmoteSpeed
    if nil ~= L3_2 then
      L3_2 = CreateThread
      function L4_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = 0
        while true do
          L1_3 = L22_1
          L1_3 = L1_3 / 50
          if not (L0_3 < L1_3) then
            break
          end
          L1_3 = Wait
          L2_3 = 0
          L1_3(L2_3)
          L0_3 = L0_3 + 1
          L1_3 = SetEntityAnimSpeed
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L3_3 = L24_1
          L4_3 = L23_1
          L5_3 = A0_2.AnimationOptions
          L5_3 = L5_3.EmoteSpeed
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = faidebuganim
          L2_3 = "timeSpeed "
          L3_3 = L0_3
          L2_3 = L2_3 .. L3_3
          L1_3(L2_3)
        end
      end
      L3_2(L4_2)
  end
  else
    L3_2 = SetEntityAnimSpeed
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = L24_1
    L6_2 = L23_1
    L7_2 = 1.0
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = faidebuganim
  L4_2 = "Eseguo l'animazione"
  L3_2(L4_2)
  timerXAnim = 0
  L3_2 = RemoveAnimDict
  L4_2 = L24_1
  L3_2(L4_2)
  L3_2 = RemoveAnimSet
  L4_2 = L23_1
  L3_2(L4_2)
  L3_2 = ename
  if "Trascina" == L3_2 then
    L3_2 = ExecuteCommand
    L4_2 = "e cc"
    L3_2(L4_2)
    L3_2 = 33
    L26_1 = L3_2
  end
  L3_2 = true
  L25_1 = L3_2
  L3_2 = A0_2.AnimationOptions
  if L3_2 then
    L3_2 = {}
    lastPropsApplied = L3_2
    L3_2 = A0_2.AnimationOptions
    L3_2 = L3_2.Prop
    if L3_2 then
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.TimeProp2
      if nil ~= L3_2 then
        L3_2 = Wait
        L4_2 = A0_2.AnimationOptions
        L4_2 = L4_2.TimeProp2
        L3_2(L4_2)
        L3_2 = DestroyAllProps
        L3_2()
      end
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.Prop
      PropName = L3_2
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.PropHash
      PropNameHS = L3_2
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.PropBone
      PropBone = L3_2
      L3_2 = table
      L3_2 = L3_2.unpack
      L4_2 = A0_2.AnimationOptions
      L4_2 = L4_2.PropPlacement
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
      PropPl6 = L8_2
      PropPl5 = L7_2
      PropPl4 = L6_2
      PropPl3 = L5_2
      PropPl2 = L4_2
      PropPl1 = L3_2
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.SecondProp
      if L3_2 then
        L3_2 = A0_2.AnimationOptions
        L3_2 = L3_2.SecondProp
        SecondPropName = L3_2
        L3_2 = A0_2.AnimationOptions
        L3_2 = L3_2.SecondPropBone
        SecondPropBone = L3_2
        L3_2 = table
        L3_2 = L3_2.unpack
        L4_2 = A0_2.AnimationOptions
        L4_2 = L4_2.SecondPropPlacement
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
        SecondPropPl6 = L8_2
        SecondPropPl5 = L7_2
        SecondPropPl4 = L6_2
        SecondPropPl3 = L5_2
        SecondPropPl2 = L4_2
        SecondPropPl1 = L3_2
        L3_2 = true
        L29_1 = L3_2
      else
        L3_2 = false
        L29_1 = L3_2
      end
      L3_2 = PropName
      if "no" ~= L3_2 then
        L3_2 = L35_1
        L4_2 = PropName
        L5_2 = PropBone
        L6_2 = PropPl1
        L7_2 = PropPl2
        L8_2 = PropPl3
        L9_2 = PropPl4
        L10_2 = PropPl5
        L11_2 = PropPl6
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = lastPropsApplied
        L5_2 = {}
        L6_2 = PropName
        L5_2.model = L6_2
        L6_2 = PropBone
        L5_2.bone = L6_2
        L6_2 = {}
        L7_2 = PropPl1
        L6_2.x = L7_2
        L7_2 = PropPl2
        L6_2.y = L7_2
        L7_2 = PropPl3
        L6_2.z = L7_2
        L5_2.off = L6_2
        L6_2 = {}
        L7_2 = PropPl4
        L6_2.x = L7_2
        L7_2 = PropPl5
        L6_2.y = L7_2
        L7_2 = PropPl6
        L6_2.z = L7_2
        L5_2.rot = L6_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = L36_1
        L4_2 = PropNameHS
        L5_2 = PropBone
        L6_2 = PropPl1
        L7_2 = PropPl2
        L8_2 = PropPl3
        L9_2 = PropPl4
        L10_2 = PropPl5
        L11_2 = PropPl6
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = lastPropsApplied
        L5_2 = {}
        L6_2 = PropNameHS
        L5_2.model = L6_2
        L5_2.isHash = true
        L6_2 = PropBone
        L5_2.bone = L6_2
        L6_2 = {}
        L7_2 = PropPl1
        L6_2.x = L7_2
        L7_2 = PropPl2
        L6_2.y = L7_2
        L7_2 = PropPl3
        L6_2.z = L7_2
        L5_2.off = L6_2
        L6_2 = {}
        L7_2 = PropPl4
        L6_2.x = L7_2
        L7_2 = PropPl5
        L6_2.y = L7_2
        L7_2 = PropPl6
        L6_2.z = L7_2
        L5_2.rot = L6_2
        L3_2(L4_2, L5_2)
      end
      L3_2 = L29_1
      if L3_2 then
        L3_2 = L35_1
        L4_2 = SecondPropName
        L5_2 = SecondPropBone
        L6_2 = SecondPropPl1
        L7_2 = SecondPropPl2
        L8_2 = SecondPropPl3
        L9_2 = SecondPropPl4
        L10_2 = SecondPropPl5
        L11_2 = SecondPropPl6
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = lastPropsApplied
        L5_2 = {}
        L6_2 = SecondPropName
        L5_2.model = L6_2
        L6_2 = SecondPropBone
        L5_2.bone = L6_2
        L6_2 = {}
        L7_2 = SecondPropPl1
        L6_2.x = L7_2
        L7_2 = SecondPropPl2
        L6_2.y = L7_2
        L7_2 = SecondPropPl3
        L6_2.z = L7_2
        L5_2.off = L6_2
        L6_2 = {}
        L7_2 = SecondPropPl4
        L6_2.x = L7_2
        L7_2 = SecondPropPl5
        L6_2.y = L7_2
        L7_2 = SecondPropPl6
        L6_2.z = L7_2
        L5_2.rot = L6_2
        L3_2(L4_2, L5_2)
      end
    end
    L3_2 = A0_2.AnimationOptions
    L3_2 = L3_2.TimeProp
    if nil ~= L3_2 then
      L3_2 = faidebuganim
      L4_2 = "Anim time prop trovata"
      L3_2(L4_2)
      L3_2 = Wait
      L4_2 = A0_2.AnimationOptions
      L4_2 = L4_2.TimeProp
      L3_2(L4_2)
      L3_2 = DestroyAllProps
      L3_2()
    end
  end
  L3_2 = L22_1
  if nil ~= L3_2 then
    L3_2 = L22_1
    if L3_2 > 0 then
      L3_2 = A0_2.AnimationOptions
      L3_2 = L3_2.EmoteLoop
      if not L3_2 then
        L3_2 = Wait
        L4_2 = L22_1
        L3_2(L4_2)
        L3_2 = false
        L25_1 = L3_2
        L3_2 = exports
        L3_2 = L3_2.striano_editor
        L4_2 = L3_2
        L3_2 = L3_2.crouchato
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.inFullAnim
          L3_2 = L3_2(L4_2)
          if not L3_2 then
            L3_2 = IsControlPressed
            L4_2 = 0
            L5_2 = 24
            L3_2 = L3_2(L4_2, L5_2)
            if not L3_2 then
              L3_2 = Wait
              L4_2 = 100
              L3_2(L4_2)
              L3_2 = ExecuteCommand
              L4_2 = "e kneel3"
              L3_2(L4_2)
            end
          end
        end
      end
    end
  end
  vengoDaFaiAnim = false
  L3_2 = true
  return L3_2
end
OnEmotePlay = L37_1
L37_1 = exports
L38_1 = "faccioAnim"
function L39_1()
  local L0_2, L1_2
  L0_2 = L25_1
  return L0_2
end
L37_1(L38_1, L39_1)
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%l"
  L4_2 = string
  L4_2 = L4_2.upper
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if nil == A0_2 then
    return
  end
  L1_2 = L37_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  if nil ~= L2_2 and "reset" ~= L2_2 and "Reset" ~= L2_2 then
    L3_2 = SetFacialIdleAnimOverride
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = L2_2
    L6_2 = 0
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = faidebuganim
    L4_2 = L2_2
    L3_2(L4_2)
  elseif "reset" == L2_2 or "Reset" == L2_2 then
    L3_2 = ClearFacialClipsetOverride
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = ClearFacialIdleAnimOverride
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2(L4_2, L5_2, L6_2)
  end
end
EspCommandStart = L38_1
function L38_1()
  local L0_2, L1_2
  L0_2 = canOpenEmote
  L0_2 = L0_2()
  if L0_2 then
    PedMenuZoomMode = "body"
    L0_2 = ExecuteCommand
    L1_2 = "animcat"
    L0_2(L1_2)
  end
end
ShowMenuAnim = L38_1
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  if nil == A1_2 then
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = {}
      L12_2 = L8_2[3]
      L11_2.label = L12_2
      L11_2.value = L7_2
      L9_2(L10_2, L11_2)
    end
  else
    L3_2 = {}
    L3_2.label = "Reset"
    L3_2.value = "reset"
    L2_2[1] = L3_2
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = {}
      L11_2.label = L7_2
      L12_2 = L8_2[1]
      L11_2.value = L12_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
GetEmoteTable = L38_1
L38_1 = AddEventHandler
L39_1 = "FaiEspressione"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ExecuteCommand
  L2_2 = "face "
  L3_2 = A0_2[1]
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L38_1(L39_1, L40_1)
vengoDaFaiAnim = false
L38_1 = AddEventHandler
L39_1 = "FaiAnimazione"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  vengoDaFaiAnim = true
  L1_2 = ExecuteCommand
  L2_2 = "e "
  L3_2 = A0_2[1]
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L38_1(L39_1, L40_1)
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
CountAnims = L38_1
ANIMS_PER_PAGE = 100
CurrentAnimPage = 1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = SortAnimList
  L2_2 = GetEmoteTable
  L3_2 = DP
  L3_2 = L3_2.Emotes
  L4_2 = nil
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L2_2 = #L1_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = ANIMS_PER_PAGE
  L6_2 = L2_2 / L6_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2 or A0_2
  if not L4_2 then
    A0_2 = 1
  end
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 1
  L6_2 = math
  L6_2 = L6_2.min
  L7_2 = A0_2
  L8_2 = L3_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  A0_2 = L4_2
  CurrentAnimPage = A0_2
  L4_2 = A0_2 - 1
  L5_2 = ANIMS_PER_PAGE
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 + 1
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = ANIMS_PER_PAGE
  L6_2 = L4_2 + L6_2
  L6_2 = L6_2 - 1
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_fastmenu
  L7_2 = L6_2
  L6_2 = L6_2.clearMenu
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_fastmenu
  L7_2 = L6_2
  L6_2 = L6_2.addMenuItem
  L8_2 = "< (%s anims) %s/%s"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = L2_2
  L11_2 = A0_2
  L12_2 = L3_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  function L9_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "animcat"
    L0_3(L1_3)
  end
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  if L3_2 > A0_2 then
    L6_2 = exports
    L6_2 = L6_2.striano_fastmenu
    L7_2 = L6_2
    L6_2 = L6_2.addMenuItem
    L8_2 = "[ --> ]"
    function L9_2()
      local L0_3, L1_3
      L0_3 = OpenAnimListPage
      L1_3 = CurrentAnimPage
      L1_3 = L1_3 + 1
      L0_3(L1_3)
    end
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  if A0_2 > 1 then
    L6_2 = exports
    L6_2 = L6_2.striano_fastmenu
    L7_2 = L6_2
    L6_2 = L6_2.addMenuItem
    L8_2 = "[ <-- ]"
    function L9_2()
      local L0_3, L1_3
      L0_3 = OpenAnimListPage
      L1_3 = CurrentAnimPage
      L1_3 = L1_3 - 1
      L0_3(L1_3)
    end
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = L4_2
  L7_2 = L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L1_2[L9_2]
    L11_2 = L10_2.value
    L12_2 = exports
    L12_2 = L12_2.striano_fastmenu
    L13_2 = L12_2
    L12_2 = L12_2.addMenuItemAdvanced
    L14_2 = {}
    L15_2 = "["
    L16_2 = L9_2
    L17_2 = "] "
    L18_2 = L10_2.label
    L19_2 = " (/e "
    L20_2 = L11_2
    L21_2 = ")"
    L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L14_2.label = L15_2
    L14_2.autoClose = false
    function L15_2()
      local L0_3, L1_3
      L0_3 = ShowPed
      if L0_3 then
        L0_3 = ClonedPed
        if L0_3 then
          L0_3 = DoesEntityExist
          L1_3 = ClonedPed
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = ClearPedTasksImmediately
            L1_3 = ClonedPed
            L0_3(L1_3)
            L0_3 = EmoteCommandStart
            L1_3 = L11_2
            L0_3(L1_3)
          end
        end
      end
    end
    L14_2.onHover = L15_2
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = TriggerEvent
      L1_3 = "FaiAnimazione"
      L2_3 = {}
      L3_3 = L11_2
      L2_3[1] = L3_3
      L0_3(L1_3, L2_3)
    end
    L14_2.onClick = L15_2
    L12_2(L13_2, L14_2)
  end
  if L3_2 > A0_2 then
    L6_2 = exports
    L6_2 = L6_2.striano_fastmenu
    L7_2 = L6_2
    L6_2 = L6_2.addMenuItem
    L8_2 = "[ --> ]"
    function L9_2()
      local L0_3, L1_3
      L0_3 = OpenAnimListPage
      L1_3 = CurrentAnimPage
      L1_3 = L1_3 + 1
      L0_3(L1_3)
    end
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  if A0_2 > 1 then
    L6_2 = exports
    L6_2 = L6_2.striano_fastmenu
    L7_2 = L6_2
    L6_2 = L6_2.addMenuItem
    L8_2 = "[ <-- ]"
    function L9_2()
      local L0_3, L1_3
      L0_3 = OpenAnimListPage
      L1_3 = CurrentAnimPage
      L1_3 = L1_3 - 1
      L0_3(L1_3)
    end
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = exports
  L6_2 = L6_2.striano_fastmenu
  L7_2 = L6_2
  L6_2 = L6_2.openMenu
  L6_2(L7_2)
end
OpenAnimListPage = L38_1
L38_1 = AddEventHandler
L39_1 = "animpagenext"
function L40_1()
  local L0_2, L1_2
  L0_2 = OpenAnimListPage
  L1_2 = CurrentAnimPage
  L1_2 = L1_2 + 1
  L0_2(L1_2)
end
L38_1(L39_1, L40_1)
L38_1 = AddEventHandler
L39_1 = "animpageprev"
function L40_1()
  local L0_2, L1_2
  L0_2 = OpenAnimListPage
  L1_2 = CurrentAnimPage
  L1_2 = L1_2 - 1
  L0_2(L1_2)
end
L38_1(L39_1, L40_1)
L38_1 = false
L39_1 = RegisterCommand
L40_1 = "testray"
function L41_1()
  local L0_2, L1_2, L2_2
  L0_2 = L38_1
  L0_2 = not L0_2
  L38_1 = L0_2
  L0_2 = print
  L1_2 = "^3[TEST RAY]^7"
  L2_2 = L38_1
  if L2_2 then
    L2_2 = "ON"
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = "OFF"
  ::lbl_13::
  L0_2(L1_2, L2_2)
  L0_2 = L38_1
  if not L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3
    while true do
      L0_3 = L38_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = vector3
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.5
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3 = L1_3 + L2_3
      L2_3 = GetEntityCoords
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      L3_3 = vector3
      L4_3 = 0.0
      L5_3 = 0.0
      L6_3 = -5.0
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L2_3 + L3_3
      L3_3 = DrawLine
      L4_3 = L1_3.x
      L5_3 = L1_3.y
      L6_3 = L1_3.z
      L7_3 = L2_3.x
      L8_3 = L2_3.y
      L9_3 = L2_3.z
      L10_3 = 255
      L11_3 = 255
      L12_3 = 0
      L13_3 = 255
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L3_3 = StartShapeTestCapsule
      L4_3 = L1_3.x
      L5_3 = L1_3.y
      L6_3 = L1_3.z
      L7_3 = L2_3.x
      L8_3 = L2_3.y
      L9_3 = L2_3.z
      L10_3 = 0.15
      L11_3 = 511
      L12_3 = L0_3
      L13_3 = 0
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L4_3 = GetShapeTestResult
      L5_3 = L3_3
      L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3)
      while 1 == L4_3 do
        L9_3 = Wait
        L10_3 = 0
        L9_3(L10_3)
        L9_3 = GetShapeTestResult
        L10_3 = L3_3
        L9_3, L10_3, L11_3, L12_3, L13_3 = L9_3(L10_3)
        L8_3 = L13_3
        L7_3 = L12_3
        L6_3 = L11_3
        L5_3 = L10_3
        L4_3 = L9_3
      end
      if 1 == L5_3 then
        L9_3 = DrawMarker
        L10_3 = 28
        L11_3 = L6_3.x
        L12_3 = L6_3.y
        L13_3 = L6_3.z
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.0
        L17_3 = 0.0
        L18_3 = 0.0
        L19_3 = 0.0
        L20_3 = 0.12
        L21_3 = 0.12
        L22_3 = 0.12
        L23_3 = 255
        L24_3 = 0
        L25_3 = 0
        L26_3 = 255
        L27_3 = false
        L28_3 = true
        L29_3 = 2
        L30_3 = false
        L31_3 = false
        L32_3 = false
        L33_3 = false
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
        L9_3 = DrawLine
        L10_3 = L1_3.x
        L11_3 = L1_3.y
        L12_3 = L1_3.z
        L13_3 = L6_3.x
        L14_3 = L6_3.y
        L15_3 = L6_3.z
        L16_3 = 0
        L17_3 = 255
        L18_3 = 0
        L19_3 = 255
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        if 0 ~= L8_3 then
          L9_3 = DoesEntityExist
          L10_3 = L8_3
          L9_3 = L9_3(L10_3)
          if L9_3 then
            L9_3 = DrawText3D_TestRay
            L10_3 = L6_3.x
            L11_3 = L6_3.y
            L12_3 = L6_3.z
            L12_3 = L12_3 + 0.15
            L13_3 = "ENTITY: "
            L14_3 = L8_3
            L15_3 = " | MODEL: "
            L16_3 = GetEntityModel
            L17_3 = L8_3
            L16_3 = L16_3(L17_3)
            L13_3 = L13_3 .. L14_3 .. L15_3 .. L16_3
            L9_3(L10_3, L11_3, L12_3, L13_3)
        end
        else
          L9_3 = DrawText3D_TestRay
          L10_3 = L6_3.x
          L11_3 = L6_3.y
          L12_3 = L6_3.z
          L12_3 = L12_3 + 0.15
          L13_3 = "WORLD HIT | ENTITY: 0"
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
    end
  end
  L0_2(L1_2)
end
L39_1(L40_1, L41_1)
function L39_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = World3dToScreen2d
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L7_2 = SetTextScale
  L8_2 = 0.3
  L9_2 = 0.3
  L7_2(L8_2, L9_2)
  L7_2 = SetTextFont
  L8_2 = 0
  L7_2(L8_2)
  L7_2 = SetTextProportional
  L8_2 = 1
  L7_2(L8_2)
  L7_2 = SetTextCentre
  L8_2 = true
  L7_2(L8_2)
  L7_2 = SetTextColour
  L8_2 = 255
  L9_2 = 255
  L10_2 = 255
  L11_2 = 255
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = SetTextOutline
  L7_2()
  L7_2 = BeginTextCommandDisplayText
  L8_2 = "STRING"
  L7_2(L8_2)
  L7_2 = AddTextComponentSubstringPlayerName
  L8_2 = A3_2
  L7_2(L8_2)
  L7_2 = EndTextCommandDisplayText
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
DrawText3D_TestRay = L39_1
