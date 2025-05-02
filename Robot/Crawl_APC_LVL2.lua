UndefineClass('Crawl_APC_LVL2')
DefineClass.Crawl_APC_LVL2 = {
	__parents = { "CrawlerMachineGun" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	UnitTags = set( "APC_2" ),
	damage_reduction = {
		blunt = 60,
		energy = 60,
		gas = 60,
		piercing = 60,
	},
	HumanThreat = true,
	Movement = 175000,
	DisplayName = T(152286126430, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 DisplayName]] "C-B2-f0r63"),
	DisplayNameShort = T(966072968147, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 DisplayNameShort]] "CB2"),
	DisplayNamePl = T(979005459672, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 DisplayNamePl]] "Crawler Series B"),
	Description = T(127818288256, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 Description]] "This variant of crawler has been upgraded to become a battlefield scavenger. It has significantly increased motor functions, speeding up it's movement. Specifically to enable quick movement towards robot corpses, to fuel it's infernal forge. This was received to critical acclaim galaxy wide, as it allows whoever is deploying these to rest easier. Because even if the battle is lost, there will be minimal things to scavenge. Has <color TechSubtitleBlue>60% Piercing Damage</color> <em>Reduction</em>, <color TextButton>60% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>60% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>60% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Crawl_T4",
	darkness_penalty = 0,
	EventProgressValue = 250,
	SpawnDefWeight = 25,
	SpawnTags = set( "Boss" ),
	max_skinned_decals_low = -1,
	display_name = T(470045847059, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 display_name]] "MG Siege machine"),
	display_name_pl = T(125200629379, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 display_name_pl]] "MG Siege machines"),
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	WalkSpeed = 5000,
	attack_weapon = "APC_Gun",
}

