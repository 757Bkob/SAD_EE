UndefineClass('Too_Angry_Too_Die_Juno')
DefineClass.Too_Angry_Too_Die_Juno = {
	__parents = { "Juno", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "Juno",
	EventProgressValue = 1500,
	SpawnDefWeight = 30,
	CombatHostile = false,
	HitNegationChance = {
		blunt = 35,
		energy = 35,
		gas = 35,
		pacify = 60,
		piercing = 35,
	},
	HumanThreat = true,
	RobotThreat = true,
	FieldResearchTech = "Field_Juno_T4",
	ForcedApproachPlanning = true,
	lead_priority = 6,
	DisplayName = T(--[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayName]] "Too-Angry-Too-Die Juno"),
	DisplayNamePl = T(--[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayNamePl]] "Too-Angry-Too-Die Juno"),
	DisplayNameUnknown = T(--[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayNameUnknown]] "Juno's Final Form?"),
	DisplayNameUnknownPL = T(--[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayNameUnknownPL]] "Juno's Final Form?"),
	Description = T(967813562361, --[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno Description]] "Impossible to be knocked unconscious or pacified, our only option is to cause enough damage to render their bodies impossible to move. Deals <color TextButton>Blunt</color> damage."),
	BaseMaxHealth = 1800000,
	DailyEatingAmount = 4000,
	ButcherResources = {
		PlaceObj('ButcherResAmount', {
			'resource', "Bitherm",
			'min_amount', 11000,
			'max_amount', 20000,
		}),
		PlaceObj('ButcherResAmount', {
			'resource', "RawMeatInsect",
			'min_amount', 75000,
		}),
		PlaceObj('ButcherResAmount', {
			'resource', "Sintis",
			'min_amount', 11000,
			'max_amount', 20000,
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
		"AP_Fast",
		"AP_Frenzy",
		"AP_Regen",
	},
	attack_weapon = "Juno_Hulk",
	TamingChance = 40,
	DailyPregnancyChance = 75,
	PregnancyDuration = 1920000,
	GrowDuration = 1920000,
	NewbornClass = "Junoskar",
	UnitPerkFrenzy = true,
	FrenzyHealthPct = 99,
	FrenzyEffects = {
		"JunoFrenzy",
		"Frenzy_Conscious_4",
		"Frenzy_Conscious_Perfect",
		"Frenzy_Regen",
		"Frenzy_Fast",
	},
}

