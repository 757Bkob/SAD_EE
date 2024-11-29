UndefineClass('ILU_robot_sniper_1')
DefineClass.ILU_robot_sniper_1 = {
	__parents = { "LightHostileRobot_LVL1" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "LightHostileRobot_LVL1",
	Health = 150000,
	MaxHealth = 150000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(50, 50, 50, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(973111255468, --[[ModItemRobotCompositeDef ILU_robot_sniper_1 DisplayName]] "G-3000 Assault"),
	DisplayNameShort = T(304723248529, --[[ModItemRobotCompositeDef ILU_robot_sniper_1 DisplayNameShort]] "G-3000"),
	DisplayNamePl = T(215744695202, --[[ModItemRobotCompositeDef ILU_robot_sniper_1 DisplayNamePl]] "G-3000 Assaults"),
	Description = T(525050291470, --[[ModItemRobotCompositeDef ILU_robot_sniper_1 Description]] "A light assault robot. Has rapid movement but it is not very well armored. Has better Combat and more integrity than the G-2000 version."),
	SalvageLootTable = "LightHostileRobots_3",
	Skills = {
		Combat = 7,
	},
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

