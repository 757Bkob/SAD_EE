UndefineClass('Plague_Sniper_Shrieker')
DefineClass.Plague_Sniper_Shrieker = {
	__parents = { "Shrieker_Manhunting", "UnitAreaEffect", "UnitPerkFrenzy" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	object_class = "Shrieker_Manhunting",
	EventProgressValue = 1100,
	SpawnDefWeight = 30,
	CombatHostile = false,
	CombatUseCover = true,
	HitNegationChance = {
		blunt = 25,
		energy = 15,
		gas = 15,
		pacify = 60,
		piercing = 55,
	},
	HitNegationChance_blunt = 25,
	HitNegationChance_piercing = 55,
	HitNegationChance_energy = 15,
	HitNegationChance_gas = 15,
	HitNegationChance_pacify = 60,
	HumanThreat = true,
	RobotThreat = true,
	FieldResearchTech = "Field_Shrieker_T2",
	lead_priority = 6,
	DisplayName = T(--[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayName]] "Plague Sniper Shrieker"),
	DisplayNamePl = T(--[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayNamePl]] "Plague Sniper Shrieker"),
	DisplayNameUnknown = T(632905210618, --[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayNameUnknown]] "Unknown Shrieker Evolution"),
	DisplayNameUnknownPL = T(256115533630, --[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayNameUnknownPL]] "Unknown Shrieker Evolution"),
	Description = T(197605412242, --[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker Description]] "Attacks that slow, and longer range than even our upgraded railguns. All while their durability has increased.... Thankfully still weak to energy and gas weapons. Deals <color TextButton>Blunt</color> and <color TextSubtitleBlue>Piercing</color> damage."),
	BaseMaxHealth = 600000,
	DailyEatingAmount = 3000,
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
		"SmartPredator",
		"StoneDigger",
		"DraftableAnimal",
	},
	attack_weapon = "shriker_range_long",
	TamingChance = 50,
	DailyPregnancyChance = 75,
	PregnancyDuration = 2880000,
	GrowDuration = 2880000,
	NewbornClass = "Sniping_Entropy_Shielded_Shrieker",
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
		"Frenzy_Conscious_3",
	},
}

