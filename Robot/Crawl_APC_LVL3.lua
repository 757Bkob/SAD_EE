UndefineClass('Crawl_APC_LVL3')
DefineClass.Crawl_APC_LVL3 = {
	__parents = { "CrawlerMachineGun" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	UnitTags = set( "APC_3" ),
	Health = 1000000,
	MaxHealth = 1000000,
	damage_reduction = {
		blunt = 80,
		energy = 80,
		gas = 80,
		piercing = 80,
	},
	Movement = 200000,
	DisplayName = T(962345212319, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 DisplayName]] "C-B3-5m3l73r"),
	DisplayNameShort = T(863292482755, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 DisplayNameShort]] "CB3"),
	DisplayNamePl = T(960161869122, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 DisplayNamePl]] "Crawler Series B"),
	Description = T(796956369685, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 Description]] 'After facing heavy criticism regarding the previous models failure rate to actually reforge allied droids; all development has focused on minimizing the chance of failure. According to financial filings, this cost billions to develop and is a major risk on their upcoming earnings report. The new models boast a failure rate of under 10%; meaning this "premium model" now achieves what the prior tier was suppose to do. Has <color TechSubtitleBlue>80% Piercing Damage</color> <em>Reduction</em>, <color TextButton>80% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>80% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>80% Gas Damage</color><color TextEmphasis> Reduction</color>'),
	SalvageLootTable = "HostileCrawlers",
	EventProgressValue = 250,
	SpawnDefWeight = 25,
	SpawnTags = set( "Boss" ),
	max_skinned_decals_low = -1,
	display_name = T(216410722875, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 display_name]] "MG Siege machine"),
	display_name_pl = T(846646106334, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 display_name_pl]] "MG Siege machines"),
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	WalkSpeed = 6000,
	attack_weapon = "APC_Gun",
}

