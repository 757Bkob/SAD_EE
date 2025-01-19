UndefineClass('Angry_Juno')
DefineClass.Angry_Juno = {
	__parents = { "Juno", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "Juno",
	EventProgressValue = 900,
	SpawnDefWeight = 30,
	CombatHostile = false,
	HitNegationChance = {
		blunt = 15,
		energy = 15,
		gas = 15,
		pacify = 20,
		piercing = 15,
	},
	HitNegationChance_blunt = 15,
	HitNegationChance_piercing = 15,
	HitNegationChance_energy = 15,
	HitNegationChance_gas = 15,
	HitNegationChance_pacify = 20,
	HumanThreat = true,
	RobotThreat = true,
	FieldResearchTech = "Field_Juno_T2",
	ForcedApproachPlanning = true,
	lead_priority = 6,
	DisplayName = T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayName]] "Angry Juno"),
	DisplayNamePl = T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayNamePl]] "Angry Juno"),
	DisplayNameUnknown = T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayNameUnknown]] "Unknown Juno Evolution"),
	DisplayNameUnknownPL = T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayNameUnknownPL]] "Unknown Juno Evolution"),
	Description = T(191163878118, --[[ModItemUnitAnimalCompositeDef Angry_Juno Description]] "This Juno's species has focused it's biology on killing, and identifying what needs to be killed next. Low defenses, high damage. Deals <color TextButton>Blunt</color> damage."),
	BaseMaxHealth = 500000,
	DailyEatingAmount = 2000,
	ButcherResources = {
		PlaceObj('ButcherResAmount', {
			'resource', "RawMeatInsect",
			'min_amount', 75000,
		}),
	},
	ProduceResources = {
		PlaceObj('ResAmount', {
			'resource', "Stone",
			'amount', 75000,
		}),
	},
	ProduceResInterval = 2400000,
	AnimalPerks = {
		"StrongAnimal",
		"BloodFrenzy",
		"SmartPredator",
		"StoneDigger",
		"DraftableAnimal",
	},
	attack_weapon = "JunoMelee_Brute",
	DailyPregnancyChance = 75,
	PregnancyDuration = 3840000,
	GrowDuration = 3840000,
	NewbornClass = "Hulk_Juno",
	UnitPerkFrenzy = true,
	FrenzyHealthPct = 99,
	FrenzyEffects = {
		"JunoFrenzy",
		"Frenzy_Conscious_2",
		"Frenzy_Fast",
	},
}

