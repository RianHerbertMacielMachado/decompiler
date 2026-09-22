fx_version 'cerulean'
games { 'gta5' }
version '1.0.9'
lua54 'yes'
author 'strianodev' description 'Script to get a new way to discovery map!'

files {
    'web/*',
}

shared_scripts {
    'client/editable/way_config.lua',
}

client_scripts {
	'client/**/*.lua'
}

server_scripts {
	'server/*.lua',
}

escrow_ignore {
   'client/editable/*.lua',
}

ui_page 'web/index.html'
files {
    'web/index.html',
	'web/style.css',
	'web/script.js',
    'server/*.lua',
}
dependency '/assetpacks'