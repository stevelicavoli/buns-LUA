local profile = {};
local sets = {
    ['Town'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Axe Grip',
        Range = 'Gun of Trials',
        Ammo = 'Bullet',
        Head = 'Comm. Tricorne',
        Neck = 'Peacock Amulet',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Kingdom Aketon',
        Hands = 'Dusk Gloves',
        Ring1 = 'Warp Ring',
        Ring2 = 'Chariot Band',
        Back = 'Amemet Mantle +1',
        Waist = 'Sonic Belt',
        Legs = 'Corsair\'s Culottes',
        Feet = 'Dusk Ledelsens',
    },
    ['Idle'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Axe Grip',
        Range = 'Gun of Trials',
        Ammo = 'Bullet',
        Head = 'Comm. Tricorne',
        Neck = 'Peacock Amulet',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Kingdom Aketon',
        Hands = 'Commodore Gants',
        Ring1 = 'Warp Ring',
        Ring2 = 'Chariot Band',
        Back = 'Amemet Mantle +1',
        Waist = 'Precise Belt',
        Legs = 'Corsair\'s Culottes',
        Feet = 'Corsair\'s Bottes',
    },
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;