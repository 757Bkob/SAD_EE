UndefineClass('HostileCombatQuadcopter_LVL4')
DefineClass.HostileCombatQuadcopter_LVL4 = {
	__parents = { "CombatQuadcopter" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatQuadcopter",
	UnitTags = set( "Demo_T3", "Flying" ),
	Health = 100000,
	MaxHealth = 100000,
	damage_reduction = {
		piercing = 15,
	},
	Movement = 125000,
	DisplayName = T(453164220819, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 DisplayName]] "D-F4-h4wk"),
	DisplayNameShort = T(283426405849, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 DisplayNameShort]] "DF4"),
	DisplayNamePl = T(375497859599, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 DisplayNamePl]] "F Series Drones"),
	Description = T(583067491707, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 Description]] "No major changes where announced for the F series. But it is considered a generally solid upgrade. Slightly faster to offset the fuel tank weight, better targeting software, and durable enough to take a single flak blast. Reception has been relatively positive. Has <color TechSubtitleBlue>15% Piercing Damage</color> <em>Reduction</em>."),
	SalvageLootTable = "HostileQuadcopters",
	Skills = {
		Combat = 5,
	},
	CombatSearchFlags = 536871176,
	EventProgressValue = 300,
	SpawnDefWeight = 50,
	SpawnTags = set( "Boss" ),
	FlightEscapeInside = true,
}

