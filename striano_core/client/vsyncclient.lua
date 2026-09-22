local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = {}
L2_1 = vector3
L3_1 = 0.0
L4_1 = 0.0
L5_1 = -120.0
L2_1 = L2_1(L3_1, L4_1, L5_1)
L1_1.coords = L2_1
L1_1.meteo = "FOGGY"
L1_1.range = 150.0
L1_1.ore = 19
L1_1.tc = "V_FIB_IT3_alt"
L1_1.tcp = 1.0
L2_1 = {}
L3_1 = vector3
L4_1 = 4591.632
L5_1 = -2191.721
L6_1 = 48.455
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.coords = L3_1
L2_1.meteo = "FOGGY"
L2_1.range = 150.0
L2_1.ore = 19
L2_1.tc = "WATER_silverlake"
L2_1.tcp = 0.9
L2_1.falldamage = false
L2_1.enemySpawnRange = 27.0
L3_1 = {}
L4_1 = vector3
L5_1 = 3813.173
L6_1 = -2939.818
L7_1 = 2.035
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.coords = L4_1
L3_1.meteo = "FOGGY"
L3_1.range = 150.0
L3_1.ore = 19
L3_1.tc = "WATER_silverlake"
L3_1.tcp = 0.9
L3_1.falldamage = false
L3_1.enemySpawnRange = 27.0
L4_1 = {}
L5_1 = vector3
L6_1 = -1078.572
L7_1 = -5243.869
L8_1 = 6.477
L5_1 = L5_1(L6_1, L7_1, L8_1)
L4_1.coords = L5_1
L4_1.meteo = "FOGGY"
L4_1.range = 150.0
L4_1.ore = 19
L4_1.tc = "WATER_silverlake"
L4_1.tcp = 0.9
L4_1.falldamage = false
L4_1.enemySpawnRange = 27.0
L5_1 = {}
L6_1 = vector3
L7_1 = -979.98
L8_1 = -6926.839
L9_1 = 5.0
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.coords = L6_1
L5_1.meteo = "SNOWLIGHT"
L5_1.range = 900.0
L5_1.ore = 20
L5_1.calmWater = true
L5_1.tc = "WATER_silty"
L5_1.tcp = 0.4
L6_1 = {}
L7_1 = vector3
L8_1 = -326.885
L9_1 = -5506.058
L10_1 = 5.249
L7_1 = L7_1(L8_1, L9_1, L10_1)
L6_1.coords = L7_1
L6_1.meteo = "SNOWLIGHT"
L6_1.range = 650.0
L6_1.ore = 10
L6_1.tc = "WATER_silty"
L6_1.tcp = 1.0
L6_1.enemySpawnRange = 25.0
L7_1 = {}
L8_1 = vector3
L9_1 = 3540.203
L10_1 = -6513.19
L11_1 = 6.162
L8_1 = L8_1(L9_1, L10_1, L11_1)
L7_1.coords = L8_1
L7_1.meteo = "SNOWLIGHT"
L7_1.range = 650.0
L7_1.ore = 10
L7_1.tc = "WATER_silty"
L7_1.tcp = 0.8
L7_1.enemySpawnRange = 15.0
L8_1 = {}
L9_1 = vector3
L10_1 = -528.026
L11_1 = 2043.931
L12_1 = 130.07
L9_1 = L9_1(L10_1, L11_1, L12_1)
L8_1.coords = L9_1
L8_1.meteo = "SNOWLIGHT"
L8_1.range = 150.0
L8_1.ore = 0
L8_1.tc = "winning_room"
L8_1.tcp = 1.08
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
SpecialCoords = L0_1
L0_1 = SetMillisecondsPerGameMinute
L1_1 = 0
L0_1(L1_1)
L0_1 = 0
L1_1 = 9000
NEBBIA = false
defaultMeteo = "SNOWLIGHT"
timerNebbia = 0.0
cyclenebbia = "NG_filmic11"
NebbiaCycleForce = 0.7
CoveredCycleForce = 0.25
defaultCycle = "heist_boat_norain"
defaultCycleForce = 0.2
defaultH = 19
L2_1 = {}
L3_1 = vector3
L4_1 = 3847.609
L5_1 = 6494.366
L6_1 = 10.309
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.pos = L3_1
L2_1.cycle = "morgue_dark_ovr"
L2_1.strenght = 2.0
L2_1.active = false
atmosferaDark = L2_1
L2_1 = exports
L3_1 = "nebbia"
function L4_1()
  local L0_2, L1_2
  L0_2 = NEBBIA
  return L0_2
end
L2_1(L3_1, L4_1)
CurrentWeather = "SNOWLIGHT"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SetWeatherTypeNowPersist
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ClearOverrideWeather
  L1_2()
  L1_2 = ClearWeatherTypePersist
  L1_2()
  L1_2 = SetWeatherTypePersist
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = SetWeatherTypeNow
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = SetWeatherTypeNowPersist
  L2_2 = A0_2
  L1_2(L2_2)
end
settamiMeteo = L2_1
L2_1 = RegisterNetEvent
L3_1 = "vSync:setOrario"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "vSync:setOrario"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetResourceState
  L3_2 = "striano_core"
  L2_2 = L2_2(L3_2)
  if "started" == L2_2 then
    L2_2 = GetResourceState
    L3_2 = "striano_editor"
    L2_2 = L2_2(L3_2)
    if "started" == L2_2 then
      L2_2 = NEBBIA
      if not L2_2 then
        L2_2 = exports
        L2_2 = L2_2.striano_editor
        L3_2 = L2_2
        L2_2 = L2_2.induskfalls
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = exports
          L2_2 = L2_2.striano_core
          L3_2 = L2_2
          L2_2 = L2_2.introBaseFinita
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = exports
            L2_2 = L2_2.striano_core
            L3_2 = L2_2
            L2_2 = L2_2.gettutorial
            L2_2 = L2_2(L3_2)
            if L2_2 then
              L2_2 = atmosferaDark
              L2_2 = L2_2.active
              if not L2_2 then
                L2_2 = GetEntityCoords
                L3_2 = PlayerPedId
                L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2()
                L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                L3_2 = nil
                L4_2 = ipairs
                L5_2 = SpecialCoords
                L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
                for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
                  L10_2 = L9_2.ore
                  if nil ~= L10_2 then
                    L10_2 = L9_2.meteo
                    if L10_2 then
                      L10_2 = L9_2.coords
                      L10_2 = L2_2 - L10_2
                      L10_2 = #L10_2
                      L11_2 = L9_2.range
                      if L10_2 < L11_2 then
                        L3_2 = L9_2
                        break
                      end
                    end
                  end
                end
                if L3_2 then
                  L4_2 = NetworkOverrideClockTime
                  L5_2 = L3_2.ore
                  L6_2 = 0
                  L7_2 = 0
                  L4_2(L5_2, L6_2, L7_2)
                  L4_2 = settamiMeteo
                  L5_2 = L3_2.meteo
                  L4_2(L5_2)
                else
                  L4_2 = settamiMeteo
                  L5_2 = CurrentWeather
                  L4_2(L5_2)
                  L4_2 = NetworkOverrideClockTime
                  L5_2 = A0_2
                  L6_2 = A1_2
                  L7_2 = 0
                  L4_2(L5_2, L6_2, L7_2)
                  defaultH = A0_2
                end
                L4_2 = Atmosfera
                L4_2()
              end
            end
          end
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "fogComing"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "fogComing"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetResourceState
  L3_2 = "striano_core"
  L2_2 = L2_2(L3_2)
  if "started" == L2_2 then
    L2_2 = GetResourceState
    L3_2 = "striano_combat"
    L2_2 = L2_2(L3_2)
    if "started" == L2_2 then
      L2_2 = NEBBIA
      if not L2_2 then
        L2_2 = exports
        L2_2 = L2_2.striano_core
        L3_2 = L2_2
        L2_2 = L2_2.gettutorial
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = exports
          L2_2 = L2_2.striano_core
          L3_2 = L2_2
          L2_2 = L2_2.sonoUnUccello
          L2_2 = L2_2(L3_2)
          if not L2_2 then
            L2_2 = exports
            L2_2 = L2_2.striano_combat
            L3_2 = L2_2
            L2_2 = L2_2.submex
            L4_2 = "Fog is coming in 2 minutes, find a safe place for the night."
            L2_2(L3_2, L4_2)
            L2_2 = PlaySoundFrontend
            L3_2 = -1
            L4_2 = "NET_RACE_START_EVENT_MASTER"
            L5_2 = "0"
            L6_2 = 1
            L2_2(L3_2, L4_2, L5_2, L6_2)
          end
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
xMasMode = false
L2_1 = exports
L3_1 = "inxmas"
function L4_1()
  local L0_2, L1_2
  L0_2 = xMasMode
  return L0_2
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = xMasMode
  L0_2 = not L0_2
  xMasMode = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "vSync:getSync"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
ActiveXmas = L2_1
L2_1 = exports
L3_1 = "ActiveXmas"
function L4_1()
  local L0_2, L1_2
  L0_2 = ActiveXmas
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "vSync:setMeteo"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "vSync:setMeteo"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = xMasMode
  if L1_2 then
    A0_2 = "XMAS"
  end
  if "XMAS" == A0_2 then
    L1_2 = SetForcePedFootstepsTracks
    L2_2 = true
    L1_2(L2_2)
    L1_2 = SetForceVehicleTrails
    L2_2 = true
    L1_2(L2_2)
  else
    L1_2 = SetForcePedFootstepsTracks
    L2_2 = false
    L1_2(L2_2)
    L1_2 = SetForceVehicleTrails
    L2_2 = false
    L1_2(L2_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.induskfalls
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.gettutorial
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L2_2 = ipairs
      L3_2 = SpecialCoords
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.coords
        L8_2 = L1_2 - L8_2
        L8_2 = #L8_2
        L9_2 = L7_2.range
        if L8_2 <= L9_2 then
          return
        end
      end
      CurrentWeather = A0_2
      L2_2 = SetWeatherTypeNowPersist
      L3_2 = A0_2
      L2_2(L3_2)
      L2_2 = ClearOverrideWeather
      L2_2()
      L2_2 = ClearWeatherTypePersist
      L2_2()
      L2_2 = SetWeatherTypePersist
      L3_2 = A0_2
      L2_2(L3_2)
      L2_2 = SetWeatherTypeNow
      L3_2 = A0_2
      L2_2(L3_2)
      L2_2 = SetWeatherTypeNowPersist
      L3_2 = A0_2
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "METEO SET: "
      L4_2 = A0_2
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
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
  L1_2 = TriggerServerEvent
  L2_2 = "vSync:getSync"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "onResourceStart"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = TriggerEvent
    L3_2 = "stopSodMusic"
    L4_2 = "darkpiano"
    L2_2(L3_2, L4_2)
    L2_2 = TriggerServerEvent
    L3_2 = "vSync:getSync"
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2 = L5_2()
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = IsEntityInWater
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if not L2_2 then
      L2_2 = ClearPedWetness
      L3_2 = PlayerPedId
      L3_2, L4_2, L5_2 = L3_2()
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = FreezeEntityPosition
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetArtificialLightsState
    L3_2 = false
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 3000
    L2_2(L3_2)
    L2_2 = InitMeteo
    L2_2()
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = StartShapeTestCapsule
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L9_2 = 0.25
  L10_2 = 1
  L11_2 = 0
  L12_2 = 7
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = GetShapeTestResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L7_2
  return L8_2, L9_2, L10_2
end
RayCastCustom = L2_1
L2_1 = false
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = GetEntityCoords
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2 = vector3
    L2_2 = L0_2.x
    L3_2 = L0_2.y
    L4_2 = 1000.0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = {}
    L2_2.r = 255
    L2_2.g = 0
    L2_2.b = 110
    L2_2.a = 200
    L3_2 = GetEntityCoords
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = RayCastCustom
    L5_2 = L1_2
    L6_2 = L0_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    if L6_2 > 0 then
      L7_2 = IsEntityInWater
      L8_2 = PlayerPedId
      L8_2, L9_2, L10_2 = L8_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L7_2 then
        L7_2 = BagnatoPioggia
        if L7_2 > -1.0 then
          L7_2 = BagnatoPioggia
          L7_2 = L7_2 - 0.01
          BagnatoPioggia = L7_2
          L7_2 = SetPedWetnessHeight
          L8_2 = PlayerPedId
          L8_2 = L8_2()
          L9_2 = BagnatoPioggia
          L7_2(L8_2, L9_2)
          L7_2 = BagnatoDa
          if L7_2 > 0 then
            BagnatoPioggia = -1.0
            L7_2 = ClearPedWetness
            L8_2 = PlayerPedId
            L8_2, L9_2, L10_2 = L8_2()
            L7_2(L8_2, L9_2, L10_2)
            ammalato = false
            BagnatoDa = 0
          end
        end
    end
    else
      L7_2 = true
      L8_2 = CurrentWeather
      if "RAIN" == L8_2 then
        L8_2 = BagnatoPioggia
        if -1.0 == L8_2 then
          L8_2 = IsEntityInWater
          L9_2 = PlayerPedId
          L9_2, L10_2 = L9_2()
          L8_2 = L8_2(L9_2, L10_2)
          if not L8_2 then
            L8_2 = ammalato
            if not L8_2 then
              L8_2 = IsPedInAnyVehicle
              L9_2 = PlayerPedId
              L9_2, L10_2 = L9_2()
              L8_2 = L8_2(L9_2, L10_2)
              if L8_2 then
                L7_2 = false
                L8_2 = GetVehiclePedIsIn
                L9_2 = PlayerPedId
                L9_2, L10_2 = L9_2()
                L8_2 = L8_2(L9_2, L10_2)
                L9_2 = GetVehicleTypeRaw
                L10_2 = L8_2
                L9_2 = L9_2(L10_2)
                if L9_2 >= 11 and L9_2 <= 13 then
                  L7_2 = true
                end
              end
              if L7_2 then
                L8_2 = L2_1
                if not L8_2 then
                  L8_2 = true
                  L2_1 = L8_2
                end
                L8_2 = Wait
                L9_2 = 5000
                L8_2(L9_2)
                L8_2 = ExecuteCommand
                L9_2 = "e cc"
                L8_2(L9_2)
              end
            end
          end
        end
      end
      if L7_2 then
        L8_2 = ammalato
        if not L8_2 then
          L8_2 = CurrentWeather
          if "RAIN" ~= L8_2 then
            L8_2 = IsEntityInWater
            L9_2 = PlayerPedId
            L9_2, L10_2 = L9_2()
            L8_2 = L8_2(L9_2, L10_2)
          end
          if L8_2 then
            L8_2 = BagnatoPioggia
            L8_2 = L8_2 + 0.01
            BagnatoPioggia = L8_2
            L8_2 = BagnatoPioggia
            L9_2 = -0.1
            if L8_2 > L9_2 then
              BagnatoPioggia = -0.1
              L8_2 = BagnatoDa
              L8_2 = L8_2 + 1
              BagnatoDa = L8_2
            else
              L8_2 = SetPedWetnessHeight
              L9_2 = PlayerPedId
              L9_2 = L9_2()
              L10_2 = BagnatoPioggia
              L8_2(L9_2, L10_2)
            end
            L8_2 = BagnatoDa
            if 30 == L8_2 then
              L8_2 = exports
              L8_2 = L8_2.striano_combat
              L9_2 = L8_2
              L8_2 = L8_2.testo3d
              L10_2 = "You feel sick."
              L8_2(L9_2, L10_2)
            else
              L8_2 = BagnatoDa
              if 60 == L8_2 then
                L8_2 = ExecuteCommand
                L9_2 = "e cough"
                L8_2(L9_2)
                BagnatoDa = 0
                L8_2 = exports
                L8_2 = L8_2.striano_combat
                L9_2 = L8_2
                L8_2 = L8_2.testo3d
                L10_2 = "You are sick."
                L8_2(L9_2, L10_2)
                ammalato = true
              else
              end
            end
          end
        end
      else
        L8_2 = print
        L9_2 = "Non continuo perch\195\168 risulto coperto in altri modi, tipo veicolo."
        L8_2(L9_2)
      end
    end
  else
    L0_2 = Wait
    L1_2 = 5000
    L0_2(L1_2)
  end
end
SottoLaPioggia = L3_1
checkingCovered = false
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = 35.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = {}
  L3_2.r = 255
  L3_2.g = 0
  L3_2.b = 110
  L3_2.a = 200
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = RayCastCustom
  L6_2 = L2_2
  L7_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  if L7_2 > 0 then
    L8_2 = true
    return L8_2
  else
    L8_2 = false
    return L8_2
  end
end
imCovered = L3_1
L3_1 = RegisterCommand
L4_1 = "pioggia"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  if 1 == L3_2 then
    L3_2 = print
    L4_2 = "Var Pioggia: "
    L5_2 = BagnatoPioggia
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L3_2 = CurrentWeather
  if "RAIN" == L3_2 then
    L3_2 = GetEntityCoords
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = vector3
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L7_2 = 1000.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = {}
    L5_2.r = 255
    L5_2.g = 0
    L5_2.b = 110
    L5_2.a = 200
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = RayCastCustom
    L8_2 = L4_2
    L9_2 = L3_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    if L9_2 > 0 then
      L10_2 = IsEntityInWater
      L11_2 = PlayerPedId
      L11_2, L12_2 = L11_2()
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L10_2 = exports
        L10_2 = L10_2.striano_combat
        L11_2 = L10_2
        L10_2 = L10_2.testo3d
        L12_2 = "Covered from water."
        L10_2(L11_2, L12_2)
    end
    else
      L10_2 = exports
      L10_2 = L10_2.striano_combat
      L11_2 = L10_2
      L10_2 = L10_2.testo3d
      L12_2 = "Not covered from wataer."
      L10_2(L11_2, L12_2)
    end
  else
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.testo3d
    L5_2 = "Not rain."
    L3_2(L4_2, L5_2)
  end
end
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    while true do
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 - L0_3
      L2_3 = math
      L2_3 = L2_3.min
      L3_3 = A2_2
      L3_3 = L1_3 / L3_3
      L4_3 = 1.0
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = A0_2
      L4_3 = A1_2
      L5_3 = A0_2
      L4_3 = L4_3 - L5_3
      L4_3 = L4_3 * L2_3
      L3_3 = L3_3 + L4_3
      L4_3 = SetTimecycleModifierStrength
      L5_3 = L3_3
      L4_3(L5_3)
      if L2_3 >= 1.0 then
        break
      end
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
    end
    L1_3 = SetTimecycleModifierStrength
    L2_3 = A1_2
    L1_3(L2_3)
  end
  L3_2(L4_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L5_2 = L5_2 + 50.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = RayCastCustom
  L5_2 = L2_2
  L6_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L7_2 = L6_2 > 0
  return L7_2
end
GetCoperto = L4_1
SonoCoperto = false
L4_1 = RegisterNetEvent
L5_1 = "startNebbia"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "startNebbia"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = exports
    L2_2 = L2_2.striano_core
    L3_2 = L2_2
    L2_2 = L2_2.sonoUnUccello
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = exports
      L2_2 = L2_2.striano_core
      L3_2 = L2_2
      L2_2 = L2_2.introBaseFinita
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = vector3
        L3_2 = 3836.253
        L4_2 = 6438.734
        L5_2 = 0.613
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L2_2 = L1_2 - L2_2
        L2_2 = #L2_2
        if L2_2 > 15.0 then
          L2_2 = L1_2.z
          if L2_2 > -10.0 then
            L2_2 = IsEntityPlayingAnim
            L3_2 = L0_2
            L4_2 = "missfam1_yachtbattleonyacht02_"
            L5_2 = "onboom_hangloop_j"
            L6_2 = 1
            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
            if not L2_2 then
              L2_2 = NEBBIA
              if not L2_2 then
                L2_2 = print
                L3_2 = "NIGHT FOG IS HERE!"
                L2_2(L3_2)
                NEBBIA = true
                L2_2 = SetTimecycleModifier
                L3_2 = cyclenebbia
                L2_2(L3_2)
                L2_2 = SetTimecycleModifierStrength
                L3_2 = NebbiaCycleForce
                L2_2(L3_2)
                L2_2 = NetworkOverrideClockTime
                L3_2 = 0
                L4_2 = 0
                L5_2 = 0
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = "FOGGY"
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
                L3_2 = PlaySoundFrontend
                L4_2 = -1
                L5_2 = "Parcel_Vehicle_Lost"
                L6_2 = "GTAO_FM_Events_Soundset"
                L7_2 = 0
                L3_2(L4_2, L5_2, L6_2, L7_2)
                L3_2 = exports
                L3_2 = L3_2.striano_combat
                L4_2 = L3_2
                L3_2 = L3_2.submex
                L5_2 = "Night is here, stay covered and use torch to survive the darkness. Check the end timer on top right of screen."
                L3_2(L4_2, L5_2)
                L3_2 = PlaySoundFrontend
                L4_2 = -1
                L5_2 = "Object_Dropped_Remote"
                L6_2 = "GTAO_FM_Events_Soundset"
                L7_2 = 0
                L3_2(L4_2, L5_2, L6_2, L7_2)
                L3_2 = "sounds/darkpiano.mp3"
                L4_2 = exports
                L4_2 = L4_2.xsound
                L5_2 = L4_2
                L4_2 = L4_2.PlayUrl
                L6_2 = "darkpiano"
                L7_2 = L3_2
                L8_2 = 0.01
                L9_2 = true
                L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
                L4_2 = ExecuteCommand
                L5_2 = "clearWaypoints"
                L4_2(L5_2)
                L4_2 = GetCoperto
                L5_2 = L0_2
                L4_2 = L4_2(L5_2)
                L5_2 = InSafeZone
                L5_2 = L5_2()
                L6_2 = exports
                L6_2 = L6_2.striano_editor
                L7_2 = L6_2
                L6_2 = L6_2.lightProp
                L6_2 = L6_2(L7_2)
                L7_2 = false
                L8_2 = CreateThread
                function L9_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
                  while true do
                    L0_3 = NEBBIA
                    if not L0_3 then
                      break
                    end
                    L0_3 = Wait
                    L1_3 = 0
                    L0_3(L1_3)
                    L0_3 = L7_2
                    if not L0_3 then
                      L0_3 = L6_2
                      if not L0_3 then
                        L0_3 = IsEntityInWater
                        L1_3 = L0_2
                        L0_3 = L0_3(L1_3)
                        if not L0_3 then
                          goto lbl_79
                        end
                      end
                    end
                    L0_3 = 1.3
                    L1_3 = IsEntityInWater
                    L2_3 = L0_2
                    L1_3 = L1_3(L2_3)
                    if L1_3 then
                      L0_3 = 2.5
                    end
                    L1_3 = GetEntityCoords
                    L2_3 = L0_2
                    L1_3 = L1_3(L2_3)
                    L2_3 = GetEntityForwardVector
                    L3_3 = L0_2
                    L2_3 = L2_3(L3_3)
                    L3_3 = L2_3 * 1.0
                    L3_3 = L1_3 + L3_3
                    L4_3 = GetEntityRotation
                    L5_3 = L0_2
                    L4_3 = L4_3(L5_3)
                    L5_3 = DrawSpotLightWithShadow
                    L6_3 = L3_3.x
                    L7_3 = L3_3.y
                    L8_3 = L3_3.z
                    L8_3 = L8_3 + L0_3
                    L9_3 = L4_3.x
                    L10_3 = L4_3.y
                    L11_3 = L4_3.z
                    L11_3 = L11_3 - 180
                    L12_3 = 255
                    L13_3 = 90
                    L14_3 = 10
                    L15_3 = 7.0
                    L16_3 = 0.15
                    L17_3 = 5.0
                    L18_3 = 150.0
                    L19_3 = 10.0
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                    L5_3 = DrawSpotLightWithShadow
                    L6_3 = L3_3.x
                    L7_3 = L3_3.y
                    L8_3 = L3_3.z
                    L8_3 = L8_3 + L0_3
                    L9_3 = L4_3.x
                    L10_3 = L4_3.y
                    L11_3 = L4_3.z
                    L11_3 = L11_3 - 180
                    L12_3 = 255
                    L13_3 = 90
                    L14_3 = 10
                    L15_3 = 7.0
                    L16_3 = 0.15
                    L17_3 = 5.0
                    L18_3 = 150.0
                    L19_3 = 10.0
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                    goto lbl_82
                    ::lbl_79::
                    L0_3 = Wait
                    L1_3 = 1000
                    L0_3(L1_3)
                    ::lbl_82::
                  end
                end
                L8_2(L9_2)
                L8_2 = CreateThread
                function L9_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
                  while true do
                    L0_3 = NEBBIA
                    if not L0_3 then
                      break
                    end
                    L0_3 = Wait
                    L1_3 = 1000
                    L0_3(L1_3)
                    L0_3 = PlayerPedId
                    L0_3 = L0_3()
                    L1_3 = GetGameTimer
                    L1_3 = L1_3()
                    L2_3 = exports
                    L2_3 = L2_3.striano_editor
                    L3_3 = L2_3
                    L2_3 = L2_3.lightProp
                    L2_3 = L2_3(L3_3)
                    L6_2 = L2_3
                    L2_3 = GetCoperto
                    L3_3 = L0_3
                    L2_3 = L2_3(L3_3)
                    if not L2_3 then
                      L2_3 = L6_2
                    end
                    L4_2 = L2_3
                    L2_3 = InSafeZone
                    L2_3 = L2_3()
                    L5_2 = L2_3
                    L2_3 = L5_2
                    if L2_3 then
                      L2_3 = L4_2
                      if L2_3 then
                        L2_3 = true
                        L7_2 = L2_3
                    end
                    else
                      L2_3 = false
                      L7_2 = L2_3
                    end
                    L2_3 = L4_2
                    if L2_3 then
                      L2_3 = IsPedRagdoll
                      L3_3 = L0_3
                      L2_3 = L2_3(L3_3)
                      if not L2_3 then
                        L2_3 = IsPedFatallyInjured
                        L3_3 = L0_3
                        L2_3 = L2_3(L3_3)
                        if not L2_3 then
                          L2_3 = SonoCoperto
                          if not L2_3 then
                            L2_3 = L3_1
                            L3_3 = NebbiaCycleForce
                            L4_3 = CoveredCycleForce
                            L5_3 = 3000
                            L2_3(L3_3, L4_3, L5_3)
                            SonoCoperto = true
                            L2_3 = exports
                            L2_3 = L2_3.striano_combat
                            L3_3 = L2_3
                            L2_3 = L2_3.testo3d
                            L4_3 = "Covered from Fog"
                            L2_3(L3_3, L4_3)
                            L2_3 = L1_1
                            L2_3 = L1_3 + L2_3
                            L0_1 = L2_3
                            L2_3 = IsEntityPlayingAnim
                            L3_3 = L0_3
                            L4_3 = "anim@heists@ornate_bank@thermal_charge"
                            L5_3 = "cover_eyes_loop"
                            L6_3 = 3
                            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                            if L2_3 then
                              L2_3 = ExecuteCommand
                              L3_3 = "e cc"
                              L2_3(L3_3)
                            end
                          end
                      end
                    end
                    else
                      L2_3 = SonoCoperto
                      if L2_3 then
                        L2_3 = IsPedRagdoll
                        L3_3 = L0_3
                        L2_3 = L2_3(L3_3)
                        if not L2_3 then
                          L2_3 = IsPedFatallyInjured
                          L3_3 = L0_3
                          L2_3 = L2_3(L3_3)
                          if not L2_3 then
                            L2_3 = L3_1
                            L3_3 = CoveredCycleForce
                            L4_3 = NebbiaCycleForce
                            L5_3 = 3000
                            L2_3(L3_3, L4_3, L5_3)
                            SonoCoperto = false
                            L2_3 = Citizen
                            L2_3 = L2_3.InvokeNative
                            L3_3 = -7918206464511161279
                            L4_3 = L0_3
                            L2_3 = L2_3(L3_3, L4_3)
                            if not L2_3 then
                              L2_3 = ExecuteCommand
                              L3_3 = "e occhi"
                              L2_3(L3_3)
                              L2_3 = L1_1
                              L2_3 = L1_3 + L2_3
                              L0_1 = L2_3
                              L2_3 = exports
                              L2_3 = L2_3.striano_combat
                              L3_3 = L2_3
                              L2_3 = L2_3.testo3d
                              L4_3 = "You feel the Fog"
                              L2_3(L3_3, L4_3)
                              L2_3 = Wait
                              L3_3 = 1500
                              L2_3(L3_3)
                              L2_3 = IsEntityPlayingAnim
                              L3_3 = L0_3
                              L4_3 = "anim@heists@ornate_bank@thermal_charge"
                              L5_3 = "cover_eyes_loop"
                              L6_3 = 3
                              L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                              if L2_3 then
                                L2_3 = ExecuteCommand
                                L3_3 = "e cc"
                                L2_3(L3_3)
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                  L0_3 = TriggerEvent
                  L1_3 = "stopSodMusic"
                  L2_3 = "darkpiano"
                  L0_3(L1_3, L2_3)
                end
                L8_2(L9_2)
                L8_2 = GetGameTimer
                L8_2 = L8_2()
                L8_2 = L8_2 + 25000
                while true do
                  L9_2 = GetGameTimer
                  L9_2 = L9_2()
                  if not (L8_2 > L9_2) then
                    break
                  end
                  L9_2 = Wait
                  L10_2 = 0
                  L9_2(L10_2)
                  L9_2 = NEBBIA
                  if not L9_2 then
                    return
                  end
                end
                L9_2 = Wait
                L10_2 = 25000
                L9_2(L10_2)
                L9_2 = NEBBIA
                if L9_2 then
                  L9_2 = EnemySpawner
                  L10_2 = nil
                  L11_2 = true
                  L9_2(L10_2, L11_2)
                end
              else
                L2_2 = print
                L3_2 = "Still Night fog!"
                L2_2(L3_2)
              end
          end
        end
      end
    end
    else
      L2_2 = print
      L3_2 = "Non hai ancora fatto il tutorial per attivare la nebbia."
      L2_2(L3_2)
    end
  else
    L0_2 = print
    L1_2 = "Tutorial not complete for Fog Night!"
    L0_2(L1_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterCommand
L5_1 = "localFog"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = NEBBIA
  L0_2 = not L0_2
  NEBBIA = L0_2
  L0_2 = NEBBIA
  if not L0_2 then
    L0_2 = TriggerEvent
    L1_2 = "endNebbia"
    L0_2(L1_2)
  else
    NEBBIA = false
    L0_2 = TriggerEvent
    L1_2 = "startNebbia"
    L0_2(L1_2)
    L0_2 = Wait
    L1_2 = 1500
    L0_2(L1_2)
    L0_2 = NetworkOverrideClockTime
    L1_2 = 0
    L2_2 = 0
    L3_2 = 0
    L0_2(L1_2, L2_2, L3_2)
    defaultH = 0
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "endNebbia"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "endNebbia"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "missfam1_yachtbattleonyacht02_"
    L4_2 = "onboom_hangloop_j"
    L5_2 = 1
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = NEBBIA
      if L1_2 then
        NEBBIA = false
        timerNebbia = 0.0
        L1_2 = Wait
        L2_2 = 1500
        L1_2(L2_2)
        L1_2 = ExecuteCommand
        L2_2 = "Atmosfera"
        L1_2(L2_2)
        L1_2 = Wait
        L2_2 = 1500
        L1_2(L2_2)
        L1_2 = IsEntityAttached
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = SonoCoperto
          if not L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_editor
            L2_2 = L1_2
            L1_2 = L1_2.isProne
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = IsEntityInWater
              L2_2 = L0_2
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = ExecuteCommand
                L2_2 = "e malditesta"
                L3_2 = math
                L3_2 = L3_2.random
                L4_2 = 2
                L5_2 = 4
                L3_2 = L3_2(L4_2, L5_2)
                L2_2 = L2_2 .. L3_2
                L1_2(L2_2)
              end
            end
          end
        end
        L1_2 = exports
        L1_2 = L1_2.striano_combat
        L2_2 = L1_2
        L1_2 = L1_2.submex
        L3_2 = "Night is over."
        L1_2(L2_2, L3_2)
        L1_2 = SetArtificialLightsState
        L2_2 = false
        L1_2(L2_2)
        L1_2 = ExecuteCommand
        L2_2 = "delEnemy"
        L1_2(L2_2)
        L1_2 = PlaySoundFrontend
        L2_2 = -1
        L3_2 = "Player_Exit_Line"
        L4_2 = "GTAO_FM_Cross_The_Line_Soundset"
        L5_2 = 0
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = Wait
        L2_2 = 1500
        L1_2(L2_2)
        L1_2 = SonoCoperto
        if not L1_2 then
          L1_2 = exports
          L1_2 = L1_2.striano_editor
          L2_2 = L1_2
          L1_2 = L1_2.isProne
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = TriggerEvent
            L2_2 = "funcUccellini"
            L1_2(L2_2)
            L1_2 = ExecuteCommand
            L2_2 = "fixcrouch"
            L1_2(L2_2)
          end
        end
        SonoCoperto = false
      end
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = {}
L5_1 = {}
L5_1.interaction = 7
L5_1.time = 800
L6_1 = {}
L6_1.interaction = 8
L6_1.time = 800
L7_1 = {}
L7_1.interaction = 10
L7_1.time = 800
L8_1 = {}
L8_1.interaction = 11
L8_1.time = 800
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = math
  L0_2 = L0_2.randomseed
  L1_2 = GetGameTimer
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 1
  L2_2 = L4_1
  L2_2 = #L2_2
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L4_1
  L1_2 = L1_2[L0_2]
  return L1_2
end
fuckDrunkDriver = L5_1
L5_1 = RegisterCommand
L6_1 = "fischio"
function L7_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "e whistle"
  L0_2(L1_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = "fischia"
function L7_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "e whistle"
  L0_2(L1_2)
end
L5_1(L6_1, L7_1)
L5_1 = false
L6_1 = false
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = not A0_2
  L5_1 = L1_2
  L1_2 = L5_1
  if L1_2 then
    L1_2 = L6_1
    if not L1_2 then
      L1_2 = true
      L6_1 = L1_2
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        L0_3 = false
        L1_3 = 0
        while true do
          L2_3 = L5_1
          if not L2_3 then
            break
          end
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L3_3 = Wait
          L4_3 = 0
          L3_3(L4_3)
          L3_3 = IsPedRagdoll
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = GetEntityHeightAboveGround
            L4_3 = L2_3
            L3_3 = L3_3(L4_3)
            if not L0_3 and L3_3 > 1.0 then
              L0_3 = true
              L4_3 = math
              L4_3 = L4_3.random
              L5_3 = 1
              L6_3 = 2
              L4_3 = L4_3(L5_3, L6_3)
              if 1 == L4_3 then
                L5_3 = ExecuteCommand
                L6_3 = "addSporco"
                L5_3(L6_3)
              else
                L5_3 = ExecuteCommand
                L6_3 = "addSangue"
                L5_3(L6_3)
              end
              L5_3 = SetEntityInvincible
              L6_3 = L2_3
              L7_3 = true
              L5_3(L6_3, L7_3)
              L5_3 = print
              L6_3 = "Invincibile!"
              L5_3(L6_3)
            end
          elseif L0_3 then
            L0_3 = false
            L3_3 = SetEntityInvincible
            L4_3 = L2_3
            L5_3 = false
            L3_3(L4_3, L5_3)
            L3_3 = GetEntityHealth
            L4_3 = L2_3
            L3_3 = L3_3(L4_3)
            L4_3 = L3_3 - 10
            if L4_3 > 110 then
              L4_3 = SetEntityHealth
              L5_3 = L2_3
              L6_3 = L3_3 - 10
              L4_3(L5_3, L6_3)
            end
            L4_3 = print
            L5_3 = "Ritorno normale not invicible!"
            L4_3(L5_3)
          end
        end
        L2_3 = false
        L6_1 = L2_3
      end
      L1_2(L2_2)
    end
  end
end
SetPlayerFallDamage = L7_1
L7_1 = nil
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 9999.0
  if nil ~= A0_2 then
    L2_2 = A0_2
  end
  L3_2 = nil
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = 0.75
  L6_2 = 30000
  L7_2 = L7_1
  if nil == L7_2 then
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L7_2 = L7_2(L8_2)
    L7_1 = L7_2
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
      while true do
        L0_3 = L7_1
        if nil == L0_3 then
          break
        end
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
        L1_3 = L7_1
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        L1_3 = 150
        if not (L0_3 < L1_3) then
          break
        end
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        L2_3 = A1_2
        if nil ~= L2_3 then
          L2_3 = NEBBIA
          if not L2_3 then
            L2_3 = print
            L3_3 = "EnemySpawner FORCE CLOSED!"
            L2_3(L3_3)
            return
          end
        end
        L2_3 = L0_1
        if L1_3 >= L2_3 then
          L2_3 = IsPedInAnyVehicle
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = 3000
            L1_1 = L2_3
          end
          L2_3 = L1_1
          L2_3 = L1_3 + L2_3
          L0_1 = L2_3
          L2_3 = exports
          L2_3 = L2_3.striano_editor
          L3_3 = L2_3
          L2_3 = L2_3.isProne
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = IsPedWalking
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = inSafe
              if not L2_3 then
                L2_3 = SonoCoperto
                if not L2_3 then
                  L2_3 = IsPedFatallyInjured
                  L3_3 = L0_3
                  L2_3 = L2_3(L3_3)
                  if not L2_3 then
                    L2_3 = exports
                    L2_3 = L2_3.striano_editor
                    L3_3 = L2_3
                    L2_3 = L2_3.crouchato
                    L2_3 = L2_3(L3_3)
                    if not L2_3 then
                      L2_3 = exports
                      L2_3 = L2_3.striano_editor
                      L3_3 = L2_3
                      L2_3 = L2_3.stealth
                      L2_3 = L2_3(L3_3)
                      if not L2_3 then
                        L2_3 = IsEntityAttached
                        L3_3 = L0_3
                        L2_3 = L2_3(L3_3)
                        if not L2_3 then
                          L2_3 = GetEntityCoords
                          L3_3 = L0_3
                          L2_3 = L2_3(L3_3)
                          L3_3 = L3_2
                          if not L3_3 then
                            L3_2 = L2_3
                            L4_2 = L1_3
                          end
                          L3_3 = L3_2
                          L3_3 = L2_3 - L3_3
                          L3_3 = #L3_3
                          L4_3 = L5_2
                          L3_3 = L3_3 < L4_3
                          L4_3 = false
                          if L3_3 then
                            L5_3 = L4_2
                            L5_3 = L1_3 - L5_3
                            L6_3 = L6_2
                            L4_3 = L5_3 >= L6_3
                          else
                            L3_2 = L2_3
                            L4_2 = L1_3
                          end
                          if not (not L3_3 or L4_3) then
                            goto lbl_278
                          end
                          L5_3 = 1
                          L6_3 = true
                          L7_3 = A1_2
                          if nil ~= L7_3 then
                            L7_3 = NEBBIA
                            if not L7_3 then
                              L6_3 = false
                            end
                          end
                          if L6_3 and 1 == L5_3 then
                            L7_3 = L2_3.z
                            L8_3 = L2_2
                            if L7_3 < L8_3 then
                              L7_3 = {}
                              L8_3 = "horror"
                              L9_3 = "boarz"
                              L10_3 = "spider"
                              L11_3 = "skeleton"
                              L12_3 = "coyote"
                              L7_3[1] = L8_3
                              L7_3[2] = L9_3
                              L7_3[3] = L10_3
                              L7_3[4] = L11_3
                              L7_3[5] = L12_3
                              L8_3 = math
                              L8_3 = L8_3.random
                              L9_3 = 1
                              L10_3 = #L7_3
                              L8_3 = L8_3(L9_3, L10_3)
                              L8_3 = L7_3[L8_3]
                              L9_3 = GetEntityCoords
                              L10_3 = L0_3
                              L9_3 = L9_3(L10_3)
                              L10_3 = GetEntityCoords
                              L11_3 = L0_3
                              L10_3 = L10_3(L11_3)
                              L11_3 = 7.0
                              if "boarz" == L8_3 then
                                L11_3 = 14.0
                              end
                              while true do
                                L12_3 = GetEntityCoords
                                L13_3 = L0_3
                                L12_3 = L12_3(L13_3)
                                L12_3 = L10_3 - L12_3
                                L12_3 = #L12_3
                                if not (L11_3 > L12_3) then
                                  break
                                end
                                L12_3 = Wait
                                L13_3 = 500
                                L12_3(L13_3)
                                L12_3 = L1_1
                                L12_3 = L1_3 + L12_3
                                L0_1 = L12_3
                              end
                              L12_3 = NEBBIA
                              if L12_3 then
                                L12_3 = inSafe
                                if not L12_3 then
                                  L12_3 = SonoCoperto
                                  if not L12_3 then
                                    L12_3 = IsPedFatallyInjured
                                    L13_3 = L0_3
                                    L12_3 = L12_3(L13_3)
                                    if not L12_3 then
                                      L12_3 = exports
                                      L12_3 = L12_3.striano_editor
                                      L13_3 = L12_3
                                      L12_3 = L12_3.crouchato
                                      L12_3 = L12_3(L13_3)
                                      if not L12_3 then
                                        L12_3 = exports
                                        L12_3 = L12_3.striano_editor
                                        L13_3 = L12_3
                                        L12_3 = L12_3.stealth
                                        L12_3 = L12_3(L13_3)
                                        if not L12_3 then
                                          L12_3 = IsEntityAttached
                                          L13_3 = L0_3
                                          L12_3 = L12_3(L13_3)
                                          if not L12_3 then
                                            if "horror" == L8_3 then
                                              L12_3 = exports
                                              L12_3 = L12_3.striano_combat
                                              L13_3 = L12_3
                                              L12_3 = L12_3.spawnHorrorActive
                                              L14_3 = L9_3
                                              L12_3(L13_3, L14_3)
                                            elseif "boarz" == L8_3 then
                                              L12_3 = exports
                                              L12_3 = L12_3.striano_combat
                                              L13_3 = L12_3
                                              L12_3 = L12_3.cinghialez
                                              L14_3 = L9_3
                                              L12_3(L13_3, L14_3)
                                            elseif "spider" == L8_3 then
                                              L12_3 = exports
                                              L12_3 = L12_3.striano_combat
                                              L13_3 = L12_3
                                              L12_3 = L12_3.spiderz
                                              L14_3 = L9_3
                                              L12_3(L13_3, L14_3)
                                            elseif "skeleton" == L8_3 then
                                              L12_3 = exports
                                              L12_3 = L12_3.striano_combat
                                              L13_3 = L12_3
                                              L12_3 = L12_3.spawnSkeleton
                                              L14_3 = L9_3
                                              L12_3(L13_3, L14_3)
                                            elseif "coyote" == L8_3 then
                                              L12_3 = exports
                                              L12_3 = L12_3.striano_combat
                                              L13_3 = L12_3
                                              L12_3 = L12_3.spawnCoyoteEnemy
                                              L14_3 = L9_3
                                              L15_3 = "a_c_coyote"
                                              L12_3(L13_3, L14_3, L15_3)
                                            end
                                            L12_3 = GetEntityCoords
                                            L13_3 = L0_3
                                            L12_3 = L12_3(L13_3)
                                            L10_3 = L12_3
                                            L11_3 = L11_3 / 2
                                            while true do
                                              L12_3 = GetEntityCoords
                                              L13_3 = L0_3
                                              L12_3 = L12_3(L13_3)
                                              L12_3 = L10_3 - L12_3
                                              L12_3 = #L12_3
                                              if not (L11_3 > L12_3) then
                                                break
                                              end
                                              L12_3 = Wait
                                              L13_3 = 500
                                              L12_3(L13_3)
                                              L12_3 = L1_1
                                              L12_3 = L1_3 + L12_3
                                              L0_1 = L12_3
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
                          if L4_3 then
                            L4_2 = L1_3
                            L3_2 = L2_3
                          end
                      end
                    end
                  end
                end
              end
            end
          end
          else
            L2_3 = nil
            L3_2 = L2_3
            L4_2 = L1_3
          end
        end
        ::lbl_278::
      end
      L0_3 = nil
      L7_1 = L0_3
    end
    L7_2(L8_2)
  end
end
EnemySpawner = L8_1
shiftLimiterActive = false
function L8_1()
  local L0_2, L1_2
  L0_2 = shiftLimiterActive
  if L0_2 then
    return
  end
  shiftLimiterActive = true
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = shiftLimiterActive
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = SetPedMaxMoveBlendRatio
      L2_3 = L0_3
      L3_3 = 2.0
      L1_3(L2_3, L3_3)
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
StartShiftLimiter = L8_1
function L8_1()
  local L0_2, L1_2
  shiftLimiterActive = false
end
StopShiftLimiter = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = PlayerId
  L1_2 = L1_2()
  L2_2 = SetPedMaxMoveBlendRatio
  L3_2 = L0_2
  L4_2 = 10.0
  L2_2(L3_2, L4_2)
  L2_2 = SetPedMinMoveBlendRatio
  L3_2 = L0_2
  L4_2 = 0.0
  L2_2(L3_2, L4_2)
  L2_2 = SetPedMoveRateOverride
  L3_2 = L0_2
  L4_2 = 1.0
  L2_2(L3_2, L4_2)
  L2_2 = SetRunSprintMultiplierForPlayer
  L3_2 = L1_2
  L4_2 = 1.0
  L2_2(L3_2, L4_2)
  L2_2 = SetPlayerSprint
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = ResetPedMovementClipset
  L3_2 = L0_2
  L4_2 = 1.0
  L2_2(L3_2, L4_2)
  L2_2 = ResetPedStrafeClipset
  L3_2 = L0_2
  L2_2(L3_2)
end
ResetPlayerRun = L8_1
pedDrunk = false
L8_1 = 0
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.infiltri
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.gettutorial
  L2_2 = L2_2(L3_2)
  L3_2 = exports
  L3_2 = L3_2.striano_editor
  L4_2 = L3_2
  L3_2 = L3_2.induskfalls
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.soffoco
  L4_2 = L4_2(L5_2)
  L5_2 = IsPedFatallyInjured
  L6_2 = L0_2
  L5_2 = L5_2(L6_2)
  L6_2 = exports
  L6_2 = L6_2.striano_core
  L7_2 = L6_2
  L6_2 = L6_2.introBaseFinita
  L6_2 = L6_2(L7_2)
  L7_2 = L2_2 or L7_2
  L7_2 = not L1_2 and L2_2 and not L3_2 and not L4_2 and not L5_2 and L7_2
  if not L7_2 then
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L9_2 = L8_1
    L8_2 = L8_2 - L9_2
    L9_2 = 1000
    if L8_2 > L9_2 then
      L8_2 = GetGameTimer
      L8_2 = L8_2()
      L8_1 = L8_2
    end
  end
  if L7_2 then
    L8_2 = SetPlayerFallDamage
    L9_2 = true
    L8_2(L9_2)
    L8_2 = GetEntityHealth
    L9_2 = L0_2
    L8_2 = L8_2(L9_2)
    L9_2 = 151
    if L8_2 > L9_2 then
      L9_2 = pedDrunk
      if L9_2 then
        pedDrunk = false
        L9_2 = TriggerEvent
        L10_2 = "CaricamiCamminata"
        L9_2(L10_2)
        L9_2 = SetPedIsDrunk
        L10_2 = L0_2
        L11_2 = false
        L9_2(L10_2, L11_2)
        L9_2 = SetPedMotionBlur
        L10_2 = L0_2
        L11_2 = false
        L9_2(L10_2, L11_2)
        L9_2 = exports
        L9_2 = L9_2.striano_combat
        L10_2 = L9_2
        L9_2 = L9_2.showZone
        L11_2 = " "
        L12_2 = "you feel better."
        L9_2(L10_2, L11_2, L12_2)
        shiftLimiterActive = false
        L9_2 = ResetPlayerRun
        L9_2()
        L9_2 = GetEntitySpeed
        L10_2 = L0_2
        L9_2 = L9_2(L10_2)
        L10_2 = 0.1
        if L9_2 < L10_2 then
          L9_2 = ExecuteCommand
          L10_2 = "shakeoff"
          L9_2(L10_2)
        end
      end
    else
      L9_2 = PlayerPedId
      L9_2 = L9_2()
      L10_2 = pedDrunk
      if not L10_2 then
        L10_2 = IsPedHuman
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          pedDrunk = true
          L10_2 = CreateThread
          function L11_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
            while true do
              L0_3 = pedDrunk
              if not L0_3 then
                break
              end
              L0_3 = Wait
              L1_3 = 1000
              L0_3(L1_3)
              L0_3 = exports
              L0_3 = L0_3.striano_combat
              L1_3 = L0_3
              L0_3 = L0_3.splatterBlood
              L2_3 = GetEntityCoords
              L3_3 = L9_2
              L2_3 = L2_3(L3_3)
              L3_3 = 1.1
              L4_3 = 1.1
              L5_3 = 0.5
              L6_3 = vector3
              L7_3 = 80
              L8_3 = 0
              L9_3 = 0
              L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3, L8_3, L9_3)
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
            end
          end
          L10_2(L11_2)
          L10_2 = "sounds/respirosurv.mp3"
          L11_2 = exports
          L11_2 = L11_2.xsound
          L12_2 = L11_2
          L11_2 = L11_2.PlayUrl
          L13_2 = "respirosurv"
          L14_2 = L10_2
          L15_2 = 0.3
          L11_2(L12_2, L13_2, L14_2, L15_2)
          L11_2 = exports
          L11_2 = L11_2.striano_combat
          L12_2 = L11_2
          L11_2 = L11_2.showZone
          L13_2 = " "
          L14_2 = "you're hurt."
          L11_2(L12_2, L13_2, L14_2)
          L11_2 = ExecuteCommand
          L12_2 = "addsangue"
          L11_2(L12_2)
          L11_2 = GetEntitySpeed
          L12_2 = L0_2
          L11_2 = L11_2(L12_2)
          L12_2 = 0.1
          if L11_2 < L12_2 then
            L11_2 = ExecuteCommand
            L12_2 = "e malditesta5"
            L11_2(L12_2)
          end
          L11_2 = SetPedIsDrunk
          L12_2 = L0_2
          L13_2 = true
          L11_2(L12_2, L13_2)
          L11_2 = SetPedMotionBlur
          L12_2 = L0_2
          L13_2 = true
          L11_2(L12_2, L13_2)
          L11_2 = ExecuteCommand
          L12_2 = "w injured"
          L11_2(L12_2)
          L11_2 = StartShiftLimiter
          L11_2()
        end
      end
    end
    L9_2 = GetEntityCoords
    L10_2 = L0_2
    L9_2 = L9_2(L10_2)
    L10_2 = nil
    L11_2 = ipairs
    L12_2 = SpecialCoords
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
    for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
      L17_2 = L16_2.coords
      L17_2 = L9_2 - L17_2
      L17_2 = #L17_2
      L18_2 = L16_2.range
      if L17_2 < L18_2 then
        L10_2 = L16_2
        break
      end
    end
    L11_2 = false
    if L10_2 then
      L12_2 = L10_2.tc
      if nil ~= L12_2 then
        L12_2 = SetTimecycleModifier
        L13_2 = L10_2.tc
        L12_2(L13_2)
        L12_2 = SetTimecycleModifierStrength
        L13_2 = L10_2.tcp
        if not L13_2 then
          L13_2 = 1.0
        end
        L12_2(L13_2)
      end
      L12_2 = L10_2.fallDamage
      if nil ~= L12_2 then
        L12_2 = SetPlayerFallDamage
        L13_2 = L10_2.fallDamage
        L12_2(L13_2)
      end
      L12_2 = L10_2.enemySpawnRange
      if L12_2 then
        L12_2 = EnemySpawner
        L13_2 = L10_2.enemySpawnRange
        L12_2(L13_2)
      end
      L12_2 = L10_2.calmWater
      if L12_2 then
        L12_2 = exports
        L12_2 = L12_2.striano_boat
        L13_2 = L12_2
        L12_2 = L12_2.calmWater
        L14_2 = true
        L12_2(L13_2, L14_2)
        L11_2 = true
      end
    else
      if not L11_2 then
        L12_2 = exports
        L12_2 = L12_2.striano_boat
        L13_2 = L12_2
        L12_2 = L12_2.calmWater
        L14_2 = false
        L12_2(L13_2, L14_2)
      end
      L12_2 = exports
      L12_2 = L12_2.striano_core
      L13_2 = L12_2
      L12_2 = L12_2.inxmas
      L12_2 = L12_2(L13_2)
      if not L12_2 then
        L12_2 = CurrentWeather
        L13_2 = SetWeatherTypeNowPersist
        L14_2 = L12_2
        L13_2(L14_2)
        L13_2 = ClearOverrideWeather
        L13_2()
        L13_2 = ClearWeatherTypePersist
        L13_2()
        L13_2 = SetWeatherTypePersist
        L14_2 = L12_2
        L13_2(L14_2)
        L13_2 = SetWeatherTypeNow
        L14_2 = L12_2
        L13_2(L14_2)
        L13_2 = SetWeatherTypeNowPersist
        L14_2 = L12_2
        L13_2(L14_2)
      end
      L12_2 = SetTimecycleModifier
      L13_2 = defaultCycle
      L12_2(L13_2)
      L12_2 = SetTimecycleModifierStrength
      L13_2 = defaultCycleForce
      L12_2(L13_2)
    end
  end
end
Atmosfera = L9_1
L9_1 = exports
L10_1 = "atmosfera"
function L11_1()
  local L0_2, L1_2
  L0_2 = Atmosfera
  return L0_2()
end
L9_1(L10_1, L11_1)
L9_1 = RegisterCommand
L10_1 = "atmosfera"
function L11_1()
  local L0_2, L1_2
  L0_2 = Atmosfera
  L0_2()
end
L9_1(L10_1, L11_1)
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = DoesEntityExist
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = print
    L1_2 = "Loading Mesh Player from vSync..."
    L0_2(L1_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "vSync:getSync"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitMeteo
  L0_2()
end
L9_1(L10_1)
function L9_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerServerEvent
  L1_2 = "vSync:getSync"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Atmosfera
  L0_2()
  L0_2 = RopeDrawShadowEnabled
  L1_2 = false
  L0_2(L1_2)
  L0_2 = CascadeShadowsClearShadowSampleType
  L0_2()
  L0_2 = CascadeShadowsSetAircraftMode
  L1_2 = false
  L0_2(L1_2)
  L0_2 = CascadeShadowsEnableEntityTracker
  L1_2 = true
  L0_2(L1_2)
  L0_2 = CascadeShadowsSetDynamicDepthMode
  L1_2 = false
  L0_2(L1_2)
  L0_2 = CascadeShadowsSetEntityTrackerScale
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = CascadeShadowsSetDynamicDepthValue
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = CascadeShadowsSetCascadeBoundsScale
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = SetFlashLightFadeDistance
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = SetLightsCutoffDistanceTweak
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = DistantCopCarSirens
  L1_2 = false
  L0_2(L1_2)
end
InitMeteo = L9_1
L9_1 = RegisterNetEvent
L10_1 = "resetFameSete"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "resetFameSete"
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetPedIsDrunk
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  sonoAffamato = false
  sonoAssetato = false
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "sod:safemode:update"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "safeModeTimer"
  L3_2 = A0_2.enabled
  L3_2 = true == L3_2
  L2_2.enabled = L3_2
  L3_2 = A0_2.active
  L3_2 = true == L3_2
  L2_2.active = L3_2
  L3_2 = tonumber
  L4_2 = A0_2.seconds
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L2_2.seconds = L3_2
  L1_2(L2_2)
end
L9_1(L10_1, L11_1)
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "sod:safemode:getNebbia"
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "sod:safemode:requestSync"
  L0_2(L1_2)
end
L9_1(L10_1)
L9_1 = RegisterNetEvent
L10_1 = "GetNebbiaBack"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if 1 == A0_2 then
    NEBBIA = false
    L1_2 = TriggerEvent
    L2_2 = "startNebbia"
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 1500
    L1_2(L2_2)
    L1_2 = NetworkOverrideClockTime
    L2_2 = 0
    L3_2 = 0
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    defaultH = 0
  end
end
L9_1(L10_1, L11_1)
