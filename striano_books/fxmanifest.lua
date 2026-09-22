fx_version 'cerulean'
game 'gta5'

lua54 'yes'

ui_page 'html/index.html'

client_scripts {
	'config.lua',
    'client/main.lua',
}

escrow_ignore {
	'config.lua'
}

files {
    "html/*.html",
    "html/*.css",
    "html/*.js",
    'html/img/**/*.png',
}
dependency '/assetpacks'