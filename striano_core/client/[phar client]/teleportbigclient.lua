-- ============================================================
--  striano_core - client/[phar client]/teleportbigclient.lua
--  Teleporte do jogador com carregamento de colisão
-- ============================================================

--- Teletransportar o jogador para as coordenadas recebidas,
--- aguardando o carregamento da colisão antes de descongelar.
RegisterNetEvent("_teleport:setCoords")
AddEventHandler("_teleport:setCoords", function(coords)
    local ped         = PlayerPedId()
    local wasFrozen   = IsEntityPositionFrozen(ped)

    -- Congelar temporariamente para evitar queda durante o carregamento
    FreezeEntityPosition(ped, true)
    SetPedCoordsKeepVehicle(ped, coords.x, coords.y, coords.z - 1.0)

    -- Pré-carregar a colisão na posição de destino
    RequestCollisionAtCoord(coords.x, coords.y, coords.z)
    while not HasCollisionLoadedAroundEntity(ped) do
        RequestCollisionAtCoord(coords.x, coords.y, coords.z)
        Wait(1)
    end

    -- Aguardar um pouco para a colisão estabilizar
    Wait(1000)
    SetPedCoordsKeepVehicle(ped, coords.x, coords.y, coords.z - 1.0)

    -- Descongelar apenas se o jogador não estava congelado antes
    if not wasFrozen then
        FreezeEntityPosition(ped, false)
    end
end)
