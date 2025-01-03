UndefineClass('Hulk_Juno')
DefineClass.Hulk_Juno = {
	__parents = { "Juno", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "Juno",
	EventProgressValue = 1100,
	SpawnDefWeight = 30,
	CombatHostile = false,
	HitNegationChance = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 40,
		piercing = 30,
	},
	HumanThreat = true,
	RobotThreat = true,
	FieldResearchTech = "Field_Juno_T2",
	ForcedApproachPlanning = true,
	lead_priority = 6,
	DisplayName = T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayName]] "Hulk Juno"),
	DisplayNamePl = T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayNamePl]] "Hulk Juno"),
	DisplayNameUnknown = T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayNameUnknown]] "Unknown Juno Evolution"),
	DisplayNameUnknownPL = T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayNameUnknownPL]] "Unknown Juno Evolution"),
	Description = T(453181849768, --[[ModItemUnitAnimalCompositeDef Hulk_Juno Description]] "Somehow, this creature is even more aggressive than the last. Thankfully evolution has not deemed defenses to be a high priority. Low defenses, high damage. Deals <color TextButton>Blunt</color> damage."),
	BaseMaxHealth = 1200000,
	DailyEatingAmount = 3000,
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
		"AP_Regen",
		"AP_Frenzy",
	},
	attack_weapon = "Juno_Hulk",
	TamingChance = 40,
	DailyPregnancyChance = 65,
	PregnancyDuration = 2880000,
	GrowDuration = 2880000,
	UnitPerkFrenzy = true,
	FrenzyHealthPct = 99,
	FrenzyChance = 200,
	FrenzyEffects = {
		"JunoFrenzy",
		"Frenzy_Regen",
		"Frenzy_Conscious_3",
	},
}

