fx_version 'cerulean'
version '1.0.4'
game 'gta5'
author 'StrianoDev'
description 'Dear ImgUi inspired admin menu'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/app.js',
    'server/main.lua',
}

client_scripts {
	'client/adminmenu_config.lua',
}
server_scripts {
    'server/main.lua',
}

dependency '/assetpacks'