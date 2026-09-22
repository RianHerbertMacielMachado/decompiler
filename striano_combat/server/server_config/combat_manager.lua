function reply(src, msg) if src == 0 then print('[WL] ' .. msg) else TriggerClientEvent('combat:notify', src, msg) end end
function replyPrint(src, msg) if src == 0 then print('[WL] ' .. msg) else TriggerClientEvent('combat:notifyPrint', src, msg) end end

local function GetSwordIdByName(name)
    if not name or name == "" then return nil end

    local search = tostring(name):lower():gsub("%s+", "")

    -- match esatto
    for id, data in pairs(SwordList) do
        local swordName = tostring(data.Name or data.label or ""):lower():gsub("%s+", "")
        if swordName == search then
            return id
        end
    end

    -- match parziale
    for id, data in pairs(SwordList) do
        local swordName = tostring(data.Name or data.label or ""):lower():gsub("%s+", "")
        if swordName:find(search, 1, true) then
            return id
        end
    end

    return nil
end

RegisterCommand("setsword", function(source, args)
    
    if not isAdmin(source) then
		TriggerClientEvent('combat:notify', source, "Not a valid admin.")
        return
    end

    local targetId = tonumber(args[1])
    if not targetId then
        TriggerClientEvent('combat:notify', source, "/setsword Id_player Id_sword or SwordName")
        return
    end
    local swordArg = table.concat(args, " ", 2)
    if not swordArg or swordArg == "" then
        TriggerClientEvent('combat:notify', source, "Insert IdSword o SwordName.")
        return
    end
    local swordId = tonumber(swordArg)

    if not swordId then
        swordId = GetSwordIdByName(swordArg)
    end
    if not swordId then
        TriggerClientEvent('combat:notify', source, "Sword not found: " .. tostring(swordArg))
        return
    end
    if swordId < 0 or swordId > #SwordList then
        TriggerClientEvent('combat:notify', source, "Sword not found.")
        return
    end
    TriggerClientEvent('striano_combat:setSwordByAdmin', targetId, swordId)
    local swordName = SwordList[swordId] and (SwordList[swordId].name or SwordList[swordId].label) or ("ID "..swordId)
    TriggerClientEvent('combat:notify', source, "You give the sword " .. tostring(swordName) .. " to ID " .. targetId)
	Wait(1000)
    TriggerClientEvent('anim:cmd', targetId, "You get a melee weapon [" .. tostring(swordName) .. "] from " .. GetPlayerName(source))
end)

-- /admin_add <identifier>
RegisterCommand('admin_add', function(src, args)
	if src == 0 then -- ENABLE command admin only from server console!
		local ok = isAdmin(src)
		if not ok then return reply(src, 'Not a valid permission system.') end
		local id = normId(table.concat(args or {}, ' '))
		if not id then return reply(src, 'Identifier not valid.') end
		if ADMINS[id] then return reply(src, ('Alredy admin: %s'):format(id)) end
		ADMINS[id] = true
		writeJson(ADM_PATH, ADMINS)
		reply(src, ('Admin added: %s'):format(id))
	end
end)

-- /admin_del <identifier>
RegisterCommand('admin_del', function(src, args)
    if src == 0 then -- ENABLE command admin only from server console!
		local ok = isAdmin(src)
		if not ok then return reply(src, 'Not a valid permission system.') end
		local id = normId(table.concat(args or {}, ' '))
		if not id then return reply(src, 'Identifier not valid.') end
		if not ADMINS[id] then return reply(src, ('This Admin not exist: %s'):format(id)) end
		ADMINS[id] = nil
		writeJson(ADM_PATH, ADMINS)
		reply(src, ('Admin removed: %s'):format(id))
	end
end)

-- /admin_list
RegisterCommand('admin_list', function(src)
     if src == 0 then -- ENABLE command admin only from server console!
		 local ok = isAdmin(src)
		if not ok then return reply(src, 'Not a valid permission system.') end
		local n = 0
		for id in pairs(ADMINS) do
			n = n + 1
			reply(src, ('%d) %s'):format(n, id))
		end
		if n == 0 then reply(src, 'Admin list empty.') end
	end
end)

-- /admin_reload
RegisterCommand('admin_reload', function(src)
     if src == 0 then -- ENABLE command admin only from server console!
		 local ok = isAdmin(src)
		if not ok then return reply(src, 'Not a valid permission system.') end
		ADMINS = readJson(ADM_PATH)
		reply(src, 'Admin list reloaded.')
	end
end)
