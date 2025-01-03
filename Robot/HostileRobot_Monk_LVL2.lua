UndefineClass('HostileRobot_Monk_LVL2')
DefineClass.HostileRobot_Monk_LVL2 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatRobot",
	UnitTags = set( "Monk_T1", "Robot" ),
	pfclass = 17,
	Health = 300000,
	MaxHealth = 300000,
	HitNegationChance_piercing = 20,
	HumanThreat = true,
	Movement = 130000,
	Combat = 2000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(88, 60, 40, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(605403873200, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 DisplayName]] "D-C2-4ppr3n71c3"),
	DisplayNameShort = T(193559566610, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 DisplayNameShort]] "DC2"),
	DisplayNamePl = T(387015977934, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 DisplayNamePl]] "Drone C Series"),
	Description = T(871114379245, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 Description]] "The Consortium has now increased the C series motor function. I suspect this is to allow this unit to get into melee range. Since this series is still reliant on it's own metal fists. Not surprisingly, the C series is proven to be a tough sell to most governments and wealthy elites. Has <color TechSubtitleBlue>20% Piercing Deflection</color>, <color TextButton>0% Blunt Deflection</color>, <color TextNegative>0% Energy Deflection</color>, <color TextPositive>0% Gas Deflection</color>"),
	SalvageLootTable = "LightHostileRobots_1",
	Skills = {},
	darkness_penalty = 0,
	DistressEnrageChance = 5,
	DistressCallRange = 5000,
	DistressCallRangeFirst = 5000,
	EventProgressValue = 200,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {},
}

