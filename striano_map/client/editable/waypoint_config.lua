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
	exports.striano_map:delblipInteresse()
    WaypointManager.removeAll()
    -- print('All waypoints cleared')
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		exports.striano_map:delblipInteresse()
		WaypointManager.removeAll()
	end
end)
	
--[[
local id = exports.striano_map:create({
    coords = vec3(123.0, 456.0, 78.0),
    type = 'checkpoint',
    color = '#ff6600',
    label = 'CHECKPOINT',
    size = 1.0,
    -- drawDistance = 999.0,
    displayDistance = true
})

exports.striano_map:update(id, {
    label = 'NEW CHECKPOINT',
    color = '#00ff99'
})

exports.striano_map:remove(id)
]]