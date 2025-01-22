UndefineClass('Draka_T4')
DefineClass.Draka_T4 = {
	__parents = { "DrakaBase", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "DrakaBase",
	SpeciesGroup = "hoofed",
	RoamRadius = 30000,
	RoamMinDist = 5000,
	RoamMaxDist = 20000,
	RoamIntervalMax = 60000,
	composite_part_groups = {
		"DrakaT4",
	},
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
	EventProgressValue = 800,
	CombatGroup = "Drakkas",
	HitNegationChance = {
		HitNegationChance_blunt = 40,
		HitNegationChance_energy = 40,
		HitNegationChance_pacify = 60,
		blunt = 40,
		energy = 40,
		pacify = 60,
	},
	HitNegationChance_blunt = 40,
	HitNegationChance_energy = 40,
	HitNegationChance_pacify = 60,
	EnrageChance = 15,
	AttackMemory = 45000,
	CombatGiveUpNoHit = 30000,
	CombatFleeAccuracy = 0,
	ButcherDuration = 20000,
	max_skinned_decals_low = -2,
	FieldResearchTech = "FieldDraka_T3",
	ObservationDistanceMin = 15000,
	ObservationDistanceMax = 20000,
	Icon = "UI/Icons/Resources/res_draka",
	DisplayName = T(342153828864, --[[ModItemUnitAnimalCompositeDef Draka_T4 DisplayName]] "DrikaDrakka"),
	DisplayNamePl = T(300064191432, --[[ModItemUnitAnimalCompositeDef Draka_T4 DisplayNamePl]] "DrikaDrakkas"),
	Description = T(894512638170, --[[ModItemUnitAnimalCompositeDef Draka_T4 Description]] "Aggressive Evolution of the Drakka. This species now emits sound waves long after the impacts that caused it."),
	BaseMaxHealth = 1200000,
	FoodResources = {
		"FoodAnimalHerbivore",
		"Slop",
	},
	DailyEatingAmount = 4000,
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
	ChanceToBeMale = 45,
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
		"DraftableAnimal",
		"DrakaAcoustic",
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
	TamingChance = 25,
	TamingAggressiveChance = 80,
	TamingDistance = 10000,
	TamedLifetimeMin = 92160000,
	TamedLifetimeMax = 138240000,
	CombatSkillInitial = range(5, 6),
	BondingChance = 5,
	ReproductionType = "two sexes",
	DailyPregnancyChance = 75,
	PregnancyDuration = 2000000,
	GrowDuration = 2000000,
	NewbornClass = "Draka_T5",
	MaxGrownScale = 100,
	FieldVisibilityCold = 30000,
	FieldVisibilityWarm = 10000,
	MoveSpeedCold = 1000,
	PlantsToEatMin = 40,
	PlantsToEatMax = 60,
	HerdMergeClass = "Draka",
	UnitPerkFrenzy = true,
	FrenzyEffects = {
		"Frenzy_Conscious_3",
		"Acoustic_T3",
	},
}

