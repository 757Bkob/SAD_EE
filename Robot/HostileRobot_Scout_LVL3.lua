UndefineClass('HostileRobot_Scout_LVL3')
DefineClass.HostileRobot_Scout_LVL3 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	comment = "Scout T2",
	object_class = "CombatRobot",
	UnitTags = set( "Robot", "Scout_T1" ),
	pfclass = 17,
	HumanThreat = true,
	Combat = 3000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(125, 189, 214, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(485677309017, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 DisplayName]] "D-B3-5n1p3r"),
	DisplayNameShort = T(525907746310, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 DisplayNameShort]] "DB3"),
	DisplayNamePl = T(278877312501, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 DisplayNamePl]] "Drone B Series"),
	Description = T(800778437273, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 Description]] "The Consortium is after all a profit driven company. They didn't even change this model at all, but they now garuntee that each comes equipped with a railgun sniper. The Consortium is lucky that this does increase it's combat utility immensely, otherwise customers would start to throw accusations of shrinkflation!Still has no defenses."),
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
	EventProgressValue = 700,
	SpawnDefWeight = 15,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_RailgunSniper",
			},
		}),
	},
}

