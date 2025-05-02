UndefineClass('Crawl_Cannon_T3')
DefineClass.Crawl_Cannon_T3 = {
	__parents = { "CrawlerMachineGun" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	Health = 1000000,
	MaxHealth = 1000000,
	HumanThreat = true,
	Movement = 50000,
	DisplayName = T(515373176351, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 DisplayName]] "C-A3-m0r74r"),
	DisplayNameShort = T(264123210954, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 DisplayNameShort]] "CA3"),
	DisplayNamePl = T(389676495865, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 DisplayNamePl]] "Crawler Series A"),
	Description = T(844803720786, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 Description]] "This variant is not for sale. Searching through the intergalactic coms has not revealed anything about this unit. The barrel is larger, less maneuverable than a snail, and it is constantly billowing smoke. We hope that the bombardment can be weathered... Oh there. Has no defense. Deals <color TextButton>Blunt</color> Damage. <em>100 meter range. Cannot attack targets within 40 meters</em>"),
	SalvageLootTable = "ILU_Robot_Crawl_T5",
	SwitchTargetChance = 0,
	CombatSearchFlags = 536871176,
	CombatRestrictPFBonus = 1000,
	EventProgressValue = 3333,
	SpawnDefWeight = 10,
	SpawnTags = set( "Boss" ),
	can_be_navigated = false,
	can_navigate_others = false,
	composite_part_groups = {
		"CrawlerRobot_Large",
	},
	max_skinned_decals_low = -1,
	display_name = T(771345966781, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 display_name]] "MG Siege machine"),
	display_name_pl = T(743850940606, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 display_name_pl]] "MG Siege machines"),
	siege_time = 15000,
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	WalkSpeed = 1500,
	attack_weapon = "Crawler_cannon",
}

