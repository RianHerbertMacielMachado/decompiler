Leviosable = { -- Insert all the objects that you want that are LEVIOSABLEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE!
	`prop_cs_rub_box_01`,`v_ind_cs_box02`,`h4_prop_battle_whiskey_bottle_2_s`,`p_ld_am_ball_01`,`prop_bskball_01`,`prop_recyclebin_03_a`,`prop_rub_binbag_sd_01`,`ng_proc_brick_01a`
}   
Finded = nil -- This is the variable of the object that its in LEVIOoOoOoOoOoOoSoSAAaAaAa mode, if you need get it with exports!

MaxDistLeviosaTake = 15.0
MaxDistLeviosaRelease = 35.0
function soundLeviosa()
	-- PlaySoundFrontend(-1,'Object_Dropped_Remote','GTAO_FM_Events_Soundset',0)
	local ped = PlayerPedId()
	shareSoundPos("sounds/magicSprint_start", 0.2, GetEntityCoords(ped), 7.0)
end
function soundLeviosaRelease()
	-- PlaySoundFrontend(-1,'Player_Exit_Line','GTAO_FM_Cross_The_Line_Soundset',0)
	local ped = PlayerPedId()
	shareSoundPos("sounds/magicSprint_end", 0.2, GetEntityCoords(ped), 7.0)
end