local profile = {};
local Towns = T{
    'Tavnazian Safehold','Al Zahbi','Aht Urhgan Whitegate','Nashmau',
    'Southern San d\'Oria [S]','Bastok Markets [S]','Windurst Waters [S]',
    'San d\'Oria-Jeuno Airship','Bastok-Jeuno Airship','Windurst-Jeuno Airship','Kazham-Jeuno Airship',
    'Southern San d\'Oria','Northern San d\'Oria','Port San d\'Oria','Chateau d\'Oraguille',
    'Bastok Mines','Bastok Markets','Port Bastok','Metalworks',
    'Windurst Waters','Windurst Walls','Port Windurst','Windurst Woods','Heavens Tower',
    'Ru\'Lude Gardens','Upper Jeuno','Lower Jeuno','Port Jeuno',
    'Rabao','Selbina','Mhaura','Kazham','Norg',
    'Mog Garden','Celennia Memorial Library','Western Adoulin','Eastern Adoulin'
};
local Sandy = T{ 'Southern San d\'Oria [S]','Southern San d\'Oria','Northern San d\'Oria','Port San d\'Oria','Chateau d\'Oraguille' };
local Bastok = T{ 'Bastok Markets [S]','Bastok Mines','Bastok Markets','Port Bastok','Metalworks' };
local Windy = T{ 'Windurst Waters [S]','Windurst Waters','Windurst Walls','Port Windurst','Windurst Woods','Heavens Tower' };
local sets = {
    ['Town'] = {
        Main = 'Vulcan\'s Staff',
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
    ['Idle'] = {
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
        Ring1 = 'Warp Ring',
        Ring2 = 'Chariot Band',
        Back = 'Amemet Mantle +1',
        Waist = 'Precise Belt',
        Legs = 'Corsair\'s Culottes',
        Feet = 'Corsair\'s Bottes',
    },
    ['Precast'] = {
        Main = 'Vulcan\'s Staff',
        Sub = 'Axe Grip',
        Head = 'Comm. Tricorne',
        Neck = 'Peacock Amulet',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Corsair\'s Frac',
        Hands = 'Dusk Gloves',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Rajas Ring',
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
        Body = 'Corsair\'s Frac',
        Hands = 'Dusk Gloves',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Rajas Ring',
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
        Body = 'Corsair\'s Frac',
        Hands = 'Dusk Gloves',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Sonic Belt',
        Legs = 'Corsair\'s Culottes',
        Feet = 'Dusk Ledelsens',
    },
    ['Phantomroll'] = {
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
    ['Quickdrawaccuracy'] = {
        Main = 'Vulcan\'s Staff',
        Sub = 'Axe Grip',
        Range = 'Gun of Trials',
        Ammo = 'Bullet',
        Head = 'Corsair\'s Tricorne',
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
    ['Quickdrawdamage'] = {
        Main = 'Vulcan\'s Staff',
        Sub = 'Axe Grip',
        Range = 'Gun of Trials',
        Ammo = 'Bullet',
        Head = 'Corsair\'s Tricorne',
        Neck = 'Peacock Amulet',
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Corsair\'s Frac',
        Hands = 'Commodore Gants',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Cerb. Mantle +1',
        Waist = 'Precise Belt',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'War Boots',
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
    local environment = gData.GetEnvironment();
    local ducal_aketon = true;
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp);
    else
        gFunc.EquipSet(sets.Idle);
    end

    if (environment.Area ~= nil) and (Towns:contains(environment.Area)) then
        gFunc.EquipSet(sets.Town)
        if (ducal_aketon == true) then
            gFunc.Equip('Body', 'Ducal Aketon')
        end
    end
    if (environment.Area ~= nil) and (Sandy:contains(environment.Area) and kingdom_aketon == true) then 
        gFunc.Equip('Body', 'Kingdom Aketon')
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if string.match(action.Name, ' Shot') then
        if (action.Name == 'Light Shot') or (action.Name == 'Dark Shot') then
            gFunc.EquipSet(sets.Quickdrawaccuracy);
        else
            gFunc.EquipSet(sets.Quickdrawdamage);
        end
    elseif (action.Name == 'Random Deal') then
        gFunc.Equip('Body', 'Lanun Frac +3');
    elseif (string.match(action.Name, ' Roll')) then
        gFunc.EquipSet(sets.Phantomroll);
    else
        gFunc.EquipSet(sets.Idle);
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
    if (action.Name == 'Slug Shot') then
        gFunc.EquipSet(sets.Precast);
    --elseif (action.Name == 'Sanguine Blade') then
    --    gFunc.EquipSet(sets.SanguineBlade);
    --else (action.Name == 'Spirits Within') then
    --    gFunc.EquipSet(sets.SpiritsWithin);
    end
end

return profile;