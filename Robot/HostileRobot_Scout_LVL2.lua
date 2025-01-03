UndefineClass('HostileRobot_Scout_LVL2')
DefineClass.HostileRobot_Scout_LVL2 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	comment = "Scout T2",
	object_class = "CombatRobot",
	UnitTags = set( "Robot", "Scout_T1" ),
	pfclass = 17,
	Health = 100000,
	MaxHealth = 100000,
	HumanThreat = true,
	Combat = 2000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(8, 55, 74, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(565196523856, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 DisplayName]] "D-B2-0ff1c3r"),
	DisplayNameShort = T(705000373000, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 DisplayNameShort]] "DB2"),
	DisplayNamePl = T(321247063067, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 DisplayNamePl]] "Drone B Series"),
	Description = T(511989141744, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 Description]] "In leau of enhanced durability or firepower, this control unit has gained the ability to share targeting parameters before combat has started. This combined with the base models enhanced spotting means it is incredibly difficult to sneak up on a squad of Consortium robots with an assigned O-A2-0ff1c3r.Has no defenses."),
	SalvageLootTable = "LightHostileRobots_1",
	Skills = {},
	SightRange = 40000,
	HearingRange = 25000,
	darkness_penalty = 0,
	EnrageChanceCooldown = 3000,
	DistressEnrageChance = 100,
	DistressEnrageCount = 30,
	DistressCallRange = 20000,
	DistressCallRangeFirst = 30000,
	WeaponAffectsSightRange = false,
	EventProgressValue = 330,
	SpawnDefWeight = 15,
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
	},
}

