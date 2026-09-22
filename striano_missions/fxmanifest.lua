-- STRIANO MISSIONS & QUEST (and DUSKFALLS mode -> BATTLE ROYALE)
fx_version 'cerulean'
games { 'gta5' }
version '1.0.17'
lua54 'yes'

shared_scripts {
	'quests_list.lua',
	'duskfalls_weapon.lua',
	'duskfalls_config.lua',
	'config_heist.lua',
}

client_scripts {
	'client/*.lua',
}

server_scripts {
	'server/*.lua',
}

ui_page 'html/index.html'

files {
	'html/images/*.png',
    'html/*',
	'server/*.lua',
}

escrow_ignore { 
	'server/pen1_config.lua',
	'pen1_config.lua',
	'quests_list.lua',
	'duskfalls_weapon.lua',
	'duskfalls_config.lua',
}
dependency '/assetpacks'