AllSpeciesUpgrades = _G.Mods["rtw6tLg"] or false
local hour_duration = const.HourDuration
local day_duration = const.DayDuration
local resource_scale = const.ResourceScale

MapVar('ILU_max', 150)
MapVar('ILU_Tier_Max', 6)
MapVar('ILU_combat_type',"complex")
MapVar("Species_shrieker_cap",20)
MapVar("Species_scissorhands_cap",10)
MapVar("Species_draka_cap",20)
MapVar("Species_ulfen_cap",20)
MapVar("Species_noth_cap",20)
MapVar("Species_shogu_cap",10)
MapVar("Species_camel_cap",20)
MapVar("Species_gujo_cap",10)
MapVar("Species_dogs_cap",20)
MapVar("Species_tecatli_cap",10)
MapVar("Species_juno_cap",10)
MapVar("EE_hard_cap",false)
MapVar('EE_debug', false)
MapVar('Preg_evo_chance', 20)
MapVar('EE_tier_pivot', {})
MapVar('EE_evo_pivot', {})
MapVar("UnlockedAttackChains", {})
MapVar("GujoAgressionTime", max_int)


local function is_preg_loaded()
	for _, mod in ipairs(ModsLoaded) do
		if mod.id == 'hy8RluH' then
			return true
		end
	end
	return false
end

function Debug_unlock_all_base_attackers()
	UnlockedAttackChains['base_Shrieker_chain'] = true
	UnlockedAttackChains['base_Scissorhand_chain'] = true
	UnlockedAttackChains['base_Skarabei_chain'] = true
	UnlockedAttackChains['base_Glutch_chain'] = true
	UnlockedAttackChains['base_Dragonfly_chain'] = true
	UnlockedAttackChains['base_Juno_chain'] = true
	UnlockedAttackChains['base_Tecatli_chain'] = true
	UnlockedAttackChains['base_Dog_chain'] = true
	UnlockedAttackChains['base_Gujo_chain'] = true
end

function EE_set_mod_options(id)
	id = id or CurrentModId
	if is_preg_loaded() then
		Bkob_Log("Pregnancy Mod detected!\n")
		AddGameNotification('Preg_mod_conflict')
	end
	local options = CurrentModOptions
	if CurrentModId ~= id or not CurrentModOptions then
		return
	end
	Bkob_Log("EE Mod Options applied!\n")
	Bkob_Log('Override tame cap found? ')
	Bkob_Log(options.O_Man_Cap)
	Bkob_Log("\n")
	--if not table.find(MapVars, 'O_Man_Cap') then MapVar("O_Man_Cap", options.O_Man_Cap) end
	if options.O_Man_Cap then
		EE_hard_cap = true
		Species_shrieker_cap=options.ShriekersQuota or 20
		Species_scissorhands_cap=options.ScissorQuota or 10
		Species_draka_cap=options.DrakaQuota or 20
		Species_ulfen_cap=options.UlfenQuota or 20
		Species_noth_cap=options.NothQuota or 20
		Species_shogu_cap=options.ShoguQuota or 10
		Species_camel_cap=options.CamelQuota or 20
		Species_gujo_cap=options.GujoQuota or 10
		Species_dogs_cap=options.DogQuota or 20
		Species_tecatli_cap=options.TecatliQuota or 10
		Species_juno_cap=options.JunoQuota or 10
	else
		EE_hard_cap = false
	end
	ILU_max = options.O_ILU_max or 150
	ILU_Tier_Max = options.O_ILU_max_tier or 6
	Preg_evo_chance = options.preg_evo_chance or 20
	if options.O_simple_combat == true then
		ILU_combat_type = 'simple'
	elseif options.O_simple_combat == false then
		ILU_combat_type = 'complex'
	else
		ILU_combat_type = 'complex'
	end
	ILU_update_armor_hcs()
end

function Bkob_Log(hard_string,var)
	DebugPrint(hard_string)
	if var then
		DebugPrint(var)
	end
	DebugPrint("\n")
	if EE_debug == 'all' then
		print(hard_string)
		print(var)
	end
end


function SavegameFixups.EveryoneLives()
	Bkob_Log("Fixing up a save game due cheat killing a human on an expedition\n")
	for _,exp in ipairs(ExpeditionSites) do
		local survivors = GetValidSurvivorsOnMap()
		if exp.assigned_unit and not MapGetFirst(true, "Human", function(survivor, self) return (survivor.id == "Emily") end) then
			local center = AveragePoint2D(survivors)
			local pos = terrain.FindReachable(center,
				const.tfrPassClass, Human.pfclass,
				const.tfrRandom, InteractionRand(nil, "LandHuman"),
				const.tfrCenterRadius, const.Gameplay.SurvivorSpawnNearObjMaxRadius, 0, false,
				const.tfrWeightRadius, 1, 1000, 3)
			local survivor_def = CharacterDefs[exp.assigned_unit.id]
			local survivor_obj = SpawnHumanFromDef(survivor_def,UIPlayer,pos)
			exp.assigned_unit = false
		end
	end
end

function Attack_mem_cleanup()
	local minions = table.keys(UnlockedInsectMinions)
	local bosses = table.keys(UnlockedInsectBosses)
	for _,minion in ipairs(minions) do
		local chain = Find_evo_chain(minion)
		if chain and chain.id then
			UnlockedAttackChains[chain.id]=true
		end
	end
	for _,boss in ipairs(bosses) do
		local chain = Find_evo_chain(boss)
		if chain and chain.id then
			UnlockedAttackChains[chain.id]=true
		end
	end
	if _G.Mods["ucCehPy"] and Scenario.id == 'ProjectXScenario' then
		if not g_StoryBitStates["AnimalAttack_Initial_Junos"] then
			UnlockedAttackChains[Find_evo_chain('Juno').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Init_Skarab"] then
			UnlockedAttackChains[Find_evo_chain('Skarabei').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Init_ManhuntingGlutch"] then
			UnlockedAttackChains[Find_evo_chain('Glutch_Manhunting').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Init_Dragonfly"] then
			UnlockedAttackChains[Find_evo_chain('Dragonfly').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Init_Tecatli"] then
			UnlockedAttackChains[Find_evo_chain('Tecatli').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Init_Scissor"] then
			UnlockedAttackChains[Find_evo_chain('Scissorhands').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Init_Shriek"] then
			UnlockedAttackChains[Find_evo_chain('Shrieker').id]=true
		end
	else
		if not g_StoryBitStates["AnimalAttack_Initial_Junos"] then
			UnlockedAttackChains[Find_evo_chain('Juno').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Initial_Skarabei"] then
			UnlockedAttackChains[Find_evo_chain('Skarabei').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Initial_ManhuntingGlutch"] then
			UnlockedAttackChains[Find_evo_chain('Glutch_Manhunting').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Initial_Dragonflies"] then
			UnlockedAttackChains[Find_evo_chain('Dragonfly').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Initial_Scissorhands"] then
			UnlockedAttackChains[Find_evo_chain('Scissorhands').id]=true
		end
		if not g_StoryBitStates["AnimalAttack_Init_Shriekers"] then
			UnlockedAttackChains[Find_evo_chain('Shrieker').id]=true
		end
	end
end

-- Because we now use UnitChains to track what the player can be attacked by
function SavegameFixups.MinionBossUnlockToChains()
	Attack_mem_cleanup()
end

function SavegameFixups.MapVarCleanup()
	local flag = false
	if MapVarValues["ILU_max"] ~= 150 then
		ILU_max = MapVarValues["ILU_max"]
		MapVarValues["ILU_max"] = 150
		flag = true
	end
	if MapVarValues["ILU_Tier_Max"] ~= 6 then
		ILU_Tier_Max = MapVarValues["ILU_Tier_Max"]
		MapVarValues["ILU_Tier_Max"] = 6
		flag = true
	end
	if MapVarValues["ILU_combat_type"] ~= "complex" then
		ILU_combat_type = MapVarValues["ILU_combat_type"]
		MapVarValues["ILU_combat_type"] = "complex"
		flag = true
	end
	if MapVarValues["species_shrieker_cap"] ~= 20 then
		Species_shrieker_cap = MapVarValues["species_shrieker_cap"]
		MapVarValues["species_shrieker_cap"] = 20
		flag = true
	end
	if MapVarValues["species_scissorhands_cap"] ~= 10 then
		Species_scissorhands_cap = MapVarValues["species_scissorhands_cap"]
		MapVarValues["species_scissorhands_cap"] = 10
		flag = true
	end
	if MapVarValues["species_draka_cap"] ~= 20 then
		Species_draka_cap = MapVarValues["species_draka_cap"]
		MapVarValues["species_draka_cap"] = 20
		flag = true
	end
	if MapVarValues["species_ulfen_cap"] ~= 20 then
		Species_ulfen_cap = MapVarValues["species_ulfen_cap"]
		MapVarValues["species_ulfen_cap"] = 20
		flag = true
	end
	if MapVarValues["species_noth_cap"] ~= 20 then
		Species_noth_cap = MapVarValues["species_noth_cap"]
		MapVarValues["species_noth_cap"] = 20
		flag = true
	end
	if MapVarValues["species_shogu_cap"] ~= 10 then
		Species_shogu_cap = MapVarValues["species_shogu_cap"]
		MapVarValues["species_shogu_cap"] = 10
		flag = true
	end
	if MapVarValues["species_camel_cap"] ~= 20 then
		Species_camel_cap = MapVarValues["species_camel_cap"]
		MapVarValues["species_camel_cap"] = 20
		flag = true
	end
	if MapVarValues["species_gujo_cap"] ~= 10 then
		Species_gujo_cap = MapVarValues["species_gujo_cap"]
		MapVarValues["species_gujo_cap"] = 10
		flag = true
	end
	if MapVarValues["species_dogs_cap"] ~= 20 then
		Species_dogs_cap = MapVarValues["species_dogs_cap"]
		MapVarValues["species_dogs_cap"] = 20
		flag = true
	end
	if MapVarValues["species_tecatli_cap"] ~= 10 then
		Species_tecatli_cap = MapVarValues["species_tecatli_cap"]
		MapVarValues["species_tecatli_cap"] = 10
		flag = true
	end
	if MapVarValues["species_juno_cap"] ~= 10 then
		Species_juno_cap = MapVarValues["species_juno_cap"]
		MapVarValues["species_juno_cap"] = 10
		flag = true
	end
	if MapVarValues["EE_hard_cap"] ~= false then
		EE_hard_cap = MapVarValues["EE_hard_cap"]
		MapVarValues["EE_hard_cap"] = false
		flag = true
	end
	if MapVarValues["EE_debug"] ~= false then
		EE_debug = MapVarValues["EE_debug"]
		MapVarValues["EE_debug"] = false
		flag = true
	end
	if MapVarValues["preg_evo_chance"] ~= 20 then
		Preg_evo_chance = MapVarValues["preg_evo_chance"]
		MapVarValues["preg_evo_chance"] = 20
		flag = true
	end
	if flag then
		Bkob_Log("EE had to clean up some vars!")
	end
end

function SavegameFixups.ILU_Gujo_fixes()
	Bkob_Log("Fixing up a save game due to older EE version present!\n")
	MapForEach("map", "GujoT3", function(obj,ids)
		if ids[obj.id] then
			obj.id = ids[obj.id]
			obj:ComposeBodyParts()
			obj:InitEntity()
		end
	end)
	for i, animal in ipairs(UIPlayer.labels.TamedAnimals) do
		if not UIPlayer.research_center:IsTechResearched(animal['FieldResearchTech']) then
			CompleteResearch(animal['FieldResearchTech'])
		end
		animal:InitEntity()
	end
end

function rebuild_animals()
	MapForEach("map",'UnitAnimal', function(obj)
		obj:ComposeBodyParts()
		obj:InitEntity()
	end)
end

function SavegameFixups.ILU_Decom_fixes()
	Bkob_Log("Fixing up a save game due to older EE version present!\n")
	rebuild_animals()
end

function SavegameFixups.mass_animal_clean()
	Bkob_Log("Cleaning the map of mass units, and units outside the map!")
	clean_outside_map()
	rebuild_animals()
end

function SavegameFixups.ILU_id_change_fix()
	local to_decom = {
		GujoT5="Gujo_T5",GujoT4="Gujo_T4",GujoT3="Gujo_T3",GujoT2="Gujo_T2",
		Heavily_Mutated_PEx_Skarabei_Brute="Scarab_T5",Mutated_PEx_Skarabei_Brute="Scarab_T4",PEx_Skarabei="Skarabei_Manhunting_Brute",PEx_Skarabei_Brute="Scarab_T3",
		BadTrip_Bloated_Glutch_Stitcher="Glutch_T5",BadTrip_Bloated_Glutch="Glutch_T4",Bloated_Glutch="Glutch_T3",Glutch_Stitcher="Glutch_T2",
		Fast_Frenzied_Fortified_Bomber_Dragonfly="Dragonfly_T5",Frenzied_Fortified_Bomber_Dragonfly="Dragonfly_T4",Frenzied_Bomber_Dragonfly="Dragonfly_T3",Frenzied_Dragonfly="Dragonfly_T2",
		Spellsword_Tecatli="Tecatli_T5",Intelligent_Tecatli="Tecatli_T4",Heat_Reinforced_Tecatli="Tecatli_T3",Entombed_Tecatli="Tecatli_T2",VenomousRaptors="Tecatli_T1_venom",
		Rage_Focused_Scissorhands="Scissorhands_T5",Rage_Fueled_Scissorhand_Duelist="Scissorhands_T4",Brutal_Duelist_Scissorhands="Scissorhands_T3",
		Junoskar="Juno_T6",Too_Angry_Too_Die_Juno="Juno_T5",Hulk_Juno="Juno_T4",Angry_Juno="Juno_T3",
		Sniping_Entropy_Shielded_Shrieker="Shrieker_T5",Plague_Sniper_Shrieker="Shrieker_T4",Entropic_Shrieker="Shrieker_T3",Shrieker_T2="Shrieker_T3"
	}
	local animals = MapGet(true,'UnitAnimal')
	for _,creature in ipairs(animals) do
		local decom_check = to_decom[creature.class]
		if decom_check then
			creature:ChangeClass(decom_check)
			--creature:ComposeBodyParts()
			--creature:InitEntity()
		end
	end
end

function clean_outside_map()
	MapForEach(true, "UnitAnimal", function(unit, play_box)
		local check1, check2, check3
		 if play_box:Dist2(unit:GetPosXYZ()) == 0 or unit:CanBeOutsideMap() then return end
		-- inside helper functions def of map
		unit:CheatDelete()
	end, GetPlayBox())
	MapForEach(true, "Robot", function(unit, play_box)
		 if play_box:Dist2(unit:GetPosXYZ()) == 0 or unit:CanBeOutsideMap() then return end
		unit:CheatDelete()
	end, GetPlayBox())
end


function Coalesce_mass_animals()
	local chains = #Presets.UnitClassChain.Default
	for i=1, chains do
		local units_check = {}
		local chain = Presets.UnitClassChain.Default[i]
		local tier_1 = chain:get_units_by_tier(1)
		if chain and chain.units then
			for _,unit in ipairs(chain.units) do
				units_check[unit.Unit] = true
			end
			local count = MapCount(true,'UnitAnimal',function(unit,ids)
				if ids[unit.class] and unit.forced_aggression_until then
					return true
				else
					return false
				end
			end,units_check)
			local total_EP_scrubbed = 0
			if count > 500 then
				Bkob_Log("Need to delete units in this chain because there are over 500 on the map!",chain.id)
				total_EP_scrubbed = MapForEach(true,'UnitAnimal',function(unit,ids,EP)
					if ids[unit.class] and not unit.is_tamed and not unit:IsDead() then
						unit:CheatDelete()
						EP = EP + unit.EventProgressValue
					end
					return EP
				end,units_check,total_EP_scrubbed)
			end
			if total_EP_scrubbed > 0 then
				local percent = MulDivRound(total_EP_scrubbed, 100, EventProgress)
				Bkob_Log("Coalescing some EP from deleted units into a singel EE attack")
    			local spawn_def = SpawnDefs['Single']
				local instance = {}
				-- the attack code will upgrade these to spawn below whatever the mod option cap is
				instance.SpawnClass = tier_1[1]
				spawn_def = spawn_def:CreateInstance(instance)
				local t = spawn_def:ResolveTarget()
				-- Note this _can_ lead to attacks that are WILDLY stronger than the current player score
				spawn_def:ActivateSpawn(t,{},percent)
			end
		end
	end
end

-- lag avoider......
function OnMsg.NewDayStarted(year, day)
	clean_outside_map()
	Coalesce_mass_animals()
end

function Building:EE_SpawnAround(class,who,name)
	--print("Starting to spawn a unit around a building!")
    local spawn_def = SpawnDefs['spawn_nearby']
	local def = class and g_Classes[class]
	local instance = {}
	instance.SpawnClass = class
	instance.location = self
	instance.name = name or def.DisplayName
	if who and IsKindOf(def,'UnitAnimal') then
		instance.PostSpawn = function(self,obj,target,context)
				if not obj.Tameable then
					--print("Animal can't be tamed")
					return
				end
				obj:CheatResearch()
				obj:Tame()
				Msg("AnimalTamed", nil, obj, true)
				if instance.name then
					obj.DisplayName = instance.name
				end
			end
	end
	spawn_def = spawn_def:CreateInstance(instance)
	local t = spawn_def:ResolveTarget()
	spawn_def:ActivateSpawn(t,{},100)
end

local function add_perks_to_animals(type)
	if type == 'milk' then
		local output = ClassDescendantsList("Unit", function (name, classdef)
			return (classdef.SpeciesGroup == 'species_ulfen' or classdef.SpeciesGroup == 'species_camel' or classdef.SpeciesGroup == 'species_noth') --unit_ent.SpeciesGroup == 'birds'
		end)
		for _,animal in ipairs(output) do
			local def = g_Classes[animal]
			table.insert_unique(def.AnimalPerks, "MilkProducer")
		end
	elseif type == 'eggs' then
		local output = ClassDescendantsList("Unit", function (name, classdef)
			return classdef.SpeciesGroup == 'species_gujo' --unit_ent.SpeciesGroup == 'birds'
		end)
		for _,animal in ipairs(output) do
			local def = g_Classes[animal]
			table.insert_unique(def.AnimalPerks, "EggsProducer")
		end
	end
end

function OnMsg.ModsReloaded()
	if _G.Mods["LH_Milk"] then
		CreateRealTimeThread(function()
			local milk_given = false
			local retry = 3
			while not milk_given and retry > 0 do
				retry = retry - 1
				Sleep(200)
				if Presets.AnimalPerk.Default["MilkProducer"] then
					add_perks_to_animals('milk')
					milk_given = true
				end
			end
		end)
	end
	if _G.Mods["LH_Eggs"] then
		CreateRealTimeThread(function()
			local eggs_given = false
			local retry = 3
			while not eggs_given and retry > 0 do
				retry = retry - 1
				Sleep(200)
				if Presets.AnimalPerk.Default["EggsProducer"] then
					add_perks_to_animals('eggs')
					eggs_given = true
				end
			end
		end)
	end
end

--Input: evo_pivot[unit_id] output: evo unit list
function Build_evo_pivot()
	Bkob_Log("Building Evo Pivot")
	EE_evo_pivot = {}
	local chains = #Presets.UnitClassChain.Default
	for i=1, chains do
		local chain = Presets.UnitClassChain.Default[i]
		if chain and chain.units then
			local evo_chain_list = chain.units
			local max_t = chain:get_max_tier()
			for _,v in ipairs(evo_chain_list) do
				local unit_class = v.Unit
				local evo_tier = v.Tier or 1
				if evo_tier + 1 <= max_t then
					local evos = chain:get_units_by_tier(evo_tier + 1)
					EE_evo_pivot[unit_class] = evos
				else
					EE_evo_pivot[unit_class] = {}
				end
			end
		end
	end
	Bkob_Log("Done building evo pivot table")
end

--Input: tier_pivot[unit_id] output: tier number
function Build_tier_pivot()
	Bkob_Log("Building tier tier pivot table ")
	EE_tier_pivot = {}
	local chains = #Presets.UnitClassChain.Default
	for i=1, chains do
		local chain = Presets.UnitClassChain.Default[i]
		if chain and chain.units then
			--Bkob_Log("Reviewing: ",chain.units)
			for _,unit in ipairs(chain.units) do
				local unit_class = unit.Unit
				local tier = unit.Tier or 1
				--Bkob_Log("Adding this unit to tier pivot table ",unit_class)
				EE_tier_pivot[unit_class] = tier
			end
		end
	end
	Bkob_Log("Done building tier pivot table")
end


function EE_get_evo(unit_class)
	if #EE_evo_pivot == 0 then
		Build_evo_pivot()
	end
	return EE_evo_pivot[unit_class]
end

function EE_get_tier(unit_class)
	if #EE_tier_pivot == 0 then
		Build_tier_pivot()
	end
	return EE_tier_pivot[unit_class]
end

function print_pivots()
	print("EVO PIVOT")
	print(EE_evo_pivot)
	print("TIER PIVOT")
	print(EE_tier_pivot)
end

function build_pivot_tables()
	Build_evo_pivot()
	Build_tier_pivot()
end

function get_tier_Table()
	return EE_tier_pivot
end

function get_evo_Table()
	return EE_evo_pivot
end

function OnMsg.ModsReloaded()
	build_pivot_tables()
end

function Get_unit_classes()
	local to_return = {}
	local chains = Presets.UnitClassChain.Default
	for i=1,#chains do
		if chains[i] then
			to_return[#to_return+1] = chains[i].id
		end
	end
	return to_return
end

-- Need this here instead of my nest mod because we are re-defining robots in this mod
AppendClass.UnitNesting = {
	properties = {
		{ category = "Nest", id = "NestEffectRobo", name = "Nest Proximity Effect", editor = "preset_id", default = "FamiliarGroundRobo", preset_class = "RobotCondition", template = true },
	}
}

AppendClass.UnitSpeciesGroup = {
	properties = {
		{category = "Species", id = "species_name", name = "Species Name", editor = "text", translate = true, default = T(1234567894, "Unknown Species"), help = "What species of creature.",},
		{category = "Species", id = "herd_size_modifier", name = "Tame cap modifier (%)", editor = "number", scale = 'percent', default = 100, help = "How solitary this unit is. < 100 will cause unit to hit tame cap faster. > 100 will let them go above cap",},
		{category = "Species", id = "primary_combat_group", name = "Primary combat group", editor = "choice", default = false, items = function() return CombatGroupsSetItems() end, help = "What combat group should this unit below too initially.",},
		{category = "Species", id = "allied_combat_groups", name = "Allied Combat Groups", editor = "string_list", default = {}, help = "Combat groups that should not be attacked",},
		{category = "Species", id = "nest_class", name = "Species Nest", editor = "choice", default = false, items = function() return ClassDescendantsList('TerritorialNest') end , help = "What nest is related to this species.",},
		{category = "Species", id = "intelligence", name = "Intelligence", editor = "choice", default = 'primal', items = {"primal","sub-sentient",'sentient','coordinated'} , help = "How complicated this species can behave.",},
		{category = "Species", id = "evo_chains", name = "Evolution Chains", editor = "string_list", default = false, modifiable = true, items = function() return Get_unit_classes() end, },
	},
}

function Get_unit_species_preset()
	local to_return = {}
	local entries = #Presets.UnitSpeciesGroup.Default+1
	for i = 1, entries do
		local species = Presets.UnitSpeciesGroup.Default[i]
		if species.primary_combat_group then
			table.insert_unique(to_return, species.id)
		end
	end
	return to_return
end

DefineClass.UnitEvoInstance = {
	__parents = { "PropertyObject" },
	properties = {
		{ category = "Unit", id = "Unit", name = "Unit", editor = "choice", default = false, items = function (self) return GetSpawnClasses() end,},
		{ category = "Unit", id = "Tier", name = "Unit Tier", default = 1, editor = "number", help = "What tier of unit (This is tracked to ensure players can limit the max individual difficulty of a save by limiting based on tier)", },
	},
}

-- Specific 
DefineClass.UnitClassChain = {
	__parents = {"ListPreset"},
	properties = {
		{ category = "Evolution",	id = "units", name = "Units in Chain", editor = "nested_list", default = false, modifiable = true, base_class = "UnitEvoInstance", inclusive = true, auto_expand = true },	
	},
}

function UnitClassChain:get_units_by_tier(tier)
	local to_return = {}
	for _,unit in ipairs(self.units) do
		if unit.Tier == tier then
			to_return[#to_return+1] = unit.Unit
		end
	end
	return to_return
end

function UnitClassChain:get_correct_evo(ep)
	local to_return = {}
	local max_count = ILU_max
	local min_tier = self:get_min_tier()
	local max_tier = self:get_max_tier()
	local found = false
	local retry = 20
	local cur_tier = min_tier
	while not found and retry > 0 do
		retry = retry -1
		local this_tier_units = self:get_units_by_tier(cur_tier)
		for _,animal in ipairs(this_tier_units) do
			if g_Classes[animal].EventProgressValue * max_count > ep then
				to_return[#to_return+1] = animal
				found = true
			end
		end
		cur_tier = cur_tier + 1
		-- if the EP given is more than the highest tier units cap value
		if cur_tier == max_tier and not found then
			to_return[#to_return+1] = table.rand(self:get_units_by_tier(cur_tier))
			found = true
		end
	end
	return to_return
end

function UnitClassChain:get_min_tier()
	local to_return = 0
	for _,unit in ipairs(self.units) do
		if unit.Tier < to_return then
			to_return = unit.Tier
		end
	end
	return to_return
end

function UnitClassChain:get_max_tier()
	local to_return = 0
	for _,unit in ipairs(self.units) do
		if unit.Tier > to_return then
			to_return = unit.Tier
		end
	end
	return to_return
end

DefineModItemPreset("UnitClassChain", { EditorName = "Evolution Chain", EditorSubmenu = "Animals" })

function UnitSpeciesGroup:ally_with(combat_group)
	local found = false
	for _, group in ipairs(self.allied_combat_groups) do
		if group == combat_group then
			found = true
		end
	end
	if not found then 
		self.allied_combat_groups[#self.allied_combat_groups+1]= combat_group
	end
end

function UnitSpeciesGroup:betrayed_by(combat_group)
	local found = false
	for _, group in ipairs(self.allied_combat_groups) do
		if group == combat_group then
			found = true
		end
	end
	if found then 
		self.allied_combat_groups[#self.allied_combat_groups+1]= combat_group
	end
end

function UnitSpeciesGroup:change_primary_combat_group(combat_group)
	if self.primary_combat_group ~= combat_group then
		self.primary_combat_group = combat_group
	end
	-- todo map through each non-player controlled unit, check if they have the old primary comabt group. if so, change it to the new one.
	MapForEach(true,'Unit',function(unit)
		if IsKindOf(unit,'UnitAnimal') and unit.is_tamed then return end

		if unit.CombatGroup == self.primary_combat_group and unit.command_center then
			unit.CombatGroup = combat_group
		end
	end)
end

function combat_units_with_false()
	local test_array = {false}
	local combat_units = table.keys(ClassDescendants("UnitCombat"), true)
	return table.append(test_array, combat_units)
end

function Find_evolution(classdef)
	--print("Finding evolution for: ",classdef.class)
	local possible
	local cur_tier = EE_get_tier(classdef.class) or 1
	if cur_tier >= ILU_Tier_Max then
		--print("evolution not allowed to spawn. Reverting evolution to what we where given!",'')
		return classdef.class
	end
	if classdef.Tameable and classdef.NewbornClass then
		--print("Unit is tameable and has a newborn class!")
		possible = classdef.NewbornClass or classdef.class
	else
		local possible_ups = EE_get_evo(classdef.class)
		--print("Doing it the pivot table way!")
		if #possible_ups > 0 then
			possible = table.rand(possible_ups)
		else
			possible = classdef.class
		end
	end
	--print(EE_get_tier(possible))
	--print(ILU_Tier_Max)
	if EE_get_tier(possible) > ILU_Tier_Max then
		--print("evolution not allowed to spawn. Reverting evolution to what we where given!",'')
		possible = classdef.class
	else
		--print("Giving back this evolution: ",possible)
	end
	return possible
end

-------------------------- Mini FUNCTIONS ----------------------------------



local function build_output(final_full_table)
	Bkob_Log("Building final spawn table\n")
	local additional_class_list = {}
	local final_main_name = ''
	for i = 1, #final_full_table do
		if i == 1 then
			final_main_name = final_full_table[i]['now']
		else
			additional_class_list[i - 1] = { id = final_full_table[i]['now'], weight = final_full_table[i]['weight'] }
		end
	end
	return final_main_name, additional_class_list
end

-- This is already getting the id of the UnitSpeciesGroup
function carrying_capacity(species)
	Bkob_Log("Getting carrying capacity of a species: ",species)
	local herd_mod = Presets.UnitSpeciesGroup.Default[species].herd_size_modifier or 100
	local max
	if EE_hard_cap then
		max = MapVarValues[species] --get_preg_quota(species)
	end
	if not max then
		max = DivRound(DivRound(ILU_max or 150, 6) * herd_mod, 100)
	end
	Bkob_Log("The maxx for this species is: ", max)
	return max or 30 -- just in case we **** a brick
end

---------------------- MAJOR FUNCTIONS -----------------------------

function new_preg_rate(specific_species, rate)
	local species = specific_species.SpeciesGroup
	if not Presets.UnitSpeciesGroup.Default[species] then return rate end
	Bkob_Log("Preg rate for ",specific_species)
	-- default to 60
	local base_rate = rate or specific_species.DailyPregnancyChance or 60
	local count = 0
	for _,v in ipairs(UIPlayer.labels.TamedAnimals) do
		if v.SpeciesGroup == species then
			count = count + 1
		end
	end
	if count < 2 then return rate or 60 end
	local no = count or 0
	local cc = carrying_capacity(species)
	local fin_mod = 100 * (cc - no) / cc
	local to_return = fin_mod * base_rate / 100
	local override = false
	if override then
		to_return = 0
	end
	return to_return
end

function ILU_update_armor_hcs()
	Bkob_Log("Updating the armor HCs")
	local combat_type = ILU_combat_type
	local flip_table = {}
	if not combat_type then
		return
	elseif combat_type == 'simple' then
		flip_table = {
			{ id = 'armor_leather_complex',   flip = 'armor_leather_simple' },
			{ id = 'armor_vleather_complex',  flip = 'armor_vleather_simple' },
			{ id = 'armor_synth_complex',     flip = 'armor_synth_simple' },
			{ id = 'armor_badCarbon_complex', flip = 'armor_badCarbon_simple' },
			{ id = 'armor_carbon_complex',    flip = 'armor_carbon_simple' },
		}
	elseif combat_type == 'complex' then
		flip_table = {
			{ flip = 'armor_leather_complex',   id = 'armor_leather_simple' },
			{ flip = 'armor_vleather_complex',  id = 'armor_vleather_simple' },
			{ flip = 'armor_synth_complex',     id = 'armor_synth_simple' },
			{ flip = 'armor_badCarbon_complex', id = 'armor_badCarbon_simple' },
			{ flip = 'armor_carbon_complex',    id = 'armor_carbon_simple' },
		}
	end
	local found_flip = true
	while found_flip do
		found_flip = false
		MapForEach(true, "Human", function(unit, was_flipped)
			for _, v in ipairs(flip_table) do
				for _, effect in ipairs(unit.status_effects or empty_table) do
					if IsKindOf(effect, "ModItemHealthCondition") and effect.id == v['id'] then
						unit:RemoveHealthCondition(v['id'])
						unit:AddHealthCondition(v['flip'], 'combatflip')
						found_flip = true
					end
				end
			end
		end)
	end
end

function GujosStartAggressive()
	GujoAgressionTime = GameTime() + (7*day_duration)
end

function Attack_instance_fill(base_minion,other_s_flag,min_tier,per_prog)
	-- determine which attack chain will be primary/secondary/tertiary based on inputs
	local base_chain
	local base_c_def
	per_prog = per_prog or 100
	if base_minion then
		base_chain = Find_evo_chain(base_minion).id
		UnlockedAttackChains[base_chain]=true
		base_c_def = Presets.UnitClassChain.Default[base_chain]
	end
	local r = 6
	-- hard code to not allow dogs to be used as the base
	while (not base_chain or base_chain == 'base_Dog_chain') and r > 0 do
		r = r - 1
		base_chain = table.rand(table.keys(UnlockedAttackChains))
		base_c_def = Presets.UnitClassChain.Default[base_chain]
		if base_chain == 'base_Dog_chain' then
			base_chain = false
		end
	end
	local second_chain
	local third_chain
	local second_c_def
	local third_c_def
	if other_s_flag then
		r = 6
		while not second_chain and r > 0 do
			r = r - 1
			second_chain = table.rand(table.keys(UnlockedAttackChains))
			second_c_def = Presets.UnitClassChain.Default[second_chain]
			if second_chain == base_chain then
				second_chain = false
			end
		end
		r = 6
		while not third_chain and r > 0 do
			r = r - 1
			third_chain = table.rand(table.keys(UnlockedAttackChains))
			third_c_def = Presets.UnitClassChain.Default[third_chain]
			if third_chain == base_chain then
				third_chain = false
			end
		end
	end
	--- Get the first unit of the chain, based on tier 0 or input var
	min_tier = min_tier or 1
	local base_unit = table.rand(base_c_def:get_units_by_tier(min_tier))
	local second_unit
	local third_unit
	if other_s_flag then
		second_unit = table.rand(second_c_def:get_units_by_tier(min_tier))
		third_unit = table.rand(third_c_def:get_units_by_tier(min_tier))
	end
	local temp_list = {}
	--print("Main Animal: ",base_unit)
	if other_s_flag then
		--print('Added Animal 1: ',second_unit)
		--print('Added Animal 2: ',third_unit)
		temp_list[1]={ second_unit, AnimalDefs[second_unit]:GetProperty("SpawnDefWeight")}
		temp_list[2]={ third_unit, AnimalDefs[third_unit]:GetProperty("SpawnDefWeight")}
	end
	return check_count_and_upgrade(base_unit,temp_list,per_prog)
end

-- classdef UnitEvolution Unit Component + EP based upgrading
function check_count_and_upgrade(start_animal, additionalClassList, progress_percent)
	Bkob_Log("non-robot attack incoming\n")
	progress_percent = progress_percent or 100
	local actual_EP_Bank = DivRound((progress_percent * EventProgress), 100)
	local max_count = ILU_max
	local min_average_cost = DivRound(actual_EP_Bank, max_count)
	local start_ep = g_Classes[start_animal].EventProgressValue --lookupEP(start_animal)
	local temp_class_list = {
		{ start = start_animal, weight = 100, now = start_animal, up_count = 0},
	}
	local sum_weight = 100
	local progress_and_weight = start_ep * 100
	for i = 1, #additionalClassList do
		local this_ep = g_Classes[additionalClassList[i][1]].EventProgressValue --lookupEP(additionalClassList[i][1])
		local expansion = {}
		expansion['now'] = additionalClassList[i][1]
		expansion['start'] = additionalClassList[i][1]
		expansion['weight'] = additionalClassList[i][2]
		expansion['up_count'] = 0
		--expansion['ep'] = this_ep
		sum_weight = sum_weight + additionalClassList[i][2]
		progress_and_weight = progress_and_weight + this_ep * additionalClassList[i][2]
		temp_class_list[i + 1] = expansion
	end
	Bkob_Log('attack wave initial spawning',temp_class_list)
	local this_defs_avg = DivRound(progress_and_weight, sum_weight)
	if this_defs_avg > min_average_cost then return build_output(temp_class_list) end
	local max_loops = 40
	local up_count_cap = 1
	local max_tier = ILU_Tier_Max or 6
	local i = 0
	local capped = 0
	local evolution = false
	Bkob_Log('Length of spawn list: ',#temp_class_list)
	while i < max_loops and this_defs_avg < min_average_cost and capped < #temp_class_list do
		i = i + 1
		Bkob_Log('Loop: ',i)
		Bkob_Log('Capped evolutions: ',capped)
		evolution = false
		for _, v in ipairs(temp_class_list) do
			Bkob_Log('Checking this entry: ',v)
			local v_def = g_Classes[v['now']]
			-- Find_evolution already detects classes above player option tier cap.
			-- So if next == v['now'], we should consider this entry maxxed out 
			local next = Find_evolution(v_def)
			local maybe_evo = g_Classes[next]
			local already_loop_capped = v['up_count'] >= up_count_cap
			if already_loop_capped then
				Bkob_Log("Entry loop evo capped:")
				goto continue
			end
			local same_creature = v['now'] == next
			if same_creature then
				Bkob_Log("Got same creature back from evo code!")
				capped = capped + 1
				goto continue
			end
			evolution = maybe_evo
			v['now'] = evolution.class
			v['up_count'] = v['up_count'] + 1
			v['ep'] = evolution.EventProgressValue
			local weighted_ep_old = DivRound(v['weight'] * v_def.EventProgressValue, sum_weight)
			local weighted_ep_new = DivRound(v['weight'] * evolution.EventProgressValue, sum_weight)
			this_defs_avg = this_defs_avg - weighted_ep_old + weighted_ep_new
			Bkob_Log('Entry is now: ',v)
			-- this checks if the current tier of evo unit is the max option; or we have run out of evos
			local tier_capped = (EE_get_tier(evolution.class) == max_tier) or (Find_evolution(evolution) == evolution.class)
			if tier_capped then
				Bkob_Log("This evolution is now capped!")
				capped = capped + 1
			end
			::continue::
		end
		if not evolution then
			up_count_cap = up_count_cap + 1
			Bkob_Log('Did not find an evolution this loop. Can now evolve each instance this many times: ',up_count_cap)
		end
	end
	return build_output(temp_class_list)
end

-- robot attack upgrader
function ILU_ActivateAttackDropshipSpawnDefs(robot_spawndef, main_unit, added_units, progress_mul)
	Bkob_Log("Robot attack incoming\n")
	local robot_spawn_def = SpawnDefs[robot_spawndef]
	if not robot_spawn_def then return end
	local dropship_spawn_def = SpawnDefs["Attack_Dropship"]
	if not dropship_spawn_def then return end
	progress_mul = progress_mul or 100
	local addedClassList = {}
	local instance = {}
	instance.SpawnClass, addedClassList = check_count_and_upgrade(main_unit, added_units)
	instance.AdditionalClassList = {}
	for i = 1, #addedClassList do
		instance.AdditionalClassList[#instance.AdditionalClassList + 1] = { addedClassList[i]['id'], addedClassList[i]
			['weight'] }
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
	local dropships = Min(DivCeil(count, MaxInvadersPerDropship), MaxDropshipsPossible)
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
	Bkob_Log("EE animal trying to generate limited resources")
	if self:IsTamed() then
		local happiness_pct = Min(self.Happiness / 1000, 100)
		for _, res_amount in ipairs(self.ProduceResources) do
			local amount = res_amount.amount
			local happiness_mod = MulDivRound(amount, happiness_pct, 100)
			if happiness_mod > resource_scale then
				amount = amount + RoundResourceAmount(happiness_mod)
			end
			if UIPlayer:GetStoredResAmount(res_amount.resource) >= const.ResourceScale * 300 then
				self:AddHealthCondition('tamed_constipated', 'too_many_resources')
			elseif self:HasHealthCondition('tamed_constipated') then
				self:RemoveHealthCondition('tamed_constipated', 'resources_normalized')
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
	Bkob_Log("EE animal done generating resources (maybe)")
end

local function check_evo_counts(init,fin)
	local found = false
	local retry = 10
	while not found or retry > 0 do
		retry = retry - 1
		local init_tier = EE_get_tier(init) or 1
		local fin_tier = EE_get_tier(fin) or 1
		return fin_tier - init_tier
	end
end

function Find_evo_chain(unit_id)
	local chains = #Presets.UnitClassChain.Default
	for i=1, chains do
		local chain = Presets.UnitClassChain.Default[i]
		if chain and chain.units then
			for _,unit in ipairs(chain.units) do
				if unit.Unit == unit_id then return chain end
			end
		end
	end
	return false
end

function find_newborn_class(unit)
	local evo = unit.NewbornClass
	local chance = Preg_evo_chance or 100
	if evo and AsyncRand(100) < chance then
		return evo
	else
		return unit.class
	end
end

-- Tests the externally (external from this code file) called functions
-- loop through all species defined in evo chains
-- Make sure they can all evolve properly
-- Then loop through all base game attack species and test their evolutions at various EP levels
function EE_QA(full_debug)
	full_debug = full_debug or false
	EE_Instantiate()
	-- so logs print to screen
	EE_debug = full_debug
	build_pivot_tables()
	local species = table.keys(EE_evo_pivot)
	for _,v in ipairs(species) do
		Find_evolution(g_Classes[v])
	end
	--CheatPlaceAllUnitAnimals(MapGetFirst('map','LandingCapsuleMarker'))
	local species = {
		-- UnitAnimals
		'Skarabei_Manhunting','Dragonfly','Shrieker_Manhunting','Scissorhands','Juno','Glutch_Manhunting',
		-- robot units
		'LightHostileRobot_LVL1','HostileRobot_Scout_LVL1','HeavyHostileRobot_LVL1','Demo_1','HostileCombatQuadcopter_LVL1','HostileCrawler_LaserGun','HostileCrawler_MachineGun'
	}
	local EP_nums = {100, 800, 1200, 5000, 15000, 30000, 75000, 140000,300000}
	local old_EP = EventProgress
	for _,s in ipairs(species) do
		local evo_chain = Find_evo_chain(s)
		for _,no in ipairs(EP_nums) do
			EventProgress = no
			Bkob_Log('unit: ',s)
			Bkob_Log('At this EP: ',no)
			local main, addl = check_count_and_upgrade(s, {}, 100)
			local correct_evo = evo_chain:get_correct_evo(no)
			if correct_evo ~= main then
				Bkob_Log("Evolved as expected, evolving x time: "..check_evo_counts(s,main))
			else
				--print(s..' at '..no..' ep ')
				--print("Something went wrong! SpawnDef unit: "..main..' Chain Evo unit: '..correct_evo)
			end
		end
	end
	EventProgress = old_EP
	--print("Testing animal attack storybits!")
	EE_debug = true
	CreateRealTimeThread(function()
		EP_nums = {800,5000,12000,60000,140000}
		local sleep_count = 5000
		for _,no in ipairs(EP_nums) do
			local spawned = false
			local deleted = false
			EventProgress = NA_tutorial
			local events = {'AnimalAttack_Initial_Scissorhands','AnimalAttack_Initial_Dragonflies','AnimalAttack_Initial_Shriekers',
				'AnimalAttack_Initial_Junos','AnimalAttack_Initial_ManhuntingGlutch','OrbitalRadio_CamelAttack','OrbitalRadio_GujoAttack',
				'OrbitalRadio_NothAttack','OrbitalRadio_ScarabAttack','OrbitalRadio_ShoguAttack','OrbitalRadio_TecatliAttack',
				'OrbitalRadio_UlfenAttack','RobotAttack_Single_EarlyGame','RobotAttack_Single_MidGame','RobotAttack_Single_LateGame'
			}
			for _,sb in ipairs(events) do
				Sleep(sleep_count * 2)
				EventProgress = no
				local evo_chain = Find_evo_chain('Glutch_Manhunting')
				local correct_evo = evo_chain:get_correct_evo(no)
				local main, addl = check_count_and_upgrade('Glutch_Manhunting', {}, 100)
				while not spawned and not deleted do
					Sleep(sleep_count)
					if not spawned then
						EventProgress = no
						ForceActivateStoryBit(sb)
						spawned = true
						Sleep(sleep_count)
					elseif spawned then
						--print("Already spawned this sb")
					end
					if spawned and not deleted then
						local invaders = MapCount("map", "UnitInvader")
						if invaders > 0 then
							--print("There are invaders! Killing em")
							MapForEach("map","UnitInvader",function(unit) unit:CheatDelete() end)
							deleted = true
						end
					end
				end
				--print("Onto the next SB")
				spawned = false
				deleted = false
			end
		end
	end)
end

function EE_Instantiate()
	build_pivot_tables()
end

function EE_init_and_set_options(id)
	EE_Instantiate()
	EE_set_mod_options(id)
end

OnMsg.ApplyModOptions = EE_init_and_set_options
OnMsg.LoadGame = Attack_mem_cleanup
OnMsg.GameStarted = EE_Instantiate
-- Seed/migrate UnlockedAttackChains on a fresh new game too. Attack_mem_cleanup
-- was only wired to LoadGame, which never fires for a brand-new game, so a fresh
-- game left UnlockedAttackChains empty; a no-Prerequisite AnimalAttack_Mixed could
-- then reach Attack_instance_fill with no unlocked chain and index a nil chain def.
-- GameStarted fires for both new and loaded games once Game/Scenario are ready
-- (unlike NewGame, which races MapVar init, or EE_Instantiate, which also runs at
-- main-menu ApplyModOptions where Scenario is nil). OnMsg appends, so this runs
-- alongside EE_Instantiate; the extra run on load is idempotent.
OnMsg.GameStarted = Attack_mem_cleanup
