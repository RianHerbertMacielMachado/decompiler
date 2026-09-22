-- STRIANO BOAT 
fx_version 'cerulean'
games { 'gta5' }
version '1.5'
lua54 'yes'

data_file 'DLC_ITYP_REQUEST' 'stream/strn_remo.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/vikingship.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ship_project.ytyp'

client_scripts {
	'boat_config.lua',
	'client/*.lua',
}

server_scripts {
	'server/*.lua',
}

escrow_ignore {
   'boat_config.lua',
   'server/*.lua',
}

files {
	'server/*.lua',
}
dependency '/assetpacks'