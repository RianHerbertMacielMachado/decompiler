fx_version 'cerulean'
game 'gta5'
lua54 'yes'

files {
	'pool.json', -- spawned object permanent
    'spawnable_objects.json', -- list of spawnable objects dinamically created by owner of server/admins
	'doors.json', -- spawned doors openable (pin optional)
}

-- In this resource is included also striano_sit but at moment make it works properly you need striano_editor
description 'Place Items & Construction by Striano Scripts' -- Included striano_card to place card around world and play!
version '1.1.17'

ui_page 'nui/index.html'
files {
	'nui/images/*.png',
    'nui/index.html',
	'nui/style.css',
	'nui/app.js',
	'server/*.lua',
	'server/editable/*.lua',
}

shared_scripts {
	'quests_list.lua',
	'duskfalls_weapon.lua',
	'duskfalls_config.lua',
	'config_heist.lua',
}


client_scripts {
    'client/**/*.lua'
}

server_scripts {
    'server/*.lua',
	'server/editable/*.lua',
}

escrow_ignore {
	'server/editable/*.lua',
	'client/editable/editable_editor.lua',
	'client/editable/editable_lights.lua',
}

files {
	'tattoos/AllTattoos.json',
    'tattoos/mpairraces_overlays.xml',
    'tattoos/mpbiker_overlays.xml',
    'tattoos/mpgunrunning_overlays.xml',
    'tattoos/mpheist3_overlays.xml',
    'tattoos/mpluxe2_overlays.xml',
    'tattoos/mpsmuggler_overlays.xml',
    'tattoos/mpstunt_overlays.xml',
	'tattoos/new_overlays_tattoo.xml',
	'tattoos/sodbloodtattoo_overlays.xml',
	'tattoos/tattoo_sod_overlays.xml',
	'tattoos/shop_tattoo.meta',
}

data_file 'PED_OVERLAY_FILE' 'tattoos/mpairraces_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/mpbiker_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/mpgunrunning_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/mpheist3_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/mpluxe2_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/mpsmuggler_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/mpstunt_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/new_overlays_tattoo.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/sodbloodtattoo_overlays.xml'
data_file 'PED_OVERLAY_FILE' 'tattoos/tattoo_sod_overlays.xml'
data_file 'TATTOO_SHOP_DLC_FILE' 'tattoos/shop_tattoo.meta'

dependency '/assetpacks'