AllSpeciesUpgrades = _G.Mods["rtw6tLg"] or false
local title = "Insects Level up All Species"
local separator = " :: "
local debugMSG = {"New Game","Game Started"}


local base_table = {
	{id="Juno",stop=nil,next="Juno_Brute"},
	{id="Juno_Brute",stop=nil,next="Angry_Juno"},
	{id="Angry_Juno",stop=nil,next="Hulk_Juno"},
	{id="Hulk_Juno",stop=nil,next="Too_Angry_Too_Die_Juno"},
	{id="Too_Angry_Too_Die_Juno",stop=nil,next="Junoskar"},
	{id="Junoskar",stop="Juno",next=nil},
	{id="VenomousRaptors",stop=nil,next="Tecatli"},
	{id="Tecatli",stop=nil,next="Entombed_Tecatli"},
	{id="Entombed_Tecatli",stop=nil,next="Heat_Reinforced_Tecatli"},
	{id="Heat_Reinforced_Tecatli",stop=nil,next="Intelligent_Tecatli"},
	{id="Intelligent_Tecatli",stop=nil,next="Spellsword_Tecatli"},
	{id="Spellsword_Tecatli",stop="Tecatli",next=nil},
	{id="Dragonfly",stop=nil,next="Frenzied_Dragonfly"},
	{id="Frenzied_Dragonfly",stop=nil,next="Frenzied_Bomber_Dragonfly"},
	{id="Frenzied_Bomber_Dragonfly",stop=nil,next="Frenzied_Fortified_Bomber_Dragonfly"},
	{id="Frenzied_Fortified_Bomber_Dragonfly",stop=nil,next="Fast_Frenzied_Fortified_Bomber_Dragonfly"},
	{id="Fast_Frenzied_Fortified_Bomber_Dragonfly",stop="Dragonfly",next=nil},
	{id="Glutch_Manhunting",stop=nil,next="Glutch_Stitcher"},
	{id="Glutch_Stitcher",stop=nil,next="Bloated_Glutch"},
	{id="Bloated_Glutch",stop=nil,next="BadTrip_Bloated_Glutch"},
	{id="BadTrip_Bloated_Glutch",stop=nil,next="BadTrip_Bloated_Glutch_Stitcher"},
	{id="BadTrip_Bloated_Glutch_Stitcher",stop="Glutch",next=nil},
	{id="Skarabei_Manhunting_Starving",stop=nil,next="Skarabei"},
	{id="Skarabei",stop=nil,next="Skarabei_Manhunting"},
	{id="Skarabei_Manhunting",stop=nil,next="Skarabei_Manhunting_Poisonous"},
	{id="Skarabei_Manhunting_Poisonous",stop=nil,next="Skarabei_Manhunting_Explosive"},
	{id="Skarabei_Manhunting_Explosive",stop=nil,next="Skarabei_Manhunting_Brute"},
	{id="Skarabei_Manhunting_Brute",stop=nil,next="PEx_Skarabei"},
	{id="PEx_Skarabei",stop=nil,next="PEx_Skarabei_Brute"},
	{id="PEx_Skarabei_Brute",stop=nil,next="Mutated_PEx_Skarabei_Brute"},
	{id="Mutated_PEx_Skarabei_Brute",stop=nil,next="Heavily_Mutated_PEx_Skarabei_Brute"},
	{id="Heavily_Mutated_PEx_Skarabei_Brute",stop="Skarabei",next=nil},
	{id="Shrieker_Hatchling",stop=nil,next="Shrieker_Manhunting"},
	{id="Shrieker_Manhunting_Hatchling",stop=nil,next="Shrieker_Manhunting"},
	{id="Shrieker",stop=nil,next="Shrieker_Manhunting"},
	{id="Shrieker_Manhunting",stop=nil,next="Shrieker_Manhunting_Mother"},
	{id="Shrieker_Manhunting_Mother",stop=nil,next="Entropic_Shrieker"},
	{id="Entropic_Shrieker",stop=nil,next="Plague_Sniper_Shrieker"},
	{id="Plague_Sniper_Shrieker",stop=nil,next="Sniping_Entropy_Shielded_Shrieker"},
	{id="Sniping_Entropy_Shielded_Shrieker",stop="Shrieker",next=nil},
	{id="Scissorhands_Hatchling_Starving",stop=nil,next="Scissorhands"},
	{id="Scissorhands_Hatchling_Nesting",stop=nil,next="Scissorhands"},
	{id="Scissorhands_Nesting",stop=nil,next="Scissorhands"},
	{id="Scissorhands_Hatchling",stop=nil,next="Scissorhands"},
	{id="Scissorhands",stop=nil,next="Scissorhands_Brute"},
	{id="Scissorhands_Brute_Nesting",stop=nil,next="Scissorhands_Brute"},
	{id="Scissorhands_Brute",stop=nil,next="Brutal_Duelist_Scissorhands"},
	{id="Brutal_Duelist_Scissorhands",stop=nil,next="Rage_Fueled_Scissorhand_Duelist"},
	{id="Rage_Fueled_Scissorhand_Duelist",stop=nil,next="Rage_Focused_Scissorhands"},
	{id="Rage_Focused_Scissorhands",stop="Scissor",next=nil},
	{id="dog_T1",stop=nil,next="dog_T3"},
	{id="dog_T3",stop=nil,next="dog_T4"},
	{id="dog_T4",stop=nil,next="dog_T5"},
	{id="dog_T5",stop="dog",next=nil},
	-- Gujo evos
	{id="Gujo",stop=nil,next=nil},
	{id="GujoT2",stop=nil,next=nil},
	{id="GujoT3",stop=nil,next=nil},
	{id="GujoT4",stop=nil,next=nil},
	{id="GujoT5",stop="dog",next=nil},
	--light assault robot
	{id="LightHostileRobot_LVL1",stop=nil,next='LightHostileRobot_LVL2'},
	{id="LightHostileRobot_LVL2",stop=nil,next='LightHostileRobot_LVL3'},
	{id="LightHostileRobot_LVL3",stop=nil,next='LightHostileRobot_LVL4'},
	{id="LightHostileRobot_LVL4",stop=nil,next='LightHostileRobot_LVL5'},
	{id="LightHostileRobot_LVL5",stop='Light',next=nil},
	-- heavy assault robot
	{id="HeavyHostileRobot_LVL1",stop=nil,next='HeavyHostileRobot_LVL2'},
	{id="HeavyHostileRobot_LVL2",stop=nil,next='HeavyHostileRobot_LVL3'},
	{id="HeavyHostileRobot_LVL3",stop=nil,next='HeavyHostileRobot_LVL4'},
	{id="HeavyHostileRobot_LVL4",stop=nil,next='HeavyHostileRobot_LVL5'},
	{id="HeavyHostileRobot_LVL5",stop='Heavy',next=nil},
	-- monk robot
	{id="HostileRobot_Monk_LVL1",stop=nil,next='HostileRobot_Monk_LVL2'},
	{id="HostileRobot_Monk_LVL2",stop=nil,next='HostileRobot_Monk_LVL3'},
	{id="HostileRobot_Monk_LVL3",stop=nil,next='HostileRobot_Monk_LVL4'},
	{id="HostileRobot_Monk_LVL4",stop=nil,next='HostileRobot_Monk_LVL3'},
	{id="HostileRobot_Monk_LVL5",stop='Monk',next=nil},
	--scout robot
	{id="HostileRobot_Scout_LVL1",stop=nil,next='HostileRobot_Scout_LVL2'},
	{id="HostileRobot_Scout_LVL2",stop=nil,next='HostileRobot_Scout_LVL3'},
	{id="HostileRobot_Scout_LVL3",stop=nil,next='HostileRobot_Scout_LVL4'},
	{id="HostileRobot_Scout_LVL4",stop=nil,next='HostileRobot_Scout_LVL5'},
	{id="HostileRobot_Scout_LVL5",stop='Scout',next=nil},
	-- sup art robot
	{id="HostileCrawler_LaserGun",stop=nil,next='Crawl_APC_LVL1'},
	{id="HostileCrawler_MachineGun",stop=nil,next='Crawl_APC_LVL1'},
	{id="Crawl_APC_LVL1",stop=nil,next='Crawl_APC_LVL2'},
	{id="Crawl_APC_LVL2",stop=nil,next='Crawl_APC_LVL3'},
	{id="Crawl_APC_LVL3",stop='Crawl_APC',next=nil},
	-- art art robot
	{id="Crawl_Cannon_T1",stop=nil,next='Crawl_Cannon_T2'},
	{id="Crawl_Cannon_T2",stop=nil,next='Crawl_Cannon_T3'},
	{id="Crawl_Cannon_T3",stop='Cannon',next=nil},
	-- QuadCopters
	{id="HostileCombatQuadcopter_LVL1",stop=nil,next='HostileCombatQuadcopter_LVL2'},
	{id="HostileCombatQuadcopter_LVL2",stop=nil,next='HostileCombatQuadcopter_LVL3'},
	{id="HostileCombatQuadcopter_LVL3",stop=nil,next='HostileCombatQuadcopter_LVL4'},
	{id="HostileCombatQuadcopter_LVL4",stop=nil,next='HostileCombatQuadcopter_LVL5'},
	{id="HostileCombatQuadcopter_LVL5",stop='Quad',next=nil},
}

local table organs = {
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
	for _,v in ipairs(base_table) do
		local to_check = v['id']
		if mod_item_id == to_check then
			return true
		end
	end
	return false
end

function unloadTest()
	if not is_px_loaded() then
		print("Project-X not found, checking for organ remnants")
		local found_organs = false
		for _,mod in ipairs(ModsLoaded) do 
			if mod.id == 'rtw6tLg' then
				mod:ForEachItem(function(mc)
					if is_animal(mc.id) then
						local local_id = mc.id
						if are_organs_present(mc.ButcherResources) then
					 		print("Organs found in animal: ",mc.id)
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
	_G.ILU_flipped = false 
	MapForEach(true, "Human", function(unit,was_flipped)
		print("Checking: ",unit.id)
		for _,v in ipairs(flip_table) do
			for _, effect in ipairs(unit.status_effects or empty_table) do
				if IsKindOf(effect, "ModItemHealthCondition") and effect.id == v['id'] then
					print("Swapping a condition for the correct one (Based on mod option)")
					unit:RemoveHealthCondition(v['id'])
					unit:AddHealthCondition(v['flip'],'combatflip')
					print("Trying to mark var as flipped!")
					_G.ILU_flipped = true
				end
			end
		end
	end)
	print("Did I flip something? ",_G.ILU_flipped)
	return _G.ILU_flipped
end

function ILU_update_armor_hcs()
	print("Armor HealthCheck Flips")
	local flip_table = {}
	print(_G.ILU_combat_type)
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
	print("Made the table!")
	_G.ILU_flipped = true -- setting true to force the first loop
	while _G.ILU_flipped do
		flip_flop(flip_table)
		if _G.ILU_flipped then
			print("Gotta do it again in case I missed something!")
		end
	end
end

function ilu_set_map_vars()
	local all_vars = {
		{name="ILU_max",init=150},
		{name="ILU_combat_type",init="complex"},
		{name="ILU_flipped",init=false}
	}
	print("Checking what ILU vars I need to add!")
	for _, var in ipairs(all_vars) do
		if MapVarValues[var['name']] == nil then
			MapVar(var['name'],var['init'])
			print("I added ",var['name'],' to MapVars!')
		else
			print("I did not add ",var['name'])
		end
	end
	print("Done! See above logs for which ones I added")
end

local function ApplyAnimalSet(id)
	id = id or CurrentModId
	if CurrentModId ~= id or not CurrentModOptions then return end
	ilu_set_map_vars() -- make sure we have these started
	local options = CurrentModOptions
	print(options.O_simple_combat)
	_G.ILU_max = options.O_ILU_max
	if options.O_simple_combat == true and _G.ILU_combat_type == "complex" then
		_G.ILU_combat_type = "simple"
		ILU_update_armor_hcs()
	elseif options.O_simple_combat == false and _G.ILU_combat_type == "simple" then
		_G.ILU_combat_type = "complex"
		ILU_update_armor_hcs()
	end
	--armorSwap(options.simple_combat)
	--unloadTest() -- Want to call this to verify mod won't break
end


function ILU_QA()
	print(" ")
	print(" ")
	print(" ")
	EventProgress = 1000000 / 40
	local start = false
	local dropship_spawn_def = nil
	local instance = {}
	local robot_spawn_def = SpawnDefs['Single_Robots']
	for _,v in ipairs(base_table) do
		print("Checking this name: ",v['id'])
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

if FirstLoad then
	ApplyAnimalSet("rtw6tLg")
end

local function lookupEP(name)
	print("Checking this name: ",name)
	local classdef = g_Classes[name or false]
	local ep = classdef.EventProgressValue
	return ep
end

local function getNext(name,og_name)
	--[[print(base_table)]]
	for _,v in ipairs(base_table) do
		--[[if v['stop'] == og_name then]]
		if v['stop'] then
			if string.match(og_name, v['stop']) then
				print("Found a stop for ",v['stop'])
				return nil
			end
		elseif v['id'] == name then
			print('Name:',v['id'],' next:',v['next'],' Stop:',v['stop'])
			return v['next']
		end
	end
	return nil
end

local function upgrade(temp_class_list,flag)
	flag = flag or nil
	local upgrade_flag = nil
	local fully_upgraded = {}
	local max_upgrades = 1
	for _,v in ipairs(temp_class_list) do
		if v['up_count'] > max_upgrades then
			max_upgrades = v['up_count']
		end
	end
	print("Max upgrade across this table is: ",max_upgrades)
	while not upgrade_flag and #fully_upgraded<#temp_class_list do
		for _,val_table in ipairs(temp_class_list) do
			print("Checking if ",val_table['now'],' has been upgraded at least ',max_upgrades,' times!')
			if val_table['up_count'] < max_upgrades and not upgrade_flag then
				print("It has not!")
				local up_maybe = getNext(val_table['now'],val_table['start'])
				if up_maybe and flag then
				  print("Upgrade Found! ",val_table['now'],' to ',up_maybe)
					val_table['up_count'] = val_table['up_count'] + 1
					val_table['now'] = up_maybe
					val_table['ep'] = lookupEP(up_maybe)
					upgrade_flag = true
					break
				elseif up_maybe and not flag then
					return true, up_maybe
				else
				  print("There is no upgrade path for this entry!")
					fully_upgraded[#fully_upgraded+1] = {val_table['start']}
					print("I have fully upgraded: ",#fully_upgraded," entries of ",#temp_class_list)
					if #fully_upgraded >= #temp_class_list then
						print("Oops all entries checked for upgrading!")
						break
					end
				end
			end
		end
		max_upgrades = max_upgrades +1
	end
	return upgrade_flag,temp_class_list
end

local function CalculateInvaders(spawn_array, percent)
  print("checking how many this spawnDef would send")
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
	assert(weight_sum > 0)
	if weight_sum == 0 then
		event_progress = UnitInvader.EventProgressValue
	else
		event_progress = event_progress / weight_sum
	end
	return (percent or 100) * EventProgress / Max(1, event_progress)
end

local function build_output(final_full_table)
	print("almost finished, splitting the final table up now")
	local additional_class_list = {}
	local final_main_name = ''
	print(#final_full_table)
	for i=1,#final_full_table do
		print(final_full_table[i])
		if i==1 then
			final_main_name = final_full_table[i]['now']
		else
			additional_class_list[i-1] = {id=final_full_table[i]['now'],weight=final_full_table[i]['weight']}
		end
	end
	return final_main_name, additional_class_list
end

function addSmallnextEvo(temp_class_list)
	local flag,name = upgrade(temp_class_list,false)
	if flag then
		print("Adding ",name,' as a 5% spawn chance!')
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
	--[[for _,value in ipairs(temp_class_list) do
	    print("Spawn Entry listed! "..value['now'])
	end]]
	print("All animal array:")
	print(temp_class_list)
	progress_percent = progress_percent or 100
	local upgrade_round = 0
	local final_animal = start_animal
	local final_class_list = additionalClassList
	local count = CalculateInvaders(temp_class_list, progress_percent) /100
	print(count,' units in this attack wave!')
	while count > _G.ILU_max do
	  print("Which is too many! ",count)
	  print(temp_class_list)
		local flag, temp_class_list = upgrade(temp_class_list,true)
		if not flag then
		  print("This is the best we can do with the upgrade path we have..."..count)
			return build_output(temp_class_list)
		end
		count = CalculateInvaders(temp_class_list, progress_percent) / 100
		print('After upgrade, new count is: ',count,' units in this attack wave!')
	end
	--[[If wave is generating 50%+ of spawn max, add a 5% chance to spawn the 'next' tier of the 'next' defined unit.]]
	if count > _G.ILU_max / 2 then
		print("Trying to add the next tier of unit!")
		temp_class_list = addSmallnextEvo(temp_class_list)
	end
	return build_output(temp_class_list)
end	

local function HandleLoad()
	ApplyAnimalSet("rtw6tLg")
end

local function ILU_fullSuite()
	ApplyAnimalSet("rtw6tLg")
	unloadTest()
end

function ILU_ActivateAttackDropshipSpawnDefs(robot_spawndef, main_unit,added_units, progress_mul)
	local robot_spawn_def = SpawnDefs[robot_spawndef]
	if not robot_spawn_def then return end
	local dropship_spawn_def = SpawnDefs["Attack_Dropship"]
	if not dropship_spawn_def then return end
	progress_mul = progress_mul or 100
--[[
	local single_early = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1'}
	local single_mid = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1','Demo_1'}
	local single_late = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1','HeavyHostileRobot_LVL1','Demo_1'}

	local mixed_mid_support = {'HostileRobot_Scout_LVL1','HostileCrawler_LaserGun','HostileCrawler_MachineGun','HeavyHostileRobot_LVL1'}

	local mixed_late_support = {
		'HostileRobot_Scout_LVL1',
		'HostileCrawler_LaserGun',
		'HostileCrawler_MachineGun',
		'HostileCombatQuadcopter_LVL1'
	}
	local instance = {}
	local primary = ''
	local temp_list = {}
	local temp = ''

	if variant == 'single_early' then -- Only 1 assault unit, no support
		primary = single_early[math.random(#single_early)]
	
	elseif variant == 'single_mid' then -- 1 Assault unit, supported by scout units
	
		primary = single_early[math.random(#single_mid)]
		temp_list = {"HostileRobot_Scout_LVL1",RobotDefs["HostileRobot_Scout_LVL1"]:GetProperty("SpawnDefWeight")}
	
	elseif variant == 'single_late' then -- 2 Assault Units, supported by scout units
		primary = single_late[math.random(#single_late)]
		temp_list[#temp_list+1] = {'HostileRobot_Scout_LVL1',RobotDefs['HostileRobot_Scout_LVL1']:GetProperty("SpawnDefWeight")}
		temp = uniqueAttacker(primary,single_late)
		temp_list[#temp_list+1] = {temp,RobotDefs[temp]:GetProperty("SpawnDefWeight")}
	
	elseif variant == 'mixed_mid' then -- 2 assaults with (2 supports or artillery)
		primary = mixed_mid_support[math.random(#mixed_mid_support)]--table.rand(single_mid, rand())
		temp = uniqueAttacker(primary,single_mid)
		temp_list[#temp_list+1] = {temp,RobotDefs[temp]:GetProperty("SpawnDefWeight")}
		if SyncRand(100) > 40 then
			temp_list[#temp_list+1] = {'Crawl_Cannon_T1',RobotDefs['Crawl_Cannon_T1']:GetProperty("SpawnDefWeight")}
		else
			local first_support = mixed_mid_support[math.random(#mixed_mid_support)]--table.rand(mixed_mid_support, rand())
			local second_support = uniqueAttacker(first_support,mixed_mid_support)
			temp_list[#temp_list+1] = {first_support,RobotDefs[first_support]:GetProperty("SpawnDefWeight")}
			temp_list[#temp_list+1] = {second_support,RobotDefs[second_support]:GetProperty("SpawnDefWeight")}
		end
	
	elseif variant == "mixed_late" then -- 2 assaults, 2 supports, & artillery
		primary = single_late[math.random(#single_late)]
		temp = uniqueAttacker(primary,single_late)
		temp_list[#temp_list+1] = {temp,RobotDefs[temp]:GetProperty("SpawnDefWeight")}
		local first_support = mixed_mid_support[math.random(#mixed_mid_support)]--table.rand(mixed_mid_support, rand())
		local second_support = uniqueAttacker(first_support,mixed_mid_support)
		temp_list[#temp_list+1] = {first_support,RobotDefs[first_support]:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {second_support,RobotDefs[second_support]:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {'Crawl_Cannon_T1',RobotDefs['Crawl_Cannon_T1']:GetProperty("SpawnDefWeight")}

	elseif variant == 'end' then --Everything!
		primary = 'LightHostileRobot_LVL1'
		temp_list[#temp_list+1] = {'HostileRobot_Monk_LVL1',RobotDefs['HostileRobot_Monk_LVL1']:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {'HeavyHostileRobot_LVL1',RobotDefs['HeavyHostileRobot_LVL1']:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {'Demo_1',RobotDefs['Demo_1']:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {'HostileRobot_Scout_LVL1',RobotDefs['HostileRobot_Scout_LVL1']:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {'Crawl_Cannon_T1',RobotDefs['Crawl_Cannon_T1']:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {'HostileCombatQuadcopter_LVL1',RobotDefs['HostileCombatQuadcopter_LVL1']:GetProperty("SpawnDefWeight")}
		temp_list[#temp_list+1] = {'HostileCrawler_LaserGun',RobotDefs['HostileCrawler_LaserGun']:GetProperty("SpawnDefWeight")}
	end
	--]]
	local addedClassList = {}
	local instance = {}
	instance.spawnClass, addedClassList = check_count_and_upgrade(main_unit,added_units)
	instance.AdditionalClassList = {}
	print("First assault chosen", instance.spawnClass)
	print(addedClassList)
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

OnMsg.ApplyModOptions = ApplyAnimalSet
OnMsg.ModsReloaded = ILU_fullSuite
OnMsg.LoadGame = ApplyAnimalSet