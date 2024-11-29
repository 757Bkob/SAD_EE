UndefineClass('Turret_ToxicGun')
DefineClass.Turret_ToxicGun = {
	__parents = { "FortificationTurret", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FortificationTurret",
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "ElectricTurrets",
		}),
	},
	BuildMenuCategory = "sub_AutomatedTurrets",
	display_name = T(891579310871, --[[ModItemBuildingCompositeDef Turret_ToxicGun display_name]] "Neurotoxin Turret"),
	description = T(755371118458, --[[ModItemBuildingCompositeDef Turret_ToxicGun description]] "Automated defense station. Shoots at all targets in its range."),
	menu_display_name = T(225065326261, --[[ModItemBuildingCompositeDef Turret_ToxicGun menu_display_name]] "Machine gun"),
	BuildMenuIcon = "UI/Icons/Build Menu/turret_machine_gun",
	BuildMenuPos = 10,
	display_name_pl = T(207586376869, --[[ModItemBuildingCompositeDef Turret_ToxicGun display_name_pl]] "Toxic turrets"),
	display_name_short = T(431518861420, --[[ModItemBuildingCompositeDef Turret_ToxicGun display_name_short]] "Turret"),
	labels = {
		"CPUCoreDevice",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		Metal = 50000,
	}),
	construction_points = 200000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 50000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		ScrapMetal = 50000,
	}),
	Health = 250000,
	MaxHealth = 250000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-600, -600, 0, 600, 600, 1400),
	lock_pass_box = box(-1200, -1200, 700, 1200, 1200, 2800),
	MinConstructionSkill = 3,
	terrain_change = "soil",
	soil_form = "circle",
	progress = 30000,
	BuildStartAnimation = "standing_Repair_Weld_Start",
	BuildIdleAnimations = {
		"standing_Repair_Weld_Idle",
	},
	BuildEndAnimation = "standing_Repair_Weld_End",
	BuildActivityTool = "WeldingTool",
	attack_attraction = 60,
	affected_by_disasters = set( "SolarFlare", "Thunderstorm" ),
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	attack_weapon = "TurretMinigun",
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MinTimeToMalfunction = 4800000,
	MaxTimeToMalfunction = 14400000,
	IsPowerConsumer = true,
	PowerConsumption = 40000,
	HasSmartConnection = true,
}

