UndefineClass('HeavyHostileRobot_LVL5')
DefineClass.HeavyHostileRobot_LVL5 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Heavy_Malus", "Heavy_Shred_T2", "Heavy_Slow_T2", "Robot" ),
	Health = 2000000,
	MaxHealth = 2000000,
	damage_reduction = {
		blunt = 75,
		energy = 30,
		gas = 35,
		piercing = 15,
	},
	HumanThreat = true,
	Movement = 90000,
	Combat = 3000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(50, 50, 50, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(817625053162, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 DisplayName]] "D-D5-l37h4r6y"),
	DisplayNameShort = T(964653480644, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 DisplayNameShort]] "DD5"),
	DisplayNamePl = T(899722389212, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 DisplayNamePl]] "Drone Series D"),
	Description = T(746619506377, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 Description]] "Not satisfied with small arms fire, this unit now comes with a 15 Kiloton rating. Any explosion with a smaller payload will not destroy this model. The Consortium's sales pitch for this model is \"Leaves you and only you blown away!\". Combined with a refined laser scatter plugin destroying more enemy armor makes this unit extremely desirable for front-line engagements. Has <color TechSubtitleBlue>15% Piercing Damage </color><color TextEmphasis>Reduction</color>, <color TextButton>40% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>30% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>25% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T5",
	EventProgressValue = 3300,
	SpawnDefWeight = 90,
	SpawnTags = set( "Boss" ),
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 60,
			'Equipment', {
				"Ranged_LaserBlaster_Improved",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Ranged_LaserBlaster_Improved",
				"Melee_LaserPike",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 10,
			'Equipment', {
				"Ranged_LaserBlaster",
			},
		}),
	},
}

