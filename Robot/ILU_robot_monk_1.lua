UndefineClass('ILU_robot_monk_1')
DefineClass.ILU_robot_monk_1 = {
	__parents = { "LightHostileRobot_LVL1" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "LightHostileRobot_LVL1",
	SpeciesGroup = "androids",
	Health = 150000,
	MaxHealth = 150000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(50, 50, 50, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(700527823739, --[[ModItemRobotCompositeDef ILU_robot_monk_1 DisplayName]] "GE-44()/V|{ v1"),
	DisplayNameShort = T(324022590785, --[[ModItemRobotCompositeDef ILU_robot_monk_1 DisplayNameShort]] "GMv1"),
	DisplayNamePl = T(696364132340, --[[ModItemRobotCompositeDef ILU_robot_monk_1 DisplayNamePl]] "GMv1s"),
	Description = T(721170221540, --[[ModItemRobotCompositeDef ILU_robot_monk_1 Description]] "New, Nimble, Neverending. Lightly armored, but difficult to hit at range."),
	SalvageLootTable = "LightHostileRobots_3",
	Skills = {
		Combat = 7,
	},
	darkness_penalty = 0,
	EventProgressValue = 150,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 50,
			'Equipment', {
				"Ranged_CarbonCrossbow",
				"Ranged_LaserBlaster",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_LaserBlaster",
				"Ranged_PulseRifle",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Melee_LaserSword",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Melee_LaserSword",
				"Ranged_CarbonCrossbow",
				"Ranged_LaserBlaster",
			},
		}),
	},
}

