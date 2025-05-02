UndefineClass('Juno_Brute')
DefineClass.Juno_Brute = {
	__parents = { "Juno", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	comment = "T2",
	object_class = "Juno",
	EventProgressValue = 500,
	lead_priority = 6,
	DisplayName = T(700763245375, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayName]] "Juno demolisher"),
	DisplayNamePl = T(195660478051, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayNamePl]] "Juno demolishers"),
	DisplayNameUnknown = T(159439380678, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayNameUnknown]] "Large horned insect"),
	DisplayNameUnknownPL = T(362184721654, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayNameUnknownPL]] "Large horned insect"),
	BaseMaxHealth = 300000,
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
	TamingChance = 60,
	NewbornClass = "Angry_Juno",
	UnitPerkFrenzy = true,
	FrenzyHealthPct = 70,
	FrenzyChance = 50,
	FrenzyDuration = 80000,
	FrenzyCooldown = 40000,
	FrenzyEffects = {
		"JunoFrenzy",
	},
}

