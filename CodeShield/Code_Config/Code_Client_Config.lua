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

Code_Client = {}

--MAIN SETTINGS
Code_Client.DetectTimer = 1000
Code_Client.AntiResourceStop = false

--VEHICLE SETTINGS
Code_Client.AntiBlacklistedVehicle = true
Code_Client.AntiVehicleSpeedHack = true
Code_Client.VehicleBan = true
Code_Client.VehicleBlackList = {
    "RHINO",
    "JET"
}

--ARMOR SETTINGS
Code_Client.AntiArmorHack = true
Code_Client.MaxArmor = 99

--VISION SETTINGS
Code_Client.AntiVision = true

--INVISIBLE SETTINGS
Code_Client.AntiInvisible = true
Code_Client.AntiInvisibleTimer = 15000 --Please enter the time how long it takes until you are joined on the server and visible because otherwise you will be banned unjustly

--SPEED SETTINGS
Code_Client.AntiSpeedHack = false 
Code_Client.SpeedMax = 80

--WEAPON SETTINGS
Code_Client.AntiWeaponPickup = true 
Code_Client.AntiDamageModifier = true 
Code_Client.AntiWeaponHack = false
Code_Client.AntiBlacklistedWeapons = false
Code_Client.BlacklistedWeaponsBan = false
Code_Client.BlacklistedWeaponsList = { 
'WEAPON_RPG',
'WEAPON_MINIGUN'
}

--BLIPS SETTINGS
Code_Client.AntiBlips = false 

--PLAYER SETTINGS
Code_Client.AntiSpectate = true 
Code_Client.AntiNoclip = true --| NEW 1.2 Update
Code_Client.PlayerProtection = true
Code_Client.AntiGodmode = true
Code_Client.AntiSuperJump = true --| NEW 1.1 Update

--EVENT SETTINGS
Code_Client.AntiBlacklistedClientEvents = {
    "Your:Event"
}

