AllSpeciesUpgrades = _G.Mods["rtw6tLg"] or false
local title = "Insects Level up All Species"
local separator = " :: "
local debugMSG = {"New Game","Game Started"}
local hour_duration = const.HourDuration
local day_duration = const.DayDuration
local resource_scale = const.ResourceScale

function SavegameFixups.ILU_fixes()
	DebugPrint("Fixing up a save game due to older EE version present!\n")
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
	MapForEach("map", "TerritorialNest", function(nest)
		nest:Init() -- resets nests from 1st and bad implementation
	end)
	refresh_tame_counts()
end


--------------- TABLE SECTION --------------------

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

local species_herd_mod = { -- all values * 10 to not have engine round to 0
	{id='Ulfen',kc= 50 / 4}, -- 1.25x base
	{id='Draka',kc= 50 / 4 }, -- 1.25x base
	{id='Noth',kc= 10 / 2}, -- 0.5x base
	{id='Shogu',kc= 10 / 2}, -- 0.5x base
	{id='Camel',kc= 10 }, -- 1x base
	{id='Gujo',kc= 70 / 10 }, -- 0.7x base
	{id='Scissor',kc= 50 / 4}, -- 1.25x base
	{id='Dog',kc= 70 / 10}, -- 0.7x base
	{id='Shrieker',kc= 50 / 4 }, -- 1.25x base
	{id='Tecatli',kc= 70 / 10 }, -- 0.7x base
	{id='Juno',kc= 10 / 2}, -- 0.5x base
}

local preg_quota_cap = {}

------------------ TABLE QUERYING -----------------------------

local function is_organ(resource)
	for _,v in ipairs(organs) do
		if v == resource then
			return true
		end 
	end
	return false
end

function get_next(class)
	return lookup_table[class] or nil
end

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

function print_preg_quota_table()
	for _,v in ipairs(preg_quota_cap) do
		print(v['id'],v['quota'])
	end
end

function upsert_preg_quota(stop,quota)
	if not stop or not quota then return end
	local found_flag = false 
	for s,q in ipairs(preg_quota_cap) do
		if s == stop then
			found_flag = true
			preg_quota_cap[s] = quota
			return
		end
	end
	if not found_flag then
		preg_quota_cap[#preg_quota_cap+1] = {id=stop,quota=quota}
	end
end

function get_preg_quota(stop)
	for _,v in ipairs(preg_quota_cap) do
		if v['id'] == stop then
			return v['quota']
		end
	end
	return nil
end

-------------------------- Mini FUNCTIONS ----------------------------------

local function lookupEP(name)
	DebugPrint("Checking a species EP cost to spawn")
	DebugPrint(name)
	DebugPrint("\n")
	local classdef = g_Classes[name or false]
	local ep = classdef.EventProgressValue
	return ep
end


local function are_organs_present(butcher_resources)
	for _,v in ipairs(butcher_resources) do
		if is_organ(v['resource']) then
			return true
		end
	end
	return false
end

local function is_preg_loaded()
	for _,mod in ipairs(ModsLoaded) do
		if mod.id == 'hy8RluH' then
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
	if get_stop(mod_item_id) then
		return true
	else
		return false
	end
end


local function build_output(final_full_table)
	DebugPrint("Building final spawn table\n")
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

function carrying_capacity(species)
	DebugPrint("Getting carrying capacity of a species")
	DebugPrint(species)
	DebugPrint("\n")
	local stop = get_stop(species)
	local max 
	if MapVarValues.O_Man_Cap then
		max = get_preg_quota(species)
	end
	if not max then
		max = MapVarValues['ILU_max'] or 150
		max = DivRound(max,6)
		local mod = 1
		for _,v in ipairs(species_herd_mod) do
			if v['id']==stop then
				mod = v['kc']
			end
		end
		max = DivRound(max * mod,10)
	end
	return max or 30 -- just in case we **** a brick
end

function refresh_tame_counts()
	DebugPrint("Refreshing the tame counts\n")
	if MapVarValues['tame_last_refresh'] then
		MapVarValues['tame_last_refresh']= GameTime()
	else
		MapVar('tame_last_refresh',GameTime())
	end
	local count_table = {}
	for _,animal in ipairs(UIPlayer.labels.TamedAnimals or empty_table) do
		--print("looking at ",animal.class)
		local stop_animal = get_stop(animal.class)
		--print("It's stop category is: ",stop_animal)
		local found = false
		for __,entry in ipairs(count_table) do
			if entry['id'] == stop_animal then
				found = true
				entry['count'] = entry['count']+1
			end
		end
		if found == false then
			--print("It is not in the table yet!")
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


---------------------- MAJOR FUNCTIONS -----------------------------

function set_expedition_tame(id,name)
	DebugPrint("Expedition tame being set!")
	name = name or 'N/A'
	if MapVarValues['nest_awaken_exp_tame'] or MapVarValues['nest_awaken_exp_tame'] == 'N/A' then
		MapVarValues['nest_awaken_exp_tame'] = id
	else
		MapVar('nest_awaken_exp_tame',id)
	end
	if MapVarValues['nest_awaken_tame_name'] or MapVarValues['nest_awaken_exp_tame'] == 'N/A' then
		MapVarValues['nest_awaken_tame_name'] = name
	else
		MapVar('nest_awaken_tame_name',id)
	end
end

function new_preg_rate(species_class,rate)
	DebugPrint("Getting new preg rate for a species ")
	DebugPrint(species_class)
	DebugPrint("\n")
	local tame_check = MapVarValues['tame_last_refresh'] or 0
	if tame_check + (2 * day_duration) < GameTime() then -- refresh every other day
		refresh_tame_counts()
	end
	local base_rate = rate or 0
	local stop = get_stop(species_class)
	local no = MapVarValues[stop] or 0
	local cc = carrying_capacity(species_class)
	local fin_mod = 100*(cc - no) / cc
	local to_return = fin_mod * base_rate / 100
	local override = false
	if override then
		to_return = 0
	end
	return to_return
end

function ILU_update_armor_hcs()
	DebugPrint("Updating the armor HCs")
	local combat_type = MapVarValues['ILU_combat_type']
	local flip_table = {}
	if not combat_type then return
	elseif combat_type == 'simple' then
		flip_table = {
			{id='armor_leather_complex',flip='armor_leather_simple'},
			{id='armor_vleather_complex',flip='armor_vleather_simple'},
			{id='armor_synth_complex',flip='armor_synth_simple'},
			{id='armor_badCarbon_complex',flip='armor_badCarbon_simple'},
			{id='armor_carbon_complex',flip='armor_carbon_simple'},
		}
	elseif combat_type == 'complex' then
		flip_table = {
			{flip='armor_leather_complex',id='armor_leather_simple'},
			{flip='armor_vleather_complex',id='armor_vleather_simple'},
			{flip='armor_synth_complex',id='armor_synth_simple'},
			{flip='armor_badCarbon_complex',id='armor_badCarbon_simple'},
			{flip='armor_carbon_complex',id='armor_carbon_simple'},
		}
	end
	local found_flip = true
	while found_flip do
		found_flip = false
		MapForEach(true, "Human", function(unit,was_flipped)
			--print("Checking: ",unit.id)
			for _,v in ipairs(flip_table) do
				for _, effect in ipairs(unit.status_effects or empty_table) do
					if IsKindOf(effect, "ModItemHealthCondition") and effect.id == v['id'] then
						--print("Swapping a condition for the correct one (Based on mod option)")
						unit:RemoveHealthCondition(v['id'])
						unit:AddHealthCondition(v['flip'],'combatflip')
						--print("Trying to mark var as flipped!")
						found_flip = true
					end
				end
			end
		end)
	end
end

-- meat based upgrading
function check_count_and_upgrade(start_animal,additionalClassList,progress_percent)
	DebugPrint("non-robot attack incoming\n")
	progress_percent = progress_percent or 100
	local actual_EP_Bank = DivRound((progress_percent*EventProgress),100)
	local max_count = MapVarValues['ILU_max']
	if not max_count then ILU_set_mod_options("rtw6tLg") end
	local max_count = MapVarValues['ILU_max']
	local min_average_cost = DivRound(actual_EP_Bank,max_count)
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
	if this_defs_avg > min_average_cost then return build_output(temp_class_list) end
	local max_loops = 40
	local up_tier = 1
	local max_tier = GameVarValues['ILU_Tier_Max'] or 6
	local i = 0
	local capped = 0
	local found_an_upgrade_this_loop = false
	while i < max_loops and this_defs_avg < min_average_cost and capped < #temp_class_list do
		i = i + 1
		found_an_upgrade_this_loop = false
		for _,v in ipairs(temp_class_list) do
			local next = get_next(v['now'])
			local cur_tier = get_tier(v['now'])
			if not next or cur_tier == max_tier then
				capped = capped + 1
			elseif v['up_count'] < up_tier then
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
			up_tier = up_tier + 1
		end
	end
	return build_output(temp_class_list)
end


-- robot attack upgrader
function ILU_ActivateAttackDropshipSpawnDefs(robot_spawndef, main_unit,added_units, progress_mul)
	DebugPrint("Robot attack incoming\n")
	local robot_spawn_def = SpawnDefs[robot_spawndef]
	if not robot_spawn_def then return end
	local dropship_spawn_def = SpawnDefs["Attack_Dropship"]
	if not dropship_spawn_def then return end
	progress_mul = progress_mul or 100
	local addedClassList = {}
	local instance = {}
	instance.spawnClass, addedClassList = check_count_and_upgrade(main_unit,added_units)
	instance.AdditionalClassList = {}
	--print("First assault chosen", instance.spawnClass)
	--print(addedClassList)
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

--UIPlayer:GetStoredResAmount('ScrapMetal')
local ProduceResource = ProduceResource
local PlaceResourcePile = PlaceResourcePile
local params = { disable_requests = true }
function UnitAnimal:DoProduceResourcesDiminishingReturns()
	DebugPrint("Animal doing a new res call")
	if self:IsTamed() then
		local happiness_pct = Min(self.Happiness / 1000, 100)
		for _, res_amount in ipairs(self.ProduceResources) do
			local amount = res_amount.amount
			local happiness_mod = MulDivRound(amount, happiness_pct, 100)
			if happiness_mod > resource_scale then
				amount = amount + RoundResourceAmount(happiness_mod)
			end
			if UIPlayer:GetStoredResAmount(res_amount.resource) >= const.ResourceScale * 300 then
				self:AddHealthCondition('tamed_constipated','too_many_resources')
			elseif self:HasHealthCondition('tamed_constipated') then
				self:RemoveHealthCondition('tamed_constipated','resources_normalized')
				ProduceResource(nil, self, res_amount.resource, amount)
			else
				ProduceResource(nil, self, res_amount.resource, amount)
			end
		end
	else
		for _, res_amount in ipairs(self.ProduceResources) do
			PlaceResourcePile(self, res_amount.resource, res_amount.amount, false, params)
		end
	end
	self:UpdateProductionTime()
end


------------------------ META FUNCTIONS ------------------
--[[
function ILU_reset_vars()
	local map = GetMap()
	if not map or map == "" then return end
	MapVar('ILU_max', 150)
	MapVar('ILU_Tier_Max', 6)
	MapVar('ILU_combat_type',"complex")
	MapVarValues['ILU_max']=150
	MapVarValues['ILU_Tier_Max']=6
	MapVarValues['ILU_combat_type']='complex'
end]]

function ILU_set_mod_options(id)
	id = id or CurrentModId
	if is_preg_loaded() then
		DebugPrint("Pregnancy Mod detected!\n")
		AddGameNotification('Preg_mod_conflict')
	end
	local options = CurrentModOptions
	if CurrentModId ~= id or not CurrentModOptions then
		return
	end
	DebugPrint("EE Mod Options applied!\n")
	DebugPrint('Override tame cap found? ')
	DebugPrint(options.O_Man_Cap)
	DebugPrint("\n")
	if options.O_Man_Cap then
		if not MapVarValues.O_Man_Cap then MapVar("O_Man_Cap",true) end
		upsert_preg_quota('Ulfen',options.UlfenQuota or 20)
		upsert_preg_quota('Draka',options.DrakaQuota or 20)
		upsert_preg_quota('Noth',options.NothQuota or 20)
		upsert_preg_quota('Shogu',options.ShoguQuota or 10)
		upsert_preg_quota('Camel',options.CamelQuota or 20)
		upsert_preg_quota('Gujo',options.GujoQuota or 10)
		upsert_preg_quota('Scissor',options.ScissorQuota or 10)
		upsert_preg_quota('Dog',options.DogQuota or 10)
		upsert_preg_quota('Tecatli',options.TecatliQuota or 10)
		upsert_preg_quota('Juno',options.JunoQuota or 10)
		--print_preg_quota_table()
	end
	if MapVarValues.ILU_max then
		MapVarValues.ILU_max = options.O_ILU_max or 150
		MapVarValues.ILU_Tier_Max = options.O_ILU_max_tier or 6
	else
		MapVar('ILU_max', options.O_ILU_max or 150)
		MapVar('ILU_Tier_Max', options.O_ILU_max_tier or 6)
	end
	if options.O_simple_combat == true then
		MapVarValues.ILU_combat_type='simple'
	elseif options.O_simple_combat == false then
		MapVarValues.ILU_combat_type='complex'
	else
		MapVarValues.ILU_combat_type='complex'
	end
	ILU_update_armor_hcs()
end

if FirstLoad then
	--ILU_reset_vars()
	ILU_set_mod_options("rtw6tLg")
end

function unloadTest()
	if not is_px_loaded() then
		--print("Project-X not found, checking for organ remnants")
		local found_organs = false
		for _,mod in ipairs(ModsLoaded) do 
			if mod.id == 'rtw6tLg' then
				mod:ForEachItem(function(mc)
					if is_animal(mc.id) then
						local local_id = mc.id
						if are_organs_present(mc.ButcherResources) then
					 		--print("Organs found in animal: ",mc.id)
							found_organs = true
						end
					end
				end)
				if found_organs then ForceActivateStoryBit("ILU_restart_required") end
			end
		end
	end
end

local function ILU_mod_set_and_cc()
	ILU_set_mod_options("rtw6tLg")
	refresh_tame_counts()
end

local function ILU_set_and_test()
	ILU_set_mod_options("rtw6tLg")
	unloadTest()
end

OnMsg.ApplyModOptions = ILU_set_mod_options
--OnMsg.ModsReloaded = ILU_set_and_test
OnMsg.LoadGame = ILU_mod_set_and_cc
OnMsg.GameStarted = ILU_set_and_test

--function OnMsg.NewGame(game)
--	ILU_reset_vars()
--end
