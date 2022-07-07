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

Code_Server = {}

--MAIN PROTECTION
Code_Server.DiscordWebhook = ""
Code_Server.ServerName = ""
Code_Server.BannMessage = "Not With me"
Code_Server.Discord = "Your Discord"
Code_Server.KickMessageServerSide = "dude dont cheat on my server"
Code_Server.KickMessageClientSide = "dude dont cheat on my server"
Code_Server.BannedPlayerJoinConsoleLog = true
Code_Server.DetectTimer = 20000 --dont touch it when you have no idea what you are doing 

--BACKDOOR SCAN 
Code_Server.AntiBackdoor = false
Code_Server.BackdoorString = 'Cipher' --|There please always enter something because otherwise it leads to errors

--PARTICLE PROTECTION
Code_Server.AntiSpamParticle = true
Code_Server.ParticleSpawnLimit = 0
Code_Server.ClearParticleAfterDetect = true
Code_Server.ParticleKick = true
Code_Server.ParticleBan = true

--PED PROTECTION
Code_Server.AntiSpamPed = true
Code_Server.DeletePedsAfterDetect = true
Code_Server.PedSpawnLimit = 5
Code_Server.PedKick = true
Code_Server.PedBan = true

--VEHICLE PROTECTION
Code_Server.AntiSpamVehicle = true
Code_Server.DeleteVehiclesAfterDetect = true
Code_Server.VehicleSpawnLimit = 2
Code_Server.VehicleKick = true
Code_Server.VehicleBan = true


--PROP PROTECTION
Code_Server.AntiSpawnProp = true
Code_Server.DeletePropsAfterDetect = true
Code_Server.PropKick = false
Code_Server.PropBan = false
Code_Server.PropWhitelist = {
    "prop_gas_pump_1a",
    "prop_gas_pump_1b"
}

--EXPLOSION PROTECTION
Code_Server.AntiExplosion = false 
Code_Server.ExplosionKick = false 
Code_Server.ExplosionBan = false
Code_Server.BlacklistedExplosions = { 
    1,
    2, 
    4, 
    5,
    25, 
    32, 
    33, 
    35, 
    36, 
    37, 
    38
}

--USERNAME PROTECTION
Code_Server.AntiBlacklistedNames = true
Code_Server.KickMessageBlacklistedUserNames = 'Rename Your Steam name'
Code_Server.BlacklistedUsernames = {
    "Salzsquad", "<Script", "<", ">", "MODDER"
}

--EVENT PROTECTION
Code_Server.AntiServerBlacklistedEvents = true
Code_Server.BlacklistedEventBan = true
Code_Server.BlacklistedEventKick = false
Code_Server.BlacklistedEventsList = {
	"Your:Event"
}

--PLAYER WEAPON PROTECTION
Code_Server.AntiGiveWeapon = true 
Code_Server.AntiRemoveWeapon = true

--ANTI CLEAR TASKS
Code_Server.AntiClearPedTasks = true 

--TRIGGER PROTECTION 
Code_Server.TriggerCounterTimer = 5000
Code_Server.Counter = {
    ["esx_policejob"] = 3,
    ["Your:Event"] = 3,
}

--SECURED EVENTS 
Code_Server.SecuredJobEvents = {
    { eventName = "esx_billing:sendBill", job = "police", "sheriff", "fbi", "ambulance",},
    { eventName = "Your:Event", job = "police", "sheriff", "fbi", "ambulance" ,},
}

--TRIGGER LOGGER 
Code_Server.TriggerLoggerWebhook = ""
Code_Server.TriggerLogger = {
    { eventName = "esx_ambulancejob:revive",},
    { eventName = "Your:Event",},
}

--ANTI TAZE PLAYER 
Code_Server.AntiTazePlayer = true 
Code_Server.TazeJobWhitelist = {
    ["police"] = true,
    ["ambulance"] = true,
}

