DefineClass.HumanoidRobotStation = {
	__parents = { "RobotStationBase", "AnimatedTextureObject" }
}
DefineClass("AndroidStation", "HumanoidRobotStation") -- compatibility stub

DefineClass.WeightedEquipment = {
	__parents = {"PropertyObject"},
	
	properties = {
		{ category = "Equipment", id = "Weight", editor = "number", default = 100, template = true, },
		{ category = "Equipment", id = "Equipment", editor = "preset_id_list", preset_class = "EquipResource", default = false, template = true, },
	},
}

DefineClass("HumanoidRobotAutoResolve")
DefineClass.HumanoidRobot = {
	__parents = { "ActivityInvaderRobotBase", "HumanoidCompositeBody", "TargetAreaObjectCircleArc", "UnitDestlock",
					"UnitFallHumanoid", "UnitPain", "HumanoidRobotAutoResolve" },
	
	properties = {
		{ category = "Equipment", id = "AllowedEquipmentSlots", name = "Allowed equipment slots", editor = "string_list", items = EquipSlots, default = false, template = true, },
		{ category = "Equipment", id = "Equipment", editor = "nested_list", default = false, base_class = "WeightedEquipment", inclusive = true, template = true, },
	},
	
	composite_part_names = {
		"Body", "Head",
		"Torso", "Shoulders", "Arms", "Hands",
		"Pelvis", "Thighs", "Feet",
		"Tool", "Carry", "Basket",
	},

	walk_moments_track = true,
	
	Gender = "Male",
	
	BloodColor = const.clrNoModifier,
	skinned_blood_class = "RobotSkinnedDecal",
	entity = "RobotDummy",
	DecomposeEntity = "RobotDummyStatic",
	fx_actor_class = "Android",
	
	anim_idle = {
		{"standing_Idle_Free_Robot", 300},
		{"standing_Idle_Free2_Robot", 50},
	},
	anim_run = "standing_Run_Free_Robot",
	anim_walk = "standing_Walk_Free_Robot",
	anim_walk_haste = "standing_Walk_Haste",
	
	detect_spot = "Sight",

	UnitTags = set("Robot"),
	
	work_areas_inited = true,
	
	equipment_damaged = false,
	charging = false,
	integrity_changes_state = false,
	stairs_correction = 40 * guic,
}

function HumanoidRobot:Init()
	self:ComposeBodyParts()
	self:InitEntity()
	self:InitEquipement()
end

function HumanoidRobot:TryFlee(attacker, reason, ignore_fleeing)
	-- humanoid robots can flee
	return UnitCombat.TryFlee(self, attacker, reason, ignore_fleeing)
end

function HumanoidRobotAutoResolve:CanFlee(ignore_fleeing)
	return not self:IsManuallyControlled() and (not IsValid(self.robot_station) or self.robot_station.working)
end

function HumanoidRobotAutoResolve:OnDestroyed(reason)
	self:ActivateUmbrellaVisual(false)
end

function HumanoidRobot:GetIPWorkAreaName(work_area)
	work_area = work_area or self.command_center
	return work_area and work_area:GetWorkAreaName() or ""
end

function HumanoidRobot:GetBodyDef()
	return self
end

function HumanoidRobot:GetDetectSpotName()
	return self.detect_spot
end

function HumanoidRobot:InitEquipement()
	for _,slot in ipairs(EquipSlots) do
		self:Unequip(slot)
	end
	local tbl = self.Equipment
	if not tbl then return end
	local items = table.weighted_rand(tbl, "Weight", InteractionRand(nil, "AndroidEquipment"))
	items = items.Equipment and table.copy(items.Equipment)
	-- randomize the equipment on creation
	if items then
		table.shuffle(items, InteractionRand(nil, "AndroidEquipment"))
	end
	for _, id in ipairs(items) do
		local preset = Resources[id]
		if not preset or preset.EquipSlot == "" then
			print("Invalid equipment", id)
		elseif not self:IsEquipSlotForbidden(preset.EquipSlot) then
			self:Equip(id)
		end
	end
end

function HumanoidRobot:PickPainAnim()
	local pain_anim, pain_mask = UnitPain.PickPainAnim(self)
	local weapon_def = self:GetEquippedWeaponDef()
	if weapon_def and weapon_def.IsDoubleHanded then
		pain_mask = "UpperBodyNoArmsMask"
	end
	return pain_anim, pain_mask
end

function HumanoidRobotAutoResolve:OnAttackReceived(attacker)
	if self:IsDead() then return end
	self:PlayPainAnim()
end

function HumanoidRobotAutoResolve:OnDie()
	if not self.Invader then return end
	-- there is a chance to lose weapons when dying
	local chance = const.Gameplay.InvaderRobotLoseWeaponChance
	for _, slot in ipairs(WeaponSlots) do
		if self:Random(100, "LoseInvaderWeapons") < chance then
			self:Unequip(slot)
		end
	end
end

function HumanoidRobot:IsEquipSlotForbidden(slot)
	return not table.find(self.AllowedEquipmentSlots, slot)
end

function HumanoidRobot:GetEquippedTool()
	return HumanoidCompositeBody.GetEquippedTool(self)
end

function HumanoidRobot:GetEquippedWeaponDef()
	return HumanoidCompositeBody.GetEquippedWeaponDef(self)
end

function HumanoidRobot:HasRangedAttack()
	return HumanVisuals.HasRangedAttack(self)
end

function HumanoidRobot:ShowRanges()
	return ActivityInvaderRobotBase.ShowRanges(self)
end

function HumanoidRobot:OnDestlockRequest(...)
	return UnitDestlock.OnDestlockRequest(self, ...)
end

function HumanoidRobot:ExitIdleState()
	ActivityInvaderRobotBase.ExitIdleState(self)
	if self.charging then
		self.charging = nil
		if IsValid(self) then
			self:ClearGameFlags(const.gofStaticAnim)
		end
		local station = self.robot_station
		if IsValid(station) then
			if station.working then
				PlayFX("ChargingRobot", "end", self, station)
			end
			if not station:IsVirtual() then
				self:PlayMomentTrackedAnim("charging_End_Robot")
			end
		end
	end
end

function HumanoidRobot:GetDefaultAction(multiselection, bin)
	if self.CombatGroup ~= Human.CombatGroup then return end
	return Unit.GetDefaultAction(self, multiselection, bin)
end

function HumanoidRobot:GetDefaultActionHint(multiselection, bin)
	if self.CombatGroup ~= Human.CombatGroup then return end
	return Unit.GetDefaultActionHint(self, multiselection, bin)
end

function HumanoidRobot:DropCarriedResAsPile(res, custom_amount, custom_anim, custom_pos)
	local amount = custom_amount or self:GetResAvailable(res)
	if amount <= 0 then return end
	local pile
	self:PlayAnimWithCallback(custom_anim or "standing_DropDown_HandsClose_Low", "hit", function(self, res, amount)
		local _, placed_piles = PlaceResourcePile(custom_pos or self, res, amount, nil, {
			delay_distribution = true,
			max_dist = self.max_dist_drop_resources,
			dont_stack = true,
		}, self)
		pile = placed_piles and placed_piles[1]
		self:SubtractRes(res, amount, self.task_res_info)
	end, self, res, amount)
	return pile
end

function HumanoidRobot:ReturnToStation()
	if self.charging then return end
	local station = self.robot_station
	if self.holder ~= station and not ActivityInvaderRobotBase.ReturnToStation(self) then
		self:PlayIdleAnim(1000)
		return
	end
	self.charging = true
	self:Face(station, 100)
	if not station:IsVirtual() then
		self:PlayMomentTrackedAnim("charging_Start_Robot")
		if station.working then
			PlayFX("ChargingRobot", "start", self, station)
		end
		self:PlayMomentTrackedAnim("charging_Idle_Robot")
		self:SetGameFlags(const.gofStaticAnim)
	else
		self:SetIdleState()
	end
	return true
end

function HumanoidRobot:OnStationGameInit(station)
	if not IsConstructionCursor(station) then
		self.charging = true
		self:SetHolder(station)
	end
	ActivityInvaderRobotBase.OnStationGameInit(self, station)
end

function HumanoidRobot:OnAttachedToStation(station)
	self:SetState("charging_Idle_Robot")
	ActivityInvaderRobotBase.OnAttachedToStation(self, station)
end

function HumanoidRobot:PlayIdleAnim(duration)
	if self.charging then
		Sleep(1000)
		return
	end
	local anim, linked_obj, linked_anim = self:PickIdleAnim()
	if linked_obj then
		linked_obj:SetState(linked_anim)
	end
	duration = duration or Max(self:GetAnimDuration("idle"), self.idle_anim_duration)
	return self:PlayMomentTrackedAnim(anim, nil, const.eKeepComponentTargets, nil, duration)
end

function HumanoidRobot:PickIdleAnim(...)
	return HumanoidCompositeBody.PickIdleAnim(self, ...)
end

function HumanoidRobot:PickWalkAnim(...)
	return HumanoidCompositeBody.PickWalkAnim(self, ...)
end

function HumanoidRobot:GetAttackWeapons(...)
	return HumanoidCompositeBody.GetAttackWeapons(self, ...)
end

function HumanoidRobot:TryInterruptForDirectOrder(...)
	return ActivityInvaderRobotBase.TryInterruptForDirectOrder(self, ...)
end

function HumanoidRobot:IsRunning(...)
	if self.Invader then return true end -- invaders always run
	return HumanoidCompositeBody.IsRunning(self, ...)
end

function HumanoidRobot:ShouldHaveEquippedWeapon(...)
	if self.Invader then return true end -- invaders always run
	return HumanoidCompositeBody.ShouldHaveEquippedWeapon(self, ...)
end

function HumanoidRobot:EquipWeapon(...)
	return HumanoidCompositeBody.EquipWeapon(self, ...)
end

function HumanoidRobot:UpdateWalkAnim(...)
	return HumanoidCompositeBody.UpdateWalkAnim(self, ...)
end

function HumanoidRobot:PrepareToMove(...)
	local err = HumanoidCompositeBody.PrepareToMove(self, ...)
	if err then
		return err
	end
	return Robot.PrepareToMove(self, ...)
end

HumanoidRobot.CheckClimb = return_true

function HumanoidRobot:TraverseTower(...)
	return HumanoidCompositeBody.TraverseTower(self, ...)
end

function HumanoidRobot:ClimbGoto(...)
	return HumanoidCompositeBody.ClimbGoto(self, ...)
end

function HumanoidRobot:TraverseLadder(...)
	return HumanoidCompositeBody.TraverseLadder(self, ...)
end

local weapon_anim_mapping = {}
function HumanoidRobot:RemapWeaponAnim(anim)
	local cache = weapon_anim_mapping[anim]
	if not cache then
		cache = anim .. "_Robot"
		if not HasState(self:GetEntity(), cache) then
			cache = anim
		end
		weapon_anim_mapping[anim] = cache
	end
	return cache
end

DefineClass("Android", "HumanoidRobot") -- compatibility stub

function HumanoidRobotAutoResolve:OnSetInvader()
	-- only decay the equipment of invaders once
	if self.equipment_damaged or not self.Invader then return end
	self.equipment_damaged = true
	local min, max = const.Gameplay.MinInvaderItemDegradation, const.Gameplay.MaxInvaderItemDegradation
	local diff = max - min
	for _, slot in ipairs(EquipSlots) do
		local equipment_def = self:GetEquipment(slot)
		if equipment_def and equipment_def.MaxHealth > 0 then -- MaxHealth = 0 means indestructible
			local random = InteractionRand(diff, "TryLoseEquipmentHealth")
			local amount = MulDivRound(min + random, equipment_def.MaxHealth, 100)
			self:AddEquipmentDamage(slot, amount, 100)
		end
	end
end
