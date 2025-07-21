AllSpeciesUpgrades = _G.Mods["rtw6tLg"] or false
local title = "Insects Level up All Species"
local separator = " :: "
local debugMSG = {"New Game","Game Started"}

-- UIPlayer.research_center:IsTechResearched(SelectedObj['FieldResearchTech'])

function SavegameFixups.ILU_fixes()
	MapForEach("map", "GujoT2", function(obj)
		obj:ComposeBodyParts()
		obj:InitEntity()
	end)
	for i, animal in ipairs(UIPlayer.labels.TamedAnimals) do
		if not UIPlayer.research_center:IsTechResearched(animal['FieldResearchTech']) then
			CompleteResearch(animal['FieldResearchTech'])
		end
		animal:InitEntity()
	end
	refresh_tame_counts()
end

local lookup_table = {}
-- Junos
lookup_table["Juno"]="Juno_Brute"
lookup_table["Juno_Brute"]="Angry_Juno"
lookup_table["Angry_Juno"]="Hulk_Juno"
lookup_table["Hulk_Juno"]="Too_Angry_Too_Die_Juno"
lookup_table["Too_Angry_Too_Die_Juno"]="Junoskar"
lookup_table["Junoskar"]=nil
-- Raptors
lookup_table["Tecatli"]="Entombed_Tecatli"
lookup_table["VenomousRaptors"]="Heat_Reinforced_Tecatli"
lookup_table["Entombed_Tecatli"]="Heat_Reinforced_Tecatli"
lookup_table["Heat_Reinforced_Tecatli"]="Intelligent_Tecatli"
lookup_table["Intelligent_Tecatli"]="Spellsword_Tecatli"
lookup_table["Spellsword_Tecatli"]=nil
-- Dragonfly
lookup_table["Dragonfly"]="Frenzied_Dragonfly"
lookup_table["Frenzied_Dragonfly"]="Frenzied_Bomber_Dragonfly"
lookup_table["Frenzied_Bomber_Dragonfly"]="Frenzied_Fortified_Bomber_Dragonfly"
lookup_table["Frenzied_Fortified_Bomber_Dragonfly"]="Fast_Frenzied_Fortified_Bomber_Dragonfly"
lookup_table["Fast_Frenzied_Fortified_Bomber_Dragonfly"]=nil
-- Glutch
lookup_table["Glutch_Manhunting"]="Glutch_Stitcher"
lookup_table["Glutch_Stitcher"]="Bloated_Glutch"
lookup_table["Bloated_Glutch"]="BadTrip_Bloated_Glutch"
lookup_table["BadTrip_Bloated_Glutch"]="BadTrip_Bloated_Glutch_Stitcher"
lookup_table["BadTrip_Bloated_Glutch_Stitcher"]=nil
-- Skarab evos
lookup_table["Skarabei_Manhunting_Starving"]="Skarabei"
lookup_table["Skarabei"]="Skarabei_Manhunting"
lookup_table["Skarabei_Manhunting"]="Skarabei_Manhunting_Poisonous"
lookup_table["Skarabei_Manhunting_Poisonous"]="Skarabei_Manhunting_Explosive"
lookup_table["Skarabei_Manhunting_Explosive"]="Skarabei_Manhunting_Brute"
lookup_table["Skarabei_Manhunting_Brute"]="PEx_Skarabei"
lookup_table["PEx_Skarabei"]="PEx_Skarabei_Brute"
lookup_table["PEx_Skarabei_Brute"]="Mutated_PEx_Skarabei_Brute"
lookup_table["Mutated_PEx_Skarabei_Brute"]="Heavily_Mutated_PEx_Skarabei_Brute"
lookup_table["Heavily_Mutated_PEx_Skarabei_Brute"]=nil
-- Shrieker evos 
lookup_table["Shrieker_Hatchling"]="Shrieker_Manhunting"
lookup_table["Shrieker_Manhunting_Hatchling"]="Shrieker_Manhunting"
lookup_table["Shrieker"]="Shrieker_Manhunting_Mother"
lookup_table["Shrieker_Manhunting"]="Shrieker_Manhunting_Mother"
lookup_table["Shrieker_Manhunting_Mother"]="Entropic_Shrieker"
lookup_table["Shrieker_Mother"]="Entropic_Shrieker"
lookup_table["Entropic_Shrieker"]="Plague_Sniper_Shrieker"
lookup_table["Plague_Sniper_Shrieker"]="Sniping_Entropy_Shielded_Shrieker"
lookup_table["Sniping_Entropy_Shielded_Shrieker"]=nil
-- Scissorhands evos
lookup_table["Scissorhands_Hatchling_Starving"]="Scissorhands"
lookup_table["Scissorhands_Hatchling_Nesting"]="Scissorhands"
lookup_table["Scissorhands_Nesting"]="Scissorhands"
lookup_table["Scissorhands_Hatchling"]="Scissorhands"
lookup_table["Scissorhands"]="Scissorhands_Brute"
lookup_table["Scissorhands_Brute_Nesting"]="Scissorhands_Brute"
lookup_table["Scissorhands_Brute"]="Brutal_Duelist_Scissorhands"
lookup_table["Brutal_Duelist_Scissorhands"]="Rage_Fueled_Scissorhand_Duelist"
lookup_table["Rage_Fueled_Scissorhand_Duelist"]="Rage_Focused_Scissorhands"
lookup_table["Rage_Focused_Scissorhands"]=nil
-- Dog rvos
lookup_table["dog_T1"]="dog_T3"
lookup_table["dog_T3"]="dog_T4"
lookup_table["dog_T4"]="dog_T5"
lookup_table["dog_T5"]=nil
-- Gujo evos
lookup_table["Gujo"]='GujoT2'
lookup_table["GujoT2"]='GujoT3'
lookup_table["GujoT3"]='GujoT4'
lookup_table["GujoT4"]='GujoT5'
lookup_table["GujoT5"]=nil
--light assault robot
lookup_table["LightHostileRobot_LVL1"]='LightHostileRobot_LVL2'
lookup_table["LightHostileRobot_LVL2"]='LightHostileRobot_LVL3'
lookup_table["LightHostileRobot_LVL3"]='LightHostileRobot_LVL4'
lookup_table["LightHostileRobot_LVL4"]='LightHostileRobot_LVL5'
lookup_table["LightHostileRobot_LVL5"]=nil
-- heavy assault robot
lookup_table["HeavyHostileRobot_LVL1"]='HeavyHostileRobot_LVL2'
lookup_table["HeavyHostileRobot_LVL2"]='HeavyHostileRobot_LVL3'
lookup_table["HeavyHostileRobot_LVL3"]='HeavyHostileRobot_LVL4'
lookup_table["HeavyHostileRobot_LVL4"]='HeavyHostileRobot_LVL5'
lookup_table["HeavyHostileRobot_LVL5"]=nil
-- Demolition Robot
lookup_table["Demo_1"]='Demo_2'
lookup_table["Demo_2"]='Demo_3'
lookup_table["Demo_3"]='Demo_4'
lookup_table["Demo_4"]='Demo_5'
lookup_table["Demo_5"]=nil
-- monk robot
lookup_table["HostileRobot_Monk_LVL1"]='HostileRobot_Monk_LVL2'
lookup_table["HostileRobot_Monk_LVL2"]='HostileRobot_Monk_LVL3'
lookup_table["HostileRobot_Monk_LVL3"]='HostileRobot_Monk_LVL4'
lookup_table["HostileRobot_Monk_LVL4"]='HostileRobot_Monk_LVL3'
lookup_table["HostileRobot_Monk_LVL5"]=nil
--scout robot
lookup_table["HostileRobot_Scout_LVL1"]='HostileRobot_Scout_LVL2'
lookup_table["HostileRobot_Scout_LVL2"]='HostileRobot_Scout_LVL3'
lookup_table["HostileRobot_Scout_LVL3"]='HostileRobot_Scout_LVL4'
lookup_table["HostileRobot_Scout_LVL4"]='HostileRobot_Scout_LVL5'
lookup_table["HostileRobot_Scout_LVL5"]=nil
-- sup art robot
lookup_table["HostileCrawler_LaserGun"]='Crawl_APC_LVL1'
lookup_table["HostileCrawler_MachineGun"]='Crawl_APC_LVL1'
lookup_table["Crawl_APC_LVL1"]='Crawl_APC_LVL2'
lookup_table["Crawl_APC_LVL2"]='Crawl_APC_LVL3'
lookup_table["Crawl_APC_LVL3"]=nil
-- art art robot
lookup_table["Crawl_Cannon_T0"]='Crawl_Cannon_T1'
lookup_table["Crawl_Cannon_T1"]='Crawl_Cannon_T2'
lookup_table["Crawl_Cannon_T2"]='Crawl_Cannon_T3'
lookup_table["Crawl_Cannon_T3"]=nil
-- QuadCopters
lookup_table["HostileCombatQuadcopter_LVL1"]='HostileCombatQuadcopter_LVL2'
lookup_table["HostileCombatQuadcopter_LVL2"]='HostileCombatQuadcopter_LVL3'
lookup_table["HostileCombatQuadcopter_LVL3"]='HostileCombatQuadcopter_LVL4'
lookup_table["HostileCombatQuadcopter_LVL4"]='HostileCombatQuadcopter_LVL5'
lookup_table["HostileCombatQuadcopter_LVL5"]=nil
-- Camel
lookup_table["Camel"]="Camel_T2"
lookup_table["Camel_T2"]="Camel_T3"
lookup_table["Camel_T3"]="Camel_T4"
lookup_table["Camel_T4"]="Camel_T5"
lookup_table["Camel_T5"]=nil
-- Shogu
lookup_table["Shogu"]="Shogu_T2"
lookup_table["Shogu_T2"]="Shogu_T3"
lookup_table["Shogu_T3"]="Shogu_T4"
lookup_table["Shogu_T4"]="Shogu_T5"
lookup_table["Shogu_T5"]=nil
-- Noth
lookup_table["Noth"]="Noth_T2"
lookup_table["Noth_T2"]="Noth_T2"
lookup_table["Noth_T3"]="Noth_T3"
lookup_table["Noth_T4"]="Noth_T4"
lookup_table["Noth_T5"]=nil
-- Draka
lookup_table["Draka"]="Draka_T2"
lookup_table["Draka_T2"]="Draka_T3"
lookup_table["Draka_T3"]="Draka_T4"
lookup_table["Draka_T4"]="Draka_T5"
lookup_table["Draka_T5"]=nil
-- Ulfen
lookup_table["Ulfen"]="Ulfen_T2"
lookup_table["Ulfen_T2"]="Ulfen_T3"
lookup_table["Ulfen_T3"]="Ulfen_T4"
lookup_table["Ulfen_T4"]="Ulfen_T5"
lookup_table["Ulfen_T5"]=nil

function get_next(class)
	return lookup_table[class] or nil
end

local Juno = {["Juno"]=1,["Juno_Brute"]=2,["Angry_Juno"]=2,["Hulk_Juno"]=3,["Too_Angry_Too_Die_Juno"]=4,["Junoskar"]=5}
local Tecatli = {["Tecatli"]=1,["VenomousRaptors"]=1,["Entombed_Tecatli"]=2,["Heat_Reinforced_Tecatli"]=3,["Intelligent_Tecatli"]=4,["Spellsword_Tecatli"]=5}
local Dragonfly={["Dragonfly"]=1,["Frenzied_Dragonfly"]=2,["Frenzied_Bomber_Dragonfly"]=3,
		["Frenzied_Fortified_Bomber_Dragonfly"]=4,["Fast_Frenzied_Fortified_Bomber_Dragonfly"]=5}
local Glutch={["Glutch_Manhunting"]=1,["Glutch_Stitcher"]=2,["Bloated_Glutch"]=3,["BadTrip_Bloated_Glutch"]=4,["BadTrip_Bloated_Glutch_Stitcher"]=5}
local Skarabei={["Skarabei_Manhunting_Starving"]=1,["Skarabei"]=1,["Skarabei_Manhunting"]=1,["Skarabei_Manhunting_Poisonous"]=1,["Skarabei_Manhunting_Explosive"]=2,
		["Skarabei_Manhunting_Brute"]=2,["PEx_Skarabei"]=2,["PEx_Skarabei_Brute"]=3,["Mutated_PEx_Skarabei_Brute"]=4,["Heavily_Mutated_PEx_Skarabei_Brute"]=5}
local Shrieker={["Shrieker_Hatchling"]=1,["Shrieker_Manhunting_Hatchling"]=1,["Shrieker"]=1,["Shrieker_Manhunting"]=1,["Shrieker_Manhunting_Mother"]=2,
		["Shrieker_Mother"]=2,["Entropic_Shrieker"]=3,["Plague_Sniper_Shrieker"]=4,["Sniping_Entropy_Shielded_Shrieker"]=5}
local Scissor={["Scissorhands_Hatchling_Starving"]=1,["Scissorhands_Hatchling_Nesting"]=1,["Scissorhands_Nesting"]=1,
		["Scissorhands_Hatchling"]=1,["Scissorhands"]=1,["Scissorhands_Brute_Nesting"]=2,["Scissorhands_Brute"]=2,["Brutal_Duelist_Scissorhands"]=3,
		["Rage_Fueled_Scissorhand_Duelist"]=4,["Rage_Focused_Scissorhands"]=5}
local Dog={["dog_T1"]=2,["dog_T3"]=3,["dog_T4"]=4,["dog_T5"]=5,['Boxer']=1,['GreatDane']=1,['Weormaraner']=1}
local Gujo={["Gujo"]=1,['GujoT2']=2,["GujoT3"]=3,['GujoT4']=4,['GujoT5']=5}
local Camel={["Camel"]=1,["Camel_T2"]=2,["Camel_T3"]=3,["Camel_T4"]=4,["Camel_T5"]=5}
local Shogu={["Shogu"]=1,["Shogu_T2"]=2,["Shogu_T3"]=3,["Shogu_T4"]=4,["Shogu_T5"]=5,}
local Noth={["Noth"]=1,["Noth_T2"]=2,["Noth_T3"]=3,["Noth_T4"]=4,["Noth_T5"]=5}
local Draka={["Draka"]=1,["Draka_T2"]=2,["Draka_T3"]=3,["Draka_T4"]=4,["Draka_T5"]=5}
local Ulfen={["Ulfen"]=1,["Ulfen_T2"]=2,["Ulfen_T3"]=3,["Ulfen_T4"]=4,["Ulfen_T5"]=5}

local organs = {
	"Sintis","Nuedo","Bitherm","ToCo","Megdeb",""
}

local function is_organ(resource)
	for _,v in ipairs(organs) do
		if v == resource then
			return true
		end
	end
	return false
end

local species_herd_mod = { -- all values * 10 to not have engine round to 0
	{id='Ulfen',kc= 50 / 4},
	{id='Draka',kc= 50 / 4 },
	{id='Noth',kc= 10 / 2},
	{id='Shogu',kc= 10 / 2},
	{id='Camel',kc= 10 },
	{id='Gujo',kc= 80 / 10 },
	{id='Scissor',kc= 50 / 4},
	{id='Dog',kc= 80 / 10},
	{id='Shrieker',kc= 50 / 4 },
	{id='Tecatli',kc= 80 / 10 },
	{id='Juno',kc= 10 / 2},
}

function get_tier(class_name)
	if Juno[class_name] then return Juno[class_name]
	elseif Tecatli[class_name] then return Tecatli[class_name]
	elseif Dragonfly[class_name] then return Dragonfly[class_name]
	elseif Juno[class_name] then return Juno[class_name]
	elseif Glutch[class_name] then return Glutch[class_name]
	elseif Skarabei[class_name] then return Skarabei[class_name]
	elseif Scissor[class_name] then return Scissor[class_name]
	elseif Shrieker[class_name] then return Shrieker[class_name]
	elseif Dog[class_name] then return Dog[class_name]
	elseif Camel[class_name] then return Camel[class_name]
	elseif Shogu[class_name] then return Shogu[class_name]
	elseif Noth[class_name] then return Noth[class_name]
	elseif Draka[class_name] then return Draka[class_name]
	elseif Ulfen[class_name] then return Ulfen[class_name]
	elseif Gujo[class_name] then return Gujo[class_name]
	else return nil
	end
end

function get_stop(class_name)
	if Juno[class_name] then return 'Juno'
	elseif Tecatli[class_name] then return 'Tecatli'
	elseif Dragonfly[class_name] then return 'Dragonfly'
	elseif Juno[class_name] then return 'Juno'
	elseif Glutch[class_name] then return 'Glutch'
	elseif Skarabei[class_name] then return 'Skarabei'
	elseif Scissor[class_name] then return 'Scissor'
	elseif Shrieker[class_name] then return 'Shrieker'
	elseif Dog[class_name] then return 'Dog'
	elseif Camel[class_name] then return 'Camel'
	elseif Shogu[class_name] then return 'Shogu'
	elseif Noth[class_name] then return 'Noth'
	elseif Draka[class_name] then return 'Draka'
	elseif Ulfen[class_name] then return 'Ulfen'
	elseif Gujo[class_name] then return 'Gujo'
	else return nil
	end
end


function carrying_capacity(species)
	local cap = (_G.ILU_max / 10) + 5
	local scaling = 400 - _g.ILU_max
	local difficulty_scaling = nil
	local moon_scaling = MoonInstance['modifications']['ProgressResourcesFactor']['mul']
	local normalize_EP = EventProgress / moon_scaling
	local cap_up_per_no = EventProgress / scaling
	local stop = get_stop(species)
	local mod = 1
	for _,v in ipairs(species_herd_mod) do
		if v['id']==stop then
			mod = v['kc']
		end
	end
	return (cap + cap_up_per_no) * mod / 10
end

function refresh_tame_counts()
	local count_table = {}
	for _,animal in ipairs(UIPlayer.labels.TamedAnimals or empty_table) do
		local stop_animal = get_stop(animal.class)
		local found = false
		for __,entry in ipairs(count_table) do
			if entry['id'] == stop_animal then
				found = true
				entry['count'] = entry['count']+1
			end
		end
		if found == false then
			count_table[#count_table+1] = {id=stop_animal,count=1}
		end
	end
	--count_table has index,stop_name, & count
	for _,v in ipairs(count_table) do
		if MapVarValues[v['id']] then
			MapVarValues[v['id']]=v['count']
		else
			MapVar(v['id'],v['count'])
		end
	end
end

function new_preg_rate(species_class,rate)
	local base_rate = rate or 0
	local stop = get_stop(species_class)
	local no = MapVarValues[stop] or 0
	local cc = carrying_capacity(species_class)
	local fin_mod = 100*(cc - no) / cc
	local to_return = fin_mod * base_rate / 100
	return to_return
end

local function are_organs_present(butcher_resources)
	for _,v in ipairs(butcher_resources) do
		if is_organ(v['resource']) then
			return true
		end
	end
	return false
end

local function is_px_loaded()
	for _,mod in ipairs(ModsLoaded) do
		if mod.id == 'ucCehPy' then
			return true
		end
	end
	return false
end

local function is_animal(mod_item_id)
	for _,v in ipairs(lookup_table) do
		local to_check = v['id']
		if mod_item_id == to_check then
			return true
		end
	end
	return false
end

function unloadTest()
	if not is_px_loaded() then
		local found_organs = false
		for _,mod in ipairs(ModsLoaded) do 
			if mod.id == 'rtw6tLg' then
				mod:ForEachItem(function(mc)
					if is_animal(mc.id) then
						local local_id = mc.id
						if are_organs_present(mc.ButcherResources) then
							found_organs = true
						end
					end
				end)
				if found_organs then ForceActivateStoryBit("ILU_restart_required") end
			end
		end
	end
end


local function flip_flop(flip_table)
	local found_flip = true
	while found_flip do
		found_flip = false
		MapForEach(true, "Human", function(unit,was_flipped)
			for _,v in ipairs(flip_table) do
				for _, effect in ipairs(unit.status_effects or empty_table) do
					if IsKindOf(effect, "ModItemHealthCondition") and effect.id == v['id'] then
						unit:RemoveHealthCondition(v['id'])
						unit:AddHealthCondition(v['flip'],'combatflip')
						-- this means we found at least one sc to flip and should check again
						found_flip = true
					end
				end
			end
		end)
	end
end

function ILU_update_armor_hcs()
	-- if we are here, we already know we need to flip some scs
	local flip_table = {}
	if _G.ILU_combat_type == 'simple' then
		flip_table = {
			{id='armor_leather_complex',flip='armor_leather_simple'},
			{id='armor_vleather_complex',flip='armor_vleather_simple'},
			{id='armor_synth_complex',flip='armor_synth_simple'},
			{id='armor_badCarbon_complex',flip='armor_badCarbon_simple'},
			{id='armor_carbon_complex',flip='armor_carbon_simple'},
		}
	elseif _G.ILU_combat_type == 'complex' then
		flip_table = {
			{flip='armor_leather_complex',id='armor_leather_simple'},
			{flip='armor_vleather_complex',id='armor_vleather_simple'},
			{flip='armor_synth_complex',id='armor_synth_simple'},
			{flip='armor_badCarbon_complex',id='armor_badCarbon_simple'},
			{flip='armor_carbon_complex',id='armor_carbon_simple'},
		}
	end
	_G.ILU_flipped = true -- setting true to force the first loop
	while _G.ILU_flipped do
		flip_flop(flip_table)
	end
end

function ILU_set_mod_options(id)
	id = id or CurrentModId
	if CurrentModId ~= id or not CurrentModOptions then return end
	--ilu_set_map_vars() --
	local options = CurrentModOptions
	_G.ILU_max = options.O_ILU_max
	_G.ILU_Tier_Max = options.O_ILU_max_tier
	if options.O_simple_combat == true then
		_G.ILU_combat_type='simple'
	elseif options.O_simple_combat == false then
		_G.ILU_combat_type='complex'
	end
	ILU_update_armor_hcs()
end

if FirstLoad then
	_G.ILU_max = 150
	_G.ILU_Tier_Max = 6
	_G.ILU_combat_type = "complex"
	ILU_set_mod_options("rtw6tLg")
end

function ILU_QA()
	EventProgress = 1000000 / 40
	local start = false
	local dropship_spawn_def = nil
	local instance = {}
	local robot_spawn_def = SpawnDefs['Single_Robots']
	for _,v in ipairs(lookup_table) do
		local classdef = g_Classes[v['id'] or false]
		local ep = classdef.EventProgressValue
		if v['id'] == 'LightHostileRobot_LVL1' then
			start = true
			dropship_spawn_def = SpawnDefs["Attack_Dropship"]
			instance.spawnClass = 'LightHostileRobot_LVL1'
			instance.AdditionalClassList = {}
		elseif start then
			instance.AdditionalClassList[#instance.AdditionalClassList+1] ={v['id'], 100}
		end
	end
	robot_spawn_def = robot_spawn_def:CreateInstance(instance)
	local count = 1
	local mod = robot_spawn_def:CalculateInvadersCountMod(robot_spawn_def, 100) or 100
	local seed = InteractionRand(nil, "AttackWave")
	local rand = BraidRandomCreate(seed)
	count = robot_spawn_def:ModifyCount(count, mod, rand)
	local MaxInvadersPerDropship = const.Gameplay.MaxInvadersPerDropship
	local MaxDropshipsPossible = const.Gameplay.MaxAttackDropshipsCount
	local dropships = Min(DivCeil(count,MaxInvadersPerDropship), MaxDropshipsPossible)
	robot_spawn_def.Count = count / dropships
	instance = {}
	instance.RobotSpawnDef = robot_spawn_def
	instance.Count = dropships
	dropship_spawn_def = dropship_spawn_def:CreateInstance(instance)
	local context = { robot_spawn_def = robot_spawn_def }
	dropship_spawn_def:ActivateSpawn(nil, context)
end

local function lookupEP(name)
	local classdef = g_Classes[name or false]
	local ep = classdef.EventProgressValue
	return ep
end

local function upgrade(temp_class_list,flag)
	flag = flag or nil
	local upgrade_flag = false
	local fully_upgraded = 0
	local max_upgrades = 1 -- Just used to make sure we upgrade all species, not just the primary
	local max_tier = _G.ILU_Tier_Max
	local a = test()
	for _,v in ipairs(temp_class_list) do
		if v['up_count'] > max_upgrades then
			max_upgrades = v['up_count']
		end
	end
	while not upgrade_flag and fully_upgraded<=#temp_class_list do
		for _,val_table in ipairs(temp_class_list) do
			if val_table['up_count'] < max_upgrades and not upgrade_flag and max_upgrades <= max_tier then
				local up_maybe = lookup_table[val_table['now']]
				if up_maybe and flag then
					val_table['up_count'] = val_table['up_count'] + 1
					val_table['now'] = up_maybe
					val_table['ep'] = lookupEP(up_maybe)
					upgrade_flag = true
					break
				elseif up_maybe and not flag then --- Used when just wanting the name of the next tier
					return true, up_maybe
				else
					fully_upgraded = fully_upgraded +1
					if fully_upgraded >= #temp_class_list then
						break
					end
				end
			end
		end
		max_upgrades = max_upgrades +1
	end
	return upgrade_flag,temp_class_list
end

function CalculateInvaders(spawn_array, percent)
	print("Inside calculate invaders!")
	local event_progress = 0
	local weight_sum = 0
	for _,upgrade_value in ipairs(spawn_array) do
		local classdef = g_Classes[upgrade_value['now'] or false]
		local name, weight,ep = upgrade_value['now'], upgrade_value['weight'],upgrade_value['ep']
		if classdef and (weight or 0) > 0 then
			event_progress = event_progress + (classdef.EventProgressValue or 0) * weight
			weight_sum = weight_sum + weight
		end
	end
	print(weight_sum)
	assert(weight_sum > 0)
	if weight_sum == 0 then
		event_progress = UnitInvader.EventProgressValue
	else
		event_progress = event_progress / weight_sum
	end
	print((percent or 100) * EventProgress / Max(1, event_progress))
	return (percent or 100) * EventProgress / Max(1, event_progress)
end

local function build_output(final_full_table)
	local additional_class_list = {}
	local final_main_name = ''
	for i=1,#final_full_table do
		if i==1 then
			final_main_name = final_full_table[i]['now']
		else
			additional_class_list[i-1] = {id=final_full_table[i]['now'],weight=final_full_table[i]['weight']}
		end
	end
	return final_main_name, additional_class_list
end


function test(start_animal,additionalClassList,progress_percent)
	progress_percent = progress_percent or 100
	print("Attacking with an attack of ",progress_percent,'% power')
	local actual_EP_Bank = DivRound((progress_percent*EventProgress),100)
	print("We have ",actual_EP_Bank,' to spend!')
	local min_average_cost = DivRound(actual_EP_Bank,_G.ILU_max)
	print("With a max creature # of ",_G.ILU_max,' our average EP cost must be above ',min_average_cost)
	local start_ep = lookupEP(start_animal)
	local temp_class_list = {
	  {start = start_animal,weight=100,now=start_animal,up_count=0,ep=start_ep},
	}
	local sum_weight = 100
	local progress_and_weight = start_ep * 100
	for i=1,#additionalClassList do
		local this_ep = lookupEP(additionalClassList[i][1])
		local expansion = {}
		expansion['now']=additionalClassList[i][1]
		expansion['start']=additionalClassList[i][1]
		expansion['weight']=additionalClassList[i][2]
		expansion['up_count']=0
		expansion['ep']=this_ep
		sum_weight = sum_weight + additionalClassList[i][2]
		progress_and_weight = progress_and_weight + this_ep*additionalClassList[i][2]
		temp_class_list[i+1] = expansion
	end
	local this_defs_avg = DivRound(progress_and_weight,sum_weight)
	print("The spawndef handed to me has an average cost of: ",this_defs_avg)
	if this_defs_avg > min_average_cost then return build_output(temp_class_list) end
	local max_upgrades = 15
	local up_tier = 1
	local max_tier = _G.ILU_Tier_Max
	local i = 0
	local capped = 0
	local found_an_upgrade_this_loop = false
	while i < max_upgrades and this_defs_avg < min_average_cost and capped < #temp_class_list do
		i = i + 1
		found_an_upgrade_this_loop = false
		for _,v in ipairs(temp_class_list) do
			local next = get_next(v['now'])
			local cur_tier = get_tier(v['now'])
			print("The tier of the current unit is ",cur_tier)
			print("Is there another tier unit? ",next)
			print("Is this a maxxed tier according to user preference? ",cur_tier == max_tier)
			if not next or cur_tier == max_tier then capped = capped + 1 end
			if v['up_count'] < up_tier and next and not cur_tier == max_tier then
				found_an_upgrade_this_loop = true
				v['up_count'] = up_tier
				local weighted_ep_old = DivRound(v['weight']*v['ep'],sum_weight)
				v['now'] = next
				local next_ep = lookupEP(next)
				v['ep']=next_ep
				local weighted_ep_new = DivRound(v['weight']*next_ep,sum_weight)
				this_defs_avg = this_defs_avg - weighted_ep_old + weighted_ep_new
			end
		end
		if not found_an_upgrade_this_loop then
			print("Did not upgrade this loop!")
			up_tier = up_tier + 1
			i = i - 1 -- don't count this loop as no upgrade occured
		else
			print("After the ",i,'nth upgrade; the avg cost is now ', this_defs_avg)
		end
		print('Have I looped too much? ',not (i < max_upgrades))
		print('Are my avg costs high enough? ',not (this_defs_avg < min_average_cost))
		print("Have I upgraded as much as I could? ",not (max_tier >= up_tier))
		print("Have I max evolved everything? ",not (capped < #temp_class_list))
	end
	return build_output(temp_class_list)
end

function addSmallnextEvo(temp_class_list)
	local flag,name = upgrade(temp_class_list,false)
	if flag then
		temp_class_list[#temp_class_list+1] = { now = name , weight = 5 }
	end
	return temp_class_list
end


function check_count_and_upgrade(start_animal,additionalClassList,progress_percent)
	additionalClassList = additionalClassList or {}
	local temp_class_list = {
	  {start = start_animal,weight=100,now=start_animal,up_count=0,ep=lookupEP(start_animal)},
	}
	for i=1,#additionalClassList do
		local expansion = {}
		expansion['now']=additionalClassList[i][1]
		expansion['start']=additionalClassList[i][1]
		expansion['weight']=additionalClassList[i][2]
		expansion['up_count']=0
		expansion['ep']=lookupEP(additionalClassList[i][1])
		temp_class_list[i+1] = expansion
	end
	progress_percent = progress_percent or 100
	local upgrade_round = 0
	local final_animal = start_animal
	local final_class_list = additionalClassList
	local count = CalculateInvaders(temp_class_list, progress_percent) /100
	print('Number in this attack:')
	print(count)
	local br = 0
	while (count > _G.ILU_max and br < 20) do
		print("Which is too many!")
		local flag, temp_class_list = upgrade(temp_class_list,true)
		print(flag)
		print(temp_class_list)
		if not flag then
			return build_output(temp_class_list)
		end
		count = CalculateInvaders(temp_class_list, progress_percent) / 100
		br = br + 1
		print("I have done this:")
		print(br)
	end
	--[[If wave is generating 50%+ of spawn max, add a 5% chance to spawn the 'next' tier of the 'next' defined unit.]]
	if count > _G.ILU_max / 2 then
		temp_class_list = addSmallnextEvo(temp_class_list)
	end
	return build_output(temp_class_list)
end

--[[
local function HandleLoad()
	ApplyAnimalSet("rtw6tLg")
end
--]]
local function ILU_mod_set_and_cc()
	ILU_set_mod_options("rtw6tLg")
	refresh_tame_counts()
end

local function ILU_set_and_test()
	ILU_set_mod_options("rtw6tLg")
	unloadTest()
end

function ILU_ActivateAttackDropshipSpawnDefs(robot_spawndef, main_unit,added_units, progress_mul)
	local robot_spawn_def = SpawnDefs[robot_spawndef]
	if not robot_spawn_def then return end
	local dropship_spawn_def = SpawnDefs["Attack_Dropship"]
	if not dropship_spawn_def then return end
	progress_mul = progress_mul or 100
	local addedClassList = {}
	local instance = {}
	instance.spawnClass, addedClassList = check_count_and_upgrade(main_unit,added_units)
	instance.AdditionalClassList = {}
	for i=1,#addedClassList do
		instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
	end
	robot_spawn_def = robot_spawn_def:CreateInstance(instance)
	local seed = InteractionRand(nil, "AttackWave")
	local rand = BraidRandomCreate(seed)
	local count = robot_spawn_def.Count + rand(robot_spawn_def.RandomCount + 1)
	local mod = robot_spawn_def:CalculateInvadersCountMod(robot_spawn_def, progress_mul) or 100
	count = robot_spawn_def:ModifyCount(count, mod, rand)
	if count <= 0 then
		return
	end
	local MaxInvadersPerDropship = const.Gameplay.MaxInvadersPerDropship
	local MaxDropshipsPossible = const.Gameplay.MaxAttackDropshipsCount
	local dropships = Min(DivCeil(count,MaxInvadersPerDropship), MaxDropshipsPossible)
	robot_spawn_def.Count = count / dropships
	instance = {}
	instance.RobotSpawnDef = robot_spawn_def
	instance.Count = dropships
	dropship_spawn_def = dropship_spawn_def:CreateInstance(instance)
	local context = { robot_spawn_def = robot_spawn_def }
	dropship_spawn_def:ActivateSpawn(nil, context)
end

OnMsg.ApplyModOptions = ILU_set_mod_options
OnMsg.ModsReloaded = ILU_set_and_test
OnMsg.LoadGame = ILU_mod_set_and_cc
OnMsg.GameStarted = ILU_mod_set_and_cc
