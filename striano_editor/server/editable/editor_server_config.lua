function isAdmin(src) -- INSERT YOUR ADMIN SYSTEM IN THIS FUNCTION return!
	if exports["striano_core"]:IsAdmin(src) then return true else return false end
end

-- PROP LIMIT SYSTEM!
local PROP_LIMIT_FILE = "proplimits.json"
local PropLimits = {}
local DEFAULT_PROP_LIMIT = 0 -- 100 At start no one is able to use construction if admin not enable them!

local function getLicenseIdentifier(src)
    if not src then return nil end

    for _, v in ipairs(GetPlayerIdentifiers(src)) do
        if v:sub(1, 8) == "license:" then
            return v
        end
    end

    local ids = GetPlayerIdentifiers(src)
    return ids and ids[1] or nil
end

local function loadPropLimits()
    local raw = LoadResourceFile(GetCurrentResourceName(), PROP_LIMIT_FILE)

    if not raw or raw == "" then
        PropLimits = {}
        SaveResourceFile(GetCurrentResourceName(), PROP_LIMIT_FILE, "{}", -1)
        -- print("^2[prop_limits]^7 created file " .. PROP_LIMIT_FILE)
        return
    end

    local ok, data = pcall(json.decode, raw)
    if ok and type(data) == "table" then
        PropLimits = data
    else
        -- print("^1[prop_limits]^7 json not valid.")
        PropLimits = {}
        SaveResourceFile(GetCurrentResourceName(), PROP_LIMIT_FILE, "{}", -1)
    end
end

local function savePropLimits()
    local encoded = json.encode(PropLimits, { indent = true })
    SaveResourceFile(GetCurrentResourceName(), PROP_LIMIT_FILE, encoded, -1)
end

local function setPlayerPropLimitByIdentifier(identifier, limit)
    if not identifier then return false end

    limit = tonumber(limit)
    if not limit then return false end

    PropLimits[identifier] = {
        limit = math.floor(limit)
    }

    savePropLimits()
    return true
end

local function getPlayerPropLimitByIdentifier(identifier)
    if not identifier then return DEFAULT_PROP_LIMIT end

    local row = PropLimits[identifier]
    if row and tonumber(row.limit) then
        return tonumber(row.limit)
    end

    return DEFAULT_PROP_LIMIT
end

local function applyPlayerPropLimit(src)
    local identifier = getLicenseIdentifier(src)
    local limit = getPlayerPropLimitByIdentifier(identifier)
    Player(src).state.propLimitEditor = limit
    TriggerClientEvent("prop_limits:client:updateLimit", src, limit)
end

CreateThread(function()
    loadPropLimits()
end)

RegisterCommand("setproplimit", function(source, args)
	if not isAdmin(source) then return end
    local target = tonumber(args[1])
    local newLimit = tonumber(args[2])

    if not target or not GetPlayerName(target) then
        if source ~= 0 then
            TriggerClientEvent("chat:addMessage", source, {
                args = { "", "ID player not valid." }
            })
        else
            print("[prop_limits] ID player not valid.")
        end
        return
    end

    if not newLimit then
        if source ~= 0 then
            TriggerClientEvent("chat:addMessage", source, {
                args = { "", "/setproplimit ID LIMIT" }
            })
        else
            print("[prop_limits] /setproplimit ID LIMIT")
        end
        return
    end

    local identifier = getLicenseIdentifier(target)
    if not identifier then
        if source ~= 0 then
            TriggerClientEvent("chat:addMessage", source, {
                args = { "^", "Identifier not found." }
            })
        else
            print("[prop_limits] Identifier not found.")
        end
        return
    end

    local ok = setPlayerPropLimitByIdentifier(identifier, newLimit)
    if not ok then
        if source ~= 0 then
            TriggerClientEvent("chat:addMessage", source, {
                args = { "^", "Error on save limit." }
            })
        else
            print("[prop_limits] Error on save limit.")
        end
        return
    end

    applyPlayerPropLimit(target)

    local msg = ("Prop limits set to %s for %s [ID %s]"):format(
        tostring(newLimit),
        GetPlayerName(target),
        tostring(target)
    )

    if source ~= 0 then
        TriggerClientEvent("chat:addMessage", source, {
            args = { "", msg }
        })
    else
        print("[prop_limits] " .. msg)
    end

    TriggerClientEvent("chat:addMessage", target, {
        args = { "", "Prop limits updated for your account: " .. tostring(newLimit) }
    })
end, false)

AddEventHandler("playerJoining", function()
    local src = source
    CreateThread(function()
        Wait(1000)
        if GetPlayerName(src) then
            applyPlayerPropLimit(src)
        end
    end)
end)

AddEventHandler("playerDropped", function()
    local src = source
    if Player(src) and Player(src).state then
        Player(src).state.propLimitEditor = nil
    end
end)

AddEventHandler("onResourceStart", function(res)
    if res ~= GetCurrentResourceName() then return end

    CreateThread(function()
        Wait(500) -- piccolo delay safety

        for _, src in ipairs(GetPlayers()) do
            src = tonumber(src)

            if src and GetPlayerName(src) then
                applyPlayerPropLimit(src)
            end
        end
    end)
end)