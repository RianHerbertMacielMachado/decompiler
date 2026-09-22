
fx_version 'cerulean'
games { 'gta5' }
version '1.3.1'
lua54 'yes'

client_scripts {
	'client/[editable client]/*.lua',
	'client/[phar client]/exportsclient.lua',
	'client.lua',
	'client/*.lua',
	'client/[phar client]/*.lua',
}

server_scripts {
	'server/[json manager]/json_manager.lua',
	'server/*.lua',
	'server/[phar server]/*.lua',
	'server/[editable server]/*.lua',
}

shared_scripts {
	'casate_config.lua'
}

escrow_ignore {
	'server/[json manager]/*.lua',
    'server/[editable server]/*.lua',
}

ui_page{
    'html/ui.html'
}

files {
    'html/ui.html',
    'html/ui.js',
	'html/striano_admin_app.js',
	'html/striano_admin_style.css',
    'html/ui.css',
	'html/imgs/**/*',
	'server/[json manager]/json_manager.lua',
	'server/*.lua',
	'server/[phar server]/*.lua',
	'server/[editable server]/*.lua',
	
	-- REMEMBER TO INSERT YOUR LOCAL GIF HERE!
	-- YOU CAN ALSO INSERT DIRECTLY THE LINK IN THE EXPORT AND LOAD NOTHING HERE!
	-- 'gifs/fly.gif', -- or tutorial.gif if supported
	-- 'gifs/ashplant.gif',
}

data_file 'DLC_ITYP_REQUEST' 'stream/mads_no_exp_pumps.ytyp'

-- PER LA GESTIONE DI FX IN HUB MANAGER, LA LUCE BLU! NON TOGLIERE!
exports {
  'StartFx', 'StartFxOnBone', 'StopFx', 'StopAllFx', 'StartFakeLoop', 'StopFakeLoop',
  'CountActiveFx', 'ClearFxInRange',
  'StartFxCoord', 'StartFxCoordNet', 'UpdateFxCoord', 'StopFxCoord',
  'StartFakeLoopCoord', 'StopFakeLoopCoord'
}
dependency '/assetpacks'