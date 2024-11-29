UndefineClass('ILU_robot_walker_fort_1')
DefineClass.ILU_robot_walker_fort_1 = {
	__parents = { "CrawlerMachineGun", "UnitAreaEffect" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "CrawlerMachineGun",
	SpeciesGroup = "androids",
	UnitTags = set( "Robot" ),
	Health = 250000,
	MaxHealth = 250000,
	HumanThreat = true,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(50, 50, 50, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(446514976821, --[[ModItemRobotCompositeDef ILU_robot_walker_fort_1 DisplayName]] "MG Siege machine"),
	DisplayNameShort = T(450912206981, --[[ModItemRobotCompositeDef ILU_robot_walker_fort_1 DisplayNameShort]] "MG Machine"),
	DisplayNamePl = T(186692397351, --[[ModItemRobotCompositeDef ILU_robot_walker_fort_1 DisplayNamePl]] "MG Siege machines"),
	SalvageLootTable = "HostileCrawlers",
	Skills = {
		Combat = 7,
	},
	EventProgressValue = 250,
	SpawnDefWeight = 10,
	SpawnTags = set( "Boss" ),
	max_skinned_decals_low = -1,
	display_name = T(607277666675, --[[ModItemRobotCompositeDef ILU_robot_walker_fort_1 display_name]] "MG Siege machine"),
	display_name_pl = T(772033813951, --[[ModItemRobotCompositeDef ILU_robot_walker_fort_1 display_name_pl]] "MG Siege machines"),
	FieldResearchTech = "FieldCrawler",
	ObservationDistanceMin = 2000,
	ObservationDistanceMax = 5000,
	attack_weapon = "CrawlerRobotMinigun_Hostile",
	UnitAreaEffect = true,
	AffectRadius = 100000,
	AffectClass = "Robot",
	Effects = {
		PlaceObj('AreaEffectHealthCondition', {
			BodyPartGroup = "WholeBody",
			HealthCond = "px_fortress_redirect",
			HealthCondReason = "mod",
			HealthCondType = "Buff",
		}),
	},
	Disabled = function (self)
		return self:IsDead() or self:IsUnconscious()
	end,
	AffectFilter = function (self, target)
		return target.CombatGroup == self.CombatGroup
			and not target == self
			and not target:IsDead()
			and not target:IsUnconscious()
	end,
}

