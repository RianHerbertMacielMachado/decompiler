-- Rugby Script by striano scrits 2.0
-- Please be sure to play ever with one ball around!
-- Use the command to delete the ball if you need and spawn a new ball for a new match!

CommandActive = true -- Set this to false this if you use the export at last line in other script! (For example item: ballrugby)
Outlineball = true -- Set this to false if you donw like the outline on the ball, but my advice stay this to true, it's better to play with long shoots!
cmdSpawnball = "spawnballRugby" -- the command to spawn the ball, if the variable "CommandActive" is false, you can for example spawn the ball from an Item with: exports.striano_rugby:RugbySpawnBall()
cmdDelball = "delballRugby" -- the command to delete a ball (ball need not moving)
cmdInvite = 'inviteRugby' -- Command to invite a player to play with the ball you spawn.
cmdLeave = 'leaveRugby' -- Command to exit from a game with ball, if it's your ball use cmdDelball

-- CONFIGURABLE KEYS
aimkey = 25 -- A key to aim with ball! [Default Q]
shootkey = 24 -- A key to shoot the ball [Default E]
takelkey = 23 -- [Default F] -- CHOOSE HERE: https://docs.fivem.net/docs/game-references/controls/
takekey = 74 -- Default 73 (X) The key to take/release the ball from the floor (or in air), but you can take the ball also running on the ball automatically.

function OnBallSpawnBefore()
	-- Do you need some code when before ball spawn? Let insert here!
end
function OnBallSpawnAfter()
	-- Do you need some code when after ball spawn? Let insert here!
end

-- If you need spawn the ball from another script (for example an item from your framework use the following exports in your code)
-- exports.striano_rugby:RugbySpawnBall()

