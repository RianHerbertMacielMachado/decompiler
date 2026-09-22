-- ============================================================
--  striano_core - client/[phar client]/itemsclient.lua
--  Efeito de fumaça/respiração (cigarros) — sistema SMB
-- ============================================================

-- Constantes do efeito de partículas
local PARTICLE_OFFSET_X = -0.06
local PARTICLE_OFFSET_Y =  0.15
local PARTICLE_SCALE    =  2.0
local PARTICLE_INTERVAL =  5     -- (reservado para throttle)

--- Executar o efeito de respiração/fumaça num ped específico
function breath(ped)
    -- Só exibir em peds no exterior, fora de veículos, vivos e visíveis
    if GetInteriorFromEntity(ped) ~= 0 then return end
    if IsPedSittingInAnyVehicle(ped)  then return end
    if IsPedFatallyInjured(ped)       then return end
    if not IsEntityVisible(ped)       then return end

    -- Carregar asset de partículas
    RequestNamedPtfxAsset("cut_michael1")
    while not HasNamedPtfxAssetLoaded("cut_michael1") do
        Wait(0)
    end

    -- Disparar o efeito de respiração no osso da cabeça
    UseParticleFxAssetNextCall("cut_michael1")
    StartParticleFxNonLoopedOnPedBone(
        "cs_mich1_breath",
        ped,
        PARTICLE_OFFSET_Y, PARTICLE_OFFSET_X, 0.0,
        0.0, 0.0, 0.0,
        39317,
        PARTICLE_SCALE,
        false, false, false
    )
    RemoveNamedPtfxAsset("cut_michael1")
end

--- Disparar o evento de servidor para sincronização do efeito
function EsciFumoFunc()
    TriggerServerEvent("smb:breath", PedToNet(PlayerPedId()))
end

--- Receber sincronização de outro cliente
RegisterNetEvent("smb:breath")
AddEventHandler("smb:breath", function(pedNetId)
    breath(NetToPed(pedNetId))
end)

--- Limpar o prop de cigarro ao parar o recurso
AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    if propSigaretta ~= nil then
        SetEntityAsMissionEntity(propSigaretta)
        DeleteObject(propSigaretta)
        propSigaretta = nil
    end
end)
