UndefineClass('HeavyHostileRobot_LVL2')
DefineClass.HeavyHostileRobot_LVL2 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Heavy_Malus", "Heavy_Slow_T1", "Robot" ),
	Health = 500000,
	MaxHealth = 500000,
	damage_reduction = {
		blunt = 40,
		energy = 30,
		gas = 25,
		piercing = 15,
	},
	HumanThreat = true,
	Movement = 90000,
	Combat = 1000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(50, 50, 50, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(169937774120, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 DisplayName]] "D-D2-7ru4n7"),
	DisplayNameShort = T(337582489273, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 DisplayNameShort]] "DD2"),
	DisplayNamePl = T(606989825151, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 DisplayNamePl]] "Drone Series D"),
	Description = T(621138978094, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 Description]] "The latest heavy model has included general survivability improvements, and a special addition. It now comes with a built in signal jammer and loudspeaker. When an enemy combatant is targeted, they both will try and distract or interfere with computations. Thankfully it's software is relatively primitive, and only effective at close range. Has <color TechSubtitleBlue>15% Piercing Damage</color><color TextEmphasis> Reduction</color>, <color TextButton>40% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>30% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>25% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T2",
	EventProgressValue = 200,
	SpawnDefWeight = 90,
	SpawnTags = set( "Boss" ),
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_Crossbow",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Ranged_Crossbow",
				"Melee_Spear",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_ShortBow",
			},
		}),
	},
}

