UndefineClass('Crawl_Cannon_T1')
DefineClass.Crawl_Cannon_T1 = {
	__parents = { "CrawlerMachineGun" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	Health = 250000,
	MaxHealth = 250000,
	HumanThreat = true,
	Movement = 50000,
	DisplayName = T(934265558535, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 DisplayName]] "C-A1-h0w17z3r"),
	DisplayNameShort = T(247098477910, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 DisplayNameShort]] "CA1"),
	DisplayNamePl = T(334837440132, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 DisplayNamePl]] "Crawler Series A"),
	Description = T(894183744919, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 Description]] "Illegal to field except in times of extreme crisis; the Artillery variants of Consortium Crawler has officially been disconinuted. The fact we are seeing them deployed leads us to sincerely doubt these claims. Has incredibly long range, and prioritizes static defenses. Has no defenses, as it's core role is long range support. Deals <color TextButton>Blunt</color> Damage. <em>70 meter range. Cannot attack targets within 40 meters</em>"),
	SalvageLootTable = "HostileCrawlers",
	SwitchTargetChance = 0,
	CombatSearchFlags = 536871176,
	CombatRestrictPFBonus = 1000,
	EventProgressValue = 600,
	SpawnDefWeight = 10,
	SpawnTags = set( "Boss" ),
	can_be_navigated = false,
	can_navigate_others = false,
	composite_part_target = "Crawl_Cannon_T1",
	composite_part_groups = {
		"CrawlerRobot_Medium",
	},
	max_skinned_decals_low = -1,
	display_name = T(140280728759, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 display_name]] "MG Siege machine"),
	display_name_pl = T(814443818409, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 display_name_pl]] "MG Siege machines"),
	siege_time = 10000,
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	attack_weapon = "Crawler_cannon",
}

