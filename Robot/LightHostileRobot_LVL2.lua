UndefineClass('LightHostileRobot_LVL2')
DefineClass.LightHostileRobot_LVL2 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatRobot",
	UnitTags = set( "Robot", "assault_T1" ),
	pfclass = 17,
	HitNegationChance = {
		HitNegationChance_blunt = 5,
		HitNegationChance_energy = 5,
		HitNegationChance_gas = 20,
		HitNegationChance_piercing = 5,
		blunt = 5,
		energy = 5,
		gas = 20,
		piercing = 5,
	},
	HitNegationChance_blunt = 5,
	HitNegationChance_piercing = 5,
	HitNegationChance_energy = 5,
	HitNegationChance_gas = 20,
	HumanThreat = true,
	Combat = 2000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(92, 44, 13, 255),
		'EditableRoughness1', -50,
		'EditableColor2', RGBA(160, 14, 14, 255),
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(877781002307, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 DisplayName]] "D-A2-p3wp3w"),
	DisplayNameShort = T(142244256287, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 DisplayNameShort]] "DA2"),
	DisplayNamePl = T(298340055036, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 DisplayNamePl]] "Drone A series"),
	Description = T(248109247620, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 Description]] "The consortium is dedicating more resources to this series; while still trying cheaply mass produce them. This is mainly done by allowing the robot to operate at higher capacity than what is safe for the robots frame. Has <color TechSubtitleBlue>0% Piercing Deflection</color>, <color TextButton>5% Blunt Deflection</color>, <color TextNegative>5% Energy Deflection</color>, <color TextPositive>20% Gas Deflection</color>"),
	SalvageLootTable = "LightHostileRobots_2",
	Skills = {
		Combat = 2,
	},
	DistressEnrageChance = 5,
	DistressCallRange = 5000,
	DistressCallRangeFirst = 5000,
	EventProgressValue = 100,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_CarbonCrossbow",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Melee_LaserPike",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_CarbonCrossbow",
				"Melee_LaserPike",
			},
		}),
	},
	FrenzyChance = 50,
	FrenzyDuration = 40000,
	FrenzyCooldown = 80000,
	FrenzyEffects = {
		"Assault_Frenzy",
	},
}

