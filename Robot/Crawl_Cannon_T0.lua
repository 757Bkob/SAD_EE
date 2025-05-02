UndefineClass('Crawl_Cannon_T0')
DefineClass.Crawl_Cannon_T0 = {
	__parents = { "CrawlerMachineGun" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	Health = 200000,
	MaxHealth = 200000,
	HumanThreat = true,
	Movement = 50000,
	DisplayName = T(290187543716, --[[ModItemRobotCompositeDef Crawl_Cannon_T0 DisplayName]] "C-A1-f4lun37"),
	DisplayNameShort = T(768088241341, --[[ModItemRobotCompositeDef Crawl_Cannon_T0 DisplayNameShort]] "CA0"),
	DisplayNamePl = T(517698539396, --[[ModItemRobotCompositeDef Crawl_Cannon_T0 DisplayNamePl]] "Crawler Series AA"),
	Description = T(299223050388, --[[ModItemRobotCompositeDef Crawl_Cannon_T0 Description]] "Legally this longer-ranged-than-average crawler does not break the text of any automated arm laws; but certainly breaks each laws spirit. Mounted on top is a small bore weapon that fires anti-personal rounds. Weapon fire-rate was de-prioritized in favor of trajectory calculations and an improved suspension. Has a very limited effective range of fire, and has been easily thwarted by just... walking closer to it a few steps. Deals <color TextButton>Blunt</color> Damage. <em>Can only attack targets between 40 and 45 meters away.</em>"),
	SalvageLootTable = "ILU_Robot_Crawl_T2",
	SwitchTargetChance = 0,
	CombatSearchFlags = 536871176,
	CombatRestrictPFBonus = 1000,
	EventProgressValue = 250,
	SpawnDefWeight = 10,
	SpawnTags = set( "Boss" ),
	can_be_navigated = false,
	can_navigate_others = false,
	composite_part_target = "Crawl_Cannon_T1",
	composite_part_groups = {
		"CrawlerRobot_Medium",
	},
	max_skinned_decals_low = -1,
	display_name = T(588555800530, --[[ModItemRobotCompositeDef Crawl_Cannon_T0 display_name]] "MG Siege machine"),
	display_name_pl = T(488086439009, --[[ModItemRobotCompositeDef Crawl_Cannon_T0 display_name_pl]] "MG Siege machines"),
	siege_time = 10000,
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	attack_weapon = "Crawler_cannon_weak",
}

