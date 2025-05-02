UndefineClass('Shrieker_Manhunting_Mother')
DefineClass.Shrieker_Manhunting_Mother = {
	__parents = { "Shrieker_Manhunting", "UnitAreaEffect" },
	__generated_by_class = "ModItemUnitAnimalCompositeDef",


	comment = "T1",
	object_class = "Shrieker_Manhunting",
	UnitTags = set( "Animal" ),
	pfclass = 3,
	EventProgressValue = 250,
	SpawnDefWeight = 5,
	HitNegationChance = {
		piercing = 33,
	},
	HitNegationChance_piercing = 33,
	DistressCallRange = 25000,
	DistressCallRangeFirst = 25000,
	max_skinned_decals = 5,
	max_skinned_decals_low = -1,
	lead_priority = 20,
	DisplayName = T(819462614663, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayName]] "Shrieker broodmother"),
	DisplayNamePl = T(984740461354, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayNamePl]] "Shrieker broodmothers"),
	DisplayNameUnknown = T(295145608180, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayNameUnknown]] "Huge spike-tailed insect"),
	DisplayNameUnknownPL = T(298716553110, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayNameUnknownPL]] "Huge spike-tailed insects"),
	Description = T(715853256017, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother Description]] "The queen of the Shrieker swarm spreads pheromones that agitate most insects and make them move quicker."),
	BaseMaxHealth = 200000,
	FoodSourceClasses = {
		"UnitCorpse",
		"ResourcePile",
		"Plant",
		"AnimalFeeder",
	},
	ButcherResources = {
		PlaceObj('ButcherResAmount', {
			'resource', "RawMeatInsect",
			'min_amount', 50000,
		}),
	},
	SelectionRadius = 600,
	ChanceToBeMale = 0,
	BodySize = "large",
	ProduceResources = {
		PlaceObj('ResAmount', {
			'resource', "CarbonNanotubes",
			'amount', 20000,
		}),
	},
	ProduceResInterval = 2880000,
	AnimalPerks = {
		"CarbonNanoGlands",
		"AgitatingPheromones",
		"DraftableAnimal",
	},
	movement_adjust = 400,
	can_run = false,
	pfclass_tamed = 10,
	CombatSkill = 5,
	IntimidationRange = 25000,
	TamedLifetimeMin = 184320000,
	TamedLifetimeMax = 322560000,
	MinGrownScale = 140,
	MaxGrownScale = 150,
	UnitAreaEffect = true,
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
}

