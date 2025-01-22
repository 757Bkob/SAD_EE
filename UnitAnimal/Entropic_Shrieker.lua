UndefineClass('Entropic_Shrieker')
DefineClass.Entropic_Shrieker = {
	__parents = { "Shrieker_Manhunting", "UnitAreaEffect", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "Shrieker_Manhunting",
	EventProgressValue = 750,
	SpawnDefWeight = 30,
	SpawnTags = set(),
	CombatHostile = false,
	CombatUseCover = true,
	HitNegationChance = {
		blunt = 10,
		energy = 10,
		gas = 10,
		pacify = 40,
		piercing = 50,
	},
	HitNegationChance_blunt = 10,
	HitNegationChance_piercing = 50,
	HitNegationChance_energy = 10,
	HitNegationChance_gas = 10,
	HitNegationChance_pacify = 40,
	HumanThreat = true,
	RobotThreat = true,
	FieldResearchTech = "Field_Shrieker_T2",
	lead_priority = 6,
	DisplayName = T(--[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayName]] "Entropic Shrieker"),
	DisplayNamePl = T(--[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayNamePl]] "Entropic Shrieker"),
	DisplayNameUnknown = T(507956053632, --[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayNameUnknown]] "Unknown Shrieker Evolution"),
	DisplayNameUnknownPL = T(458576588964, --[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayNameUnknownPL]] "Unknown Shrieker Evolution"),
	Description = T(322528609672, --[[ModItemUnitAnimalCompositeDef Entropic_Shrieker Description]] "Shrieker's who have evolved long barbed spikes. Resistant to piercing attacks, the barbs fully pierce and lodge in nearby terrain, lowering movement speed. Deals <color TextButton>Blunt</color> and <color TextSubtitleBlue>Piercing</color> damage."),
	BaseMaxHealth = 400000,
	DailyEatingAmount = 2000,
	ButcherResources = {
		PlaceObj('ButcherResAmount', {
			'resource', "RawMeatInsect",
			'min_amount', 75000,
		}),
	},
	ChanceToBeMale = 50,
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
	attack_weapon = "shriker_range_move",
	TamingChance = 60,
	DailyPregnancyChance = 65,
	PregnancyDuration = 3840000,
	GrowDuration = 3840000,
	NewbornClass = "Plague_Sniper_Shrieker",
	UnitAreaEffect = true,
	UnitPerkFrenzy = true,
	AffectRadius = 25000,
	AffectClass = "UnitAnimal",
	Effects = {
		PlaceObj('AreaEffectHealthCondition', {
			BodyPartGroup = "WholeBody",
			HealthCond = "BroodMotherNearby",
			HealthCondType = "Buff",
		}),
	},
	Disabled = function (self)
		return self:IsDead() or self:IsUnconscious()
	end,
	AffectFilter = function (self, target)
		return target.CombatGroup == self.CombatGroup
			and target:HasUnitTag("AgitatedByPheromones")
			and not target:IsDead()
			and not target:IsUnconscious()
	end,
	FrenzyHealthPct = 99,
	FrenzyEffects = {
		"Frenzy_Conscious_2",
	},
}

