UndefineClass('Demo_2')
DefineClass.Demo_2 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Demo_T1", "Robot" ),
	pfclass = 0,
	Health = 250000,
	MaxHealth = 250000,
	damage_reduction = {
		blunt = 15,
		energy = 10,
		gas = 30,
		piercing = 5,
	},
	HumanThreat = true,
	Movement = 150000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(140, 16, 141, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(743618130851, --[[ModItemRobotCompositeDef Demo_2 DisplayName]] "D-E2-4p07h3c4ry"),
	DisplayNameShort = T(489278802929, --[[ModItemRobotCompositeDef Demo_2 DisplayNameShort]] "DE2"),
	DisplayNamePl = T(754647319790, --[[ModItemRobotCompositeDef Demo_2 DisplayNamePl]] "Drone Series E"),
	Description = T(647923552284, --[[ModItemRobotCompositeDef Demo_2 Description]] "The novelty has worn off, and the Consortium has had to increase the combat capabilities of this model line. This upgraded frame should now reasonably survive a head on assault, and be a wall breaker for other troops. Has <color TechSubtitleBlue>5% Piercing Damage</color> <em>Reduction</em>, <color TextButton>15% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>10% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>30% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T2",
	Skills = {
		Combat = 6,
	},
	darkness_penalty = 0,
	CombatSearchFlags = 536871176,
	EventProgressValue = 250,
	SpawnDefWeight = 80,
	SpawnTags = set( "Boss" ),
	can_be_navigated = false,
	can_navigate_others = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Melee_LaserPike",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Melee_LaserPike",
				"Ranged_LaserBlaster",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_LaserBlaster",
			},
		}),
	},
}

