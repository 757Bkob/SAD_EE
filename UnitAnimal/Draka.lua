UndefineClass('Draka')
DefineClass.Draka = {
	__parents = { "DrakaBase" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "DrakaBase",
	SpeciesGroup = "hoofed",
	RoamRadius = 30000,
	RoamMinDist = 5000,
	RoamMaxDist = 20000,
	RoamIntervalMax = 60000,
	composite_part_parent = {
		Test = "Forehead",
	},
	composite_part_spots = {
		Forehead = "Horns",
		HornLeft = "Horns",
		HornRight = "Horns",
		Test = "Origin",
	},
	PainMask = "PainMask",
	EventProgressValue = 50,
	CombatGroup = "Drakkas",
	EnrageChance = 15,
	AttackMemory = 45000,
	CombatGiveUpNoHit = 30000,
	CombatFleeAccuracy = 0,
	ButcherDuration = 20000,
	max_skinned_decals_low = -2,
	FieldResearchTech = "FieldDraka",
	ObservationDistanceMin = 15000,
	ObservationDistanceMax = 20000,
	Icon = "UI/Icons/Resources/res_draka",
	DisplayName = T(553265468235, --[[ModItemUnitAnimalCompositeDef Draka DisplayName]] "Drakka"),
	DisplayNamePl = T(215750510541, --[[ModItemUnitAnimalCompositeDef Draka DisplayNamePl]] "Drakkas"),
	Description = T(871759141708, --[[ModItemUnitAnimalCompositeDef Draka Description]] "Usually passive. High chance to retaliate when attacked."),
	FoodResources = {
		"FoodAnimalHerbivore",
		"Slop",
	},
	DailyEatingAmount = 1000,
	Diet = "Herbivore",
	EatingDuration = 4000,
	FoodSourceClasses = {
		"ResourcePile",
		"Plant",
		"AnimalFeeder",
	},
	ButcherResources = {
		PlaceObj('ButcherResAmount', {
			'resource', "RawMeat",
			'min_amount', 40000,
			'max_amount', 60000,
		}),
	},
	SelectionRadius = 2000,
	ChanceToBeMale = 30,
	BodySize = "large",
	ProduceResources = {
		PlaceObj('ResAmount', {
			'resource', "FuelManure",
			'amount', 15000,
		}),
	},
	ProduceResInterval = 1920000,
	CmdProduceResources = function (animal)
		if not animal:IsTamed() then
			if animal:Random(100, "no produce chance") > 40 then
				return animal:UpdateProductionTime()
			end
		end
		return animal:DoProduceResources()
	end,
	AnimalPerks = {
		"ManureProducer",
	},
	pfclass_tamed = 10,
	pfclass_tamed_lead = 13,
	EnrageChanceOtherAnimals = 50,
	EatStartAnim = "eat_Start",
	EatIdleAnim = {
		"eat_Idle",
	},
	EatEndAnim = "eat_End",
	anim_idle = {
		"idle",
		"idle_Active",
		"idle_Active2",
	},
	anim_idle_nervous = {
		"idle_Nervous",
	},
	SleepStartAnim = "sleep_Start",
	SleepIdleAnim = "sleep_Idle",
	SleepEndAnim = "sleep_End",
	SleepInterruptedAnim = "sleep_Interrupted",
	Tameable = true,
	TamingFood = "Grain",
	TamingFoodAmount = 10000,
	TamingMinimumSkill = 5,
	TamingChance = 50,
	TamingAggressiveChance = 20,
	TamingDistance = 10000,
	TamedLifetimeMin = 92160000,
	TamedLifetimeMax = 138240000,
	CombatSkillInitial = range(5, 6),
	BondingChance = 5,
	ReproductionType = "two sexes",
	DailyPregnancyChance = 55,
	PregnancyDuration = 4800000,
	GrowDuration = 4800000,
	NewbornClass = "Draka_T2",
	MaxGrownScale = 100,
	FieldVisibilityCold = 30000,
	FieldVisibilityWarm = 10000,
	MoveSpeedCold = 1000,
	PlantsToEatMin = 40,
	PlantsToEatMax = 60,
	HerdMergeClass = "Draka",
}

