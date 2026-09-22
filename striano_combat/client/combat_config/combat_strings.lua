function onFinisher() -- This will be called when the player reach the maximum bar to perform a finisher! The yellow bar!
	shareSound("sounds/striano_combat/magic/soulsteal", 0.1, PlayerPedId(), 7.0) -- local link = "sounds/soulsteal.mp3" exports.xsound:PlayUrl("soulsteal", link, 0.1)
	testo3d("~y~~h~F I N I S H E R")
end

function NoManaFunc(id_SPELL)
	TriggerServerEvent("PlayEffectEnt", { a="scr_rcbarry1",b="scr_alien_impact_bul", ent=PedToNet(PlayerPedId()), s=5.0, c=nil, o=0.7 } )
	testo3d("~r~~h~N O   M A N A")
end

function MaxManaFunc()
	TriggerServerEvent("PlayEffectEnt", { a="scr_rcbarry1",b="scr_alien_impact_bul", ent=PedToNet(PlayerPedId()), s=2.5, c=nil, o=0.7 } )
	testo3d("~b~~h~M A X  M A N A")
end

function SuperJumpActive()
	testo3d("~p~~h~S U P E R  J U M P")
end

function SuperJumpDisactive()
	testo3d("")
end

function MexCreaCombo()
	local checkArmi = ""
	SendNUIMessage({ action = 'show0', content = "Create a new fight style"..checkArmi..".\nYou can have until "..maxAnimCombo.." moves for every key.\n\nW: " .. stringaW .. "\nA: " .. stringaA .. "\nD: " .. stringaD .. "\nSh+W: " .. stringaSW .. "\nSh+A: " .. stringaSA .. "\nSh+D: " .. stringaSD })
	exports.striano_combat:submexInfo("Create a new Fight Style, if you don't know how it work ask to a Sensei (or Admin).")
end

-- WHIT THIS COMMAND YOU CAN COPY YOUR MOVESET IN CLIPBOARD TO GIVE TO ANOTHER PLAYER (For example you can give a cool moveset as Sensei, cool for roleplay!!!)
RegisterCommand("getCombatString", function(source, args) 
	if ImAdmin() then
		local tabella = FightWStyle
		local Style = myWStyle
		-- if Sfoggiate and mySword > 0 then FoderaArmi() Wait(25) end
		tnsa = tabella[Style].WithoutShift.CombatA
		tnsd = tabella[Style].WithoutShift.CombatD
		tnsw = tabella[Style].WithoutShift.CombatW
		tsa = tabella[Style].WithShift.CombatA
		tsd = tabella[Style].WithShift.CombatD
		tsw = tabella[Style].WithShift.CombatW
		local finalData = { tnsa, tnsd, tnsw, tsa, tsd, tsw }
		finalData = json.encode(finalData)
		CopyDataFight(finalData)
		-- if Sfoggiate and mySword > 0 then strianoSub("Stringa combattimento (Con armi) copiata negli appunti.", true)
		-- else 
			strianoSub("Fight Moveset copied in the clipboard, ready to give to another player.", true) 
		-- end
	else
		exports.striano_combat:submexError("You need to be a Sensei for this operation.")
	end
end)

-- AND WHIT THIS COMMAND YOU CAN ASSIGN (For example if a Sensei give you the string on discord, you can copy and paste in the dialog box!)
-- You need the dialog box? Come on discord, or just insert your own dialog box!
RegisterCommand("CombatString", function(source, args) 	
	if ImAdmin() then
		local stringa = OpenInput('Insert the Moveset String!')
		if stringa and #stringa > 0 then 
			stringa = json.decode(stringa)		
			tnsa = stringa[1] tnsd = stringa[2] tnsw = stringa[3]
			tsa = stringa[4] tsd = stringa[5] tsw = stringa[6]
			
			local nameCombat = OpenInput('Insert name for this Combat Style.') -- Combat Name Combat
			if #nameCombat < 24 and #nameCombat > 0 then 
				for i=1, #tnsa, 1 do if tnsa[i] > #AnimFightList then table.remove(tnsa, i) end end
				for i=1, #tnsd, 1 do if tnsd[i] > #AnimFightList then table.remove(tnsd, i) end end
				for i=1, #tnsw, 1 do if tnsw[i] > #AnimFightList then table.remove(tnsw, i) end end
				for i=1, #tsa, 1 do if tsa[i] > #AnimFightList then table.remove(tsa, i) end end
				for i=1, #tsd, 1 do if tsd[i] > #AnimFightList then table.remove(tsd, i) end end
				for i=1, #tsw, 1 do if tsw[i] > #AnimFightList then table.remove(tsw, i) end end
				
				local idleID = tonumber(OpenInput('ID Idle'))
				if idleID ~= nil then 
					if idleID <= 0 or idleID > #idleFight then idleID = 1 end
				else
					idleID = 1
				end
				
				if #tnsa>0 and  #tnsd>0 and #tnsw>0 and #tsa>0 and #tsd>0 and #tsw>0 then
					myWStyle = #FighStyle+1
					FighStyle[#FighStyle+1] = {
						Name=nameCombat, Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = idleID,
						WithoutShift = { CombatA = tnsa, CombatD = tnsd, CombatW = tnsw },
						WithShift = { CombatA = tsa, CombatD = tsd, CombatW = tsw }
					}
					
					testo3d("Style " .. nameCombat .. " created & assigned", true)
				else
					strianoSub("You miss something in the string, creation canceled.", true)
					goon = true
				end
			else
				strianoSub("You miss a name for your combat moveset.", true)
				goon = true
			end
		else
			strianoSub("You miss something in the string, creation canceled.", true)
		end
	else
		exports.striano_combat:submexError("You need to be a Sensei to do this (or Admin)")
	end
end)

function string_IdleList(sc)
	if sc then 
		draw(25,"Close", 38,"Select", 175,"", 174, "[" .. indexIdle .. "/".. #idleFight.."]")
	else
		draw(25,"Close", 175,"", 174, "[" .. indexIdle .. "/".. #idleFight.."]")
	end
end
function string_HolsterList(sc)
	if sc then
		draw(25,"Close", 38,"Select", 175,"", 174, " [" .. indexHolster .. "/".. #holsterlist.."]")
	else
		draw(25,"Close", 175,"", 174, " [" .. indexHolster .. "/".. #holsterlist.."]")
	end
end

txt_Covenant = {
	"Confirm enter party ", -- 1
	"Yes, enter!", -- 2
	"Cancel", -- 3
	"Now you are in the party:", -- 4
	"Password not correct.", -- 5
	"No party in list.", -- 6
	"Yes.", -- 7
	"Party deleted.", -- 8
	"Confirm delete your own party ", -- 9
	"You want leave the current party ", -- 10
	"You leave the current party.", -- 11
	"No members in list.", -- 12
	"No own party detected.", -- 13
	"Own party ID: ", -- 14
	"Current party ID: ", -- 15
	"Members in party ", -- 16
	"Select a party to enter.", -- 17
}

txt_IdleSet = "To complete the style select an idle fight from this list."
txt_NotFull = "You need to assign a move on every keys to create  style."
txt_MaxMoves = "This key have the maximum movest assigned on your account: "
txt_DeletedAnim = "Anim deleted from key"
txt_NoAnimKey = "No animations on this key."
txt_HowToDel = "Press a key between WAD & SHIFT + WAD to subtract an animation."