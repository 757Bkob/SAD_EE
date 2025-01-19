UndefineClass('LightHostileRobot_LVL3')
DefineClass.LightHostileRobot_LVL3 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatRobot",
	UnitTags = set( "Robot", "assault_T1" ),
	pfclass = 17,
	Health = 400000,
	MaxHealth = 400000,
	DamagedStateAt = 40,
	BrokenStateAt = 15,
	HideIntegrityBarWhenDestroyed = false,
	HitNegationChance = {
		HitNegationChance_blunt = 10,
		HitNegationChance_energy = 10,
		HitNegationChance_gas = 30,
		blunt = 10,
		energy = 10,
		gas = 30,
	},
	HitNegationChance_blunt = 10,
	HitNegationChance_energy = 10,
	HitNegationChance_gas = 30,
	HumanThreat = true,
	Combat = 3000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(123, 54, 54, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(547197642864, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 DisplayName]] "D-A3-m364p3w"),
	DisplayNameShort = T(717669841682, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 DisplayNameShort]] "DA3"),
	DisplayNamePl = T(326566177705, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 DisplayNamePl]] "Drone A series"),
	Description = T(422993075353, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 Description]] "Now comes armed with a pulse rifle. While more expensive than carbon crossbows to procur, this increases the combat power of the robot without adding to the manufactoring costs. Has <color TechSubtitleBlue>0% Piercing Deflection</color>, <color TextButton>10% Blunt Deflection</color>, <color TextNegative>10% Energy Deflection</color>, <color TextPositive>30% Gas Deflection</color>"),
	SalvageLootTable = "LightHostileRobots_3",
	Skills = {
		Combat = 4,
	},
	darkness_penalty = 0,
	DistressEnrageChance = 5,
	DistressCallRange = 5000,
	DistressCallRangeFirst = 5000,
	EventProgressValue = 200,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_PulseRifle",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Ranged_LaserBlaster_Improved",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_PulseRifle",
				"Ranged_LaserBlaster_Improved",
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

