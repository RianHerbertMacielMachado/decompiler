-- striano_combat multi inventory bridge (ox_inventory + qb-inventory)

local INV_USE_COOLDOWN = 250
local lastUseTime = 0

local INV_TYPE = nil -- "ox" | "qb" | nil

local function detectInventory()
    local oxState = GetResourceState('ox_inventory')
    local qbState = GetResourceState('qb-inventory')

    if oxState == 'started' then
        return 'ox'
    end

    if qbState == 'started' then
        return 'qb'
    end

    return nil
end

CreateThread(function()
    Wait(5000)
    INV_TYPE = detectInventory()
    if INV_TYPE == 'ox' then
        print('^2[striano_combat]^7 combat_inventory_bridge loaded for ^3ox_inventory^7')
    elseif INV_TYPE == 'qb' then
        print('^2[striano_combat]^7 combat_inventory_bridge loaded for ^3qb-inventory^7')
    -- else
        -- print('^3[striano_combat]^7 combat_inventory_bridge loaded but no supported inventory found')
    end
end)

-- =========================
-- HELPERS
-- =========================

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

    if type(data.name) == "string" and data.name ~= "" then
        return data.name
    end

    if data.item and type(data.item.name) == "string" and data.item.name ~= "" then
        return data.item.name
    end

    if data.info and type(data.info.name) == "string" and data.info.name ~= "" then
        return data.info.name
    end

    return nil
end

local function getNumericMeta(data, key)
    if not data then return nil end

    -- ox metadata
    if data.metadata and data.metadata[key] ~= nil then
        return tonumber(data.metadata[key])
    end

    -- qb info
    if data.info and data.info[key] ~= nil then
        return tonumber(data.info[key])
    end

    -- direct fallback
    if data[key] ~= nil then
        return tonumber(data[key])
    end

    -- nested item fallback
    if data.item then
        if data.item.metadata and data.item.metadata[key] ~= nil then
            return tonumber(data.item.metadata[key])
        end

        if data.item.info and data.item.info[key] ~= nil then
            return tonumber(data.item.info[key])
        end

        if data.item[key] ~= nil then
            return tonumber(data.item[key])
        end
    end

    return nil
end

local function escapePattern(str)
    return (str:gsub("([^%w])", "%%%1"))
end

local function extractIdFromItemName(itemName, prefix)
    if type(itemName) ~= "string" or itemName == "" then
        return nil
    end

    local pattern = "^" .. escapePattern(prefix) .. "(%d+)$"
    local id = itemName:match(pattern)

    if not id then
        return nil
    end

    return tonumber(id)
end

local function resolveWeaponId(data)
    local weaponId = getNumericMeta(data, 'weaponId')
    if weaponId then
        return weaponId
    end

    local itemName = getItemName(data)
    if itemName then
        return extractIdFromItemName(itemName, "striano_weapon_")
    end

    return nil
end

local function resolveBowId(data)
    local bowId = getNumericMeta(data, 'bowId')
    if bowId then
        return bowId
    end

    local itemName = getItemName(data)
    if itemName then
        return extractIdFromItemName(itemName, "striano_bow_")
    end

    return nil
end

local function resolveArrowId(data)
    local arrowId = getNumericMeta(data, 'arrowId')
    if arrowId then
        return arrowId
    end

    local itemName = getItemName(data)
    if itemName then
        return extractIdFromItemName(itemName, "striano_arrow_")
    end

    return nil
end

local function resolveShieldId(data)
    local shieldId = getNumericMeta(data, 'shieldId')
    if shieldId then
        return shieldId
    end

    local itemName = getItemName(data)
    if itemName then
        return extractIdFromItemName(itemName, "striano_shield_")
    end

    return nil
end

local function isValidWeaponId(weaponId)
    return type(weaponId) == "number" and SwordList ~= nil and SwordList[weaponId] ~= nil
end

local function isValidBowId(bowId)
    return type(bowId) == "number" and BowList ~= nil and BowList[bowId] ~= nil
end

local function isValidArrowId(arrowId)
    return type(arrowId) == "number" and ArrowList ~= nil and ArrowList[arrowId] ~= nil
end

local function isValidShieldId(shieldId)
    return type(shieldId) == "number" and ShieldList ~= nil and ShieldList[shieldId] ~= nil
end

-- =========================
-- MELEE WEAPON
-- =========================
exports('useWeapon', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local weaponId = resolveWeaponId(data)

    if not isValidWeaponId(weaponId) then
        print("^1[combat_inventory_bridge]^7 invalid weapon id for item:", itemName or "nil", "resolved:", weaponId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError("Weapon not configured")
        end
        return
    end

    local currentSword = mySword or 0
    local isDrawn = (Sfoggiate == true)

    -- stessa arma: toggle draw / holster
    if currentSword == weaponId then
        if isDrawn then
            FoderaArmi()
            if exports.striano_combat and exports.striano_combat.submexInfo then
                exports.striano_combat:submexInfo("Weapon holstered")
            end
        else
            exports.striano_combat:strianosetweapon(weaponId)
            if exports.striano_combat and exports.striano_combat.submexInfo then
                exports.striano_combat:submexInfo("Weapon equipped")
            end
        end
        return
    end

    -- se hai un bow equipaggiato lo rimuove prima
    if (myBow or 0) > 0 then
        exports.striano_combat:foldbow()
        exports.striano_combat:setbow(0)
    end

    exports.striano_combat:strianosetweapon(weaponId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo("Weapon equipped")
    end
end)

-- =========================
-- BOW
-- =========================
exports('useBow', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local bowId = resolveBowId(data)

    if not isValidBowId(bowId) then
        print("^1[combat_inventory_bridge]^7 invalid bow id for item:", itemName or "nil", "resolved:", bowId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError("Bow not configured")
        end
        return
    end

    local currentBow = myBow or 0

    -- stesso bow: toggle remove
    if currentBow == bowId then
        exports.striano_combat:foldbow()
        exports.striano_combat:setbow(0)

        if exports.striano_combat and exports.striano_combat.submexInfo then
            exports.striano_combat:submexInfo("Bow removed")
        end
        return
    end

    -- rimuove eventuale melee prima di equipaggiare bow
    if (mySword or 0) > 0 then
        exports.striano_combat:strianosetweapon(0)
    end

    -- se non c'è una freccia selezionata, prova la 1
    if (myArrow or 0) <= 0 and ArrowList and ArrowList[1] then
        exports.striano_combat:setarrow(1)
    end

    exports.striano_combat:setbow(bowId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo("Bow equipped")
    end
end)

-- =========================
-- ARROW
-- =========================
exports('useArrow', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local arrowId = resolveArrowId(data)

    if not isValidArrowId(arrowId) then
        print("^1[combat_inventory_bridge]^7 invalid arrow id for item:", itemName or "nil", "resolved:", arrowId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError("Arrow not configured")
        end
        return
    end

    exports.striano_combat:setarrow(arrowId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo("Arrow selected")
    end
end)

-- =========================
-- SHIELD
-- =========================
exports('useShield', function(data, slot)
    if not isInventoryReady() then return end
    if not canUseInventoryItem() then return end

    local itemName = getItemName(data)
    local shieldId = resolveShieldId(data)

    if not isValidShieldId(shieldId) then
        print("^1[combat_inventory_bridge]^7 invalid shield id for item:", itemName or "nil", "resolved:", shieldId)
        if exports.striano_combat and exports.striano_combat.submexError then
            exports.striano_combat:submexError("Shield not configured")
        end
        return
    end

    local currentShield = myShield or 0

    if currentShield == shieldId then
        exports.striano_combat:strianosetshield(0)

        if exports.striano_combat and exports.striano_combat.submexInfo then
            exports.striano_combat:submexInfo("Shield removed")
        end
        return
    end

    exports.striano_combat:strianosetshield(shieldId)

    if exports.striano_combat and exports.striano_combat.submexInfo then
        exports.striano_combat:submexInfo("Shield equipped")
    end
end)