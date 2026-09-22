fx_version 'cerulean'
game 'gta5'
version '1.0.9'
author 'StrianoDev'
description 'FastMenu - Menu UI optimised for FiveM'
lua54 'yes'

ui_page 'html/index.html'

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'server/main.lua'
}

escrow_ignore {
   'example_usage.lua',
}

export 'openMenu'
export 'closeMenu'
export 'addMenuItem'
export 'removeMenuItem'
export 'clearMenu'
export 'setMenuPosition'
export 'setAutoClose'

dependency '/assetpacks'