UndefineClass('HostileRobot_Monk_LVL3')
DefineClass.HostileRobot_Monk_LVL3 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatRobot",
	UnitTags = set( "Monk_T2", "Robot" ),
	pfclass = 17,
	Health = 600000,
	MaxHealth = 600000,
	HitNegationChance = {
		HitNegationChance_piercing = 33,
		piercing = 33,
	},
	HitNegationChance_piercing = 33,
	HumanThreat = true,
	Movement = 130000,
	Combat = 3000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(88, 60, 40, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(439683428510, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 DisplayName]] "D-C3-j3d1"),
	DisplayNameShort = T(329125724185, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 DisplayNameShort]] "DC3"),
	DisplayNamePl = T(126278076837, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 DisplayNamePl]] "Drone C Series"),
	Description = T(321981301116, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 Description]] "All of the research in object tracking and how to respond is paying off. This latest C series model boasts a better harm reduction reflex from even closer to the model. This combined with a lightweight durable alloy means any damage it receives is not an immediate death knell. <color TechSubtitleBlue>33% Piercing Deflection</color>, <color TextButton>0% Blunt Deflection</color>, <color TextNegative>0% Energy Deflection</color>, <color TextPositive>0% Gas Deflection</color>"),
	SalvageLootTable = "ILU_Robot_Human_T3",
	Skills = {},
	darkness_penalty = 0,
	DistressEnrageChance = 5,
	DistressCallRange = 5000,
	DistressCallRangeFirst = 5000,
	EventProgressValue = 500,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
}

