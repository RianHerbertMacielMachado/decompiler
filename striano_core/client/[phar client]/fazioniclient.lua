-- fazioniclient.lua
-- striano_core / client / [phar client]
-- Trailer / tow-vehicle attachment system with interactive offset editor.

-- ──────────────────────────────────────────────────────────────────────────────
-- Module state
-- ──────────────────────────────────────────────────────────────────────────────

local towVehicle    = nil   -- vehicle that will pull the trailer (L0_1)
local attachOffX    = 0.0   -- attachment offset X (L1_1)
local attachOffY    = -1.0  -- attachment offset Y (L2_1)
local attachOffZ    = 0.0   -- attachment offset Z (L3_1) — set from height diff
local attachRotX    = 0.0   -- attachment rotation X (L4_1)
local attachRotY    = 0.0   -- attachment rotation Y (L5_1)
local attachRotZ    = 0.0   -- attachment rotation Z (L6_1)
local selectedVehicle = nil -- vehicle found in direction / being edited (L7_1)

-- ──────────────────────────────────────────────────────────────────────────────
-- Helpers
-- ──────────────────────────────────────────────────────────────────────────────

local function notify(msg)
    exports.striano_combat:submexError(msg)
end

--- Reattach `selectedVehicle` to `towVehicle` with the current offsets.
local function reattach()
    if not selectedVehicle or not towVehicle then return end
    DetachEntity(selectedVehicle, true, true)
    AttachEntityToEntity(
        selectedVehicle, towVehicle, -1,
        attachOffX, attachOffY, attachOffZ,
        attachRotX, attachRotY, attachRotZ,
        false, false, false, false, false, true
    )
end

--- Raycast 4 m in front of the player to find a vehicle.
function VehicleInFrontRimorchio()
    local myCoords  = GetEntityCoords(PlayerPedId())
    local frontCoords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 4.0, 0.0)
    local ray = CastRayPointToPoint(
        myCoords.x, myCoords.y, myCoords.z,
        frontCoords.x, frontCoords.y, frontCoords.z,
        10, PlayerPedId(), 0
    )
    local _, _, _, _, hitEntity = GetRaycastResult(ray)
    return hitEntity
end

-- ──────────────────────────────────────────────────────────────────────────────
-- /rimorchio — two-phase tow setup:
--   Phase 1 (in vehicle): save as tow vehicle, prompt to get out.
--   Phase 2 (on foot): find nearby trailer and call RimorchioVeicolo.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterCommand("rimorchio", function()
    local myPed = PlayerPedId()

    if IsPedSittingInAnyVehicle(myPed) then
        -- Phase 1: note the tow vehicle and tell player to get out.
        towVehicle = GetVehiclePedIsIn(myPed, false)
        notify("Scendi dal veicolo e ripeti il comando vicino il veicolo da trainare.")

        -- Also check if the vehicle already has a trailer.
        local hasTrailer, trailerVeh = GetVehicleTrailerVehicle(towVehicle)
        if hasTrailer and towVehicle ~= trailerVeh then
            towVehicle = trailerVeh
            notify("Rimorchio snodato ~q~collegato ~w~con successo.")
        end
        return
    end

    -- Phase 2: on foot.
    if towVehicle == nil then
        notify("Devi essere in un veicolo per selezionare un rimorchio.")
        ExecuteCommand("e shrug")
        return
    end

    local myCoords = GetEntityCoords(myPed)

    -- Try to find a nearby vehicle (direction → closest → raycast).
    local trailer = GetVehicleInDirectionStriano()

    if not trailer or trailer == 0 then
        trailer = GetClosestVehicle(myCoords.x, myCoords.y, myCoords.z, 5.0, 0, 70)
    end
    if not trailer or trailer == 0 then
        trailer = GetClosestVehicle(myCoords.x, myCoords.y, myCoords.z, 9.5, 0, 12294)
    end
    if not trailer or trailer == 0 then
        trailer = VehicleInFrontRimorchio()
    end
    if not trailer or trailer == 0 then
        -- Last resort: general raycast 5m ahead.
        local frontPos = GetOffsetFromEntityInWorldCoords(myPed, 0.0, 5.0, 0.0)
        local ray = CastRayPointToPoint(
            myCoords.x, myCoords.y, myCoords.z,
            frontPos.x, frontPos.y, frontPos.z,
            30, myPed, 0
        )
        local _, _, _, _, hitEnt = GetRaycastResult(ray)
        trailer = hitEnt
    end

    if trailer and trailer ~= 0 then
        NetworkRequestControlOfEntity(trailer)
        selectedVehicle = trailer

        if DoesEntityExist(trailer) then
            if trailer ~= towVehicle then
                Wait(100)
                RimorchioVeicolo(myPed, trailer)
            end
        else
            notify("Non sembra esserci un veicolo nelle vicinanze da trainare.")
        end
    end
end, false)

-- ──────────────────────────────────────────────────────────────────────────────
-- /rimorchiov — check / update an already-connected trailer.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterCommand("rimorchiov", function()
    if towVehicle == nil then
        notify("Non hai ancora selezionato un ~q~/rimorchio ~w~in un veicolo.")
        ExecuteCommand("e shrug")
        return
    end

    local hasTrailer, trailerVeh = GetVehicleTrailerVehicle(towVehicle)
    if hasTrailer and towVehicle ~= trailerVeh then
        towVehicle = trailerVeh
        notify("Rimorchio ~q~collegato ~w~con successo.")
    else
        notify("Nessun ~r~rimorchio ~w~rilevato.")
    end
end, false)

-- ──────────────────────────────────────────────────────────────────────────────
-- /syncrimo — force a re-attach with the current offsets.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterCommand("syncrimo", function()
    if towVehicle == nil and selectedVehicle == nil then
        notify("Non hai un operazione rimorchio in modifica.")
        return
    end
    UpdateRimorchio()
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- RimorchioVeicolo — perform the initial attachment.
-- ──────────────────────────────────────────────────────────────────────────────

function RimorchioVeicolo(draggerPed, trailer)
    local trailerCoords = GetEntityCoords(trailer)
    local towCoords     = GetEntityCoords(towVehicle)

    selectedVehicle = trailer

    -- Reset offsets; vertical offset from height difference.
    attachOffX = 0.0
    attachOffY = -1.0
    attachOffZ = trailerCoords.z - towCoords.z
    attachRotX = 0.0
    attachRotY = 0.0
    attachRotZ = towCoords.z - 2.0   -- initial Z rotation offset

    AttachEntityToEntity(
        trailer, towVehicle, -1,
        attachOffX, attachOffY, attachOffZ,
        attachRotX, attachRotY, attachRotZ,
        false, false, false, false, false, true
    )
    SetEntityAsMissionEntity(trailer)
    Wait(100)
    UpdateRimorchio()
end

-- ──────────────────────────────────────────────────────────────────────────────
-- /stacca — detach the closest vehicle from its trailer.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterCommand("stacca", function()
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local nearby   = GetClosestVehicle(myCoords.x, myCoords.y, myCoords.z, 7.5, 0, 70)

    if nearby and IsEntityAttached(nearby) then
        local coords  = GetEntityCoords(nearby)
        local heading = GetEntityHeading(nearby)
        DetachEntity(nearby, true, true)
        SetEntityCoords(nearby, coords)
        SetEntityHeading(nearby, heading)
        notify("Veicolo ~o~staccato ~w~con successo dal rimorchio.")
        selectedVehicle = nil
    end
end, false)

-- ──────────────────────────────────────────────────────────────────────────────
-- /staccav — detach the currently selected vehicle.
-- ──────────────────────────────────────────────────────────────────────────────

RegisterCommand("staccav", function()
    if selectedVehicle == nil then return end

    if IsEntityAttached(selectedVehicle) then
        local coords  = GetEntityCoords(selectedVehicle)
        local heading = GetEntityHeading(selectedVehicle)
        SetEntityCoords(selectedVehicle, coords)
        SetEntityHeading(selectedVehicle, heading)
        DetachEntity(selectedVehicle, true, true)
        notify("Veicolo vicino ~q~staccato ~w~dal rimorchio.")
        selectedVehicle = nil
    end
end, false)

-- ──────────────────────────────────────────────────────────────────────────────
-- UpdateRimorchio — live offset editor loop.
--
-- Controls (when no phone animation is playing):
--   No modifier:
--     Up/Down   → X offset ±0.05
--     Left/Right → Y offset ±0.05
--   LShift (21) held:
--     Up/Down   → Z offset ±0.02
--     Left/Right → rotZ ±1.5
--   Space (22) held:
--     Up/Down   → Y offset ±1.5
--     Left/Right → X offset ±1.5
--   X (73)      → detach (/staccav)
-- ──────────────────────────────────────────────────────────────────────────────

function UpdateRimorchio()
    CreateThread(function()
        -- Initial attach.
        AttachEntityToEntity(
            selectedVehicle, towVehicle, -1,
            attachOffX, attachOffY, attachOffZ,
            attachRotX, attachRotY, attachRotZ,
            false, false, false, false, false, true
        )

        while true do
            local myPed    = PlayerPedId()
            local myCoords = GetEntityCoords(myPed)
            local trailer  = selectedVehicle
            local tower    = towVehicle

            if tower == nil or trailer == nil then return end

            -- Skip input while holding phone.
            local phoneAnim1 = IsEntityPlayingAnim(myPed, "cellphone@", "cellphone_text_read_base", 3)
            local phoneAnim2 = IsEntityPlayingAnim(myPed, "cellphone@str", "cellphone_call_listen_a", 3)

            if not phoneAnim1 and not phoneAnim2 then
                -- Show controls hint.
                exports.striano_core:draw(300, "Sposta", 21, "Altezza", 22, "Rotazione", 73, "Stacca")

                -- X / drop key.
                if IsControlJustReleased(0, 73) then
                    ExecuteCommand("staccav")
                end

                local shift = IsControlPressed(0, 21)   -- LShift
                local space = IsControlPressed(0, 22)   -- Space

                if shift then
                    -- LShift mode: Z offset (Up/Down) and rotZ (Left/Right).
                    if IsControlPressed(0, 172) then attachOffZ = attachOffZ + 0.02; reattach() end
                    if IsControlPressed(0, 173) then attachOffZ = attachOffZ - 0.02; reattach() end
                    if IsControlPressed(0, 174) then attachRotZ = attachRotZ + 1.5;  reattach() end
                    if IsControlPressed(0, 175) then attachRotZ = attachRotZ - 1.5;  reattach() end

                elseif space then
                    -- Space mode: Y offset (Up/Down) and X offset (Left/Right).
                    if IsControlPressed(0, 172) then attachOffY = attachOffY + 1.5; reattach() end
                    if IsControlPressed(0, 173) then attachOffY = attachOffY - 1.5; reattach() end
                    if IsControlPressed(0, 174) then attachOffX = attachOffX + 1.5; reattach() end
                    if IsControlPressed(0, 175) then attachOffX = attachOffX - 1.5; reattach() end

                else
                    -- No modifier: X offset (Up/Down) and Y offset (Left/Right).
                    if IsControlPressed(0, 174) then attachOffX = attachOffX - 0.05; reattach() end
                    if IsControlPressed(0, 175) then attachOffX = attachOffX + 0.05; reattach() end
                    if IsControlPressed(0, 172) then attachOffY = attachOffY + 0.05; reattach() end
                    if IsControlPressed(0, 173) then attachOffY = attachOffY - 0.05; reattach() end
                end
            end

            Wait(1)
        end
    end)
end
