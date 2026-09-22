-- STRIANO COMBAT
-- THE BEST PVP AND PVE COMBAT SYSTEM ON FIVEM
-- NOW ALSO WITH EASYCOMBAT VERSION TO FIGHT EASLY WITH MOUSE LEFT!

-- IF YOU NEED THE OX or QB ITEM LIST PLEASE USE THE COMMAND AS FOLLOW TO GENERATE THE FILE!
-- /striano_combat_oxitems - /striano_combat_qbitems

fx_version 'cerulean'
games { 'gta5' }
version '1.9.99.62' -- REMOVED SQL, NOW ALL IS MANAGED WITH JSON!
author 'strianodev.com'
description 'A new way to fight PvP & PvE in FiveM!'
lua54 'yes'

server_scripts {
	'server/server_config/json manager/combat_storage_json.lua',
	'server/server_config/*.lua',
	'server/server_core/*.lua',
	'server/*.lua',
}

client_scripts {
	'client/**.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/styles.css',
	'html/zone.js',
	-- SPELLS GRIMORIE UI
    'html/images/spells/*.png',
	'html/sounds/*.wav',
	-- DOGMA STUDIO COPYRIGHT FOR THE VEHICLE
    'data/**/carcols.meta',
    'data/**/carvariations.meta',
    'data/**/handling.meta',
    'data/**/vehicles.meta',
	'server/server_config/json manager/combat_storage_json.lua',
	'server/server_config/*.lua',
	'server/server_core/*.lua',
	'server/*.lua',
}

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'

shared_scripts {
	'client/combat_config/combat_weapons.lua',
	'client/combat_config/combat_ox_bridge.lua', -- FOR QB-CORE and QB-INV -- FOR QB USE THIS! combat_qb_bridge.lua
    'spawner_enemys.lua',	
}

escrow_ignore {
	'spawner_enemys.lua', -- Here you can manage the spawn of enemy.
	'client/combat_config/*.lua',
	'server/server_config/json manager/*.lua',
	'server/server_config/*.lua',
	'XSOUND SETUP/**',
	'SQL SETUP/**',
}

exports {
    'addSpell',
    'removeSpell',
    'disableSpell',
    'enableSpell',
    'openGrimoire',
    'closeGrimoire',
    'toggleGrimoireVisibility'
}

dependency '/assetpacks'