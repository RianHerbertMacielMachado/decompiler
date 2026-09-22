fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'
version '1.3.6'
server_scripts { 
	'server/server_config/*.lua', 
	'server/*.lua',
}

client_scripts {
	'books_list_ita.lua',
	'books_list_eng.lua',
	'books_config.lua',
	'client/client_config/*.lua', 
	'client/*.lua',
}

ui_page "html2d/index.html"

files {
	"html2d/*.js",
    "html2d/index.html",
    "html2d/style.css",
    "html2d/**/*",
	'server/server_config/*.lua', 
	'server/*.lua',
}

shared_scripts {
    'items_list.lua',
}

escrow_ignore {
    'client/client_config/*.lua', 
}
dependency '/assetpacks'