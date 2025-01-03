UndefineClass('Scissorhands_Brute_Nesting_1')
DefineClass.Scissorhands_Brute_Nesting_1 = {
	__parents = { "UnitNesting", "Scissorhands" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "Scissorhands",
	composite_part_target = "Scissorhands_Brute",
	EventProgressValue = 180,
	lead_priority = 12,
	DisplayName = T(862409597776, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayName]] "Scissorhands demolisher"),
	DisplayNamePl = T(225616689551, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayNamePl]] "Scissorhands demolishers"),
	DisplayNameUnknown = T(284618171634, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayNameUnknown]] "Huge purple mantis"),
	DisplayNameUnknownPL = T(789645003181, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayNameUnknownPL]] "Huge purple mantises"),
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
	MinNewbornScale = 60,
	MaxNewbornScale = 60,
	MinGrownScale = 115,
	MaxGrownScale = 120,
	UnitNesting = true,
	CanBeNestGuardian = "always",
}

