UndefineClass('Ulfen_T4')
DefineClass.Ulfen_T4 = {
	__parents = { "UlfenBase", "UnitAreaEffect", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "UlfenBase",
	SpeciesGroup = "hoofed",
	RoamRadius = 15000,
	RoamIntervalMin = 40000,
	RoamIntervalMax = 120000,
	composite_part_groups = {
		"Ulfen_T4",
	},
	PainMask = "PainMask",
	MaxMoveReduction = 200,
	damage_reduction = {
		pacify = 60,
	},
	EventProgressValue = 450,
	CombatGroup = "Ulfens",
	CombatHostile = true,
	HitNegationChance = {
		HitNegationChance_blunt = 40,
		HitNegationChance_energy = 40,
		HitNegationChance_gas = 10,
		HitNegationChance_piercing = 10,
		blunt = 40,
		energy = 40,
		gas = 10,
		piercing = 10,
	},
	HitNegationChance_blunt = 40,
	HitNegationChance_piercing = 10,
	HitNegationChance_energy = 40,
	HitNegationChance_gas = 10,
	EnrageChance = 3,
	AttackMemory = 45000,
	CombatGiveUpNoHit = 30000,
	CombatFleeAccuracy = 0,
	aim_spot = "Aim",
	ButcherDuration = 20000,
	max_skinned_decals_low = -1,
	FieldResearchTech = "FieldUlfenT3",
	ObservationDistanceMin = 15000,
	ObservationDistanceMax = 20000,
	Icon = "UI/Icons/Resources/res_ulfen",
	DisplayName = T(436447323614, --[[ModItemUnitAnimalCompositeDef Ulfen_T4 DisplayName]] "GoreBeast"),
	DisplayNamePl = T(822350190957, --[[ModItemUnitAnimalCompositeDef Ulfen_T4 DisplayNamePl]] "GoreBeasts"),
	DisplayNameUnknown = T(287211669895, --[[ModItemUnitAnimalCompositeDef Ulfen_T4 DisplayNameUnknown]] "Unknown Ulfen Evolution"),
	DisplayNameUnknownPL = T(156965739734, --[[ModItemUnitAnimalCompositeDef Ulfen_T4 DisplayNameUnknownPL]] "Unknown Ulfen Evolutions"),
	Description = T(258615234367, --[[ModItemUnitAnimalCompositeDef Ulfen_T4 Description]] "If not made of flesh, bone, and sinew; it would be considered a weapon of war! An aggressive evolution of the Ulfen."),
	BaseMaxHealth = 1400000,
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
		PlaceObj('ButcherResAmount', {
			'resource', "LeatherRaw",
			'min_amount', 20000,
			'max_amount', 40000,
		}),
	},
	SelectionRadius = 2000,
	ChanceToBeMale = 40,
	BodySize = "large",
	ProduceResources = {
		PlaceObj('ResAmount', {
			'resource', "FuelManure",
			'amount', 20000,
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
		"StrongAnimal",
		"UlfenRage",
	},
	collision_radius_mod = 1250,
	pfclass_tamed = 10,
	pfclass_tamed_lead = 13,
	attack_weapon = "UlfenT2",
	EatStartAnim = "eat_Start",
	EatIdleAnim = {
		"eat_Idle",
	},
	EatEndAnim = "eat_End",
	anim_idle_nervous = {
		"idle_Nervous",
	},
	anim_idle_playful = {
		"idle_Playfull",
		"idle_Playfull2",
	},
	SleepStartAnim = "sleep_Start",
	SleepIdleAnim = "sleep_Idle",
	SleepEndAnim = "sleep_End",
	SleepInterruptedAnim = "sleep_Interrupted",
	SleepStartAnim2 = "sleep_Start2",
	SleepIdleAnim2 = "sleep_Idle2",
	SleepEndAnim2 = "sleep_End2",
	SleepInterruptedAnim2 = "sleep_Interrupted2",
	Tameable = true,
	Petable = true,
	TamingFood = "Berry",
	TamingFoodAmount = 10000,
	TamingMinimumSkill = 3,
	TamingChance = 70,
	TamingAggressiveChance = 10,
	TamingDistance = 10000,
	TamedLifetimeMin = 92160000,
	TamedLifetimeMax = 138240000,
	CombatSkillInitial = range(5, 6),
	BondingChance = 10,
	ReproductionType = "two sexes",
	DailyPregnancyChance = 75,
	PregnancyDuration = 2000000,
	GrowDuration = 2000000,
	NewbornClass = "Ulfen_T5",
	MinGrownScale = 70,
	MaxGrownScale = 90,
	FieldVisibilityCold = 30000,
	FieldVisibilityWarm = 10000,
	MoveSpeedCold = 1000,
	PlantsToEatMin = 40,
	PlantsToEatMax = 60,
	UnitAreaEffect = true,
	UnitPerkFrenzy = true,
	AffectClass = "UnitAnimal",
	Effects = {
		PlaceObj('AreaEffectHealthCondition', {
			BodyPartGroup = "WholeBodyWithOrgans",
			HealthCond = "UlfenHerd",
			HealthCondType = "Buff",
		}),
	},
	Disabled = function (self)
		return self:IsDead() or self:IsUnconscious()
	end,
	AffectFilter = function (self, target)
		return (target.class == "Ulfen_T5" or target.class == "Ulfen_T4")
			and not target:IsDead()
			and not target:IsUnconscious()
	end,
	FrenzyEffects = {
		"Frenzy_Conscious_3",
	},
}

