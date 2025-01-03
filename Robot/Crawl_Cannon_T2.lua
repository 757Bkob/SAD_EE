UndefineClass('Crawl_Cannon_T2')
DefineClass.Crawl_Cannon_T2 = {
	__parents = { "CrawlerMachineGun" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	HumanThreat = true,
	Movement = 50000,
	DisplayName = T(321124799692, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 DisplayName]] "C-A2-c4nn0n4d3"),
	DisplayNameShort = T(989911872671, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 DisplayNameShort]] "CA2"),
	DisplayNamePl = T(281429632445, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 DisplayNamePl]] "Crawler Series A"),
	Description = T(271891081815, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 Description]] "The second purchasable tier of Artillery Crawlers sees slight modifications to the stabilization and frame. This allowed for better combat ability. Rather than increase the munition size, a range increase was prioritized. Meant to blow holes in fortified positions for the assault troops to flood into. Based on prior interactions, it's software is solely focused on leveling our colony. Has no defenses. Deals <color TextButton>Blunt</color> Damage.<em>90 meter range. Cannot attack targets within 50 meters</em>"),
	SalvageLootTable = "HostileCrawlers",
	SwitchTargetChance = 0,
	CombatSearchFlags = 536871176,
	CombatRestrictPFBonus = 1000,
	EventProgressValue = 1300,
	SpawnDefWeight = 10,
	SpawnTags = set( "Boss" ),
	can_be_navigated = false,
	can_navigate_others = false,
	composite_part_target = "Crawl_Cannon_T1",
	composite_part_groups = {
		"CrawlerRobot_Medium",
	},
	max_skinned_decals_low = -1,
	display_name = T(682786164697, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 display_name]] "MG Siege machine"),
	display_name_pl = T(607322897856, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 display_name_pl]] "MG Siege machines"),
	siege_time = 10000,
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	WalkSpeed = 2000,
	attack_weapon = "Crawler_cannon",
}

