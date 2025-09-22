UndefineClass('HostileCombatQuadcopter_LVL5')
DefineClass.HostileCombatQuadcopter_LVL5 = {
	__parents = { "CombatQuadcopter", "UnitConsumer" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CombatQuadcopter",
	UnitTags = set( "Demo_T5", "Flying" ),
	Health = 300000,
	MaxHealth = 300000,
	damage_reduction = {
		piercing = 20,
	},
	Movement = 125000,
	DisplayName = T(449854643933, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 DisplayName]] "D-F5-346l3"),
	DisplayNameShort = T(260759826748, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 DisplayNameShort]] "DF5"),
	DisplayNamePl = T(561655984337, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 DisplayNamePl]] "F Series Drones"),
	Description = T(124529310792, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 Description]] 'Double the durability for double the destruction! At least that is the sales pitch for the most expensive F model. Major software changes where required to enable the same "Hot Glue" or "Acid" that the E series does mechanically via it\'s special spear. Overall this model is considered the best leveler of enemy encampments, even above modern artillery. Mainly because this is orders of magnitudes cheaper to produce! Has <color TechSubtitleBlue>20% Piercing Damage</color> <em>Reduction</em>.'),
	SalvageLootTable = "ILU_Robot_Misc",
	Skills = {
		Combat = 7,
	},
	CombatSearchFlags = 536871176,
	EventProgressValue = 800,
	SpawnDefWeight = 50,
	SpawnTags = set( "Boss" ),
	FlightEscapeInside = true,
	UnitConsumer = true,
	res_consumed = "LiquidFuel",
	res_max_stored = 30000,
	res_used = 1000,
	res_stored = 30000,
	ConsumeDescription = T(538054307369, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 ConsumeDescription]] "Multiple compartments are dedicated to the storage of unique chemical compounds, and are mixed to deadly effects in combat!"),
	ConsumeTitle = T(107150982322, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 ConsumeTitle]] "Portable Decanting Agent"),
	ConsumeUIDetail = T(463932196078, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 ConsumeUIDetail]] "Liquid Left"),
}

