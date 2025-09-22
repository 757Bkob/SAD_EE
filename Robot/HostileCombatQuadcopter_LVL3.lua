UndefineClass('HostileCombatQuadcopter_LVL3')
DefineClass.HostileCombatQuadcopter_LVL3 = {
	__parents = { "CombatQuadcopter", "UnitConsumer" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatQuadcopter",
	UnitTags = set( "Demo_T3", "Flying" ),
	Health = 75000,
	MaxHealth = 75000,
	damage_reduction = {
		piercing = 10,
	},
	DisplayName = T(901173607252, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 DisplayName]] "D-F3-5346ull"),
	DisplayNameShort = T(804317535414, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 DisplayNameShort]] "DF3"),
	DisplayNamePl = T(133438259417, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 DisplayNamePl]] "F Series Drones"),
	Description = T(911609558342, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 Description]] "Higher quality and denser acid makes a quadcopter with this upgrade not a straight upgrade. News stories show how earlier models dashed in to destroy key buildings and dart out. This model will be easier to down, but be quicker about destroying enemy defenses. Has <color TechSubtitleBlue>10% Piercing Damage</color> <em>Reduction</em>."),
	SalvageLootTable = "ILU_Robot_Misc",
	Skills = {},
	CombatSearchFlags = 536871176,
	EventProgressValue = 200,
	SpawnDefWeight = 50,
	SpawnTags = set( "Boss" ),
	FlightEscapeInside = true,
	UnitConsumer = true,
	res_consumed = "LiquidFuel",
	res_max_stored = 30000,
	res_used = 1000,
	res_stored = 30000,
	ConsumeDescription = T(225420703757, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 ConsumeDescription]] "A large bulk that contains highly corrosive acids. When applied, this acid quickly turns non-organic matter into a sludge."),
	ConsumeTitle = T(653765519204, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 ConsumeTitle]] "Fuel Tank"),
	ConsumeUIDetail = T(533832556642, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 ConsumeUIDetail]] "Liquid Left"),
}

