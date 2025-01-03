UndefineClass('Crawl_APC_LVL1')
DefineClass.Crawl_APC_LVL1 = {
	__parents = { "CrawlerMachineGun" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	UnitTags = set( "APC_1" ),
	Health = 250000,
	MaxHealth = 250000,
	damage_reduction = {
		blunt = 50,
		energy = 50,
		gas = 50,
		piercing = 50,
	},
	HumanThreat = true,
	Movement = 150000,
	DisplayName = T(782952255106, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 DisplayName]] "C-B1-4nv1l"),
	DisplayNameShort = T(291697755136, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 DisplayNameShort]] "CB1"),
	DisplayNamePl = T(169291530050, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 DisplayNamePl]] "Crawler Series B"),
	Description = T(534710352216, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 Description]] "Armored Personal Carriers are out of style when fielding mass cheap robots. What is in style is purchasing small numbers of very durable & portable armories. Using the spent bullet casings, and it's own armour, it will occasionally grant the nearest robot fortifications. It deals <color TextButton>Blunt</color> Damage. <color TechSubtitleBlue>50% Piercing Damage</color> <em>Reduction</em>, <color TextButton>50% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>50% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>50% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "HostileCrawlers",
	darkness_penalty = 0,
	EventProgressValue = 250,
	SpawnDefWeight = 25,
	SpawnTags = set( "Boss" ),
	max_skinned_decals_low = -1,
	display_name = T(427497091160, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 display_name]] "MG Siege machine"),
	display_name_pl = T(602286767228, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 display_name_pl]] "MG Siege machines"),
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	WalkSpeed = 4000,
	attack_weapon = "APC_Gun",
}

