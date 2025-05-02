UndefineClass('HostileRobot_Scout_LVL1')
DefineClass.HostileRobot_Scout_LVL1 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	comment = "Scout T1",
	object_class = "CombatRobot",
	pfclass = 17,
	Health = 50000,
	MaxHealth = 50000,
	HumanThreat = true,
	Combat = 1000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(13, 130, 154, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(373142973674, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 DisplayName]] "D-B1-5c0u7"),
	DisplayNameShort = T(703140542529, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 DisplayNameShort]] "DB1"),
	DisplayNamePl = T(513596480085, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 DisplayNamePl]] "Drone B Series"),
	Description = T(173875654953, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 Description]] "This robot has increased detection range. It's role is meant to spot targets and hopefully survive initial engagement to alert all nearby Consortium robots in the vicinity.Has no defenses."),
	SalvageLootTable = "ILU_Robot_Human_T1",
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
	EventProgressValue = 90,
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

