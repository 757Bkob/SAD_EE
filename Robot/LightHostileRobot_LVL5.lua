UndefineClass('LightHostileRobot_LVL5')
DefineClass.LightHostileRobot_LVL5 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatRobot",
	UnitTags = set( "Robot", "assault_T2" ),
	pfclass = 17,
	Health = 800000,
	MaxHealth = 800000,
	DamagedStateAt = 40,
	BrokenStateAt = 15,
	HideIntegrityBarWhenDestroyed = false,
	HitNegationChance_blunt = 45,
	HitNegationChance_piercing = 20,
	HitNegationChance_energy = 45,
	HitNegationChance_gas = 90,
	HumanThreat = true,
	Movement = 80000,
	Combat = 5000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(153, 27, 27, 255),
		'EditableRoughness1', -50,
		'EditableColor2', RGBA(12, 7, 7, 255),
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(188342451628, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 DisplayName]] "D-A5-6unz3rk3r"),
	DisplayNameShort = T(938995850579, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 DisplayNameShort]] "DA5"),
	DisplayNamePl = T(225365074235, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 DisplayNamePl]] "Drone A series"),
	Description = T(933791149638, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 Description]] "The Consortium's top of the line assault series. Only the richest oligarchs, nation states, and the Consortium itself can field a great amount of these. Has enhanced Gas and Acid resistance to enable this unit to deploy into even the most hazardous of locations. Has <color TechSubtitleBlue>20% Piercing Deflection</color>, <color TextButton>45% Blunt Deflection</color>, <color TextNegative>45% Energy Deflection</color>, <color TextPositive>90% Gas Deflection</color>"),
	SalvageLootTable = "LightHostileRobots_3",
	Skills = {},
	darkness_penalty = 0,
	DistressEnrageChance = 0,
	DistressEnrageCount = 1,
	DistressCallRange = 1000,
	DistressCallRangeFirst = 1000,
	EventProgressValue = 200,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_PulseRifle_Improved",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_PulseRifle_Improved",
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

