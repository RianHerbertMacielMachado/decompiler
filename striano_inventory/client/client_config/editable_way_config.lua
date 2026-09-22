-- EXPORTS
exports('create', function(data)
    return WaypointManager.create(data)
end)

exports('update', function(id, data)
    return WaypointManager.update(id, data)
end)

exports('remove', function(id)
    return WaypointManager.remove(id)
end)

exports('removeAll', function()
    return WaypointManager.removeAll()
end)

exports('get', function(id)
    return WaypointManager.get(id)
end)

RegisterCommand('clearwaypoints', function()
	exports.striano_inventory:delblipInteresse()
    WaypointManager.removeAll()
    -- print('All waypoints cleared')
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		exports.striano_inventory:delblipInteresse()
		WaypointManager.removeAll()
	end
end)
	
--[[
local id = exports.striano_inventory:create({
    coords = vec3(123.0, 456.0, 78.0),
    type = 'checkpoint',
    color = '#ff6600',
    label = 'CHECKPOINT',
    size = 1.0,
    -- drawDistance = 999.0,
    displayDistance = true
})

exports.striano_inventory:update(id, {
    label = 'NEW CHECKPOINT',
    color = '#00ff99'
})

exports.striano_inventory:remove(id)
]]

local config = {}
config.syncToWayPoint = true
config.mapWaypoint = {
    type = 'checkpoint',
    label = 'WAYPOINT',
    color = '#f500fc',
    size = 1.0,
    drawDistance = 1000.0,
}

config.defaults = {
    drawDistance = 900.0,
    fadeDistance = 1000.0,
    size = 2.0,
    minHeight = 0.5,
    maxHeight = 50.0,
    groundZOffset = -2.0,
    color = '#f5a623',
    label = 'CHECKPOINT',
    displayDistance = true,
}

config.dui = {
    width = 600,
    height = 800,
}

config.rendering = {
    updateInterval = 1,
    distanceUpdateInterval = 100,
    perspectiveDivisor = 20.0,
    checkpointBaseMultiplier = 4.0,
    checkpointMinScale = 0.1,
    checkpointAspectRatio = 2.0,
    smallMinScale = 1.0,
    smallAspectRatio = 2.0,
}

SleeplessWaypointsConfig = config
return config
