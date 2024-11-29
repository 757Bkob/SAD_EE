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
}

local function ApplyAnimalSet(id)
	id = id or CurrentModId
	if CurrentModId ~= id or not CurrentModOptions then return end
	local options = CurrentModOptions
	const.C_ILU_max = options.O_ILU_max
	--armorSwap(options.simple_combat)
	print("Debug: Changed max spawns to: ",const.C_ILU_max)
end


function ILU_QA()
	print(" ")
	print(" ")
	print(" ")
	for _,v in ipairs(base_table) do
		print("Checking this name: ",v['id'])
		local classdef = g_Classes[v['id'] or false]
		local ep = classdef.EventProgressValue
		print(ep)
	end
end

OnMsg.ModsReloaded = ApplyAnimalSet
OnMsg.ApplyModOptions = ApplyAnimalSet

if FirstLoad then
	ApplyAnimalSet("rtw6tLg")
end

local function lookupEP(name)
	print("Checking this name: ",name)
	local classdef = g_Classes[name or false]
	local ep = classdef.EventProgressValue
	return ep
end
--[[	for upgrade_index,upgrade_value in ipairs(base_table) do
		if name == upgrade_value['id'] then
			return upgrade_value['ep']
		end
	end
	return nil
end]]

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
	while count > const.C_ILU_max do
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
	if count > const.C_ILU_max / 2 then
		print("Trying to add the next tier of unit!")
		temp_class_list = addSmallnextEvo(temp_class_list)
	end
	return build_output(temp_class_list)
end	

local function HandleLoad()
	ApplyAnimalSet("rtw6tLg")
end

OnMsg.ApplyModOptions = ApplyAnimalSet
OnMsg.ModsReloaded = ApplyAnimalSet
OnMsg.LoadGame = ApplyAnimalSet