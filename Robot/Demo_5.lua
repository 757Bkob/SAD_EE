UndefineClass('Demo_5')
DefineClass.Demo_5 = {
	__parents = { "HeavyCombatRobot", "UnitConsumer" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Demo_T5", "Robot" ),
	pfclass = 0,
	Health = 750000,
	MaxHealth = 750000,
	damage_reduction = {
		blunt = 30,
		energy = 25,
		gas = 50,
		piercing = 20,
	},
	HumanThreat = true,
	Movement = 200000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(146, 14, 140, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(911074474972, --[[ModItemRobotCompositeDef Demo_5 DisplayName]] "D-E5-flu0r04n71m0n1c"),
	DisplayNameShort = T(654156072296, --[[ModItemRobotCompositeDef Demo_5 DisplayNameShort]] "DE5"),
	DisplayNamePl = T(780181404433, --[[ModItemRobotCompositeDef Demo_5 DisplayNamePl]] "Drone Series E"),
	Description = T(489965093553, --[[ModItemRobotCompositeDef Demo_5 Description]] "The acid fuel tanks are now a mobile alchemy station. The Acid Spear changes the composition, based on what it is stabbing. Attacks coat organic enemies in extra strong adhesives. Sales and deployments continue, even as the galactic community decries it's immorality. Has <color TechSubtitleBlue>20% Piercing Damage</color> <em>Reduction</em>, <color TextButton>30% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>25% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>50% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T5",
	darkness_penalty = 0,
	CombatSearchFlags = 536871176,
	EventProgressValue = 1500,
	SpawnDefWeight = 80,
	SpawnTags = set( "Boss" ),
	can_be_navigated = false,
	can_navigate_others = false,
	can_follow_formation = false,
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Melee_LaserPike",
			},
		}),
	},
	UnitConsumer = true,
	res_consumed = "LiquidFuel",
	res_max_stored = 30000,
	res_used = 1000,
	res_stored = 30000,
	ConsumeDescription = T(497780712834, --[[ModItemRobotCompositeDef Demo_5 ConsumeDescription]] "Assorted pouched and tubes run along this units exoskeleton into it's lazer spear."),
	ConsumeTitle = T(758157732441, --[[ModItemRobotCompositeDef Demo_5 ConsumeTitle]] "MicroDistillery"),
	ConsumeUIDetail = T(183231521661, --[[ModItemRobotCompositeDef Demo_5 ConsumeUIDetail]] "Liquid Left"),
}

