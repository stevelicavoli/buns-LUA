local fenrirs_earring = true -- Not used for RNG at all
local fenrirs_earring_slot = 'Ear2'

--[[
--------------------------------
Everything below can be ignored.
--------------------------------
]]

gcinclude = gFunc.LoadFile('common\\gcincluderag.lua')
conquest = gFunc.LoadFile('common\\conquest.lua') 

local flame_gorget = 'Flame Gorget'
local soil_gorget = 'Soil Gorget'
local aqua_gorget = 'Aqua Gorget'
local breeze_gorget = 'Breeze Gorget'
local snow_gorget = 'Snow Gorget'
local thunder_gorget = 'Thunder Gorget'
local light_gorget = 'Light Gorget'
local shadow_gorget = 'Shadow Gorget'

local flameGorgetWS = {
    ['Arching Arrow']=true, ['Ascetic\'s Fury']=true, ['Asuran Fists']=true, ['Atonement']=true,
    ['Blade: Shun']=true, ['Burning Blade']=true, ['Decimation']=true, ['Detonator']=true,
    ['Drakesbane']=true, ['Dulling Arrow']=true, ['Empyreal Arrow']=true, ['Final Heaven']=true,
    ['Flaming Arrow']=true, ['Full Swing']=true, ['Garland of Bliss']=true, ['Heavy Shot']=true,
    ['Hexa Strike']=true, ['Hot Shot']=true, ['Insurgency']=true, ['Knights of Round']=true,
    ['Last Stand']=true, ['Mandalic Stab']=true, ['Mistral Axe']=true, ['Metatron Torment']=true,
    ['Realmrazer']=true, ['Red Lotus Blade']=true, ['Scourge']=true, ['Shijin Spiral']=true,
    ['Sniper Shot']=true, ['Spinning Attack']=true, ['Spinning Axe']=true, ['Stringing Pummel']=true,
    ['Tachi: Kagero']=true, ['Tachi: Kasha']=true, ['Upheaval']=true, ['Wheeling Thrust']=true
}
local soilGorgetWS = {
    ['Aeolian Edge']=true, ['Asuran Fists']=true, ['Avalanche Axe']=true, ['Blade: Ku']=true,
    ['Blade: Retsu']=true, ['Blade: Ten']=true, ['Calamity']=true, ['Catastrophe']=true,
    ['Crescent Moon']=true, ['Dancing Edge']=true, ['Entropy']=true, ['Evisceration']=true,
    ['Exenterator']=true, ['Expiacion']=true, ['Fast Blade']=true, ['Hard Slash']=true,
    ['Impulse Drive']=true, ['Iron Tempest']=true, ['King\'s Justice']=true, ['Leaden Salute']=true,
    ['Mercy Stroke']=true, ['Nightmare Scythe']=true, ['Omniscience']=true, ['Primal Rend']=true,
    ['Pyrrhic Kleos']=true, ['Rampage']=true, ['Requiescat']=true, ['Resolution']=true,
    ['Retribution']=true, ['Savage Blade']=true, ['Seraph Blade']=true, ['Shattersoul']=true,
    ['Shining Blade']=true, ['Sickle Moon']=true, ['Slice']=true, ['Spinning Axe']=true,
    ['Spinning Scythe']=true, ['Spiral Hell']=true, ['Stardiver']=true, ['Stringing Pummel']=true,
    ['Sturmwind']=true, ['Swift Blade']=true, ['Tachi: Enpi']=true, ['Tachi: Jinpu']=true,
    ['Tachi: Rana']=true, ['Trueflight']=true, ['Viper Bite']=true, ['Vorpal Blade']=true,
    ['Vorpal Scythe']=true, ['Wasp Sting']=true
}
local aquaGorgetWS = {
    ['Atonement']=true, ['Blade: Teki']=true, ['Brainshaker']=true, ['Circle Blade']=true,
    ['Cross Reaper']=true, ['Dark Harvest']=true, ['Entropy']=true, ['Quietus']=true,
    ['Death Blossom']=true, ['Decimation']=true, ['Expiacion']=true, ['Full Break']=true,
    ['Garland of Bliss']=true, ['Gate of Tartarus']=true, ['Geirskogul']=true, ['Ground Strike']=true,
    ['Last Stand']=true, ['Mordant Rime']=true, ['Namas Arrow']=true, ['Piercing Arrow']=true,
    ['Pyrrhic Kleos']=true, ['Rudra\'s Storm']=true, ['Primal Rend']=true, ['Raging Rush']=true,
    ['Retribution']=true, ['Ruinator']=true, ['Shadow of Death']=true, ['Shadowstitch']=true,
    ['Shockwave']=true, ['Shoulder Tackle']=true, ['Sidewinder']=true, ['Skullbreaker']=true,
    ['Slug Shot']=true, ['Smash Axe']=true, ['Spinning Scythe']=true, ['Spiral Hell']=true,
    ['Split Shot']=true, ['Starburst']=true, ['Steel Cyclone']=true, ['Sturmwind']=true,
    ['Sunburst']=true, ['Tachi: Gekko']=true, ['Tachi: Koki']=true, ['Vidohunir']=true,
    ['Vorpal Thrust']=true
}
local breezeGorgetWS = {
    ['Aeolian Edge']=true, ['Backhand Blow']=true, ['Black Halo']=true, ['Blade: Jin']=true,
    ['Blade: Kamu']=true, ['Blade: Metsu']=true, ['Blade: To']=true, ['Camlann\'s Torment']=true,
    ['Coronach']=true, ['Cyclone']=true, ['Dancing Edge']=true, ['Death Blossom']=true,
    ['Dragon Kick']=true, ['Earth Crusher']=true, ['Exenterator']=true, ['Freezebite']=true,
    ['Gale Axe']=true, ['Ground Strike']=true, ['Gust Slash']=true, ['King\'s Justice']=true,
    ['Mordant Rime']=true, ['Raging Axe']=true, ['Randgrith']=true, ['Red Lotus Blade']=true,
    ['Resolution']=true, ['Ruinator']=true, ['Savage Blade']=true, ['Shark Bite']=true,
    ['Shell Crusher']=true, ['Sidewinder']=true, ['Slug Shot']=true, ['Spinning Slash']=true,
    ['Steel Cyclone']=true, ['Tachi: Jinpu']=true, ['Tachi: Kaiten']=true, ['Tachi: Shoha']=true,
    ['Tachi: Yukikaze']=true, ['Tornado Kick']=true, ['Trueflight']=true, ['True Strike']=true,
    ['Victory Smite']=true, ['Vidohunir']=true
}
local snowGorgetWS = {
    ['Blade: To']=true, ['Blast Arrow']=true, ['Blast Shot']=true, ['Cross Reaper']=true,
    ['Death Blossom']=true, ['Expiacion']=true, ['Freezebite']=true, ['Frostbite']=true,
    ['Full Break']=true, ['Gate of Tartarus']=true, ['Geirskogul']=true, ['Ground Strike']=true,
    ['Guillotine']=true, ['Quietus']=true, ['Impulse Drive']=true, ['Mordant Rime']=true,
    ['Namas Arrow']=true, ['Piercing Arrow']=true, ['Pyrrhic Kleos']=true, ['Rudra\'s Storm']=true,
    ['Ruinator']=true, ['Raging Rush']=true, ['Shadow of Death']=true, ['Shattersoul']=true,
    ['Skullbreaker']=true, ['Smash Axe']=true, ['Spiral Hell']=true, ['Steel Cyclone']=true,
    ['Tachi: Gekko']=true, ['Tachi: Hobaku']=true, ['Tachi: Rana']=true, ['Tachi: Yukikaze']=true,
    ['Tornado Kick']=true, ['Vidohunir']=true
}
local thunderGorgetWS = {
    ['Aeolian Edge']=true, ['Apex Arrow']=true, ['Armor Break']=true, ['Avalanche Axe']=true,
    ['Black Halo']=true, ['Blade: Chi']=true, ['Blade: Jin']=true, ['Blade: Kamu']=true,
    ['Blade: Shun']=true, ['Calamity']=true, ['Camlann\'s Torment']=true, ['Circle Blade']=true,
    ['Combo']=true, ['Cyclone']=true, ['Death Blossom']=true, ['Dragon Kick']=true,
    ['Earth Crusher']=true, ['Exenterator']=true, ['Flat Blade']=true, ['Full Swing']=true,
    ['Ground Strike']=true, ['Heavy Swing']=true, ['Howling Fist']=true, ['Judgment']=true,
    ['King\'s Justice']=true, ['Leg Sweep']=true, ['Mordant Rime']=true, ['Raging Axe']=true,
    ['Raging Fists']=true, ['Raiden Thrust']=true, ['Realmrazer']=true, ['Resolution']=true,
    ['Rock Crusher']=true, ['Savage Blade']=true, ['Seraph Strike']=true, ['Shark Bite']=true,
    ['Shield Break']=true, ['Shining Strike']=true, ['Shoulder Tackle']=true, ['Sickle Moon']=true,
    ['Skewer']=true, ['Spinning Attack']=true, ['Spinning Axe']=true, ['Spinning Slash']=true,
    ['Tachi: Goten']=true, ['Tachi: Koki']=true, ['Tachi: Shoha']=true, ['Thunder Thrust']=true,
    ['Tornado Kick']=true, ['Trueflight']=true, ['True Strike']=true, ['Victory Smite']=true,
    ['Vidohunir']=true, ['Vorpal Blade']=true, ['Weapon Break']=true
}
local lightGorgetWS = {
    ['Apex Arrow']=true, ['Arching Arrow']=true, ['Ascetic\'s Fury']=true, ['Atonement']=true,
    ['Blade: Chi']=true, ['Blade: Ku']=true, ['Blade: Rin']=true, ['Blade: Shun']=true,
    ['Blast Arrow']=true, ['Blast Shot']=true, ['Camlann\'s Torment']=true, ['Decimation']=true,
    ['Detonator']=true, ['Double Thrust']=true, ['Drakesbane']=true, ['Dulling Arrow']=true,
    ['Empyreal Arrow']=true, ['Evisceration']=true, ['Final Heaven']=true, ['Flaming Arrow']=true,
    ['Garland of Bliss']=true, ['Heavy Shot']=true, ['Hexa Strike']=true, ['Hot Shot']=true,
    ['Howling Fist']=true, ['Insurgency']=true, ['Knights of Round']=true, ['Leaden Salute']=true,
    ['Last Stand']=true, ['Mandalic Stab']=true, ['Metatron Torment']=true, ['Mistral Axe']=true,
    ['Omniscience']=true, ['Piercing Arrow']=true, ['Power Slash']=true, ['Realmrazer']=true,
    ['Raiden Thrust']=true, ['Scourge']=true, ['Shijin Spiral']=true, ['Sidewinder']=true,
    ['Skewer']=true, ['Slug Shot']=true, ['Sniper Shot']=true, ['Split Shot']=true,
    ['Tachi: Enpi']=true, ['Tachi: Goten']=true, ['Tachi: Kasha']=true, ['Thunder Thrust']=true,
    ['Victory Smite']=true, ['Upheaval']=true, ['Vorpal Scythe']=true, ['Vorpal Thrust']=true,
    ['Wheeling Thrust']=true
}
local shadowGorgetWS = {
    ['Asuran Fists']=true, ['Black Halo']=true, ['Blade: Ei']=true, ['Blade: Hi']=true,
    ['Blade: Kamu']=true, ['Blade: Ku']=true, ['Blade: Ten']=true, ['Blade: Metsu']=true,
    ['Catastrophe']=true, ['Quietus']=true, ['Entropy']=true, ['Evisceration']=true,
    ['Impulse Drive']=true, ['Insurgency']=true, ['Keen Edge']=true, ['Leaden Salute']=true,
    ['Mandalic Stab']=true, ['Mercy Stroke']=true, ['Requiescat']=true, ['Rudra\'s Storm']=true,
    ['Nightmare Scythe']=true, ['Omniscience']=true, ['One Inch Punch']=true, ['Penta Thrust']=true,
    ['Primal Rend']=true, ['Retribution']=true, ['Shattersoul']=true, ['Starburst']=true,
    ['Stringing Pummel']=true, ['Sunburst']=true, ['Stardiver']=true, ['Swift Blade']=true,
    ['Tachi: Kasha']=true, ['Tachi: Rana']=true, ['Tachi: Shoha']=true, ['Upheaval']=true
}

local gcmelee = {}

local isDPS = true
local lag = false

local TpVariantTable = {
    [1] = 'LowAcc',
    [2] = 'HighAcc',
}

local tp_variant = 1

local lastIdleSetBeforeEngaged = ''

local SurvivalSpells = T{ 'Utsusemi: Ichi','Utsusemi: Ni','Blink','Aquaveil','Stoneskin' }

local AliasList = T{
    'tpset','tp','mode','dps','lag',
}

local utsuBuffs = T{
    [66] = 1,
    [444] = 2,
    [445] = 3,
    [446] = 4,
}

function gcmelee.SetIsDPS(isDPSVal)
    isDPS = isDPSVal
end

function gcmelee.Load()
    gcinclude.SetAlias(AliasList)
    gcinclude.Load()
end

function gcmelee.Unload()
    gcinclude.Unload()
    gcinclude.ClearAlias(AliasList)
end

function gcmelee.DoCommands(args)
    if not (AliasList:contains(args[1])) then
        gcinclude.DoCommands(args)
        do return end
    end

    if (args[1] == 'tpset' or args[1] == 'tp' or args[1] == 'mode') then
        tp_variant = tp_variant + 1
        if (tp_variant > #TpVariantTable) then
            tp_variant = 1
        end
        gcinclude.Message('TP Set', TpVariantTable[tp_variant])
    elseif (args[1] == 'dps') then
        isDPS = not isDPS
        gcinclude.Message('DPS Mode', isDPS)
        if (not isDPS) then
            gcinclude.ToggleIdleSet('Normal')
            lastIdleSetBeforeEngaged = ''
        end
    elseif (args[1] == 'lag') then
        lag = not lag
        gcinclude.Message('[Note: Midcast Delays are disabled if Lag is true] Lag', lag)
    end
end

function gcmelee.DoDefault()
    local player = gData.GetPlayer()
    local environment = gData.GetEnvironment()

    gcinclude.DoDefaultIdle()

    if (player.MainJob == 'PLD' or player.MainJob == 'NIN' or player.MainJob == 'DRK' or gcdisplay.GetToggle('Hate')) then
        if (player.SubJob == 'NIN' or player.MainJob == 'NIN') then
            local function GetShadowCount()
                for buffId, shadowCount in pairs(utsuBuffs) do
                    if (gData.GetBuffCount(buffId) > 0) then
                        return shadowCount
                    end
                end

                return 0
            end
            if (GetShadowCount() == 0) then
                gFunc.EquipSet('IdleDT')
                if (gcdisplay.IdleSet == 'Alternate') then gFunc.EquipSet('IdleALTDT') end
            end
        end
    end

    if (isDPS) then
        if (gcdisplay.IdleSet == 'Normal' or gcdisplay.IdleSet == 'Alternate' or gcdisplay.IdleSet == 'LowAcc' or gcdisplay.IdleSet == 'HighAcc') then
            if (player.Status == 'Engaged') then
                if (lastIdleSetBeforeEngaged == '') then
                    lastIdleSetBeforeEngaged = gcdisplay.IdleSet
                end
                gFunc.EquipSet('TP_' .. TpVariantTable[tp_variant])
                if (gcdisplay.IdleSet ~= TpVariantTable[tp_variant]) then
                    gcinclude.ToggleIdleSet(TpVariantTable[tp_variant])
                end

                if gData.GetBuffCount(580) > 0 then -- Horizon Mjollnir Haste Buff
                    gFunc.EquipSet('TP_Mjollnir_Haste')
                end

                if (player.MainJob ~= 'RNG') then
                    if (fenrirs_earring and (environment.Time >= 6 and environment.Time < 18)) then
                        gFunc.Equip(fenrirs_earring_slot, 'Fenrir\'s Earring')
                    end
                end
            end
            if (player.Status == 'Idle' and lastIdleSetBeforeEngaged ~= '') then
                gcinclude.ToggleIdleSet(lastIdleSetBeforeEngaged)
                lastIdleSetBeforeEngaged = ''
            end
        end
    end
end

function gcmelee.DoFenrirsEarring()
    local player = gData.GetPlayer()
    local environment = gData.GetEnvironment()

    if (isDPS) then
        if (player.MainJob ~= 'RNG') then
            if (fenrirs_earring and (environment.Time >= 6 and environment.Time < 18)) then
                gFunc.Equip(fenrirs_earring_slot, 'Fenrir\'s Earring')
            end
        end
    end
end

function gcmelee.DoDefaultOverride()
    gcinclude.DoDefaultOverride(true)
end

function gcmelee.DoPrecast(fastCastValue)
    gFunc.EquipSet('Precast')
    if (not lag) then
        return gcmelee.SetupMidcastDelay(fastCastValue)
    end

    return 0
end

function gcmelee.SetupMidcastDelay(fastCastValue)
    local player = gData.GetPlayer()
    local action = gData.GetAction()
    local castTime = action.CastTime

    local hasso = gData.GetBuffCount('Hasso')
    local seigan = gData.GetBuffCount('Seigan')
    local castTimeMod = 1
    if (hasso == 1 or seigan == 1) then
        castTimeMod = 1.5
    end

    if (action.Skill == 'Divine Magic' and action.Name == 'Banish III') then
        castTime = 3000
    end

    if (player.SubJob == "RDM") then
         fastCastValue = fastCastValue + 0.15 -- Fast Cast Trait
    end
    local minimumBuffer = 0.4 -- Can be lowered to 0.1 if you want
    local packetDelay = 0.4 -- Change this to 0.4 if you do not use PacketFlow
    local castDelay = ((castTime * castTimeMod * (1 - fastCastValue)) / 1000) - minimumBuffer
    if (castDelay >= packetDelay) then
        gFunc.SetMidDelay(castDelay)
    end

    -- print(chat.header('DEBUG'):append(chat.message('Cast delay is ' .. castDelay)))

    return castDelay - 1
end

function gcmelee.DoMidcast(sets)
    if (not lag) then
        gcmelee.SetupInterimEquipSet(sets)
    end
    gFunc.EquipSet('Haste')
end

function gcmelee.SetupInterimEquipSet(sets)
    local action = gData.GetAction()

    gFunc.InterimEquipSet(sets.DT)

    if (SurvivalSpells:contains(action.Name)) then
        gFunc.InterimEquipSet(sets.SIRD)
    end

    if (gcdisplay.IdleSet == 'MDT') then gFunc.InterimEquipSet(sets.MDT) end
    if (gcdisplay.IdleSet == 'FireRes') then gFunc.InterimEquipSet(sets.FireRes) end
    if (gcdisplay.IdleSet == 'IceRes') then gFunc.InterimEquipSet(sets.IceRes) end
    if (gcdisplay.IdleSet == 'LightningRes') then gFunc.InterimEquipSet(sets.LightningRes) end
    if (gcdisplay.IdleSet == 'EarthRes') then gFunc.InterimEquipSet(sets.EarthRes) end
end

function gcmelee.DoWS()
    gFunc.EquipSet('WS')
    if (TpVariantTable[tp_variant] == 'HighAcc') then
        gFunc.EquipSet('WS_HighAcc')
    end

    gcmelee.DoFenrirsEarring()
end

function gcmelee.GetAccuracyMode()
    return TpVariantTable[tp_variant]
end

function gcmelee.GetGorget()
    local action = gData.GetAction()
    
    if flameGorgetWS[action.Name] then
        gFunc.Equip('Neck',flame_gorget) 
    elseif soilGorgetWS[action.Name] then
        gFunc.Equip('Neck',soil_gorget)
    elseif aquaGorgetWS[action.Name] then
        gFunc.Equip('Neck',aqua_gorget)
    elseif breezeGorgetWS[action.Name] then
        gFunc.Equip('Neck',breeze_gorget)
    elseif snowGorgetWS[action.name] then
        gFunc.Equip('Neck',snow_gorget)
    elseif thunderGorgetWS[action.name] then
        gFunc.Equip('Neck',thunder_gorget)
    elseif lightGorgetWS[action.name] then
        gFunc.Equip('Neck',light_gorget)
    elseif shadowGorgetWS[action.name] then
        gFunc.Equip('Neck',shadow_gorget)
    end
end

return gcmelee
