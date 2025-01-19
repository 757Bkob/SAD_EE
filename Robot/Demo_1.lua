UndefineClass('Demo_1')
DefineClass.Demo_1 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Demo_T1", "Robot" ),
	pfclass = 0,
	Health = 125000,
	MaxHealth = 125000,
	damage_reduction = {
		blunt = 10,
		energy = 5,
		gas = 25,
	},
	HumanThreat = true,
	Movement = 150000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(96, 50, 116, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(849333071141, --[[ModItemRobotCompositeDef Demo_1 DisplayName]] "D-E1-7r0ubl3m4k3r"),
	DisplayNameShort = T(577195232618, --[[ModItemRobotCompositeDef Demo_1 DisplayNameShort]] "DE1"),
	DisplayNamePl = T(868338985251, --[[ModItemRobotCompositeDef Demo_1 DisplayNamePl]] "Drone Series E"),
	Description = T(435729608418, --[[ModItemRobotCompositeDef Demo_1 Description]] "It is a running joke in Consortium media that purple makes robots stealthier. So when a new model was announced sold as a stealth sabotage unit, it came to noones surprise in a shade of purple. They even made the acid purple colored! Has <color TechSubtitleBlue>0% Piercing Damage</color> <em>Reduction</em>, <color TextButton>10% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>5% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>25% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "LightHostileRobots_3",
	Skills = {
		Combat = 5,
	},
	darkness_penalty = 0,
	CombatSearchFlags = 536871176,
	EventProgressValue = 50,
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
				"Ranged_ShortBow",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Melee_Spear",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_ShortBow",
				"Melee_Spear",
			},
		}),
	},
}

