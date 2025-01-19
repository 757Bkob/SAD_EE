UndefineClass('HostileRobot_Monk_LVL1')
DefineClass.HostileRobot_Monk_LVL1 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	comment = "Monk evos",
	object_class = "CombatRobot",
	UnitTags = set( "Monk_T1", "Robot" ),
	pfclass = 17,
	Health = 150000,
	MaxHealth = 150000,
	HumanThreat = true,
	Combat = 1000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(88, 60, 40, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(556218940835, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 DisplayName]] "D-C1-m0nk"),
	DisplayNameShort = T(421790080676, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 DisplayNameShort]] "DC1"),
	DisplayNamePl = T(610571954395, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 DisplayNamePl]] "Drone C Series"),
	Description = T(374236776710, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 Description]] "The C series is a very new and interesting design. The RAM is 10x more expensive than their frame. This has led to the frame being little more than a brittle casing; and no gaurunteed weapon. I wonder what the Consortium has planned for this model?Has no defenses"),
	SalvageLootTable = "LightHostileRobots_1",
	Skills = {},
	darkness_penalty = 0,
	DistressEnrageChance = 5,
	DistressCallRange = 5000,
	DistressCallRangeFirst = 5000,
	EventProgressValue = 50,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
}

