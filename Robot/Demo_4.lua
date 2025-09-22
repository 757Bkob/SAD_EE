UndefineClass('Demo_4')
DefineClass.Demo_4 = {
	__parents = { "HeavyCombatRobot", "UnitConsumer" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Demo_T3", "Robot" ),
	pfclass = 0,
	Health = 550000,
	MaxHealth = 550000,
	damage_reduction = {
		blunt = 25,
		energy = 20,
		gas = 40,
		piercing = 15,
	},
	HumanThreat = true,
	Movement = 175000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(89, 13, 142, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(446247297830, --[[ModItemRobotCompositeDef Demo_4 DisplayName]] "D-E4-5ulfur1c"),
	DisplayNameShort = T(970881324308, --[[ModItemRobotCompositeDef Demo_4 DisplayNameShort]] "DE4"),
	DisplayNamePl = T(414115315193, --[[ModItemRobotCompositeDef Demo_4 DisplayNamePl]] "Drone Series E"),
	Description = T(598057090716, --[[ModItemRobotCompositeDef Demo_4 Description]] "For an upcharge, a prospective robot army owner can purchase a survivability upgrade for the sabotage model. This ensures that all units ship with the Consortium's modified Laser Spear. A tube runs from the fuel tank to the tip of the spear. Buildings cannot maintain structural integrity when a vat of acid is placed directly on it's support beams! Has <color TechSubtitleBlue>15% Piercing Damage</color> <em>Reduction</em>, <color TextButton>25% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>20% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>45% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T4",
	Skills = {
		Combat = 8,
	},
	darkness_penalty = 0,
	CombatSearchFlags = 536871176,
	EventProgressValue = 900,
	SpawnDefWeight = 80,
	SpawnTags = set( "Boss" ),
	can_be_navigated = false,
	can_navigate_others = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Melee_LaserPike",
			},
		}),
	},
	UnitConsumer = true,
	res_consumed = "LiquidFuel",
	res_max_stored = 30000,
	res_used = 1000,
	res_stored = 30000,
	ConsumeDescription = T(590097868477, --[[ModItemRobotCompositeDef Demo_4 ConsumeDescription]] "An assortment of vials that are hydraulically pumped onto the tip of the units weapons."),
	ConsumeTitle = T(227356268223, --[[ModItemRobotCompositeDef Demo_4 ConsumeTitle]] "Acid Fanny-Pack"),
	ConsumeUIDetail = T(934392634709, --[[ModItemRobotCompositeDef Demo_4 ConsumeUIDetail]] "Liquid Left"),
}

