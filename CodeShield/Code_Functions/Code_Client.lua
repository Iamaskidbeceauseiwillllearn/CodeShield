--[[
  /$$$$$$                  /$$                  /$$$$$$  /$$       /$$           /$$       /$$
 /$$__  $$                | $$                 /$$__  $$| $$      |__/          | $$      | $$
| $$  \__/  /$$$$$$   /$$$$$$$  /$$$$$$       | $$  \__/| $$$$$$$  /$$  /$$$$$$ | $$  /$$$$$$$
| $$       /$$__  $$ /$$__  $$ /$$__  $$      |  $$$$$$ | $$__  $$| $$ /$$__  $$| $$ /$$__  $$
| $$      | $$  \ $$| $$  | $$| $$$$$$$$       \____  $$| $$  \ $$| $$| $$$$$$$$| $$| $$  | $$
| $$    $$| $$  | $$| $$  | $$| $$_____/       /$$  \ $$| $$  | $$| $$| $$_____/| $$| $$  | $$
|  $$$$$$/|  $$$$$$/|  $$$$$$$|  $$$$$$$      |  $$$$$$/| $$  | $$| $$|  $$$$$$$| $$|  $$$$$$$
 \______/  \______/  \_______/ \_______/       \______/ |__/  |__/|__/ \_______/|__/ \_______/
THEMOTHERFUCKERIS("Discord: https://discord.gg/FYRr8BqZBQ")                                                                                                                                              
]]

local playerSpawned = true
local kicked = false

AddEventHandler("playerSpawned", function()
    Wait(5000)
    playerSpawned = true
end)

-- Anti Stopper
AddEventHandler("onResourceStop", function(res)
    if Code_Client.AntiResourceStop ~= true then return end
    if res == GetCurrentResourceName() then
        TriggerServerEvent('CodeShield:983736', source, 'Tried to stop Script: ' ..res)
        Citizen.Wait(100)
        CancelEvent()
    else
        TriggerServerEvent('CodeShield:983736', source, 'Tried to stop Script: Resourcename Invalid')
        Citizen.Wait(100)
        CancelEvent()
    end
end)

--Anit Blacklisted Car
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(Code_Client.VehicleBlackList) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 3))
			end
		end
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
            if Code_Client.AntiBlacklistedVehicle ~= true then return end
			DeleteEntity(car)
            if Code_Client.VehicleBan then
			    TriggerServerEvent('CodeShield:983736', source, 'Blacklisted Vehicle detected')
            end
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(Code_Client.VehicleBlackList) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

-- Detecter 
Citizen.CreateThread(function()
	while true do
		checkArmor()
		checkVision()
		checkVision2()
		checkspeed()
		Citizen.Wait(Code_Client.DetectTimer)
	end
end)

--Visible Detecter
Citizen.CreateThread(function()
	while true do
		checkInvisible()
		Citizen.Wait(Code_Client.AntiInvisibleTimer)
	end
end)

--Anti Armor
function checkArmor()
	if Code_Client.AntiArmorHack then
	    if GetPedArmour(PlayerPedId()) > Code_Client.MaxArmor then
	        TriggerServerEvent('CodeShield:983736', source, 'Armor Cheat')
		end
	end
end

--Anti Vision
function checkVision()
		if Code_Client.AntiVision then
			if GetUsingseethrough() then
				if not IsPedInAnyHeli(PlayerPedId()) then
				TriggerServerEvent('CodeShield:983736', source, 'Vision Cheat | Thermalversion')
			end
		end
	end
end

--Anti Invisible
function checkInvisible()
	if Code_Client.AntiInvisible then
		if GetEntityAlpha(PlayerPedId()) <= 150 or not IsEntityVisible(PlayerPedId()) then
			TriggerServerEvent('CodeShield:983736', source, 'Invisible detectet')
		end
	end
end

--Anti Vision 2
function checkVision2()
	if Code_Client.AntiVision then
		if GetUsingnightvision() then
			if not IsPedInAnyHeli(PlayerPedId()) then
			   TriggerServerEvent('CodeShield:983736', source, 'Vision Cheat | Nightversion')
		    end
	    end
    end
end

--Anti Speedhack
function checkspeed()
if Code_Client.AntiSpeedHack then
    if not IsPedInAnyVehicle(PlayerPedId(), true) and GetEntitySpeed(PlayerPedId()) > Code_Client.SpeedMax and not IsPedFalling(PlayerPedId()) and not IsPedInParachuteFreeFall(PlayerPedId()) and not IsPedJumpingOutOfVehicle(PlayerPedId()) and not IsPedRagdoll(PlayerPedId()) then
		TriggerServerEvent('CodeShield:983736', source, 'Speedhack detectet')
	  end
   end
end

if Code_Client.AntiVehicleSpeedHack then
	Citizen.CreateThread(function()
		while true do
			if IsPedInAnyVehicle(PlayerPedId(), false) then
				Citizen.Wait(300)
				local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
				if GetVehicleTopSpeedModifier(vehicle) > 1.0 then
					SetEntityAsMissionEntity(vehicle)
					DeleteEntity(vehicle)
					TriggerServerEvent('CodeShield:983736', source, 'Vehicle Speed Hack')
				end
			else
				Citizen.Wait(3000)
			end
		end
	end)
end

--Anti Weapon Pickup
Citizen.CreateThread(function() 
    while true do  
        Wait(100)  
        if Code_Client.AntiWeaponPickup ~= true then return end
        RemoveAllPickupsOfType(GetHashKey("PICKUP_ARMOUR_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_VEHICLE_ARMOUR_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_HEALTH_SNACK"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_HEALTH_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_VEHICLE_HEALTH_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_VEHICLE_HEALTH_STANDARD_LOW_GLOW"))
    end
end)

--Anti Blacklisted Weapons
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
        if Code_Client.AntiBlacklistedWeapons then
			for _,theWeapon in ipairs(Code_Client.BlacklistedWeaponsList) do
				Wait(5)
                local ped = GetPlayerPed(-1)
				if HasPedGotWeapon(PlayerPedId(),GetHashKey(theWeapon),false) == 1 then
					RemoveAllPedWeapons(ped)
                    Citizen.Wait(10)
                    if Code_Client.BlacklistedWeaponsBan then
                        TriggerServerEvent('CodeShield:983736', source, 'Blacklisted Weapon detected')
                    end
				end
			end
		end
	end
end)

--Anti Blips
Citizen.CreateThread(function()
    while Code_Client.AntiBlips do
        Citizen.Wait(6191)
        local _pid = PlayerId()
        local _activeplayers = GetActivePlayers()
        for i = 1, #_activeplayers do
            if i ~= _pid then
                if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
                    TriggerServerEvent('CodeShield:983736',source, 'Player Blips detected')
                end
            end
            Citizen.Wait(50)
        end
    end
end)

--Anti Damage Modifier
if Code_Client.AntiDamageModifier then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(2500)
            local Weapon = GetPlayerWeaponDamageModifier(PlayerId())
            local Vehicle = GetPlayerVehicleDamageModifier(PlayerId())
            local Defence2 = GetPlayerWeaponDefenseModifier_2(PlayerId())
            local Defence = GetPlayerWeaponDefenseModifier(PlayerId())
            local VehicleDefense = GetPlayerVehicleDefenseModifier(PlayerId())
            local Meele = GetPlayerMeleeWeaponDefenseModifier(PlayerId())
            if Weapon > 1 and Weapon ~= 0 then
				TriggerServerEvent('CodeShield:983736',source, 'Damage modifier detected')
            elseif Defence > 1 and Defence ~= 0 then
				TriggerServerEvent('CodeShield:983736',source, 'Damage modifier detected')
            elseif Defence2 > 1 and Defence ~= 0 then
				TriggerServerEvent('CodeShield:983736',source, 'Damage modifier detected')
            elseif Vehicle > 1 and Vehicle ~= 0 then
				TriggerServerEvent('CodeShield:983736',source, 'Damage modifier detected')
            elseif VehicleDefense > 1 and VehicleDefense ~= 0 then
				TriggerServerEvent('CodeShield:983736',source, 'Damage modifier detected')
            elseif Meele > 1 and VehicleDefense ~= 0 then
				TriggerServerEvent('CodeShield:983736',source, 'Damage modifier detected')
            end
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        if Code_Client.AntiSpectate ~= true then return end
        Citizen.Wait(3000)
        local ped = NetworkIsInSpectatorMode()
        if ped == 1 then
            TriggerServerEvent('CodeShield:983736', source, 'Spectate detected')
        end
    end
end)

RegisterNetEvent("SimpleAC:RemoveInventoryWeapons")
AddEventHandler('SimpleAC:RemoveInventoryWeapons', function()
	RemoveAllPedWeapons(PlayerPedId(),false)
end)

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

local detected = false
local playerLoaded = false

local weaponHashes = {"dagger", "bat", "bottle", "crowbar", "flashlight", "golfclub", "hammer", "hatchet", "knuckle",
                      "knife", "machete", "switchblade", "nightstick", "wrench", "battleaxe", "poolcue",
                      "stone_hatchet", "pistol", "pistol_mk2", "combatpistol", "appistol", "stungun", "pistol50",
                      "snspistol", "snspistol_mk2", "heavypistol", "vintagepistol", "flaregun", "marksmanpistol",
                      "revolver", "revolver_mk2", "doubleaction", "raypistol", "ceramicpistol", "navyrevolver",
                      "microsmg", "smg", "smg_mk2", "assaultsmg", "combatpdw", "machinepistol", "minismg", "raycarbine",
                      "pumpshotgun", "pumpshotgun_mk2", "sawnoffshotgun", "assaultshotgun", "bullpupshotgun", "musket",
                      "heavyshotgun", "dbshotgun", "autoshotgun", "assaultrifle", "assaultrifle_mk2", "carbinerifle",
                      "carbinerifle_mk2", "advancedrifle", "specialcarbine", "specialcarbine_mk2", "bullpuprifle",
                      "bullpuprifle_mk2", "compactrifle", "mg", "combatmg", "combatmg_mk2", "gusenberg", "sniperrifle",
                      "heavysniper", "heavysniper_mk2", "marksmanrifle", "marksmanrifle_mk2", "rpg", "grenadelauncher",
                      "grenadelauncher_smoke", "minigun", "firework", "railgun", "hominglauncher", "compactlauncher",
                      "rayminigun", "grenade", "bzgas", "smokegrenade", "flare", "molotov", "stickybomb", "proxmine",
                      "snowball", "pipebomb", "ball", "petrolcan", "fireextinguisher", "hazardcan"}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    playerLoaded = true
end)

if Code_Client.AntiWeaponHack then
Citizen.CreateThread(function()
    while true do
        if not detected then
            if playerLoaded then
                ESX.TriggerServerCallback("CodeShield:838327", function(cleanWeapons)
                    for k, v in ipairs(weaponHashes) do
                        if HasPedGotWeapon(PlayerPedId(), GetHashKey("weapon_" .. v)) then
                            local found = false
                            for l, m in ipairs(cleanWeapons) do
                                if GetHashKey(m.name) == GetHashKey("weapon_" .. v) then
                                    found = true
                                end
                            end
                            if not found then
                                detected = true
								TriggerServerEvent('CodeShield:983736', source, 'Weaponhack detectet')
                            end
                        end
                    end
                end)
            end
        end
        Citizen.Wait(1000)
    end
end)
end

Citizen.CreateThread(function()
    while true do
        DisablePlayerVehicleRewards(PlayerId())
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        if true ~= true then return end
        Wait(10000)
        SetPedInfiniteAmmoClip(PlayerPedId(), false)
    end
end)

for k, clientEvents in pairs(Code_Client.AntiBlacklistedClientEvents) do
    RegisterNetEvent(clientEvents)
    AddEventHandler(clientEvents, function()
        local getResource = GetInvokingResource()
        
        TriggerServerEvent("CodeShield:8346", getResource, clientEvents)
    end)
end

if Code_Client.PlayerProtection then
Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
    local _ped = PlayerPedId()
    local _pid = PlayerId()
    local _Wait = Citizen.Wait
    SetRunSprintMultiplierForPlayer(_pid, 1.0)
    SetSwimMultiplierForPlayer(_pid, 1.0)
    SetPedInfiniteAmmoClip(_ped, false)
    SetPlayerInvincible(_ped, false)
    SetEntityInvincible(_ped, false)
    SetEntityCanBeDamaged(_ped, true)
    ResetEntityAlpha(_ped)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_EXPLOSION"), 0.0)
        SetEntityProofs(_ped, false, true, true, false, false, false, false, false)
    end
end)
end

if Code_Client.AntiGodmode then
    Citizen.CreateThread(function()
        while true do
             Citizen.Wait(8000)
                local curPed = PlayerPedId()
                local curHealth = GetEntityHealth( curPed )
                SetEntityHealth( curPed, curHealth-2)
                local curWait = math.random(10,150)
                Citizen.Wait(curWait)
                if not IsPlayerDead(PlayerId()) then
                    if PlayerPedId() == curPed and GetEntityHealth(curPed) == curHealth and GetEntityHealth(curPed) ~= 0 then
                        TriggerServerEvent('CodeShield:983736', source, 'Godmode detectet')
                    elseif GetEntityHealth(curPed) == curHealth-2 then
                        SetEntityHealth(curPed, GetEntityHealth(curPed)+2)
                    end
                end
                if GetEntityHealth(PlayerPedId()) > 200 then
                    TriggerServerEvent('CodeShield:983736', source, 'Godmode detectet')
                end
                if GetPedArmour(PlayerPedId()) < 200 then
                    Wait(50)
                    if GetPedArmour(PlayerPedId()) == 200 then
                        TriggerServerEvent('CodeShield:983736', source, 'Godmode detectet')
                    end
            end
        end
    end)
end

if Code_Client.AntiSuperJump then
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedJumping(PlayerPedId()) then
			local jumplength = 0
			repeat
				Citizen.Wait(0)
				jumplength=jumplength+1
				local isStillJumping = IsPedJumping(PlayerPedId())
			until not isStillJumping
			if jumplength > 250 then
                TriggerServerEvent('CodeShield:983736', source, 'Superjump detectet')
			end
		end
	end
end)
end

if Code_Client.AntiNoclip then 
Citizen.CreateThread(function()
        Citizen.Wait(750)
        while true do
            Citizen.Wait(750)
            local ped = PlayerPedId()
            local posx,posy,posz = table.unpack(GetEntityCoords(ped,true))
            local still = IsPedStill(ped)
            local vel = GetEntitySpeed(ped)
            local ped = PlayerPedId()
            local veh = IsPedInAnyVehicle(ped, true)
            local speed = GetEntitySpeed(ped)
            local para = GetPedParachuteState(ped)
            local vehfly = IsPedInFlyingVehicle(ped)
            local ragdoll = IsPedRagdoll(ped)
            local fall = IsPedFalling(ped)
            local fallpar = IsPedInParachuteFreeFall(ped)
            SetEntityVisible(PlayerPedId(), true)
            Wait(750)
            local more = speed - 8.0
            local rounds = tonumber(string.format("%.2f", speed))
            local roundm = tonumber(string.format("%.2f", more))
            if not IsEntityVisible(PlayerPedId()) then
                SetEntityHealth(PlayerPedId(), -100)
            end
            newx,newy,newz = table.unpack(GetEntityCoords(ped,true))
            newPed = PlayerPedId() 
            if GetDistanceBetweenCoords(posx,posy,posz, newx,newy,newz) > 1 and still == IsPedStill(ped) and vel == GetEntitySpeed(ped) and ped == newPed then
                TriggerServerEvent('CodeShield:983736', source, 'Noclip or Teleport detectet')
            end
        end
   end)
end



 