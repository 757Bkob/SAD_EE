UndefineClass('HostileCombatQuadcopter_LVL2')
DefineClass.HostileCombatQuadcopter_LVL2 = {
	__parents = { "CombatQuadcopter", "UnitConsumer" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatQuadcopter",
	UnitTags = set( "Demo_T1", "Flying" ),
	Health = 50000,
	MaxHealth = 50000,
	damage_reduction = {
		piercing = 5,
	},
	DisplayName = T(230924932122, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 DisplayName]] "D-F2-p1d630n"),
	DisplayNameShort = T(779620740159, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 DisplayNameShort]] "DF2"),
	DisplayNamePl = T(369263638877, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 DisplayNamePl]] "F Series Drones"),
	Description = T(525941302304, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 Description]] "The Consortium spend many engineer hours and R&D budget on the highly acidic fuel tanks, they felt it would be wasteful to not include it in another variant. The humble Quadcopter now has 2 smaller fuel tanks, designed to coat it's small arms in the same acid. Thankfully all explosions from destroyed quadcopters will not damage other robots that the buyer is fielding! Has <color TechSubtitleBlue>5% Piercing Damage</color> <em>Reduction</em>."),
	SalvageLootTable = "ILU_Robot_Misc",
	Skills = {},
	CombatSearchFlags = 536871176,
	EventProgressValue = 125,
	SpawnDefWeight = 50,
	SpawnTags = set( "Boss" ),
	FlightEscapeInside = true,
	UnitConsumer = true,
	res_consumed = "LiquidFuel",
	res_max_stored = 30000,
	res_used = 1000,
	res_stored = 30000,
	ConsumeDescription = T(576407424571, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 ConsumeDescription]] "A large bulk that contains highly corrosive acids. When applied, this acid quickly turns non-organic matter into a sludge."),
	ConsumeTitle = T(439485626440, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 ConsumeTitle]] "Fuel Tank"),
	ConsumeUIDetail = T(138275542972, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 ConsumeUIDetail]] "Liquid Left"),
}

