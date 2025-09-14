local profile = {}

local fastCastValue = 0.00 -- 0% from gear

local sets = {
    ['Idle'] = {
        Main = 'Berserker\'s Axe',
        Sub = 'Pole Grip',
        Ammo = 'Bomb Core',
        Head = 'Walahra Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Minuet Earring',
        Ear2 = 'Assault Earring',
        Body = 'Adaman Hauberk',
        Hands = 'Warrior\'s Mufflers',
        Ring1 = 'Flame Ring',
        Ring2 = 'Warp Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Velocious Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Suzaku\'s Sune-Ate',
    },
    IdleALT = {},
    Resting = {},
    Town = {},
    Movement = {},

    DT = {},
    MDT = { -- Shell IV provides 23% MDT
    },
    FireRes = {},
    IceRes = {},
    LightningRes = {},
    EarthRes = {},
    WindRes = {},
    WaterRes = {},
    Evasion = {},

    Precast = {},
    SIRD = {
    },
    Haste = { -- Used for Utsusemi cooldown
    },

    LockSet1 = {},
    LockSet2 = {},
    LockSet3 = {},

    ['TP_LowAcc'] = {
        Main = 'Berserker\'s Axe',
        Sub = 'Pole Grip',
        Ammo = 'Bomb Core',
        Head = 'Walahra Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Minuet Earring',
        Ear2 = 'Assault Earring',
        Body = 'Adaman Hauberk',
        Hands = 'Dusk Gloves',
        Ring1 = 'Flame Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Velocious Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Unicorn Leggings',
    },
    ['TP_HighAcc'] = {
        Main = 'Byakko\'s Axe',
        Sub = 'Pole Grip',
        Ammo = 'Bomb Core',
        Head = 'Walahra Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Minuet Earring',
        Ear2 = 'Assault Earring',
        Body = 'Adaman Hauberk',
        Hands = 'Dusk Gloves',
        Ring1 = 'Flame Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Velocious Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Unicorn Leggings',
    },

    TP_Aggressor = {},

    ['WS'] = {
        Main = 'Berserker\'s Axe',
        Sub = 'Pole Grip',
        Ammo = 'Bomb Core',
        Head = 'Hecatomb Cap',
        Neck = 'Peacock Amulet',
        Ear1 = 'Minuet Earring',
        Ear2 = 'Assault Earring',
        Body = 'Adaman Hauberk',
        Hands = 'Hecatomb Mittens',
        Ring1 = 'Flame Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hct. Leggings',
    },
    WS_HighAcc = {},

    Warcry = {},
    Provoke = {},

    DW = {
        Ear1 = 'Stealth Earring',
    },
    SAM = {
        Ear1 = 'Attila\'s Earring',
    },


}
profile.Sets = sets

profile.SetMacroBook = function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3')
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1')
end

gcmelee = gFunc.LoadFile('common\\gcmelee.lua')

profile.HandleAbility = function()
    local action = gData.GetAction()
    if (action.Name == 'Warcry') then
        gFunc.EquipSet(sets.Warcry)
    elseif (action.Name == 'Provoke') then
        gFunc.EquipSet(sets.Provoke)
    end
end

profile.HandleItem = function()
    gcinclude.DoItem()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    gcmelee.DoWS()
end

profile.OnLoad = function()
    gcinclude.SetAlias(T{'dw'})
    gcdisplay.CreateToggle('DW', false)
    gcmelee.Load()
    profile.SetMacroBook()
end

profile.OnUnload = function()
    gcmelee.Unload()
    gcinclude.ClearAlias(T{'dw'})
end

profile.HandleCommand = function(args)
    if (args[1] == 'dw') then
        gcdisplay.AdvanceToggle('DW')
        gcinclude.Message('DW', gcdisplay.GetToggle('DW'))
    else
        gcmelee.DoCommands(args)
    end

    if (args[1] == 'horizonmode') then
        profile.HandleDefault()
    end
end

profile.HandleDefault = function()
    gcmelee.DoDefault()

    local player = gData.GetPlayer()
    if (player.SubJob == 'SAM') then
        gFunc.EquipSet(sets.SAM)
    end
    if (gcdisplay.GetToggle('DW') and player.Status == 'Engaged') then
        gFunc.EquipSet(sets.DW)
    end

    local aggressor = gData.GetBuffCount('Aggressor')
    if (aggressor == 1 and gcdisplay.IdleSet == 'LowAcc') then
        gFunc.EquipSet(sets.TP_Aggressor)
    end

    gcmelee.DoDefaultOverride()
    gFunc.EquipSet(gcinclude.BuildLockableSet(gData.GetEquipment()))
end

profile.HandlePrecast = function()
    gcmelee.DoPrecast(fastCastValue)
end

profile.HandleMidcast = function()
    gcmelee.DoMidcast(sets)
end

return profile
