UndefineClass('HeavyHostileRobot_LVL3')
DefineClass.HeavyHostileRobot_LVL3 = {
	__parents = { "HeavyCombatRobot" },
	__generated_by_class = "ModItemRobotCompositeDef",


	object_class = "HeavyCombatRobot",
	UnitTags = set( "Heavy_Malus", "Heavy_Shred_T1", "Heavy_Slow_T1", "Robot" ),
	Health = 1000000,
	MaxHealth = 1000000,
	damage_reduction = {
		blunt = 60,
		energy = 40,
		gas = 30,
		piercing = 15,
	},
	HumanThreat = true,
	Movement = 90000,
	Combat = 2000,
	SkinColor = PlaceObj('ColorizationPropSet', {
		'EditableColor1', RGBA(50, 50, 50, 255),
		'EditableRoughness1', -50,
		'EditableRoughness2', -25,
		'EditableColor3', RGBA(55, 55, 55, 255),
	}),
	DisplayName = T(494803257876, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 DisplayName]] "D-D3-5hr3dd3r"),
	DisplayNameShort = T(151002090816, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 DisplayNameShort]] "DD3"),
	DisplayNamePl = T(842264659283, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 DisplayNamePl]] "Drone Series D"),
	Description = T(731721510580, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 Description]] "The Consortium now guarantees a special Laser Pistol. When wielded, the Heavy can override the normal projectiles, and instead scatter the beam. This leads to less direct damage to enemy combatants, but lowers the targets chances to deflect an attack. Has <color TechSubtitleBlue>15% Piercing Damage</color><color TextEmphasis> Reduction</color>, <color TextButton>60% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>400% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>30% Gas Damage</color><color TextEmphasis> Reduction</color>"),
	SalvageLootTable = "ILU_Robot_Human_T3",
	EventProgressValue = 900,
	SpawnDefWeight = 90,
	SpawnTags = set( "Boss" ),
	max_skinned_decals = 1,
	max_skinned_decals_low = 0,
	Equipment = {
		PlaceObj('WeightedEquipment', {
			'Weight', 85,
			'Equipment', {
				"Ranged_LaserBlaster",
			},
		}),
		PlaceObj('WeightedEquipment', {
			'Weight', 15,
			'Equipment', {
				"Ranged_LaserBlaster",
				"Melee_LaserPike",
			},
		}),
	},
}

