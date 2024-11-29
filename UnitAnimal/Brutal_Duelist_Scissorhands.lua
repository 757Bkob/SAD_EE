UndefineClass('Brutal_Duelist_Scissorhands')
DefineClass.Brutal_Duelist_Scissorhands = {
	__parents = { "Scissorhands", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "Scissorhands",
	EventProgressValue = 350,
	SpawnDefWeight = 30,
	CombatHostile = false,
	HitNegationChance = {
		blunt = 30,
		energy = 30,
		gas = 15,
		pacify = 40,
		piercing = 15,
	},
	HumanThreat = true,
	RobotThreat = true,
	FieldResearchTech = "Field_Scissorhands_T2",
	lead_priority = 12,
	DisplayName = T(--[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayName]] "Brutal Scissorhand Duelist"),
	DisplayNamePl = T(--[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayNamePl]] "Brutal Scissorhand Duelist"),
	DisplayNameUnknown = T(--[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayNameUnknown]] "Graceful Scissorhands?!?"),
	DisplayNameUnknownPL = T(--[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayNameUnknownPL]] "Graceful Scissorhands?!?"),
	Description = T(810154241954, --[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands Description]] "Blades that are honed by attacking or defending from other Scissorhands. If this blade touches us, it will be more likely to deal critical wounds. Able to deftly dodge blunt force, and dissapates any energy attacks with ease. Deals <color TextSubtitleBlue>Piercing</color> damage."),
	BaseMaxHealth = 400000,
	DailyEatingAmount = 3000,
	ButcherResources = {
		PlaceObj('ButcherResAmount', {
			'resource', "Sintis",
			'min_amount', 5000,
			'max_amount', 10000,
		}),
		PlaceObj('ButcherResAmount', {
			'resource', "RawMeatInsect",
			'min_amount', 40000,
		}),
		PlaceObj('ButcherResAmount', {
			'resource', "Toco",
			'min_amount', 5000,
			'max_amount', 10000,
		}),
	},
	ProduceResources = {
		PlaceObj('ResAmount', {
			'resource', "Stone",
			'amount', 45000,
		}),
	},
	ProduceResInterval = 2400000,
	AnimalPerks = {
		"StrongAnimal",
		"StoneDigger",
		"DraftableAnimal",
	},
	attack_weapon = "ScissorhandsMelee_Brute",
	TamingChance = 60,
	DailyPregnancyChance = 55,
	PregnancyDuration = 3840000,
	GrowDuration = 3840000,
	NewbornClass = "Rage_Fueled_Scissorhand_Duelist",
	MinNewbornScale = 60,
	MaxNewbornScale = 60,
	MinGrownScale = 115,
	MaxGrownScale = 120,
	UnitPerkFrenzy = true,
	FrenzyHealthPct = 99,
	FrenzyEffects = {
		"Frenzy_Conscious_2",
	},
}

