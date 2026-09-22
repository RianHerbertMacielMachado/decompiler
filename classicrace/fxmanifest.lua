fx_version 'cerulean'
games { 'gta5' }

lua54 'yes'

shared_script '@es_extended/imports.lua'

client_scripts {
	'config.lua',
	'client/client.lua',
	'client/main.lua',
}

server_scripts {
	'config.lua',
	'@mysql-async/lib/MySQL.lua', -- if you want you can change with oxmysql and change the query as you need server side.
	'server/esx_load.lua',
	'server/main.lua',
}

escrow_ignore {
    'config.lua', 
	'client/client.lua',
	'server/esx_load.lua',
}

files {
	'server/esx_load.lua',
	'server/main.lua'
}

-- Script created by striano scripts
-- Version of this script [1.0]



dependency '/assetpacks'