UndefineClass('LightHostileRobot_LVL1')
DefineClass.LightHostileRobot_LVL1 = {
	__parents = { "CombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	comment = "Assault evos",
	object_class = "CombatRobot",
	UnitTags = set( "Robot", "assault_T1" ),
	pfclass = 17,
	Health = 50000,
	MaxHealth = 50000,
	HumanThreat = true,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(88, 60, 40, 255),
		'EditableRoughness1', -50,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(525626260477, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 DisplayName]] "D-A1-4554ul7"),
	DisplayNameShort = T(754094962645, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 DisplayNameShort]] "DA1"),
	DisplayNamePl = T(993542161096, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 DisplayNamePl]] "Drone A series"),
	Description = T(334414305147, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 Description]] "Mass produced, lightly equipped, easy to distract. Threatening only in great number. No defenses."),
	SalvageLootTable = "ILU_Robot_Human_T1",
	Skills = {},
	DistressEnrageChance = 5,
	DistressCallRange = 5000,
	DistressCallRangeFirst = 5000,
	EventProgressValue = 50,
	SpawnTags = set( "Minion" ),
	can_lead_formation = false,
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_Crossbow",
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
				"Melee_LaserPike",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_CarbonCrossbow",
			},
		}),
	},
}

