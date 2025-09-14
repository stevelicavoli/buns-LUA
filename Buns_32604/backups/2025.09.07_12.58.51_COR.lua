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
    ['Precast'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Axe Grip',
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
    ['Tp'] = {
        Main = 'Vulcan\'s Staff',
        Sub = 'Axe Grip',
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
    ['Preshot'] = {
        Main = 'Vulcan\'s Staff',
        Sub = 'Axe Grip',
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
    ['Phantomroll'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Axe Grip',
        Range = 'Gun of Trials',
        Ammo = 'Bullet',
        Head = 'Comm. Tricorne',
        Neck = 'Peacock Amulet',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Corsair\'s Frac',
        Hands = 'Commodore Gants',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Precise Belt',
        Legs = 'Corsair\'s Culottes',
        Feet = 'Corsair\'s Bottes',
    },
    ['Midshot'] = {
        Main = 'Vulcan\'s Staff',
        Sub = 'Axe Grip',
        Range = 'Gun of Trials',
        Ammo = 'Bullet',
        Head = 'Comm. Tricorne',
        Neck = 'Peacock Amulet',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Corsair\'s Frac',
        Hands = 'Commodore Gants',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Precise Belt',
        Legs = 'Dusk Trousers',
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
    local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if string.match(action.Name, ' Shot') then
        if (action.Name == 'Light Shot') or (action.Name == 'Dark Shot') then
            gFunc.EquipSet(sets.QuickDrawAccuracy);
        else
            gFunc.EquipSet(sets.QuickDrawDamage);
        end
    elseif (action.Name == 'Wild Card') then
        gFunc.Equip('Feet', 'Lanun Bottes +3');
    elseif (action.Name == 'Random Deal') then
        gFunc.Equip('Body', 'Lanun Frac +3');
    else
        gFunc.EquipSet(sets.PDT);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.Preshot)

end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.Midshot)
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.Name == 'Savage Blade') then
        gFunc.EquipSet(sets.SavageBlade);
    elseif (action.Name == 'Sanguine Blade') then
        gFunc.EquipSet(sets.SanguineBlade);
    elseif (action.Name == 'Spirits Within') then
        gFunc.EquipSet(sets.SpiritsWithin);
    else
        gFunc.EquipSet(sets.DefaultWeaponskill);
    end
end

return profile;