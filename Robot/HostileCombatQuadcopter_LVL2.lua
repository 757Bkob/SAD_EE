UndefineClass('HostileCombatQuadcopter_LVL2')
DefineClass.HostileCombatQuadcopter_LVL2 = {
	__parents = { "CombatQuadcopter" },
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
	SalvageLootTable = "HostileQuadcopters",
	Skills = {},
	CombatSearchFlags = 536871176,
	EventProgressValue = 125,
	SpawnDefWeight = 50,
	SpawnTags = set( "Boss" ),
	FlightEscapeInside = true,
}

