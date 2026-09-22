-- ============================================================
--  striano_core - client/keys_client.lua
--  Notificações de chaves e handler de state bag
-- ============================================================

--- Notificação de chaves via evento de rede
RegisterNetEvent("striano_keys:cl:notify")
AddEventHandler("striano_keys:cl:notify", function(message)
    local msg = tostring(message or "Unknown message")
    exports.striano_combat:testo3d(msg)
end)

--- Observar mudanças na state bag "keysHeld" (reservado para uso futuro)
AddStateBagChangeHandler("keysHeld", nil, function(bagName, key, value)
    -- handler intencionalemente vazio;
    -- a lógica de sincronização fica nos módulos de chaves
end)
