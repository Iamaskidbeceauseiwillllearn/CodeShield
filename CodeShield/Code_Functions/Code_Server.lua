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

local allowed = true

local THEMOTHERFUCKERIS = print
print = function(a)
end

local a = "1.5"
local b = GetResourceMetadata(GetCurrentResourceName(), "github", 0)
local c = false
Citizen.CreateThread(
    function()
        local d = GetNumResources()
        for e = 0, d, 1 do
            local f = GetResourceByFindIndex(e)
            UpdateResource(f)
        end
        Citizen.Wait(4000)
        if c == false then
            if true then
                c = not c
                UpdateChecker()
            end
        end
    end
)
function UpdateResource(f)
    if f == "fivem-checker" then
        if GetResourceState(f) == "started" or GetResourceState(f) == "starting" then
            if true then
                c = true
            end
        end
    end
end
function UpdateChecker()
    if string.find(b, "github") then
        if string.find(b, "github.com") then
            GithubL = b
            b = string.gsub(b, "github", "raw.githubusercontent") .. "/master/version"
        else
            GithubL = string.gsub(b, "raw.githubusercontent", "github"):gsub("/master", "")
            b = b .. "/version"
        end
    else
    end
    PerformHttpRequest(
        b,
        function(g, h, i)
            NewestVersion = h
        end
    )
    repeat
        Citizen.Wait(10)
    until NewestVersion ~= nil
    local j, k = string.gsub(NewestVersion, "\n", "\n")
    Version1 = NewestVersion:match("[^\n]*"):gsub("[<>]", "")
    if string.find(Version1, a) then
    else
        if k > 0 then
            Changelog = NewestVersion:gsub(Version1, ""):match("(.*" .. a .. ")"):gsub(a, "")
            Changelog = string.gsub(Changelog, "\n", "")
            Changelog = string.gsub(Changelog, "-", " \n-"):gsub("%b<>", ""):sub(1, -2)
            NewestVersion = Version1
        end
    end
    Citizen.Wait(500)
    if a == Version1 then
        THEMOTHERFUCKERIS("^2CodeShield say hello")
        Citizen.Wait(1500)
        THEMOTHERFUCKERIS([[^0

         /$$$$$$                  /$$                   /$$$$$$  /$$      /$$           /$$       /$$
        /$$__  $$                | $$                 /$$__  $$| $$      |__/          | $$      | $$
       | $$  \__/  /$$$$$$   /$$$$$$$  /$$$$$$       | $$  \__/| $$$$$$$  /$$  /$$$$$$ | $$  /$$$$$$$
       | $$       /$$__  $$ /$$__  $$ /$$__  $$      |  $$$$$$ | $$__  $$| $$ /$$__  $$| $$ /$$__  $$
       | $$      | $$  \ $$| $$  | $$| $$$$$$$$       \____  $$| $$  \ $$| $$| $$$$$$$$| $$| $$  | $$
       | $$    $$| $$  | $$| $$  | $$| $$_____/       /$$  \ $$| $$  | $$| $$| $$_____/| $$| $$  | $$
       |  $$$$$$/|  $$$$$$/|  $$$$$$$|  $$$$$$$      |  $$$$$$/| $$  | $$| $$|  $$$$$$$| $$|  $$$$$$$
        \______/  \______/  \_______/ \_______/       \______/ |__/  |__/|__/ \_______/|__/ \_______/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        ]])
        THEMOTHERFUCKERIS("Your server is protected by Code Shield!")
        THEMOTHERFUCKERIS("^2Mixed and improved by Code#0570")
        THEMOTHERFUCKERIS("Discord: https://discord.gg/FYRr8BqZBQ")
        Citizen.Wait(1500)
        if Code_Server.AntiBackdoor then
            Citizen.Wait(1500)
            THEMOTHERFUCKERIS("^2Search for specified string...")
            Citizen.Wait(500)
            runcipher(0)
        end
    else
        allowed = false
        THEMOTHERFUCKERIS("^1Updater Error")
        Citizen.Wait(1500)
        THEMOTHERFUCKERIS([[^1

             /$$   /$$                 /$$             /$$                        
            | $$  | $$                | $$            | $$                        
            | $$  | $$  /$$$$$$   /$$$$$$$  /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
            | $$  | $$ /$$__  $$ /$$__  $$ |____  $$|_  $$_/   /$$__  $$ /$$__  $$
            | $$  | $$| $$  \ $$| $$  | $$  /$$$$$$$  | $$    | $$$$$$$$| $$  \__/
            | $$  | $$| $$  | $$| $$  | $$ /$$__  $$  | $$ /$$| $$_____/| $$      
            |  $$$$$$/| $$$$$$$/|  $$$$$$$|  $$$$$$$  |  $$$$/|  $$$$$$$| $$      
             \______/ | $$____/  \_______/ \_______/   \___/   \_______/|__/      
                      | $$                                                        
                      | $$                                                        
                      |__/                  

          ]])
          Citizen.Wait(1500)
          THEMOTHERFUCKERIS("^0Hey check your anticheat version you are using an outdated version of anticheat")
          THEMOTHERFUCKERIS("^2Mixed and improved by Code#0570")
          THEMOTHERFUCKERIS("Discord: https://discord.gg/FYRr8BqZBQ")
    end
end

--CODE BAN FUNCTION FROM CLIENT TO SERVER
RegisterNetEvent('CodeShield:983736')
AddEventHandler('CodeShield:983736', function(id, reason)
    if IsPlayerAceAllowed(source, 'code.bypass') then return end
    local id = source;
    local ids = ExtractIdentifiers(id);
    local steam = ids.steam:gsub("steam:", "");
    local steamDec = tostring(tonumber(steam,16));
    steam = "https://steamcommunity.com/profiles/" .. steamDec;
    local gameLicense = ids.license;
    local discord = ids.discord;
    Wait(500)
    BanPlayer(id, reason)
    DropPlayer(id,'' ..Code_Server.KickMessageClientSide.. ' | Reason: ' ..reason)
end)

--CODE BAN FUNCTION
function ExtractIdentifiers(src)
    
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)
        
        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.sub(id, 1, string.len("discord:")) == "discord:" then
            discordid = string.sub(id, 9)
            identifiers.discord = "<@" .. discordid .. ">"
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end

function BanPlayer(src, reason) 
    local config = LoadResourceFile(GetCurrentResourceName(), "banlist.json")
    local cfg = json.decode(config)
    local ids = ExtractIdentifiers(src);
    local playerIP = ids.ip;
    local playerSteam = ids.steam;
    local playerLicense = ids.license;
    local playerXbl = ids.xbl;
    local playerLive = ids.live;
    local playerDisc = ids.discord;
    local banData = {};
    banData['ID'] = tonumber(getNewBanID());
    banData['ip'] = "NONE SUPPLIED";
    banData['reason'] = reason;
    banData['license'] = "NONE SUPPLIED";
    banData['steam'] = "NONE SUPPLIED";
    banData['xbl'] = "NONE SUPPLIED";
    banData['live'] = "NONE SUPPLIED";
    banData['discord'] = "NONE SUPPLIED";
    if ip ~= nil and ip ~= "nil" and ip ~= "" then 
        banData['ip'] = tostring(ip);
    end
    if playerLicense ~= nil and playerLicense ~= "nil" and playerLicense ~= "" then 
        banData['license'] = tostring(playerLicense);
    end
    if playerSteam ~= nil and playerSteam ~= "nil" and playerSteam ~= "" then 
        banData['steam'] = tostring(playerSteam);
    end
    if playerXbl ~= nil and playerXbl ~= "nil" and playerXbl ~= "" then 
        banData['xbl'] = tostring(playerXbl);
    end
    if playerLive ~= nil and playerLive ~= "nil" and playerLive ~= "" then 
        banData['live'] = tostring(playerXbl);
    end
    if playerDisc ~= nil and playerDisc ~= "nil" and playerDisc ~= "" then 
        banData['discord'] = tostring(playerDisc);
    end
    cfg[tostring(GetPlayerName(src))] = banData;
    SaveResourceFile(GetCurrentResourceName(), "banlist.json", json.encode(cfg, { indent = true }), -1)
    local banEmbed = {
        {
            ["color"] = "16711680",
            ["title"] = "CodeShield has banned a player",
            ["description"] = "**Name: **"..GetPlayerName(src).."**\n ID: **"..src.."**\n Reason: **"..reason.."**\n Discord: "..playerDisc.."\n FiveM: **"..playerLicense.."**\n Steam: **"..playerSteam,
        }
    }

    PerformHttpRequest(Code_Server.DiscordWebhook, function(error, texto, cabeceras) end, "POST", json.encode({username = "CodeShield", embeds = banEmbed}), {["Content-Type"] = "application/json"})
end

function getNewBanID()
    local config = LoadResourceFile(GetCurrentResourceName(), "banlist.json")
    local cfg = json.decode(config)
    local banID = 0;
    for k, v in pairs(cfg) do 
        banID = banID + 1;
    end
    return (math.random(111111,999999))
end

--UNBAN COMMAND 
RegisterCommand('unban', function(source, args, rawCommand)
    local src = source;
    if (src <= 0) then
        if #args == 0 then 
            return; 
        end
        local banID = args[1];
        if tonumber(banID) ~= nil then
            local playerName = UnbanPlayer(banID);
            if playerName then
            else 
            end
        end
        return;
    end 
    if IsPlayerAceAllowed(src, "code.bypass") then 
        if #args == 0 then 
            return; 
        end
        local banID = args[1];
        if tonumber(banID) ~= nil then 
            local playerName = UnbanPlayer(banID);
            print('Unbanned Verification-ID: ' ..playerName)
            if playerName then
            else 
            end
        else 
        end
    end
end)

--UNBAN PLAYER FUNCTION
function UnbanPlayer(banID)
    local config = LoadResourceFile(GetCurrentResourceName(), "banlist.json")
    local cfg = json.decode(config)
    for k, v in pairs(cfg) do 
        local id = tonumber(v['ID']);
        if id == tonumber(banID) then 
            local name = k;
            cfg[k] = nil;
            SaveResourceFile(GetCurrentResourceName(), "banlist.json", json.encode(cfg, { indent = true }), -1)
            THEMOTHERFUCKERIS('^1[Simple^0AC] ^0Info: ^5a player has been successfully unbanned')
            return name;
        end
    end
    return false;
end 

--CHECK BAN
function isBanned(src)
    local config = LoadResourceFile(GetCurrentResourceName(), "banlist.json")
    local cfg = json.decode(config)
    local ids = ExtractIdentifiers(src);
    local playerIP = ids.ip;
    local playerSteam = ids.steam;
    local playerLicense = ids.license;
    local playerXbl = ids.xbl;
    local playerLive = ids.live;
    local playerDisc = ids.discord;
    for k, v in pairs(cfg) do 
        local reason = v['reason']
        local id = v['ID']
        local ip = v['ip']
        local license = v['license']
        local steam = v['steam']
        local xbl = v['xbl']
        local live = v['live']
        local discord = v['discord']
        if tostring(ip) == tostring(playerIP) then return { ['banID'] = id, ['reason'] = reason } end;
        if tostring(license) == tostring(playerLicense) then return { ['banID'] = id, ['reason'] = reason } end;
        if tostring(steam) == tostring(playerSteam) then return { ['banID'] = id, ['reason'] = reason } end;
        if tostring(xbl) == tostring(playerXbl) then return { ['banID'] = id, ['reason'] = reason } end;
        if tostring(live) == tostring(playerLive) then return { ['banID'] = id, ['reason'] = reason } end;
        if tostring(discord) == tostring(playerDisc) then return { ['banID'] = id, ['reason'] = reason } end;
    end
    return false;
end


function GetBans()
    local config = LoadResourceFile(GetCurrentResourceName(), "banlist.json")
    local cfg = json.decode(config)
    return cfg;
end

local function OnPlayerConnecting(name, setKickReason, deferrals)
    deferrals.defer();
    deferrals.update('CodeShield - Checking Bans');
    local src = source;
    local banned = false;
    local ban = isBanned(src);
    Citizen.Wait(400);
    if ban then 
        local reason = ban['reason'];
        local printMessage = nil;
        if string.find(reason, "CodeShield - ") then 
            printMessage = "" 
        else 
            printMessage = "CodeShield - " 
        end 
        if Code_Server.BannedPlayerJoinConsoleLog then
        THEMOTHERFUCKERIS("^0[CodeShield] ^0INFO: ^5The Cheater " .. GetPlayerName(src) .. " tried to join this Server but he is banned. Reason: " .. reason);
        end
        deferrals.done("\nCodeShield | " ..Code_Server.ServerName.. "\n\nYou have been Banned for cheating\nReason: " ..reason.. "\nBanmessage: " ..Code_Server.BannMessage.. "\n\nYour Ban-ID: " ..ban['banID'].. "\n\nIf this might be an error, contact the server owner\nDiscord: " ..Code_Server.Discord.. "")
        banned = true;
        CancelEvent();
        return;
    end
    if not banned then 
        deferrals.done();
    end
end

AddEventHandler("playerConnecting", OnPlayerConnecting)

-- DETECTIONS --
Citizen.CreateThread(function()
    particlesSpawned = {}
    exp = {}
    blacklistedEvents = {}
    vehiclesSpawned = {}
    pedsSpawned = {}
    propsSpawned = {}
    while true do
        Citizen.Wait(Code_Server.DetectTimer) 
        particlesSpawned = {}
        vehiclesSpawned = {}
        pedsSpawned = {}
        blacklistedEvents = {}
        propsSpawned = {}
        exp = {}
    end
end)

AddEventHandler('ptFxEvent', function(sender, data)
    if Code_Server.AntiSpamParticle ~= true then return end
    if Code_Server.ClearParticleAfterDetect then
        CancelEvent()
    end
    local _src = sender
    particlesSpawned[_src] = (particlesSpawned[_src] or 0) + 1
    if particlesSpawned[_src] > Code_Server.ParticleSpawnLimit then
            if Code_Server.ClearParticleAfterDetect then
                CancelEvent()
            end
            if sender ~= 0 or sender ~= nil then
                if IsPlayerAceAllowed(sender, 'code.bypass') then return end
                if Code_Server.ParticleBan then
                    BanPlayer(sender, 'Particle Spam detectet')
                    DropPlayer(sender, Code_Server.KickMessageServerSide)
                end
                if Code_Server.ParticleKick then
                    DropPlayer(sender, Code_Server.KickMessageServerSide)
                end
            end
    end
end)

function GetEntityOwner(entity)
    if (not DoesEntityExist(entity)) then 
        return nil 
    end
    local owner = NetworkGetEntityOwner(entity)
    if (GetEntityPopulationType(entity) ~= 7) then return nil end
    return owner
end

inTable = function(table, item)
    for k,v in pairs(table) do
        if v == item then return true end
    end
    return false
end

AddEventHandler("entityCreating",  function(entity)
    if allowed then
        local owner = GetEntityOwner(entity)
        local model = GetEntityModel(entity)
        local modelOwner = NetworkGetEntityOwner(entity)

        local WhitelistedPropList = {}
        for k,v in pairs(Code_Server.PropWhitelist) do
            table.insert(WhitelistedPropList, GetHashKey(v))
        end

        if GetEntityPopulationType(entity) == 0 then
            if Code_Server.AntiSpawnProp then
                if inTable(WhitelistedPropList, model) == false then
                    if model ~= 0 and model ~= 225514697 then
                        if Code_Server.DeletePropsAfterDetect then
                            CancelEvent()
                        end
                        if modelOwner ~= 0 or modelOwner ~= nil then
                            if Code_Server.PropBan then
                                BanPlayer(modelOwner, 'Blacklisted Prop Spawn detectet')
                                
                                DropPlayer(modelOwner, Code_Server.KickMessageServerSide) 
                            end
                            if Code_Server.PropKick then
                                DropPlayer(modelOwner, Code_Server.KickMessageServerSide) 
                            end
                        end
                    end
                end
            end
        end

        if (owner ~= nil and owner > 0) then
            if IsPlayerAceAllowed(owner, 'simple.team') then return end

            if GetEntityType(entity) == 1 then
                if Code_Server.AntiSpamPed == true then
                    local _src = owner
                    pedsSpawned[_src] = (pedsSpawned[_src] or 0) + 1
                    if pedsSpawned[_src] > Code_Server.PedSpawnLimit then
                        if Code_Server.DeletePedsAfterDetect then
                            CancelEvent()
                        end
                        if owner ~= 0 or owner ~= nil then
                            if Code_Server.PedBan then
                                BanPlayer(owner, 'Ped Spam detectet')                    
                                DropPlayer(owner, Code_Server.KickMessageServerSide) 
                            end
                            if Code_Server.PedKick  then
                                DropPlayer(owner, Code_Server.KickMessageServerSide) 
                            end
                        end
                    end 
                end
            end

            if GetEntityType(entity) == 2 then
                if Code_Server.AntiSpamVehicle == true then
                    local _src = owner
                    vehiclesSpawned[_src] = (vehiclesSpawned[_src] or 0) + 1
                    if vehiclesSpawned[_src] > Code_Server.VehicleSpawnLimit then
                        if Code_Server.DeleteVehiclesAfterDetect then
                            CancelEvent()
                        end
                        if owner ~= 0 or owner ~= nil then
                            if Code_Server.VehicleBan then
                                BanPlayer(owner, 'Vehicle Spam detectet')
                                DropPlayer(owner, Code_Server.KickMessageServerSide) 
                            end
                            if Code_Server.VehicleKick then
                                DropPlayer(owner, Code_Server.KickMessageServerSide) 
                            end
                        end
                    end 
                end
            end

        end
    end
end)

--ANTI EXPLOSION
AddEventHandler('explosionEvent', function(sender, ev)
    if Code_Server.AntiExplosion ~= true then return end
    if IsPlayerAceAllowed(sender, 'code.bypass') then return end
    local ids = ExtractIdentifiers(sender);
    local playerIP = ids.ip;
    local playerSteam = ids.steam;
    local playerLicense = ids.license;
    local playerXbl = ids.xbl;
    local playerLive = ids.live;
    local playerDisc = ids.discord;
    for _, v in ipairs(Code_Server.BlacklistedExplosions) do
        if ev.explosionType == v then
            if IsPlayerAceAllowed(sender, 'code.bypass') then return end
            CancelEvent()
            if Code_Server.ExplosionBan == true then
                BanPlayer(sender, 'Tried to spawn Blacklisted Explosion, Type: ' ..ev.explosionType)
                DropPlayer(sender, Code_Server.KickMessageServerSide)
            end
            if Code_Server.ExplosionKick == true then
                DropPlayer(sender, Code_Server.KickMessageServerSide)
            end
        end
    end
end)

--ANTI BLACKLIST NAMES
local x = {}
if Code_Server.AntiBlacklistedNames then
AddEventHandler("playerConnecting", function(playerName, setKickReason)
    playerName = (string.gsub(string.gsub(string.gsub(playerName,  "-", ""), ",", ""), " ", ""):lower())
    for k, v in pairs(Code_Server.BlacklistedUsernames) do
      local g, f = playerName:find(string.lower(v))
      if g or f  then
        table.insert (x, v)
        local blresult = table.concat(x, " ")
          setKickReason('[CodeShield] INFO: ' ..Code_Server.KickMessageBlacklistedUserNames.. '')
          CancelEvent()
          for key in pairs (x) do
            x [key] = nil
        end
      end
    end
end)
end

--ANTI EVENT
Citizen.CreateThread(function()
    while true do
        Wait(1000)
        for i, event in ipairs(Code_Server.BlacklistedEventsList) do
            RegisterNetEvent(event)
            AddEventHandler(event, function()
                if Code_Server.AntiServerBlacklistedEvents ~= true then return end
                if IsPlayerAceAllowed(source, 'code.bypass') then return end
                if Code_Server.AntiServerBlacklistedEvents then
                    CancelEvent()
                end
                if source ~= 0 or source ~= nil then
                    if Code_Server.BlacklistedEventBan then
                        BanPlayer(source, 'Tried to trigger Blacklisted Server Event: ' ..event)
                        DropPlayer(source, Code_Server.KickMessageServerSide) 
                    end
                    if Code_Server.BlacklistedEventKick then
                        DropPlayer(source, Code_Server.KickMessageServerSide)
                    end
                end
            end)
        end
    end
end)

-- ANTI CLEAR TASKS
AddEventHandler("clearPedTasksEvent", function(sender, data)
    if Code_Server.AntiClearPedTasks then
        if IsPlayerAceAllowed(sender, 'code.bypass') then return end
        CancelEvent()
        BanPlayer(sender, 'Tried to Clear Task Events')
	    DropPlayer(sender, Code_Server.KickMessageServerSide)
    end
end)

-- ANTI REMOVE WEAPONS
AddEventHandler('removeWeaponEvent', function(sender, data)
    if Code_Server.AntiRemoveWeapon then
        if IsPlayerAceAllowed(sender, 'code.bypass') then return end
        CancelEvent()
        BanPlayer(sender, 'Tried to remove Weapon')
        DropPlayer(sender, Code_Server.KickMessageServerSide)
    end
end)

-- ANTI GIVE REMOVE WEAPONS
AddEventHandler('giveWeaponEvent', function(sender, data)
    if Code_Server.AntiGiveWeapon then
        if IsPlayerAceAllowed(sender, 'code.bypass') then return end
        CancelEvent()
        BanPlayer(sender, 'Tried to give Weapon')
        DropPlayer(sender, Code_Server.KickMessageServerSide) 
    end
end)

--CHECKWEAPONS
TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)


ESX.RegisterServerCallback("CodeShield:838327", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    cb(xPlayer.getLoadout())
end)

local resourceList = {}
local allResources = GetNumResources()
for i = 0, allResources, 1 do
    local resource_name = GetResourceByFindIndex(i)
    if resource_name and GetResourceState(resource_name) == "started" then
        table.insert(resourceList, resource_name)
    end
end


RegisterNetEvent("CodeShield:8346")
AddEventHandler("CodeShield:8346", function(getResource, clientEvents)
    local found = false
    for k, name in pairs(resourceList) do
        if getResource == name then
	    found = true
        end
    end
    if not found then
        if IsPlayerAceAllowed(sender, 'code.bypass') then return end
        BanPlayer(source, 'Tried to trigger Blacklisted Client Event: '..clientEvents)
        DropPlayer(source, Code_Server.KickMessageClientSide) 
    end
end)


---TRIGGER COUNTER
Data = {}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(Code_Server.TriggerCounterTimer)
		Data = {}
	end
end)

for event,limit in pairs(Code_Server.Counter) do
	RegisterServerEvent(event)
	AddEventHandler(event, function(...)
		local _source = source
		if Data[_source] then
			if Data[_source] > limit then
                DropPlayer(source, Code_Server.KickMessageServerSide) 
                BanPlayer(source, 'Trigger limiter detectet')
			else
				Data[_source] = Data[_source] + 1
			end
		else
			Data[_source] = 1
		end
	end)
end

--SECURED EVENTS
for k, v in pairs(Code_Server.SecuredJobEvents) do
	RegisterServerEvent(v.eventName)
	AddEventHandler(v.eventName, function(playerID)
		local src = source
		local xPlayer = ESX.GetPlayerFromId(source)
		local job = xPlayer.job.name
		local whitelist = v.job
		if job ~= whitelist then 
            if IsPlayerAceAllowed(sender, 'code.bypass') then return end
            BanPlayer(source, "Job locked event execute detectet | Event: " ..v.eventName.."")
            DropPlayer(source, Code_Server.KickMessageServerSide) 
		end
	end)
end

--TRIGGER LOGGER
for k, v in pairs(Code_Server.TriggerLogger) do
	RegisterServerEvent(v.eventName)
	AddEventHandler(v.eventName, function(playerID)
		local src = source
        local ids = ExtractIdentifiers(src);
        local playerIP = ids.ip;
        local playerSteam = ids.steam;
        local playerLicense = ids.license;
        local playerXbl = ids.xbl;
        local playerLive = ids.live;
        local playerDisc = ids.discord;
        local banData = {};
        if ip ~= nil and ip ~= "nil" and ip ~= "" then 
            banData['ip'] = tostring(ip);
        end
        if playerLicense ~= nil and playerLicense ~= "nil" and playerLicense ~= "" then 
            banData['license'] = tostring(playerLicense);
        end
        if playerSteam ~= nil and playerSteam ~= "nil" and playerSteam ~= "" then 
            banData['steam'] = tostring(playerSteam);
        end
        if playerXbl ~= nil and playerXbl ~= "nil" and playerXbl ~= "" then 
            banData['xbl'] = tostring(playerXbl);
        end
        if playerLive ~= nil and playerLive ~= "nil" and playerLive ~= "" then 
            banData['live'] = tostring(playerXbl);
        end
        if playerDisc ~= nil and playerDisc ~= "nil" and playerDisc ~= "" then 
            banData['discord'] = tostring(playerDisc);
        end
		local xPlayer = ESX.GetPlayerFromId(source)
		local job = xPlayer.job.name
        sendToDiscordLog("Simple AC - Trigger Logger", "Name: **" ..GetPlayerName(src).."**\n ID: **" ..src.. "**\n Event: **"..v.eventName.."**", 222)
	end)
end

---DISCORD LOGS 
function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
		live = "",
		fivem = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
			local test = string.gsub(id,"discord:","")
            identifiers.discord = test
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        elseif string.find(id, "fivem") then
            identifiers.fivem = id
        end
    end

    return identifiers
end

local DISCORD_IMAGE = ""
local DISCORD_NAME = "CodeShield - Trigger Logger"

function sendToDiscordLog(name, message, color)
    local connect = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["description"] = message,
              ["footer"] = {
                  ["text"] = "CodeShield", 
              },
          }
      }
    PerformHttpRequest(Code_Server.TriggerLoggerWebhook, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end

--ANTI TAZE
if Code_Server.AntiTazePlayer then
    AddEventHandler("weaponDamageEvent", function(sender, data)
            local xPlayer = ESX.GetPlayerFromId(sender)
            if data.weaponType == 911657153 then
                    if not Code_Server.TazeJobWhitelist[xPlayer.job.name] then
                        BanPlayer(sender, "Taze without permission detectet")
                        DropPlayer(sender, Code_Server.KickMessageServerSide) 
                    CancelEvent()
                return
            end
        end
    end)
end

--BACKDOOR STRING SEARCH    
function anticipher()
    runcipher(0)
end

complicatedresourced = {}
skippedresources = {}
infectedresourced = {}
local res = GetCurrentResourceName()
    function runcipher(source)
        count = 0
        skip = 0
          if source == 0 then
              for resources = 0, GetNumResources() - 1 do
                  local _resname = GetResourceByFindIndex(resources)
                    if string.find(_resname, "") then 
                      end
                  local num = GetNumResourceMetadata(_resname, 'server_script')
                  if num >  0 then
                      for i = 0, num-1 do
                          local file = GetResourceMetadata(_resname, 'server_script', i)
                          checkresource = LoadResourceFile(_resname, file)
                              if string.find(file, "*") then
                                      skip = skip + 1
                                      table.insert(complicatedresourced, {resource = _resname})
                                      scanfiles = scandir(GetResourcePath(string.gsub(_resname, '//', "/")))
                                      getfolders = getFolders(GetResourcePath(string.gsub(_resname, '//', "/")))
                                      resourcename = _resname
                                      for i,k in pairs(scanfiles) do
                                          if GetFileExtension(k) ~= nil then
                                              scaninfectedresourced = {}
                                              checkresource = readAll(GetResourcePath(resourcename) .. "/" .. k)
                                              if type(checkresource) ~= 'boolean' then
                                                  if checkresource ~= nil then
                                                      local name = "nicht gefunden"
                                                      local found = false
                                                      local stringfound = false
                                                      if string.find(checkresource, Code_Server.BackdoorString) then
                                                          stringfound = Code_Server.BackdoorString
                                                          name = "[CIPHER BACKDOOR]\nCheck 1"
                                                          found = true
                                                      end
                                              
                                                      if found then
                                                          table.insert(infectedresourced, {resource = resourcename .. '/' .. k, name = name, stringfound = stringfound})
                                                      end
                                                  end
                                              end
                                          end
                                      end
      
                              else
                                  if checkresource ~= nil and resourcename ~= 'monitor' then
                                      count = count + 1
                                      local name = "nicht gefunden"
                                      local found = false
                                      local stringfound = false
                                      if type(checkresource) ~= 'boolean' then
                                              if string.find(checkresource, Code_Server.BackdoorString) then
                                                  stringfound = Code_Server.BackdoorString
                                                  name = "[CIPHER BACKDOOR]\nCheck 1"
                                                  found = true
                                              end
                                              if found then
                                                  table.insert(infectedresourced, {resource = _resname .. '/' .. file, name = name, stringfound = stringfound})
                                              end
                                          end
                                  end
                          end
                      end
                  else
                      local file = GetResourceMetadata(_resname, 'server_script', 0)
                  end
              end
              THEMOTHERFUCKERIS("^0 [CODESHIELD] ^0Info: ^2Backdoor Scan will be start.")              
              Wait(3000)
              THEMOTHERFUCKERIS("^0 [CODESHIELD] ^0Info: ^2Backdoor Scan has finished.^0")
              Wait(1000)
      
      
              string2 = "^0[CODESHIELD] ^0Info: ^1Your server might be ^3infected"
              for i,k in pairs(infectedresourced) do
              string2 = string2 .. '\n^0 [CODESHIELD] ^0Info: ^1Backdoor found: ^3' .. k.stringfound .. '^1 | ^1In Resource: ^3' .. k.resource .. ""
              end
      
              string3 = ""
              for i,k in pairs(skippedresources) do
                  string3 = string3 .. '\n+ ' .. k.resource
              end
          
      
              if string2 ~= "" then
                  THEMOTHERFUCKERIS("^1", string2, "^0")
                  Wait(5000)
              end
        end
    end

function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    for filename in popen('dir "'..directory..'" /b'):lines() do
        i = i + 1
        t[i] = filename
    end
    return t
end

function getFolders(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('dir "'..directory..'" /b /ad')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end

function readAll(file)
    local f = io.open(file, "rb")
    if f then
        local content = f:read("*a")
        f:close()
        return content
    else
        return false
    end
end

function GetFileExtension(url)
    return url:match("^.+(%..+)$")
  end

