UndefineClass('HeavyHostileRobot_LVL4')
DefineClass.HeavyHostileRobot_LVL4 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Heavy_Malus", "Heavy_Shred_T1", "Heavy_Slow_T2", "Robot" ),
	Health = 1500000,
	MaxHealth = 1500000,
	damage_reduction = {
		blunt = 75,
		energy = 40,
		gas = 35,
		piercing = 15,
	},
	HumanThreat = true,
	Movement = 90000,
	Combat = 2000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(50, 50, 50, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(297156847867, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 DisplayName]] "D-D4-m4l1n63r"),
	DisplayNameShort = T(270899736782, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 DisplayNameShort]] "DD4"),
	DisplayNamePl = T(443848099264, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 DisplayNamePl]] "Drone Series D"),
	Description = T(354144482543, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 Description]] "The signal jammer and speakers have received a major upgrade. Rather than relying on a single jamming frequency or single song; it will cycle through variations until maximum suppression is achieved. Has <color TechSubtitleBlue>15% Piercing Damage</color><color TextEmphasis> Reduction</color>, <color TextButton>75% Blunt Damage Reduction</color>, <color TextNegative>55% Energy Damage Reduction</color>, <color TextPositive>35% Gas Damage Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T4",
	EventProgressValue = 1800,
	SpawnDefWeight = 90,
	SpawnTags = set( "Boss" ),
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 85,
			'Equipment', {
				"Ranged_LaserBlaster",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 15,
			'Equipment', {
				"Ranged_LaserBlaster",
				"Melee_LaserPike",
			},
		}),
	},
}

