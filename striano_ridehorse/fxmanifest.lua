-- 4 Years of development only on this System!
-- Thank you so much for the support!

fx_version 'cerulean'
games { 'gta5' }

author 'strianodev.com'
description 'Mounts System by Striano Scripts v3' -- Ride Horse ! <3 
version '3.2.2' -- THE BEGIN OF v3 - DELETED SQL, NOW IS MANAGED LOCALLY WITH JSON!

lua54 'yes'

client_scripts {
	'client/*.lua',
	'client/editable/*.lua',
}

server_scripts {
	'server/editable/*.lua',
	'server/*.lua',
}

ui_page 'ui/index.html'

files {
    'ui/*',
	'audio/sfx/ANIMALS_NEAR/deer_near_01.awc',
	'peds.meta',
	'server/editable/*.lua',
	'server/*.lua',
}

data_file 'AUDIO_WAVEPACK' 'audio/sfx/ANIMALS_NEAR'
data_file 'PED_METADATA_FILE' 'peds.meta'

escrow_ignore {
   'client/editable/*.lua',
   'server/editable/*.lua',
}

dependency '/assetpacks'