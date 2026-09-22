--[[
COME USARLO:
-- tutti i client vedono l’effetto sull’oggetto con quel netId
exports['ptfx_core']:BroadcastStartOnNet(netId, "core", "ent_sht_steam")

-- fake loop broadcast (ancora più affidabile)
exports['ptfx_core']:BroadcastStartFakeOnNet(netId, "core", "ent_sht_steam")

-- stop
exports['ptfx_core']:BroadcastStopOnNet(netId, true) -- true = stop anche fake

]]

-- ==========================
-- ptfx_core (server)
-- ==========================

-- Helper: broadcast start looped su netId
function BroadcastStartOnNet(netId, dict, name, off, rot, scale, alpha, useBone, boneRef, targets)
  local tgt = targets or -1
  TriggerClientEvent('ptfx_core:cl_start_on_net', tgt, netId, dict, name, off, rot, scale, alpha, useBone or false, boneRef)
end
exports('BroadcastStartOnNet', BroadcastStartOnNet)

-- Helper: broadcast start fake-loop su netId
function BroadcastStartFakeOnNet(netId, dict, name, off, rot, scale, tick, maxDist, targets)
  local tgt = targets or -1
  TriggerClientEvent('ptfx_core:cl_start_fake_on_net', tgt, netId, dict, name, off, rot, scale, tick, maxDist)
end
exports('BroadcastStartFakeOnNet', BroadcastStartFakeOnNet)

-- Helper: broadcast stop su netId (looped + opzionale fake)
function BroadcastStopOnNet(netId, alsoFake, targets)
  local tgt = targets or -1
  TriggerClientEvent('ptfx_core:cl_stop_on_net', tgt, netId, alsoFake or false)
end
exports('BroadcastStopOnNet', BroadcastStopOnNet)

-- Helper: stop all per i client target
function BroadcastStopAll(targets)
  local tgt = targets or -1
  TriggerClientEvent('ptfx_core:cl_stop_all', tgt)
end
exports('BroadcastStopAll', BroadcastStopAll)

-- ----- Comandi debug facili -----
RegisterCommand('pfx_b_on', function(src, args)
  local netId = tonumber(args[1]); if not netId then return end
  BroadcastStartOnNet(netId, "core", "ent_sht_steam")
end, true)

RegisterCommand('pfx_b_on_bone', function(src, args)
  local netId = tonumber(args[1]); if not netId then return end
  BroadcastStartOnNet(netId, "core", "ent_sht_steam", nil, nil, 1.8, 0.55, true, "chassis")
end, true)

RegisterCommand('pfx_b_fake', function(src, args)
  local netId = tonumber(args[1]); if not netId then return end
  BroadcastStartFakeOnNet(netId, "core", "ent_sht_steam")
end, true)

RegisterCommand('pfx_b_off', function(src, args)
  local netId = tonumber(args[1]); if not netId then return end
  BroadcastStopOnNet(netId, true)
end, true)

RegisterCommand('pfx_b_off_all', function(src) BroadcastStopAll() end, true)
