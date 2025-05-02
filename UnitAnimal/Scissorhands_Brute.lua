UndefineClass('Scissorhands_Brute')
DefineClass.Scissorhands_Brute = {
	__parents = { "Scissorhands" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	comment = "T2",
	object_class = "Scissorhands",
	EventProgressValue = 180,
	lead_priority = 12,
	DisplayName = T(803640083458, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayName]] "Scissorhands demolisher"),
	DisplayNamePl = T(381190689622, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayNamePl]] "Scissorhands demolishers"),
	DisplayNameUnknown = T(587799246476, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayNameUnknown]] "Huge purple mantis"),
	DisplayNameUnknownPL = T(531570130410, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayNameUnknownPL]] "Huge purple mantises"),
	BaseMaxHealth = 200000,
	ButcherResources = {
		PlaceObj('ButcherResAmount', {
			'resource', "RawMeatInsect",
			'min_amount', 40000,
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
	NewbornClass = "Brutal_Duelist_Scissorhands",
	MinNewbornScale = 60,
	MaxNewbornScale = 60,
	MinGrownScale = 115,
	MaxGrownScale = 120,
}

