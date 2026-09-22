local L0_1, L1_1, L2_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = throwTimes
  L1_2 = L1_2 + 1
  throwTimes = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = getSpawnPositionDish
    L0_3 = L0_3()
    L1_3 = L0_3.x
    L2_3 = L0_3.y
    L3_3 = -10.0
    L4_3 = 10.0
    L5_3 = math
    L5_3 = L5_3.random
    L6_3 = L3_3
    L7_3 = L4_3
    L5_3 = L5_3(L6_3, L7_3)
    L5_3 = L1_3 + L5_3
    L6_3 = math
    L6_3 = L6_3.random
    L7_3 = L3_3
    L8_3 = L4_3
    L6_3 = L6_3(L7_3, L8_3)
    L6_3 = L2_3 + L6_3
    L7_3 = vector3
    L8_3 = L5_3
    L9_3 = L6_3
    L10_3 = L0_3.z
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L0_3 = L7_3
    L7_3 = math
    L7_3 = L7_3.random
    L8_3 = -5
    L9_3 = 5
    L7_3 = L7_3(L8_3, L9_3)
    L7_3 = L7_3 + 0.0
    L8_3 = math
    L8_3 = L8_3.random
    L9_3 = -5
    L10_3 = 5
    L8_3 = L8_3(L9_3, L10_3)
    L8_3 = L8_3 + 0.0
    L9_3 = math
    L9_3 = L9_3.random
    L10_3 = 1
    L11_3 = 10
    L9_3 = L9_3(L10_3, L11_3)
    L9_3 = L9_3 + 0.0
    L10_3 = RequestModelStriano
    L11_3 = hashPiatto
    L10_3(L11_3)
    L10_3 = SoundThrow
    L10_3()
    L10_3 = A0_2
    if nil ~= L10_3 then
      L0_3 = A0_2
    end
    L10_3 = CreateObject
    L11_3 = hashPiatto
    L12_3 = L0_3
    L13_3 = 0.0
    L14_3 = true
    L15_3 = true
    L16_3 = true
    L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L11_3 = NetworkRequestControlOfEntity
    L12_3 = L10_3
    L11_3(L12_3)
    L11_3 = SetEntityLodDist
    L12_3 = L10_3
    L13_3 = 300
    L11_3(L12_3, L13_3)
    L11_3 = SetEntityVelocity
    L12_3 = L10_3
    L13_3 = L7_3
    L14_3 = L8_3
    L15_3 = 20.0 + L9_3
    L11_3(L12_3, L13_3, L14_3, L15_3)
    L11_3 = Wait
    L12_3 = 100
    L11_3(L12_3)
    L11_3 = SetEntityAngularVelocity
    L12_3 = L10_3
    L13_3 = 50.0
    L14_3 = 0.0
    L15_3 = 0.0
    L11_3(L12_3, L13_3, L14_3, L15_3)
    L11_3 = Wait
    L12_3 = 1000
    L11_3(L12_3)
    while true do
      L11_3 = HasEntityCollidedWithAnything
      L12_3 = L10_3
      L11_3 = L11_3(L12_3)
      if L11_3 then
        break
      end
      L11_3 = HasEntityBeenDamagedByAnyPed
      L12_3 = L10_3
      L11_3 = L11_3(L12_3)
      if L11_3 then
        break
      end
      L11_3 = IsEntityInWater
      L12_3 = L10_3
      L11_3 = L11_3(L12_3)
      if L11_3 then
        break
      end
      L11_3 = Wait
      L12_3 = 0
      L11_3(L12_3)
    end
    L11_3 = HasEntityBeenDamagedByAnyPed
    L12_3 = L10_3
    L11_3 = L11_3(L12_3)
    if L11_3 then
      L11_3 = piattiColpiti
      L11_3 = L11_3 + 1
      piattiColpiti = L11_3
      L11_3 = ObjectHitted
      L11_3()
    else
      L11_3 = challengeStart
      if L11_3 then
        challengeStart = false
        LoopVarClay = false
        L11_3 = onChallengeEnd
        L11_3()
      end
    end
    L11_3 = SetModelAsNoLongerNeeded
    L12_3 = hashPiatto
    L11_3(L12_3)
    L11_3 = SetEntityAsMissionEntity
    L12_3 = L10_3
    L11_3(L12_3)
    L11_3 = DeleteEntity
    L12_3 = L10_3
    L11_3(L12_3)
  end
  L1_2(L2_2)
end
SpawnPiattoSfida = L0_1
L0_1 = exports
L1_1 = "spawnDish"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SpawnPiattoSfida
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
