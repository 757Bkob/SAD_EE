UndefineClass('Demo_3')
DefineClass.Demo_3 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Demo_T3", "Robot" ),
	pfclass = 0,
	Health = 300000,
	MaxHealth = 300000,
	damage_reduction = {
		blunt = 20,
		energy = 15,
		gas = 35,
		piercing = 10,
	},
	HumanThreat = true,
	Movement = 150000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(127, 11, 92, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(359047323734, --[[ModItemRobotCompositeDef Demo_3 DisplayName]] "D-E3-ch3m157"),
	DisplayNameShort = T(562208439146, --[[ModItemRobotCompositeDef Demo_3 DisplayNameShort]] "DE3"),
	DisplayNamePl = T(541755977736, --[[ModItemRobotCompositeDef Demo_3 DisplayNamePl]] "Drone Series E"),
	Description = T(971100673913, --[[ModItemRobotCompositeDef Demo_3 Description]] "The chemists have never stopped trying to improve upon the corrosive capabilities; and have improved the fuel formula. It is now much denser, but can properly disentigrates all major building materials. The increased weight has been offset by substantial improvements to the hydraulics for no net movement loss. Has <color TechSubtitleBlue>10% Piercing Damage</color> <em>Reduction</em>, <color TextButton>20% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>15% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>35% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T3",
	Skills = {
		Combat = 7,
	},
	darkness_penalty = 0,
	CombatSearchFlags = 536871176,
	EventProgressValue = 400,
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
		PlaceObj('WeightedEquipment', {
			'Weight', 30,
			'Equipment', {
				"Melee_LaserPike",
				"Ranged_LaserBlaster",
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

