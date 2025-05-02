UndefineClass('HeavyHostileRobot_LVL1')
DefineClass.HeavyHostileRobot_LVL1 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Heavy_Malus", "Robot" ),
	Health = 250000,
	MaxHealth = 250000,
	damage_reduction = {
		blunt = 20,
		energy = 20,
		gas = 20,
		piercing = 10,
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
	DisplayName = T(938472854673, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 DisplayName]] "D-D1-ch0nk3r"),
	DisplayNameShort = T(985076455466, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 DisplayNameShort]] "DD1"),
	DisplayNamePl = T(184728554259, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 DisplayNamePl]] "Drone Series D"),
	Description = T(774533481819, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 Description]] "The heaviest model; trading survivability for damage. It moves slower, has shorter range, and attacks slower. But a completely redesigned armor plating enables absorption and reduction to all incoming damage. Has <color TechSubtitleBlue>10% Piercing Damage</color></color TextEmphasis> Reduction</color>, <color TextButton>20% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>20% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>20% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T1",
	EventProgressValue = 75,
	SpawnDefWeight = 90,
	SpawnTags = set( "Boss" ),
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_ShortBow",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Ranged_ShortBow",
				"Melee_Spear",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_Crossbow",
			},
		}),
	},
}

