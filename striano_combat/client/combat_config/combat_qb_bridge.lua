-- striano_combat qb-inventory bridge
local BRIDGE_NAME = 'combat_qb_bridge'
local INV_USE_COOLDOWN = 250

if IsDuplicityVersion() then
    local QBCore = nil
    local registered = {}

    local function hasQB()
        return GetResourceState('qb-core') == 'started' and GetResourceState('qb-inventory') == 'started'
    end

    local function getQBCore()
        if QBCore then return QBCore end
        if not hasQB() then return nil end

        local ok, obj = pcall(function()
            return exports['qb-core']:GetCoreObject()
        end)

        if ok then
            QBCore = obj
            return QBCore
        end

        return nil
    end

    local function registerUseableItem(itemName)
        if registered[itemName] then return true end

        local core = getQBCore()
        if not core or not core.Shared or not core.Shared.Items then return false end
        if not core.Shared.Items[itemName] then return false end

        core.Functions.CreateUseableItem(itemName, function(source, item)
            TriggerClientEvent('striano_combat:qbbridge:useItem', source, item or { name = itemName })
        end)

        registered[itemName] = true
        return true
    end

    local function autoRegisterAllItems()
        local core = getQBCore()
        if not core or not core.Shared or not core.Shared.Items then return end

        local count = 0
        for itemName, itemData in pairs(core.Shared.Items) do
            if type(itemName) == 'string' and type(itemData) == 'table' then
                if itemName:match('^striano_weapon_%d+$')
                or itemName:match('^striano_bow_%d+$')
                or itemName:match('^striano_arrow_%d+$')
                or itemName:match('^striano_shield_%d+$') then
                    if registerUseableItem(itemName) then
                        count = count + 1
                    end
                end
            end
        end

        if count > 0 then
            print(('^2[striano_combat]^7 %s loaded for ^3qb-inventory^7 (%s items registered)'):format(BRIDGE_NAME, count))
        end
    end

    AddEventHandler('onResourceStart', function(resourceName)
        if resourceName == GetCurrentResourceName() or resourceName == 'qb-core' or resourceName == 'qb-inventory' then
            CreateThread(function()
                Wait(1500)
                autoRegisterAllItems()
            end)
        end
    end)

    CreateThread(function()
        Wait(3000)
        autoRegisterAllItems()
    end)

    return
end

local lastUseTime = 0
local INV_TYPE = nil

local function detectInventory()
    local qbState = GetResourceState('qb-inventory')
    if qbState == 'started' then
        return 'qb'
    end
    return nil
end

CreateThread(function()
    Wait(5000)
    INV_TYPE = detectInventory()
    if INV_TYPE == 'qb' then
        print('^2[striano_combat]^7 combat_qb_bridge loaded for ^3qb-inventory^7')
    end
end)

local function isInventoryReady()
    if not INV_TYPE then
        INV_TYPE = detectInventory()
    end
    return INV_TYPE ~= nil
end

local function canUseInventoryItem()
    local now = GetGameTimer()
    if now - lastUseTime < INV_USE_COOLDOWN then
        return false
    end
    lastUseTime = now
    return true
end

local function getItemName(data)
    if not data then return nil end
    if type(data.name) == 'string' and data.name ~= '' then return data.name end
    if data.item and type(data.item.name) == 'string' and data.item.name ~= '' then return data.item.name end
    if data.info and type(data.info.name) == 'string' and data.info.name ~= '' then return data.info.name end
    return nil
end

local function getNumericMeta(data, key)
    if not data then return nil end
    if data.metadata and data.metadata[key] ~= nil then return tonumber(data.metadata[key]) end
    if data.info and data.info[key] ~= nil then return tonumber(data.info[key]) end
    if data[key] ~= nil then return tonumber(data[key]) end
    if data.item then
        if data.item.metadata and data.item.metadata[key] ~= nil then return tonumber(data.item.metadata[key]) end
        if data.item.info and data.item.info[key] ~= nil then return tonumber(data.item.info[key]) end
        if data.item[key] ~= nil then return tonumber(data.item[key]) end
    end
    return nil
end

local function escapePattern(str)
    return (str:gsub('([^%%w])', '%%%1'))
end

local function extractIdFromItemName(itemName, prefix)
    if type(itemName) ~= 'string' or itemName == '' then return nil end
    local pattern = '^' .. escapePattern(prefix) .. '(%d+)$'
    local id = itemName:match(pattern)
    if not id then return nil end
    return tonumber(id)
end

local function resolveWeaponId(data)
    local weaponId = getNumericMeta(data, 'weaponId')
    if weaponId then return weaponId end
    local itemName = getItemName(data)
    if itemName then return extractIdFromItemName(itemName, 'striano_weapon_') end
    return nil
end

local function resolveBowId(data)
    local bowId = getNumericMeta(data, 'bowId')
    if bowId then return bowId end
    local itemName = getItemName(data)
    if itemName then return extractIdFromItemName(itemName, 'striano_bow_') end
    return nil
end

local function resolveArrowId(data)
    local arrowId = getNumericMeta(data, 'arrowId')
    if arrowId then return arrowId end
    local itemName = getItemName(data)
    if itemName then return extractIdFromItemName(itemName, 'striano_arrow_') end
    return nil
end

local function resolveShieldId(data)
    local shieldId = getNumericMeta(data, 'shieldId')
    if shieldId then return shieldId end
    local itemName = getItemName(data)
    if itemName then return extractIdFromItemName(itemName, 'striano_shield_') end
    return nil
end

local function isValidWeaponId(weaponId)
    return type(weaponId) == 'number' and SwordList ~= nil and SwordList[weaponId] ~= nil
end

local function isValidBowId(bowId)
    return type(bowId) == 'number' and BowList ~= nil and BowList[bowId] ~= nil
end

local function isValidArrowId(arrowId)
    return type(arrowId) == 'number' and ArrowList ~= nil and ArrowList[arrowId] ~= nil
end

local function isValidShieldId(shieldId)
    return type(shieldId) == 'number' and ShieldList ~= nil and ShieldList[shieldId] ~= nil
end

exports('useWeapon', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local weaponId = resolveWeaponId(data)

    if not isValidWeaponId(weaponId) then
        print('^1[' .. BRIDGE_NAME .. ']^7 invalid weapon id for item:', itemName or 'nil', 'resolved:', weaponId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError('Weapon not configured')
        end
        return
    end

    local currentSword = mySword or 0
    local isDrawn = (Sfoggiate == true)

    if currentSword == weaponId then
        if isDrawn then
            FoderaArmi()
            if exports.striano_combat and exports.striano_combat.submexInfo then
                exports.striano_combat:submexInfo('Weapon holstered')
            end
        else
            exports.striano_combat:strianosetweapon(weaponId)
            if exports.striano_combat and exports.striano_combat.submexInfo then
                exports.striano_combat:submexInfo('Weapon equipped')
            end
        end
        return
    end

    if (myBow or 0) > 0 then
        exports.striano_combat:foldbow()
        exports.striano_combat:setbow(0)
    end

    exports.striano_combat:strianosetweapon(weaponId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo('Weapon equipped')
    end
end)

exports('useBow', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local bowId = resolveBowId(data)

    if not isValidBowId(bowId) then
        print('^1[' .. BRIDGE_NAME .. ']^7 invalid bow id for item:', itemName or 'nil', 'resolved:', bowId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError('Bow not configured')
        end
        return
    end

    local currentBow = myBow or 0

    if currentBow == bowId then
        exports.striano_combat:foldbow()
        exports.striano_combat:setbow(0)
        if exports.striano_combat and exports.striano_combat.submexInfo then
            exports.striano_combat:submexInfo('Bow removed')
        end
        return
    end

    if (mySword or 0) > 0 then
        exports.striano_combat:strianosetweapon(0)
    end

    if (myArrow or 0) <= 0 and ArrowList and ArrowList[1] then
        exports.striano_combat:setarrow(1)
    end

    exports.striano_combat:setbow(bowId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo('Bow equipped')
    end
end)

exports('useArrow', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local arrowId = resolveArrowId(data)

    if not isValidArrowId(arrowId) then
        print('^1[' .. BRIDGE_NAME .. ']^7 invalid arrow id for item:', itemName or 'nil', 'resolved:', arrowId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError('Arrow not configured')
        end
        return
    end

    exports.striano_combat:setarrow(arrowId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo('Arrow selected')
    end
end)

exports('useShield', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local shieldId = resolveShieldId(data)

    if not isValidShieldId(shieldId) then
        print('^1[' .. BRIDGE_NAME .. ']^7 invalid shield id for item:', itemName or 'nil', 'resolved:', shieldId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError('Shield not configured')
        end
        return
    end

    local currentShield = myShield or 0

    if currentShield == shieldId then
        exports.striano_combat:strianosetshield(0)
        if exports.striano_combat and exports.striano_combat.submexInfo then
            exports.striano_combat:submexInfo('Shield removed')
        end
        return
    end

    exports.striano_combat:strianosetshield(shieldId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo('Shield equipped')
    end
end)

RegisterNetEvent('striano_combat:qbbridge:useItem', function(itemData)
    if not itemData then return end

    local itemName = getItemName(itemData)
    if not itemName or itemName == '' then return end

    if itemName:match('^striano_weapon_%d+$') then
        exports[GetCurrentResourceName()]:useWeapon(itemData)
        return
    end

    if itemName:match('^striano_bow_%d+$') then
        exports[GetCurrentResourceName()]:useBow(itemData)
        return
    end

    if itemName:match('^striano_arrow_%d+$') then
        exports[GetCurrentResourceName()]:useArrow(itemData)
        return
    end

    if itemName:match('^striano_shield_%d+$') then
        exports[GetCurrentResourceName()]:useShield(itemData)
        return
    end
end)

-- BUFFER
local BufferItemsQB = {
    "buffer_blodyr",
    "buffer_silvy",
    "buffer_golder",
    "buffer_puller",
    "buffer_aquar",
    "buffer_rosyz",
    "buffer_losyz",
    "buffer_anger",
    "buffer_petyr",
    "buffer_tyerz",
    "buffer_bluerz",
    "buffer_layrz",
    "buffer_flamer",
    "buffer_greener",
    "buffer_poisonz",
}

for _, itemName in ipairs(BufferItemsQB) do
    RegisterNetEvent("striano_combat:qb:use:" .. itemName, function()
        exports["striano_combat"]:UseBufferItem(itemName)
    end)
end
