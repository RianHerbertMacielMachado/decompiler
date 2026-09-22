-- freecamclient.lua
-- Systems: sound browser, timecycle filter browser, freecam
-- Admin-only commands: /filtri, /nativesound, /freecam, /getFilter

-- ════════════════════════════════════════════════════════════════
-- DATA TABLES
-- ════════════════════════════════════════════════════════════════

--- soundList[N] = {id, soundName, soundSet, flag}
--- Played via PlaySoundFrontend in the sound browser.
local soundList = {
    {-1, "ARM_3_CAR_GLASS_CRASH", 0, 1},
    {-1, "ARM_3_PISTOL_COCK", 0, 1},
    {-1, "ARM_WRESTLING_WHOOSH_MASTER", 0, 1},
    {-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "BACK", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "BACK", "HUD_FREEMODE_SOUNDSET", 1},
    {-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "BACK", "HUD_FRONTEND_MP_SOUNDSET", 1},
    {-1, "BACK", "HUD_FRONTEND_TATTOO_SHOP_SOUNDSET", 1},
    {-1, "BACK", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Banshee2_Upgrade", "JA16_Super_Mod_Garage_Sounds", 1},
    {-1, "Beast_Checkpoint", "APT_BvS_Soundset", 0},
    {-1, "Beast_Checkpoint_NPC", "APT_BvS_Soundset", 0},
    {-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "Blade_Appear", "APT_BvS_Soundset", 0},
    {-1, "BOATS_PLANES_HELIS_BOOM", "MP_LOBBY_SOUNDS", 1},
    {-1, "Bomb_Disarmed", "GTAO_Speed_Convoy_Soundset", 0},
    {-1, "Boss_Blipped", "GTAO_Magnate_Hunt_Boss_SoundSet", 0},
    {-1, "Boss_Message_Orange", "GTAO_Boss_Goons_FM_Soundset", 0},
    {-1, "Breaker_01", "DLC_HALLOWEEN_FVJ_Sounds", 0},
    {-1, "Breaker_02", "DLC_HALLOWEEN_FVJ_Sounds", 0},
    {-1, "BULL_SHARK_TESTOSTERONE_END_MASTER", "", 0},
    {-1, "BULL_SHARK_TESTOSTERONE_START_MASTER", "", 0},
    {-1, "Bus_Schedule_Pickup", "DLC_PRISON_BREAK_HEIST_SOUNDS", 0},
    {-1, "CABLE_SNAPS", "CONSTRUCTION_ACCIDENT_1_SOUNDS", 1},
    {-1, "CAM_PAN_DARTS", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Camera_Shoot", "Phone_Soundset_Franklin", 1},
    {-1, "CANCEL", "HUD_FREEMODE_SOUNDSET", 1},
    {-1, "CANCEL", "HUD_FRONTEND_CLOTHESSHOP_SOUNDSET", 1},
    {-1, "CANCEL", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "CANCEL", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "CANCEL", "HUD_LIQUOR_STORE_SOUNDSET", 1},
    {-1, "CANCEL", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1},
    {-1, "CHARACTER_SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "CHECKPOINT_AHEAD", "HUD_MINI_GAME_SOUNDSET", 0},
    {-1, "Checkpoint_Beast_Hit", "FM_Events_Sasquatch_Sounds", 0},
    {-1, "CHECKPOINT_BEHIND", "HUD_MINI_GAME_SOUNDSET", 0},
    {-1, "Checkpoint_Cash_Hit", "GTAO_FM_Events_Soundset", 0},
    {-1, "Checkpoint_Hit", "GTAO_FM_Events_Soundset", 0},
    {-1, "CHECKPOINT_MISSED", "HUD_MINI_GAME_SOUNDSET", 0},
    {-1, "CHECKPOINT_NORMAL", "HUD_MINI_GAME_SOUNDSET", 0},
    {-1, "CHECKPOINT_PERFECT", "HUD_MINI_GAME_SOUNDSET", 0},
    {-1, "Checkpoint_Teammate", "GTAO_Shepherd_Sounds", 0},
    {-1, "CHECKPOINT_UNDER_THE_BRIDGE", "HUD_MINI_GAME_SOUNDSET", 0},
    {-1, "Cheers", "DLC_TG_Running_Back_Sounds", 0},
    {-1, "Click", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1},
    {-1, "Click_Fail", "WEB_NAVIGATION_SOUNDS_PHONE", 1},
    {-1, "Click_Special", " WEB_NAVIGATION_SOUNDS_PHONE", 1},
    {-1, "Click_Special", "WEB_NAVIGATION_SOUNDS_PHONE", 1},
    {-1, "CLOSE_WINDOW", "LESTER1A_SOUNDS", 1},
    {-1, "CLOSED", "DLC_APT_YACHT_DOOR_SOUNDS", 1},
    {-1, "CLOSED", "MP_PROPERTIES_ELEVATOR_DOORS", 1},
    {-1, "COMPUTERS_MOUSE_CLICK", 0, 1},
    {-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "CONTINUE", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "CONTINUE", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Continue_Accepted", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Continue_Appears", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Crash", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "Criminal_Damage_High_Value", "GTAO_FM_Events_Soundset", 0},
    {-1, "Criminal_Damage_Kill_Player", "GTAO_FM_Events_Soundset", 0},
    {-1, "Criminal_Damage_Low_Value", "GTAO_FM_Events_Soundset", 0},
    {-1, "CUTSCENE_DIALOGUE_OVERRIDE_SOUND_02", 0, 0},
    {-1, "Cycle_Item", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "DELETE", "HUD_DEATHMATCH_SOUNDSET", 1},
    {-1, "Delete_Placed_Prop", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "Deliver_Pick_Up", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 1},
    {-1, "DiggerRevOneShot", "BulldozerDefault", 1},
    {-1, "Door_Open", "DOCKS_HEIST_FINALE_2B_SOUNDS", 1},
    {-1, "Drill_Pin_Break", "DLC_HEIST_FLEECA_SOUNDSET", 1},
    {-1, "Dropped", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 1},
    {-1, "DRUG_TRAFFIC_AIR_BOMB_DROP_ERROR_MASTER", 0, 1},
    {-1, "DRUG_TRAFFIC_AIR_SCREAMS", 0, 1},
    {-1, "EDIT", "HUD_DEATHMATCH_SOUNDSET", 1},
    {-1, "End_Squelch", "CB_RADIO_SFX", 1},
    {-1, "Enemy_Capture_Start", "GTAO_Magnate_Yacht_Attack_Soundset", 0},
    {-1, "Enemy_Deliver", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 1},
    {-1, "Enemy_Pick_Up", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 1},
    {-1, "Enter_1st", "GTAO_FM_Events_Soundset", 0},
    {-1, "Enter_1st", "GTAO_Magnate_Boss_Modes_Soundset", 0},
    {-1, "Enter_Area", "DLC_Lowrider_Relay_Race_Sounds", 0},
    {-1, "Enter_Capture_Zone", "DLC_Apartments_Drop_Zone_Sounds", 0},
    {-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "ERROR", "HUD_FRONTEND_CLOTHESSHOP_SOUNDSET", 1},
    {-1, "ERROR", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "ERROR", "HUD_FRONTEND_TATTOO_SHOP_SOUNDSET", 1},
    {-1, "ERROR", "HUD_LIQUOR_STORE_SOUNDSET", 1},
    {-1, "Event_Message_Purple", "GTAO_FM_Events_Soundset", 0},
    {-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 0},
    {-1, "EXILE_3_TRAIN_BRAKE_PULL_MASTER", 0, 1},
    {-1, "EXILE_3_TRAIN_BRAKE_RELEASE_MASTER", 0, 1},
    {-1, "EXIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Exit_Capture_Zone", "DLC_Apartments_Drop_Zone_Sounds", 0},
    {-1, "Failure", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "Falling_Crates", "EXILE_1", 1},
    {-1, "FAMILY_1_CAR_BREAKDOWN", "FAMILY1_BOAT", 1},
    {-1, "FAMILY_1_CAR_BREAKDOWN_ADDITIONAL", "FAMILY1_BOAT", 1},
    {-1, "Faster_Bar_Full", "RESPAWN_ONLINE_SOUNDSET", 1},
    {-1, "Faster_Click", "RESPAWN_ONLINE_SOUNDSET", 1},
    {-1, "FestiveGift", "Feed_Message_Sounds", 0},
    {-1, "FIRST_PLACE", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "FLYING_STREAM_END_INSTANT", "FAMILY_5_SOUNDS", 1},
    {-1, "FocusIn", "HintCamSounds", 1},
    {-1, "FocusOut", "HintCamSounds", 1},
    {-1, "Friend_Deliver", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 1},
    {-1, "Friend_Pick_Up", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 0},
    {-1, "Friend_Pick_Up", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 1},
    {-1, "Frontend_Beast_Fade_Screen", "FM_Events_Sasquatch_Sounds", 0},
    {-1, "Frontend_Beast_Freeze_Screen", "FM_Events_Sasquatch_Sounds", 0},
    {-1, "Frontend_Beast_Text_Hit", "FM_Events_Sasquatch_Sounds", 0},
    {-1, "Frontend_Beast_Transform_Back", "FM_Events_Sasquatch_Sounds", 0},
    {-1, "GO", "HUD_MINI_GAME_SOUNDSET", 0},
    {-1, "GO", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "GO_NON_RACE", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Goal", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "GOLF_HUD_HOLE_IN_ONE_MASTER", 0, 1},
    {-1, "GOLF_HUD_SCORECARD_MASTER", 0, 1},
    {-1, "Goon_Paid_Small", "GTAO_Boss_Goons_FM_Soundset", 0},
    {-1, "Grab_Parachute", "BASEJUMPS_SOUNDS", 1},
    {-1, "Hack_Failed", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", 0},
    {-1, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", 1},
    {-1, "HACKING_CLICK", 0, 1},
    {-1, "HACKING_CLICK_BAD", 0, 1},
    {-1, "HACKING_CLICK_GOOD", 0, 1},
    {-1, "HACKING_FAILURE", 0, 1},
    {-1, "HACKING_MOVE_CURSOR", 0, 1},
    {-1, "HACKING_SUCCESS", 0, 1},
    {-1, "Hang_Up", "Phone_SoundSet_Michael", 1},
    {-1, "HIGHLIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Highlight_Accept", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Highlight_Cancel", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Highlight_Error", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Highlight_Move", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "HIGHLIGHT_NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Hit", "RESPAWN_ONLINE_SOUNDSET", 1},
    {-1, "Hit", "RESPAWN_SOUNDSET", 0},
    {-1, "Hit", "RESPAWN_SOUNDSET", 1},
    {-1, "Hit_1", "LONG_PLAYER_SWITCH_SOUNDS", 0},
    {-1, "Hit_1", "LONG_PLAYER_SWITCH_SOUNDS", 1},
    {-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", 1},
    {-1, "Hit_Out", "PLAYER_SWITCH_CUSTOM_SOUNDSET", 1},
    {-1, "HOORAY", "BARRY_02_SOUNDSET", 1},
    {-1, "HORDE_COOL_DOWN_TIMER", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "HUD_FREEMODE_CANCEL_MASTER", 0, 1},
    {-1, "Kill_List_Counter", "GTAO_FM_Events_Soundset", 0},
    {-1, "LAMAR1_PARTYGIRLS_master", 0, 1},
    {-1, "LEADER_BOARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "LEADERBOARD", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Lester_Laugh_Phone", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "Lights_On", "GTAO_MUGSHOT_ROOM_SOUNDS", 1},
    {-1, "LIMIT", "DLC_APT_YACHT_DOOR_SOUNDS", 1},
    {-1, "LIMIT", "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS", 1},
    {-1, "LIMIT", "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS", 1},
    {-1, "Load_Scene", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0},
    {-1, "LOCAL_PLYR_CASH_COUNTER_INCREASE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0},
    {-1, "LOOSE_MATCH", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0},
    {-1, "Lose_1st", "GTAO_Magnate_Boss_Modes_Soundset", 0},
    {-1, "Lowrider_Upgrade", "Lowrider_Super_Mod_Garage_Sounds", 1},
    {-1, "Map_Roll_Down", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Map_Roll_Up", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "MARKER_ERASE", "HEIST_BULLETIN_BOARD_SOUNDSET", 1},
    {-1, "MARTIN1_DISTANT_TRAIN_HORNS_MASTER", 0, 1},
    {-1, "MEDAL_UP", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Menu_Accept", "Phone_SoundSet_Default", 1},
    {-1, "MICHAEL_LONG_SCREAM", "FAMILY_5_SOUNDS", 1},
    {-1, "MICHAEL_SOFA_REMOTE_CLICK_VOLUME_MASTER", 0, 1},
    {-1, "MICHAEL_SOFA_TV_CHANGE_CHANNEL_MASTER", 0, 1},
    {-1, "MICHAEL_SOFA_TV_ON_MASTER", 0, 1},
    {-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0},
    {-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1},
    {-1, "MP_5_SECOND_TIMER", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "MP_IDLE_KICK", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "MP_IDLE_TIMER", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "MP_RANK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "MP_WAVE_COMPLETE", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "Nav_Arrow_Ahead", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1},
    {-1, "Nav_Arrow_Behind", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1},
    {-1, "Nav_Arrow_Left", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1},
    {-1, "Nav_Arrow_Right", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1},
    {-1, "NAV_LEFT_RIGHT", "HUD_FREEMODE_SOUNDSET", 1},
    {-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "NAV_UP_DOWN", "HUD_FREEMODE_SOUNDSET", 1},
    {-1, "NAV_UP_DOWN", "HUD_FRONTEND_CLOTHESSHOP_SOUNDSET", 1},
    {-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "NAV_UP_DOWN", "HUD_FRONTEND_TATTOO_SHOP_SOUNDSET", 1},
    {-1, "NAV_UP_DOWN", "HUD_LIQUOR_STORE_SOUNDSET", 1},
    {-1, "NAV_UP_DOWN", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Near_Miss_Counter_Reset", "GTAO_FM_Events_Soundset", 0},
    {-1, "NET_RACE_START_EVENT_MASTER", 0, 1},
    {-1, "NO", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Object_Collect_Player", "GTAO_FM_Events_Soundset", 0},
    {-1, "Object_Collect_Remote", "GTAO_FM_Events_Soundset", 0},
    {-1, "Object_Dropped_Remote", "GTAO_FM_Events_Soundset", 0},
    {-1, "OFF", v_4, 1},
    {-1, "Off_High", "MP_RADIO_SFX", 1},
    {-1, "OK", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "ON", "NOIR_FILTER_SOUNDS", 1},
    {-1, "On_Call_Player_Join", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1},
    {-1, "OOB_Cancel", "GTAO_FM_Events_Soundset", 0},
    {-1, "OOB_Start", "GTAO_FM_Events_Soundset", 0},
    {-1, "OPEN_WINDOW", "LESTER1A_SOUNDS", 1},
    {-1, "OPENED", "MP_PROPERTIES_ELEVATOR_DOORS", 1},
    {-1, "Out_Of_Area", "DLC_Lowrider_Relay_Race_Sounds", 0},
    {-1, "Paper_Shuffle", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Parcel_Vehicle_Lost", "GTAO_FM_Events_Soundset", 0},
    {-1, "Payment_Non_Player", "DLC_HEISTS_GENERIC_SOUNDS", 0},
    {-1, "Payment_Player", "DLC_HEISTS_GENERIC_SOUNDS", 0},
    {-1, "Pen_Tick", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "PERSON_SCROLL", "HEIST_BULLETIN_BOARD_SOUNDSET", 1},
    {-1, "PERSON_SELECT", "HEIST_BULLETIN_BOARD_SOUNDSET", 1},
    {-1, "Phone_Generic_Key_02", "HUD_MINIGAME_SOUNDSET", 1},
    {-1, "Phone_Generic_Key_03", "HUD_MINIGAME_SOUNDSET", 1},
    {-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "PICK_UP_WEAPON", "HUD_FRONTEND_CUSTOM_SOUNDSET", 1},
    {-1, "PICKUP_WEAPON_SMOKEGRENADE", "HUD_FRONTEND_WEAPONS_PICKUPS_SOUNDSET", 1},
    {-1, "Pin_Bad", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", 1},
    {-1, "PIN_BUTTON", "ATM_SOUNDS", 1},
    {-1, "Pin_Centred", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", 1},
    {-1, "Pin_Good", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", 1},
    {-1, "PIPES_LAND", "CONSTRUCTION_ACCIDENT_1_SOUNDS", 1},
    {-1, "Place_Prop_Fail", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "Place_Prop_Success", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "Player_Collect", "DLC_PILOT_MP_HUD_SOUNDS", 0},
    {-1, "Player_Enter_Line", "GTAO_FM_Cross_The_Line_Soundset", 0},
    {-1, "Player_Exit_Line", "GTAO_FM_Cross_The_Line_Soundset", 0},
    {-1, "Power_Down", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "Pre_Screen_Stinger", "DLC_HEISTS_FAILED_SCREEN_SOUNDS", 0},
    {-1, "Pre_Screen_Stinger", "DLC_HEISTS_FINALE_SCREEN_SOUNDS", 0},
    {-1, "Pre_Screen_Stinger", "DLC_HEISTS_FINALE_SCREEN_SOUNDS", 1},
    {-1, "Pre_Screen_Stinger", "DLC_HEISTS_PREP_SCREEN_SOUNDS", 0},
    {-1, "Pre_Screen_Stinger", "DLC_HEISTS_PREP_SCREEN_SOUNDS", 1},
    {-1, "PROPERTY_PURCHASE_MEDIUM", "HUD_PROPERTY_SOUNDSET", 1},
    {-1, "PS2A_DISTANT_TRAIN_HORNS_MASTER", 0, 1},
    {-1, "PS2A_MONEY_LOST", "PALETO_SCORE_2A_BANK_SS", 1},
    {-1, "PURCHASE", "HUD_FRONTEND_TATTOO_SHOP_SOUNDSET", 1},
    {-1, "PURCHASE", "HUD_LIQUOR_STORE_SOUNDSET", 1},
    {-1, "PUSH", "DLC_APT_YACHT_DOOR_SOUNDS", 1},
    {-1, "PUSH", "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS", 1},
    {-1, "PUSH", "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS", 1},
    {-1, "Put_Away", "Phone_SoundSet_Michael", 1},
    {-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "QUIT_WHOOSH", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Radar_Beast_Blip", "FM_Events_Sasquatch_Sounds", 0},
    {-1, "RAMP_DOWN", "TRUCK_RAMP_DOWN", 1},
    {-1, "RAMP_UP", "TRUCK_RAMP_DOWN", 1},
    {-1, "RAMPAGE_KILLED_COUNTER_MASTER", 0, 1},
    {-1, "RAMPAGE_KILLED_HEAD_SHOT_MASTER", 0, 1},
    {-1, "RAMPAGE_PASSED_MASTER", 0, 1},
    {-1, "RAMPAGE_ROAR_MASTER", 0, 1},
    {-1, "REMOTE_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0},
    {-1, "REMOTE_PLYR_CASH_COUNTER_INCREASE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0},
    {-1, "Remote_Sniper_Rifle_Fire", 0, 1},
    {-1, "Reset_Prop_Position", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "RESTART", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "RETRY", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Retune_High", "MP_RADIO_SFX", 1},
    {-1, "ROBBERY_MONEY_TOTAL", "HUD_FRONTEND_CUSTOM_SOUNDSET", 1},
    {-1, "ROPE_CUT", "ROPE_CUT_SOUNDSET", 1},
    {-1, "ROUND_ENDING_STINGER_CUSTOM", "CELEBRATION_SOUNDSET", 0},
    {-1, "Save_Scene", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "SCOPE_UI_MASTER", 0, 1},
    {-1, "SCREEN_FLASH", "CELEBRATION_SOUNDSET", 1},
    {-1, "ScreenFlash", "MissionFailedSounds", 1},
    {-1, "SELECT", "HUD_FREEMODE_SOUNDSET", 1},
    {-1, "SELECT", "HUD_FRONTEND_CLOTHESSHOP_SOUNDSET", 1},
    {-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "SELECT", "HUD_FRONTEND_MP_SOUNDSET", 0},
    {-1, "SELECT", "HUD_FRONTEND_MP_SOUNDSET", 1},
    {-1, "SELECT", "HUD_FRONTEND_TATTOO_SHOP_SOUNDSET", 1},
    {-1, "SELECT", "HUD_LIQUOR_STORE_SOUNDSET", 1},
    {-1, "SELECT", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "Select_Placed_Prop", "DLC_Dmod_Prop_Editor_Sounds", 0},
    {-1, "Shard_Disappear", "GTAO_Boss_Goons_FM_Shard_Sounds", 0},
    {-1, "Shard_Disappear", "GTAO_FM_Events_Soundset", 0},
    {-1, "Short_Transition_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", 1},
    {-1, "Short_Transition_Out", "PLAYER_SWITCH_CUSTOM_SOUNDSET", 1},
    {-1, "SKIP", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Start", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "Start_Squelch", "CB_RADIO_SFX", 1},
    {-1, "STUN_COLLECT", "MINUTE_MAN_01_SOUNDSET", 1},
    {-1, "SultanRS_Upgrade", "JA16_Super_Mod_Garage_Sounds", 1},
    {-1, "Swap_Sides", "DLC_HALLOWEEN_FVJ_Sounds", 0},
    {-1, "SWING_SHUT", "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS", 1},
    {-1, "SWING_SHUT", "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS", 1},
    {-1, "Tattooing_Oneshot", "TATTOOIST_SOUNDS", 1},
    {-1, "Tattooing_Oneshot_Remove", "TATTOOIST_SOUNDS", 1},
    {-1, "Team_Capture_Start", "GTAO_Magnate_Yacht_Attack_Soundset", 0},
    {-1, "Thermal_Off", "CAR_STEAL_2_SOUNDSET", 1},
    {-1, "Thermal_On", "CAR_STEAL_2_SOUNDSET", 1},
    {-1, "THERMAL_VISION_GOGGLES_OFF_MASTER", 0, 0},
    {-1, "THERMAL_VISION_GOGGLES_OFF_MASTER", 0, 1},
    {-1, "THERMAL_VISION_GOGGLES_ON_MASTER", 0, 1},
    {-1, "TIME_LAPSE_MASTER", 0, 1},
    {-1, "TIMER", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1},
    {-1, "TOGGLE_ON", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "TOGGLE_ON", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Traffic_Control_Fail", "BIG_SCORE_3A_SOUNDS", 1},
    {-1, "Traffic_Control_Fail_Blank", "BIG_SCORE_3A_SOUNDS", 1},
    {-1, "Traffic_Control_Light_Switch_Back", "BIG_SCORE_3A_SOUNDS", 1},
    {-1, "TRAFFIC_CONTROL_MOVE_CROSSHAIR", "BIG_SCORE_3A_SOUNDS", 1},
    {-1, "Turn", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1},
    {-1, "UNDER_WATER_COME_UP", 0, 1},
    {-1, "UNDO", "HEIST_BULLETIN_BOARD_SOUNDSET", 1},
    {-1, "WAYPOINT_SET", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0},
    {-1, "WEAKEN", "CONSTRUCTION_ACCIDENT_1_SOUNDS", 1},
    {-1, "WEAPON_AMMO_PURCHASE", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_ATTACHMENT_EQUIP", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_ATTACHMENT_UNEQUIP", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_PURCHASE", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_ARMOR", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_BATON", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_FUEL_CAN", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_GRENADE_LAUNCHER", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_HANDGUN", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_KNIFE", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_OTHER", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_PARACHUTE", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_RIFLE", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_RPG_LAUNCHER", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "WEAPON_SELECT_SHOTGUN", "HUD_AMMO_SHOP_SOUNDSET", 1},
    {-1, "Whistle", "DLC_TG_Running_Back_Sounds", 0},
    {-1, "Whoosh_1s_L_to_R", "MP_LOBBY_SOUNDS", 1},
    {-1, "Whoosh_1s_R_to_L", "MP_LOBBY_SOUNDS", 1},
    {-1, "WOODEN_DOOR_CLOSED_AT", 0, 0},
    {-1, "WOODEN_DOOR_CLOSED_AT", 0, 1},
    {-1, "WOODEN_DOOR_CLOSING_AT", 0, 0},
    {-1, "WOODEN_DOOR_CLOSING_AT", 0, 1},
    {-1, "WOODEN_DOOR_OPEN_HANDLE_AT", 0, 0},
    {-1, "WOODEN_DOOR_OPEN_HANDLE_AT", 0, 1},
    {-1, "WOODEN_DOOR_OPEN_NO_HANDLE_AT", 0, 1},
    {-1, "YES", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1},
    {-1, "Zone_Enemy_Capture", "DLC_Apartments_Drop_Zone_Sounds", 0},
    {-1, "Zone_Neutral", "DLC_Apartments_Drop_Zone_Sounds", 0},
    {-1, "Zone_Team_Capture", "DLC_Apartments_Drop_Zone_Sounds", 0},
    {-1, "Zoom_In", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Zoom_Left", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Zoom_Out", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "Zoom_Right", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1},
    {-1, "10_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 1},
}

--- filterList[N] = "TimecycleModifierName"
--- Applied via SetTimecycleModifier in the filter browser.
--- Entry 1 is always "None" (clear filter).
local filterList = {
    "None",
    "AmbientPUSH",
    "AP1_01_B_IntRefRange",
    "AP1_01_C_NoFog",
    "Bank_HLWD",
    "Barry1_Stoned",
    "BarryFadeOut",
    "baseTONEMAPPING",
    "BeastIntro01",
    "BeastIntro02",
    "BeastLaunch01",
    "BeastLaunch02",
    "BikerFilter",
    "BikerForm01",
    "BikerFormFlash",
    "Bikers",
    "BikersSPLASH",
    "blackNwhite",
    "BlackOut",
    "BleepYellow01",
    "BleepYellow02",
    "Bloom",
    "BloomLight",
    "BloomMid",
    "buggy_shack",
    "buildingTOP",
    "BulletTimeDark",
    "BulletTimeLight",
    "CAMERA_BW",
    "CAMERA_secuirity",
    "CAMERA_secuirity_FUZZ",
    "canyon_mission",
    "carMOD_underpass",
    "carpark",
    "carpark_dt1_02",
    "carpark_dt1_03",
    "Carpark_MP_exit",
    "cashdepot",
    "cashdepotEMERGENCY",
    "cBank_back",
    "cBank_front",
    "ch2_tunnel_whitelight",
    "CH3_06_water",
    "CHOP",
    "cinema",
    "cinema_001",
    "cops",
    "CopsSPLASH",
    "crane_cam",
    "crane_cam_cinematic",
    "CrossLine01",
    "CrossLine02",
    "CS1_railwayB_tunnel",
    "CS3_rail_tunnel",
    "CUSTOM_streetlight",
    "damage",
    "DeadlineNeon01",
    "default",
    "DefaultColorCode",
    "DONT_overide_sunpos",
    "Dont_tazeme_bro",
    "dont_tazeme_bro_b",
    "downtown_FIB_cascades_opt",
    "DrivingFocusDark",
    "DrivingFocusLight",
    "DRUG_2_drive",
    "Drug_deadman",
    "Drug_deadman_blend",
    "drug_drive_blend01",
    "drug_drive_blend02",
    "drug_flying_01",
    "drug_flying_02",
    "drug_flying_base",
    "DRUG_gas_huffin",
    "drug_wobbly",
    "Drunk",
    "dying",
    "eatra_bouncelight_beach",
    "epsilion",
    "exile1_exit",
    "exile1_plane",
    "ExplosionJosh",
    "EXT_FULLAmbientmult_art",
    "ext_int_extlight_large",
    "EXTRA_bouncelight",
    "eyeINtheSKY",
    "Facebook_NEW",
    "facebook_serveroom",
    "FIB_5",
    "FIB_6",
    "FIB_A",
    "FIB_B",
    "FIB_interview",
    "FIB_interview_optimise",
    "FinaleBank",
    "FinaleBankexit",
    "FinaleBankMid",
    "fireDEPT",
    "FORdoron_delete",
    "Forest",
    "fp_vig_black",
    "fp_vig_blue",
    "fp_vig_brown",
    "fp_vig_gray",
    "fp_vig_green",
    "fp_vig_red",
    "FrankilinsHOUSEhills",
    "frankilnsAUNTS_new",
    "frankilnsAUNTS_SUNdir",
    "FRANKLIN",
    "FranklinColorCode",
    "FranklinColorCodeBasic",
    "FranklinColorCodeBright",
    "FullAmbientmult_interior",
    "gallery_refmod",
    "garage",
    "gen_bank",
    "glasses_black",
    "Glasses_BlackOut",
    "glasses_blue",
    "glasses_brown",
    "glasses_Darkblue",
    "glasses_green",
    "glasses_orange",
    "glasses_pink",
    "glasses_purple",
    "glasses_red",
    "glasses_Scuba",
    "glasses_VISOR",
    "glasses_yellow",
    "gorge_reflection_gpu",
    "gorge_reflectionoffset",
    "gorge_reflectionoffset2",
    "graveyard_shootout",
    "gunclub",
    "gunclubrange",
    "gunshop",
    "gunstore",
    "half_direct",
    "hangar_lightsmod",
    "Hanger_INTmods",
    "heathaze",
    "heist_boat",
    "heist_boat_engineRoom",
    "heist_boat_norain",
    "helicamfirst",
    "heliGunCam",
    "Hicksbar",
    "HicksbarNEW",
    "hillstunnel",
    "Hint_cam",
    "hitped",
    "hud_def_blur",
    "hud_def_blur_switch",
    "hud_def_colorgrade",
    "hud_def_desat_cold",
    "hud_def_desat_cold_kill",
    "hud_def_desat_Franklin",
    "hud_def_desat_Michael",
    "hud_def_desat_Neutral",
    "hud_def_desat_switch",
    "hud_def_desat_Trevor",
    "hud_def_desatcrunch",
    "hud_def_flash",
    "hud_def_focus",
    "hud_def_Franklin",
    "hud_def_lensdistortion",
    "hud_def_lensdistortion_subtle",
    "hud_def_Michael",
    "hud_def_Trevor",
    "id1_11_tunnel",
    "ImpExp_Interior_01",
    "impexp_interior_01_lift",
    "IMpExt_Interior_02",
    "IMpExt_Interior_02_stair_cage",
    "InchOrange01",
    "InchOrange02",
    "InchPickup01",
    "InchPickup02",
    "InchPurple01",
    "InchPurple02",
    "int_amb_mult_large",
    "int_Barber1",
    "int_carmod_small",
    "int_carrier_control",
    "int_carrier_control_2",
    "int_carrier_hanger",
    "int_carrier_rear",
    "int_carrier_stair",
    "int_carshowroom",
    "int_chopshop",
    "int_clean_extlight_large",
    "int_clean_extlight_none",
    "int_clean_extlight_small",
    "int_ClothesHi",
    "int_clotheslow_large",
    "int_cluckinfactory_none",
    "int_cluckinfactory_small",
    "int_ControlTower_none",
    "int_ControlTower_small",
    "int_dockcontrol_small",
    "int_extlght_sm_cntrst",
    "int_extlight_large",
    "int_extlight_large_fog",
    "int_extlight_none",
    "int_extlight_none_dark",
    "int_extlight_none_dark_fog",
    "int_extlight_none_fog",
    "int_extlight_small",
    "int_extlight_small_clipped",
    "int_extlight_small_fog",
    "int_Farmhouse_none",
    "int_Farmhouse_small",
    "int_FranklinAunt_small",
    "INT_FullAmbientmult",
    "INT_FULLAmbientmult_art",
    "INT_FULLAmbientmult_both",
    "INT_garage",
    "int_GasStation",
    "int_hanger_none",
    "int_hanger_small",
    "int_Hospital2_DM",
    "int_Hospital_Blue",
    "int_Hospital_BlueB",
    "int_hospital_dark",
    "int_Hospital_DM",
    "int_hospital_small",
    "int_lesters",
    "int_Lost_none",
    "int_Lost_small",
    "INT_mall",
    "int_methlab_small",
    "int_motelroom",
    "INT_NO_fogALPHA",
    "INT_NoAmbientmult",
    "INT_NoAmbientmult_art",
    "INT_NoAmbientmult_both",
    "INT_NOdirectLight",
    "INT_nowaterREF",
    "int_office_Lobby",
    "int_office_LobbyHall",
    "INT_posh_hairdresser",
    "INT_smshop",
    "INT_smshop_indoor_bloom",
    "INT_smshop_inMOD",
    "INT_smshop_outdoor_bloom",
    "INT_streetlighting",
    "int_tattoo",
    "int_tattoo_B",
    "INT_trailer_cinema",
    "int_tunnel_none_dark",
    "interior_WATER_lighting",
    "introblue",
    "jewel_gas",
    "jewel_optim",
    "jewelry_entrance",
    "jewelry_entrance_INT",
    "jewelry_entrance_INT_fog",
    "Kifflom",
    "KT_underpass",
    "lab_none",
    "lab_none_dark",
    "lab_none_dark_fog",
    "lab_none_dark_OVR",
    "lab_none_exit",
    "lab_none_exit_OVR",
    "LectroDark",
    "LectroLight",
    "li",
    "LifeInvaderLOD",
    "lightning",
    "lightning_cloud",
    "lightning_strong",
    "lightning_weak",
    "LightPollutionHills",
    "lightpolution",
    "LIGHTSreduceFALLOFF",
    "LODmult_global_reduce",
    "LODmult_global_reduce_NOHD",
    "LODmult_HD_orphan_LOD_reduce",
    "LODmult_HD_orphan_reduce",
    "LODmult_LOD_reduce",
    "LODmult_SLOD1_reduce",
    "LODmult_SLOD2_reduce",
    "LODmult_SLOD3_reduce",
    "lodscaler",
    "LostTimeDark",
    "LostTimeFlash",
    "LostTimeLight",
    "maxlodscaler",
    "metro",
    "METRO_platform",
    "METRO_Tunnels",
    "METRO_Tunnels_entrance",
    "MichaelColorCode",
    "MichaelColorCodeBasic",
    "MichaelColorCodeBright",
    "MichaelsDarkroom",
    "MichaelsDirectional",
    "MichaelsNODirectional",
    "micheal",
    "micheals_lightsOFF",
    "michealspliff",
    "michealspliff_blend",
    "michealspliff_blend02",
    "militarybase_nightlight",
    "mineshaft",
    "morebloom",
    "morgue_dark",
    "morgue_dark_ovr",
    "Mp_apart_mid",
    "mp_bkr_int01_garage",
    "mp_bkr_int01_small_rooms",
    "mp_bkr_int01_transition",
    "mp_bkr_int02_garage",
    "mp_bkr_int02_hangout",
    "mp_bkr_int02_small_rooms",
    "mp_bkr_ware01",
    "mp_bkr_ware02_dry",
    "mp_bkr_ware02_standard",
    "mp_bkr_ware02_upgrade",
    "mp_bkr_ware03_basic",
    "mp_bkr_ware03_upgrade",
    "mp_bkr_ware04",
    "mp_bkr_ware05",
    "MP_Bull_tost",
    "MP_Bull_tost_blend",
    "MP_corona_heist",
    "MP_corona_heist_blend",
    "MP_corona_heist_BW",
    "MP_corona_heist_BW_night",
    "MP_corona_heist_DOF",
    "MP_corona_heist_night",
    "MP_corona_heist_night_blend",
    "MP_corona_selection",
    "MP_corona_switch",
    "MP_corona_tournament",
    "MP_corona_tournament_DOF",
    "MP_death_grade",
    "MP_death_grade_blend01",
    "MP_death_grade_blend02",
    "MP_deathfail_night",
    "mp_exec_office_01",
    "mp_exec_office_02",
    "mp_exec_office_03",
    "mp_exec_office_03_blue",
    "mp_exec_office_03C",
    "mp_exec_office_04",
    "mp_exec_office_05",
    "mp_exec_office_06",
    "mp_exec_warehouse_01",
    "MP_Garage_L",
    "MP_H_01_Bathroom",
    "MP_H_01_Bedroom",
    "MP_H_01_New",
    "MP_H_01_New_Bathroom",
    "MP_H_01_New_Bedroom",
    "MP_H_01_New_Study",
    "MP_H_01_Study",
    "MP_H_02",
    "MP_H_04",
    "mp_h_05",
    "MP_H_06",
    "mp_h_07",
    "mp_h_08",
    "MP_heli_cam",
    "mp_imx_intwaremed",
    "mp_imx_intwaremed_office",
    "mp_imx_mod_int_01",
    "MP_intro_logo",
    "MP_job_end_night",
    "MP_job_load",
    "MP_job_load_01",
    "MP_job_load_02",
    "MP_job_lose",
    "MP_job_preload",
    "MP_job_preload_blend",
    "MP_job_preload_night",
    "MP_job_win",
    "MP_Killstreak",
    "MP_Killstreak_blend",
    "mp_lad_day",
    "mp_lad_judgment",
    "mp_lad_night",
    "MP_Loser",
    "MP_Loser_blend",
    "MP_lowgarage",
    "MP_MedGarage",
    "MP_Powerplay",
    "MP_Powerplay_blend",
    "MP_race_finish",
    "MP_select",
    "Mp_Stilts",
    "Mp_Stilts2",
    "Mp_Stilts2_bath",
    "Mp_Stilts_gym",
    "Mp_Stilts_gym2",
    "MP_Studio_Lo",
    "MPApart_H_01",
    "MPApart_H_01_gym",
    "MPApartHigh",
    "MPApartHigh_palnning",
    "mugShot",
    "mugShot_lineup",
    "Multipayer_spectatorCam",
    "multiplayer_ped_fight",
    "nervousRON_fog",
    "NeutralColorCode",
    "NeutralColorCodeBasic",
    "NeutralColorCodeBright",
    "NeutralColorCodeLight",
    "NEW_abattoir",
    "new_bank",
    "NEW_jewel",
    "NEW_jewel_EXIT",
    "NEW_lesters",
    "new_MP_Garage_L",
    "NEW_ornate_bank",
    "NEW_ornate_bank_entrance",
    "NEW_ornate_bank_office",
    "NEW_ornate_bank_safe",
    "New_sewers",
    "NEW_shrinksOffice",
    "NEW_station_unfinished",
    "new_stripper_changing",
    "NEW_trevorstrailer",
    "NEW_tunnels",
    "NEW_tunnels_ditch",
    "new_tunnels_entrance",
    "NEW_tunnels_hole",
    "NEW_yellowtunnels",
    "NewMicheal",
    "NewMicheal_night",
    "NewMicheal_upstairs",
    "NewMichealgirly",
    "NewMichealstoilet",
    "NewMichealupstairs",
    "nextgen",
    "NG_blackout",
    "NG_deathfail_BW_base",
    "NG_deathfail_BW_blend01",
    "NG_deathfail_BW_blend02",
    "NG_filmic01",
    "NG_filmic02",
    "NG_filmic03",
    "NG_filmic04",
    "NG_filmic05",
    "NG_filmic06",
    "NG_filmic07",
    "NG_filmic08",
    "NG_filmic09",
    "NG_filmic10",
    "NG_filmic11",
    "NG_filmic12",
    "NG_filmic13",
    "NG_filmic14",
    "NG_filmic15",
    "NG_filmic16",
    "NG_filmic17",
    "NG_filmic18",
    "NG_filmic19",
    "NG_filmic20",
    "NG_filmic21",
    "NG_filmic22",
    "NG_filmic23",
    "NG_filmic24",
    "NG_filmic25",
    "NG_filmnoir_BW01",
    "NG_filmnoir_BW02",
    "NG_first",
    "nightvision",
    "NO_coronas",
    "NO_fog_alpha",
    "NO_streetAmbient",
    "NO_weather",
    "NoAmbientmult",
    "NoAmbientmult_interior",
    "NOdirectLight",
    "NoPedLight",
    "NOrain",
    "overwater",
    "Paleto",
    "paleto_nightlight",
    "paleto_opt",
    "PennedInDark",
    "PennedInLight",
    "PERSHING_water_reflect",
    "phone_cam",
    "phone_cam1",
    "phone_cam10",
    "phone_cam11",
    "phone_cam12",
    "phone_cam13",
    "phone_cam2",
    "phone_cam3",
    "phone_cam3_REMOVED",
    "phone_cam4",
    "phone_cam5",
    "phone_cam6",
    "phone_cam7",
    "phone_cam8",
    "phone_cam8_REMOVED",
    "phone_cam9",
    "plane_inside_mode",
    "player_transition",
    "player_transition_no_scanlines",
    "player_transition_scanlines",
    "PlayerSwitchNeutralFlash",
    "PlayerSwitchPulse",
    "plaza_carpark",
    "PoliceStation",
    "PoliceStationDark",
    "polluted",
    "poolsidewaterreflection2",
    "PORT_heist_underwater",
    "powerplant_nightlight",
    "powerstation",
    "PPFilter",
    "PPGreen01",
    "PPGreen02",
    "PPOrange01",
    "PPOrange02",
    "PPPink01",
    "PPPink02",
    "PPPurple01",
    "PPPurple02",
    "prison_nightlight",
    "projector",
    "prologue",
    "prologue_ending_fog",
    "prologue_ext_art_amb",
    "prologue_reflection_opt",
    "prologue_shootout",
    "Prologue_shootout_opt",
    "pulse",
    "RaceTurboDark",
    "RaceTurboFlash",
    "RaceTurboLight",
    "ranch",
    "REDMIST",
    "REDMIST_blend",
    "ReduceDrawDistance",
    "ReduceDrawDistanceMAP",
    "ReduceDrawDistanceMission",
    "reducelightingcost",
    "ReduceSSAO",
    "reducewaterREF",
    "refit",
    "reflection_correct_ambient",
    "RemoteSniper",
    "resvoire_reflection",
    "rply_brightness",
    "rply_brightness_neg",
    "rply_contrast",
    "rply_contrast_neg",
    "rply_motionblur",
    "rply_saturation",
    "rply_saturation_neg",
    "rply_vignette",
    "rply_vignette_neg",
    "SALTONSEA",
    "sandyshore_nightlight",
    "SAWMILL",
    "scanline_cam",
    "scanline_cam_cheap",
    "scope_zoom_in",
    "scope_zoom_out",
    "secret_camera",
    "services_nightlight",
    "shades_pink",
    "shades_yellow",
    "SheriffStation",
    "ship_explosion_underwater",
    "ship_lighting",
    "Shop247",
    "Shop247_none",
    "sleeping",
    "Sniper",
    "SP1_03_drawDistance",
    "spectator1",
    "spectator10",
    "spectator2",
    "spectator3",
    "spectator4",
    "spectator5",
    "spectator6",
    "spectator7",
    "spectator8",
    "spectator9",
    "StadLobby",
    "stc_coroners",
    "stc_deviant_bedroom",
    "stc_deviant_lounge",
    "stc_franklinsHouse",
    "stc_trevors",
    "stoned",
    "stoned_aliens",
    "stoned_cutscene",
    "stoned_monkeys",
    "StreetLighting",
    "StreetLightingJunction",
    "StreetLightingtraffic",
    "STRIP_changing",
    "STRIP_nofog",
    "STRIP_office",
    "STRIP_stage",
    "StuntFastDark",
    "StuntFastLight",
    "StuntSlowDark",
    "StuntSlowLight",
    "subBASE_water_ref",
    "sunglasses",
    "superDARK",
    "switch_cam_1",
    "switch_cam_2",
    "telescope",
    "TinyGreen01",
    "TinyGreen02",
    "TinyPink01",
    "TinyPink02",
    "TinyRacerMoBlur",
    "torpedo",
    "traffic_skycam",
    "trailer_explosion_optimise",
    "TREVOR",
    "TrevorColorCode",
    "TrevorColorCodeBasic",
    "TrevorColorCodeBright",
    "Trevors_room",
    "trevorspliff",
    "trevorspliff_blend",
    "trevorspliff_blend02",
    "Tunnel",
    "tunnel_entrance",
    "tunnel_entrance_INT",
    "TUNNEL_green",
    "Tunnel_green1",
    "TUNNEL_green_ext",
    "tunnel_id1_11",
    "TUNNEL_orange",
    "TUNNEL_orange_exterior",
    "TUNNEL_white",
    "TUNNEL_yellow",
    "TUNNEL_yellow_ext",
    "ufo",
    "ufo_deathray",
    "underwater",
    "underwater_deep",
    "underwater_deep_clear",
    "v_abattoir",
    "V_Abattoir_Cold",
    "v_bahama",
    "v_cashdepot",
    "V_CIA_Facility",
    "v_dark",
    "V_FIB_IT3",
    "V_FIB_IT3_alt",
    "V_FIB_IT3_alt5",
    "V_FIB_stairs",
    "v_foundry",
    "v_janitor",
    "v_jewel2",
    "v_metro",
    "V_Metro2",
    "V_Metro_station",
    "v_michael",
    "v_michael_lounge",
    "V_Office_smoke",
    "V_Office_smoke_ext",
    "V_Office_smoke_Fire",
    "v_recycle",
    "V_recycle_dark",
    "V_recycle_light",
    "V_recycle_mainroom",
    "v_rockclub",
    "V_Solomons",
    "v_strip3",
    "V_strip_nofog",
    "V_strip_office",
    "v_strpchangerm",
    "v_sweat",
    "v_sweat_entrance",
    "v_sweat_NoDirLight",
    "v_torture",
    "Vagos",
    "vagos_extlight_small",
    "VAGOS_new_garage",
    "VAGOS_new_hangout",
    "VagosSPLASH",
    "VC_tunnel_entrance",
    "vehicle_subint",
    "venice_canal_tunnel",
    "vespucci_garage",
    "VolticBlur",
    "VolticFlash",
    "VolticGold",
    "WAREHOUSE",
    "WATER _lab_cooling",
    "WATER_CH2_06_01_03",
    "WATER_CH2_06_02",
    "WATER_CH2_06_04",
    "WATER_cove",
    "WATER_hills",
    "WATER_ID2_21",
    "WATER_lab",
    "WATER_militaryPOOP",
    "WATER_muddy",
    "WATER_port",
    "WATER_REF_malibu",
    "WATER_refmap_high",
    "WATER_refmap_hollywoodlake",
    "WATER_refmap_low",
    "WATER_refmap_med",
    "WATER_refmap_off",
    "WATER_refmap_poolside",
    "WATER_refmap_silverlake",
    "WATER_refmap_venice",
    "WATER_refmap_verylow",
    "WATER_resevoir",
    "WATER_RichmanStuntJump",
    "WATER_river",
    "WATER_salton",
    "WATER_salton_bottom",
    "WATER_shore",
    "WATER_silty",
    "WATER_silverlake",
    "whitenightlighting",
    "WhiteOut",
    "winning_room",
    "yacht_DLC",
    "yell_tunnel_nodirect",
}

--- intensityList — float values "0.10".."2.01" step 0.01
--- Built at startup; index 91 ≈ 1.00 (reset point).
local intensityList = {}
for v = 0.1, 2.01, 0.01 do
    table.insert(intensityList, string.format("%.2f", v))
end

-- ════════════════════════════════════════════════════════════════
-- MODULE STATE
-- ════════════════════════════════════════════════════════════════

-- Controls which input/render mode is active:
--   0 = off, 1 = filter browser, 2 = sound browser
drawf = 0

-- freecam camera handle (nil when inactive)
camFRC = nil

local currentIndex   = 1      -- selected filter or sound index
local intensityIdx   = 91     -- selected intensity index (1.00 = default)
local intensityMode  = false  -- true = mousewheel selects intensity
local showHelp       = false  -- show freecam controls HUD

-- Disabled controls list for freecam (input IDs suppressed each frame)
local disabledControls = {24, 36, 44, 38, 85, 86}

-- Freecam camera rotation & movement state
local camPitch = 0.0   -- X rotation (pitch, clamped ±90)
local camRoll  = 0.0   -- Y rotation (roll, unused for movement)
local camYaw   = 0.0   -- Z rotation (yaw, horizontal heading)
local camSpeed = 0.1   -- movement speed multiplier (0.1 normal, 0.3 sprint)
local camOriginCoords = nil
local camFOV   = 70.0  -- field of view (clamped 0.5–120)
local camMaxDist = 60  -- max distance from player (auto-closes freecam)

-- Mouse sensitivity multiplier (adjusted with Space+scroll in freecam)
local mouseSensitivity = 2.0

-- ════════════════════════════════════════════════════════════════
-- FILTER BROWSER FUNCTIONS
-- ════════════════════════════════════════════════════════════════

local function browserNotify(msg)
    exports.striano_combat:notify(msg)
end

local function playClickSound()
    PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
end

local function playFailSound()
    PlaySoundFrontend(-1, "Click_Fail", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
end

--- exitBrowser: close filter/sound browser
local function exitBrowser()
    if drawf > 0 then
        drawf = 0
        intensityMode = false
        playFailSound()
    end
end

--- resetIntensity: reset timecycle strength to default (index 91 ≈ 1.00)
local function resetIntensity()
    intensityIdx = 91
    SetTimecycleModifierStrength(1.0)
    browserNotify("Select intensity filter: Reset")
end

--- prevFilterOrIntensity: navigate backward (mousewheel down / left arrow)
local function prevFilterOrIntensity()
    if drawf == 1 then
        if intensityMode then
            -- decrease intensity index
            local step = IsControlPressed(0, 21) and 10 or 1
            intensityIdx = intensityIdx - step
            if intensityIdx < 1 then
                intensityIdx = #intensityList + intensityIdx
            end
            SetTimecycleModifierStrength(tonumber(intensityList[intensityIdx]))
            browserNotify("Select intensity filter: " .. tonumber(intensityList[intensityIdx]))
        else
            -- previous filter
            if currentIndex == 1 then
                currentIndex = #filterList
            else
                currentIndex = currentIndex - 1
            end
            local name = filterList[currentIndex]
            if name == "None" then
                ClearTimecycleModifier()
                browserNotify("No filter.")
                ExecuteCommand("prova3 ")
                playClickSound()
            else
                if currentIndex < 1 then currentIndex = 1 end
                SetTimecycleModifier(filterList[currentIndex])
                browserNotify("filter ID: [" .. currentIndex .. "]")
                ExecuteCommand("copia " .. filterList[currentIndex])
                ExecuteCommand("prova3 [" .. currentIndex .. "] " .. filterList[currentIndex])
                playClickSound()
            end
        end
    elseif drawf == 2 then
        -- previous sound
        if currentIndex == 1 then
            currentIndex = #soundList
        else
            currentIndex = currentIndex - 1
        end
        local e = soundList[currentIndex]
        PlaySoundFrontend(e[1], e[2], e[3], e[4])
        browserNotify("Sound ID: [" .. currentIndex .. "]")
    end
end

--- nextFilterOrIntensity: navigate forward (mousewheel up / right arrow)
local function nextFilterOrIntensity()
    if drawf == 1 then
        if intensityMode then
            -- increase intensity index
            local step = IsControlPressed(0, 21) and 10 or 1
            intensityIdx = intensityIdx + step
            if intensityIdx > #intensityList then
                intensityIdx = intensityIdx - #intensityList
            end
            SetTimecycleModifierStrength(tonumber(intensityList[intensityIdx]))
            browserNotify("Select intensity filter: " .. tonumber(intensityList[intensityIdx]))
        else
            -- next filter
            if currentIndex == #filterList then
                currentIndex = 1
            else
                currentIndex = currentIndex + 1
            end
            local name = filterList[currentIndex]
            if name == "None" or currentIndex == 1 then
                ClearTimecycleModifier()
                browserNotify("No filter")
                ExecuteCommand("prova3 ")
                playClickSound()
            else
                SetTimecycleModifier(filterList[currentIndex])
                browserNotify("Filter ID [" .. currentIndex .. "]")
                ExecuteCommand("copia " .. filterList[currentIndex])
                ExecuteCommand("prova3 [" .. currentIndex .. "] " .. filterList[currentIndex])
                playClickSound()
            end
        end
    elseif drawf == 2 then
        -- next sound
        if currentIndex == #soundList then
            currentIndex = 1
        else
            currentIndex = currentIndex + 1
        end
        local e = soundList[currentIndex]
        PlaySoundFrontend(e[1], e[2], e[3], e[4])
        browserNotify("Sound ID: [" .. currentIndex .. "]")
    end
end

--- VaiAIDFiltro: jump to a filter/sound by typed numeric ID
VaiAIDFiltro = function()
    if drawf == 1 then
        local raw = OpenInput("Insert ID (0-" .. #filterList .. ")")
        local id  = tonumber(raw)
        if id == nil or type(id) ~= "number" then
            playFailSound(); browserNotify("Invalid Id."); return
        end
        if id == 0 then
            ClearTimecycleModifier()
            browserNotify("Filter reset.")
            playClickSound()
            currentIndex = 0
        elseif id > 0 and id <= #filterList then
            currentIndex = id
            SetTimecycleModifier(filterList[currentIndex])
            browserNotify("Filter ID [" .. currentIndex .. "]")
            playClickSound()
        else
            playFailSound(); browserNotify("Invalid id.")
        end
    elseif drawf == 2 then
        local raw = OpenInput("Insert ID (1-" .. #soundList .. ")")
        local id  = tonumber(raw)
        if type(id) == "number" and id > 0 and id <= #soundList then
            currentIndex = id
            local e = soundList[currentIndex]
            PlaySoundFrontend(e[1], e[2], e[3], e[4])
            browserNotify("Sound ID: [" .. currentIndex .. "]")
        else
            playFailSound()
            if type(id) ~= "number" then browserNotify("Invalid id.") end
        end
    end
end

--- Intense: toggle intensity selection mode (mousewheel adjusts strength)
Intense = function()
    if currentIndex > 1 then
        intensityMode = not intensityMode
        if intensityMode then
            browserNotify("Select intensity with mousewheel.")
        else
            browserNotify("Filter ID [" .. currentIndex .. "]")
        end
    else
        playFailSound()
        browserNotify("Select first a filter.")
    end
end

--- CopiaSuono: copy current sound entry as PlaySoundFrontend call to clipboard
CopiaSuono = function()
    local e = soundList[currentIndex]
    ExecuteCommand("copia PlaySoundFrontend(" .. e[1] .. ",'" .. e[2] .. "','" .. e[3] .. "'," .. e[4] .. ")")
    playFailSound()
end

-- Key maps for browser modes
-- Filter browser (drawf == 1)
local filterKeyMap = {
    {button = 177, func = exitBrowser},
    {button = 16,  func = prevFilterOrIntensity},
    {button = 17,  func = nextFilterOrIntensity},
    {button = 24,  func = Intense},
    {button = 74,  func = VaiAIDFiltro},
    {button = 301, func = resetIntensity},
}

-- Sound browser (drawf == 2)
local soundKeyMap = {
    {button = 177, func = exitBrowser},
    {button = 16,  func = prevFilterOrIntensity},
    {button = 17,  func = nextFilterOrIntensity},
    {button = 21,  func = CopiaSuono},
    {button = 74,  func = VaiAIDFiltro},
}

-- ════════════════════════════════════════════════════════════════
-- COMMANDS: FILTER & SOUND BROWSERS
-- ════════════════════════════════════════════════════════════════

RegisterCommand("filtri", function()
    if drawf == 1 then return end
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end
    LoopAnimFC()
    drawf = 1
    Wait(0)
    PlaySoundFrontend(-1, "Goon_Paid_Small", "GTAO_Boss_Goons_FM_Soundset", 0)
end)

exports("infiltri", function()
    return drawf > 0
end)

RegisterCommand("nativesound", function()
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end
    LoopAnimFC()
    drawf = 2
    Wait(0)
    PlaySoundFrontend(-1, "Goon_Paid_Small", "GTAO_Boss_Goons_FM_Soundset", 0)
end)

-- ════════════════════════════════════════════════════════════════
-- LOOPANIMFC: Key-intercept thread for browser modes
-- ════════════════════════════════════════════════════════════════

LoopAnimFC = function()
    if drawf > 0 then return end  -- already running

    CreateThread(function()
        while true do
            -- ESC / Tab / Esc-key: close browser
            if drawf > 0 then
                local wantsClose = IsControlJustPressed(0, 170)
                    or IsControlPressed(0, 311)
                    or IsDisabledControlPressed(0, 37)
                if wantsClose and not IsPauseMenuActive() then
                    exitBrowser()
                end
            end

            -- Dispatch key bindings for active mode
            local keyMap = nil
            if drawf == 1 then
                keyMap = filterKeyMap
            elseif drawf == 2 then
                keyMap = soundKeyMap
            else
                return  -- browser closed; exit thread
            end

            for _, entry in ipairs(keyMap) do
                DisableControlAction(0, entry.button, true)
                if IsDisabledControlJustPressed(0, entry.button) then
                    if not IsPauseMenuActive() then
                        entry.func()
                    end
                end
            end

            Wait(0)
        end
    end)
end

AddEventHandler("esx:onPlayerDeath", function()
    exitBrowser()
end)

-- ════════════════════════════════════════════════════════════════
-- FREECAM SYSTEM
-- ════════════════════════════════════════════════════════════════

camFRC = nil
camPitch = 0.0
camRoll  = 0.0
camYaw   = 0.0
camSpeed = 0.1
camOriginCoords = nil
camFOV   = 70.0

--- Compute XY direction vector components from yaw angle.
--- Returns dirX, dirY such that moving "forward" at this yaw
--- increments camX by dirX and camY by dirY.
--- Uses piecewise linear approximation across 90-degree quadrants.
local function yawToForwardDir(yaw)
    local dirX, dirY = 0.0, 0.0
    local y = yaw
    if (y >= 0.0 and y <= 90.0) or (y <= 0.0 and y >= -90.0) then
        dirX = math.abs(y) / 90
        dirY = -(y / 90)
    elseif (y >= 90.0 and y <= 180.0) or (y <= -90.0 and y >= -180.0) then
        if y >= 90.0 then
            dirX = -((y - 90.0) / 90)
            dirY = -(1.0 - (math.abs(y) - 90.0) / 90)
        else
            dirX = (y + 90.0) / 90
            dirY = 1.0 - (math.abs(y) - 90.0) / 90
        end
    elseif (y >= 180.0 and y <= 270.0) or (y <= -180.0 and y >= -270.0) then
        if y >= 180.0 then
            dirX = -((1.0 - (y - 180.0) / 90))
            dirY = (math.abs(y) - 180.0) / 90
        else
            dirX = -(1.0 + (y + 180.0) / 90)
            dirY = -(math.abs(y) - 180.0) / 90
        end
    elseif (y >= 270.0 and y <= 360.0) or (y <= -270.0 and y >= -360.0) then
        if y >= 270.0 then
            dirX = (y - 270.0) / 90
            dirY = 1.0 - (math.abs(y) - 270.0) / 90
        else
            dirX = -((y + 270.0) / 90)
            dirY = -(1.0 - (math.abs(y) - 270.0) / 90)
        end
    end
    return dirX, dirY
end

--- Compute XY direction vector for strafing right (yaw + 90 degrees).
local function yawToStrafeRightDir(yaw)
    -- Strafe right = forward direction at yaw+90
    -- The bytecode uses the same quadrant logic but with different sign patterns
    -- Equivalent: perpendicular to forward, to the right
    local dirX, dirY = 0.0, 0.0
    local y = yaw
    if (y >= 0.0 and y <= 90.0) or (y <= 0.0 and y >= -90.0) then
        dirX = 1.0 - math.abs(y) / 90
        dirY = -(y / 90)
    elseif (y >= 90.0 and y <= 180.0) or (y <= -90.0 and y >= -180.0) then
        if y >= 90.0 then
            dirX = -((y - 90.0) / 90)
            dirY = 1.0 - (math.abs(y) - 90.0) / 90
        else
            dirX = (y + 90.0) / 90
            dirY = -(1.0 - (math.abs(y) - 90.0) / 90)
        end
    elseif (y >= 180.0 and y <= 270.0) or (y <= -180.0 and y >= -270.0) then
        if y >= 180.0 then
            dirX = -(1.0 - (y - 180.0) / 90)
            dirY = (math.abs(y) - 180.0) / 90
        else
            dirX = 1.0 + (y + 180.0) / 90
            dirY = -(math.abs(y) - 180.0) / 90
        end
    elseif (y >= 270.0 and y <= 360.0) or (y <= -270.0 and y >= -360.0) then
        if y >= 270.0 then
            dirX = (y - 270.0) / 90
            dirY = 1.0 - (math.abs(y) - 270.0) / 90
        else
            dirX = -((y + 270.0) / 90)
            dirY = -(1.0 - (math.abs(y) - 270.0) / 90)
        end
    end
    return dirX, dirY
end

--- ProcessCamControls: called every frame while freecam is active.
--- Reads inputs and updates camera position/rotation.
ProcessCamControls = function()
    local camPos = GetCamCoord(camFRC)
    local cx, cy, cz = camPos.x, camPos.y, camPos.z

    -- Show controls HUD if enabled
    if showHelp then
        exports.striano_core:draw(
            300, "Sposta",
            21,  "Velocizza",
            44,  "",
            38,  "Altezza",
            15,  "Campo visivo",
            23,  "Info",
            177, "Chiudi"
        )
    end

    DisableFirstPersonCamThisFrame()

    -- Disable movement controls
    for _, ctrl in ipairs(disabledControls) do
        DisableControlAction(0, ctrl, true)
    end

    -- LShift (21) = sprint mode: faster movement, disable WASD passthrough
    if IsControlPressed(0, 21) then
        DisableControlAction(0, 30)
        DisableControlAction(0, 31)
        DisableControlAction(0, 22)
        camSpeed = 0.3
    else
        camSpeed = 0.1
    end

    -- H key (23): toggle help display
    if IsControlJustPressed(0, 23) then
        showHelp = not showHelp
    end

    -- Space + scroll: adjust mouse sensitivity
    if IsDisabledControlPressed(0, 22) then
        if IsDisabledControlPressed(0, 17) then
            -- scroll up: increase sensitivity (min 0.5)
            if mouseSensitivity > 0.5 then
                mouseSensitivity = mouseSensitivity + 0.1
            end
        elseif IsDisabledControlPressed(0, 16) then
            -- scroll down: decrease sensitivity (max 5.0)
            if mouseSensitivity < 5.0 then
                mouseSensitivity = mouseSensitivity - 0.1
            end
        end
    end

    -- Mouse look: update pitch (X) and yaw (Z)
    camPitch = camPitch - GetDisabledControlNormal(1, 2) * mouseSensitivity
    camYaw   = camYaw   - GetDisabledControlNormal(1, 1) * mouseSensitivity

    -- Clamp pitch ±90; wrap yaw ±360
    if camPitch >  90.0 then camPitch =  90.0 end
    if camPitch < -90.0 then camPitch = -90.0 end
    if camYaw   >  360.0 then camYaw = camYaw - 360.0 end
    if camYaw   < -360.0 then camYaw = camYaw + 360.0 end

    -- ── Forward movement (up arrow 172 / LShift+W 32) ──
    if IsDisabledControlPressed(1, 172) or (IsControlPressed(0, 21) and IsControlPressed(1, 32)) then
        local dirX, dirY = yawToForwardDir(camYaw)
        cx = cx + camSpeed * 0.1 * dirX
        cy = cy - camSpeed * 0.1 * dirY
    end

    -- ── Backward movement (down arrow 173 / LShift+S 33) ──
    if IsDisabledControlPressed(1, 173) or (IsControlPressed(0, 21) and IsControlPressed(1, 33)) then
        local dirX, dirY = yawToForwardDir(camYaw)
        cx = cx - camSpeed * 0.1 * dirX
        cy = cy + camSpeed * 0.1 * dirY
    end

    -- ── Strafe left (left arrow 174 / LShift+A 34) ──
    if IsDisabledControlPressed(1, 174) or (IsControlPressed(0, 21) and IsControlPressed(1, 34)) then
        local dirX, dirY = yawToStrafeRightDir(camYaw)
        cx = cx - camSpeed * 0.1 * dirX
        cy = cy + camSpeed * 0.1 * dirY
    end

    -- ── Strafe right (right arrow 175 / LShift+D 35) ──
    if IsDisabledControlPressed(1, 175) or (IsControlPressed(0, 21) and IsControlPressed(1, 35)) then
        local dirX, dirY = yawToStrafeRightDir(camYaw)
        cx = cx + camSpeed * 0.1 * dirX
        cy = cy - camSpeed * 0.1 * dirY
    end

    -- ── Height: Q (44) = up, Z (38) = down ──
    if IsDisabledControlPressed(1, 44) then
        cz = cz + 0.1 * camSpeed
    end
    if IsDisabledControlPressed(1, 38) then
        cz = cz - 0.1 * camSpeed
    end

    -- ── FOV (scroll while browser is closed) ──
    if not IsDisabledControlPressed(0, 22) and drawf == 0 then
        if IsDisabledControlPressed(0, 17) then
            -- scroll up: zoom in (decrease FOV)
            if camFOV > 0 then
                camFOV = camFOV - (IsControlPressed(0, 21) and 1.0 or 0.1)
                SetCamFov(camFRC, camFOV)
            end
        elseif IsDisabledControlPressed(0, 16) then
            -- scroll down: zoom out (increase FOV, max 120)
            if camFOV < 120.0 then
                camFOV = camFOV + (IsControlPressed(0, 21) and 1.0 or 0.1)
                SetCamFov(camFRC, camFOV)
            end
        end
    end

    -- Apply camera position and rotation
    SetFocusArea(cx, cy, cz, 0.0, 0.0, 0.0)
    SetCamCoord(camFRC, cx, cy, cz)
    SetCamRot(camFRC, camPitch, camRoll, camYaw, 2)
end

-- ════════════════════════════════════════════════════════════════
-- LOOPCREAMENU: Freecam distance guard + control dispatch loop
-- ════════════════════════════════════════════════════════════════

loopCreaMenu = function()
    CreateThread(function()
        while true do
            Wait(1)
            local ped = PlayerPedId()

            if camFRC then
                -- Distance guard: auto-close if too far from player
                local pedPos = GetEntityCoords(ped)
                local camPos = GetCamCoord(camFRC)
                local dist   = #(pedPos - camPos)
                if dist > camMaxDist then
                    EndFreeCam("Free-cam chiusa per troppa distanza.")
                    return
                end

                -- Process controls (unless pause menu is open)
                if not IsControlPressed(0, 202) then
                    ProcessCamControls()
                end
            else
                -- camFRC became nil
                if drawf == 0 then
                    EndFreeCam()
                    return
                else
                    Wait(500)
                end
            end
        end
    end)
end

-- ════════════════════════════════════════════════════════════════
-- StartFreeCam / EndFreeCam
-- ════════════════════════════════════════════════════════════════

StartFreeCam = function(fov)
    camFOV = fov
    ClearFocus()
    local ped = PlayerPedId()
    camFRC = CreateCamWithParams(
        "DEFAULT_SCRIPTED_CAMERA",
        GetEntityCoords(ped),
        0, 0, 0,
        fov * 1.0
    )
    camOriginCoords = GetCamCoord(camFRC)
    SetCamActive(camFRC, true)
    RenderScriptCams(true, false, 0, true, false)
    SetCamAffectsAiming(camFRC, false)
    loopCreaMenu()
end

EndFreeCam = function(msg)
    ClearFocus()
    RenderScriptCams(false, false, 0, true, false)
    DestroyCam(camFRC, false)
    camPitch = 0.0
    camRoll  = 0.0
    camYaw   = 0.0
    camFRC   = nil
    showHelp = false
end

-- ════════════════════════════════════════════════════════════════
-- COMMANDS: FREECAM & UTILITIES
-- ════════════════════════════════════════════════════════════════

RegisterCommand("freecam", function()
    if exports.striano_inventory:binocoloattivo() then
        print("Operazione bloccata in fase binocolo")
        return
    end
    if camFRC then
        EndFreeCam()
    else
        StartFreeCam(camFOV)
    end
end)

--- getFilter: find a filter by name (case-insensitive) and print its index
local function findFilterByName(name)
    for i, filterName in ipairs(filterList) do
        if string.lower(filterName) == string.lower(name) then
            return i
        end
    end
    return nil
end

RegisterCommand("getFilter", function(_, args)
    local query = table.concat(args, " ")
    if query == "" then
        print("/getFilter Name")
        return
    end
    local idx = findFilterByName(query)
    if idx then
        print(string.format("Filter '%s' found as index %s", filterList[idx], idx))
    else
        print(string.format("Filter '%s' not found.", query))
    end
end, false)
