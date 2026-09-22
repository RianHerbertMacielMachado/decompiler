local RESOURCE_NAME = GetCurrentResourceName()

local function sanitizeDescription(label, data)
    local dmg = data.dmg or 0
    local st = data.st or 0
    return ("%s | Damage: %s | Style: %s"):format(label, dmg, st)
end

local function swordItemName(data, index)
    -- meglio usare st perché è più stabile dell'indice
    return ("combat_weapon_%s"):format(data.st or index)
end

local function saveJsonFile(fileName, data)
    local jsonText = json.encode(data, { indent = true })

    SaveResourceFile(
        RESOURCE_NAME,
        fileName,
        jsonText,
        -1
    )

    print(("[STRIANO COMBAT] File generato: %s"):format(fileName))
end

RegisterCommand("striano_combat_oxitems", function(source)
    if source ~= 0 then
        print("[STRIANO COMBAT] Please use this command from server console.")
        return
    end

    local items = {}

    for index, weapon in ipairs(SwordList or {}) do
        local label = weapon.Name or ("Weapon " .. index)
        local itemName = swordItemName(weapon, index)

        items[itemName] = {
            label = label,
            weight = weapon.big and 3000 or 1000,
            stack = false,
            close = true,
            description = sanitizeDescription(label, weapon),
            client = {
                export = "striano_combat.useCombatWeapon"
            }
        }
    end

    saveJsonFile("ox_items.json", items)
	print("[STRIANO COMBAT] File ready in the main resources, please paste in your ox inventory!")
end, true)

RegisterCommand("striano_combat_qbitems", function(source)
    if source ~= 0 then
        print("[STRIANO COMBAT] Please use this command from server console.")
        return
    end

    local items = {}

    for index, weapon in ipairs(SwordList or {}) do
        local label = weapon.Name or ("Weapon " .. index)
        local itemName = swordItemName(weapon, index)

        items[itemName] = {
            name = itemName,
            label = label,
            weight = weapon.big and 3000 or 1000,
            type = "item",
            image = itemName .. ".png",
            unique = true,
            useable = true,
            shouldClose = true,
            description = sanitizeDescription(label, weapon)
        }
    end

    saveJsonFile("qb_items.json", items)
	print("[STRIANO COMBAT] File ready in the main resources, please paste in your qb inventory!")
end, true)