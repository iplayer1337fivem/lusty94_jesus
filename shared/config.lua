Config = {}

--
--██╗░░░░░██╗░░░██╗░██████╗████████╗██╗░░░██╗░█████╗░░░██╗██╗
--██║░░░░░██║░░░██║██╔════╝╚══██╔══╝╚██╗░██╔╝██╔══██╗░██╔╝██║
--██║░░░░░██║░░░██║╚█████╗░░░░██║░░░░╚████╔╝░╚██████║██╔╝░██║
--██║░░░░░██║░░░██║░╚═══██╗░░░██║░░░░░╚██╔╝░░░╚═══██║███████║
--███████╗╚██████╔╝██████╔╝░░░██║░░░░░░██║░░░░█████╔╝╚════██║
--╚══════╝░╚═════╝░╚═════╝░░░░╚═╝░░░░░░╚═╝░░░░╚════╝░░░░░░╚═╝


-- Thank you for downloading this script!

-- Below you can change multiple options to suit your server needs.

Config.DebugPoly = false -- displays boxzones




Config.Blips = {
    {
        useblip = true, -- enable blip church
        title = 'Church', -- blip name
        colour = 5, -- blip colour
        id = 409, -- blip id
        coords = vector3(-765.69, -25.2, 41.08), -- blip coords
        scale = 0.7, -- blip size
    },
}



Config.CoreSettings = {
    EventNames = {
        Stress = 'hud:server:RelieveStress', -- NAME OF HUD EVENT TO RELIEVE STRESS - DEFAULT EVENT NAME IS 'hud:server:RelieveStress'
    }, 
    Notify = {
        Type = 'ox', -- support for qb-core notify, okokNotify, mythic_notify, boii_ui notify and ox_lib notify
        --use 'qb' for default qb-core notify
        --use 'okok' for okokNotify
        --use 'mythic' for mythic_notify
        --use 'boii' for boii_ui notify
        --use 'ox' for ox_lib notify
    },
    Target = {
        Type = 'ox' -- support for qb-target and ox_target
        --use 'qb' for qb-target
        --use 'ox' for ox_target
    },
    Inventory = { --support for qb-inventory and ox_inventory
        Type = 'ox',
        --use 'qb' for qb-inventory
        --use 'ox' for ox_inventory
    },  
    Sound = {
        UseInteractSound = true, -- set to true to play sound when performing certain actions 
        --[[ REQUIRES INTERACT-SOUND AND MUST BE STARTED BEFORE THIS RESOURCE TO WORK PROPERLY]]
        --[[ MAKE SURE YOU HAVE PUT THE .OGG FILES INSIDE OF [SOUNDS] IN YOUR INTERACT-SOUND/CLIENT/HTML/SOUNDS FOLDER TO WORK PROPERLY ]]

        -- [[  IF YOU CHANGE ANY SOUNDS BELOW THEN MAKE SURE THE .OGG FILE IS LOCATED IN YOUR INTERACT-SOUND/CLIENT/HTML/SOUNDS TO WORK PROPERLY ]]

        EnterChurch = 'DoorOpen', -- sound to be played when entering church
        ExitChurch = 'DoorClose', -- sound to be played when exiting church
        LordsPrayer = 'LordsPrayer', -- sound to be played when exiting church
    },   
    Timers = {
        PrayToJesus = math.random(10000,20000), -- time in MS to pray to Jesus
    },
    Chances = {
        GoodTrip = 75, -- chance to have a good trip, if not then will have a bad trip
        Teleport = 75, -- chance to teleport the player during a bad trip
    },
    Effects = {
        MinStress = 5, -- minimum stress level required to speak to Jesus
        AddHealth = true, -- set to true to add health to a player from a good trip
        HealthAmount = math.random(10,20), --how much health does the player gain?
        AddArmour = true, -- set to true to add armour to a player from a good trip
        ArmourAmount = math.random(10,20), --how much armour does the player gain?
        RemoveStressAmount = math.random(10,20), --how much stress relief does the player get?
        TeleportLocation = vector4(2144.45, -2599.88, 5.08, 79.88), -- teleport location for bad trips        
    },
}

Config.Props = { -- props spawned inside the church
    {
        Model = 'prop_gravestones_09a', -- prop model
        Coords = vec4(-775.63, 7.85, 41.56, 166.1), -- prop coords
    },
    {
        Model = 'prop_gravestones_09a', -- prop model
        Coords = vec4(-785.5, -6.43, 41.09, 257.27), -- prop coords
    },
}

Config.ChurchZone = { -- lib.zone inside the church to play sound if enabled
    Coords = vec3(-774.25, -10.11, 41.09), -- coords
    Size = vec3(20, 30, 20), -- size of zone
    Heading = 24.98, -- heading of zone --vec4(-774.25, -10.11, 41.09, 24.98)
}



Config.InteractionLocations = {
    { 
        Name = 'church1', -- name must be unique
        Coords = vector3(-767.09, -23.21, 41.08), -- coords for boxzone to enter church
        Size = vec3(1.0,1.0,2.0), -- size of boxzone for ox_target only
        Width = 1.0, -- width of boxzone
        Height = 1.0, -- height of boxzone
        Heading = 28.5, -- heading of boxzone
        MinZ = 40.0, -- minz of boxzone
        MaxZ = 42.0, -- maxz of boxzone
        Icon = 'fa-solid fa-church', -- target icon
        Label = 'Visit Church', -- target label
        Event = 'lusty94_jesus:client:enterChurch', -- target event
        Distance = 1.5, -- target distance
        Item = nil, -- required item to target set to nil for none [ if wanting to add an item maybe do a church door key and then add it to a loot pool somewhere likes bins or fishing or similair]
        Job = nil, -- required job to target set to nil for none [ if wanting to add a job maybe do whitelist jobs like police or ambulance?]
        JesusPedModel = 'u_m_m_jesus_01', -- jesus ped model name
        PrayingIcon = 'fa-solid fa-hands-praying', -- target icon for jesus ped
        PrayingLabel = 'Pray to Jesus', -- target label for jesus ped
        ExitIcon = 'fa-solid fa-sign-out', -- target icon for exit church
        ExitLabel = 'Exit Church', -- target label for exit church
        JesusDistance = 2.0, -- target distance for jesus ped
        PlayerSpawn = vec4(-767.62, -22.39, 41.19, 12.45), -- player teleport location when entering church
        JesusSpawn = vec4(-781.48, 1.99, 41.56, 211.55), -- jesus ped spawn location
    },
}


Config.Animations = {
    Prayer = {
        AnimDict = "timetable@amanda@ig_4",
        Anim = "ig_4_base",
        Flag = 49,
    },
    Effects = {
        AnimDict = 'amb@world_human_vehicle_mechanic@male@base',
        Anim = 'base',
        Flags = 41,
    },
}


Config.Language = {
    ProgressBar = {
        PrayToJesus = 'Praying to Jesus',
    },
    Notifications = {
        BusyName = 'You are already doing something!',
        CancelledName = 'Action cancelled!',
        FailedName = 'Action failed!',
        CantCarryName = 'You cant carry anymore of that!',
        ChurchEnterName = 'Welcome to the Church',
        ChurchLeaveName = 'Thanks for visiting, hope to see you again soon!',
        NotEnoughName = 'you dont have enough cash to donate!',
        DonationRequirementName = 'You must make a donation to the church for Jesus to help you!',
        DonationName = 'Thank you for your donation to the church, it is much appreciated!',
        GoodTripName = 'Aww it seems like you are  a little bit stressed, perhaps a prayer might help?',
        BadTripName = 'Life seems pretty tough for you right now, Jesus will have to dive deep into your soul to heal you!',
        NotStressedName = 'You are not stressed enough to get relief from Jesus, your stress levels must be at: '..Config.CoreSettings.Effects.MinStress..' or above!',
        FeelingBetterName = 'Feeling much better!',
        SoulCleansedName = 'Your soul has been cleansed by Jesus!',
    },
}