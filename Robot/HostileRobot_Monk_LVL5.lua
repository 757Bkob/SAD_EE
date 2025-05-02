UndefineClass('HostileRobot_Monk_LVL5')
DefineClass.HostileRobot_Monk_LVL5 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatRobot",
	UnitTags = set( "Monk_Special", "Monk_T3", "Robot" ),
	pfclass = 17,
	Health = 1500000,
	MaxHealth = 1500000,
	HitNegationChance = {
		HitNegationChance_blunt = 30,
		HitNegationChance_energy = 55,
		HitNegationChance_gas = 25,
		HitNegationChance_piercing = 55,
		blunt = 30,
		energy = 55,
		gas = 25,
		piercing = 55,
	},
	HitNegationChance_blunt = 30,
	HitNegationChance_piercing = 55,
	HitNegationChance_energy = 55,
	HitNegationChance_gas = 25,
	HumanThreat = true,
	Movement = 150000,
	Combat = 5000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(88, 60, 40, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(795895466524, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 DisplayName]] "D-C5-j3d1_c0n5ul4r"),
	DisplayNameShort = T(407598470713, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 DisplayNameShort]] "DC5"),
	DisplayNamePl = T(773286905714, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 DisplayNamePl]] "Drone C Series"),
	Description = T(454552688170, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 Description]] "The amount of money the Consortium must have invested to achieve this unit cannot be fathomed. This model now finally comes with a weapon, notably the laser sword. The viral videos show in slow motion how this robot can catch any projectile out of the air, and send it back to the sender. People have been showing off bullets, laser blasts (Thanks to the laser sword), and even some missiles! <color TechSubtitleBlue>55% Piercing Deflection</color>, <color TextButton>30% Blunt Deflection</color>, <color TextNegative>55% Energy Deflection</color>, <color TextPositive>25% Gas Deflection</color>"),
	SalvageLootTable = "ILU_Robot_Human_T5",
	Skills = {},
	darkness_penalty = 0,
	DistressEnrageChance = 5,
	DistressCallRange = 5000,
	DistressCallRangeFirst = 5000,
	EventProgressValue = 3000,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	AllowedEquipmentSlots = {
		"Weapon",
	},
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Melee_LaserSword",
			},
		}),
	},
}

