-- user_manager_client.lua
-- Client-side User Manager: shows a radial fast-menu with the players list
-- and allows admins to inspect user data and delete players.
-- Uses striano_fastmenu exports for all menu building.

local playersList = {}   -- cache of player entries sent from the server
local openMainMenu       -- forward declaration
local openUserDetail     -- forward declaration
local openDeleteConfirm  -- forward declaration

-- ─── Safety toggle: must run /icanDeleteUser before deletes are allowed ───
icanDeleteUser = false
RegisterCommand("icanDeleteUser", function()
    icanDeleteUser = not icanDeleteUser
end)

-- ─── Recursive helper: populate menu with key=value entries from a table ──
-- Skips the "skin" key (too verbose).
-- Nested tables are expanded with dot-notation prefixes.
local function populateDataEntries(dataTable, prefix)
    prefix = prefix or ""
    for key, value in pairs(dataTable) do
        if key ~= "skin" then
            local label = prefix .. tostring(key)
            if type(value) == "table" then
                if next(value) == nil then
                    -- Empty table: show as []
                    exports.striano_fastmenu:addMenuItem(label .. " = []", function() end, false)
                else
                    -- Recurse with dot prefix
                    populateDataEntries(value, label .. ".")
                end
            else
                exports.striano_fastmenu:addMenuItem(label .. " = " .. tostring(value), function() end, false)
            end
        end
    end
end

-- ─── Delete Confirmation menu ─────────────────────────────────────────────
openDeleteConfirm = function(userData)
    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem(
        "Are you sure you want to delete " .. userData.name .. "?",
        function() end,
        false
    )

    exports.striano_fastmenu:addMenuItemAdvanced({
        label     = "[ YES, DELETE USER ]",
        color     = "#ff3b3b",
        autoClose = false,
        onClick   = function()
            if icanDeleteUser then
                TriggerServerEvent("striano:deleteUserFromAdmin", userData.identifier)
            else
                print("You can't delete user.")
            end
            exports.striano_fastmenu:close()
        end,
    })

    exports.striano_fastmenu:addMenuItem("[ NO, GO BACK ]", function()
        openUserDetail(userData)
    end, false)
end

-- ─── User Detail menu ────────────────────────────────────────────────────
openUserDetail = function(userData)
    exports.striano_fastmenu:clearMenu()

    -- Back button
    exports.striano_fastmenu:addMenuItem("↑ Back", function()
        openMainMenu()
    end, false)

    -- Header
    exports.striano_fastmenu:addMenuItem("[ USER: " .. userData.name .. " ]", function() end, false)

    -- Enumerate all stored data keys
    populateDataEntries(userData.data)

    -- Delete button
    exports.striano_fastmenu:addMenuItemAdvanced({
        label     = "[ DELETE USER ] " .. userData.name,
        color     = "#ff3b3b",
        autoClose = false,
        onClick   = function()
            openDeleteConfirm(userData)
        end,
    })
end

-- ─── Main (players list) menu ─────────────────────────────────────────────
openMainMenu = function()
    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem("[ PLAYERS LIST ]", function() end, false)

    for _, userData in ipairs(playersList) do
        local entry = userData  -- capture for closure
        exports.striano_fastmenu:addMenuItem("• " .. entry.name, function()
            openUserDetail(entry)
        end, false)
    end

    exports.striano_fastmenu:openMenu()
end

-- ─── Network event: server sends updated player list and opens menu ────────
RegisterNetEvent("striano:openUsersMenu")
AddEventHandler("striano:openUsersMenu", function(list)
    playersList = list or {}
    openMainMenu()
end)
