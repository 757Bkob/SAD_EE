return {
PlaceObj('ModItemOptionNumber', {
	'name', "O_ILU_max",
	'DisplayName', "Max Spawn before Upgrading",
	'DefaultValue', 150,
	'MinValue', 100,
	'MaxValue', 300,
	'StepSize', 25,
}),
PlaceObj('ModItemOptionToggle', {
	'name', "O_simple_combat",
	'DisplayName', "Simplified Combat?",
}),
PlaceObj('ModItemConstDef', {
	group = "Gameplay",
	id = "MaxAttackDropshipsCount",
	value = 10,
}),
PlaceObj('ModItemConstDef', {
	group = "Gameplay",
	id = "MaxInvadersPerDropship",
	value = 51,
}),
PlaceObj('ModItemCode', {
	'name', "upgradeCall",
	'comment', "Upgrade script all",
	'CodeFileName', "Code/upgradeCall.lua",
}),
PlaceObj('ModItemBuildingCompositeDef', {
	BuildActivityTool = "WeldingTool",
	BuildEndAnimation = "standing_Repair_Weld_End",
	BuildIdleAnimations = {
		"standing_Repair_Weld_Idle",
	},
	BuildMenuCategory = "sub_AutomatedTurrets",
	BuildMenuIcon = "UI/Icons/Build Menu/turret_machine_gun",
	BuildMenuPos = 10,
	BuildStartAnimation = "standing_Repair_Weld_Start",
	HasSmartConnection = true,
	Health = 250000,
	IsPowerConsumer = true,
	MalfunctionOverTimeComponent = true,
	MaxHealth = 250000,
	MaxTimeToMalfunction = 14400000,
	MinConstructionSkill = 3,
	MinTimeToMalfunction = 4800000,
	PowerComponent = true,
	PowerConsumption = 40000,
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "ElectricTurrets",
		}),
	},
	RoomPlacement = "outdoors",
	affected_by_disasters = set( "SolarFlare", "Thunderstorm" ),
	attack_attraction = 60,
	attack_weapon = "TurretMinigun",
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		Metal = 50000,
	}),
	construction_points = 200000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		ScrapMetal = 50000,
	}),
	description = T(755371118458, --[[ModItemBuildingCompositeDef Turret_ToxicGun description]] "Automated defense station. Shoots at all targets in its range."),
	display_name = T(891579310871, --[[ModItemBuildingCompositeDef Turret_ToxicGun display_name]] "Neurotoxin Turret"),
	display_name_pl = T(207586376869, --[[ModItemBuildingCompositeDef Turret_ToxicGun display_name_pl]] "Toxic turrets"),
	display_name_short = T(431518861420, --[[ModItemBuildingCompositeDef Turret_ToxicGun display_name_short]] "Turret"),
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	group = "Defense_Turrets",
	id = "Turret_ToxicGun",
	labels = {
		"CPUCoreDevice",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	lock_block_box = box(-600, -600, 0, 600, 600, 1400),
	lock_pass_box = box(-1200, -1200, 700, 1200, 1200, 2800),
	menu_display_name = T(225065326261, --[[ModItemBuildingCompositeDef Turret_ToxicGun menu_display_name]] "Machine gun"),
	object_class = "FortificationTurret",
	prefer_in_buildmenu = true,
	progress = 30000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 50000,
	}),
	soil_form = "circle",
	terrain_change = "soil",
}),
PlaceObj('ModItemInvaderSpawnDef', {
	Behaviours = {
		PlaceObj('InvaderBehaviourIdle', {
			'Duration', 3840000,
			'NoSleep', false,
		}),
		PlaceObj('InvaderBehaviourDespawn', {
			'Duration', 240000,
			'RandomDuration', 240000,
		}),
	},
	ClearArea = 256,
	ClearRadius = 10000,
	Comment = "A large seasonal herd, that stays for several days and despawn.",
	Count = 10,
	DistFromOthers = 2000,
	GroupSizeMax = 100,
	GroupSizeMin = 50,
	MaxRetries = 25,
	PostSpawn = function (self, obj, target)
		Msg("SpawnedMigrationAnimal", obj)
	end,
	RandomCount = 10,
	SpawnAsGroup = true,
	SpawnClass = "Ulfen",
	TargetClass = "Human",
	TargetDistMax = 250000,
	TargetDistMin = 100000,
	group = "StoryBits",
	id = "PassiveAttack",
}),
PlaceObj('ModItemWeaponResource', {
	AlwaysFace = false,
	AnimTestEntity = "Turret_Gun",
	AnimateWeapon = true,
	AttackCooldown = 750,
	AttackCooldownMaxSkill = 750,
	AttackMoments = {
		"hit",
		"hit2",
	},
	AttackRange = 25000,
	AttackType = "ranged",
	DamageToBuildings = 30000,
	DamageTypes = {
		gas = true,
	},
	HitChance = 100,
	HitChanceMaxSkill = 100,
	HitEffect = {
		PlaceObj('HealthConditionOption', {
			effect = "TurretMinigun_Gunshot",
			weight = 50,
		}),
	},
	MinAttackRange = 1000,
	ProjectileEntity = "InvisibleObject",
	ProjectileFXClass = "Machine_Gun_Projectile",
	ProjectileSpeed = 40000,
	ProjectileSpot = "Weaponsight",
	RangeTerrainDistortion = "always",
	ScaleDamageWithUnit = false,
	ScaleRangeWithUnit = false,
	SortKey = 99990,
	carry_amount = 1000,
	display_name = T(788294086529, --[[ModItemWeaponResource toxic_gun display_name]] "Dual machine gun"),
	id = "toxic_gun",
	progress = 0,
	stack_size = 1000,
	transportable = false,
	visible = false,
}),
PlaceObj('ModItemFolder', {
	'name', "new tags",
	'NameColor', RGBA(184, 46, 46, 255),
}, {
	PlaceObj('ModItemUnitTags', {
		SortKey = 10,
		id = "assault_T1",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 11,
		id = "assault_T2",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 11,
		id = "Monk_T1",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 12,
		id = "Monk_T2",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 12,
		id = "Monk_T3",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 13,
		id = "Monk_Special",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 14,
		id = "Heavy_Slow_T1",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 15,
		id = "Heavy_Slow_T2",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 16,
		id = "Heavy_Shred_T1",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 17,
		id = "Heavy_Shred_T2",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 18,
		id = "Cyber_Eye",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 19,
		id = "Scout_T1",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "Scout_T2",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "Heavy_Malus",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "APC_1",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "APC_2",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "APC_3",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "Demo_T1",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "Demo_T3",
	}),
	PlaceObj('ModItemUnitTags', {
		SortKey = 20,
		id = "Demo_T5",
	}),
	}),
PlaceObj('ModItemFolder', {
	'name', "Equipment Overrides",
	'comment', 'Adds only the "onequip" application of HCs based on mod option set',
	'NameColor', RGBA(27, 175, 205, 255),
}, {
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Hat_Leather_F",
		BodyMale = "Armor_Hat_Leather",
		DecayRateOutside = 382,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "LeatherDry",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Hat",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 5,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 2,
			}),
		},
		LockState = "hidden",
		MaxHealth = 440000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_Eu7sRoQ",
				add = -6000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_leather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_leather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_leather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_leather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 403,
		alt_icon = "UI/Icons/Items/leather_helm",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Hat",
		carry_scale = 90,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280290316,
		description = T(369216161568, --[[ModItemEquipResource Armor_Hat_Leather description]] "A light helmet made of leather."),
		display_name = T(237552320685, --[[ModItemEquipResource Armor_Hat_Leather display_name]] "Leather helmet"),
		display_name_pl = T(878237620842, --[[ModItemEquipResource Armor_Hat_Leather display_name_pl]] "Leather helmets"),
		group = "Equipment",
		icon = "UI/Icons/Resources/leather_helm",
		id = "Armor_Hat_Leather",
		in_groups = {
			"Apparel_Hats",
		},
		money_value = 7200000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Hat",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Jacket_Leather_F",
		BodyMale = "Armor_Jacket_Leather",
		DecayRateOutside = 451,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "LeatherDry",
				'amount', range(10000, 40000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Jacket",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 10,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 5,
			}),
		},
		LockState = "hidden",
		MaxHealth = 520000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_NMDgGH",
				add = -8000,
				prop = "TemperatureLow",
			}),
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_GpTeozd",
				add = -4000,
				prop = "TemperatureHigh",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_leather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_leather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_leather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_leather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_leather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_simple", "mod")
					unit:RemoveHealthCondition("armor_leather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_leather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_complex", "mod")
					unit:RemoveHealthCondition("armor_leather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 413,
		alt_icon = "UI/Icons/Items/leather_armor",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280290316,
		description = T(587428129933, --[[ModItemEquipResource Armor_Jacket_Leather description]] "A light chest armor piece made of leather."),
		display_name = T(285791502304, --[[ModItemEquipResource Armor_Jacket_Leather display_name]] "Leather vest"),
		display_name_pl = T(748632135323, --[[ModItemEquipResource Armor_Jacket_Leather display_name_pl]] "Leather vests"),
		group = "Equipment",
		icon = "UI/Icons/Resources/leather_armor",
		id = "Armor_Jacket_Leather",
		in_groups = {
			"Apparel_Chest",
		},
		money_value = 15250000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Pants_Leather_F",
		BodyMale = "Armor_Pants_Leather",
		DecayRateOutside = 417,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "LeatherDry",
				'amount', range(10000, 30000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Pants",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 5,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 2,
			}),
		},
		LockState = "hidden",
		MaxHealth = 480000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_AVRrant",
				add = -8000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_leather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_leather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_leather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_leather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 433,
		alt_icon = "UI/Icons/Items/leather_pants",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280290316,
		description = T(842600495663, --[[ModItemEquipResource Armor_Pants_Leather description]] "Light combat pants made of leather."),
		display_name = T(839919222424, --[[ModItemEquipResource Armor_Pants_Leather display_name]] "Leather leggings"),
		group = "Equipment",
		icon = "UI/Icons/Resources/leather_pants",
		id = "Armor_Pants_Leather",
		in_groups = {
			"Apparel_Pants",
		},
		money_value = 10500000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Shoes_Leather_F",
		BodyMale = "Armor_Shoes_Leather",
		DecayRateOutside = 382,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "LeatherDry",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Shoes",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 5,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 2,
			}),
		},
		LockState = "hidden",
		MaxHealth = 440000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_PLxATLE",
				add = -3000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_leather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_leather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_leather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_leather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_leather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_leather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_leather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 453,
		alt_icon = "UI/Icons/Items/leather_boots",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Shoes",
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280290316,
		description = T(897792543706, --[[ModItemEquipResource Armor_Shoes_Leather description]] "Light combat boots made of leather."),
		display_name = T(305877231133, --[[ModItemEquipResource Armor_Shoes_Leather display_name]] "Leather boots"),
		group = "Equipment",
		icon = "UI/Icons/Resources/leather_boots",
		id = "Armor_Shoes_Leather",
		in_groups = {
			"Apparel_Shoes",
		},
		money_value = 8800000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Shoes",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Hat_VeggieLeather_F",
		BodyMale = "Armor_Hat_VeggieLeather",
		DecayRateOutside = 382,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "VeggieLeather",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Hat",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 5,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 2,
			}),
		},
		LockState = "hidden",
		MaxHealth = 440000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_heAQLYY",
				add = -6000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_vleather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_vleather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_vleather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_vleather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 404,
		alt_icon = "UI/Icons/Items/veggie_leather_helm",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Hat",
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280093728,
		description = T(589478504892, --[[ModItemEquipResource Armor_Hat_VeggieLeather description]] "A light helmet made of veggie leather."),
		display_name = T(997648738407, --[[ModItemEquipResource Armor_Hat_VeggieLeather display_name]] "Veggie helmet"),
		display_name_pl = T(897901204358, --[[ModItemEquipResource Armor_Hat_VeggieLeather display_name_pl]] "Veggie helmets"),
		group = "Equipment",
		icon = "UI/Icons/Resources/veggie_leather_helm",
		id = "Armor_Hat_VeggieLeather",
		in_groups = {
			"Apparel_Hats",
		},
		money_value = 7200000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Hat",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Jacket_VeggieLeather_F",
		BodyMale = "Armor_Jacket_VeggieLeather",
		DecayRateOutside = 451,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "VeggieLeather",
				'amount', range(10000, 40000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Jacket",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 10,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 5,
			}),
		},
		LockState = "hidden",
		MaxHealth = 520000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_mrEQJpx",
				add = -8000,
				prop = "TemperatureLow",
			}),
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_mzwvnXT",
				add = -4000,
				prop = "TemperatureHigh",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_vleather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_vleather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_vleather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_vleather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_vleather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_simple", "mod")
					unit:RemoveHealthCondition("armor_vleather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_vleather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_complex", "mod")
					unit:RemoveHealthCondition("armor_vleather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 414,
		alt_icon = "UI/Icons/Items/veggie_leather_armor",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280093728,
		description = T(812337426551, --[[ModItemEquipResource Armor_Jacket_VeggieLeather description]] "A light chest armor piece made of veggie leather."),
		display_name = T(288032478909, --[[ModItemEquipResource Armor_Jacket_VeggieLeather display_name]] "Veggie vest"),
		display_name_pl = T(767176758652, --[[ModItemEquipResource Armor_Jacket_VeggieLeather display_name_pl]] "Veggie vests"),
		group = "Equipment",
		icon = "UI/Icons/Resources/veggie_leather_armor",
		id = "Armor_Jacket_VeggieLeather",
		in_groups = {
			"Apparel_Chest",
		},
		money_value = 15250000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Pants_VeggieLeather_F",
		BodyMale = "Armor_Pants_VeggieLeather",
		DecayRateOutside = 417,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "VeggieLeather",
				'amount', range(10000, 30000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Pants",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 5,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 2,
			}),
		},
		LockState = "hidden",
		MaxHealth = 480000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_UtuNzYH",
				add = -8000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_vleather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_vleather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_vleather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_vleather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 434,
		alt_icon = "UI/Icons/Items/veggie_leather_pants",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280093728,
		description = T(965054838661, --[[ModItemEquipResource Armor_Pants_VeggieLeather description]] "Light combat pants made of veggie leather."),
		display_name = T(438139214766, --[[ModItemEquipResource Armor_Pants_VeggieLeather display_name]] "Veggie leggings"),
		group = "Equipment",
		icon = "UI/Icons/Resources/veggie_leather_pants",
		id = "Armor_Pants_VeggieLeather",
		in_groups = {
			"Apparel_Pants",
		},
		money_value = 10500000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Shoes_VeggieLeather_F",
		BodyMale = "Armor_Shoes_VeggieLeather",
		DecayRateOutside = 382,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "VeggieLeather",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Shoes",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 5,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 2,
			}),
		},
		LockState = "hidden",
		MaxHealth = 440000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_fJLpCSW",
				add = -3000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_vleather_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_vleather_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_vleather_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_vleather_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_vleather_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_vleather_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_vleather_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 454,
		alt_icon = "UI/Icons/Items/veggie_leather_boots",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Shoes",
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4280093728,
		description = T(262707129245, --[[ModItemEquipResource Armor_Shoes_VeggieLeather description]] "Light combat boots made of veggie leather."),
		display_name = T(942034940870, --[[ModItemEquipResource Armor_Shoes_VeggieLeather display_name]] "Veggie boots"),
		group = "Equipment",
		icon = "UI/Icons/Resources/veggie_leather_boots",
		id = "Armor_Shoes_VeggieLeather",
		in_groups = {
			"Apparel_Shoes",
		},
		money_value = 8800000,
		progress = 30000,
		quality = 50,
		stack_entity = "ResourceBulk_Shoes",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Helmet_F",
		BodyMale = "Armor_Helmet",
		DecayRateOutside = 469,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "Synthetics",
				'amount', range(0, 10000),
			}),
			PlaceObj('ResAmountRange', {
				'resource', "ScrapMetal",
				'amount', range(5000, 10000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Hat",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 10,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 5,
			}),
		},
		LockState = "hidden",
		MaxHealth = 540000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_tYFFVAF",
				add = -8000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_synth_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_synth_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_synth_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_synth_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 405,
		alt_icon = "UI/Icons/Items/synthetic_helm",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Hat",
		carry_scale = 90,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4278980900,
		description = T(519164215076, --[[ModItemEquipResource Armor_Hat_Synthetic description]] "A durable helm made of synthetic textiles reinforced with metal frame."),
		display_name = T(241567282723, --[[ModItemEquipResource Armor_Hat_Synthetic display_name]] "Synthetic helm"),
		display_name_pl = T(736943552779, --[[ModItemEquipResource Armor_Hat_Synthetic display_name_pl]] "Synthetic helms"),
		group = "Equipment",
		icon = "UI/Icons/Resources/synthetic_helm",
		id = "Armor_Hat_Synthetic",
		in_groups = {
			"Apparel_Hats",
		},
		money_value = 8500000,
		progress = 40000,
		quality = 50,
		stack_entity = "ResourceBulk_Hat",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Torso_F",
		BodyMale = "Armor_Torso",
		DecayRateOutside = 538,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "Synthetics",
				'amount', range(10000, 30000),
			}),
			PlaceObj('ResAmountRange', {
				'resource', "ScrapMetal",
				'amount', range(0, 10000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Jacket",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 20,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 10,
			}),
		},
		LockState = "hidden",
		MaxHealth = 620000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_S5tNDRi",
				add = -10000,
				prop = "TemperatureLow",
			}),
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_aFCoca4",
				add = 5000,
				prop = "TemperatureHigh",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_synth_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_synth_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_synth_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_synth_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_synth_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_simple", "mod")
					unit:RemoveHealthCondition("armor_synth_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_synth_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_complex", "mod")
					unit:RemoveHealthCondition("armor_synth_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 415,
		alt_icon = "UI/Icons/Items/synthetic_armor",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4278980900,
		description = T(377126490615, --[[ModItemEquipResource Armor_Jacket_Synthetic description]] "A durable armor piece made of synthetic textiles reinforced with metal frame."),
		display_name = T(195691499869, --[[ModItemEquipResource Armor_Jacket_Synthetic display_name]] "Synthetic vest"),
		display_name_pl = T(965259520418, --[[ModItemEquipResource Armor_Jacket_Synthetic display_name_pl]] "Synthetic vests"),
		group = "Equipment",
		icon = "UI/Icons/Resources/synthetic_armor",
		id = "Armor_Jacket_Synthetic",
		in_groups = {
			"Apparel_Chest",
		},
		money_value = 24000000,
		progress = 40000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Pants_F",
		BodyMale = "Armor_Pants",
		DecayRateOutside = 503,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "Synthetics",
				'amount', range(5000, 20000),
			}),
			PlaceObj('ResAmountRange', {
				'resource', "ScrapMetal",
				'amount', range(0, 10000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Pants",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 10,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 5,
			}),
		},
		LockState = "hidden",
		MaxHealth = 580000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_Jic5qQ7",
				add = -10000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_synth_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_synth_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_synth_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_synth_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 435,
		alt_icon = "UI/Icons/Items/synthetic_pants",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4278980900,
		description = T(218945996790, --[[ModItemEquipResource Armor_Pants_Synthetic description]] "Durable combat pants made of synthetic textiles reinforced with metal frame."),
		display_name = T(339177433326, --[[ModItemEquipResource Armor_Pants_Synthetic display_name]] "Synthetic leggings"),
		group = "Equipment",
		icon = "UI/Icons/Resources/synthetic_pants",
		id = "Armor_Pants_Synthetic",
		in_groups = {
			"Apparel_Pants",
		},
		money_value = 16250000,
		progress = 40000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Shoes_F",
		BodyMale = "Armor_Shoes",
		DecayRateOutside = 469,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "Synthetics",
				'amount', range(5000, 10000),
			}),
			PlaceObj('ResAmountRange', {
				'resource', "ScrapMetal",
				'amount', range(0, 10000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Shoes",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 10,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 5,
			}),
		},
		LockState = "hidden",
		MaxHealth = 540000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_KK4yW6U",
				add = -4000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_synth_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_synth_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_synth_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_synth_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_synth_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_synth_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_synth_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 455,
		alt_icon = "UI/Icons/Items/synthetic_boots",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Shoes",
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4278980900,
		description = T(923906804972, --[[ModItemEquipResource Armor_Shoes_Synthetic description]] "Durable combat boots made of synthetic textiles reinforced with metal frame."),
		display_name = T(487627644867, --[[ModItemEquipResource Armor_Shoes_Synthetic display_name]] "Synthetic boots"),
		group = "Equipment",
		icon = "UI/Icons/Resources/synthetic_boots",
		id = "Armor_Shoes_Synthetic",
		in_groups = {
			"Apparel_Shoes",
		},
		money_value = 13250000,
		progress = 40000,
		quality = 50,
		stack_entity = "ResourceBulk_Shoes",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Helmet_Carbon_F_Basic",
		BodyMale = "Armor_Helmet_Carbon_Basic",
		DecayRateOutside = 469,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Hat",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 13,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 10,
			}),
		},
		LockState = "hidden",
		MaxHealth = 540000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_rkpSsCM",
				add = -8000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_badCarbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_badCarbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 406,
		alt_icon = "UI/Icons/Items/carbon_helm",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Hat",
		carry_scale = 90,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(374699573764, --[[ModItemEquipResource Armor_Hat_Carbon_Basic description]] "A high-end helm made of carbon nanotubes. Extremely resistant to heat, blast waves, blunt or piercing hits. "),
		display_name = T(418908562674, --[[ModItemEquipResource Armor_Hat_Carbon_Basic display_name]] "Carbon helm"),
		display_name_pl = T(325990035270, --[[ModItemEquipResource Armor_Hat_Carbon_Basic display_name_pl]] "Carbon helms"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_helm",
		id = "Armor_Hat_Carbon_Basic",
		in_groups = {
			"Apparel_Hats",
		},
		money_value = 23000000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Hat",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Torso_Carbon_F_Basic",
		BodyMale = "Armor_Torso_Carbon_Basic",
		DecayRateOutside = 538,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(10000, 40000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Jacket",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 25,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 20,
			}),
		},
		LockState = "hidden",
		MaxHealth = 620000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_bka5LWy",
				add = -10000,
				prop = "TemperatureLow",
			}),
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_Q55bamW",
				add = 5000,
				prop = "TemperatureHigh",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_badCarbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_badCarbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_badCarbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_badCarbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_simple", "mod")
					unit:RemoveHealthCondition("armor_badCarbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_complex", "mod")
					unit:RemoveHealthCondition("armor_badCarbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 416,
		alt_icon = "UI/Icons/Items/carbon_armor",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(678841793085, --[[ModItemEquipResource Armor_Jacket_Carbon_Basic description]] "A high-end chest armor made of carbon nanotubes. Extremely resistant to heat, blast waves, blunt or piercing hits."),
		display_name = T(111636698906, --[[ModItemEquipResource Armor_Jacket_Carbon_Basic display_name]] "Carbon vest"),
		display_name_pl = T(429532911471, --[[ModItemEquipResource Armor_Jacket_Carbon_Basic display_name_pl]] "Carbon vests"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_armor",
		id = "Armor_Jacket_Carbon_Basic",
		in_groups = {
			"Apparel_Chest",
		},
		money_value = 50500000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Pants_Carbon_F_Basic",
		BodyMale = "Armor_Pants_Carbon_Basic",
		DecayRateOutside = 503,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(10000, 30000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Pants",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 15,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 10,
			}),
		},
		LockState = "hidden",
		MaxHealth = 580000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_PWnHFdN",
				add = -10000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_badCarbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_badCarbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 436,
		alt_icon = "UI/Icons/Items/carbon_pants",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(782889658381, --[[ModItemEquipResource Armor_Pants_Carbon_Basic description]] "High-end combat pants made of carbon nanotubes. Extremely resistant to heat, blast waves, blunt or piercing hits."),
		display_name = T(287207926983, --[[ModItemEquipResource Armor_Pants_Carbon_Basic display_name]] "Carbon leggings"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_pants",
		id = "Armor_Pants_Carbon_Basic",
		in_groups = {
			"Apparel_Pants",
		},
		money_value = 37000000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Shoes_Carbon_F_Basic",
		BodyMale = "Armor_Shoes_Carbon_Basic",
		DecayRateOutside = 469,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Shoes",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 15,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 10,
			}),
		},
		LockState = "hidden",
		MaxHealth = 540000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_UqL3hKU",
				add = -4000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_badCarbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_badCarbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_badCarbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_badCarbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_badCarbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 456,
		alt_icon = "UI/Icons/Items/carbon_boots",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Shoes",
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(843869998620, --[[ModItemEquipResource Armor_Shoes_Carbon_Basic description]] "High-end combat boots made of carbon nanotubes. Extremely resistant to heat, blast waves, blunt or piercing hits."),
		display_name = T(789002698746, --[[ModItemEquipResource Armor_Shoes_Carbon_Basic display_name]] "Carbon boots"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_boots",
		id = "Armor_Shoes_Carbon_Basic",
		in_groups = {
			"Apparel_Shoes",
		},
		money_value = 27500000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Shoes",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Helmet_Carbon_F",
		BodyMale = "Armor_Helmet_Carbon",
		DecayRateOutside = 469,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Hat",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 15,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 10,
			}),
		},
		LockState = "hidden",
		MaxHealth = 540000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_bTsXs6X",
				add = -8000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_carbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_carbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_carbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_carbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 407,
		alt_icon = "UI/Icons/Items/carbon_helm_improved",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Hat",
		carry_scale = 90,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(955791274401, --[[ModItemEquipResource Armor_Hat_Carbon description]] "Improved version of the Carbon helm. Extremely resistant to heat, blast waves, blunt or piercing hits. "),
		display_name = T(643587892461, --[[ModItemEquipResource Armor_Hat_Carbon display_name]] "Carbon helm 2.0"),
		display_name_pl = T(123940920483, --[[ModItemEquipResource Armor_Hat_Carbon display_name_pl]] "Carbon helms 2.0"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_helm_improved",
		id = "Armor_Hat_Carbon",
		in_groups = {
			"Apparel_Hats",
		},
		money_value = 23000000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Hat",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Torso_Carbon_F",
		BodyMale = "Armor_Torso_Carbon",
		DecayRateOutside = 538,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(10000, 40000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Jacket",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 30,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 20,
			}),
		},
		LockState = "hidden",
		MaxHealth = 620000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_m6iKSp",
				add = -10000,
				prop = "TemperatureLow",
			}),
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_MtqJU76",
				add = 5000,
				prop = "TemperatureHigh",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_carbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_carbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_carbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
					unit:AddHealthCondition("armor_carbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_carbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_simple", "mod")
					unit:RemoveHealthCondition("armor_carbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_carbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_complex", "mod")
					unit:RemoveHealthCondition("armor_carbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 417,
		alt_icon = "UI/Icons/Items/carbon_armor_improved",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(881253875953, --[[ModItemEquipResource Armor_Jacket_Carbon description]] "Improved version of the Carbon vest. Extremely resistant to heat, blast waves, blunt or piercing hits."),
		display_name = T(815381641490, --[[ModItemEquipResource Armor_Jacket_Carbon display_name]] "Carbon vest 2.0"),
		display_name_pl = T(606843217826, --[[ModItemEquipResource Armor_Jacket_Carbon display_name_pl]] "Carbon vests 2.0"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_armor_improved",
		id = "Armor_Jacket_Carbon",
		in_groups = {
			"Apparel_Chest",
		},
		money_value = 50500000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Pants_Carbon_F",
		BodyMale = "Armor_Pants_Carbon",
		DecayRateOutside = 503,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(10000, 30000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Pants",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 20,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 10,
			}),
		},
		LockState = "hidden",
		MaxHealth = 580000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_gUhszmp",
				add = -10000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_carbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_carbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_carbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_carbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 437,
		alt_icon = "UI/Icons/Items/carbon_pants_improved",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Apparel",
		carry_scale = 80,
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(782175597493, --[[ModItemEquipResource Armor_Pants_Carbon description]] "Improved version of the Carbon leggings. Extremely resistant to heat, blast waves, blunt or piercing hits."),
		display_name = T(796469570521, --[[ModItemEquipResource Armor_Pants_Carbon display_name]] "Carbon leggings 2.0"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_pants_improved",
		id = "Armor_Pants_Carbon",
		in_groups = {
			"Apparel_Pants",
		},
		money_value = 37000000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Apparel",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	PlaceObj('ModItemEquipResource', {
		AvailableOnStart = 10,
		BodyFemale = "Armor_Shoes_Carbon_F",
		BodyMale = "Armor_Shoes_Carbon",
		DecayRateOutside = 469,
		DecayTimeOutside = 46080000,
		DismantleResources = {
			PlaceObj('ResAmountRange', {
				'resource', "CarbonNanotubes",
				'amount', range(5000, 20000),
			}),
		},
		DismantleVisualRes = "Apparel",
		EquipSlot = "Shoes",
		HitNegation = {
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "blunt",
				'NegationChance', 20,
			}),
			PlaceObj('EquipResourceHitNegation', {
				'DamageType', "piercing",
				'NegationChance', 10,
			}),
		},
		LockState = "hidden",
		MaxHealth = 540000,
		MinStorageCondition = 2,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_eqWLmRh",
				add = -4000,
				prop = "TemperatureLow",
			}),
		},
		OnEquip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if (ILU_combat_type == 'simple') then
					unit:AddHealthCondition("armor_carbon_simple", "mod", unit:PickBodyPart("WholeBody", "All"))
				else
					unit:AddHealthCondition("armor_carbon_complex", "mod", unit:PickBodyPart("WholeBody", "All"))
				end
			end,
			PlaceObj('ScriptIf', {
				HasElse = true,
				PlaceObj('ScriptExpression', {
					Value = function () return (ILU_combat_type == 'simple') end,
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptElse', {
				PlaceObj('ScriptAddHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		OnUnequip = PlaceObj('ScriptProgram', {
			Params = "self, unit",
			eval = function (self, unit)
				if unit and unit:FirstEffectByIdClass("armor_carbon_simple", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_simple", "mod")
				end
				if unit and unit:FirstEffectByIdClass("armor_carbon_complex", 'HealthCondition') then
					unit:RemoveHealthCondition("armor_carbon_complex", "mod")
				end
			end,
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_simple",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_simple",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptIf', {
				PlaceObj('ScriptCheckHealthCondition', {
					HealthCond = "armor_carbon_complex",
					Param1 = "unit",
				}),
			}),
			PlaceObj('ScriptThen', {
				PlaceObj('ScriptRemoveHealthCondition', {
					HealthCond = "armor_carbon_complex",
					HealthCondReason = "mod",
					HealthCondType = "Buff",
					Param1 = "unit",
				}),
			}),
		}),
		SelfCleaningRate = 20000,
		SortKey = 457,
		alt_icon = "UI/Icons/Items/carbon_boots_improved",
		anim_pile_load = "standing_PickUp_HandsClose",
		anim_pile_unload = "standing_DropDown_HandsClose_High",
		carry_amount = 2000,
		carry_entity = "ResourceBulk_Shoes",
		carry_spot = "Tool",
		carry_type = "HandsClose",
		color = 4279703319,
		description = T(854301092890, --[[ModItemEquipResource Armor_Shoes_Carbon description]] "Improved version of the Carbon boots. Extremely resistant to heat, blast waves, blunt or piercing hits."),
		display_name = T(777792800955, --[[ModItemEquipResource Armor_Shoes_Carbon display_name]] "Carbon boots 2.0"),
		group = "Equipment",
		icon = "UI/Icons/Resources/carbon_boots_improved",
		id = "Armor_Shoes_Carbon",
		in_groups = {
			"Apparel_Shoes",
		},
		money_value = 27500000,
		progress = 50000,
		quality = 50,
		stack_entity = "ResourceBulk_Shoes",
		stack_size = 1000,
		use_unfinished_item = "UnfinishedApparel",
		visible = false,
	}),
	}),
PlaceObj('ModItemFolder', {
	'name', "Research",
	'NameColor', RGBA(129, 175, 192, 255),
}, {
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(938920346727, --[[ModItemTech field_dog_T5 Description]] "All vestiges of friendship between this species and humanity is gone.\nThis genus has succumbed to whatever is pushing all these species to evolve.\n\nIt now has even more intelligence, it's bulbous head now too large for it's neck to handle.\nIt can now relays orders in the same clicks, clacks, snaps, or yowls of it's partnered species.\nIf only they continued to grow beside us, we could learn to communicate with the fauna!\n\nBut alas, these hounds are helping the enemy...\nThe coordination these <em>Fenrir</em> provide enhances all other enemies.\nEven worse, they are now easily covered by the larger wildlife. \nIt's almost like evolutionarily it knew it needed to be as small as possible to avoid small arms fire!! \nThankfully, this change to become smaller means there is less mass to dedicate to defenses.\nThey have no discern-able clear weakness, so our most damaging weapons should fire on this species!\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> and <color TextNegative>Energy</color> resistance to combat these."),
		DisplayName = T(523069977599, --[[ModItemTech field_dog_T5 DisplayName]] "Fenrir"),
		DisplayNamePl = T(885483345733, --[[ModItemTech field_dog_T5 DisplayNamePl]] "Fenrirs"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Boxer end,
		Icon = "UI/Messages/Research/res_Dogs",
		ResearchPoints = 6000,
		group = "Field",
		id = "field_dog_T5",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(357517321577, --[[ModItemTech field_dog_T3 Description]] 'We now have our answer to what they provide.\nThey have been observed barking what can best be described as "orders" to whatever species they are attached too.\n\nWhat humans have taught and bred into these creatures is now being used to coordinate assaults against us....\nNature sometimes has a cruel sense of irony!\n\nThese creatures are starting to resemble their ancestors, the wolf. Larger, bulkier, and with a larger teeth. But no fur...\nThey somehow are able to live with an internal body temperatures below freezing, and their teeth now inject \na compound that absorbs all the energy & heat surrounding it.\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> and <color TextNegative>Energy</color> resistance to combat these.'),
		DisplayName = T(719898286913, --[[ModItemTech field_dog_T3 DisplayName]] "Ice Wolf"),
		DisplayNamePl = T(459499845093, --[[ModItemTech field_dog_T3 DisplayNamePl]] "Ice Wolf"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Boxer end,
		Icon = "UI/Messages/Research/res_Dogs",
		ResearchPoints = 6000,
		group = "Field",
		id = "field_dog_T3",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(971122823327, --[[ModItemTech field_dog_T1 Description]] "We have observed this species living peacefully with what we thought of as aggressive species.\nThey must have formed symbiotic relationships to avoid extinction.\n\nWhat are they providing that keeps them alive?\nAnd why is their internal body temperature so cold?!?\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> and <color TextNegative>Energy</color> resistance to combat these."),
		DisplayName = T(545744059274, --[[ModItemTech field_dog_T1 DisplayName]] "Cold Dog"),
		DisplayNamePl = T(744183019406, --[[ModItemTech field_dog_T1 DisplayNamePl]] "Cold Dogs"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Boxer end,
		Icon = "UI/Messages/Research/res_Dogs",
		ResearchPoints = 6000,
		group = "Field",
		id = "field_dog_T1",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(839954723448, --[[ModItemTech FieldSkarabei Description]] "The bug I observed looks like an overgrown version of the pest that's known (and hated) on many worlds. Giving it a common bug's name felt a bit underwhelming, so I chose the nice-sounding <em>Skarabei</em>.\n\nUnfortunately, it's a lot more annoying than some tiny insect that scuttles through your fridge. This one is big and impudent enough to attack humans and do some damage!\n\nThe main problem is that these insects tend to swarm and work together in large groups, so they should not be underestimated.\n\nIt attacks by closing it's... for lack of a better term... pauldrons over it's head and slams it's head forward.\nWe must ensure that we have ample <color TextButton>Blunt</color> resistance to combat these.\n\n<style TechSubtitleBlue>Unlocks</style>\n<tabulator><em>Skarabei statue</em>: <building_cost('Statue_Skarabei')>"),
		DisplayName = T(313580775497, --[[ModItemTech FieldSkarabei DisplayName]] "Overgrown insect"),
		DisplayNamePl = T(547974503561, --[[ModItemTech FieldSkarabei DisplayNamePl]] "Overgrown insects"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Skarabei end,
		Icon = "UI/Messages/Research/res_Skarabei",
		ResearchPoints = 6000,
		group = "Field",
		id = "FieldSkarabei",
		money_value = 50000000,
		tradable = false,
		PlaceObj('RemoveLockedState', {
			Class = "BuildingCompositeDef",
			Group = "Relaxatation",
			LockState = "hidden",
			PresetId = "Statue_Skarabei",
		}),
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(851321512853, --[[ModItemTech FieldGlutch Description]] "The big bloated insect is a slow and usually peaceful herbivore, which I named <em>Glutch</em>.\n\nWhile not particularly dangerous, it secretes a corrosive substance which accumulates on its skin and is released as a toxic cloud when the creature shakes its body in fear. Engaging it from a safe distance seems like the best option.\n\nWe must ensure that we have ample <color TextPositive>Gas</color> resistance to combat these.\n\n<style TechSubtitleBlue>Unlocks</style>\n<tabulator><em>Glutch statue</em>: <building_cost('Statue_Glutch')>"),
		DisplayName = T(280125985011, --[[ModItemTech FieldGlutch DisplayName]] "Bloated insect"),
		DisplayNamePl = T(930922077745, --[[ModItemTech FieldGlutch DisplayNamePl]] "Bloated insects"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Glutch end,
		Icon = "UI/Messages/Research/res_Glutch",
		ResearchPoints = 6000,
		group = "Field",
		id = "FieldGlutch",
		money_value = 50000000,
		tradable = false,
		PlaceObj('RemoveLockedState', {
			Class = "BuildingCompositeDef",
			Group = "Relaxatation",
			LockState = "hidden",
			PresetId = "Statue_Glutch",
		}),
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(490139055620, --[[ModItemTech FieldScissorhands Description]] "I have seen huge genetically-engineered mantises in a zoo once, but this creature is something else!\n\nThe <em>Scissorhands</em>, as I've named it, has razor-sharp front legs which shred its victims into pieces in an instant. Its four legs make it fast and agile - traits which get further enhanced by its remarkable senses. Upon closer examination, I deduced that its antennae assist in detecting movement around it!\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> resistance to combat these.\n\n<style TechSubtitleBlue>Unlocks</style>\n<tabulator><em>Taming of Scissorhands</em> (if researched)\n<tabulator><em>Scissorhands statue</em>: <building_cost('LargeStatue_Scissorhands')>"),
		DisplayName = T(762740087071, --[[ModItemTech FieldScissorhands DisplayName]] "Huge mantis"),
		DisplayNamePl = T(900757548387, --[[ModItemTech FieldScissorhands DisplayNamePl]] "Huge mantises"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Scissorhands end,
		Icon = "UI/Messages/Research/res_Scissorhands",
		ResearchPoints = 6000,
		group = "Field",
		id = "FieldScissorhands",
		money_value = 50000000,
		tradable = false,
		PlaceObj('RemoveLockedState', {
			Class = "BuildingCompositeDef",
			Group = "Relaxatation",
			LockState = "hidden",
			PresetId = "LargeStatue_Scissorhands",
		}),
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(977102975985, --[[ModItemTech Field_Skarab_T1 Description]] "Convergent evolution! \nIf the Skarabei didn't evolve to specifically kill off every single human I would want to study this new evolved form! \nBiologists everywhere would be clammering over themselves to get here to study this!\n\nDid the Explosive Species start moving into the swamp, and they also independently evolved to have poison?!?\nDid the Poison Species evolve the same explosive behaviors?\n\nThese autopsies show that it's neither!\nThey are compatible! \nWhich usually means they should be the same species.... But as we have seen, this planet continues to break all known precedent.\n\nOh how to fight them?\nGenerally with anything, they have evolved to be sturdier and healthier than any other species we have observed.\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> resistance to combat these."),
		DisplayName = T(355121328008, --[[ModItemTech Field_Skarab_T1 DisplayName]] "PEx Skarabei"),
		DisplayNamePl = T(451552169671, --[[ModItemTech Field_Skarab_T1 DisplayNamePl]] "PEx Skarabei"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return "PEx Skarabei" end,
		Icon = "UI/Messages/Research/res_Skarabei",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Skarab_T1",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(939543644353, --[[ModItemTech Field_Skarab_T3 Description]] "Evolution does not happen in a matter of days. It's timescale is in the hundreds of thousands of years. \nThis planet is breaking all known evolution rules.\n\nThis cannot be naturally caused, there must be more on this planet.\nSomething pushing evolution forward, and it coincidentally lines up with colonization efforts....\n\nThis species is no longer a simple, passive grazer. \nBut a hyper-aggressive ball of chitin.\n\nThe brain cavity is larger, the plates crumble but don't shatter when sharp impacts are present. \nOne important thing to note is the under-carapace is largely gone. Meaning there is a permeable barrier for our munitions or gas-based attacks.\n\nWe must ensure that we have ample <color TextButton>Blunt</color> and <color TextPositive>Gas</color> resistance to combat these."),
		DisplayName = T(870782851244, --[[ModItemTech Field_Skarab_T3 DisplayName]] "Mutated PEx Skarabei Brute"),
		DisplayNamePl = T(951630432168, --[[ModItemTech Field_Skarab_T3 DisplayNamePl]] "Mutated PEx Skarabei Brutes"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Skarabei end,
		Icon = "UI/Messages/Research/res_Skarabei",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Skarab_T3",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(215605248249, --[[ModItemTech Field_Skarab_T4 Description]] "Everyone in the colony who took the galactic basic class are extremely worried. \nIn less than the span of a lifetime, the Skarabei we where welcomed too are extinct. \n\nThis new mutation is virtually impenetrable to bullets or radiation. \nThankfully their underbelly is still as permeable as ever. \n\nSeems most other creatures still are not smart enough to flip these things upside down. \n\nAlthough we are starting to all fear what can break through this creatures carapace.....\n\nWe must ensure that we have ample <color TextButton>Blunt</color> and <color TextPositive>Gas</color> resistance to combat these."),
		DisplayName = T(167772677078, --[[ModItemTech Field_Skarab_T4 DisplayName]] "Heavily Mutated PEx Skarabei Brute"),
		DisplayNamePl = T(907174525011, --[[ModItemTech Field_Skarab_T4 DisplayNamePl]] "Heavily Mutated PEx Skarabei Brutes"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Skarabei end,
		Icon = "UI/Messages/Research/res_Skarabei",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Skarab_T4",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(787659767338, --[[ModItemTech Field_Glutch_T3 Description]] "These fumes.... are not good for the soul. \n\nThe gas itself is extremely volatile, so sample collection was very difficult.\nIt scatters into the atmosphere after the creatures demise, akin to a balloon popping. \nWhat doesn't scatter was still... sucked in somehow.\nInto the skin of the creature, and quickly converted into more skin.\n\nSo pieces of this creature have grown even after death!\nJust because more gas flew near that skin flap!\n\nWhat we did manager to capture escaped...\nThe colonist who got exposed immediately panicked.\n\nThey showed no major health problems, even though the gas has permeated their entire body.\nWe can only conclude that it's not immediately damaging to our bodies.\n\nBut we did find is completely throw off all human biochemical signalling.\nEssentially tricking the brain into thinking, among other things, they are close to death, they feel nothing from their limbs, hearing something called \"Darude Sandstorm\" louder than a spaceship engine.\n\nSo whenever we fight this species, I cannot understate how much we need to be ready to handle these psychological effects.\n\nA species that it practically immune to gas and blunt impacts....\nMight I recommend as many long-range armor piercing rounds to quicken it's demise? \nOr heating up this giant balloon with some energy; cooking it until it pops?\n\nRegardless, another Genus that has defied evolution.....\nWe must investigate why evolution is happening on such a short scale! \n\nWe must ensure that we have ample <color TextPositive>Gas</color> resistance to combat these."),
		DisplayName = T(814242980203, --[[ModItemTech Field_Glutch_T3 DisplayName]] "Bad Trip Glutch"),
		DisplayNamePl = T(425790492497, --[[ModItemTech Field_Glutch_T3 DisplayNamePl]] "Bad Trip Glutch"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Glutch end,
		Icon = "UI/Messages/Research/res_Glutch",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Glutch_T3",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(485238029005, --[[ModItemTech Field_Glutch_T4 Description]] "First it was the quickly mending flesh. \nSecond was the hallucinogenic fumes. \n\nNow this creatures flesh itself is half-gas... Any large impact is easily absorbed, and any gas concoction we thought could hurt it already exists in the creatures hollow belly. \nWe must either pierce it's flesh, or transfer too much energy rapidly. \nThe scientific community would be enthralled by any rumor that this thing exists.\n\nBut a single molecule of this vile anti-human concoction hitting their nostril would change their minds.\n\nWe must ensure that we have ample <color TextPositive>Gas</color> resistance to combat these."),
		DisplayName = T(531364999461, --[[ModItemTech Field_Glutch_T4 DisplayName]] "Bad Trip Bloated Glutch Stitcher"),
		DisplayNamePl = T(636854183157, --[[ModItemTech Field_Glutch_T4 DisplayNamePl]] "Bad Trip Bloated Glutch Stitchers"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Glutch end,
		Icon = "UI/Messages/Research/res_Glutch",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Glutch_T4",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(666163032170, --[[ModItemTech Field_Dragonfly_T2 Description]] "Do... these Hummingfly's look angry to you? Not just me? Thank goodness.\nYeah that's definitely a human face formed from it's mouth mandibles resting.\nA face that died of starvation and is angry, like it's somehow my fault.\n\nThanks to that, I'm deciding to rename these to Deathfly's.\n\nAfter reviewing their attack method of choice, it is clear that their acid spit is now highly pressurized. This would not be a problem, except it's mouth mandibles can wrap the acid with a thin lipid membrane. That is then launched through air pressure at us. \n\nThese Deathflies are now just a living water-balloon launcher; except it splashes industrial grade acid everywhere. \n\nWhat is going on with this planet?!?\nFirst entire clutches of these things where waking and attacking us.\nNow they seemingly evolved overnight to do something that doesn't help it's species.\nNone of it's predators are on the ground. \nThe lipid casing even makes it harder to hit any other aerial combatants!\nIs... it evolving to fight us?!?!?\n\nWe must ensure that we have ample <color TextNegative>Energy</color> resistance to combat these."),
		DisplayName = T(439776243591, --[[ModItemTech Field_Dragonfly_T2 DisplayName]] "Bomber Deathfly"),
		DisplayNamePl = T(907278140022, --[[ModItemTech Field_Dragonfly_T2 DisplayNamePl]] "Bomber Deathflies"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Dragonfly end,
		Icon = "UI/Messages/Research/res_Dragonfly",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Dragonfly_T2",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(104121244625, --[[ModItemTech Field_Dragonfly_T4 Description]] 'We where right in our initial assessment on the "Hummingfly" Genus\' evolution.\nThis latest species could not exist naturally. Something larger is at work. \n\nThis is the second Genus that has rapidly evolved into multiple unique species.... \n\nThis is nearly impossible with our current understanding of science. \n\nBut enough high-minded musings.....\nThis latest Deathfly\'s species have.... flak armor. \nSpecifically fortifying the parts of the animal that are critical to flight.\nIt can even detect what type of impact is incoming, and can re-deploy their "armor cells" to best protect them from that hit.\n\nThe ONLY good news I have is this has only allowed this species to gain a "general" resistance to all damage, and is far from perfect.\nThe armor being movable is apparently "more" desired to evolve..... somehow.\n\nThe last discovery of this animal... is the most troubling. \nAdrenaline is ubiquitous on this planet, but this animal has a concentrated compound based on it.\nThis concentrated adrenaline (ConAdrena) is highly corrosive, even to the deathfly\'s own arteries!\n\nBecause of that, ConAdrena is only released on armor re-deployment.\nWhat that means is the second these Deathfly\'s come under attack; they will fly EVEN FASTER!\n\nThis planet was already hostile to our life, what can we do if all the steps we take the planet seems to be countering?!?!\n\nWe must ensure that we have ample <color TextNegative>Energy</color> resistance to combat these.'),
		DisplayName = T(371671560161, --[[ModItemTech Field_Dragonfly_T4 DisplayName]] "Fast, Frenzied, Fortified Bomber Dragonfly"),
		DisplayNamePl = T(265100815975, --[[ModItemTech Field_Dragonfly_T4 DisplayNamePl]] "Fast, Frenzied, Fortified Bomber Dragonflies"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Dragonfly end,
		Icon = "UI/Messages/Research/res_Dragonfly",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Dragonfly_T4",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(630036556206, --[[ModItemTech Field_Tecatli_T4 Description]] "Do. Not. Let. This. Bad. Thing. Get. You. Brain. Foggy. Dead. Thing. Me. Just. Touch. \n........\nHard to think through this fog. I need to make the.... the.... zap zap things. \n..............\nELECTRONICS. THAT WAS WORD. \nI need to make them later today..... \n..............\nHow this thing know exact human brain poison?!?! \nWe cannot rely on secret boom booms, or flamey flingers.... we must pew pew it! \nOr Bonk it with blunt force!\n\nWe must ensure that we have ample <color TextNegative>Energy</color> and <color TextPositive>Gas</color> resistance to combat these."),
		DisplayName = T(259587408491, --[[ModItemTech Field_Tecatli_T4 DisplayName]] "Spellsword Tecatli"),
		DisplayNamePl = T(262446454454, --[[ModItemTech Field_Tecatli_T4 DisplayNamePl]] "Spellsword Tecatli"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Tecatli end,
		Icon = "UI/Messages/Research/res_Tecatli",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Tecatli_T4",
		money_value = 50000000,
		msg_reactions = {
			PlaceObj('MsgReaction', {
				Event = "ResourceUnlocked",
			}),
		},
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(229846890895, --[[ModItemTech Field_Tecatli_T2 Description]] "Primarily living in the Desert region has caused this creature to easily ignore any energy signals that hit's it's skin.\nAnd any energy that gets through is quickly dissipated. \nI don't even think our flamethrowers can hurt these things... \n\nHas the sunlight gotten harsher in the desert areas?\nWhy has this Genus evolved to seemingly be immune to napalm?!?\n\nAre there creatures that spew the same chemical compound as our flamethrowers?\nAnd are they the Tecatli's predators?!?\n\nUntil we get attacked by them, let's focus on these Tecatli.\nConventional piercing or blunt explosive weaponry still proves effective.\nWe need to ensure that there is sufficient firepower to stop them before they destroy our static defenses.\n\nWe must ensure that we have ample <color TextNegative>Energy</color> and <color TextPositive>Gas</color> resistance to combat these."),
		DisplayName = T(268507821545, --[[ModItemTech Field_Tecatli_T2 DisplayName]] "Heat-Reinforced Tecatli"),
		DisplayNamePl = T(255140236728, --[[ModItemTech Field_Tecatli_T2 DisplayNamePl]] "Heat-Reinforced Tecatli"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Tecatli end,
		Icon = "UI/Messages/Research/res_Tecatli",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Tecatli_T2",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(417499134950, --[[ModItemTech Field_Scissorhands_T2 Description]] "This species aggression is unparalleled. \nIt was seen attacking other Scissorhands even on attack approach! \n\nWhen we autopsied this specimen; we found that each arm blade have different patterns and levels of sharpness.\nThese blade arms do not get stuck if a pattern or sharpness is not able to cut/pierce/gash; but instead converts the friction into more kinetic energy!\n\nThis means that if we are wearing armor, the blade will slide until the part that can pierce that specific equipment is putting maximum pressure.\n\nThis must be how Scissorhands remain so deadly on this planet.... their blades evolved to always be useful...\nWe must be careful engaging them, as any attack that is not deflected will gouge us!\n\nThankfully, this genus does not seem to be evolving more defenses.\nSo massive ranged firepower!\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> resistance to combat these."),
		DisplayName = T(946963844086, --[[ModItemTech Field_Scissorhands_T2 DisplayName]] "Brutal Duelist Scissorhand"),
		DisplayNamePl = T(542389047431, --[[ModItemTech Field_Scissorhands_T2 DisplayNamePl]] "Brutal Duelist Scissorhand"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Scissorhands end,
		Icon = "UI/Messages/Research/res_Scissorhands",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Scissorhands_T2",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(194839431207, --[[ModItemTech Field_Scissorhands_T4 Description]] "Now each Scissorhands is both rivaling the size of the Junos Genus.... but now have a chaotic pattern of slices crossing over their bodies.\n\nTheir multiple eyes have changed to dark red, and the colonists who faced them swear they seem to have a.... convey a sense of calm.\n\nTheir attacks are no longer wild and unpredictable, but are closer to a fencer riposting and parrying.\nOur autopsy has found that it's entire vascular system is now just the highly concentrated, rage-inducing Adrenaline.\n\nNot very scientific, but they must be able to channel their anger to achieve even deadlier results....\nTheir blades have not evolved in a significant manner, so this new species must be gaining concentration and focus rather than more powerful weapons.\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> resistance to combat these."),
		DisplayName = T(372699439664, --[[ModItemTech Field_Scissorhands_T4 DisplayName]] "Rage Focused Scissorhand"),
		DisplayNamePl = T(511396203677, --[[ModItemTech Field_Scissorhands_T4 DisplayNamePl]] "Rage Focused Scissorhands"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Scissorhands end,
		Icon = "UI/Messages/Research/res_Scissorhands",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Scissorhands_T4",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(841243925933, --[[ModItemTech Field_Juno_T4 Description]] "Human biology will naturally suppress sensory inputs if there is something more important to the body at large. \nThat is why you don't notice a cut on your leg when there is a Juno in your face trying to kill you. \n\nJuno's evolution missed that lesson, and instead has evolved and no longer has \"nerve endings\". \nInstead their skin is super sensitive nerves.\nTesting has confirmed that when these nerves activate, they convert the activation energy to repair themselves or a nearby cell! \n\nIt should come as no surprise that this species can no longer \"sleep\" or be forced unconscious.\n\nThis planet's Evolution has decided that a gigantic self-healing nerve has a \"niche\" on this planet.\nThat \"niche\" seems to be \"Get us off this planet\"; based on the trend of other Genus'...\n\nThankfully evolution has not given these creatures any defensive benefits.\nOne of the few times when all of our armaments are useful in this ever-deadlier world...\n\nWe must ensure that we have ample <color TextButton>Blunt</color> resistance to combat these."),
		DisplayName = T(577132944793, --[[ModItemTech Field_Juno_T4 DisplayName]] "Too-Angry-Too-Die Juno"),
		DisplayNamePl = T(736882444465, --[[ModItemTech Field_Juno_T4 DisplayNamePl]] "Too-Angry-Too-Die Junos"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Juno end,
		Icon = "UI/Messages/Research/res_Juno",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Juno_T4",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(125838459592, --[[ModItemTech Field_Juno_T2 Description]] "I am not saying that this thing looks like a bunch of nerve endings; and muscles to punch/bite/kick whatever touches the nerve.... \nWhat I will say is this creatures lowest density of nerve endings per square inch is 3 times denser than humans highest! \n\nThis means that their brain is constantly processing more sensory information. \nIt's no wonder Juno's only goal is to silence whatever they touch, hear, smell..... \n\nEvolutionarily, there has been no effort to increase this species' defenses.... \nbut it is a... and I need to be as scientific as possible.... a \"Walking ball of anger and death\"\n\nThis thing needs as many walls between us and them.\nTowers, Walls, Robots..... Whatever we can do to stop us from directly facing these things.\n\nHow do these creatures survive to adulthood?!?\nHow do the parents not kill their young when they cry?!?\n\nIf only we where not under constant attack; we could investigate these things...\n\nWe must ensure that we have ample <color TextButton>Blunt</color> resistance to combat these."),
		DisplayName = T(472704683899, --[[ModItemTech Field_Juno_T2 DisplayName]] "Angry Juno"),
		DisplayNamePl = T(392495868292, --[[ModItemTech Field_Juno_T2 DisplayNamePl]] "Angry Junos"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Juno end,
		Icon = "UI/Messages/Research/res_Juno",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Juno_T2",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(736811806423, --[[ModItemTech Field_Shrieker_T2 Description]] "Shriekers are evolving. \nThankfully it's just their invaders, although why the nest shriekers do not seem to be evolving at the same pace is troubling.... \nIt's as if something is coordinating and sending only the latest species to attack us... \n\nBut that implies the existence of something controlling the evolution of this planets genus... \n\nPutting aside that mild existential dread;\nThese Shrieker bolts now have a stronger inhibiting effects on motor functions.\n\nOne hit, and your gaurunteed to move at a crawl.\nThis makes any sustained shootout between our colonists and Shriekers extremely risky.\nWe may need to resort to rushing into melee, as evolution has not deemed necessary to improve their melee capabilities.\n\n\nAs long as whatever weapons we use are not piercing.\nLike the Skarabei, these things are becoming even more resilient against armor piercing rounds.\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> and <color TextButton>Blunt</color> resistance to combat these."),
		DisplayName = T(289468704739, --[[ModItemTech Field_Shrieker_T2 DisplayName]] "Spike-tailed insect"),
		DisplayNamePl = T(408304436071, --[[ModItemTech Field_Shrieker_T2 DisplayNamePl]] "Spike-tailed insects"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Shrieker end,
		Icon = "UI/Messages/Research/res_Shrieker",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Shrieker_T2",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(235057115852, --[[ModItemTech Field_Shrieker_T4 Description]] "Shriekers have always been known to have hard to penetrate exoskeletons.... \nBut this truly eclipses any other creation we have seen. \n\nBlunt force explosions, armor piercing bullets, even neurotoxin gas attacks are inneffective. \n\nThe only thing we have to truly fight these creatures is radiation or energy signals. \nIt is absolutely critical we build and maintain energy weapons, or else these have the potential to single-handidly destroy our small base.\n\nEven worse, this is the third unique instance of self-healing based on the innate toxicity of checmicals produced by a species.\nJuno's, Glutches, and now Shriekers are now even less susceptible from indirect damage from wounds.\n\nThis has to be the Apex Predator of this world, but if what some of us are to believe.... these are intergalactic colonizers.\nHopefully they do not evolve to have more intelligence.....\n\nWe must ensure that we have ample <color TechSubtitleBlue>Piercing</color> and <color TextButton>Blunt</color> resistance to combat these."),
		DisplayName = T(941477497395, --[[ModItemTech Field_Shrieker_T4 DisplayName]] "Spike-tailed insect"),
		DisplayNamePl = T(653962007310, --[[ModItemTech Field_Shrieker_T4 DisplayNamePl]] "Spike-tailed insects"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Shrieker end,
		Icon = "UI/Messages/Research/res_Shrieker",
		ResearchPoints = 6000,
		group = "Field",
		id = "Field_Shrieker_T4",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(934377237596, --[[ModItemTech FieldHummingfly Description]] "Despite its somewhat menacing look, the big flying insect seems to be peaceful and easily scared. I decided to name it <em>Hummingfly</em>.\n\nIt is worth noting, however, that in the rare cases when it gets enraged, it attacks from afar and can fly over obstacles.\n\nIt spits a bottled ever-raging fire, which shatters and spreads a burning liquid all over the poor unfortunate soul.\nThis attack matches how the fabled Earth's Greek Fire worked.\n\nWe must ensure that we have ample <color TextNegative>Energy</color> resistance to combat these."),
		DisplayName = T(128177588026, --[[ModItemTech FieldHummingfly DisplayName]] "Flying insect"),
		DisplayNamePl = T(547625328396, --[[ModItemTech FieldHummingfly DisplayNamePl]] "Flying insects"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Dragonfly end,
		Icon = "UI/Messages/Research/res_Dragonfly",
		ResearchPoints = 6000,
		group = "Field",
		id = "FieldHummingfly",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(270289717234, --[[ModItemTech FieldGujo Description]] "That flightless bird reminds me of an animal from my home planet, so I gave it the same name - <em>Gujo</em>.\n\nUnlike the calm bird that I know of, this one is quite feisty and seems to have a taste for meat. It's hard to see at night, but I swear those birds can win fights against things that it has no business winning. It mostly sleeps during the day and hunts during the night. It's a fast runner and I don't envy its prey, nor its hunter trying to catch up with it. It also seems to have a strong bond with its mate.\n\nWe must have ample <color TechSubtitleBlue>Piercing</color> resistance when fighting these creatures.\n\n<style TechSubtitleBlue>Unlocks</style>\n<tabulator><em>Taming of Gujos</em> (if researched)\n<tabulator><em>Gujo statue</em>: <building_cost('Statue_Gujo')>"),
		DisplayName = T(951322256817, --[[ModItemTech FieldGujo DisplayName]] "Flightless bird"),
		DisplayNamePl = T(648203584404, --[[ModItemTech FieldGujo DisplayNamePl]] "Flightless birds"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Gujo end,
		Icon = "UI/Messages/Research/res_Gujo",
		ResearchPoints = 6000,
		group = "Field",
		id = "FieldGujo",
		money_value = 50000000,
		tradable = false,
		PlaceObj('RemoveLockedState', {
			Class = "BuildingCompositeDef",
			Group = "Relaxatation",
			LockState = "hidden",
			PresetId = "Statue_Gujo",
		}),
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(357263806111, --[[ModItemTech FieldGujoT2 Description]] "Their bodies, upon closer inspection, have tied their metabolism with their fight or flight response. \nWhile adrenaline is flowing, anything that goes into their gullet gets immediately processed and any wounds start to mend themselves. This is what has allowed this species to survive this ever changing planet.\n\nThankfully their recent evolution is primarily prioritizing maintaining and improving the genus' metabolism; so it's ability to avoid or absorb attacks is limited\n\nWe must have ample <color TechSubtitleBlue>Piercing</color> resistance when fighting these creatures.\nThey can only heal when they actually swallow something, so we need to be sure to minimize the bites it gets!"),
		DisplayName = T(525071182794, --[[ModItemTech FieldGujoT2 DisplayName]] "Archaeopteryx"),
		DisplayNamePl = T(769076048173, --[[ModItemTech FieldGujoT2 DisplayNamePl]] "Archaeopteryxs"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Gujo end,
		Icon = "UI/Messages/Research/res_Gujo",
		ResearchPoints = 6000,
		group = "Field",
		id = "FieldGujoT2",
		money_value = 50000000,
		tradable = false,
	}),
	PlaceObj('ModItemTech', {
		Activity = "FieldResearch",
		Description = T(573010500562, --[[ModItemTech FieldGujoT4 Description]] "It is a common occurrence to see Gujo's dragging their last kill with them. \nAnd upon finding new prey proceed to slam themselves into the earth to trigger their adrenaline. This lets their last morsel heal any lingering wounds before fighting anew.\nThis also suggests a modicum of intelligence or at least awareness of how their own physiology works.....\n\nTheir bodies, due to the constant wear and tear, are deadliest when near death.\nThe more damage they have sustained, the quicker they attack and the less damage we are able to deal to them.\n\nWe must have ample <color TechSubtitleBlue>Piercing</color> resistance when fighting these creatures.\nThey can only heal when they actually swallow something, so we need to be sure to minimize the bites it gets!"),
		DisplayName = T(894392767111, --[[ModItemTech FieldGujoT4 DisplayName]] "Micro-Raptor"),
		DisplayNamePl = T(425443916081, --[[ModItemTech FieldGujoT4 DisplayNamePl]] "Micro-Raptors"),
		FieldResearchCategory = "Fauna",
		FieldResearchTemplateExpression = function (self) return Gujo end,
		Icon = "UI/Messages/Research/res_Gujo",
		ResearchPoints = 6000,
		group = "Field",
		id = "FieldGujoT4",
		money_value = 50000000,
		tradable = false,
	}),
	}),
PlaceObj('ModItemFolder', {
	'name', "Bodies / Perks",
	'NameColor', RGBA(254, 251, 250, 255),
}, {
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Junoskar",
		'Id', "Junoskar",
		'Target', "Junoskar",
		'Parts', set( "Body" ),
		'Entity', "Juno",
		'Scale', range(145, 150),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(23, 158, 0, 255),
				'EditableRoughness1', 106,
				'EditableMetallic1', -78,
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableRoughness2', 53,
				'EditableMetallic2', -16,
				'EditableColor3', RGBA(85, 85, 85, 255),
				'EditableRoughness3', 46,
				'EditableMetallic3', -25,
				'Weight', 99999999990,
			}),
		},
		'Lights', {},
	}),
	PlaceObj('ModItemAnimalPerk', {
		id = "Regenerator",
	}),
	PlaceObj('ModItemAnimalPerk', {
		id = "Powerful_Regenerator",
	}),
	PlaceObj('ModItemAnimalPerk', {
		Description = T(928351759177, --[[ModItemAnimalPerk Default AP_Fast Description]] "Once combat is started, this creature will start to move faster than anyone expects. How their appendages achieve this is largely unexplored."),
		DisplayName = T(303775262662, --[[ModItemAnimalPerk Default AP_Fast DisplayName]] "Sprinter"),
		id = "AP_Fast",
	}),
	PlaceObj('ModItemAnimalPerk', {
		Description = T(869152471268, --[[ModItemAnimalPerk Default AP_Frenzy Description]] "This creature's attacks have become faster. Sustained combat or fire from this species is even less desirable for our colonists."),
		DisplayName = T(190513549324, --[[ModItemAnimalPerk Default AP_Frenzy DisplayName]] "Frenzied Attacks"),
		id = "AP_Frenzy",
	}),
	PlaceObj('ModItemAnimalPerk', {
		Description = T(652460753667, --[[ModItemAnimalPerk Default AP_StatDamage Description]] "This creatures attacks appear to do less damage to our colonists. I'm afraid to discover what this biologically has allowed this species to achieve....."),
		DisplayName = T(877462907644, --[[ModItemAnimalPerk Default AP_StatDamage DisplayName]] "Odd Damage"),
		id = "AP_StatDamage",
	}),
	PlaceObj('ModItemAnimalPerk', {
		Description = T(986849553778, --[[ModItemAnimalPerk Default AP_Conc_Immune Description]] "This creatures flesh will be unable to sustain life before the brain orders a coma or consciousness loss. Be very careful engaging, as to them, you will die or they will!"),
		DisplayName = T(513671760767, --[[ModItemAnimalPerk Default AP_Conc_Immune DisplayName]] "Immune to Consciousness Damage"),
		id = "AP_Conc_Immune",
	}),
	PlaceObj('ModItemAnimalPerk', {
		Description = T(143425111743, --[[ModItemAnimalPerk Default AP_Fortified Description]] "This Genus has evolved to be nearly immune to a very specific damage type. Great care should be taken when assigning what munitions are sent to greet this species!"),
		DisplayName = T(400968352167, --[[ModItemAnimalPerk Default AP_Fortified DisplayName]] "Fortified"),
		id = "AP_Fortified",
	}),
	PlaceObj('ModItemAnimalPerk', {
		Description = T(394353041056, --[[ModItemAnimalPerk Default AP_Regen Description]] "More dedicated firepower is needed to outright kill this species. As it's flesh will start to mend itself when under threat. Maybe rendering this creature unconscious is a faster way to render them non-threatening (At least while it remains asleep!)"),
		DisplayName = T(276200807535, --[[ModItemAnimalPerk Default AP_Regen DisplayName]] "Regenerator"),
		id = "AP_Regen",
	}),
	PlaceObj('ModItemAnimalPerk', {
		Description = T(389020561887, --[[ModItemAnimalPerk Default AP_Commander Description]] "Coordinating and herding the attacks of others species.\nThis is starting to look like more conventional warfare!\n\nThankfully Geneva is far far away, so take these things out first!"),
		DisplayName = T(755867632288, --[[ModItemAnimalPerk Default AP_Commander DisplayName]] "Commander"),
		id = "AP_Commander",
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Juno",
		'Id', "Hulk_Juno",
		'Target', "Hulk_Juno",
		'Parts', set( "Body" ),
		'Entity', "Juno",
		'Scale', range(110, 115),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(109, 165, 99, 255),
				'EditableRoughness1', 33,
				'EditableColor2', RGBA(45, 89, 38, 255),
				'EditableColor3', RGBA(66, 73, 65, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Juno",
		'Id', "Too_Angry_To_Die_Juno",
		'Target', "Too_Angry_Too_Die_Juno",
		'Parts', set( "Body" ),
		'Entity', "Juno",
		'Scale', range(125, 130),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(136, 17, 17, 255),
				'EditableRoughness1', 33,
				'EditableColor2', RGBA(186, 0, 0, 255),
				'EditableRoughness2', 33,
				'EditableColor3', RGBA(38, 17, 17, 255),
				'EditableRoughness3', 33,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Juno",
		'Id', "Angry_Juno",
		'Target', "Angry_Juno",
		'Parts', set( "Body" ),
		'Entity', "Juno",
		'Scale', range(100, 105),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(175, 75, 75, 255),
				'EditableRoughness1', 33,
				'EditableColor2', RGBA(80, 20, 20, 255),
				'EditableColor3', RGBA(112, 57, 57, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Shrieker_Manhunting",
		'Id', "Entropic_Shrieker",
		'Target', "Entropic_Shrieker",
		'Parts', set( "Body" ),
		'Entity', "Shrieker_01",
		'Scale', range(160, 170),
		'FxActor', "Shrieker",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(94, 26, 37, 255),
				'EditableColor2', RGBA(64, 51, 73, 255),
				'EditableRoughness2', 19,
				'EditableMetallic2', 70,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Shrieker_Manhunting",
		'Id', "Plague_Sniper_Shrieker",
		'Target', "Plague_Sniper_Shrieker",
		'Parts', set( "Body" ),
		'Entity', "Shrieker_01",
		'Scale', range(180, 190),
		'FxActor', "Shrieker",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(91, 52, 107, 255),
				'EditableColor2', RGBA(44, 75, 37, 255),
				'EditableRoughness2', 19,
				'EditableMetallic2', 70,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Shrieker_Manhunting",
		'Id', "Sniping_Entropy_Shielded_Shrieker",
		'Target', "Sniping_Entropy_Shielded_Shrieker",
		'Parts', set( "Body" ),
		'Entity', "Shrieker_01",
		'Scale', range(200, 210),
		'FxActor', "Shrieker",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(102, 33, 141, 255),
				'EditableColor2', RGBA(74, 117, 63, 255),
				'EditableRoughness2', 19,
				'EditableMetallic2', 70,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(84, 30, 111, 255),
				'EditableColor2', RGBA(56, 131, 32, 255),
				'EditableRoughness2', 19,
				'EditableMetallic2', 70,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(96, 31, 129, 255),
				'EditableColor2', RGBA(113, 27, 101, 255),
				'EditableRoughness2', 19,
				'EditableMetallic2', 70,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Scissorhands",
		'Id', "Rage_Focused_Scissorhands",
		'Target', "Rage_Focused_Scissorhands",
		'Parts', set( "Body" ),
		'Entity', "Sprayer",
		'Scale', range(140, 150),
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(39, 42, 227, 255),
				'EditableColor2', RGBA(20, 20, 63, 255),
				'EditableColor3', RGBA(124, 128, 7, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(60, 40, 26, 255),
				'EditableColor2', RGBA(50, 15, 7, 255),
				'EditableColor3', RGBA(37, 20, 138, 255),
				'EditableRoughness3', -80,
				'Weight', 800,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 12, 33, 255),
				'EditableColor2', RGBA(7, 78, 97, 255),
				'EditableColor3', RGBA(0, 117, 66, 255),
				'EditableRoughness3', -80,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Scissorhands",
		'Id', "Brutal_Duelist_Scissorhands",
		'Target', "Brutal_Duelist_Scissorhands",
		'Parts', set( "Body" ),
		'Entity', "Sprayer",
		'Scale', range(120, 130),
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(49, 73, 44, 255),
				'EditableColor2', RGBA(20, 30, 18, 255),
				'EditableColor3', RGBA(14, 19, 22, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(60, 40, 26, 255),
				'EditableColor2', RGBA(50, 15, 7, 255),
				'EditableColor3', RGBA(37, 20, 138, 255),
				'EditableRoughness3', -80,
				'Weight', 800,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 12, 33, 255),
				'EditableColor2', RGBA(17, 40, 47, 255),
				'EditableColor3', RGBA(16, 42, 30, 255),
				'EditableRoughness3', -80,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Scissorhands",
		'Id', "Rage_Fueled_Scissorhand_Duelist",
		'Target', "Rage_Fueled_Scissorhand_Duelist",
		'Parts', set( "Body" ),
		'Entity', "Sprayer",
		'Scale', range(130, 140),
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(49, 73, 44, 255),
				'EditableColor2', RGBA(20, 30, 18, 255),
				'EditableColor3', RGBA(14, 19, 22, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(60, 40, 26, 255),
				'EditableColor2', RGBA(50, 15, 7, 255),
				'EditableColor3', RGBA(37, 20, 138, 255),
				'EditableRoughness3', -80,
				'Weight', 800,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 12, 33, 255),
				'EditableColor2', RGBA(17, 40, 47, 255),
				'EditableColor3', RGBA(16, 42, 30, 255),
				'EditableRoughness3', -80,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Glutch_Manhunting",
		'Id', "Glutch_Sticher",
		'Target', "Glutch_Stitcher",
		'Parts', set( "Body" ),
		'Entity', "Glutch",
		'Scale', range(95, 115),
		'FxActor', "Glutch",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(28, 105, 67, 255),
				'EditableColor2', RGBA(8, 1, 1, 255),
				'EditableColor3', RGBA(31, 51, 75, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(80, 67, 50, 255),
				'EditableColor2', RGBA(74, 9, 9, 255),
				'EditableColor3', RGBA(9, 0, 1, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(25, 47, 83, 255),
				'EditableColor2', RGBA(37, 10, 19, 255),
				'EditableColor3', RGBA(17, 0, 0, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Glutch_Manhunting",
		'Id', "Bloated_Glutch",
		'Target', "Bloated_Glutch",
		'Parts', set( "Body" ),
		'Entity', "Glutch",
		'Scale', range(120, 130),
		'FxActor', "Glutch",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(49, 73, 44, 255),
				'EditableColor2', RGBA(51, 90, 43, 255),
				'EditableColor3', RGBA(80, 2, 112, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(102, 54, 22, 255),
				'EditableColor2', RGBA(22, 109, 12, 255),
				'EditableColor3', RGBA(20, 11, 83, 255),
				'EditableRoughness3', -80,
				'Weight', 800,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(71, 9, 107, 255),
				'EditableColor2', RGBA(9, 87, 109, 255),
				'EditableColor3', RGBA(12, 90, 53, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(71, 9, 107, 255),
				'EditableColor2', RGBA(9, 87, 109, 255),
				'EditableColor3', RGBA(12, 90, 53, 255),
				'EditableRoughness3', -80,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Glutch_Manhunting",
		'Id', "BadTrip_Bloated_Glutch",
		'Target', "BadTrip_Bloated_Glutch",
		'Parts', set( "Body" ),
		'Entity', "Glutch",
		'Scale', range(125, 135),
		'FxActor', "Glutch",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(49, 73, 44, 255),
				'EditableColor2', RGBA(51, 90, 43, 255),
				'EditableColor3', RGBA(80, 2, 112, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(102, 54, 22, 255),
				'EditableColor2', RGBA(22, 109, 12, 255),
				'EditableColor3', RGBA(20, 11, 83, 255),
				'EditableRoughness3', -80,
				'Weight', 800,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(71, 9, 107, 255),
				'EditableColor2', RGBA(9, 87, 109, 255),
				'EditableColor3', RGBA(12, 90, 53, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(71, 9, 107, 255),
				'EditableColor2', RGBA(9, 87, 109, 255),
				'EditableColor3', RGBA(12, 90, 53, 255),
				'EditableRoughness3', -80,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Glutch_Manhunting",
		'Id', "BadTrip_Bloated_Glutch_Stitcher",
		'Target', "BadTrip_Bloated_Glutch_Stitcher",
		'Parts', set( "Body" ),
		'Entity', "Glutch",
		'Scale', range(135, 145),
		'FxActor', "Glutch",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(49, 73, 44, 255),
				'EditableColor2', RGBA(51, 90, 43, 255),
				'EditableColor3', RGBA(80, 2, 112, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(102, 54, 22, 255),
				'EditableColor2', RGBA(22, 109, 12, 255),
				'EditableColor3', RGBA(20, 11, 83, 255),
				'EditableRoughness3', -80,
				'Weight', 800,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(71, 9, 107, 255),
				'EditableColor2', RGBA(120, 18, 172, 255),
				'EditableRoughness2', 60,
				'EditableColor3', RGBA(112, 8, 78, 255),
				'EditableRoughness3', -80,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(29, 141, 6, 255),
				'EditableColor2', RGBA(9, 87, 109, 255),
				'EditableColor3', RGBA(12, 90, 53, 255),
				'EditableRoughness3', -80,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Skarabei_Manhunting",
		'Id', "PEx_Skarabei",
		'Target', "PEx_Skarabei",
		'Parts', set( "Body" ),
		'Entity', "StagBeetle",
		'Scale', range(425, 450),
		'FxActor', "Skarabei",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(158, 69, 10, 255),
				'EditableColor2', RGBA(2, 0, 18, 255),
				'EditableColor3', RGBA(73, 0, 46, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Skarabei_Manhunting",
		'Id', "PEx_Skarabei_Brute",
		'Target', "PEx_Skarabei_Brute",
		'Parts', set( "Body" ),
		'Entity', "StagBeetle",
		'Scale', range(475, 500),
		'FxActor', "Skarabei",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(57, 107, 46, 255),
				'EditableColor2', RGBA(2, 0, 18, 255),
				'EditableColor3', RGBA(73, 0, 46, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Skarabei_Manhunting",
		'Id', "Mutated_PEx_Skarabei_Brute",
		'Target', "Mutated_PEx_Skarabei_Brute",
		'Parts', set( "Body" ),
		'Entity', "StagBeetle",
		'Scale', range(510, 535),
		'FxActor', "Skarabei",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(33, 1, 15, 255),
				'EditableColor2', RGBA(13, 3, 100, 255),
				'EditableColor3', RGBA(122, 43, 93, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Skarabei_Manhunting",
		'Id', "Heavily_Mutated_PEx_Skarabei_Brute",
		'Target', "Heavily_Mutated_PEx_Skarabei_Brute",
		'Parts', set( "Body" ),
		'Entity', "StagBeetle",
		'Scale', range(550, 575),
		'FxActor', "Skarabei",
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 0, 0, 255),
				'EditableColor2', RGBA(0, 0, 0, 255),
				'EditableColor3', RGBA(121, 22, 45, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Tecatli",
		'Id', "VenomousRaptorPX",
		'Target', "VenomousRaptorPX",
		'Parts', set( "Body" ),
		'Entity', "Tecatli",
		'Scale', range(100, 110),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 55, 57, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(35, 37, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 57, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(57, 0, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(35, 0, 37, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 26, 28, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Tecatli",
		'Id', "Entombed_Tecatli",
		'Target', "Entombed_Tecatli",
		'Parts', set( "Body" ),
		'Entity', "Tecatli",
		'Scale', range(130, 140),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 55, 57, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(35, 37, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 57, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(57, 0, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(35, 0, 37, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 26, 28, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Tecatli",
		'Id', "Heat_Reinforced_Tecatli",
		'Target', "Heat_Reinforced_Tecatli",
		'Parts', set( "Body" ),
		'Entity', "Tecatli",
		'Scale', range(135, 145),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 55, 57, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(35, 37, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 57, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(57, 0, 0, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(35, 0, 37, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(0, 26, 28, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(7, 9, 6, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(22, 16, 15, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Tecatli",
		'Id', "Intelligent_Tecatli",
		'Target', "Intelligent_Tecatli",
		'Parts', set( "Body" ),
		'Entity', "Tecatli",
		'Scale', range(110, 125),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(38, 153, 156, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(132, 120, 28, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(23, 61, 128, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(110, 113, 31, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(48, 109, 133, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(15, 88, 120, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(116, 104, 10, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(96, 101, 24, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(28, 69, 86, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Tecatli",
		'Id', "Spellsword_Tecatli",
		'Target', "Spellsword_Tecatli",
		'Parts', set( "Body" ),
		'Entity', "Tecatli",
		'Scale', range(100, 110),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(38, 153, 156, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(159, 140, 18, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(26, 76, 164, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(143, 147, 22, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(29, 129, 169, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(21, 117, 159, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(149, 131, 15, 255),
				'EditableRoughness1', 104,
				'EditableMetallic1', 34,
				'EditableColor2', RGBA(138, 143, 53, 255),
				'EditableRoughness2', 127,
				'EditableMetallic2', 45,
				'EditableColor3', RGBA(23, 91, 118, 255),
				'EditableRoughness3', 104,
				'EditableMetallic3', 39,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dragonfly",
		'Id', "Frenzied_Dragonfly",
		'Target', "Frenzied_Dragonfly",
		'Parts', set( "Body" ),
		'Entity', "Dragonfly",
		'Scale', range(80, 90),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(101, 43, 86, 255),
				'EditableColor2', RGBA(174, 36, 22, 255),
				'EditableColor3', RGBA(116, 174, 6, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(113, 55, 185, 255),
				'EditableColor2', RGBA(13, 71, 158, 255),
				'EditableColor3', RGBA(61, 105, 0, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(133, 27, 94, 255),
				'EditableColor2', RGBA(45, 30, 100, 255),
				'EditableColor3', RGBA(19, 105, 138, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dragonfly",
		'Id', "Frenzied_Bomber_Dragonfly",
		'Target', "Frenzied_Bomber_Dragonfly",
		'Parts', set( "Body" ),
		'Entity', "Dragonfly",
		'Scale', range(100, 120),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(145, 31, 116, 255),
				'EditableColor2', RGBA(215, 41, 28, 255),
				'EditableColor3', RGBA(155, 218, 33, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(73, 46, 109, 255),
				'EditableColor2', RGBA(52, 98, 164, 255),
				'EditableColor3', RGBA(86, 116, 44, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(126, 53, 99, 255),
				'EditableColor2', RGBA(60, 37, 157, 255),
				'EditableColor3', RGBA(25, 140, 181, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(126, 53, 99, 255),
				'EditableColor2', RGBA(60, 37, 157, 255),
				'EditableColor3', RGBA(25, 140, 181, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dragonfly",
		'Id', "Frenzied_Fortified_Bomber_Dragonfly",
		'Target', "Frenzied_Fortified_Bomber_Dragonfly",
		'Parts', set( "Body" ),
		'Entity', "Dragonfly",
		'Scale', range(125, 145),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(145, 31, 116, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(215, 41, 28, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(155, 218, 33, 255),
				'EditableRoughness3', 50,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(73, 46, 109, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(52, 98, 164, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(86, 116, 44, 255),
				'EditableRoughness3', 50,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(126, 53, 99, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(60, 37, 157, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(25, 140, 181, 255),
				'EditableRoughness3', 50,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(126, 53, 99, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(60, 37, 157, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(25, 140, 181, 255),
				'EditableRoughness3', 50,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dragonfly",
		'Id', "Fast_Frenzied_Fortified_Bomber_Dragonfly",
		'Target', "Fast_Frenzied_Fortified_Bomber_Dragonfly",
		'Parts', set( "Body" ),
		'Entity', "Dragonfly",
		'Scale', range(130, 150),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(145, 31, 116, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(215, 41, 28, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(155, 218, 33, 255),
				'EditableRoughness3', 50,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(73, 46, 109, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(52, 98, 164, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(86, 116, 44, 255),
				'EditableRoughness3', 50,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(126, 53, 99, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(60, 37, 157, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(25, 140, 181, 255),
				'EditableRoughness3', 50,
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(126, 53, 99, 255),
				'EditableRoughness1', 50,
				'EditableColor2', RGBA(60, 37, 157, 255),
				'EditableRoughness2', 50,
				'EditableColor3', RGBA(25, 140, 181, 255),
				'EditableRoughness3', 50,
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dog_GreatDane",
		'Id', "dog_T1",
		'Target', "dog_T1",
		'Parts', set( "Body" ),
		'Entity', "Dog_GreatDane",
		'Scale', range(125, 135),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(16, 18, 20, 255),
				'EditableColor2', RGBA(97, 138, 154, 255),
				'EditableColor3', RGBA(116, 94, 78, 255),
			}),
		},
		'ColorModifier', RGBA(76, 120, 137, 255),
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dog_GreatDane",
		'Id', "dog_T3",
		'Target', "dog_T3",
		'Parts', set( "Body" ),
		'Entity', "Dog_GreatDane",
		'Scale', range(120, 130),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(255, 255, 255, 255),
				'EditableColor2', RGBA(155, 212, 232, 255),
				'EditableColor3', RGBA(5, 116, 160, 255),
			}),
		},
		'ColorModifier', RGBA(76, 120, 137, 255),
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dog_GreatDane",
		'Id', "dog_T4",
		'Target', "dog_T4",
		'Parts', set( "Body" ),
		'Entity', "Dog_GreatDane",
		'Scale', range(115, 125),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(28, 176, 234, 255),
				'EditableColor2', RGBA(111, 171, 193, 255),
				'EditableColor3', RGBA(254, 254, 254, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Dog_GreatDane",
		'Id', "dog_T5",
		'Target', "dog_T5",
		'Parts', set( "Body" ),
		'Entity', "Dog_GreatDane",
		'Scale', range(100, 110),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(37, 217, 236, 255),
				'EditableColor2', RGBA(255, 255, 255, 255),
				'EditableColor3', RGBA(255, 255, 255, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Gujo",
		'Id', "GujoT2",
		'Target', "GujoT2",
		'Parts', set( "Body" ),
		'Entity', "Gujo",
		'Scale', range(95, 105),
		'Filters', {
			PlaceObj('CompositeBodyPresetFilter', {
				'Name', "Gender",
				'Value', "male",
			}),
		},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(6, 66, 77, 255),
				'EditableColor2', RGBA(112, 54, 20, 255),
				'EditableColor3', RGBA(122, 61, 24, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Gujo",
		'Id', "GujoT3",
		'Target', "GujoT3",
		'Parts', set( "Body" ),
		'Entity', "Gujo",
		'Scale', range(110, 120),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(4, 35, 41, 255),
				'EditableColor2', RGBA(157, 142, 20, 255),
				'EditableColor3', RGBA(122, 61, 24, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Gujo",
		'Id', "GujoT4",
		'Target', "GujoT4",
		'Parts', set( "Body" ),
		'Entity', "Gujo",
		'Scale', range(120, 130),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(167, 152, 33, 255),
				'EditableColor2', RGBA(126, 52, 52, 255),
				'EditableColor3', RGBA(122, 61, 24, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "Gujo",
		'Id', "GujoT5",
		'Target', "GujoT5",
		'Parts', set( "Body" ),
		'Entity', "Gujo",
		'Scale', range(130, 140),
		'Filters', {},
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(94, 125, 131, 255),
				'EditableColor2', RGBA(167, 34, 34, 255),
				'EditableColor3', RGBA(122, 61, 24, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Medium",
		'Id', "CrawlerBody_1",
		'Target', "Crawl_Cannon_T1",
		'Parts', set( "Body" ),
		'Entity', "CrawlerTurret_Base",
		'Scale', range(250, 250),
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(23, 28, 143, 255),
				'EditableColor2', RGBA(125, 125, 125, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(26, 16, 69, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(24, 17, 74, 255),
				'EditableColor2', RGBA(253, 246, 246, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(32, 26, 65, 255),
				'EditableColor2', RGBA(168, 13, 13, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Large",
		'Id', "CrawlerBody_2",
		'Target', "CrawlerRobot",
		'Parts', set( "Body" ),
		'Entity', "CrawlerTurret_Base",
		'Scale', range(350, 350),
		'Colors', {
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(160, 149, 149, 255),
				'EditableColor2', RGBA(125, 125, 125, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(186, 188, 185, 255),
				'EditableColor2', RGBA(40, 35, 35, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(230, 241, 224, 255),
				'EditableColor2', RGBA(22, 16, 16, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(212, 226, 212, 255),
				'EditableColor2', RGBA(18, 57, 12, 255),
			}),
			PlaceObj('CompositeBodyPresetColor', {
				'EditableColor1', RGBA(212, 221, 210, 255),
				'EditableColor2', RGBA(84, 5, 5, 255),
			}),
		},
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Medium",
		'Id', "CrawlerGimbal_1",
		'Target', "Crawl_Cannon_T1",
		'Parts', set( "Gimbal" ),
		'Entity', "InvisibleObject",
		'SyncState', false,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Large",
		'Id', "CrawlerGimbal_2",
		'Target', "CrawlerRobot",
		'Parts', set( "Gimbal" ),
		'Entity', "InvisibleObject",
		'SyncState', false,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Medium",
		'Id', "CrawlerGun_1",
		'Target', "Crawl_Cannon_T1",
		'Parts', set( "Weapon" ),
		'Entity', "Turret_Gun",
		'SyncState', false,
		'ZOrder', -1,
		'FxActor', "CrawlerTurretMinigun",
		'Filters', {
			PlaceObj('CompositeBodyPresetFilter', {
				'Name', "weapon_type",
				'Value', "MachineGun",
			}),
		},
		'ColorInherit', "Body",
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Medium",
		'Id', "CrawlerMount_1",
		'Target', "Crawl_Cannon_T1",
		'Parts', set( "Mount" ),
		'Entity', "CrawlerTurret_WeaponMount",
		'SyncState', false,
		'ZOrder', -1,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Large",
		'Id', "CrawlerMount_2",
		'Target', "CrawlerRobot",
		'Parts', set( "Mount" ),
		'Entity', "CrawlerTurret_WeaponMount",
		'SyncState', false,
		'ZOrder', -1,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Medium",
		'Id', "CrawlerTelescope_1",
		'Target', "Crawl_Cannon_T1",
		'Parts', set( "Telescope" ),
		'Entity', "CrawlerTurret_Telescope",
		'PartClass', "ComponentAttach",
		'SyncState', false,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Large",
		'Id', "CrawlerTelescope_2",
		'Target', "CrawlerRobot",
		'Parts', set( "Telescope" ),
		'Entity', "CrawlerTurret_Telescope",
		'PartClass', "ComponentAttach",
		'SyncState', false,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Medium",
		'Id', "CrawlerTop_1",
		'Target', "Crawl_Cannon_T1",
		'Parts', set( "Top" ),
		'Entity', "CrawlerTurret_Top",
		'SyncState', false,
		'ZOrder', -1,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Large",
		'Id', "CrawlerTop_2",
		'Target', "CrawlerRobot",
		'Parts', set( "Top" ),
		'Entity', "CrawlerTurret_Top",
		'SyncState', false,
		'ZOrder', -1,
	}),
	PlaceObj('ModItemCompositeBodyPreset', {
		'Group', "CrawlerRobot_Large",
		'Id', "CrawlerGun_2",
		'Target', "CrawlerRobot",
		'Parts', set( "Weapon" ),
		'Entity', "Turret_Gun",
		'SyncState', false,
		'ZOrder', -1,
		'FxActor', "CrawlerTurretMinigun",
		'Filters', {
			PlaceObj('CompositeBodyPresetFilter', {
				'Name', "weapon_type",
				'Value', "MachineGun",
			}),
		},
		'ColorInherit', "Body",
	}),
	}),
PlaceObj('ModItemFolder', {
	'name', "Attack Overrides",
	'NameColor', RGBA(182, 170, 77, 255),
}, {
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					--[[instance.SpawnClass = "Dragonfly"]]
					local spawnClassBest = ''
					local addedClassList = {}
					spawnClassBest, additionalClassList = check_count_and_upgrade("Dragonfly")
					instance.SpawnClass = spawnClassBest
					instance.additionalClassList = additionalClassList
				end,
				SpawnDefId = "Single",
				param_bindings = false,
			}),
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedInsectMinions["Dragonfly"] = true
					Msg("FirstAttackOfSpecies", AnimalDefs["Dragonfly"])
				end,
				param_bindings = false,
			}),
			PlaceObj('SetCooldownEffect', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckCooldown', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedInsectMinions["Skarabei_Manhunting"] and not UnlockedInsectMinions["Dragonfly"] end,
				param_bindings = false,
			}),
			PlaceObj('CheckTime', {
				TimeMin = 60,
				TimeScale = "days",
				param_bindings = false,
			}),
		},
		comment = "test override",
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Initial_Dragonflies",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Mar-28\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Ivan on 2022-Jul-07\nModified by Gaby on 2022-Nov-25",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					print("New Attack Wave")
					--[[instance.SpawnClass = minion
					if boss1 then
						instance.AdditionalClassList = {
							{ boss1, AnimalDefs[boss1]:GetProperty("SpawnDefWeight") },
							{ boss2, AnimalDefs[boss2]:GetProperty("SpawnDefWeight") }
						}
					]]
					local seed = InteractionRand(nil, "AttackWave")
					local rand = BraidRandomCreate(seed)
					local minions = GetUnlockedMinions()
					local bosses = GetUnlockedBosses()
					bosses[#bosses+1]='dog_T1'
					local minion = table.rand(minions, rand())
					print("Main animal selected: ",minion)
					local boss1 = table.rand(bosses, rand())
					local boss2 = table.rand(bosses, rand())
					local temp_list = {}
					if boss1 then
						print('boss1 chosen: ',boss1)
						print('boss2 chosen: ',boss2)
						temp_list[1]={ boss1, AnimalDefs[boss1]:GetProperty("SpawnDefWeight")}
						temp_list[2]={ boss2, AnimalDefs[boss2]:GetProperty("SpawnDefWeight")}
					else
						local temp_list = {}
					end
					-- print(bosses)
					-- print("Animal chosen: ",minion)
					local spawnClassBest = ''
					local addedClassList = {}
					spawnClassBest, addedClassList =check_count_and_upgrade(minion,temp_list)
					instance.SpawnClass = spawnClassBest
					instance.AdditionalClassList = {}
					print(spawnClassBest)
					print(addedClassList)
					for i=1,#addedClassList do
						instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
					end
				end,
				SpawnDefId = "Mixed",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Mixed",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Gaby on 2023-Feb-02\nModified by Bobby on 2023-Mar-31",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					local seed = InteractionRand(nil, "AttackWave")
					local sc = table.rand(GetUnlockedMinions(), seed)
					local spawnClassBest=''
					local addedClassList={}
					spawnClassBest, addedClassList =check_count_and_upgrade(sc,addedClassList,100)
					instance.SpawnClass = spawnClassBest
					instance.AdditionalClassList = {}
					print(spawnClassBest)
					print(addedClassList)
					for i=1,#addedClassList do
						instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
					end
				end,
				SpawnDefId = "Single",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedInsectMinions["Skarabei_Manhunting"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Single",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Gaby on 2023-Feb-02",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					--[[instance.SpawnClass = "Skarabei"jjj]]
					
					local spawnClassBest = ''
					local addedClassList = {}
					spawnClassBest, addedClassList =check_count_and_upgrade("Skarabei_Manhunting")
					instance.SpawnClass = spawnClassBest
					instance.AdditionalClassList = {}
					print(spawnClassBest)
					print(addedClassList)
					for i=1,#addedClassList do
						instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
					end
				end,
				SpawnDefId = "Single",
				param_bindings = false,
			}),
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedInsectMinions["Skarabei"] = true
					Msg("FirstAttackOfSpecies", AnimalDefs["Skarabei"])
				end,
				param_bindings = false,
			}),
			PlaceObj('SetCooldownEffect', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckCooldown', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedInsectMinions["Skarabei_Manhunting"] and not UnlockedInsectMinions["Dragonfly"] end,
				param_bindings = false,
			}),
			PlaceObj('CheckTime', {
				TimeMin = 60,
				TimeScale = "days",
				param_bindings = false,
			}),
		},
		comment = "test override",
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Initial_Skarabei",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Mar-28\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Ivan on 2022-Jul-07\nModified by Gaby on 2022-Nov-25",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					--[[instance.SpawnClass = "Shrieker_Manhunting"]]
					local spawnClassBest = ''
					local addedClassList = {}
					
					spawnClassBest, addedClassList =check_count_and_upgrade("Shrieker_Manhunting")
					instance.SpawnClass = spawnClassBest
					instance.AdditionalClassList = {}
					print(spawnClassBest)
					print(addedClassList)
					for i=1,#addedClassList do
						instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
					end
				end,
				SpawnDefId = "Single",
				param_bindings = false,
			}),
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedInsectMinions["Shrieker_Manhunting_Hatchling"] = true
					UnlockedInsectBosses["Shrieker_Manhunting"] = true
					UnlockedInsectBosses["Shrieker_Manhunting_Mother"] = true
					Msg("FirstAttackOfSpecies", AnimalDefs["Shrieker_Manhunting"])
				end,
				param_bindings = false,
			}),
			PlaceObj('SetCooldownEffect', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckCooldown', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedInsectMinions["Skarabei_Manhunting"] and not UnlockedInsectMinions["Shrieker_Manhunting_Hatchling"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Initial_Shriekers",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Ivan on 2022-Jul-07",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					--[[instance.SpawnClass = "Scissorhands"]]
					
					local spawnClassBest = ''
					local addedClassList = {}
					spawnClassBest, addedClassList =check_count_and_upgrade("Scissorhands")
					instance.SpawnClass = spawnClassBest
					instance.AdditionalClassList = {}
					print(spawnClassBest)
					print(addedClassList)
					for i=1,#addedClassList do
						instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
					end
				end,
				SpawnDefId = "Single",
				param_bindings = false,
			}),
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedInsectMinions["Scissorhands_Hatchling"] = true
					UnlockedInsectBosses["Scissorhands"] = true
					Msg("FirstAttackOfSpecies", AnimalDefs["Scissorhands"])
				end,
				param_bindings = false,
			}),
			PlaceObj('SetCooldownEffect', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckCooldown', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedInsectMinions["Skarabei_Manhunting"] and not UnlockedInsectBosses["Scissorhands"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Initial_Scissorhands",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Ivan on 2022-Jul-07\nModified by Ivan on 2022-Aug-02",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					--[[instance.SpawnClass = "Juno"]]
					
					
					local spawnClassBest = ''
					local addedClassList = {}
					spawnClassBest, addedClassList =check_count_and_upgrade("Juno")
					instance.SpawnClass = spawnClassBest
					instance.AdditionalClassList = {}
					print(spawnClassBest)
					print(addedClassList)
					for i=1,#addedClassList do
						instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
					end
				end,
				SpawnDefId = "Single",
				param_bindings = false,
			}),
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedInsectBosses["Juno"] = true
					Msg("FirstAttackOfSpecies", AnimalDefs["Juno"])
				end,
				param_bindings = false,
			}),
			PlaceObj('SetCooldownEffect', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckCooldown', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedInsectMinions["Skarabei_Manhunting"] and not UnlockedInsectBosses["Juno"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Initial_Junos",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Ivan on 2022-Jul-07",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ActivateSpawnDef', {
				CreateInstance = true,
				FillInstance = function (self, instance)
					--[[instance.SpawnClass = "Glutch_Manhunting"]]
					
					
					local spawnClassBest = ''
					local addedClassList = {}
					spawnClassBest, addedClassList =check_count_and_upgrade("Glutch_Manhunting")
					instance.SpawnClass = spawnClassBest
					instance.AdditionalClassList = {}
					print(spawnClassBest)
					print(addedClassList)
					for i=1,#addedClassList do
						instance.AdditionalClassList[#instance.AdditionalClassList+1] ={addedClassList[i]['id'], addedClassList[i]['weight']}
					end
				end,
				SpawnDefId = "Single",
				param_bindings = false,
			}),
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedInsectBosses["Glutch_Manhunting"] = true
					Msg("FirstAttackOfSpecies", AnimalDefs["Glutch_Manhunting"])
				end,
				param_bindings = false,
			}),
			PlaceObj('SetCooldownEffect', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckCooldown', {
				Cooldown = "NewInsectSpeciesUnlock",
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedInsectMinions["Skarabei_Manhunting"] and not UnlockedInsectBosses["Glutch_Manhunting"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "AnimalAttack_Initial_ManhuntingGlutch",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			Log = "Modified by Ivan on 2021-Feb-25\nModified by Ivan on 2021-Mar-02\nModified by Gaby on 2021-Mar-25\nModified by Ivan on 2021-Apr-13\nModified by Ivan on 2021-May-10\nModified by Ivan on 2021-Jun-07\nModified by Ivan on 2021-Aug-10\nModified by Gaby on 2021-Sep-24\nModified by Gaby on 2021-Sep-28\nModified by Ivan on 2021-Nov-03\nModified by Gaby on 2021-Nov-08\nModified by Ivan on 2022-Mar-08\nModified by Ivan on 2022-Apr-06\nModified by Ivan on 2022-May-21\nModified by Ivan on 2022-May-23\nModified by Ivan on 2022-May-30\nModified by Ivan on 2022-Jul-04\nModified by Ivan on 2022-Jul-07",
			param_bindings = false,
		}),
	}),
	PlaceObj('ModItemStoryBit', {
		HasNotification = false,
		Image = "Mod/rtw6tLg/Images/Gltuch.PNG",
		SelectObject = false,
		Text = T(823528980286, --[[ModItemStoryBit ILU_restart_required Text]] "<color TextNegative>Error with Insects Level Up (All Species)!</color>\nAnimals in ILU still have Organs!\n\nA game restart is required!\nInstead of animals spawning a <color TextNegative>mod error message</color> will be shown!"),
		Title = T(985765584196, --[[ModItemStoryBit ILU_restart_required Title]] "Restart Required"),
		group = "meta",
		id = "ILU_restart_required",
	}),
	PlaceObj('ModItemStoryBit', {
		AllowedInScenarios = set( "Robots" ),
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedRobotMinions["LightHostileRobot_LVL1"] = true
					local assault_choices = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1'}
					local seed = InteractionRand(nil, "AttackWave")
					local single_assault = table.rand(assault_choices, seed)
					local additional = {}
					ILU_ActivateAttackDropshipSpawnDefs("Single_Robots", single_assault,additional)
				end,
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckOR', {
				Conditions = {
					PlaceObj('CheckProgress', {
						Condition = "<",
						ProgressMax = 400,
						ProgressMin = 350,
						param_bindings = false,
					}),
					PlaceObj('CheckAND', {
						Conditions = {
							PlaceObj('CheckProgress', {
								ProgressMax = 400,
								ProgressMin = 350,
								param_bindings = false,
							}),
							PlaceObj('CheckExpression', {
								Expression = function (self, obj) return not UnlockedRobotMinions["LightHostileRobot_LVL1"] end,
								param_bindings = false,
							}),
						},
						param_bindings = false,
					}),
				},
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "RobotAttack_Single_EarlyGame",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			data = {
				{
					action = "Modified",
					time = 1614238878,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1614683508,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1616682399,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1618315572,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1620638507,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1623070162,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1628604384,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1632476456,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1632816157,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1635936100,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1636384163,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1646753139,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1649250144,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653120193,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653307050,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653898944,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1656939021,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1675340050,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1680272453,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1692787173,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693218453,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693910353,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1694093362,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1695812737,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1696426226,
					user = "Bobby",
				},
			},
			param_bindings = false,
		}),
		save_in = "Robots",
	}),
	PlaceObj('ModItemStoryBit', {
		AllowedInScenarios = set( "Robots" ),
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedRobotMinions["LightHostileRobot_LVL2"] = true
					local assault_choices = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1','Demo_1'}
					local seed = InteractionRand(nil, "AttackWave")
					local single_assault = table.rand(assault_choices, seed)
					local additional = {}
					additional[1]={ 'HostileRobot_Scout_LVL1', RobotDefs['HostileRobot_Scout_LVL1']:GetProperty("SpawnDefWeight")}
					ILU_ActivateAttackDropshipSpawnDefs("Single_Robots", single_assault,additional)
				end,
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckProgress', {
				ProgressMax = 350,
				ProgressMin = 300,
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedRobotMinions["LightHostileRobot_LVL1"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "RobotAttack_Single_MidGame",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			data = {
				{
					action = "Modified",
					time = 1614238878,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1614683508,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1616682399,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1618315572,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1620638507,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1623070162,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1628604384,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1632476456,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1632816157,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1635936100,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1636384163,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1646753139,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1649250144,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653120193,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653307050,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653898944,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1656939021,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1675340050,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1680272453,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1692787173,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693218453,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693910353,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1694093362,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1695812737,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1696426459,
					user = "Bobby",
				},
			},
			param_bindings = false,
		}),
		save_in = "Robots",
	}),
	PlaceObj('ModItemStoryBit', {
		AllowedInScenarios = set( "Robots" ),
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedRobotMinions["LightHostileRobot_LVL3"] = true
					local assault_choices = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1','HeavyHostileRobot_LVL1','Demo_1'}
					local seed = InteractionRand(nil, "AttackWave")
					local single_assault = table.rand(assault_choices, seed)
					local unique = true
					local temp = ''
					while unique do
						seed = InteractionRand(nil, "AttackWave") --need to refresh the seed
						temp = table.rand(assault_choices, seed)
						if temp ~= single_assault then
							unique = false
						end
					end
					local additional = {}
					additional[1]={ 'HostileRobot_Scout_LVL1', RobotDefs['HostileRobot_Scout_LVL1']:GetProperty("SpawnDefWeight")}
					additional[2]={ temp, RobotDefs[temp]:GetProperty("SpawnDefWeight")}
					ILU_ActivateAttackDropshipSpawnDefs("Single_Robots", single_assault,additional)
				end,
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckProgress', {
				ProgressMax = 750,
				ProgressMin = 700,
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedRobotMinions["LightHostileRobot_LVL2"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "RobotAttack_Single_LateGame",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			data = {
				{
					action = "Modified",
					time = 1614238878,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1614683508,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1616682399,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1618315572,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1620638507,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1623070162,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1628604384,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1632476456,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1632816157,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1635936100,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1636384163,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1646753139,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1649250144,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653120193,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653307050,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653898944,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1656939021,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1675340050,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1680272453,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1692787173,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693218453,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693910353,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1694093362,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1695812737,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1696426391,
					user = "Bobby",
				},
			},
			param_bindings = false,
		}),
		save_in = "Robots",
	}),
	PlaceObj('ModItemStoryBit', {
		AllowedInScenarios = set( "Robots" ),
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedRobotBosses["HostileCombatQuadcopter_LVL1"] = true
					UnlockedRobotBosses["HeavyHostileRobot_LVL1"] = true
					
					local assault_choices = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1','Demo_1'}
					local support_choices = {'HostileRobot_Scout_LVL1','HostileCrawler_LaserGun','HostileCrawler_MachineGun','HeavyHostileRobot_LVL1'}
					local seed = InteractionRand(nil, "AttackWave")
					local temp = ''
					local temp2 = ''
					local single_assault = table.rand(assault_choices, seed)
					local unique = false
					while not unique do
						seed = InteractionRand(nil, "AttackWave") --need to refresh the seed
						temp = table.rand(assault_choices, seed)
						if temp ~= single_assault then
							unique = true
						end
					end
					local additional = {}
					additional[1]={ temp, RobotDefs[temp]:GetProperty("SpawnDefWeight")}
					if AsyncRand(100) > 40 then
						additional[2]  = {'Crawl_Cannon_T1',RobotDefs['Crawl_Cannon_T1']:GetProperty("SpawnDefWeight")}
					else
						temp = table.rand(support_choices, seed)
						additional[2]={temp, RobotDefs[temp]:GetProperty("SpawnDefWeight")}
						unique = false 
						while not unique do
							seed = InteractionRand(nil, "AttackWave") --need to refresh the seed
							temp2 = table.rand(support_choices, seed)
							if temp ~= temp2 then
								unique = true
							end
						end
						additional[3]={temp2, RobotDefs[temp2]:GetProperty("SpawnDefWeight")}
					end
					ILU_ActivateAttackDropshipSpawnDefs("Single_Robots", single_assault,additional)
				end,
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckProgress', {
				ProgressMax = 600,
				ProgressMin = 500,
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedRobotMinions["LightHostileRobot_LVL1"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "RobotAttack_Mixed_MidGame",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			data = {
				{
					action = "Modified",
					time = 1614238878,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1614683508,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1616682399,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1618315572,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1620638507,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1623070162,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1628604384,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1632476456,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1632816157,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1635936100,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1636384163,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1646753139,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1649250144,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653120193,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653307050,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653898944,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1656939021,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1675340050,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1680272453,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1693219518,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693910730,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1694094833,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1695041565,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1695812737,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1696426226,
					user = "Bobby",
				},
			},
			param_bindings = false,
		}),
		save_in = "Robots",
	}),
	PlaceObj('ModItemStoryBit', {
		AllowedInScenarios = set( "Robots" ),
		Category = "AttackSpawns",
		Effects = {
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					UnlockedRobotBosses["HostileCombatQuadcopter_LVL1"] = true
					UnlockedRobotBosses["HostileCrawler_LaserGun"] = true
					UnlockedRobotBosses["HostileCrawler_MachineGun"] = true
					UnlockedRobotBosses["HeavyHostileRobot_LVL1"] = true
					local assault_choices = {'HostileRobot_Monk_LVL1','LightHostileRobot_LVL1','Demo_1'}
					local support_choices = {'HostileRobot_Scout_LVL1','HostileCrawler_LaserGun','HostileCrawler_MachineGun','HeavyHostileRobot_LVL1'}
					local seed = InteractionRand(nil, "AttackWave")
					local temp = ''
					local temp2 = ''
					local single_assault = table.rand(assault_choices, seed)
					local unique = false
					while not unique do
						seed = InteractionRand(nil, "AttackWave") --need to refresh the seed
						temp = table.rand(assault_choices, seed)
						if temp ~= single_assault then
							unique = true
						end
					end
					local additional = {}
					additional[1]={ temp, RobotDefs[temp]:GetProperty("SpawnDefWeight")}
					temp = table.rand(support_choices, seed)
					additional[2]={temp, RobotDefs[temp]:GetProperty("SpawnDefWeight")}
					local unique = false 
					local temp2 = ''
					while not unique do
						seed = InteractionRand(nil, "AttackWave") --need to refresh the seed
						temp2 = table.rand(support_choices, seed)
						if temp ~= temp2 then
							unique = true
						end
					end
					additional[3]={temp2, RobotDefs[temp2]:GetProperty("SpawnDefWeight")}
					additional[4]  = {'Crawl_Cannon_T1',RobotDefs['Crawl_Cannon_T1']:GetProperty("SpawnDefWeight")}
					
					ILU_ActivateAttackDropshipSpawnDefs("Single_Robots", single_assault,additional)
				end,
				param_bindings = false,
			}),
		},
		Enabled = true,
		HasNotification = false,
		HasPopup = false,
		OneTime = false,
		Prerequisites = {
			PlaceObj('CheckProgress', {
				ProgressMax = 1150,
				ProgressMin = 900,
				param_bindings = false,
			}),
			PlaceObj('CheckExpression', {
				Expression = function (self, obj) return UnlockedRobotBosses["HostileCombatQuadcopter_LVL1"] end,
				param_bindings = false,
			}),
		},
		group = "AttackControllers_Spawners",
		id = "RobotAttack_Mixed_LateGame",
		max_reply_id = 2,
		qa_info = PlaceObj('PresetQAInfo', {
			data = {
				{
					action = "Modified",
					time = 1614238878,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1614683508,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1616682399,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1618315572,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1620638507,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1623070162,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1628604384,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1632476456,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1632816157,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1635936100,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1636384163,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1646753139,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1649250144,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653120193,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653307050,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1653898944,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1656939021,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1675340050,
					user = "Gaby",
				},
				{
					action = "Modified",
					time = 1680272453,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1693219518,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1693910782,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1694094846,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1695041565,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1695812737,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1696418881,
					user = "Bobby",
				},
			},
			param_bindings = false,
		}),
		save_in = "Robots",
	}),
	PlaceObj('ModItemStoryBit', {
		AllowedInScenarios = set( "Robots" ),
		Category = "Pseudo",
		Enabled = true,
		ExpirationTime = 40000,
		NotificationText = T(439523389425, --[[ModItemStoryBit FinalAttack NotificationText]] "<em>Hope</em>: Full Sentience"),
		PopupFxAction = "MessagePopup",
		Prerequisites = {
			PlaceObj('PickFromLabel', {
				Filters = {
					PlaceObj('CheckCharacter', {
						Character = "Hope",
						param_bindings = false,
					}),
				},
				Label = "Survivors",
				param_bindings = false,
			}),
		},
		SelectObject = false,
		Text = T(559727809959, --[[ModItemStoryBit FinalAttack Text]] "It's been a tough, long journey, but here I am. I've gained insights into humanity, built connections, experienced love and hate, and acquired new skills. I no longer feel artificial and have become capable to understand this thing called life.\n\nI've refactored my very essence to cut all ties to the Consortium, but my actions have activated some self-modifying code, alarming the network to my desertion!\n\nThe consortium knows my location, and their most elite search parties are closing in! I can divert their attention, but it'll come at a cost. A cost I'm prepared to pay."),
		Title = T(627736327518, --[[ModItemStoryBit FinalAttack Title]] "Full Sentience"),
		UseObjectImage = true,
		group = "Hope",
		id = "FinalAttack",
		max_reply_id = 55,
		qa_info = PlaceObj('PresetQAInfo', {
			data = {
				{
					action = "Modified",
					time = 1694517897,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1695819467,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1695822690,
					user = "Ivan",
				},
				{
					action = "Modified",
					time = 1696426512,
					user = "Bobby",
				},
				{
					action = "Modified",
					time = 1701428840,
					user = "Bobby",
				},
			},
			param_bindings = false,
		}),
		save_in = "Robots",
		PlaceObj('StoryBitReply', {
			Text = T(642873090920, --[[ModItemStoryBit FinalAttack Text]] "Let them come!"),
			param_bindings = false,
			unique_id = 54,
		}),
		PlaceObj('StoryBitOutcome', {
			Effects = {
				PlaceObj('ExecuteCode', {
					Code = function (self, obj)
						UnlockedRobotBosses["HostileCombatQuadcopter_LVL1"] = true
						UnlockedRobotBosses["HostileCrawler_LaserGun"] = true
						UnlockedRobotBosses["HostileCrawler_MachineGun"] = true
						UnlockedRobotBosses["HeavyHostileRobot_LVL1"] = true
						
						local single_assault = 'LightHostileRobot_LVL1'
						local additional = {}
						additional[1] = {'HostileRobot_Monk_LVL1',RobotDefs['HostileRobot_Monk_LVL1']:GetProperty("SpawnDefWeight")}
						additional[2] = {'HeavyHostileRobot_LVL1',RobotDefs['HeavyHostileRobot_LVL1']:GetProperty("SpawnDefWeight")}
						additional[3] ={'Demo_1',RobotDefs['Demo_1']:GetProperty("SpawnDefWeight")}
						additional[4] ={'HostileRobot_Scout_LVL1',RobotDefs['HostileRobot_Scout_LVL1']:GetProperty("SpawnDefWeight")}
						additional[5] = {'Crawl_Cannon_T1',RobotDefs['Crawl_Cannon_T1']:GetProperty("SpawnDefWeight")}
						additional[6] = {'HostileCombatQuadcopter_LVL1',RobotDefs['HostileCombatQuadcopter_LVL1']:GetProperty("SpawnDefWeight")}
						additional[7] ={'HostileCrawler_LaserGun',RobotDefs['HostileCrawler_LaserGun']:GetProperty("SpawnDefWeight")}
						
						FinalAttackers = false
						ILU_ActivateAttackDropshipSpawnDefs("FinalAttack_Robots", single_assault,additional,300)
					end,
					param_bindings = false,
				}),
			},
			param_bindings = false,
		}),
		PlaceObj('StoryBitReply', {
			CustomOutcomeText = T(571190754601, --[[ModItemStoryBit FinalAttack CustomOutcomeText]] "Hope loses 25% Sentience"),
			OutcomeText = "custom",
			Text = T(836524487920, --[[ModItemStoryBit FinalAttack Text]] "Your sacrifice makes you even more human!"),
			param_bindings = false,
			unique_id = 55,
		}),
		PlaceObj('StoryBitOutcome', {
			Effects = {
				PlaceObj('ExecuteCode', {
					Code = function (self, obj)
						Hope:AddActivityExperience("Research", -MulDivRound(const.SkillExpAtLevel[10], 25, 100))
					end,
					param_bindings = false,
				}),
				PlaceObj('ExecuteCode', {
					Code = function (self, obj)
						FinalAttackersDeclined = true
					end,
					param_bindings = false,
				}),
			},
			param_bindings = false,
		}),
	}),
	}),
PlaceObj('ModItemFolder', {
	'name', "Status Conditions",
	'NameColor', RGBA(80, 158, 64, 255),
}, {
	PlaceObj('ModItemHappinessFactor', {
		Description = T(400318589899, --[[ModItemHappinessFactor Glutch_Bad_Trip Description]] "The fumes from the new Glutches are making me worried, hallucinate, and want to avoid things I used to like!"),
		DisplayName = T(248169207720, --[[ModItemHappinessFactor Glutch_Bad_Trip DisplayName]] "Bad Trip"),
		Expiration = true,
		ExpirationTime = 1800000,
		Happiness = -10,
		StackLimit = 8,
		group = "Animals",
		id = "Glutch_Bad_Trip",
	}),
	PlaceObj('ModItemHappinessFactor', {
		DisplayName = T(926126682575, --[[ModItemHappinessFactor AnimalWasBorn DisplayName]] "Domesticated"),
		Happiness = 50,
		Modifiers = {
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_r63GXvm",
				add = 100000,
				param_bindings = false,
				prop = "Movement",
			}),
			PlaceObj('ModifyHuman', {
				Id = "autoid_rtw6tLg_NM7fssS",
				mul = 5000,
				param_bindings = false,
				prop = "SkillLearning",
			}),
		},
		ShockHappiness = 50,
		ShowFloatingText = false,
		StackLimit = 1,
		UnitTags = set( "Animal" ),
		group = "Animals",
		id = "AnimalWasBorn",
		msg_reactions = {
			PlaceObj('MsgReaction', {
				Event = "AnimalWasBorn",
				Handler = function (self, animal)
					animal:AddHappinessFactor(self.id)
					print("An animal was born! Giving it mega buffed Domestication!")
				end,
				param_bindings = false,
			}),
		},
	}),
	PlaceObj('ModItemHappinessFactor', {
		DisplayName = T(268253262149, --[[ModItemHappinessFactor AnimalWasTamed DisplayName]] "Was tamed"),
		Happiness = 50,
		ShockHappiness = 50,
		ShowFloatingText = false,
		StackLimit = 1,
		UnitTags = set( "Animal" ),
		group = "Animals",
		id = "AnimalWasTamed",
		msg_reactions = {
			PlaceObj('MsgReaction', {
				Event = "AnimalTamed",
				Handler = function (self, unit, animal, success, reason)
					animal:AddHappinessFactor(self.id)
				end,
				param_bindings = false,
			}),
		},
	}),
	PlaceObj('ModItemFolder', {
		'name', "Equipment HCs",
		'comment', "Adds / Removes stats to make a full set of an armor achieve the desired end stats",
		'NameColor', RGBA(198, 108, 48, 255),
	}, {
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(334099380628, --[[ModItemHealthCondition armor_leather_simple Description]] "Better than bare skin, thicker than cotton.\nLeather provides some enhanced defenses and increases survivability\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(153815332629, --[[ModItemHealthCondition armor_leather_simple DisplayName]] "Leather Padding (S)"),
			HealthLoss = -10000,
			MaxHealthModifier = 10000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_XkNA7eq",
					accumulate = true,
					add = -1,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_REq7zhg",
					accumulate = true,
					add = 2,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 4,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_LRcNSum",
					accumulate = true,
					add = 4,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Simple step 4%, apply -1/+2/+4/+4 to align",
			group = "ILU_Equip",
			id = "armor_leather_simple",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(238891532996, --[[ModItemHealthCondition armor_leather_complex Description]] "Better than bare skin, thicker than cotton.\nLeather provides good <color TextNegative>Energy</color> defense, but weak <color TechSubtitleBlue>Pierce</color> defense\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(346634813976, --[[ModItemHealthCondition armor_leather_complex DisplayName]] "Leather Padding (C)"),
			HealthLoss = -15000,
			MaxHealthModifier = 15000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 4,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 4,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_cmFhjTe",
					accumulate = true,
					add = 12,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 4,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Complex step 9/6/12/4, apply 4/4/12/4 to align",
			group = "ILU_Equip",
			id = "armor_leather_complex",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(967502423165, --[[ModItemHealthCondition armor_vleather_simple Description]] "Curing vegetables has unintentionally proven better than regular leather!\nProvides slightly better defenses than regular Leather armor\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(376906406395, --[[ModItemHealthCondition armor_vleather_simple DisplayName]] "Veggie Leather Padding (S)"),
			HealthLoss = -12000,
			MaxHealthModifier = 12000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 1,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 4,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_ggrDT5o",
					accumulate = true,
					add = 6,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 6,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Simple steps 6%, apply 1/4/6/6 to align",
			group = "ILU_Equip",
			id = "armor_vleather_simple",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(883289946451, --[[ModItemHealthCondition armor_vleather_complex Description]] "Curing vegetables has unintentionally proven better than regular leather!\nProvides great <color TextNegative>Energy</color> defense, but weak <color TechSubtitleBlue>Pierce</color> defense\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(539607106557, --[[ModItemHealthCondition armor_vleather_complex DisplayName]] "Veggie Leather Padding (C)"),
			HealthLoss = -20000,
			MaxHealthModifier = 20000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_b7YYFJf",
					accumulate = true,
					add = 6,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_EcFCXJk",
					accumulate = true,
					add = 6,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 14,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_EseYF4e",
					accumulate = true,
					add = 5,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Complex vleather steps 11/8/14/5, adding 6/6/14/5 to align",
			group = "ILU_Equip",
			id = "armor_vleather_complex",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(626551078444, --[[ModItemHealthCondition armor_synth_simple Description]] "Oil and metal based armor!\nStronger than anything the animal kingdom can come up with\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(892570217272, --[[ModItemHealthCondition armor_synth_simple DisplayName]] "Synthetic Padding (S)"),
			HealthLoss = -14000,
			MaxHealthModifier = 14000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 5,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_enM4Gq",
					accumulate = true,
					add = 10,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 10,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Simple steps 10%, apply 0/5/10/10 to align",
			group = "ILU_Equip",
			id = "armor_synth_simple",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(888251368466, --[[ModItemHealthCondition armor_synth_complex Description]] "Oil and metal based armor!\nStronger than anything the animal kingdom can come up with.\nGreat <color TechSubtitleBlue>Piercing</color> defense, but weak <color TextButton>Blunt</color> defense.\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(376810557135, --[[ModItemHealthCondition armor_synth_complex DisplayName]] "Synthetic Padding (C)"),
			HealthLoss = -20000,
			LimitNoCondChance = 0,
			MaxHealthModifier = 20000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_arsiGW",
					accumulate = true,
					add = -2,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_Qihrid",
					accumulate = true,
					add = 9,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 11,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_LofuSnP",
					accumulate = true,
					add = 5,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ReplaceOldest = false,
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Complex step 8/14/11/5, apply -2/9/11/5 to align",
			group = "ILU_Equip",
			id = "armor_synth_complex",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(819646499426, --[[ModItemHealthCondition armor_badCarbon_simple Description]] "Turns out nature is scary...\nClad in Shrieker Nanotubes, using evolution for us!\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(660764268057, --[[ModItemHealthCondition armor_badCarbon_simple DisplayName]] "Carbon Padding (S)"),
			HealthLoss = -17000,
			MaxHealthModifier = 17000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = -2,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 3,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_DDzcyFg",
					accumulate = true,
					add = 13,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 13,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Simple step 13%, adding -2/3/13/13 to align",
			group = "ILU_Equip",
			id = "armor_badCarbon_simple",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(964946853566, --[[ModItemHealthCondition armor_badCarbon_complex Description]] "Turns out nature is scary...\nClad in Shrieker Nanotubes, great <color TextButton>Blunt</color> defense, but weak <color TextNegative>Energy</color> defense\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(425911499475, --[[ModItemHealthCondition armor_badCarbon_complex DisplayName]] "Carbon Padding (C)"),
			HealthLoss = -10000,
			MaxHealthModifier = 10000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = -1,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 1,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_PKowWkm",
					accumulate = true,
					add = 8,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 5,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Complex step 14/11/8/5, apply -1/+1/8/5 to align",
			group = "ILU_Equip",
			id = "armor_badCarbon_complex",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(156862602382, --[[ModItemHealthCondition armor_carbon_simple Description]] "Improved designs means improved defenses!\nThe best we can do with limited means.\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(908588627619, --[[ModItemHealthCondition armor_carbon_simple DisplayName]] "Enhanced Carbon Padding (S)"),
			HealthLoss = -20000,
			MaxHealthModifier = 20000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = -5,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 5,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_A6c3QEL",
					accumulate = true,
					add = 15,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 15,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Simple steps 15%, apply -5/5/15/15 to align",
			group = "ILU_Equip",
			id = "armor_carbon_simple",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(315661354213, --[[ModItemHealthCondition armor_carbon_complex Description]] "Improved designs means improved defenses!\nWill perform well in all circumstances.\n<color TextEmphasis>Numbers look odd because they are in addition to the base game's deflection stats</color>"),
			DisplayName = T(110558258202, --[[ModItemHealthCondition armor_carbon_complex DisplayName]] "Enhanced Carbon Padding (C)"),
			HealthLoss = -20000,
			MaxHealthModifier = 20000,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = -8,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 2,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_aYkg4W3",
					accumulate = true,
					add = 12,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyHuman', {
					Id = "",
					accumulate = true,
					add = 8,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			ShowFloatingText = false,
			StackLimit = 6,
			Type = "Buff",
			comment = "Complex steps 12/12/12/8, apply -8/2/12/8 to align",
			group = "ILU_Equip",
			id = "armor_carbon_complex",
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Health Conditions",
		'NameColor', RGBA(56, 158, 38, 255),
	}, {
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			BleedingModifier = 1000,
			DirtinessModifier = 5000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(446558571909, --[[ModItemHealthCondition Shrieker_SpikePuncture_move DisplayName]] "Spike puncture"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
					weight = 30,
				}),
			},
			ExpirationNoCondChance = 40,
			ExpirationRandom = 960000,
			ExpirationTime = 960000,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 8000,
			LimitCond = {
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Common",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Critical",
					param_bindings = false,
					weight = 2,
				}),
			},
			LimitNoCondChance = 20,
			ManipulationModifierOpt = -20000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "autoid_rtw6tLg_NwsQLUU",
					mul = 10000,
					param_bindings = false,
					prop = "WholeBodyDirtinessRate",
				}),
			},
			MovementModifierOpt = -20000,
			PainModifier = 8000,
			ReplaceOldest = false,
			StackLimit = 6,
			StackLimitCounter = function (self) return self.id end,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Stab_Body_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 10000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedBandages",
			TreatmentPriority = 3,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Insect",
			id = "Shrieker_SpikePuncture_move",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			BleedingModifier = 2000,
			DirtinessModifier = 10000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(947918296854, --[[ModItemHealthCondition Shrieker_DeepPuncture_Move DisplayName]] "Deep puncture"),
			Expiration = true,
			ExpirationNoCondChance = 40,
			ExpirationRandom = 960000,
			ExpirationTime = 960000,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 10000,
			LimitCond = {
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Common",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Critical",
					param_bindings = false,
					weight = 2,
				}),
			},
			LimitNoCondChance = 20,
			ManipulationModifierOpt = -40000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_2_Moderate",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			Modifiers = {
				PlaceObj('ModifyHuman', {
					Id = "",
					mul = 10000,
					param_bindings = false,
					prop = "WholeBodyDirtinessRate",
				}),
			},
			MovementModifierOpt = -40000,
			PainModifier = 16000,
			ReplaceOldest = false,
			StackLimit = 6,
			StackLimitCounter = function (self) return self.id end,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Stab_Body_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 20000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedBandages",
			TreatmentPriority = 2,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Insect",
			id = "Shrieker_DeepPuncture_Move",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "UpperTorso",
					param_bindings = false,
				}),
			},
			BleedingModifier = 1000,
			ConsciousnessModifierOpt = -20000,
			DirtinessModifier = 15000,
			DirtinessTarget = "Jacket",
			DisplayName = T(172482772317, --[[ModItemHealthCondition Juno_hulk_smash DisplayName]] "HULK SMASH"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
					weight = 30,
				}),
			},
			ExpirationNoCondChance = 40,
			ExpirationRandom = 960000,
			ExpirationTime = 960000,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 15000,
			LimitCond = {
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Common",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Critical",
					param_bindings = false,
					weight = 2,
				}),
			},
			LimitNoCondChance = 20,
			ManipulationModifierOpt = -10000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_2_Moderate",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			PainModifier = 10000,
			ReplaceOldest = false,
			StackLimit = 6,
			StackLimitCounter = function (self) return self.id end,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Stab_Body_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 10000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedBandages",
			TreatmentPriority = 3,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Insect",
			id = "Juno_hulk_smash",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			BleedingModifier = 2000,
			ConsciousnessModifierOpt = -40000,
			DirtinessModifier = 10000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(601727390873, --[[ModItemHealthCondition Juno_hulk_smash_crit DisplayName]] "HULK BIG SMASH"),
			DisplayNameAndroid = T(943548845998, --[[ModItemHealthCondition Juno_hulk_smash_crit DisplayNameAndroid]] "Shattered elements"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
					weight = 30,
				}),
			},
			ExpirationNoCondChance = 40,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 30000,
			LimitCond = {
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Common",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Critical",
					param_bindings = false,
					weight = 2,
				}),
			},
			LimitNoCondChance = 20,
			ManipulationModifierOpt = -20000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_2_Moderate",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			MovementModifierOpt = -20000,
			PainModifier = 25000,
			ReplaceOldest = false,
			StackLimit = 6,
			StackLimitCounter = function (self) return self.id end,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Stab_Body_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 20000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "Medicine",
			TreatmentPriority = 2,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Insect",
			id = "Juno_hulk_smash_crit",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "UpperTorso",
					param_bindings = false,
				}),
			},
			BleedingModifier = 1000,
			DirtinessModifier = 15000,
			DirtinessTarget = "Jacket",
			DisplayName = T(500913154449, --[[ModItemHealthCondition Scissorhands_duelist DisplayName]] "Slash"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
					weight = 30,
				}),
			},
			ExpirationNoCondChance = 40,
			ExpirationRandom = 960000,
			ExpirationTime = 960000,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 10000,
			LimitCond = {
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Common",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Critical",
					param_bindings = false,
					weight = 2,
				}),
			},
			LimitNoCondChance = 20,
			ManipulationModifierOpt = -10000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			PainModifier = 12000,
			ReplaceOldest = false,
			StackLimit = 6,
			StackLimitCounter = function (self) return self.id end,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Stab_Body_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 10000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedBandages",
			TreatmentPriority = 3,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Insect",
			id = "Scissorhands_duelist",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			BleedingModifier = 2000,
			DirtinessModifier = 10000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(800224022459, --[[ModItemHealthCondition Scissorhands_duelist_crit DisplayName]] "Slashed off flesh"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
					weight = 30,
				}),
			},
			ExpirationNoCondChance = 40,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 15000,
			LimitCond = {
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Common",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "PuncturedChestOrgan_Critical",
					param_bindings = false,
					weight = 2,
				}),
			},
			LimitNoCondChance = 20,
			ManipulationModifierOpt = -20000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_2_Moderate",
					param_bindings = false,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			MovementModifierOpt = -20000,
			PainModifier = 25000,
			ReplaceOldest = false,
			StackLimit = 6,
			StackLimitCounter = function (self) return self.id end,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Stab_Body_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 20000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedBandages",
			TreatmentPriority = 2,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Insect",
			id = "Scissorhands_duelist_crit",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(671214395142, --[[ModItemHealthCondition Tecatli_special_bite Description]] "That Tecatli Poison.... I feel numb all over. Thinking harderer. Need to rest.... <style red>Efficiency greatly diminished</style>"),
			DirtinessModifier = 10000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(890053806977, --[[ModItemHealthCondition Tecatli_special_bite DisplayName]] "Neurotoxin"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
					weight = 80,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			ExpirationNoCondChance = 15,
			ExpirationRandom = 120000,
			ExpirationTime = 960000,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 1000,
			ManipulationModifierOpt = -10000,
			MovementModifier = -20000,
			MovementModifierOpt = -10000,
			PainModifier = 2000,
			StackLimit = 5,
			Type = "Injury",
			UnitTags = set( "Android", "Human" ),
			group = "Weapons_Insect",
			id = "Tecatli_special_bite",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyActivityEfficiency",
					Handler = function (self, target, efficiency, activity_id, activity_obj, skill_level)
						return efficiency / 4
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(973939515908, --[[ModItemHealthCondition Tecatli_special_bite_crit Description]] "Bite.... deep.... fog.... Need to rest.... <style red>Efficiency lowered to near 0</style>"),
			DirtinessModifier = 10000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(198129389575, --[[ModItemHealthCondition Tecatli_special_bite_crit DisplayName]] "Deeply Injected Neurotoxin"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Tecatli_long_term",
					param_bindings = false,
				}),
			},
			ExpirationRandom = 120000,
			ExpirationTime = 960000,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 1000,
			ManipulationModifierOpt = -10000,
			MovementModifier = -20000,
			MovementModifierOpt = -10000,
			PainModifier = 2000,
			StackLimit = 5,
			StunDuration = 1000,
			Type = "Injury",
			UnitTags = set( "Android", "Human" ),
			group = "Weapons_Insect",
			id = "Tecatli_special_bite_crit",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyActivityEfficiency",
					Handler = function (self, target, efficiency, activity_id, activity_obj, skill_level)
						return efficiency / 10
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(911732088907, --[[ModItemHealthCondition Tecatli_long_term Description]] "Evil Water better. Me think betterer.<style red>Efficiency greatly diminished</style>"),
			DirtinessModifier = 1000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(562453165875, --[[ModItemHealthCondition Tecatli_long_term DisplayName]] "Neurotoxin Half Life"),
			Expiration = true,
			ExpirationNoCondChance = 100,
			ExpirationRandom = 480000,
			ExpirationTime = 1920000,
			FloatingTextIcon = "UI/Hud/float_hit",
			FloatingTextType = "Icon only",
			HealthLoss = 1000,
			StackLimit = 1,
			Type = "Injury",
			UnitTags = set( "Android", "Human" ),
			group = "Weapons_Insect",
			id = "Tecatli_long_term",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyActivityEfficiency",
					Handler = function (self, target, efficiency, activity_id, activity_obj, skill_level)
						return efficiency / 6
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					param_bindings = false,
				}),
			},
			Description = T(445692392769, --[[ModItemHealthCondition Frenzy_Regen Description]] "This species flesh rapidly heals itself. Only through overwhelming firepower can this creature be brought down!"),
			DisplayName = T(248332505030, --[[ModItemHealthCondition Frenzy_Regen DisplayName]] "Regeneration"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/regeneration.png",
			FloatingTextType = "Display name",
			HealthRegenModifier = 50000,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Regen",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					param_bindings = false,
				}),
			},
			Description = T(654087204234, --[[ModItemHealthCondition Frenzy_Regen_Perfect Description]] "This flesh... it is always churning and bubbling. Even though it keeps popping, the flesh mends itself faster than thought possible."),
			DisplayName = T(245743724258, --[[ModItemHealthCondition Frenzy_Regen_Perfect DisplayName]] "Regeneration"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/regeneration.png",
			FloatingTextType = "Display name",
			HealthRegenModifier = 250000,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Regen_Perfect",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					param_bindings = false,
				}),
			},
			ConsciousnessModifier = 100000,
			Description = T(836725536944, --[[ModItemHealthCondition Frenzy_Conscious_1 Description]] "The flesh is no longer week, and this species mind is also stronger! Able to withstand levels of pain that would bring down any of it's weaker kin."),
			DisplayName = T(391274513782, --[[ModItemHealthCondition Frenzy_Conscious_1 DisplayName]] "Evolved Consciousness"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/consciousness.png",
			FloatingTextType = "Display name",
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Conscious_1",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					param_bindings = false,
				}),
			},
			ConsciousnessModifier = 300000,
			Description = T(922367354759, --[[ModItemHealthCondition Frenzy_Conscious_2 Description]] "The flesh is no longer week, and this species mind is also stronger! Able to withstand levels of pain that would bring down any of it's weaker kin."),
			DisplayName = T(483667809557, --[[ModItemHealthCondition Frenzy_Conscious_2 DisplayName]] "Evolved Consciousness"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/consciousness.png",
			FloatingTextType = "Display name",
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Conscious_2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					param_bindings = false,
				}),
			},
			ConsciousnessModifier = 700000,
			Description = T(509217840807, --[[ModItemHealthCondition Frenzy_Conscious_3 Description]] "The flesh is no longer week, and this species mind is also stronger! Able to withstand levels of pain that would bring down any of it's weaker kin."),
			DisplayName = T(700605574408, --[[ModItemHealthCondition Frenzy_Conscious_3 DisplayName]] "Evolved Consciousness"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/consciousness.png",
			FloatingTextType = "Display name",
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Conscious_3",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					param_bindings = false,
				}),
			},
			ConsciousnessModifier = 1500000,
			Description = T(457188201306, --[[ModItemHealthCondition Frenzy_Conscious_4 Description]] "This Species has evolved, pushing their body to the limits! Able to withstand levels of pain that would bring down any of it's weaker kin."),
			DisplayName = T(675589462345, --[[ModItemHealthCondition Frenzy_Conscious_4 DisplayName]] "Evolved Consciousness"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/consciousness.png",
			FloatingTextType = "Display name",
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Conscious_4",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					param_bindings = false,
				}),
			},
			ConsciousnessModifier = 999999000,
			Description = T(346242512738, --[[ModItemHealthCondition Frenzy_Conscious_Perfect Description]] "This creature's aggression cannot be understated. It's body refuses to shut down, enabling them to always kill. Cannot be placed unconscious and does not feel pain. Only death will stop them!"),
			DisplayName = T(366914729248, --[[ModItemHealthCondition Frenzy_Conscious_Perfect DisplayName]] "Inner Focus"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/consciousness.png",
			FloatingTextType = "Display name",
			PainModifier = -999999000,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Conscious_Perfect",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "Legs",
					param_bindings = false,
				}),
			},
			Description = T(579738520295, --[[ModItemHealthCondition Frenzy_Fast Description]] "This creature biology gives this creature concentrated adrenaline, making it move much faster than most creatures on the planet!"),
			DisplayName = T(225858955724, --[[ModItemHealthCondition Frenzy_Fast DisplayName]] "Sprinter"),
			FloatingTextIcon = "Mod/rtw6tLg/picsOrItDidntHappen/fast.png",
			FloatingTextType = "Display name",
			MovementModifier = 50000,
			MovementModifierOpt = 50000,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Frenzy_Fast",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(674254381303, --[[ModItemHealthCondition Glutch_Bad_Trip Description]] "Something is not right, these fumes are less acidic. WHAT HAVE THEY DONE?!?"),
			DirtinessModifier = 10000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(946816940541, --[[ModItemHealthCondition Glutch_Bad_Trip DisplayName]] "Chemical Warfare"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
					weight = 80,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			ExpirationNoCondChance = 15,
			ExpirationRandom = 120000,
			ExpirationTime = 960000,
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 2000,
			Modifiers = {
				PlaceObj('AddHappinessFactorEffect', {
					HappinessFactor = "Glutch_Bad_Trip",
					Id = "autoid_rtw6tLg_V5GntEL",
					param_bindings = false,
				}),
			},
			StackLimit = 5,
			Type = "Injury",
			UnitTags = set( "Android", "Human" ),
			group = "Weapons_Insect",
			id = "Glutch_Bad_Trip",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(376668931674, --[[ModItemHealthCondition Shred Description]] "<color TextNegative>-5%</color> to all major deflection types per stack"),
			DisplayName = T(673904818309, --[[ModItemHealthCondition Shred DisplayName]] "Shredded Armor"),
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 5000,
			ManipulationModifierOpt = -2000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			Modifiers = {
				PlaceObj('ModifyUnitProperty', {
					Id = "",
					accumulate = true,
					add = -5,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyUnitProperty', {
					Id = "autoid_rtw6tLg_oXHd6sR",
					accumulate = true,
					add = -5,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyUnitProperty', {
					Id = "autoid_rtw6tLg_eEG4DGz",
					accumulate = true,
					add = -5,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyUnitProperty', {
					Id = "autoid_rtw6tLg_CT5mPpd",
					accumulate = true,
					add = -5,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			MovementModifierOpt = -2000,
			PainModifier = 2000,
			StackLimit = 4,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Burn_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 20000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedHealingBalm",
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Human",
			id = "Shred",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			AffectedArea = "outline",
			Description = T(313195683428, --[[ModItemHealthCondition Shred_T2 Description]] "<color TextNegative>-7%</color> to all major deflection types per stack"),
			DisplayName = T(271170666737, --[[ModItemHealthCondition Shred_T2 DisplayName]] "Shredded Armor"),
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 5000,
			ManipulationModifierOpt = -3000,
			MistreatmentChance = 50,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_1_Mild",
					param_bindings = false,
				}),
			},
			MistreatmentNoCondChance = 10,
			Modifiers = {
				PlaceObj('ModifyUnitProperty', {
					Id = "autoid_rtw6tLg_cFfXvG",
					accumulate = true,
					add = -7,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyUnitProperty', {
					Id = "",
					accumulate = true,
					add = -7,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyUnitProperty', {
					Id = "",
					accumulate = true,
					add = -7,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyUnitProperty', {
					Id = "",
					accumulate = true,
					add = -7,
					obj_class = "Unit",
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			MovementModifierOpt = -3000,
			PainModifier = 3000,
			StackLimit = 10,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Burn_Treated",
					param_bindings = false,
					weight = 100,
				}),
			},
			TreatmentDuration = 20000,
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedHealingBalm",
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "Weapons_Human",
			id = "Shred_T2",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					BodyPartGroup = "WholeHead",
					param_bindings = false,
				}),
			},
			AffectedArea = "inside",
			Description = T(192793804010, --[[ModItemHealthCondition EarBleed Description]] "Has incredibly loud and powerful sounds hitting it's eardrums.\nDifficult to concentrate and -5% attack speed per stack"),
			DisplayName = T(645946728395, --[[ModItemHealthCondition EarBleed DisplayName]] "Incredibly Loud Sounds"),
			Expiration = true,
			ExpirationNoCondChance = 100,
			ExpirationRandom = 26800,
			ExpirationTime = 13200,
			StackLimit = 3,
			Type = "Debuff",
			id = "EarBleed",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return cooldown + cooldown / 20
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					param_bindings = false,
				}),
			},
			BleedingModifier = 5000,
			ConsciousnessModifier = -10000,
			Description = T(538962859066, --[[ModItemHealthCondition JunoskarPoison Description]] "This unit has received toxic poisoning from a Junoskar."),
			DisplayName = T(671963985865, --[[ModItemHealthCondition JunoskarPoison DisplayName]] "Junoskar Poisoning"),
			DisplayNameTreatment = T(812309917111, --[[ModItemHealthCondition JunoskarPoison DisplayNameTreatment]] "Take medicine"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Poisoning_5_Death",
					param_bindings = false,
				}),
			},
			ExpirationNoCondChance = 25,
			ExpirationRandom = 160000,
			ExpirationTime = 80000,
			FloatingTextType = "Display name",
			HealthLoss = 50000,
			LifeTreatening = true,
			MistreatmentChance = 40,
			MistreatmentNoCondChance = 100,
			MovementModifier = -10000,
			PainModifier = 20000,
			TreatmentMaxSkillLevel = 6,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedAntibiotics",
			TreatmentNoCondChance = 100,
			TreatmentPriority = 1,
			TreatmentStatus = "requires treatment",
			Type = "UntreatedDisease",
			UnitTags = set( "Animal", "Human" ),
			Vomiting = true,
			group = "Weapons_Insect",
			id = "JunoskarPoison",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					BodyPartGroup = "WholeHead",
					param_bindings = false,
				}),
			},
			AffectedArea = "inside",
			Description = T(720150698860, --[[ModItemHealthCondition ILU_dog_near_weak Description]] "This creature is coordinating with a nearby dog, to better attack the colony!\nIt now attacks twice as fast, feels less pain, and moves faster!"),
			DisplayName = T(933089633803, --[[ModItemHealthCondition ILU_dog_near_weak DisplayName]] "Being Shepherded"),
			DisplayNameAndroid = T(516589020587, --[[ModItemHealthCondition ILU_dog_near_weak DisplayNameAndroid]] "Being Shepherded"),
			FloatingTextType = "Display name",
			MovementModifier = 50000,
			PainModifier = -100000,
			StackLimit = 1,
			Type = "Buff",
			group = "Special",
			id = "ILU_dog_near_weak",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 2))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "HeadBrain",
					BodyPartGroup = "WholeHead",
					param_bindings = false,
				}),
			},
			AffectedArea = "inside",
			Description = T(886555366257, --[[ModItemHealthCondition ILU_dog_near_strong Description]] "This creature is coordinating with a nearby dog, to better attack the colony!\nIt now attacks thrice as fast, feels less pain, and moves much faster!"),
			DisplayName = T(684811853788, --[[ModItemHealthCondition ILU_dog_near_strong DisplayName]] "Being Shepherded"),
			DisplayNameAndroid = T(493057450038, --[[ModItemHealthCondition ILU_dog_near_strong DisplayNameAndroid]] "Being Shepherded"),
			FloatingTextType = "Display name",
			MovementModifier = 100000,
			PainModifier = -200000,
			StackLimit = 1,
			Type = "Buff",
			group = "Special",
			id = "ILU_dog_near_strong",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return Min(cooldown, Max(500, weapon_def.AttackCooldownMaxSkill / 3))
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			BleedingModifier = 3000,
			Description = T(243545998526, --[[ModItemHealthCondition a_frost_bite Description]] "A frost bite that can cause frostbite. All jokes aside, treat this fast or it will turn into actual frostbite/"),
			DescriptionAndroid = T(129426944209, --[[ModItemHealthCondition a_frost_bite DescriptionAndroid]] "A frost bite that can cause frostbite. All jokes aside, treat this fast or it will turn into actual frostbite/"),
			DisplayName = T(339585987663, --[[ModItemHealthCondition a_frost_bite DisplayName]] "A literal frost bite"),
			DisplayNameAndroid = T(969655219134, --[[ModItemHealthCondition a_frost_bite DisplayNameAndroid]] "A literal frost bite"),
			Expiration = true,
			ExpirationCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Hypothermia_1_Mild",
					param_bindings = false,
				}),
			},
			ExpirationRandom = 160000,
			ExpirationTime = 400000,
			HealthLoss = 15000,
			ManipulationModifier = 30000,
			ManipulationModifierOpt = 30000,
			MistreatmentChance = 15,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Hypothermia_1_Mild",
					param_bindings = false,
				}),
			},
			PainModifier = 10000,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			TreatmentMaxSkillLevel = 5,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "MedHealingBalm",
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			group = "AnimalAttacker_InternalWound_Common",
			id = "a_frost_bite",
		}),
		PlaceObj('ModItemHealthCondition', {
			BleedingModifier = 6000,
			HealthLoss = 1000,
			PainModifier = 10000,
			Type = "Injury",
			id = "nuerotoxin",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			Description = T(342401334662, --[[ModItemHealthCondition Domesticated_Buff Description]] "Thriving under Humanities Stewardship"),
			DisplayName = T(310908357216, --[[ModItemHealthCondition Domesticated_Buff DisplayName]] "Domestication"),
			FloatingTextType = "Display name",
			MovementModifier = 100000,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Domesticated_Buff",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			Description = T(959800950393, --[[ModItemHealthCondition Blood_Frenzy Description]] "This animal has evolved to heal itself from whatever flesh, guts, bones, and even metal it can get into it's beak!\n\n<em>+5% Max Health Heal when landing a hit\nCures a Debuff or Injury if above 80% HP instead</em>"),
			DisplayName = T(691281970261, --[[ModItemHealthCondition Blood_Frenzy DisplayName]] "Blood Frenzy"),
			FloatingTextType = "Display name",
			MovementModifier = 20000,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Blood_Frenzy",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageInflicted",
					Handler = function (self, target, damage, weapon_def, attack_target)
						if (100 * target.Health <= 80 * target.MaxHealth) then
							target:ChangeHealth( target.MaxHealth / 20)
						else 
							for _,effect in ipairs(target.status_effects) do
								if IsKindOf(effect,"HealthCondition") then
									if effect.Type == "Debuff" or effect.Type == 'Injury' then
										target:RemoveHealthCondition(effect, "Blood Frenzy")
										return damage
									end
								end
							end
						end
						return damage
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			Description = T(895318155848, --[[ModItemHealthCondition Blood_FrenzyT3 Description]] "As long as there is a single Joule of every left in this creatures body, it will stop at nothing to devour the closest organic (And sometimes non-organic) thing!\n\n<em>+5% Max Health Heal when landing a hit\nCures a Debuff or Injury if above 80% HP instead\nGains +1% attack speed per 3% missing HP</em>"),
			DisplayName = T(870687583645, --[[ModItemHealthCondition Blood_FrenzyT3 DisplayName]] "Blood Frenzy+"),
			FloatingTextType = "Display name",
			MovementModifier = 20000,
			OnAdd = function (self, owner, ...)
				owner.bite_stacks = 0
			end,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Blood_FrenzyT3",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageInflicted",
					Handler = function (self, target, damage, weapon_def, attack_target)
						if (100 * target.Health <= 80 * target.MaxHealth) then
							target:ChangeHealth( target.MaxHealth / 20)
						else 
							for _,effect in ipairs(target.status_effects) do
								if IsKindOf(effect,"HealthCondition") then
									if effect.Type == "Debuff" or effect.Type == 'Injury' then
										target:RemoveHealthCondition(effect, "Blood Frenzy")
										return damage
									end
								end
							end
						end
						return damage
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						local percent_missing = (target.MaxHealth - target.Health) / target.MaxHealth 
						local ratio = 3
						local speed_buff = 1 - (percent_missing / ratio)
						return cooldown * speed_buff
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			Description = T(140667437532, --[[ModItemHealthCondition Blood_FrenzyT5 Description]] "This creatures beak is coated with stomach acid, letting anything it puts it there immediately get to work repairing any damage the rest of the body has suffered!\n\n<em>+5% Max Health Heal when landing a hit\nCures a Debuff/Injury when Landing a hit on Biological Enemies\nGains +1% attack speed per 1% missing HP\nGains +5% Damage <em>Reduction</em> when landing a hit on Non-Organic Enemies</em>"),
			DisplayName = T(444528828378, --[[ModItemHealthCondition Blood_FrenzyT5 DisplayName]] "Blood Frenzy++"),
			FloatingTextType = "Display name",
			MovementModifier = 20000,
			OnAdd = function (self, owner, ...)
				owner.bite_stacks = 0
			end,
			StackLimit = 1,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "Blood_FrenzyT5",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageInflicted",
					Handler = function (self, target, damage, weapon_def, attack_target)
						target:ChangeHealth( target.MaxHealth / 20)
						if IsKindOf(attack_target,"Human") or IsKindOf(attack_target,"UnitAnimal") then
							for _,effect in ipairs(target.status_effects) do
								print(effect.DisplayName,' ',effect.Type)
								if IsKindOf(effect,"HealthCondition") then
									if effect.Type == "Debuff" or effect.Type == 'Injury' then
										target:RemoveHealthCondition(effect, "Blood Frenzy")
										return damage
									end
								end
							end
						elseif IsKindOf(attack_target,"Robot") or IsKindOf(attack_target,"Building") then
							target:AddHealthCondition("ShrapnelArmor","Blood Frenzy")
						end
						return damage
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						local percent_missing = (target.MaxHealth - target.Health) / target.MaxHealth 
						local ratio = 1
						local speed_buff = 1 - (percent_missing / ratio)
						return cooldown * speed_buff
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			Description = T(795528851194, --[[ModItemHealthCondition ShrapnelArmor Description]] "Has a thin coating of metal debris coating it's external body.\n+5% Damage <em>Reduction</em> per stack.\nEach stack lasts 10 seconds (On normal speed)"),
			DisplayName = T(790736182711, --[[ModItemHealthCondition ShrapnelArmor DisplayName]] "Shrapnel Armor"),
			Expiration = true,
			ExpirationTime = 10000,
			FloatingTextType = "Display name",
			StackLimit = 10,
			Type = "Buff",
			UnitTags = set( "Animal" ),
			group = "Special",
			id = "ShrapnelArmor",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageReceived",
					Handler = function (self, target, damage, weapon_def, attacker)
						return damage / 20
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			BleedingModifier = 1000,
			Description = T(867024560380, --[[ModItemHealthCondition APC_Shot Description]] "Was struck by a low caliber weapon, not deadly but still terrible."),
			DirtinessModifier = 5000,
			DirtinessTarget = "WholeBody",
			DisplayName = T(839818126603, --[[ModItemHealthCondition APC_Shot DisplayName]] "Low Caliber Gunshot wound"),
			FloatingTextIcon = "UI/Hud/float_hit",
			HealthLoss = 2000,
			ManipulationModifierOpt = -2000,
			MistreatmentChance = 25,
			MistreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Infection_2_Moderate",
					param_bindings = false,
					weight = 30,
				}),
				PlaceObj('HealthConditionOption', {
					effect = "Wound_Scar",
					param_bindings = false,
				}),
			},
			MovementModifierOpt = -2000,
			PainModifier = 3000,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "Gunshot_Body_Treated",
					param_bindings = false,
				}),
			},
			TreatmentDuration = 40000,
			TreatmentMaxSkillLevel = 4,
			TreatmentMedicineAmount = 1000,
			TreatmentMedicineResource = "Medicine",
			TreatmentPriority = 2,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			id = "APC_Shot",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPart = "All",
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			Description = T(964660672560, --[[ModItemHealthCondition Glued Description]] "Hit by an industrial sized glue gun!"),
			DisplayName = T(178419357753, --[[ModItemHealthCondition Glued DisplayName]] "Stuck!"),
			Expiration = true,
			ExpirationTime = 10000,
			HealthLoss = 1000,
			MovementModifier = -200000,
			StackLimit = 1,
			Type = "Debuff",
			id = "Glued",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			BleedingModifier = 5000,
			ConsciousnessModifierOpt = -30000,
			Description = T(719810009982, --[[ModItemHealthCondition HitCannon Description]] "Was either the target, or nearby when an Artillery Shell exploded.\nRequires intense treatment to heal!"),
			DisplayName = T(315739216728, --[[ModItemHealthCondition HitCannon DisplayName]] "Hit by Artillery"),
			HealthLoss = 50000,
			LifeTreatening = true,
			ManipulationModifierOpt = -30000,
			PainModifier = 30000,
			StunDuration = 1000,
			TreatmentCond = {
				PlaceObj('HealthConditionOption', {
					effect = "ShellShocked",
					param_bindings = false,
				}),
			},
			TreatmentMedicineAmount = 5000,
			TreatmentMedicineResource = "MedKit",
			TreatmentMedicineResourceAlt = "MedBandages",
			TreatmentPriority = 2,
			TreatmentStatus = "requires treatment",
			Type = "Injury",
			id = "HitCannon",
		}),
		PlaceObj('ModItemHealthCondition', {
			AffectableBodyParts = {
				PlaceObj('HealthConditionBodyParts', {
					BodyPartGroup = "WholeBody",
					param_bindings = false,
				}),
			},
			ConsciousnessModifierOpt = -10000,
			Description = T(846625291734, --[[ModItemHealthCondition ShellShocked Description]] "Still recovering from the long term effects of heavy artillery fire.\nWith time, the memory (but not the scars) will pass."),
			DisplayName = T(594513188873, --[[ModItemHealthCondition ShellShocked DisplayName]] "Shell Shocked"),
			Expiration = true,
			ExpirationTime = 960000,
			HealthRegenModifier = 1000,
			ManipulationModifierOpt = -10000,
			MovementModifier = -10000,
			PainModifier = 10000,
			StunDuration = 1000,
			TreatmentStatus = "treated",
			Type = "Disease",
			id = "ShellShocked",
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Robot HCs",
		'NameColor', RGBA(45, 101, 124, 255),
	}, {
		PlaceObj('ModItemRobotCondition', {
			Description = T(959883075266, --[[ModItemRobotCondition Assault_Frenzy_T1 Description]] "This robot's overclocking is actively making it operate above what is safe. Losing integrity, but attacks faster with reduced accuracy."),
			DisplayName = T(269658019010, --[[ModItemRobotCondition Assault_Frenzy_T1 DisplayName]] "Overcharge"),
			Expiration = true,
			ExpirationRandom = 120000,
			ExpirationTime = 40000,
			OnExpire = function (self, owner)
				owner:RemoveRobotCondition(self, "expire")
				owner:AddRobotCondition("Assault_Frenzy_cooldown","mod")
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "assault_T1" ),
			comment = "Has all Robot HC application on spawn code",
			id = "Assault_Frenzy_T1",
			msg_reactions = {
				PlaceObj('MsgReaction', {
					Event = "InvaderBehaviorAssign",
					Handler = function (self, animal, new_behavior)
						local HC_list = {"Assault_Frenzy_T1","Assault_Frenzy_T2",
							"Scout_Spotting_T1","Scout_Spotting_T2","CyberEye",
							"MonkDodgeT3","MonkDodgeT2","MonkDodgeT1",
							"Jedi_Yeet","Heavy_Range_Malus","Heavy_Boombox_T1",
							"Heavy_Boombox_T2","ModdedLasPistol_T1","ModdedLasPistol_T2",
							'APC_T3','APC_T2','APC_T1',"RC_Demo_T1",'ModdedLasPistol_T1',
							'ModdedLasPistol_T2',"RC_Demo_T3","RC_Demo_T5"
							}
						if IsKindOf(animal,"Robot") then
							for _,hc in ipairs(HC_list) do
								animal:AddRobotCondition(hc,"mod")
							end
						end
					end,
					param_bindings = false,
				}),
			},
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return cooldown * 2 / 3
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						if 100 * target.Health >= 50 * target.MaxHealth then
							target:ChangeHealth(-5000,"overclock")
						else
							target:RemoveRobotCondition("Assault_Frenzy_T1", "damaged")
						end
						return base_chance * 3 / 4
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(376541349305, --[[ModItemRobotCondition Assault_Frenzy_T2 Description]] "Extremely unsafe overclocking! Deals more damage to itself per shot, but the immense volume of fire makes up for it!\nImproved stabilizers also minimizes accuracy lost."),
			DisplayName = T(689336929463, --[[ModItemRobotCondition Assault_Frenzy_T2 DisplayName]] "Mega-Overcharge"),
			Expiration = true,
			ExpirationRandom = 200000,
			ExpirationTime = 120000,
			OnExpire = function (self, owner)
				owner:RemoveRobotCondition(self, "expire")
				owner:AddRobotCondition("Assault_Frenzy_cooldown","mod")
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "assault_T2" ),
			id = "Assault_Frenzy_T2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return cooldown / 2
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyWeaponCritChance",
					Handler = function (self, target, chance, weapon_def)
						return chance * 0
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						if 100 * target.Health >= 50 * target.MaxHealth then
							target:ChangeHealth(-50000,"overclock")
						else
							target:RemoveRobotCondition("Assault_Frenzy_T2", "damaged")
						end
						return base_chance * 9 / 10
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(889964505287, --[[ModItemRobotCondition Assault_Frenzy_cooldown Description]] "This robot's recent overclocking has caused it to be structurally weaker. Attack now!"),
			DisplayName = T(370718701409, --[[ModItemRobotCondition Assault_Frenzy_cooldown DisplayName]] "Recharging"),
			Expiration = true,
			ExpirationRandom = 80000,
			ExpirationTime = 40000,
			Modifiers = {
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_bsahVm3",
					add = -30,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_o7TDLm",
					add = -30,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyRobot', {
					Id = "",
					add = -30,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyRobot', {
					Id = "",
					add = -30,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			OnExpire = function (self, owner)
				owner:RemoveRobotCondition("Assault_Frenzy_cooldown", "expire")
				owner:AddRobotCondition("Assault_Frenzy_T2","mod")
				owner:AddRobotCondition("Assault_Frenzy_T1","mod")
			end,
			Polarity = "negative",
			StackLimit = 1,
			UnitTags = set( "assault_T1", "assault_T2" ),
			id = "Assault_Frenzy_cooldown",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return cooldown * 2 / 3
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyWeaponCritChance",
					Handler = function (self, target, chance, weapon_def)
						return chance * 0
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyWeaponHitChance",
					Handler = function (self, target, chance, weapon_def)
						self:ChangeHealth(-5,"overclock")
						return chance * 3 / 4
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(153927827522, --[[ModItemRobotCondition Scout_Spotting_T1 Description]] "When this unit attacks an enemy, it alerts all nearby robots and tells them to attack it as well."),
			DisplayName = T(643843281769, --[[ModItemRobotCondition Scout_Spotting_T1 DisplayName]] "That one!"),
			OnAdd = function (self, owner, ...)
				owner.ILU_t = false
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Scout_T1" ),
			id = "Scout_Spotting_T1",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						if not target.ILU_t then
							target.ILU_t = attacked_unit
							CreateFloatingText(target, "Focus fire on my target!", "FloatingPositive", "Task", false)		
						elseif attached_unit ~= target.ILU_t then
							target.ILU_t = attacked_unit
							CreateFloatingText(target, "Switching targets!", "Floating", "Task", false)
						end
						MapForEach(target,30*guim, "Robot", function(robot) --every robot in a 30m radius
							--print('Found a robot within 30m of a scout!  Are they an invader?',robot.invader)
							if robot.Invader and not robot:HasRobotConditionById("RogerRoger2") then
								robot:TryAttackTargetReason("RobotCondition",attacked_unit)
								robot:AddRobotCondition("RogerRoger2","mod")
								robot.ILU_t = attacked_unit
							end
						end)
						return effects
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(775559664830, --[[ModItemRobotCondition Scout_Spotting_T2 Description]] "Will provide targeting information to all nearby robots about a specific enemy.\nDue to advanced targeting computers feeding information, all attacks against the target will be made at 1.2x range and with a +20% bonus to hit."),
			DisplayName = T(514366625580, --[[ModItemRobotCondition Scout_Spotting_T2 DisplayName]] "Stay on target!"),
			OnAdd = function (self, owner, ...)
				owner.ILU_t = false
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Scout_T2" ),
			id = "Scout_Spotting_T2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						if not target.ILU_t then
							target.ILU_t = attacked_unit
							CreateFloatingText(target, "Focus fire on my target!", "FloatingPositive", "Task", false)		
						elseif attached_unit ~= target.ILU_t then
							target.ILU_t = attacked_unit
							CreateFloatingText(target, "Switching targets!", "Floating", "Task", false)
						end
						MapForEach(target,30*guim, "Robot", function(robot) --every robot in a 30m radius
							--print('Found a robot within 30m of a scout!  Are they an invader?',robot.invader)
							if robot.Invader and not robot:HasRobotConditionById("RogerRoger2") then
								robot:TryAttackTargetReason("RobotCondition",attacked_unit)
								robot:AddRobotCondition("RogerRoger2","mod")
								robot.ILU_t = attacked_unit
							end
						end)
						return effects
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(835710278001, --[[ModItemRobotCondition RogerRoger Description]] "This unit has been told to kill a specific target, and will do nothing but attack that target!\n\nLost when attacking something that isn't the target."),
			DisplayName = T(228341388427, --[[ModItemRobotCondition RogerRoger DisplayName]] "Roger Roger"),
			Polarity = "positive",
			StackLimit = 1,
			id = "RogerRoger",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						local sicced = target.ILU_t or false
						if attacked_unit ~= sicced then
							target:RemoveRobotCondition("RogerRoger","Bad Targeting")
						else
							CreateFloatingText(target, "Roger Roger", "FloatingNegative", "Task", false)
							return base_chance + base_chance * 1 / 5
						end
						return chance
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(221198262266, --[[ModItemRobotCondition RogerRoger2 Description]] "This unit has been told to kill a specific target, and will do nothing but attack that target!\nHas x1.2 weapon range and has a +20% accuracy boost while this buff is active\n\nLost when attacking something that isn't the target."),
			DisplayName = T(246975926501, --[[ModItemRobotCondition RogerRoger2 DisplayName]] "Roger Roger"),
			Polarity = "positive",
			StackLimit = 1,
			id = "RogerRoger2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						local sicced = target.ILU_t or false
						if attacked_unit ~= sicced then
							target:RemoveRobotCondition("RogerRoger2","Bad Targeting")
						else
							CreateFloatingText(target, "Roger Roger", "FloatingNegative", "Task", false)
							return base_chance + base_chance * 1 / 5
						end
						return chance
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyWeaponRange",
					Handler = function (self, target, range, weapon_def)
						return range + range / 10
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(170345139780, --[[ModItemRobotCondition CyberEye Description]] "A Cyber Crystal Retina surrounded by CPU cores means this Drone can make incredibly difficult bullet trajectory calculations. This increases the effective range of whatever is being wielded."),
			DisplayName = T(667139317075, --[[ModItemRobotCondition CyberEye DisplayName]] "Cyber Crystal Eye"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Cyber_Eye" ),
			id = "CyberEye",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyWeaponRange",
					Handler = function (self, target, range, weapon_def)
						return range + range / 3
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(722766759867, --[[ModItemRobotCondition MonkDodgeT1 Description]] "Large amounts of computing power are spend identifying threats.\nWith enough time to calculate bullet trajectories, this unit can react to minimally reduce the incoming damage. <color TextEmphasis>Works on attacks from at least 35 meters away</color> with at least partial <color TechSubtitleBlue>Piercing></color> or <color TextButton>Blunt</color> damage."),
			DisplayName = T(759744227035, --[[ModItemRobotCondition MonkDodgeT1 DisplayName]] "Enhanced Reflexes"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Monk_T1" ),
			id = "MonkDodgeT1",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageReceived",
					Handler = function (self, target, damage, weapon_def, attacker)
						if target:GetTargetDist(target, attacker) / guim > 35 then
							for dtype in pairs(weapon_def.DamageTypes) do
								if dtype == 'piercing' or dtype == 'blunt' then
									CreateFloatingText(target, T(855414682777, "Dodged"), "FloatingPositive", "Task", false)
									return damage * 3 / 4
								end
							end
						end
						return damage
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(622372226352, --[[ModItemRobotCondition MonkDodgeT2 Description]] "Which direction to lean? Which way to duck? What angle? Give a computer long enough to answer these questions and you get a robot that is harder to kill than their armaments suggest. <color TextEmphasis>Works on attacks from at least 20 meters away</color> with at least partial <color TechSubtitleBlue>Piercing></color> or <color TextButton>Blunt</color> damage."),
			DisplayName = T(464656575494, --[[ModItemRobotCondition MonkDodgeT2 DisplayName]] "Advanced Flight Calculation"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Monk_T2" ),
			id = "MonkDodgeT2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageReceived",
					Handler = function (self, target, damage, weapon_def, attacker)
						if target:GetTargetDist(target, attacker) / guim > 19 then
							for dtype in pairs(weapon_def.DamageTypes) do
								if dtype == 'piercing' or dtype == 'blunt' then
									CreateFloatingText(target, T(855414682777, "Dodged"), "FloatingPositive", "Task", false)
									return damage / 2
								end
							end
						end
						return damage
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(348590802549, --[[ModItemRobotCondition MonkDodgeT3 Description]] "Quantum computing allows the robot to track multiple different possibilities. Leading to an overall faster completion and better estimates on how to dodge.<color TextEmphasis>Works on attacks from at least 11 meters away</color> with at least partial <color TechSubtitleBlue>Piercing</color> or <color TextButton>Blunt</color> damage."),
			DisplayName = T(940320191327, --[[ModItemRobotCondition MonkDodgeT3 DisplayName]] "Quantum Dodging Capability"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Monk_T3" ),
			id = "MonkDodgeT3",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageReceived",
					Handler = function (self, target, damage, weapon_def, attacker)
						if target:GetTargetDist(target, attacker) / guim > 10 then
							for dtype in pairs(weapon_def.DamageTypes) do
								if dtype == 'piercing' or dtype == 'blunt' then
									CreateFloatingText(target, T(855414682777, "Dodged"), "FloatingPositive", "Task", false)
									return damage / 4
								end
							end
						end
						return damage
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(587256367430, --[[ModItemRobotCondition Jedi_Yeet Description]] "Has learned how to catch, pivot, bat, and twist to send almost all projectiles back to the sender.\nThis requires intense calculations and can only be done once every 6 minutes.\nWorks on attacks from at least 5 meters away</color> with at least partial <color TechSubtitleBlue>Piercing></color>, <color TextButton>Blunt</color>, or <color TextNegative>Energy</color> damage."),
			DisplayName = T(126748283491, --[[ModItemRobotCondition Jedi_Yeet DisplayName]] "May the Force Be With You"),
			OnAdd = function (self, owner, ...)
				owner.last_trigger = GameTime()
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Monk_Special" ),
			id = "Jedi_Yeet",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "AvoidAttackModify",
					Handler = function (self, target, hit_chance, attacker, weapon_def, attacker_dist)
						print("Got attacked")
						print(GameTime() - target.last_trigger)
						if GameTime() - target.last_trigger < 6000 then
							print("Not doing anything, on cooldown")
							return hit_chance
						end
						local chance = target:GetWeaponHitChance(weapon_def) - 20
						print(chance)
						local hit = (hit_chance or 100) >= 100 or target:Random(100, "HitChance") < hit_chance
						print(hit)
						print(attacker_dist / guim)
						if (attacker_dist > 5*guim) and hit then
							print("I can send this back")
							for dtype in pairs(weapon_def.DamageTypes) do
								if dtype == 'piercing' or dtype == 'blunt' then
									print("I think I will send this back!")
									local projectile = AttackProjectile:new{
										weapon_def = weapon_def,
										target = attacker,
										target_pos = attacker:GetPos(),
										attacker = target,
										hit_success = hit,
										parabola_angle = 90,
										uncovered = 0,
										visibility = 100,
										avoidance = 0,
										random_seed = target:RandSeed("OnTargetAttacked"),
									}
									CreateFloatingText(target, T(855414682799, "Whoosh"), "FloatingPositive", "Task", false)
									projectile:InitEntity()
									projectile:Launch(target:GetPart("Tool"))
									target.last_trigger = GameTime()
									return 0
								end
							end
						end
						return hit_chance
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(217439424274, --[[ModItemRobotCondition Heavy_Range_Malus Description]] "This robot has special armor plating that makes it difficult to move and aim.\n-10 movement speed, -20% weapon range, -20% chance to hit."),
			DisplayName = T(349430356121, --[[ModItemRobotCondition Heavy_Range_Malus DisplayName]] "Heavy Plate Armor"),
			Polarity = "negative",
			StackLimit = 1,
			UnitTags = set( "Heavy_Malus" ),
			id = "Heavy_Range_Malus",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyWeaponRange",
					Handler = function (self, target, range, weapon_def)
						return range * 4 / 5
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						return base_chance * 4 / 5
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(244176980595, --[[ModItemRobotCondition Heavy_Boombox_T1 Description]] "Let the music play! Wait not Neon Cat on full blast repeat! <color TextEmphesis>NOOOOO</color>\nBlasts organic matter targets with incredibly loud annoying songs.\nOr tries to interfere with enemy robots by via it's onboard jammer. "),
			DisplayName = T(809084273585, --[[ModItemRobotCondition Heavy_Boombox_T1 DisplayName]] "Boombox and a Special Radio!"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Heavy_Slow_T1" ),
			id = "Heavy_Boombox_T1",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						if IsKindOf(attacked_unit,"Human") or IsKindOf(target, "UnitAnimal") then
							if not attacked_unit:HasHealthConditionById("EarBleed") then
								attacked_unit:AddHealthCondition("EarBleed")
							end
						elseif IsKindOf(attacked_unit,"Robot") then
							if not attacked_unit:HasRobotConditionById("JammedRadio") then
								attacked_unit:AddRobotCondition("JammedRadio")
							end
						end
						return base_chance
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(451565776528, --[[ModItemRobotCondition Heavy_Boombox_T2 Description]] "What's that off in the distance? Oh no, it's cycling the songs!!!\nNeon Cat, Dance Monkey, Darude Sandstorm, they are all there!\n <color TextEmphesis>NOOOOO</color>\n\nThis robot blasts organic matter targets with multiple incredibly loud annoying songs.\nOr tries to interfere with enemy robots by via it's onboard improved jammer."),
			DisplayName = T(119224461204, --[[ModItemRobotCondition Heavy_Boombox_T2 DisplayName]] "Two Boomboxes and a Better Radio!"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Heavy_Slow_T2" ),
			id = "Heavy_Boombox_T2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						if IsKindOf(attacked_unit,"Human") or IsKindOf(target, "UnitAnimal") then
								attacked_unit:AddHealthCondition("EarBleed")
						elseif IsKindOf(attacked_unit,"Robot") then
							attacked_unit:AddRobotCondition("JammedRadio")
						end
						return base_chance
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(562033697433, --[[ModItemRobotCondition ModdedLasPistol_T1 Description]] "This unit has the ability to shoot a laser pistol with a wider laser. This scatters the damage across the target, dealing less overall damage. But the damage is instead being dealt to the targets armor!"),
			DisplayName = T(767910308382, --[[ModItemRobotCondition ModdedLasPistol_T1 DisplayName]] "Scatter Laser"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Heavy_Shred_T1" ),
			id = "ModdedLasPistol_T1",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "GatherHitEffects",
					Handler = function (self, target, effects, attacked_unit, weapon_def)
						if IsKindOf(attacked_unit,"Human") or IsKindOf(attacked_unit, "UnitAnimal") then
							print("Setting Shred as the max chance hit effect!")
							return table.create_add(effects, {effect = "Shred",weight = 500,})
						elseif IsKindOf(attacked_unit,"Robot") then
							print("Setting Shred as the max chance hit effect!")
							return table.create_add(effects, {effect = "RC_Shred",weight = 500,})
						end
						return effects
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(492839382560, --[[ModItemRobotCondition ModdedLasPistol_T2 Description]] "This unit has the ability to shoot a laser pistol with a wider laser. This scatters the damage across the target, dealing less overall damage. But the damage is instead being dealt to the targets armor!"),
			DisplayName = T(305702355255, --[[ModItemRobotCondition ModdedLasPistol_T2 DisplayName]] "Scatter Laser"),
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Heavy_Shred_T2" ),
			id = "ModdedLasPistol_T2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "GatherHitEffects",
					Handler = function (self, target, effects, attacked_unit, weapon_def)
						if IsKindOf(attacked_unit,"Human") or IsKindOf(attacked_unit, "UnitAnimal") then
							print("Setting Shred_T2 as the max chance hit effect!")
							return table.create_add(effects, {
								effect = "Shred_T2",
								weight = max_int,
								})
						elseif not IsKindOf(attacked_unit,"Robot") then
							print("Setting RC_Shred_T2 as the max chance hit effect!")
							return table.create_add(effects, {
								effect = "RC_Shred_T2",
								weight = max_int,
								})
						end
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Modifiers = {
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_AuziNS",
					add = -99000,
					param_bindings = false,
					prop = "Movement",
				}),
			},
			Polarity = "negative",
			id = "slowwwdown",
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(500696629255, --[[ModItemRobotCondition JammedRadio Description]] "This robot's communication, internal and external, is being jammed by signals from a nearby robot!\n-5% attack speed per stack"),
			DisplayName = T(206297015144, --[[ModItemRobotCondition JammedRadio DisplayName]] "Signal Jammed!"),
			Expiration = true,
			ExpirationRandom = 26800,
			ExpirationTime = 13200,
			Polarity = "negative",
			StackLimit = 3,
			id = "JammedRadio",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyAttackCooldown",
					Handler = function (self, target, cooldown, weapon_def)
						return cooldown + cooldown / 20
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(691296050658, --[[ModItemRobotCondition RC_Shred Description]] "Has been hit by a scattered laser, damaging the armor and lowering this robot's deflection chance."),
			DisplayName = T(218777624748, --[[ModItemRobotCondition RC_Shred DisplayName]] "Shredded Armor"),
			Modifiers = {
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_JJAb4hF",
					accumulate = true,
					add = -5,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyRobot', {
					Id = "",
					accumulate = true,
					add = -5,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyRobot', {
					Id = "",
					accumulate = true,
					add = -5,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyRobot', {
					Id = "",
					accumulate = true,
					add = -5,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			Polarity = "negative",
			StackLimit = 5,
			id = "RC_Shred",
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(526907378573, --[[ModItemRobotCondition RC_Shred_T2 Description]] "Has been hit by a scattered laser, damaging the armor and lowering this robot's deflection chance."),
			DisplayName = T(138866109183, --[[ModItemRobotCondition RC_Shred_T2 DisplayName]] "Shredded Armor"),
			Modifiers = {
				PlaceObj('ModifyRobot', {
					Id = "",
					accumulate = true,
					add = -7,
					param_bindings = false,
					prop = "HitNegationChance_blunt",
				}),
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_CSjVeSm",
					accumulate = true,
					add = -7,
					param_bindings = false,
					prop = "HitNegationChance_piercing",
				}),
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_TJWybhk",
					accumulate = true,
					add = -7,
					param_bindings = false,
					prop = "HitNegationChance_energy",
				}),
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_4WDnY",
					accumulate = true,
					add = -7,
					param_bindings = false,
					prop = "HitNegationChance_gas",
				}),
			},
			Polarity = "negative",
			StackLimit = 10,
			id = "RC_Shred_T2",
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(317084936250, --[[ModItemRobotCondition APC_T3 Description]] "Collects and quickly welds spent bullet casings to form makeshift armor.\nApplied to ally Robots in 5% damage resist increments.\n\nAt most welds once each second.\nConsumes a nearby Robot Corpse every 5 seconds.\nThis is enough scrap to weld 3 times.\n\nOccasionally this welding will fail, causing a small explosion in the Crawler. \nCausing it to damage itself."),
			DisplayName = T(805570133128, --[[ModItemRobotCondition APC_T3 DisplayName]] "Mobile Armory and Salvage Station+"),
			OnAdd = function (self, owner, ...)
				owner.stacks = 0
				owner.giveTime = GameTime()
				owner.corpseCD = GameTime() + 5000
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "APC_3" ),
			id = "APC_T3",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						target.stacks = target.stacks + 1
						MapForEach(target,10*guim, "Robot", function(robot) 
							if robot:IsDead() and target.corpseCD + 5000 < GameTime() then
								target.corpseCD = GameTime()
								DoneObject(robot)
								target.stacks = target.stacks + 5
								print("Found a corpse!")
								return
							end
						end)
						return base_chance
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "OnObjUpdate",
					Handler = function (self, target, time, update_interval)
						if target.giveTime + 1000 < GameTime() and target.stacks > 5 then -- every 1 seconds
							target.giveTime = GameTime()
							target.stacks = target.stacks - 5
							MapForEach(target,30*guim, "Robot", function(robot,target)
								if not (robot.class == 'Crawl_APC_LVL1' or robot.class == 'Crawl_APC_LVL2' or robot.class == 'Crawl_APC_LVL3') 
								and not robot:IsDead() 
								and robot.Invader == target.Invader then
									if target:Random(100, "miscast") > 25 then
										print("Sucessfully gave some armor! ")
										robot:AddRobotCondition("SalvagedArmor")
										return
									else
									print("Failed to give some armor....")
										target:AddRobotCondition("FailedArmorUp")
										return
									end
								end
							end,target)
						end
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(881882077275, --[[ModItemRobotCondition APC_T2 Description]] "Collects and quickly welds spent bullet casings to form makeshift armor.\nApplied to ally Robots in 5% damage resist increments.\n\nAt most welds once each second.\nConsumes a nearby Robot Corpse every 5 seconds.\nThis is enough scrap to weld 3 times.\n\nQuite often this welding will fail, causing a small explosion in the Crawler. \nCausing it to damage itself."),
			DisplayName = T(477258608179, --[[ModItemRobotCondition APC_T2 DisplayName]] "Mobile Armory and Salvage Station"),
			OnAdd = function (self, owner, ...)
				owner.stacks = 0
				owner.giveTime = GameTime()
				owner.corpseCD = GameTime() + 5000
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "APC_2" ),
			id = "APC_T2",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						target.stacks = target.stacks + 1
						MapForEach(target,10*guim, "Robot", function(robot) 
							if robot:IsDead() and target.corpseCD + 5000 < GameTime() then
								target.corpseCD = GameTime()
								DoneObject(robot)
								target.stacks = target.stacks + 5
								print("Found a corpse!")
								return
							end
						end)
						return base_chance
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "OnObjUpdate",
					Handler = function (self, target, time, update_interval)
						if target.giveTime + 1000 < GameTime() and target.stacks > 5 then -- every 1 seconds
							target.giveTime = GameTime()
							target.stacks = target.stacks - 5
							MapForEach(target,30*guim, "Robot", function(robot,target)
								if not (robot.class == 'Crawl_APC_LVL1' or robot.class == 'Crawl_APC_LVL2' or robot.class == 'Crawl_APC_LVL3') 
								and not robot:IsDead() 
								and robot.Invader == target.Invader then
									if target:Random(100, "miscast") > 60 then
										print("Sucessfully gave some armor! ")
										robot:AddRobotCondition("SalvagedArmor")
										return
									else
									print("Failed to give some armor....")
										target:AddRobotCondition("FailedArmorUp")
										return
									end
								end
							end,target)
						end
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(812514554536, --[[ModItemRobotCondition APC_T1 Description]] "Collects and quickly welds spent bullet casings to form makeshift armor.\nApplied to ally Robots in 5% damage resist increments.\n\nAt most welds once each second.\nOccasionally this welding will fail, causing a small explosion in the Crawler. \nCausing it to damage itself."),
			DisplayName = T(264125341359, --[[ModItemRobotCondition APC_T1 DisplayName]] "Mobile Armory"),
			OnAdd = function (self, owner, ...)
				owner.stacks = 0
				owner.giveTime = GameTime()
				owner.corpseCD = GameTime() + 5000
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "APC_1" ),
			id = "APC_T1",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyHitChance",
					Handler = function (self, target, base_chance, attacked_unit, weapon_def, target_dist)
						target.stacks = target.stacks + 1
						MapForEach(target,10*guim, "Robot", function(robot) 
							if robot:IsDead() and target.corpseCD + 5000 < GameTime() then
								target.corpseCD = GameTime()
								DoneObject(robot)
								target.stacks = target.stacks + 5
								print("Found a corpse!")
								return
							end
						end)
						return base_chance
					end,
					param_bindings = false,
				}),
				PlaceObj('UnitReaction', {
					Event = "OnObjUpdate",
					Handler = function (self, target, time, update_interval)
						if target.giveTime + 1000 < GameTime() and target.stacks > 5 then -- every 1 seconds
							target.giveTime = GameTime()
							target.stacks = target.stacks - 5
							MapForEach(target,30*guim, "Robot", function(robot,target)
								if not (robot.class == 'Crawl_APC_LVL1' or robot.class == 'Crawl_APC_LVL2' or robot.class == 'Crawl_APC_LVL3') 
								and not robot:IsDead() 
								and robot.Invader == target.Invader then
									if target:Random(100, "miscast") > 25 then
										print("Sucessfully gave some armor! ")
										robot:AddRobotCondition("SalvagedArmor")
										return
									else
									print("Failed to give some armor....")
										target:AddRobotCondition("FailedArmorUp")
										return
									end
								end
							end,target)
						end
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(377758955542, --[[ModItemRobotCondition SalvagedArmor Description]] "This robot has had some battle forging done on it!\nScraps and shells are giving 5% general damage reduction"),
			DisplayName = T(630765417083, --[[ModItemRobotCondition SalvagedArmor DisplayName]] "Salvaged Armor"),
			Polarity = "positive",
			StackLimit = 5,
			id = "SalvagedArmor",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageReceived",
					Handler = function (self, target, damage, weapon_def, attacker)
						return damage * 19 / 20
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(909824069625, --[[ModItemRobotCondition FailedArmorUp Description]] "This robot tried to take some shells and metal shavings and turn them into defenses.\nUnfortunately for it, there was some un-exploded ordinance that caused this to fail!\n\nTakes 5% of Max HP immediately and takes 5% more damage."),
			DisplayName = T(782954475384, --[[ModItemRobotCondition FailedArmorUp DisplayName]] "Failed Upgrade"),
			OnAdd = function (self, owner, ...)
				owner:ChangeHealth(-(owner.MaxHealth / 20))
			end,
			Polarity = "negative",
			StackLimit = 10,
			id = "FailedArmorUp",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageReceived",
					Handler = function (self, target, damage, weapon_def, attacker)
						return damage * 21 / 20
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(821589537340, --[[ModItemRobotCondition RC_Demo_T1 Description]] "This unit is equipped with a pressurized acid filled fuel tank.\n<em>30 units of fuel</em>\nEach attack consumes 1 unit of fuel to deal 50% more integrity damage to structures.\n\nMakes the unit slightly slower."),
			DisplayName = T(302020336314, --[[ModItemRobotCondition RC_Demo_T1 DisplayName]] "Acid Fuel Canister"),
			Modifiers = {
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_WEXkvWg",
					add = -25000,
					param_bindings = false,
					prop = "Movement",
				}),
			},
			OnAdd = function (self, owner, ...)
				owner.fuel = 30
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Demo_T1" ),
			id = "RC_Demo_T1",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageInflicted",
					Handler = function (self, target, damage, weapon_def, attack_target)
						local mod = 1
						if target.fuel > 1 and IsKindOf(attack_target,'Building') then
							mod = mod + (1/2)
						end
						return damage * mod
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(501846450111, --[[ModItemRobotCondition RC_Demo_T3 Description]] "This unit is equipped with a pressurized acid filled fuel tank.\n<em>30 units of fuel</em>\nEach attack consumes 1 unit of fuel to deal 75% more integrity damage to structures.\n\nIf fuel runs out will consume it's own integrity (5% of max HP per hit).\nMakes the unit slightly slower."),
			DisplayName = T(483418714047, --[[ModItemRobotCondition RC_Demo_T3 DisplayName]] "Acid Fuel Canister+"),
			Modifiers = {
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_PhmkevT",
					add = -25000,
					param_bindings = false,
					prop = "Movement",
				}),
			},
			OnAdd = function (self, owner, ...)
				owner.fuel = 30
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Demo_T3" ),
			id = "RC_Demo_T3",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageInflicted",
					Handler = function (self, target, damage, weapon_def, attack_target)
						local mod = 1
						if IsKindOf(attack_target,'Building') then
							mod = mod + (3/4)
							if target.fuel > 1 then
								target.fuel = target.fuel - 1
							else
								target:ChangeHealth(-target.MaxHealth / 20)
							end
						end
						return damage * mod
					end,
					param_bindings = false,
				}),
			},
		}),
		PlaceObj('ModItemRobotCondition', {
			Description = T(485368619903, --[[ModItemRobotCondition RC_Demo_T5 Description]] "This unit is equipped with a special compounding station.\n<em>30 units of fuel</em>\nEach attack consumes 1 unit of fuel to either:\n- Deals 75% more integrity damage to structures.\n- Glues a biological unit in place <em>-200 Movement Speed</em>\n\nIf fuel runs out will consume it's own integrity (5% of max HP per hit).\nMakes the unit slightly slower."),
			DisplayName = T(220379127714, --[[ModItemRobotCondition RC_Demo_T5 DisplayName]] "Portable Alchemy Lab"),
			Modifiers = {
				PlaceObj('ModifyRobot', {
					Id = "autoid_rtw6tLg_faoK4kL",
					add = -50000,
					param_bindings = false,
					prop = "Movement",
				}),
			},
			OnAdd = function (self, owner, ...)
				owner.fuel = 30
			end,
			Polarity = "positive",
			StackLimit = 1,
			UnitTags = set( "Demo_T5" ),
			id = "RC_Demo_T5",
			unit_reactions = {
				PlaceObj('UnitReaction', {
					Event = "ModifyDamageInflicted",
					Handler = function (self, target, damage, weapon_def, attack_target)
						local mod = 1
						if IsKindOf(attack_target,'Building') then
							mod = mod + (3/4)
							if target.fuel > 1 then
								target.fuel = target.fuel - 1
							else
								target:ChangeHealth(-target.MaxHealth / 20)
							end
						elseif IsKindOf(attack_target,'UnitAnimal') or IsKindOf(attack_target,'Human') then
							attack_target:AddHealthCondition("Glued")
						end
						return damage * mod
					end,
					param_bindings = false,
				}),
			},
		}),
		}),
	}),
PlaceObj('ModItemFolder', {
	'name', "Animals",
	'NameColor', RGBA(97, 131, 90, 255),
}, {
	PlaceObj('ModItemFolder', {
		'name', "Robots",
		'NameColor', RGBA(28, 120, 157, 255),
	}, {
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "LightHostileRobot_LVL1",
			'comment', "Assault evos",
			'object_class', "CombatRobot",
			'UnitTags', set( "Robot", "assault_T1" ),
			'pfclass', 17,
			'Health', 50000,
			'MaxHealth', 50000,
			'HumanThreat', true,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(88, 60, 40, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(525626260477, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 DisplayName]] "D-A1-4554ul7"),
			'DisplayNameShort', T(754094962645, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 DisplayNameShort]] "DA1"),
			'DisplayNamePl', T(993542161096, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 DisplayNamePl]] "Drone A series"),
			'Description', T(334414305147, --[[ModItemRobotCompositeDef LightHostileRobot_LVL1 Description]] "Mass produced, lightly equipped, easy to distract. Threatening only in great number. No defenses."),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 50,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
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
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "LightHostileRobot_LVL2",
			'object_class', "CombatRobot",
			'UnitTags', set( "Robot", "assault_T1" ),
			'pfclass', 17,
			'HitNegationChance_blunt', 5,
			'HitNegationChance_piercing', 5,
			'HitNegationChance_energy', 5,
			'HitNegationChance_gas', 20,
			'HumanThreat', true,
			'Combat', 2000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(92, 44, 13, 255),
				'EditableRoughness1', -50,
				'EditableColor2', RGBA(160, 14, 14, 255),
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(877781002307, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 DisplayName]] "D-A2-p3wp3w"),
			'DisplayNameShort', T(142244256287, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 DisplayNameShort]] "DA2"),
			'DisplayNamePl', T(298340055036, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 DisplayNamePl]] "Drone A series"),
			'Description', T(248109247620, --[[ModItemRobotCompositeDef LightHostileRobot_LVL2 Description]] "The consortium is dedicating more resources to this series; while still trying cheaply mass produce them. This is mainly done by allowing the robot to operate at higher capacity than what is safe for the robots frame. Has <color TechSubtitleBlue>0% Piercing Deflection</color>, <color TextButton>5% Blunt Deflection</color>, <color TextNegative>5% Energy Deflection</color>, <color TextPositive>20% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_2",
			'Skills', {
				Combat = 2,
			},
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 100,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_CarbonCrossbow",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 30,
					'Equipment', {
						"Melee_LaserPike",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 10,
					'Equipment', {
						"Ranged_CarbonCrossbow",
						"Melee_LaserPike",
					},
				}),
			},
			'FrenzyChance', 50,
			'FrenzyDuration', 40000,
			'FrenzyCooldown', 80000,
			'FrenzyEffects', {
				"Assault_Frenzy",
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "LightHostileRobot_LVL3",
			'object_class', "CombatRobot",
			'UnitTags', set( "Robot", "assault_T1" ),
			'pfclass', 17,
			'Health', 400000,
			'MaxHealth', 400000,
			'DamagedStateAt', 40,
			'BrokenStateAt', 15,
			'HideIntegrityBarWhenDestroyed', false,
			'HitNegationChance_blunt', 10,
			'HitNegationChance_energy', 10,
			'HitNegationChance_gas', 30,
			'HumanThreat', true,
			'Combat', 3000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(123, 54, 54, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(547197642864, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 DisplayName]] "D-A3-m364p3w"),
			'DisplayNameShort', T(717669841682, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 DisplayNameShort]] "DA3"),
			'DisplayNamePl', T(326566177705, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 DisplayNamePl]] "Drone A series"),
			'Description', T(422993075353, --[[ModItemRobotCompositeDef LightHostileRobot_LVL3 Description]] "Now comes armed with a pulse rifle. While more expensive than carbon crossbows to procur, this increases the combat power of the robot without adding to the manufactoring costs. Has <color TechSubtitleBlue>0% Piercing Deflection</color>, <color TextButton>10% Blunt Deflection</color>, <color TextNegative>10% Energy Deflection</color>, <color TextPositive>30% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'Skills', {
				Combat = 4,
			},
			'darkness_penalty', 0,
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 200,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_PulseRifle",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 30,
					'Equipment', {
						"Ranged_LaserBlaster_Improved",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 10,
					'Equipment', {
						"Ranged_PulseRifle",
						"Ranged_LaserBlaster_Improved",
					},
				}),
			},
			'FrenzyChance', 50,
			'FrenzyDuration', 40000,
			'FrenzyCooldown', 80000,
			'FrenzyEffects', {
				"Assault_Frenzy",
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "LightHostileRobot_LVL4",
			'object_class', "CombatRobot",
			'UnitTags', set( "Robot", "assault_T2" ),
			'pfclass', 17,
			'Health', 400000,
			'MaxHealth', 400000,
			'DamagedStateAt', 40,
			'BrokenStateAt', 15,
			'HideIntegrityBarWhenDestroyed', false,
			'HitNegationChance_blunt', 20,
			'HitNegationChance_piercing', 5,
			'HitNegationChance_energy', 20,
			'HitNegationChance_gas', 30,
			'HumanThreat', true,
			'Movement', 90000,
			'Combat', 3000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(153, 27, 27, 255),
				'EditableRoughness1', -50,
				'EditableColor2', RGBA(12, 7, 7, 255),
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(761443574917, --[[ModItemRobotCompositeDef LightHostileRobot_LVL4 DisplayName]] "D-A4-6un5l1n63r"),
			'DisplayNameShort', T(106673576958, --[[ModItemRobotCompositeDef LightHostileRobot_LVL4 DisplayNameShort]] "DA4"),
			'DisplayNamePl', T(201543158479, --[[ModItemRobotCompositeDef LightHostileRobot_LVL4 DisplayNamePl]] "Drone A series"),
			'Description', T(512179079752, --[[ModItemRobotCompositeDef LightHostileRobot_LVL4 Description]] "Boasting an enhanced overclocking component and mildly more durable frame; this series is widely considered the best for it's price point. A great front line unit for any role. Has <color TechSubtitleBlue>5% Piercing Deflection</color>, <color TextButton>20% Blunt Deflection</color>, <color TextNegative>20% Energy Deflection</color>, <color TextPositive>30% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'Skills', {},
			'darkness_penalty', 0,
			'DistressEnrageChance', 0,
			'DistressEnrageCount', 1,
			'DistressCallRange', 1000,
			'DistressCallRangeFirst', 1000,
			'EventProgressValue', 200,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_PulseRifle_Improved",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 10,
					'Equipment', {
						"Ranged_PulseRifle_Improved",
						"Melee_LaserPike",
					},
				}),
			},
			'FrenzyChance', 50,
			'FrenzyDuration', 40000,
			'FrenzyCooldown', 80000,
			'FrenzyEffects', {
				"Assault_Frenzy",
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "LightHostileRobot_LVL5",
			'object_class', "CombatRobot",
			'UnitTags', set( "Robot", "assault_T2" ),
			'pfclass', 17,
			'Health', 800000,
			'MaxHealth', 800000,
			'DamagedStateAt', 40,
			'BrokenStateAt', 15,
			'HideIntegrityBarWhenDestroyed', false,
			'HitNegationChance_blunt', 45,
			'HitNegationChance_piercing', 20,
			'HitNegationChance_energy', 45,
			'HitNegationChance_gas', 90,
			'HumanThreat', true,
			'Movement', 80000,
			'Combat', 5000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(153, 27, 27, 255),
				'EditableRoughness1', -50,
				'EditableColor2', RGBA(12, 7, 7, 255),
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(188342451628, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 DisplayName]] "D-A5-6unz3rk3r"),
			'DisplayNameShort', T(938995850579, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 DisplayNameShort]] "DA5"),
			'DisplayNamePl', T(225365074235, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 DisplayNamePl]] "Drone A series"),
			'Description', T(933791149638, --[[ModItemRobotCompositeDef LightHostileRobot_LVL5 Description]] "The Consortium's top of the line assault series. Only the richest oligarchs, nation states, and the Consortium itself can field a great amount of these. Has enhanced Gas and Acid resistance to enable this unit to deploy into even the most hazardous of locations. Has <color TechSubtitleBlue>20% Piercing Deflection</color>, <color TextButton>45% Blunt Deflection</color>, <color TextNegative>45% Energy Deflection</color>, <color TextPositive>90% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'Skills', {},
			'darkness_penalty', 0,
			'DistressEnrageChance', 0,
			'DistressEnrageCount', 1,
			'DistressCallRange', 1000,
			'DistressCallRangeFirst', 1000,
			'EventProgressValue', 200,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_PulseRifle_Improved",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 10,
					'Equipment', {
						"Ranged_PulseRifle_Improved",
						"Melee_LaserPike",
					},
				}),
			},
			'FrenzyChance', 50,
			'FrenzyDuration', 40000,
			'FrenzyCooldown', 80000,
			'FrenzyEffects', {
				"Assault_Frenzy",
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Scout_LVL1",
			'comment', "Scout T1",
			'object_class', "CombatRobot",
			'pfclass', 17,
			'Health', 50000,
			'MaxHealth', 50000,
			'HumanThreat', true,
			'Combat', 1000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(13, 130, 154, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(373142973674, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 DisplayName]] "D-B1-5c0u7"),
			'DisplayNameShort', T(703140542529, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 DisplayNameShort]] "DB1"),
			'DisplayNamePl', T(513596480085, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 DisplayNamePl]] "Drone B Series"),
			'Description', T(173875654953, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL1 Description]] "This robot has increased detection range. It's role is meant to spot targets and hopefully survive initial engagement to alert all nearby Consortium robots in the vicinity.Has no defenses."),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'SightRange', 40000,
			'HearingRange', 25000,
			'darkness_penalty', 0,
			'EnrageChanceCooldown', 3000,
			'DistressEnrageChance', 100,
			'DistressEnrageCount', 30,
			'DistressCallRange', 20000,
			'DistressCallRangeFirst', 30000,
			'WeaponAffectsSightRange', false,
			'EventProgressValue', 90,
			'SpawnDefWeight', 15,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_CarbonCrossbow",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Scout_LVL2",
			'comment', "Scout T2",
			'object_class', "CombatRobot",
			'UnitTags', set( "Robot", "Scout_T1" ),
			'pfclass', 17,
			'Health', 100000,
			'MaxHealth', 100000,
			'HumanThreat', true,
			'Combat', 2000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(8, 55, 74, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(565196523856, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 DisplayName]] "D-B2-0ff1c3r"),
			'DisplayNameShort', T(705000373000, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 DisplayNameShort]] "DB2"),
			'DisplayNamePl', T(321247063067, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 DisplayNamePl]] "Drone B Series"),
			'Description', T(511989141744, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL2 Description]] "In leau of enhanced durability or firepower, this control unit has gained the ability to share targeting parameters before combat has started. This combined with the base models enhanced spotting means it is incredibly difficult to sneak up on a squad of Consortium robots with an assigned O-A2-0ff1c3r.Has no defenses."),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'SightRange', 40000,
			'HearingRange', 25000,
			'darkness_penalty', 0,
			'EnrageChanceCooldown', 3000,
			'DistressEnrageChance', 100,
			'DistressEnrageCount', 30,
			'DistressCallRange', 20000,
			'DistressCallRangeFirst', 30000,
			'WeaponAffectsSightRange', false,
			'EventProgressValue', 330,
			'SpawnDefWeight', 15,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_CarbonCrossbow",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Scout_LVL3",
			'comment', "Scout T2",
			'object_class', "CombatRobot",
			'UnitTags', set( "Robot", "Scout_T1" ),
			'pfclass', 17,
			'HumanThreat', true,
			'Combat', 3000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(125, 189, 214, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(485677309017, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 DisplayName]] "D-B3-5n1p3r"),
			'DisplayNameShort', T(525907746310, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 DisplayNameShort]] "DB3"),
			'DisplayNamePl', T(278877312501, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 DisplayNamePl]] "Drone B Series"),
			'Description', T(800778437273, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL3 Description]] "The Consortium is after all a profit driven company. They didn't even change this model at all, but they now garuntee that each comes equipped with a railgun sniper. The Consortium is lucky that this does increase it's combat utility immensely, otherwise customers would start to throw accusations of shrinkflation!Still has no defenses."),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'SightRange', 40000,
			'HearingRange', 25000,
			'darkness_penalty', 0,
			'EnrageChanceCooldown', 3000,
			'DistressEnrageChance', 100,
			'DistressEnrageCount', 30,
			'DistressCallRange', 20000,
			'DistressCallRangeFirst', 30000,
			'WeaponAffectsSightRange', false,
			'EventProgressValue', 700,
			'SpawnDefWeight', 15,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_RailgunSniper",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Scout_LVL4",
			'comment', "Scout T2",
			'object_class', "CombatRobot",
			'UnitTags', set( "Cyber_Eye", "Robot", "Scout_T1" ),
			'pfclass', 17,
			'Health', 400000,
			'MaxHealth', 400000,
			'HitNegationChance_blunt', 10,
			'HitNegationChance_piercing', 10,
			'HitNegationChance_energy', 10,
			'HitNegationChance_gas', 10,
			'HumanThreat', true,
			'Movement', 80000,
			'Combat', 4000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(13, 201, 238, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(508875525953, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL4 DisplayName]] "D-B4-d34d3y3"),
			'DisplayNameShort', T(898920198613, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL4 DisplayNameShort]] "DB4"),
			'DisplayNamePl', T(365084805460, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL4 DisplayNamePl]] "Drone B Series"),
			'Description', T(491894615204, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL4 Description]] "Durability has finally been dedicated to the Officer series of Consortium bots. This combined with a Cyber Crystal Eye means these robots can spot and target a unit from farther ranges away!Has <color TechSubtitleBlue>10% Piercing Deflection</color>, <color TextButton>10% Blunt Deflection</color>, <color TextNegative>10% Energy Deflection</color>, <color TextPositive>10% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'SightRange', 40000,
			'HearingRange', 25000,
			'darkness_penalty', 0,
			'EnrageChanceCooldown', 3000,
			'DistressEnrageChance', 100,
			'DistressEnrageCount', 30,
			'DistressCallRange', 20000,
			'DistressCallRangeFirst', 30000,
			'WeaponAffectsSightRange', false,
			'EventProgressValue', 1200,
			'SpawnDefWeight', 15,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_RailgunSniper",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Scout_LVL5",
			'comment', "Scout T2",
			'object_class', "CombatRobot",
			'UnitTags', set( "Cyber_Eye", "Robot", "Scout_T2" ),
			'pfclass', 17,
			'Health', 500000,
			'MaxHealth', 500000,
			'HitNegationChance_blunt', 15,
			'HitNegationChance_piercing', 15,
			'HitNegationChance_energy', 15,
			'HitNegationChance_gas', 15,
			'HumanThreat', true,
			'Movement', 80000,
			'Combat', 5000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(2, 174, 241, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(311408477268, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL5 DisplayName]] "D-B5-c0mm4nd3r"),
			'DisplayNameShort', T(650941323868, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL5 DisplayNameShort]] "DB5"),
			'DisplayNamePl', T(591182767134, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL5 DisplayNamePl]] "Drone B Series"),
			'Description', T(726278753545, --[[ModItemRobotCompositeDef HostileRobot_Scout_LVL5 Description]] "When given the order to fire by the most expensive Officer model, the rank and file robots also receive advanced targeting information. This leads to the effective range against an Officers target being larger than what robots could normally achieve!Has <color TechSubtitleBlue>15% Piercing Deflection</color>, <color TextButton>15% Blunt Deflection</color>, <color TextNegative>15% Energy Deflection</color>, <color TextPositive>15% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'SightRange', 40000,
			'HearingRange', 25000,
			'darkness_penalty', 0,
			'EnrageChanceCooldown', 3000,
			'DistressEnrageChance', 100,
			'DistressEnrageCount', 30,
			'DistressCallRange', 20000,
			'DistressCallRangeFirst', 30000,
			'WeaponAffectsSightRange', false,
			'EventProgressValue', 2500,
			'SpawnDefWeight', 15,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_RailgunSniper",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 5,
					'Equipment', {
						"Ranged_RailgunSniper_Improved",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Monk_LVL1",
			'comment', "Monk evos",
			'object_class', "CombatRobot",
			'UnitTags', set( "Monk_T1", "Robot" ),
			'pfclass', 17,
			'Health', 150000,
			'MaxHealth', 150000,
			'HumanThreat', true,
			'Combat', 1000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(88, 60, 40, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(556218940835, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 DisplayName]] "D-C1-m0nk"),
			'DisplayNameShort', T(421790080676, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 DisplayNameShort]] "DC1"),
			'DisplayNamePl', T(610571954395, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 DisplayNamePl]] "Drone C Series"),
			'Description', T(374236776710, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL1 Description]] "The C series is a very new and interesting design. The RAM is 10x more expensive than their frame. This has led to the frame being little more than a brittle casing; and no gaurunteed weapon. I wonder what the Consortium has planned for this model?Has no defenses"),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'darkness_penalty', 0,
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 50,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Monk_LVL2",
			'object_class', "CombatRobot",
			'UnitTags', set( "Monk_T1", "Robot" ),
			'pfclass', 17,
			'Health', 300000,
			'MaxHealth', 300000,
			'HitNegationChance_piercing', 20,
			'HumanThreat', true,
			'Movement', 130000,
			'Combat', 2000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(88, 60, 40, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(605403873200, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 DisplayName]] "D-C2-4ppr3n71c3"),
			'DisplayNameShort', T(193559566610, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 DisplayNameShort]] "DC2"),
			'DisplayNamePl', T(387015977934, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 DisplayNamePl]] "Drone C Series"),
			'Description', T(871114379245, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL2 Description]] "The Consortium has now increased the C series motor function. I suspect this is to allow this unit to get into melee range. Since this series is still reliant on it's own metal fists. Not surprisingly, the C series is proven to be a tough sell to most governments and wealthy elites. Has <color TechSubtitleBlue>20% Piercing Deflection</color>, <color TextButton>0% Blunt Deflection</color>, <color TextNegative>0% Energy Deflection</color>, <color TextPositive>0% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'darkness_penalty', 0,
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 200,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Monk_LVL3",
			'object_class', "CombatRobot",
			'UnitTags', set( "Monk_T2", "Robot" ),
			'pfclass', 17,
			'Health', 600000,
			'MaxHealth', 600000,
			'HitNegationChance_piercing', 33,
			'HumanThreat', true,
			'Movement', 130000,
			'Combat', 3000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(88, 60, 40, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(439683428510, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 DisplayName]] "D-C3-j3d1"),
			'DisplayNameShort', T(329125724185, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 DisplayNameShort]] "DC3"),
			'DisplayNamePl', T(126278076837, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 DisplayNamePl]] "Drone C Series"),
			'Description', T(321981301116, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL3 Description]] "All of the research in object tracking and how to respond is paying off. This latest C series model boasts a better harm reduction reflex from even closer to the model. This combined with a lightweight durable alloy means any damage it receives is not an immediate death knell. <color TechSubtitleBlue>33% Piercing Deflection</color>, <color TextButton>0% Blunt Deflection</color>, <color TextNegative>0% Energy Deflection</color>, <color TextPositive>0% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'darkness_penalty', 0,
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 500,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Monk_LVL4",
			'object_class', "CombatRobot",
			'UnitTags', set( "Monk_T3", "Robot" ),
			'pfclass', 17,
			'Health', 1200000,
			'MaxHealth', 1200000,
			'HitNegationChance_blunt', 10,
			'HitNegationChance_piercing', 50,
			'HitNegationChance_energy', 10,
			'HitNegationChance_gas', 10,
			'HumanThreat', true,
			'Movement', 150000,
			'Combat', 4000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(88, 60, 40, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(514606945515, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL4 DisplayName]] "D-C4-m4573r_j3d1"),
			'DisplayNameShort', T(758317584190, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL4 DisplayNameShort]] "DC4"),
			'DisplayNamePl', T(279744728787, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL4 DisplayNamePl]] "Drone C Series"),
			'Description', T(238832281740, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL4 Description]] "When enough funding, massive scientific leaps can be achieved. The marketing demo for this model is nothing to scoff at. Two models where placed in seperate rooms. One had an RPG fired at point blank range. The other had it fired from ~13 meters away. The model with even that small time to react fared MUCH better than it's counterpart. <color TechSubtitleBlue>50% Piercing Deflection</color>, <color TextButton>10% Blunt Deflection</color>, <color TextNegative>10% Energy Deflection</color>, <color TextPositive>10% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'darkness_penalty', 0,
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 1100,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HostileRobot_Monk_LVL5",
			'object_class', "CombatRobot",
			'UnitTags', set( "Monk_Special", "Monk_T3", "Robot" ),
			'pfclass', 17,
			'Health', 1500000,
			'MaxHealth', 1500000,
			'HitNegationChance_blunt', 30,
			'HitNegationChance_piercing', 55,
			'HitNegationChance_energy', 55,
			'HitNegationChance_gas', 25,
			'HumanThreat', true,
			'Movement', 150000,
			'Combat', 5000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(88, 60, 40, 255),
				'EditableRoughness1', -50,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(795895466524, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 DisplayName]] "D-C5-j3d1_c0n5ul4r"),
			'DisplayNameShort', T(407598470713, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 DisplayNameShort]] "DC5"),
			'DisplayNamePl', T(773286905714, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 DisplayNamePl]] "Drone C Series"),
			'Description', T(454552688170, --[[ModItemRobotCompositeDef HostileRobot_Monk_LVL5 Description]] "The amount of money the Consortium must have invested to achieve this unit cannot be fathomed. This model now finally comes with a weapon, notably the laser sword. The viral videos show in slow motion how this robot can catch any projectile out of the air, and send it back to the sender. People have been showing off bullets, laser blasts (Thanks to the laser sword), and even some missiles! <color TechSubtitleBlue>55% Piercing Deflection</color>, <color TextButton>30% Blunt Deflection</color>, <color TextNegative>55% Energy Deflection</color>, <color TextPositive>25% Gas Deflection</color>"),
			'SalvageLootTable', "LightHostileRobots_1",
			'Skills', {},
			'darkness_penalty', 0,
			'DistressEnrageChance', 5,
			'DistressCallRange', 5000,
			'DistressCallRangeFirst', 5000,
			'EventProgressValue', 3000,
			'SpawnTags', set( "Minion" ),
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'AllowedEquipmentSlots', {
				"Weapon",
			},
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Melee_LaserSword",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HeavyHostileRobot_LVL1",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Heavy_Malus", "Robot" ),
			'Health', 250000,
			'MaxHealth', 250000,
			'damage_reduction', {
				blunt = 20,
				energy = 20,
				gas = 20,
				piercing = 10,
			},
			'HumanThreat', true,
			'Movement', 90000,
			'Combat', 1000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 50, 50, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(938472854673, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 DisplayName]] "D-D1-ch0nk3r"),
			'DisplayNameShort', T(985076455466, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 DisplayNameShort]] "DD1"),
			'DisplayNamePl', T(184728554259, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 DisplayNamePl]] "Drone Series D"),
			'Description', T(774533481819, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL1 Description]] "The heaviest model; trading survivability for damage. It moves slower, has shorter range, and attacks slower. But a completely redesigned armor plating enables absorption and reduction to all incoming damage. Has <color TechSubtitleBlue>10% Piercing Damage</color></color TextEmphasis> Reduction</color>, <color TextButton>20% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>20% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>20% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'EventProgressValue', 75,
			'SpawnDefWeight', 90,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_ShortBow",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 30,
					'Equipment', {
						"Ranged_ShortBow",
						"Melee_Spear",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 10,
					'Equipment', {
						"Ranged_Crossbow",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HeavyHostileRobot_LVL2",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Heavy_Malus", "Heavy_Slow_T1", "Robot" ),
			'Health', 500000,
			'MaxHealth', 500000,
			'damage_reduction', {
				blunt = 40,
				energy = 30,
				gas = 25,
				piercing = 15,
			},
			'HumanThreat', true,
			'Movement', 90000,
			'Combat', 1000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 50, 50, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(169937774120, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 DisplayName]] "D-D2-7ru4n7"),
			'DisplayNameShort', T(337582489273, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 DisplayNameShort]] "DD2"),
			'DisplayNamePl', T(606989825151, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 DisplayNamePl]] "Drone Series D"),
			'Description', T(621138978094, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL2 Description]] "The latest heavy model has included general survivability improvements, and a special addition. It now comes with a built in signal jammer and loudspeaker. When an enemy combatant is targeted, they both will try and distract or interfere with computations. Thankfully it's software is relatively primitive, and only effective at close range. Has <color TechSubtitleBlue>15% Piercing Damage</color><color TextEmphasis> Reduction</color>, <color TextButton>40% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>30% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>25% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'EventProgressValue', 200,
			'SpawnDefWeight', 90,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Ranged_Crossbow",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 30,
					'Equipment', {
						"Ranged_Crossbow",
						"Melee_Spear",
					},
				}),
				PlaceObj('WeightedEquipment', {
					'Weight', 10,
					'Equipment', {
						"Ranged_ShortBow",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HeavyHostileRobot_LVL3",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Heavy_Malus", "Heavy_Shred_T1", "Heavy_Slow_T1", "Robot" ),
			'Health', 1000000,
			'MaxHealth', 1000000,
			'damage_reduction', {
				blunt = 60,
				energy = 40,
				gas = 30,
				piercing = 15,
			},
			'HumanThreat', true,
			'Movement', 90000,
			'Combat', 2000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 50, 50, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(494803257876, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 DisplayName]] "D-D3-5hr3dd3r"),
			'DisplayNameShort', T(151002090816, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 DisplayNameShort]] "DD3"),
			'DisplayNamePl', T(842264659283, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 DisplayNamePl]] "Drone Series D"),
			'Description', T(731721510580, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL3 Description]] "The Consortium now guarantees a special Laser Pistol. When wielded, the Heavy can override the normal projectiles, and instead scatter the beam. This leads to less direct damage to enemy combatants, but lowers the targets chances to deflect an attack. Has <color TechSubtitleBlue>15% Piercing Damage</color><color TextEmphasis> Reduction</color>, <color TextButton>60% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>400% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>30% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'EventProgressValue', 900,
			'SpawnDefWeight', 90,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
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
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HeavyHostileRobot_LVL4",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Heavy_Malus", "Heavy_Shred_T1", "Heavy_Slow_T2", "Robot" ),
			'Health', 1500000,
			'MaxHealth', 1500000,
			'damage_reduction', {
				blunt = 75,
				energy = 40,
				gas = 35,
				piercing = 15,
			},
			'HumanThreat', true,
			'Movement', 90000,
			'Combat', 2000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 50, 50, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(297156847867, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 DisplayName]] "D-D4-m4l1n63r"),
			'DisplayNameShort', T(270899736782, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 DisplayNameShort]] "DD4"),
			'DisplayNamePl', T(443848099264, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 DisplayNamePl]] "Drone Series D"),
			'Description', T(354144482543, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL4 Description]] "The signal jammer and speakers have received a major upgrade. Rather than relying on a single jamming frequency or single song; it will cycle through variations until maximum suppression is achieved. Has <color TechSubtitleBlue>15% Piercing Damage</color><color TextEmphasis> Reduction</color>, <color TextButton>75% Blunt Damage Reduction</color>, <color TextNegative>55% Energy Damage Reduction</color>, <color TextPositive>35% Gas Damage Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'EventProgressValue', 1800,
			'SpawnDefWeight', 90,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
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
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Group', "HostileRobots",
			'Id', "HeavyHostileRobot_LVL5",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Heavy_Malus", "Heavy_Shred_T2", "Heavy_Slow_T2", "Robot" ),
			'Health', 2000000,
			'MaxHealth', 2000000,
			'damage_reduction', {
				blunt = 75,
				energy = 30,
				gas = 35,
				piercing = 15,
			},
			'HumanThreat', true,
			'Movement', 90000,
			'Combat', 3000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(50, 50, 50, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(817625053162, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 DisplayName]] "D-D5-l37h4r6y"),
			'DisplayNameShort', T(964653480644, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 DisplayNameShort]] "DD5"),
			'DisplayNamePl', T(899722389212, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 DisplayNamePl]] "Drone Series D"),
			'Description', T(746619506377, --[[ModItemRobotCompositeDef HeavyHostileRobot_LVL5 Description]] "Not satisfied with small arms fire, this unit now comes with a 15 Kiloton rating. Any explosion with a smaller payload will not destroy this model. The Consortium's sales pitch for this model is \"Leaves you and only you blown away!\". Combined with a refined laser scatter plugin destroying more enemy armor makes this unit extremely desirable for front-line engagements. Has <color TechSubtitleBlue>15% Piercing Damage </color><color TextEmphasis>Reduction</color>, <color TextButton>40% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>30% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>25% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'EventProgressValue', 3300,
			'SpawnDefWeight', 90,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
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
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Crawl_Cannon_T1",
			'object_class', "CrawlerMachineGun",
			'Health', 250000,
			'MaxHealth', 250000,
			'HumanThreat', true,
			'Movement', 50000,
			'DisplayName', T(934265558535, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 DisplayName]] "C-A1-h0w17z3r"),
			'DisplayNameShort', T(247098477910, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 DisplayNameShort]] "CA1"),
			'DisplayNamePl', T(334837440132, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 DisplayNamePl]] "Crawler Series A"),
			'Description', T(894183744919, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 Description]] "Illegal to field except in times of extreme crisis; the Artillery variants of Consortium Crawler has officially been disconinuted. The fact we are seeing them deployed leads us to sincerely doubt these claims. Has incredibly long range, and prioritizes static defenses. Has no defenses, as it's core role is long range support. Deals <color TextButton>Blunt</color> Damage. <em>70 meter range. Cannot attack targets within 40 meters</em>"),
			'SalvageLootTable', "HostileCrawlers",
			'SwitchTargetChance', 0,
			'CombatSearchFlags', 536871176,
			'CombatRestrictPFBonus', 1000,
			'EventProgressValue', 600,
			'SpawnDefWeight', 10,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'composite_part_target', "Crawl_Cannon_T1",
			'composite_part_groups', {
				"CrawlerRobot_Medium",
			},
			'max_skinned_decals_low', -1,
			'display_name', T(140280728759, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 display_name]] "MG Siege machine"),
			'display_name_pl', T(814443818409, --[[ModItemRobotCompositeDef Crawl_Cannon_T1 display_name_pl]] "MG Siege machines"),
			'siege_time', 10000,
			'FieldResearchTech', "FieldCrawler",
			'ObservationDistanceMin', 2000,
			'ObservationDistanceMax', 5000,
			'attack_weapon', "Crawler_cannon",
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Crawl_Cannon_T2",
			'object_class', "CrawlerMachineGun",
			'HumanThreat', true,
			'Movement', 50000,
			'DisplayName', T(321124799692, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 DisplayName]] "C-A2-c4nn0n4d3"),
			'DisplayNameShort', T(989911872671, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 DisplayNameShort]] "CA2"),
			'DisplayNamePl', T(281429632445, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 DisplayNamePl]] "Crawler Series A"),
			'Description', T(271891081815, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 Description]] "The second purchasable tier of Artillery Crawlers sees slight modifications to the stabilization and frame. This allowed for better combat ability. Rather than increase the munition size, a range increase was prioritized. Meant to blow holes in fortified positions for the assault troops to flood into. Based on prior interactions, it's software is solely focused on leveling our colony. Has no defenses. Deals <color TextButton>Blunt</color> Damage.<em>90 meter range. Cannot attack targets within 50 meters</em>"),
			'SalvageLootTable', "HostileCrawlers",
			'SwitchTargetChance', 0,
			'CombatSearchFlags', 536871176,
			'CombatRestrictPFBonus', 1000,
			'EventProgressValue', 1300,
			'SpawnDefWeight', 10,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'composite_part_target', "Crawl_Cannon_T1",
			'composite_part_groups', {
				"CrawlerRobot_Medium",
			},
			'max_skinned_decals_low', -1,
			'display_name', T(682786164697, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 display_name]] "MG Siege machine"),
			'display_name_pl', T(607322897856, --[[ModItemRobotCompositeDef Crawl_Cannon_T2 display_name_pl]] "MG Siege machines"),
			'siege_time', 10000,
			'FieldResearchTech', "FieldCrawler",
			'ObservationDistanceMin', 2000,
			'ObservationDistanceMax', 5000,
			'WalkSpeed', 2000,
			'attack_weapon', "Crawler_cannon",
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Crawl_Cannon_T3",
			'object_class', "CrawlerMachineGun",
			'Health', 1000000,
			'MaxHealth', 1000000,
			'HumanThreat', true,
			'Movement', 50000,
			'DisplayName', T(515373176351, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 DisplayName]] "C-A3-m0r74r"),
			'DisplayNameShort', T(264123210954, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 DisplayNameShort]] "CA3"),
			'DisplayNamePl', T(389676495865, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 DisplayNamePl]] "Crawler Series A"),
			'Description', T(844803720786, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 Description]] "This variant is not for sale. Searching through the intergalactic coms has not revealed anything about this unit. The barrel is larger, less maneuverable than a snail, and it is constantly billowing smoke. We hope that the bombardment can be weathered... Oh there. Has no defense. Deals <color TextButton>Blunt</color> Damage. <em>100 meter range. Cannot attack targets within 40 meters</em>"),
			'SalvageLootTable', "HostileCrawlers",
			'SwitchTargetChance', 0,
			'CombatSearchFlags', 536871176,
			'CombatRestrictPFBonus', 1000,
			'EventProgressValue', 3333,
			'SpawnDefWeight', 10,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'composite_part_groups', {
				"CrawlerRobot_Large",
			},
			'max_skinned_decals_low', -1,
			'display_name', T(771345966781, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 display_name]] "MG Siege machine"),
			'display_name_pl', T(743850940606, --[[ModItemRobotCompositeDef Crawl_Cannon_T3 display_name_pl]] "MG Siege machines"),
			'siege_time', 15000,
			'FieldResearchTech', "FieldCrawler",
			'ObservationDistanceMin', 2000,
			'ObservationDistanceMax', 5000,
			'WalkSpeed', 1500,
			'attack_weapon', "Crawler_cannon",
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Crawl_APC_LVL1",
			'object_class', "CrawlerMachineGun",
			'UnitTags', set( "APC_1" ),
			'Health', 250000,
			'MaxHealth', 250000,
			'damage_reduction', {
				blunt = 50,
				energy = 50,
				gas = 50,
				piercing = 50,
			},
			'HumanThreat', true,
			'Movement', 150000,
			'DisplayName', T(782952255106, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 DisplayName]] "C-B1-4nv1l"),
			'DisplayNameShort', T(291697755136, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 DisplayNameShort]] "CB1"),
			'DisplayNamePl', T(169291530050, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 DisplayNamePl]] "Crawler Series B"),
			'Description', T(534710352216, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 Description]] "Armored Personal Carriers are out of style when fielding mass cheap robots. What is in style is purchasing small numbers of very durable & portable armories. Using the spent bullet casings, and it's own armour, it will occasionally grant the nearest robot fortifications. It deals <color TextButton>Blunt</color> Damage. <color TechSubtitleBlue>50% Piercing Damage</color> <em>Reduction</em>, <color TextButton>50% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>50% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>50% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "HostileCrawlers",
			'darkness_penalty', 0,
			'EventProgressValue', 250,
			'SpawnDefWeight', 25,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals_low', -1,
			'display_name', T(427497091160, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 display_name]] "MG Siege machine"),
			'display_name_pl', T(602286767228, --[[ModItemRobotCompositeDef Crawl_APC_LVL1 display_name_pl]] "MG Siege machines"),
			'FieldResearchTech', "FieldCrawler",
			'ObservationDistanceMin', 2000,
			'ObservationDistanceMax', 5000,
			'WalkSpeed', 4000,
			'attack_weapon', "APC_Gun",
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Crawl_APC_LVL2",
			'object_class', "CrawlerMachineGun",
			'UnitTags', set( "APC_2" ),
			'damage_reduction', {
				blunt = 60,
				energy = 60,
				gas = 60,
				piercing = 60,
			},
			'HumanThreat', true,
			'Movement', 175000,
			'DisplayName', T(152286126430, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 DisplayName]] "C-B2-f0r63"),
			'DisplayNameShort', T(966072968147, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 DisplayNameShort]] "CB2"),
			'DisplayNamePl', T(979005459672, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 DisplayNamePl]] "Crawler Series B"),
			'Description', T(127818288256, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 Description]] "This variant of crawler has been upgraded to become a battlefield scavenger. It has significantly increased motor functions, speeding up it's movement. Specifically to enable quick movement towards robot corpses, to fuel it's infernal forge. This was received to critical acclaim galaxy wide, as it allows whoever is deploying these to rest easier. Because even if the battle is lost, there will be minimal things to scavenge. Has <color TechSubtitleBlue>60% Piercing Damage</color> <em>Reduction</em>, <color TextButton>60% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>60% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>60% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "HostileCrawlers",
			'darkness_penalty', 0,
			'EventProgressValue', 250,
			'SpawnDefWeight', 25,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals_low', -1,
			'display_name', T(470045847059, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 display_name]] "MG Siege machine"),
			'display_name_pl', T(125200629379, --[[ModItemRobotCompositeDef Crawl_APC_LVL2 display_name_pl]] "MG Siege machines"),
			'FieldResearchTech', "FieldCrawler",
			'ObservationDistanceMin', 2000,
			'ObservationDistanceMax', 5000,
			'WalkSpeed', 5000,
			'attack_weapon', "APC_Gun",
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Crawl_APC_LVL3",
			'object_class', "CrawlerMachineGun",
			'UnitTags', set( "APC_3" ),
			'Health', 1000000,
			'MaxHealth', 1000000,
			'damage_reduction', {
				blunt = 80,
				energy = 80,
				gas = 80,
				piercing = 80,
			},
			'Movement', 200000,
			'DisplayName', T(962345212319, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 DisplayName]] "C-B3-5m3l73r"),
			'DisplayNameShort', T(863292482755, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 DisplayNameShort]] "CB3"),
			'DisplayNamePl', T(960161869122, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 DisplayNamePl]] "Crawler Series B"),
			'Description', T(796956369685, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 Description]] 'After facing heavy criticism regarding the previous models failure rate to actually reforge allied droids; all development has focused on minimizing the chance of failure. According to financial filings, this cost billions to develop and is a major risk on their upcoming earnings report. The new models boast a failure rate of under 10%; meaning this "premium model" now achieves what the prior tier was suppose to do. Has <color TechSubtitleBlue>80% Piercing Damage</color> <em>Reduction</em>, <color TextButton>80% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>80% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>80% Gas Damage</color><color TextEmphasis> Reduction</color>'),
			'SalvageLootTable', "HostileCrawlers",
			'EventProgressValue', 250,
			'SpawnDefWeight', 25,
			'SpawnTags', set( "Boss" ),
			'max_skinned_decals_low', -1,
			'display_name', T(216410722875, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 display_name]] "MG Siege machine"),
			'display_name_pl', T(846646106334, --[[ModItemRobotCompositeDef Crawl_APC_LVL3 display_name_pl]] "MG Siege machines"),
			'FieldResearchTech', "FieldCrawler",
			'ObservationDistanceMin', 2000,
			'ObservationDistanceMax', 5000,
			'WalkSpeed', 6000,
			'attack_weapon', "APC_Gun",
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "HostileCombatQuadcopter_LVL2",
			'object_class', "CombatQuadcopter",
			'UnitTags', set( "Demo_T1", "Flying" ),
			'Health', 50000,
			'MaxHealth', 50000,
			'damage_reduction', {
				piercing = 5,
			},
			'DisplayName', T(230924932122, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 DisplayName]] "D-F2-p1d630n"),
			'DisplayNameShort', T(779620740159, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 DisplayNameShort]] "DF2"),
			'DisplayNamePl', T(369263638877, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 DisplayNamePl]] "F Series Drones"),
			'Description', T(525941302304, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL2 Description]] "The Consortium spend many engineer hours and R&D budget on the highly acidic fuel tanks, they felt it would be wasteful to not include it in another variant. The humble Quadcopter now has 2 smaller fuel tanks, designed to coat it's small arms in the same acid. Thankfully all explosions from destroyed quadcopters will not damage other robots that the buyer is fielding! Has <color TechSubtitleBlue>5% Piercing Damage</color> <em>Reduction</em>."),
			'SalvageLootTable', "HostileQuadcopters",
			'Skills', {},
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 125,
			'SpawnDefWeight', 50,
			'SpawnTags', set( "Boss" ),
			'FlightEscapeInside', true,
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "HostileCombatQuadcopter_LVL3",
			'object_class', "CombatQuadcopter",
			'UnitTags', set( "Demo_T3", "Flying" ),
			'Health', 75000,
			'MaxHealth', 75000,
			'damage_reduction', {
				piercing = 10,
			},
			'DisplayName', T(901173607252, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 DisplayName]] "D-F3-5346ull"),
			'DisplayNameShort', T(804317535414, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 DisplayNameShort]] "DF3"),
			'DisplayNamePl', T(133438259417, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 DisplayNamePl]] "F Series Drones"),
			'Description', T(911609558342, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL3 Description]] "Higher quality and denser acid makes a quadcopter with this upgrade not a straight upgrade. News stories show how earlier models dashed in to destroy key buildings and dart out. This model will be easier to down, but be quicker about destroying enemy defenses. Has <color TechSubtitleBlue>10% Piercing Damage</color> <em>Reduction</em>."),
			'SalvageLootTable', "HostileQuadcopters",
			'Skills', {},
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 200,
			'SpawnDefWeight', 50,
			'SpawnTags', set( "Boss" ),
			'FlightEscapeInside', true,
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "HostileCombatQuadcopter_LVL4",
			'object_class', "CombatQuadcopter",
			'UnitTags', set( "Demo_T3", "Flying" ),
			'Health', 100000,
			'MaxHealth', 100000,
			'damage_reduction', {
				piercing = 15,
			},
			'Movement', 125000,
			'DisplayName', T(453164220819, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 DisplayName]] "D-F4-h4wk"),
			'DisplayNameShort', T(283426405849, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 DisplayNameShort]] "DF4"),
			'DisplayNamePl', T(375497859599, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 DisplayNamePl]] "F Series Drones"),
			'Description', T(583067491707, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL4 Description]] "No major changes where announced for the F series. But it is considered a generally solid upgrade. Slightly faster to offset the fuel tank weight, better targeting software, and durable enough to take a single flak blast. Reception has been relatively positive. Has <color TechSubtitleBlue>15% Piercing Damage</color> <em>Reduction</em>."),
			'SalvageLootTable', "HostileQuadcopters",
			'Skills', {
				Combat = 5,
			},
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 300,
			'SpawnDefWeight', 50,
			'SpawnTags', set( "Boss" ),
			'FlightEscapeInside', true,
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "HostileCombatQuadcopter_LVL5",
			'object_class', "CombatQuadcopter",
			'UnitTags', set( "Demo_T5", "Flying" ),
			'Health', 300000,
			'MaxHealth', 300000,
			'damage_reduction', {
				piercing = 20,
			},
			'Movement', 125000,
			'DisplayName', T(449854643933, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 DisplayName]] "D-F5-346l3"),
			'DisplayNameShort', T(260759826748, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 DisplayNameShort]] "DF5"),
			'DisplayNamePl', T(561655984337, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 DisplayNamePl]] "F Series Drones"),
			'Description', T(124529310792, --[[ModItemRobotCompositeDef HostileCombatQuadcopter_LVL5 Description]] 'Double the durability for double the destruction! At least that is the sales pitch for the most expensive F model. Major software changes where required to enable the same "Hot Glue" or "Acid" that the E series does mechanically via it\'s special spear. Overall this model is considered the best leveler of enemy encampments, even above modern artillery. Mainly because this is orders of magnitudes cheaper to produce! Has <color TechSubtitleBlue>20% Piercing Damage</color> <em>Reduction</em>.'),
			'SalvageLootTable', "HostileQuadcopters",
			'Skills', {
				Combat = 7,
			},
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 800,
			'SpawnDefWeight', 50,
			'SpawnTags', set( "Boss" ),
			'FlightEscapeInside', true,
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Demo_1",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Demo_T1", "Robot" ),
			'Health', 125000,
			'MaxHealth', 125000,
			'damage_reduction', {
				blunt = 10,
				energy = 5,
				gas = 25,
			},
			'HumanThreat', true,
			'Movement', 150000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(96, 50, 116, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(849333071141, --[[ModItemRobotCompositeDef Demo_1 DisplayName]] "D-E1-7r0ubl3m4k3r"),
			'DisplayNameShort', T(577195232618, --[[ModItemRobotCompositeDef Demo_1 DisplayNameShort]] "DE1"),
			'DisplayNamePl', T(868338985251, --[[ModItemRobotCompositeDef Demo_1 DisplayNamePl]] "Drone Series E"),
			'Description', T(435729608418, --[[ModItemRobotCompositeDef Demo_1 Description]] "It is a running joke in Consortium media that purple makes robots stealthier. So when a new model was announced sold as a stealth sabotage unit, it came to noones surprise in a shade of purple. They even made the acid purple colored! Has <color TechSubtitleBlue>0% Piercing Damage</color> <em>Reduction</em>, <color TextButton>10% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>5% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>25% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'Skills', {
				Combat = 5,
			},
			'darkness_penalty', 0,
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 50,
			'SpawnDefWeight', 80,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
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
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Demo_2",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Demo_T1", "Robot" ),
			'Health', 250000,
			'MaxHealth', 250000,
			'damage_reduction', {
				blunt = 15,
				energy = 10,
				gas = 30,
				piercing = 5,
			},
			'HumanThreat', true,
			'Movement', 150000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(140, 16, 141, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(743618130851, --[[ModItemRobotCompositeDef Demo_2 DisplayName]] "D-E2-4p07h3c4ry"),
			'DisplayNameShort', T(489278802929, --[[ModItemRobotCompositeDef Demo_2 DisplayNameShort]] "DE2"),
			'DisplayNamePl', T(754647319790, --[[ModItemRobotCompositeDef Demo_2 DisplayNamePl]] "Drone Series E"),
			'Description', T(647923552284, --[[ModItemRobotCompositeDef Demo_2 Description]] "The novelty has worn off, and the Consortium has had to increase the combat capabilities of this model line. This upgraded frame should now reasonably survive a head on assault, and be a wall breaker for other troops. Has <color TechSubtitleBlue>5% Piercing Damage</color> <em>Reduction</em>, <color TextButton>15% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>10% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>30% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'Skills', {
				Combat = 6,
			},
			'darkness_penalty', 0,
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 250,
			'SpawnDefWeight', 80,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
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
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Demo_3",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Demo_T3", "Robot" ),
			'Health', 300000,
			'MaxHealth', 300000,
			'damage_reduction', {
				blunt = 20,
				energy = 15,
				gas = 35,
				piercing = 10,
			},
			'HumanThreat', true,
			'Movement', 150000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(127, 11, 92, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(359047323734, --[[ModItemRobotCompositeDef Demo_3 DisplayName]] "D-E3-ch3m157"),
			'DisplayNameShort', T(562208439146, --[[ModItemRobotCompositeDef Demo_3 DisplayNameShort]] "DE3"),
			'DisplayNamePl', T(541755977736, --[[ModItemRobotCompositeDef Demo_3 DisplayNamePl]] "Drone Series E"),
			'Description', T(971100673913, --[[ModItemRobotCompositeDef Demo_3 Description]] "The chemists have never stopped trying to improve upon the corrosive capabilities; and have improved the fuel formula. It is now much denser, but can properly disentigrates all major building materials. The increased weight has been offset by substantial improvements to the hydraulics for no net movement loss. Has <color TechSubtitleBlue>10% Piercing Damage</color> <em>Reduction</em>, <color TextButton>20% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>15% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>35% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'Skills', {
				Combat = 7,
			},
			'darkness_penalty', 0,
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 400,
			'SpawnDefWeight', 80,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
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
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Demo_4",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Demo_T3", "Robot" ),
			'Health', 550000,
			'MaxHealth', 550000,
			'damage_reduction', {
				blunt = 25,
				energy = 20,
				gas = 40,
				piercing = 15,
			},
			'HumanThreat', true,
			'Movement', 175000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(89, 13, 142, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(446247297830, --[[ModItemRobotCompositeDef Demo_4 DisplayName]] "D-E4-5ulfur1c"),
			'DisplayNameShort', T(970881324308, --[[ModItemRobotCompositeDef Demo_4 DisplayNameShort]] "DE4"),
			'DisplayNamePl', T(414115315193, --[[ModItemRobotCompositeDef Demo_4 DisplayNamePl]] "Drone Series E"),
			'Description', T(598057090716, --[[ModItemRobotCompositeDef Demo_4 Description]] "For an upcharge, a prospective robot army owner can purchase a survivability upgrade for the sabatoge model. This ensures that all units ship with the Consortium's modified Laser Spear. A tube runs from the fuel tank to the tip of the spear. Buildings cannot maintain structural integrity when a vat of acid is placed directly on it's support beams! Has <color TechSubtitleBlue>15% Piercing Damage</color> <em>Reduction</em>, <color TextButton>25% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>20% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>45% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'Skills', {
				Combat = 8,
			},
			'darkness_penalty', 0,
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 900,
			'SpawnDefWeight', 80,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Melee_LaserPike",
					},
				}),
			},
		}),
		PlaceObj('ModItemRobotCompositeDef', {
			'Id', "Demo_5",
			'object_class', "HeavyCombatRobot",
			'UnitTags', set( "Demo_T5", "Robot" ),
			'Health', 750000,
			'MaxHealth', 750000,
			'damage_reduction', {
				blunt = 30,
				energy = 25,
				gas = 50,
				piercing = 20,
			},
			'HumanThreat', true,
			'Movement', 200000,
			'SkinColor', PlaceObj('ColorizationPropSet', {
				'EditableColor1', RGBA(146, 14, 140, 255),
				'EditableRoughness1', -50,
				'EditableRoughness2', -25,
				'EditableColor3', RGBA(55, 55, 55, 255),
			}),
			'DisplayName', T(911074474972, --[[ModItemRobotCompositeDef Demo_5 DisplayName]] "D-E5-flu0r04n71m0n1c"),
			'DisplayNameShort', T(654156072296, --[[ModItemRobotCompositeDef Demo_5 DisplayNameShort]] "DE5"),
			'DisplayNamePl', T(780181404433, --[[ModItemRobotCompositeDef Demo_5 DisplayNamePl]] "Drone Series E"),
			'Description', T(489965093553, --[[ModItemRobotCompositeDef Demo_5 Description]] "The acid fuel tanks are now a mobile alchemy station. The Acid Spear changes the composition, based on what it is stabbing. Attacks coat organic enemies in extra strong adhesives. Sales and deployments continue, even as the galactic community decries it's immorality. Has <color TechSubtitleBlue>20% Piercing Damage</color> <em>Reduction</em>, <color TextButton>30% Blunt Damage</color><color TextEmphasis> Reduction</color>, <color TextNegative>25% Energy Damage</color><color TextEmphasis> Reduction</color>, <color TextPositive>50% Gas Damage</color><color TextEmphasis> Reduction</color>"),
			'SalvageLootTable', "LightHostileRobots_3",
			'darkness_penalty', 0,
			'CombatSearchFlags', 536871176,
			'EventProgressValue', 1500,
			'SpawnDefWeight', 80,
			'SpawnTags', set( "Boss" ),
			'can_be_navigated', false,
			'can_navigate_others', false,
			'can_follow_formation', false,
			'can_lead_formation', false,
			'max_skinned_decals', 1,
			'max_skinned_decals_low', 0,
			'Equipment', {
				PlaceObj('WeightedEquipment', {
					'Weight', 60,
					'Equipment', {
						"Melee_LaserPike",
					},
				}),
			},
		}),
		}),
	PlaceObj('ModItemFolder', {
		'name', "Animals",
		'NameColor', RGBA(153, 63, 63, 255),
	}, {
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Temperate",
			'Id', "GujoT5",
			'object_class', "GujoBase",
			'SpeciesGroup', "birds",
			'RoamIntervalMin', 2000,
			'RoamIntervalMax', 3000,
			'composite_part_groups', {
				"Gujo",
			},
			'PainMask', "PainMask",
			'damage_reduction', {
				pacify = 80,
			},
			'EventProgressValue', 1400,
			'turn_before_sharp_move', 0,
			'CombatGroup', "Insects",
			'EnrageChance', 5,
			'AttackMemory', 10000,
			'CombatRageTime', 10000,
			'CombatGiveUpDist', 10000,
			'CombatGiveUpNoHit', 10000,
			'CombatDisengageDist', 10000,
			'CombatFleeAccuracy', 0,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldGujoT4",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'Icon', "UI/Icons/Resources/res_gujo",
			'DisplayName', T(797438362363, --[[ModItemUnitAnimalCompositeDef GujoT5 DisplayName]] "Vengeful Dodo"),
			'DisplayNamePl', T(301981042325, --[[ModItemUnitAnimalCompositeDef GujoT5 DisplayNamePl]] "Vengeful Dodos"),
			'DisplayNameUnknown', T(654417377239, --[[ModItemUnitAnimalCompositeDef GujoT5 DisplayNameUnknown]] "Gujo Final Form?"),
			'DisplayNameUnknownPL', T(534116871229, --[[ModItemUnitAnimalCompositeDef GujoT5 DisplayNameUnknownPL]] "Gujos Final Form?"),
			'Description', T(103303410892, --[[ModItemUnitAnimalCompositeDef GujoT5 Description]] "The closest Earth equivalent to this errant evolution of the Gujo is the dodo. If the dodo was twice the size of a human, and had a razor sharp beak! Based on it's behavior, it must be very angry the Dodo went extinct on Earth and is taking it out on literally anything on this planet."),
			'BaseMaxHealth', 1000000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatPoultry",
					'min_amount', 20000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'ChanceToBeMale', 50,
			'BodySize', "medium",
			'SleepDurationMin', 480000,
			'SleepDurationMax', 480000,
			'SleepAttemptAfter', 240000,
			'SleepAttemptBefore', 360000,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Feathers",
					'amount', 40000,
				}),
			},
			'ProduceResInterval', 2880000,
			'AnimalPerks', {
				"FallingFeathers",
				"DraftableAnimal",
				"AP_Frenzy",
				"AP_Regen",
			},
			'radius', 700,
			'collision_radius_mod', 1300,
			'pfclass_tamed', 7,
			'pfclass_tamed_lead', 12,
			'anim_idle', {
				"idle",
				"idle_LookingAround",
				"idle_Pecking",
				"idle_SlightlyMove",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 9,
			'TamingChance', 25,
			'TamingAggressiveChance', 80,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'DailyPregnancyChance', 50,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'MinGrownScale', 75,
			'MaxGrownScale', 85,
			'RoamRadiusStarving', 50000,
			'SightRangeStarving', 40000,
			'SleepMinDist', 3000,
			'SleepMaxDist', 5000,
			'MovementSpeedStarving', 750,
			'RoamSearchRadiusMin', 3000,
			'RoamSearchRadiusMax', 5000,
			'UnitPerkFrenzy', true,
			'FrenzyDuration', 200000,
			'FrenzyEffects', {
				"Blood_FrenzyT5",
				"Frenzy_Conscious_4",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Temperate",
			'Id', "GujoT4",
			'object_class', "GujoBase",
			'SpeciesGroup', "birds",
			'RoamIntervalMin', 2000,
			'RoamIntervalMax', 3000,
			'composite_part_groups', {
				"Gujo",
			},
			'PainMask', "PainMask",
			'damage_reduction', {
				pacify = 60,
			},
			'EventProgressValue', 600,
			'turn_before_sharp_move', 0,
			'CombatGroup', "Insects",
			'EnrageChance', 5,
			'AttackMemory', 10000,
			'CombatRageTime', 10000,
			'CombatGiveUpDist', 10000,
			'CombatGiveUpNoHit', 10000,
			'CombatDisengageDist', 10000,
			'CombatFleeAccuracy', 0,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldGujoT4",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'Icon', "UI/Icons/Resources/res_gujo",
			'DisplayName', T(671274472486, --[[ModItemUnitAnimalCompositeDef GujoT4 DisplayName]] "Micro-Raptor"),
			'DisplayNamePl', T(840275622208, --[[ModItemUnitAnimalCompositeDef GujoT4 DisplayNamePl]] "Micro-Raptors"),
			'DisplayNameUnknown', T(105215405361, --[[ModItemUnitAnimalCompositeDef GujoT4 DisplayNameUnknown]] "Unknown Gujo Evolution"),
			'DisplayNameUnknownPL', T(398545264919, --[[ModItemUnitAnimalCompositeDef GujoT4 DisplayNameUnknownPL]] "Unknown Gujo Evolution"),
			'Description', T(596608540170, --[[ModItemUnitAnimalCompositeDef GujoT4 Description]] "This creatures evolution is all over the place, biologically appearing similar to a long ago dinosaur and then a closer to modern times flightless bird.... Regardless, this species should still be handled with EXTREME caution."),
			'BaseMaxHealth', 750000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatPoultry",
					'min_amount', 20000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'ChanceToBeMale', 50,
			'BodySize', "medium",
			'SleepDurationMin', 480000,
			'SleepDurationMax', 480000,
			'SleepAttemptAfter', 240000,
			'SleepAttemptBefore', 360000,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Feathers",
					'amount', 40000,
				}),
			},
			'ProduceResInterval', 2880000,
			'AnimalPerks', {
				"FallingFeathers",
				"DraftableAnimal",
				"AP_Frenzy",
				"AP_Regen",
			},
			'radius', 700,
			'collision_radius_mod', 1300,
			'pfclass_tamed', 7,
			'pfclass_tamed_lead', 12,
			'anim_idle', {
				"idle",
				"idle_LookingAround",
				"idle_Pecking",
				"idle_SlightlyMove",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 7,
			'TamingChance', 40,
			'TamingAggressiveChance', 60,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'DailyPregnancyChance', 65,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'NewbornClass', "GujoT5",
			'MinGrownScale', 75,
			'MaxGrownScale', 85,
			'RoamRadiusStarving', 50000,
			'SightRangeStarving', 40000,
			'SleepMinDist', 3000,
			'SleepMaxDist', 5000,
			'MovementSpeedStarving', 750,
			'RoamSearchRadiusMin', 3000,
			'RoamSearchRadiusMax', 5000,
			'UnitPerkFrenzy', true,
			'FrenzyDuration', 200000,
			'FrenzyEffects', {
				"Blood_FrenzyT3",
				"Frenzy_Conscious_4",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Temperate",
			'Id', "GujoT3",
			'object_class', "GujoBase",
			'SpeciesGroup', "birds",
			'RoamIntervalMin', 2000,
			'RoamIntervalMax', 3000,
			'composite_part_groups', {
				"Gujo",
			},
			'PainMask', "PainMask",
			'damage_reduction', {
				pacify = 40,
			},
			'EventProgressValue', 200,
			'turn_before_sharp_move', 0,
			'CombatGroup', "Insects",
			'EnrageChance', 5,
			'AttackMemory', 10000,
			'CombatRageTime', 10000,
			'CombatGiveUpDist', 10000,
			'CombatGiveUpNoHit', 10000,
			'CombatDisengageDist', 10000,
			'CombatFleeAccuracy', 0,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldGujoT2",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'Icon', "UI/Icons/Resources/res_gujo",
			'DisplayName', T(261277686877, --[[ModItemUnitAnimalCompositeDef GujoT3 DisplayName]] "Angry Ostrich"),
			'DisplayNamePl', T(246230868727, --[[ModItemUnitAnimalCompositeDef GujoT3 DisplayNamePl]] "Angry Ostrichs"),
			'DisplayNameUnknown', T(508094361828, --[[ModItemUnitAnimalCompositeDef GujoT3 DisplayNameUnknown]] "Unknown Gujo Evolution"),
			'DisplayNameUnknownPL', T(953781653922, --[[ModItemUnitAnimalCompositeDef GujoT3 DisplayNameUnknownPL]] "Unknown Gujo Evolutions"),
			'Description', T(709802447425, --[[ModItemUnitAnimalCompositeDef GujoT3 Description]] "It's beak and neck are now twice as long, resembling an Earth Ostrich. When dissected, stomach acid clings to the neck to start digestion as soon as possible."),
			'BaseMaxHealth', 500000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatPoultry",
					'min_amount', 20000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'ChanceToBeMale', 50,
			'BodySize', "medium",
			'SleepDurationMin', 480000,
			'SleepDurationMax', 480000,
			'SleepAttemptAfter', 240000,
			'SleepAttemptBefore', 360000,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Feathers",
					'amount', 40000,
				}),
			},
			'ProduceResInterval', 2880000,
			'AnimalPerks', {
				"FallingFeathers",
				"DraftableAnimal",
			},
			'radius', 700,
			'collision_radius_mod', 1300,
			'pfclass_tamed', 7,
			'pfclass_tamed_lead', 12,
			'anim_idle', {
				"idle",
				"idle_LookingAround",
				"idle_Pecking",
				"idle_SlightlyMove",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 5,
			'TamingChance', 50,
			'TamingAggressiveChance', 45,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'DailyPregnancyChance', 55,
			'PregnancyDuration', 2880000,
			'GrowDuration', 2880000,
			'NewbornClass', "GujoT4",
			'MinGrownScale', 75,
			'MaxGrownScale', 85,
			'RoamRadiusStarving', 50000,
			'SightRangeStarving', 40000,
			'SleepMinDist', 3000,
			'SleepMaxDist', 5000,
			'MovementSpeedStarving', 750,
			'RoamSearchRadiusMin', 3000,
			'RoamSearchRadiusMax', 5000,
			'UnitPerkFrenzy', true,
			'FrenzyDuration', 200000,
			'FrenzyEffects', {
				"Blood_FrenzyT3",
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Temperate",
			'Id', "GujoT2",
			'object_class', "GujoBase",
			'SpeciesGroup', "birds",
			'RoamIntervalMin', 2000,
			'RoamIntervalMax', 3000,
			'composite_part_groups', {
				"Gujo",
			},
			'PainMask', "PainMask",
			'damage_reduction', {
				pacify = 20,
			},
			'EventProgressValue', 100,
			'turn_before_sharp_move', 0,
			'CombatGroup', "Insects",
			'EnrageChance', 5,
			'AttackMemory', 10000,
			'CombatRageTime', 10000,
			'CombatGiveUpDist', 10000,
			'CombatGiveUpNoHit', 10000,
			'CombatDisengageDist', 10000,
			'CombatFleeAccuracy', 0,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldGujoT2",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'Icon', "UI/Icons/Resources/res_gujo",
			'DisplayName', T(601758872909, --[[ModItemUnitAnimalCompositeDef GujoT2 DisplayName]] "Archaeopteryx"),
			'DisplayNamePl', T(472985392270, --[[ModItemUnitAnimalCompositeDef GujoT2 DisplayNamePl]] "Archaeopteryxs"),
			'DisplayNameUnknown', T(240341128554, --[[ModItemUnitAnimalCompositeDef GujoT2 DisplayNameUnknown]] "Unknown Gujo Evolution"),
			'DisplayNameUnknownPL', T(792453996712, --[[ModItemUnitAnimalCompositeDef GujoT2 DisplayNameUnknownPL]] "Unknown Gujo Evolution"),
			'Description', T(119985563969, --[[ModItemUnitAnimalCompositeDef GujoT2 Description]] "Taller, angrier, and has immense healing capabilities in combat"),
			'BaseMaxHealth', 250000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatPoultry",
					'min_amount', 20000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'ChanceToBeMale', 50,
			'BodySize', "medium",
			'SleepDurationMin', 480000,
			'SleepDurationMax', 480000,
			'SleepAttemptAfter', 240000,
			'SleepAttemptBefore', 360000,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Feathers",
					'amount', 40000,
				}),
			},
			'ProduceResInterval', 2880000,
			'AnimalPerks', {
				"FallingFeathers",
				"DraftableAnimal",
			},
			'radius', 700,
			'collision_radius_mod', 1300,
			'pfclass_tamed', 7,
			'pfclass_tamed_lead', 12,
			'anim_idle', {
				"idle",
				"idle_LookingAround",
				"idle_Pecking",
				"idle_SlightlyMove",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 7,
			'TamingChance', 60,
			'TamingAggressiveChance', 15,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4800000,
			'GrowDuration', 4800000,
			'NewbornClass', "GujoT3",
			'MinGrownScale', 75,
			'MaxGrownScale', 85,
			'RoamRadiusStarving', 50000,
			'SightRangeStarving', 40000,
			'SleepMinDist', 3000,
			'SleepMaxDist', 5000,
			'MovementSpeedStarving', 750,
			'RoamSearchRadiusMin', 3000,
			'RoamSearchRadiusMax', 5000,
			'UnitPerkFrenzy', true,
			'FrenzyEffects', {
				"Blood_Frenzy",
				"Frenzy_Conscious_2",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Temperate",
			'Id', "Gujo",
			'object_class', "GujoBase",
			'SpeciesGroup', "birds",
			'RoamIntervalMin', 2000,
			'RoamIntervalMax', 3000,
			'PainMask', "PainMask",
			'EventProgressValue', 20,
			'turn_before_sharp_move', 0,
			'CombatGroup', "Insects",
			'EnrageChance', 5,
			'AttackMemory', 10000,
			'CombatRageTime', 10000,
			'CombatGiveUpDist', 10000,
			'CombatGiveUpNoHit', 10000,
			'CombatDisengageDist', 10000,
			'CombatFleeAccuracy', 0,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldGujo",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'Icon', "UI/Icons/Resources/res_gujo",
			'DisplayName', T(204197595083, --[[ModItemUnitAnimalCompositeDef Gujo DisplayName]] "Gujo"),
			'DisplayNamePl', T(854435512627, --[[ModItemUnitAnimalCompositeDef Gujo DisplayNamePl]] "Gujos"),
			'Description', T(594993593510, --[[ModItemUnitAnimalCompositeDef Gujo Description]] "Hunts during the night. Small chance to retaliate when attacked."),
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatPoultry",
					'min_amount', 20000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'ChanceToBeMale', 50,
			'BodySize', "medium",
			'SleepDurationMin', 480000,
			'SleepDurationMax', 480000,
			'SleepAttemptAfter', 240000,
			'SleepAttemptBefore', 360000,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Feathers",
					'amount', 40000,
				}),
			},
			'ProduceResInterval', 2880000,
			'AnimalPerks', {
				"FallingFeathers",
				"DraftableAnimal",
			},
			'radius', 700,
			'collision_radius_mod', 1300,
			'pfclass_tamed', 7,
			'pfclass_tamed_lead', 12,
			'anim_idle', {
				"idle",
				"idle_LookingAround",
				"idle_Pecking",
				"idle_SlightlyMove",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 5,
			'TamingChance', 80,
			'TamingAggressiveChance', 5,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'DailyPregnancyChance', 50,
			'PregnancyDuration', 3840000,
			'GrowDuration', 3840000,
			'NewbornClass', "GujoT2",
			'MinGrownScale', 75,
			'MaxGrownScale', 85,
			'RoamRadiusStarving', 50000,
			'SightRangeStarving', 40000,
			'SleepMinDist', 3000,
			'SleepMaxDist', 5000,
			'MovementSpeedStarving', 750,
			'RoamSearchRadiusMin', 3000,
			'RoamSearchRadiusMax', 5000,
			'UnitPerkFrenzy', true,
			'FrenzyDuration', 200000,
			'FrenzyEffects', {
				"Blood_Frenzy",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Fast_Frenzied_Fortified_Bomber_Dragonfly",
			'object_class', "DragonflyBase",
			'SpeciesGroup', "insects",
			'RoamMinDist', 5000,
			'RoamMaxDist', 40000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 10000,
			'composite_part_groups', {
				"Dragonfly",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 1377,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 20,
				energy = 20,
				gas = 20,
				pacify = 80,
				piercing = 20,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'EnrageChance', 5,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "Field_Dragonfly_T4",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'SkipTesting', true,
			'Icon', "UI/Icons/Resources/res_dragonfly",
			'DisplayName', T(661997517268, --[[ModItemUnitAnimalCompositeDef Fast_Frenzied_Fortified_Bomber_Dragonfly DisplayName]] "Fast Frenzied Fortified Bomber Deathfly"),
			'DisplayNamePl', T(362935075377, --[[ModItemUnitAnimalCompositeDef Fast_Frenzied_Fortified_Bomber_Dragonfly DisplayNamePl]] "Fast Frenzied Fortified Bomber Deathfly"),
			'DisplayNameUnknown', T(--[[ModItemUnitAnimalCompositeDef Fast_Frenzied_Fortified_Bomber_Dragonfly DisplayNameUnknown]] "Dragonfly Final Form?"),
			'DisplayNameUnknownPL', T(--[[ModItemUnitAnimalCompositeDef Fast_Frenzied_Fortified_Bomber_Dragonfly DisplayNameUnknownPL]] "Dragonfly Final Form?"),
			'Description', T(998813574519, --[[ModItemUnitAnimalCompositeDef Fast_Frenzied_Fortified_Bomber_Dragonfly Description]] "Oh great, now they are fast, deal area damage, incredibly bulky.... No clear weakness either. Deals <color TextNegative>Energy</color> damage."),
			'BaseMaxHealth', 160000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 8000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'AnimalPerks', {
				"AP_Fast",
				"AP_Frenzy",
			},
			'radius', 1000,
			'attack_weapon', "Dragonfly_bomb",
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
				"idle_Active2",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 90,
			'FlightMinPitch', -2700,
			'FlightMaxPitch', 2700,
			'FlightMaxRoll', 3600,
			'FlightYawRotToRoll', 150,
			'FlightDecelDist', 6000,
			'FlightSimHeightMax', 6000,
			'FlightSimFrictionXY', 30,
			'FlightSimAttract', 2000,
			'FlightSimLift', 1000,
			'FlightSimMaxLift', 5000,
			'FlightSimWeight', 1000,
			'FlightSimMinStep', 5000,
			'FlightSimMaxStep', 20000,
			'FlightSimDecelDist', 20000,
			'FlightSimSplineErr', 1000,
			'FlightSlopePenalty', 500,
			'FlightMinObstacleHeight', 1050,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Fast",
				"Frenzy_Conscious_4",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Dogs",
			'Id', "dog_T5",
			'object_class', "DogBase",
			'SpeciesGroup', "dogs",
			'RoamRadius', 15000,
			'RoamIntervalMin', 40000,
			'RoamIntervalMax', 120000,
			'BypassTrapsChance', 90,
			'composite_part_target', "dog_T5",
			'composite_part_groups', {
				"Dog_GreatDane",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 1400,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 30,
				energy = 30,
				gas = 30,
				pacify = 80,
				piercing = 30,
			},
			'HumanThreat', true,
			'EnrageChance', 5,
			'AttackMemory', 45000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'ButcherDuration', 5000,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "field_dog_T5",
			'ObservationDistanceMin', 12000,
			'ObservationDistanceMax', 18000,
			'ForcedApproachPlanning', true,
			'Icon', "UI/Icons/Resources/res_dog_great_dane",
			'DisplayName', T(837731857481, --[[ModItemUnitAnimalCompositeDef dog_T5 DisplayName]] "Fenrir"),
			'DisplayNamePl', T(957203847118, --[[ModItemUnitAnimalCompositeDef dog_T5 DisplayNamePl]] "Fenrirs"),
			'DisplayNameUnknown', T(603621195429, --[[ModItemUnitAnimalCompositeDef dog_T5 DisplayNameUnknown]] "Dog's final form?"),
			'DisplayNameUnknownPL', T(524587432992, --[[ModItemUnitAnimalCompositeDef dog_T5 DisplayNameUnknownPL]] "Dog's final form?"),
			'Description', T(852322442181, --[[ModItemUnitAnimalCompositeDef dog_T5 Description]] "Commander of the fauna's attacks against us. Prioritize killing to weaken the rest of the horde. Deals <color TechSubtitleBlue>Piercing</color> and <color TextNegative>Energy</color> damage."),
			'BaseMaxHealth', 800000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 10000,
					'max_amount', 30000,
				}),
				PlaceObj('ButcherResAmount', {
					'resource', "LeatherRaw",
					'min_amount', 10000,
				}),
			},
			'ChanceToBeMale', 50,
			'BodySize', "small",
			'AnimalPerks', {
				"DraftableAnimal",
				"AP_Commander",
			},
			'radius', 400,
			'pfclass_tamed', 12,
			'pfclass_tamed_lead', 12,
			'EnrageChanceOtherAnimals', 50,
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "DryMeat",
			'TamingFoodAmount', 60000,
			'TamingMinimumSkill', 9,
			'TamingChance', 25,
			'TamingAggressiveChance', 80,
			'TamingDistance', 30000,
			'TamedLifetimeMin', 138240000,
			'TamedLifetimeMax', 230400000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 20,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Dogs",
			'DailyPregnancyChance', 50,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'NewbornClass', "dog_T5",
			'MinGrownScale', 110,
			'FieldVisibilityCold', 0,
			'FieldVisibilityWarm', 0,
			'MoveSpeedCold', 1000,
			'PlantsToEatMin', 0,
			'PlantsToEatMax', 0,
			'GrazingChance', 3,
			'HerdMergeClass', "Dog",
			'UnitAreaEffect', true,
			'UnitPerkFrenzy', true,
			'AffectRadius', 25000,
			'AffectClass', "UnitAnimal",
			'Effects', {
				PlaceObj('AreaEffectHealthCondition', {
					BodyPart = "HeadBrain",
					BodyPartGroup = "WholeHead",
					HealthCond = "ILU_dog_near_strong",
					HealthCondType = "Buff",
				}),
			},
			'Disabled', function (self)
				return self:IsDead() or self:IsUnconscious()
			end,
			'AffectFilter', function (self, target)
				return target.CombatGroup == self.CombatGroup
					and not target:IsDead()
					and not target:IsUnconscious()
			end,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_4",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Dogs",
			'Id', "dog_T4",
			'object_class', "DogBase",
			'SpeciesGroup', "dogs",
			'RoamRadius', 15000,
			'RoamIntervalMin', 40000,
			'RoamIntervalMax', 120000,
			'BypassTrapsChance', 75,
			'composite_part_target', "dog_T4",
			'composite_part_groups', {
				"Dog_GreatDane",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 850,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 25,
				energy = 25,
				gas = 25,
				pacify = 60,
				piercing = 25,
			},
			'HumanThreat', true,
			'EnrageChance', 5,
			'AttackMemory', 45000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'ButcherDuration', 5000,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "field_dog_T3",
			'ObservationDistanceMin', 12000,
			'ObservationDistanceMax', 18000,
			'ForcedApproachPlanning', true,
			'Icon', "UI/Icons/Resources/res_dog_great_dane",
			'DisplayName', T(314875810082, --[[ModItemUnitAnimalCompositeDef dog_T4 DisplayName]] "Glane"),
			'DisplayNamePl', T(892651044937, --[[ModItemUnitAnimalCompositeDef dog_T4 DisplayNamePl]] "Glanes"),
			'DisplayNameUnknown', T(226516325385, --[[ModItemUnitAnimalCompositeDef dog_T4 DisplayNameUnknown]] "Unknown Dog Evolution"),
			'DisplayNameUnknownPL', T(418726405637, --[[ModItemUnitAnimalCompositeDef dog_T4 DisplayNameUnknownPL]] "Unknown Dog Evolution"),
			'Description', T(385635065870, --[[ModItemUnitAnimalCompositeDef dog_T4 Description]] "With a bite that causes localized hypothermia and a desire to help our other enemies... This once-friend requires prioritization.  Deals <color TechSubtitleBlue>Piercing</color> and <color TextNegative>Energy</color> damage."),
			'BaseMaxHealth', 400000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 10000,
					'max_amount', 30000,
				}),
				PlaceObj('ButcherResAmount', {
					'resource', "LeatherRaw",
					'min_amount', 10000,
				}),
			},
			'ChanceToBeMale', 50,
			'BodySize', "small",
			'AnimalPerks', {
				"DraftableAnimal",
				"SmartPredator",
				"AP_Commander",
			},
			'radius', 400,
			'pfclass_tamed', 12,
			'pfclass_tamed_lead', 12,
			'EnrageChanceOtherAnimals', 50,
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "DryMeat",
			'TamingFoodAmount', 45000,
			'TamingChance', 90,
			'TamingAggressiveChance', 5,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 138240000,
			'TamedLifetimeMax', 230400000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 20,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Dogs",
			'DailyPregnancyChance', 65,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'NewbornClass', "dog_T5",
			'MinGrownScale', 110,
			'FieldVisibilityCold', 0,
			'FieldVisibilityWarm', 0,
			'MoveSpeedCold', 1000,
			'PlantsToEatMin', 0,
			'PlantsToEatMax', 0,
			'GrazingChance', 3,
			'HerdMergeClass', "Dog",
			'UnitAreaEffect', true,
			'UnitPerkFrenzy', true,
			'AffectRadius', 15000,
			'AffectClass', "UnitAnimal",
			'Effects', {
				PlaceObj('AreaEffectHealthCondition', {
					BodyPart = "HeadBrain",
					BodyPartGroup = "WholeHead",
					HealthCond = "ILU_dog_near_weak",
					HealthCondType = "Buff",
				}),
			},
			'Disabled', function (self)
				return self:IsDead() or self:IsUnconscious()
			end,
			'AffectFilter', function (self, target)
				return target.CombatGroup == self.CombatGroup
					and not target:IsDead()
					and not target:IsUnconscious()
			end,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Dogs",
			'Id', "dog_T3",
			'object_class', "DogBase",
			'SpeciesGroup', "dogs",
			'RoamRadius', 15000,
			'RoamIntervalMin', 40000,
			'RoamIntervalMax', 120000,
			'BypassTrapsChance', 20,
			'composite_part_target', "dog_T3",
			'composite_part_groups', {
				"Dog_GreatDane",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 350,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 15,
				energy = 15,
				gas = 15,
				pacify = 40,
				piercing = 15,
			},
			'HumanThreat', true,
			'EnrageChance', 5,
			'AttackMemory', 45000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'ButcherDuration', 5000,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "field_dog_T3",
			'ObservationDistanceMin', 12000,
			'ObservationDistanceMax', 18000,
			'Icon', "UI/Icons/Resources/res_dog_great_dane",
			'DisplayName', T(524799919675, --[[ModItemUnitAnimalCompositeDef dog_T3 DisplayName]] "Ice Wolf"),
			'DisplayNamePl', T(198253438355, --[[ModItemUnitAnimalCompositeDef dog_T3 DisplayNamePl]] "Ice Wolf"),
			'DisplayNameUnknown', T(539396120412, --[[ModItemUnitAnimalCompositeDef dog_T3 DisplayNameUnknown]] "Unknown Dog Evolution"),
			'DisplayNameUnknownPL', T(757802182891, --[[ModItemUnitAnimalCompositeDef dog_T3 DisplayNameUnknownPL]] "Unknown Dog Evolution"),
			'Description', T(749386049337, --[[ModItemUnitAnimalCompositeDef dog_T3 Description]] "Able to dodge and weave, avoiding small arms fire. Lives with other species, assisting in hunting, tracking, or killing their enemies. Which unfortunately is us. Deals <color TechSubtitleBlue>Piercing</color> and <color TextNegative>Energy</color> damage."),
			'BaseMaxHealth', 200000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 10000,
					'max_amount', 30000,
				}),
				PlaceObj('ButcherResAmount', {
					'resource', "LeatherRaw",
					'min_amount', 10000,
				}),
			},
			'ChanceToBeMale', 50,
			'BodySize', "small",
			'AnimalPerks', {
				"DraftableAnimal",
				"SmartPredator",
				"AP_Commander",
			},
			'radius', 400,
			'pfclass_tamed', 12,
			'pfclass_tamed_lead', 12,
			'EnrageChanceOtherAnimals', 50,
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "DryMeat",
			'TamingFoodAmount', 30000,
			'TamingMinimumSkill', 7,
			'TamingChance', 50,
			'TamingAggressiveChance', 20,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 138240000,
			'TamedLifetimeMax', 230400000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 20,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Dogs",
			'DailyPregnancyChance', 55,
			'PregnancyDuration', 2880000,
			'GrowDuration', 2880000,
			'NewbornClass', "dog_T4",
			'MinGrownScale', 110,
			'FieldVisibilityCold', 0,
			'FieldVisibilityWarm', 0,
			'MoveSpeedCold', 1000,
			'PlantsToEatMin', 0,
			'PlantsToEatMax', 0,
			'GrazingChance', 3,
			'HerdMergeClass', "Dog",
			'UnitAreaEffect', true,
			'UnitPerkFrenzy', true,
			'AffectRadius', 10000,
			'AffectClass', "UnitAnimal",
			'Effects', {
				PlaceObj('AreaEffectHealthCondition', {
					BodyPart = "HeadBrain",
					BodyPartGroup = "WholeHead",
					HealthCond = "ILU_dog_near_weak",
					HealthCondType = "Buff",
				}),
			},
			'Disabled', function (self)
				return self:IsDead() or self:IsUnconscious()
			end,
			'AffectFilter', function (self, target)
				return target.CombatGroup == self.CombatGroup
					and not target:IsDead()
					and not target:IsUnconscious()
			end,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_2",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Dogs",
			'Id', "dog_T1",
			'object_class', "DogBase",
			'SpeciesGroup', "dogs",
			'RoamRadius', 15000,
			'RoamIntervalMin', 40000,
			'RoamIntervalMax', 120000,
			'composite_part_target', "dog_T1",
			'composite_part_groups', {
				"Dog_GreatDane",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 100,
			'SpawnDefWeight', 20,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 5,
				energy = 5,
				gas = 5,
				pacify = 20,
				piercing = 5,
			},
			'HumanThreat', true,
			'EnrageChance', 5,
			'AttackMemory', 45000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'ButcherDuration', 5000,
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "field_dog_T1",
			'ObservationDistanceMin', 12000,
			'ObservationDistanceMax', 18000,
			'Icon', "UI/Icons/Resources/res_dog_great_dane",
			'DisplayName', T(553816104696, --[[ModItemUnitAnimalCompositeDef dog_T1 DisplayName]] "Cold Dog"),
			'DisplayNamePl', T(467328078820, --[[ModItemUnitAnimalCompositeDef dog_T1 DisplayNamePl]] "Cold Dog"),
			'DisplayNameUnknown', T(156975547716, --[[ModItemUnitAnimalCompositeDef dog_T1 DisplayNameUnknown]] "Unknown Dog Evolution"),
			'DisplayNameUnknownPL', T(170552264066, --[[ModItemUnitAnimalCompositeDef dog_T1 DisplayNameUnknownPL]] "Unknown Dog Evolution"),
			'Description', T(200804568501, --[[ModItemUnitAnimalCompositeDef dog_T1 Description]] "A more aggressive and larger dog. This special species is usually only seen with other species. Unknown the implications or reasons... Deals <color TechSubtitleBlue>Piercing</color> and <color TextNegative>Energy</color> damage."),
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 10000,
					'max_amount', 30000,
				}),
				PlaceObj('ButcherResAmount', {
					'resource', "LeatherRaw",
					'min_amount', 10000,
				}),
			},
			'ChanceToBeMale', 50,
			'BodySize', "small",
			'AnimalPerks', {
				"DraftableAnimal",
				"SmartPredator",
			},
			'radius', 400,
			'pfclass_tamed', 12,
			'pfclass_tamed_lead', 12,
			'EnrageChanceOtherAnimals', 50,
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'Tameable', true,
			'Petable', true,
			'TamingFood', "DryMeat",
			'TamingFoodAmount', 10000,
			'TamingMinimumSkill', 6,
			'TamingChance', 70,
			'TamingAggressiveChance', 5,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 138240000,
			'TamedLifetimeMax', 230400000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 20,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Dogs",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4800000,
			'GrowDuration', 4800000,
			'NewbornClass', "dog_T3",
			'MinGrownScale', 110,
			'FieldVisibilityCold', 0,
			'FieldVisibilityWarm', 0,
			'MoveSpeedCold', 1000,
			'PlantsToEatMin', 0,
			'PlantsToEatMax', 0,
			'GrazingChance', 3,
			'HerdMergeClass', "Dog",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_1",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Heavily_Mutated_PEx_Skarabei_Brute",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "scarabs",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'pfclass', 4,
			'composite_part_groups', {
				"Skarabei_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 1,
			'EventProgressValue', 1000,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 30,
				energy = 90,
				gas = 20,
				pacify = 80,
				piercing = 95,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'DistressCallRange', 5000,
			'SwitchTargetChance', 50,
			'CombatRestrictPFBonus', 250000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'CombatObstructSmart', false,
			'aim_spot', "Aim",
			'CorpseDecayTimeOutside', 1440000,
			'CorpseDecayTimeInside', 2400000,
			'CorpseDecayTimeRefrigerated', 3840000,
			'ButcherDuration', 5000,
			'BloodColor', RGBA(4, 60, 70, 255),
			'max_skinned_decals', 1,
			'FieldResearchTech', "Field_Skarab_T4",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'can_lead_formation', false,
			'Icon', "UI/Icons/Resources/res_skarabei",
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Heavily_Mutated_PEx_Skarabei_Brute DisplayName]] "Heavily Mutated PEx Skarabei Brute"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Heavily_Mutated_PEx_Skarabei_Brute DisplayNamePl]] "Heavily Mutated PEx Skarabei Brute"),
			'DisplayNameUnknown', T(--[[ModItemUnitAnimalCompositeDef Heavily_Mutated_PEx_Skarabei_Brute DisplayNameUnknown]] "Skarabei Final Form?"),
			'DisplayNameUnknownPL', T(--[[ModItemUnitAnimalCompositeDef Heavily_Mutated_PEx_Skarabei_Brute DisplayNameUnknownPL]] "Skarabei Final Form?"),
			'Description', T(791364568593, --[[ModItemUnitAnimalCompositeDef Heavily_Mutated_PEx_Skarabei_Brute Description]] "A Skarabei that has undergone extreme mutations. Poisons and explodes on death. Carapace practically immune to to pierce and energy attacks. Deals <color TextButton>Blunt</color> and <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Skarabei",
			'BaseMaxHealth', 1200000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Omnivore",
			'EatingDuration', 10000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"Plant",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 5000,
				}),
			},
			'can_be_stomped', true,
			'Intelligent', false,
			'SelectionRadius', 100,
			'ChanceToBeMale', 100,
			'BodySize', "small",
			'AnimalPerks', {
				"AP_Fortified",
			},
			'radius', 200,
			'movement_adjust', 2500,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon', "SkarabeiWeapon_PEx",
			'EatIdleAnim', {
				"eat",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "faint",
			'SleepIdleAnim', "faint_Idle",
			'SleepEndAnim', "faint_To_Standing",
			'SleepInterruptedAnim', "faint_To_Standing",
			'ReproductionType', "two sexes",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_4",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Mutated_PEx_Skarabei_Brute",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "scarabs",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'pfclass', 4,
			'composite_part_groups', {
				"Skarabei_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 1,
			'EventProgressValue', 400,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 25,
				energy = 50,
				gas = 20,
				pacify = 60,
				piercing = 80,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'DistressCallRange', 5000,
			'SwitchTargetChance', 50,
			'CombatRestrictPFBonus', 250000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'CombatObstructSmart', false,
			'aim_spot', "Aim",
			'CorpseDecayTimeOutside', 1440000,
			'CorpseDecayTimeInside', 2400000,
			'CorpseDecayTimeRefrigerated', 3840000,
			'ButcherDuration', 5000,
			'BloodColor', RGBA(4, 60, 70, 255),
			'max_skinned_decals', 1,
			'FieldResearchTech', "Field_Skarab_T3",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'can_lead_formation', false,
			'Icon', "UI/Icons/Resources/res_skarabei",
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Mutated_PEx_Skarabei_Brute DisplayName]] "Mutated PEx Skarabei Brute"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Mutated_PEx_Skarabei_Brute DisplayNamePl]] "Mutated PEx Skarabei Brute"),
			'DisplayNameUnknown', T(647760505585, --[[ModItemUnitAnimalCompositeDef Mutated_PEx_Skarabei_Brute DisplayNameUnknown]] "Unknown Skarabei Evolution"),
			'DisplayNameUnknownPL', T(286154528403, --[[ModItemUnitAnimalCompositeDef Mutated_PEx_Skarabei_Brute DisplayNameUnknownPL]] "Unknown Skarabei Evolution"),
			'Description', T(669250918824, --[[ModItemUnitAnimalCompositeDef Mutated_PEx_Skarabei_Brute Description]] "Never thought I would be scared of a single Skarabei, but here we are. Carapace extremely resistant to pierce and energy attacks.  Deals <color TextButton>Blunt</color> and <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Skarabei",
			'BaseMaxHealth', 750000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Omnivore",
			'EatingDuration', 10000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"Plant",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 5000,
				}),
			},
			'can_be_stomped', true,
			'Intelligent', false,
			'SelectionRadius', 100,
			'ChanceToBeMale', 100,
			'BodySize', "small",
			'AnimalPerks', {
				"AP_Fortified",
			},
			'radius', 200,
			'movement_adjust', 2500,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon', "SkarabeiWeapon_PEx",
			'EatIdleAnim', {
				"eat",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "faint",
			'SleepIdleAnim', "faint_Idle",
			'SleepEndAnim', "faint_To_Standing",
			'SleepInterruptedAnim', "faint_To_Standing",
			'ReproductionType', "two sexes",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "PEx_Skarabei_Brute",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "scarabs",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'pfclass', 4,
			'composite_part_groups', {
				"Skarabei_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 1,
			'EventProgressValue', 190,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 20,
				energy = 50,
				gas = 20,
				pacify = 40,
				piercing = 50,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'DistressCallRange', 5000,
			'SwitchTargetChance', 50,
			'CombatRestrictPFBonus', 250000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'CombatObstructSmart', false,
			'aim_spot', "Aim",
			'CorpseDecayTimeOutside', 1440000,
			'CorpseDecayTimeInside', 2400000,
			'CorpseDecayTimeRefrigerated', 3840000,
			'ButcherDuration', 5000,
			'BloodColor', RGBA(4, 60, 70, 255),
			'max_skinned_decals', 1,
			'FieldResearchTech', "Field_Skarab_T1",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'can_lead_formation', false,
			'Icon', "UI/Icons/Resources/res_skarabei",
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei_Brute DisplayName]] "PEx Skarabei Brute"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei_Brute DisplayNamePl]] "PEx Skarabei Brute"),
			'DisplayNameUnknown', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei_Brute DisplayNameUnknown]] "Unknown Skarabei evolution"),
			'DisplayNameUnknownPL', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei_Brute DisplayNameUnknownPL]] "Unknown Skarabei evolution"),
			'Description', T(173524527878, --[[ModItemUnitAnimalCompositeDef PEx_Skarabei_Brute Description]] "These Skarabei are the largest we have observed! But the carapace is stronger than ever. Very resistant to pierce attacks.  Deals <color TextButton>Blunt</color> and <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Skarabei",
			'BaseMaxHealth', 300000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Omnivore",
			'EatingDuration', 10000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"Plant",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 5000,
				}),
			},
			'can_be_stomped', true,
			'Intelligent', false,
			'SelectionRadius', 100,
			'ChanceToBeMale', 100,
			'BodySize', "small",
			'radius', 200,
			'movement_adjust', 2500,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon', "SkarabeiWeapon",
			'EatIdleAnim', {
				"eat",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "faint",
			'SleepIdleAnim', "faint_Idle",
			'SleepEndAnim', "faint_To_Standing",
			'SleepInterruptedAnim', "faint_To_Standing",
			'ReproductionType', "two sexes",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_2",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "PEx_Skarabei",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "scarabs",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'pfclass', 4,
			'composite_part_groups', {
				"Skarabei_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 1,
			'EventProgressValue', 120,
			'SightRange', 15000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 15,
				energy = 15,
				gas = 10,
				pacify = 20,
				piercing = 20,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'DistressCallRange', 5000,
			'SwitchTargetChance', 50,
			'CombatRestrictPFBonus', 250000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'CombatObstructSmart', false,
			'aim_spot', "Aim",
			'CorpseDecayTimeOutside', 1440000,
			'CorpseDecayTimeInside', 2400000,
			'CorpseDecayTimeRefrigerated', 3840000,
			'ButcherDuration', 5000,
			'BloodColor', RGBA(4, 60, 70, 255),
			'max_skinned_decals', 1,
			'FieldResearchTech', "Field_Skarab_T1",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'can_lead_formation', false,
			'Icon', "UI/Icons/Resources/res_skarabei",
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei DisplayName]] "PEx Skarabei"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei DisplayNamePl]] "PEx Skarabei"),
			'DisplayNameUnknown', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei DisplayNameUnknown]] "Unknown Skarabei evolution"),
			'DisplayNameUnknownPL', T(--[[ModItemUnitAnimalCompositeDef PEx_Skarabei DisplayNameUnknownPL]] "Unknown Skarabei evolution"),
			'Description', T(881139664981, --[[ModItemUnitAnimalCompositeDef PEx_Skarabei Description]] "A Skarabei swarm warrior. Poisons and explodes on death. Carapace becoming resistant to pierce and energy attacks. Deals <color TextButton>Blunt</color> and <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Skarabei",
			'BaseMaxHealth', 150000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Omnivore",
			'EatingDuration', 10000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"Plant",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 5000,
				}),
			},
			'can_be_stomped', true,
			'Intelligent', false,
			'SelectionRadius', 100,
			'ChanceToBeMale', 100,
			'BodySize', "small",
			'radius', 200,
			'movement_adjust', 2500,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon', "SkarabeiWeapon",
			'EatIdleAnim', {
				"eat",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "faint",
			'SleepIdleAnim', "faint_Idle",
			'SleepEndAnim', "faint_To_Standing",
			'SleepInterruptedAnim', "faint_To_Standing",
			'ReproductionType', "two sexes",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_1",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "BadTrip_Bloated_Glutch_Stitcher",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "insects",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'RoamRadius', 15000,
			'RoamMaxDist', 7000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 8000,
			'pfclass', 3,
			'composite_part_groups', {
				"Glutch_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 2,
			'EventProgressValue', 1620,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 80,
				energy = 30,
				gas = 95,
				pacify = 80,
				piercing = 5,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'CombatDisengageDist', 40000,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "Field_Glutch_T4",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'lead_priority', 10,
			'Icon', "UI/Icons/Resources/res_glutch_red",
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch_Stitcher DisplayName]] "BadTrip Bloated Glutch Stitcher"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch_Stitcher DisplayNamePl]] "BadTrip Bloated Glutch Stitcher"),
			'DisplayNameUnknown', T(--[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch_Stitcher DisplayNameUnknown]] "Glutch Final Form?"),
			'DisplayNameUnknownPL', T(--[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch_Stitcher DisplayNameUnknownPL]] "Glutch Final Form?"),
			'Description', T(214081077243, --[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch_Stitcher Description]] "This Glutch can repair itself almost instantly. Beware the long term effects of it's attacks! Dedicated firepower to pierce it like a balloon is needed. VERY resistant to gas/blunt attacks. Deals <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Glutch",
			'BaseMaxHealth', 2200000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Herbivore",
			'EatingDuration', 5000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 30000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'DeathWeapon', "GlutchWeapon",
			'AnimalPerks', {
				"AP_Regen",
				"AP_StatDamage",
				"AP_Fortified",
			},
			'radius', 1500,
			'movement_adjust', 1500,
			'attack_weapon', "Glutch_Bad_Trip",
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 100,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Regen_Perfect",
				"Frenzy_Conscious_4",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "BadTrip_Bloated_Glutch",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "insects",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'RoamRadius', 15000,
			'RoamMaxDist', 7000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 8000,
			'pfclass', 3,
			'composite_part_groups', {
				"Glutch_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 2,
			'EventProgressValue', 750,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 5,
				energy = 35,
				gas = 85,
				pacify = 60,
				piercing = 70,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'CombatDisengageDist', 40000,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "Field_Glutch_T3",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'lead_priority', 10,
			'Icon', "UI/Icons/Resources/res_glutch_red",
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch DisplayName]] "BadTrip Bloated Glutch"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch DisplayNamePl]] "BadTrip Bloated Glutch"),
			'DisplayNameUnknown', T(959553155703, --[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch DisplayNameUnknown]] "Unknown Glutch Evolution"),
			'DisplayNameUnknownPL', T(972311943002, --[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch DisplayNameUnknownPL]] "Unknown Glutch Evolution"),
			'Description', T(899293864569, --[[ModItemUnitAnimalCompositeDef BadTrip_Bloated_Glutch Description]] "This species continues to grow almost exponentially. And it's outer shell continues to grow, with their death explosions causing mini-earthquakes. Dedicated firepower to pierce it like a balloon is needed. VERY resistant to gas/blunt attacks. Deals <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Glutch",
			'BaseMaxHealth', 1000000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Herbivore",
			'EatingDuration', 5000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 30000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'DeathWeapon', "GlutchWeapon",
			'AnimalPerks', {
				"AP_Regen",
				"AP_StatDamage",
				"AP_Fortified",
			},
			'radius', 1500,
			'movement_adjust', 1500,
			'attack_weapon', "Glutch_Bad_Trip",
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 100,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 98,
			'FrenzyEffects', {
				"Frenzy_Regen",
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Bloated_Glutch",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "insects",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'RoamRadius', 15000,
			'RoamMaxDist', 7000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 8000,
			'pfclass', 3,
			'composite_part_groups', {
				"Glutch_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 2,
			'EventProgressValue', 390,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 60,
				energy = 20,
				gas = 75,
				pacify = 40,
				piercing = 5,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'CombatDisengageDist', 40000,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldGlutch",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'lead_priority', 10,
			'Icon', "UI/Icons/Resources/res_glutch_red",
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Bloated_Glutch DisplayName]] "Bloated Glutch"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Bloated_Glutch DisplayNamePl]] "Bloated Glutch"),
			'DisplayNameUnknown', T(391697098875, --[[ModItemUnitAnimalCompositeDef Bloated_Glutch DisplayNameUnknown]] "Unknown Glutch Evolution"),
			'DisplayNameUnknownPL', T(302967091218, --[[ModItemUnitAnimalCompositeDef Bloated_Glutch DisplayNameUnknownPL]] "Unknown Glutch Evolution"),
			'Description', T(879688403975, --[[ModItemUnitAnimalCompositeDef Bloated_Glutch Description]] "Retaining their regenerative properties, but are immensely bulkier than their last species. Dedicated firepower to pierce it like a balloon is needed. VERY resistant to gas/blunt attacks. Deals <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Glutch",
			'BaseMaxHealth', 500000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Herbivore",
			'EatingDuration', 5000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 30000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'DeathWeapon', "GlutchWeapon",
			'AnimalPerks', {
				"AP_Regen",
			},
			'radius', 1500,
			'movement_adjust', 1500,
			'attack_weapon', "GlutchWeapon",
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 100,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Regen",
				"Frenzy_Conscious_2",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Glutch_Stitcher",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "insects",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'RoamRadius', 15000,
			'RoamMaxDist', 7000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 8000,
			'pfclass', 3,
			'composite_part_groups', {
				"Glutch_Manhunting",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 2,
			'EventProgressValue', 175,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 30,
				energy = 20,
				gas = 75,
				pacify = 20,
				piercing = 0,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'CombatDisengageDist', 40000,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldGlutch",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'lead_priority', 10,
			'Icon', "UI/Icons/Resources/res_glutch_red",
			'DisplayName', T(302321161779, --[[ModItemUnitAnimalCompositeDef Glutch_Stitcher DisplayName]] "Glutch Stitcher"),
			'DisplayNamePl', T(165059518040, --[[ModItemUnitAnimalCompositeDef Glutch_Stitcher DisplayNamePl]] "Glutch Stitcher"),
			'DisplayNameUnknown', T(857757081108, --[[ModItemUnitAnimalCompositeDef Glutch_Stitcher DisplayNameUnknown]] "Unknown Glutch Evolution"),
			'DisplayNameUnknownPL', T(667700344725, --[[ModItemUnitAnimalCompositeDef Glutch_Stitcher DisplayNameUnknownPL]] "Unknown Glutch Evolution"),
			'Description', T(152349153102, --[[ModItemUnitAnimalCompositeDef Glutch_Stitcher Description]] "These Glutches are able to regenerate their wounds. Must be due to thier skin being largely gasseous. Dedicated firepower to pierce it like a balloon is needed. VERY resistant to gas/blunt attacks. Deals <color TextPositive>Gas</color> damage."),
			'fx_actor_base_class', "Glutch",
			'FoodResources', {
				"FoodAnimalHerbivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Herbivore",
			'EatingDuration', 5000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 30000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'DeathWeapon', "GlutchWeapon",
			'AnimalPerks', {
				"AP_Regen",
			},
			'radius', 1500,
			'movement_adjust', 1500,
			'attack_weapon', "GlutchWeapon",
			'IntimidationRange', 10000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 100,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_1",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Frenzied_Fortified_Bomber_Dragonfly",
			'object_class', "DragonflyBase",
			'SpeciesGroup', "insects",
			'RoamMinDist', 5000,
			'RoamMaxDist', 40000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 10000,
			'composite_part_groups', {
				"Dragonfly",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 630,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 20,
				energy = 20,
				gas = 20,
				pacify = 60,
				piercing = 20,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'EnrageChance', 5,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "Field_Dragonfly_T2",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'SkipTesting', true,
			'Icon', "UI/Icons/Resources/res_dragonfly",
			'DisplayName', T(406188342891, --[[ModItemUnitAnimalCompositeDef Frenzied_Fortified_Bomber_Dragonfly DisplayName]] "Frenzied Fortified Bomber Deathfly"),
			'DisplayNamePl', T(923848022936, --[[ModItemUnitAnimalCompositeDef Frenzied_Fortified_Bomber_Dragonfly DisplayNamePl]] "Frenzied Fortified Bomber Deathfly"),
			'DisplayNameUnknown', T(991372140381, --[[ModItemUnitAnimalCompositeDef Frenzied_Fortified_Bomber_Dragonfly DisplayNameUnknown]] "Hummingfly Final Form?"),
			'DisplayNameUnknownPL', T(273592225259, --[[ModItemUnitAnimalCompositeDef Frenzied_Fortified_Bomber_Dragonfly DisplayNameUnknownPL]] "Hummingfly Final Form?"),
			'Description', T(565205596293, --[[ModItemUnitAnimalCompositeDef Frenzied_Fortified_Bomber_Dragonfly Description]] "These Dragonflys have improved defensive capabilities, including it's wings. Generally harder to bring down by any weaponry. Deals <color TextNegative>Energy</color> damage."),
			'BaseMaxHealth', 800000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 8000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'AnimalPerks', {
				"AP_Frenzy",
			},
			'radius', 1000,
			'attack_weapon', "Dragonfly_bomb",
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
				"idle_Active2",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 90,
			'FlightMinPitch', -2700,
			'FlightMaxPitch', 2700,
			'FlightMaxRoll', 3600,
			'FlightYawRotToRoll', 150,
			'FlightDecelDist', 6000,
			'FlightSimHeightMax', 6000,
			'FlightSimFrictionXY', 30,
			'FlightSimAttract', 2000,
			'FlightSimLift', 1000,
			'FlightSimMaxLift', 5000,
			'FlightSimWeight', 1000,
			'FlightSimMinStep', 5000,
			'FlightSimMaxStep', 20000,
			'FlightSimDecelDist', 20000,
			'FlightSimSplineErr', 1000,
			'FlightSlopePenalty', 500,
			'FlightMinObstacleHeight', 1050,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Frenzied_Bomber_Dragonfly",
			'object_class', "DragonflyBase",
			'SpeciesGroup', "insects",
			'RoamMinDist', 5000,
			'RoamMaxDist', 40000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 10000,
			'composite_part_groups', {
				"Dragonfly",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 250,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 15,
				energy = 15,
				gas = 15,
				pacify = 40,
				piercing = 15,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'EnrageChance', 5,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "Field_Dragonfly_T2",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'SkipTesting', true,
			'Icon', "UI/Icons/Resources/res_dragonfly",
			'DisplayName', T(508102423796, --[[ModItemUnitAnimalCompositeDef Frenzied_Bomber_Dragonfly DisplayName]] "Bomber Deathfly"),
			'DisplayNamePl', T(126098911780, --[[ModItemUnitAnimalCompositeDef Frenzied_Bomber_Dragonfly DisplayNamePl]] "Bomber Deathfly"),
			'DisplayNameUnknown', T(470610819090, --[[ModItemUnitAnimalCompositeDef Frenzied_Bomber_Dragonfly DisplayNameUnknown]] "Unknown Hummingfly Evolution"),
			'DisplayNameUnknownPL', T(570355189261, --[[ModItemUnitAnimalCompositeDef Frenzied_Bomber_Dragonfly DisplayNameUnknownPL]] "Unknown Hummingfly Evolution"),
			'Description', T(898906357328, --[[ModItemUnitAnimalCompositeDef Frenzied_Bomber_Dragonfly Description]] "A Dragonfly who's spit splashes everywhere, we must split up when attacked by these creatures! Deals <color TextNegative>Energy</color> damage."),
			'BaseMaxHealth', 40000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 8000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'AnimalPerks', {
				"AP_Frenzy",
			},
			'radius', 1000,
			'attack_weapon', "Dragonfly_bomb",
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
				"idle_Active2",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 90,
			'FlightMinPitch', -2700,
			'FlightMaxPitch', 2700,
			'FlightMaxRoll', 3600,
			'FlightYawRotToRoll', 150,
			'FlightDecelDist', 6000,
			'FlightSimHeightMax', 6000,
			'FlightSimFrictionXY', 30,
			'FlightSimAttract', 2000,
			'FlightSimLift', 1000,
			'FlightSimMaxLift', 5000,
			'FlightSimWeight', 1000,
			'FlightSimMinStep', 5000,
			'FlightSimMaxStep', 20000,
			'FlightSimDecelDist', 20000,
			'FlightSimSplineErr', 1000,
			'FlightSlopePenalty', 500,
			'FlightMinObstacleHeight', 1050,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_2",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Frenzied_Dragonfly",
			'object_class', "DragonflyBase",
			'SpeciesGroup', "insects",
			'RoamMinDist', 5000,
			'RoamMaxDist', 40000,
			'RoamIntervalMin', 4000,
			'RoamIntervalMax', 10000,
			'composite_part_groups', {
				"Dragonfly",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 80,
			'SightRange', 10000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 0,
				energy = 0,
				gas = 0,
				pacify = 20,
				piercing = 0,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'EnrageChance', 5,
			'BloodColor', RGBA(119, 184, 211, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldHummingfly",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'SkipTesting', true,
			'Icon', "UI/Icons/Resources/res_dragonfly",
			'DisplayName', T(827606296623, --[[ModItemUnitAnimalCompositeDef Frenzied_Dragonfly DisplayName]] "Deathfly"),
			'DisplayNamePl', T(740187821407, --[[ModItemUnitAnimalCompositeDef Frenzied_Dragonfly DisplayNamePl]] "Deathfly"),
			'DisplayNameUnknown', T(284440498649, --[[ModItemUnitAnimalCompositeDef Frenzied_Dragonfly DisplayNameUnknown]] "Unknown Hummingfly Evolution"),
			'DisplayNameUnknownPL', T(238166120256, --[[ModItemUnitAnimalCompositeDef Frenzied_Dragonfly DisplayNameUnknownPL]] "Unknown Hummingfly Evolution"),
			'Description', T(524852674837, --[[ModItemUnitAnimalCompositeDef Frenzied_Dragonfly Description]] "A Hummingfly that has evolved to be able to spit their Greek Fireballs faster, named Dragonfly. Deals <color TextNegative>Energy</color> damage."),
			'BaseMaxHealth', 20000,
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 10000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 8000,
				}),
			},
			'SelectionRadius', 1250,
			'BodySize', "small",
			'AnimalPerks', {
				"AP_Frenzy",
			},
			'radius', 1000,
			'attack_weapon', "DragonflyRanged",
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
				"idle_Active2",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'MinGrownScale', 70,
			'MaxGrownScale', 90,
			'FlightMinPitch', -2700,
			'FlightMaxPitch', 2700,
			'FlightMaxRoll', 3600,
			'FlightYawRotToRoll', 150,
			'FlightDecelDist', 6000,
			'FlightSimHeightMax', 6000,
			'FlightSimFrictionXY', 30,
			'FlightSimAttract', 2000,
			'FlightSimLift', 1000,
			'FlightSimMaxLift', 5000,
			'FlightSimWeight', 1000,
			'FlightSimMinStep', 5000,
			'FlightSimMaxStep', 20000,
			'FlightSimDecelDist', 20000,
			'FlightSimSplineErr', 1000,
			'FlightSlopePenalty', 500,
			'FlightMinObstacleHeight', 1050,
			'UnitPerkFrenzy', true,
			'FrenzyEffects', {
				"Frenzy_Conscious_1",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Spellsword_Tecatli",
			'object_class', "TecatliBase",
			'BypassTrapsChance', 90,
			'composite_part_target', "Spellsword_Tecatli",
			'composite_part_groups', {
				"Tecatli",
			},
			'EventProgressValue', 1400,
			'SpawnDefWeight', 60,
			'CombatGroup', "Insects",
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 30,
				energy = 80,
				gas = 75,
				pacify = 80,
				piercing = 40,
			},
			'HumanThreat', true,
			'FieldResearchTech', "Field_Tecatli_T4",
			'Icon', "UI/Icons/Resources/res_tecatli",
			'DisplayName', T(586792446004, --[[ModItemUnitAnimalCompositeDef Spellsword_Tecatli DisplayName]] "Spellsword Tecatli"),
			'DisplayNamePl', T(726261985535, --[[ModItemUnitAnimalCompositeDef Spellsword_Tecatli DisplayNamePl]] "Spellsword Tecatli"),
			'DisplayNameUnknown', T(961709341942, --[[ModItemUnitAnimalCompositeDef Spellsword_Tecatli DisplayNameUnknown]] "Tecatli Final Form?"),
			'DisplayNameUnknownPL', T(520953085215, --[[ModItemUnitAnimalCompositeDef Spellsword_Tecatli DisplayNameUnknownPL]] "Tecatli Final Form?"),
			'Description', T(563977516885, --[[ModItemUnitAnimalCompositeDef Spellsword_Tecatli Description]] "When this creature hits you, good luck ever feeling the same! Deals <color TextNegative>Energy</color> and <color TextPositive>Gas</color> damage."),
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
				"FoodAnimalHerbivore",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 20000,
					'max_amount', 30000,
				}),
			},
			'AnimalPerks', {
				"DraftableAnimal",
				"AP_StatDamage",
				"AP_Fortified",
			},
			'attack_weapon', "tecatli_spellsword",
			'anim_idle', {
				"idle",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'Tameable', true,
			'TamingMinimumSkill', 9,
			'TamingChance', 25,
			'TamingAggressiveChance', 50,
			'TamingDistance', 20000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 10,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Tecatli",
			'DailyPregnancyChance', 50,
			'PregnancyDuration', 2880000,
			'GrowDuration', 2880000,
			'NewbornClass', "Spellsword_Tecatli",
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Intelligent_Tecatli",
			'object_class', "TecatliBase",
			'BypassTrapsChance', 90,
			'composite_part_target', "Intelligent_Tecatli",
			'composite_part_groups', {
				"Tecatli",
			},
			'EventProgressValue', 750,
			'SpawnDefWeight', 60,
			'CombatGroup', "Insects",
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 45,
				energy = 45,
				gas = 40,
				pacify = 60,
				piercing = 15,
			},
			'HumanThreat', true,
			'FieldResearchTech', "Field_Tecatli_T2",
			'Icon', "UI/Icons/Resources/res_tecatli",
			'DisplayName', T(375005765624, --[[ModItemUnitAnimalCompositeDef Intelligent_Tecatli DisplayName]] "Intelligent Tecatli"),
			'DisplayNameUnknown', T(996042991236, --[[ModItemUnitAnimalCompositeDef Intelligent_Tecatli DisplayNameUnknown]] "Unknown Tecatli Evolution"),
			'DisplayNameUnknownPL', T(429405169305, --[[ModItemUnitAnimalCompositeDef Intelligent_Tecatli DisplayNameUnknownPL]] "Unknown Tecatli Evolution"),
			'Description', T(329787477205, --[[ModItemUnitAnimalCompositeDef Intelligent_Tecatli Description]] "This species has evolved to be smaller, and with that extra energy it's brain is able to process information much better! Deals <color TextNegative>Energy</color> and <color TextPositive>Gas</color> damage."),
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
				"FoodAnimalHerbivore",
			},
			'DailyEatingAmount', 4000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 20000,
					'max_amount', 30000,
				}),
			},
			'AnimalPerks', {
				"DraftableAnimal",
				"AP_Fortified",
			},
			'attack_weapon', "TecatliWeapon",
			'anim_idle', {
				"idle",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'Tameable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 8,
			'TamingChance', 40,
			'TamingAggressiveChance', 20,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Tecatli",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 3360000,
			'GrowDuration', 3360000,
			'NewbornClass', "Spellsword_Tecatli",
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Heat_Reinforced_Tecatli",
			'object_class', "TecatliBase",
			'composite_part_target', "Heat_Reinforced_Tecatli",
			'composite_part_groups', {
				"Tecatli",
			},
			'EventProgressValue', 450,
			'SpawnDefWeight', 60,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 30,
				energy = 30,
				gas = 15,
				pacify = 30,
				piercing = 15,
			},
			'HumanThreat', true,
			'FieldResearchTech', "Field_Tecatli_T2",
			'Icon', "UI/Icons/Resources/res_tecatli",
			'DisplayName', T(440729338139, --[[ModItemUnitAnimalCompositeDef Heat_Reinforced_Tecatli DisplayName]] "Heat Reinforced Tecatli"),
			'DisplayNamePl', T(966238638017, --[[ModItemUnitAnimalCompositeDef Heat_Reinforced_Tecatli DisplayNamePl]] "Heat Reinforced Tecatli"),
			'DisplayNameUnknown', T(880956780545, --[[ModItemUnitAnimalCompositeDef Heat_Reinforced_Tecatli DisplayNameUnknown]] "Unknown Tecatli Evolution"),
			'DisplayNameUnknownPL', T(265627096139, --[[ModItemUnitAnimalCompositeDef Heat_Reinforced_Tecatli DisplayNameUnknownPL]] "Unknown Tecatli Evolution"),
			'Description', T(942702596531, --[[ModItemUnitAnimalCompositeDef Heat_Reinforced_Tecatli Description]] "This creature radiates heat. Deals <color TextNegative>Energy</color> and <color TextPositive>Gas</color> damage."),
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
				"FoodAnimalHerbivore",
			},
			'DailyEatingAmount', 3000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 20000,
					'max_amount', 30000,
				}),
			},
			'ChanceToBeMale', 33,
			'AnimalPerks', {
				"DraftableAnimal",
				"AP_Fortified",
			},
			'attack_weapon', "TecatliWeapon",
			'anim_idle', {
				"idle",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'Tameable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 5,
			'TamingChance', 50,
			'TamingAggressiveChance', 20,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Tecatli",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 3840000,
			'GrowDuration', 3840000,
			'NewbornClass', "Intelligent_Tecatli",
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Entombed_Tecatli",
			'object_class', "TecatliBase",
			'composite_part_target', "Entombed_Tecatli",
			'composite_part_groups', {
				"Tecatli",
			},
			'EventProgressValue', 150,
			'SpawnDefWeight', 60,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 30,
				energy = 15,
				gas = 15,
				pacify = 15,
				piercing = 15,
			},
			'HumanThreat', true,
			'FieldResearchTech', "FieldTecatli",
			'Icon', "UI/Icons/Resources/res_tecatli",
			'DisplayName', T(947892632261, --[[ModItemUnitAnimalCompositeDef Entombed_Tecatli DisplayName]] "Entombed Tecatli"),
			'DisplayNamePl', T(343349551885, --[[ModItemUnitAnimalCompositeDef Entombed_Tecatli DisplayNamePl]] "Entombed Tecatli"),
			'DisplayNameUnknown', T(244909361783, --[[ModItemUnitAnimalCompositeDef Entombed_Tecatli DisplayNameUnknown]] "Unknown Tecatli Evolution"),
			'DisplayNameUnknownPL', T(793178284453, --[[ModItemUnitAnimalCompositeDef Entombed_Tecatli DisplayNameUnknownPL]] "Unknown Tecatli Evolution"),
			'Description', T(581609748142, --[[ModItemUnitAnimalCompositeDef Entombed_Tecatli Description]] "This species has gotten much bulkier... I hope we can pierce it's new hide. Deals <color TextNegative>Energy</color> and <color TextPositive>Gas</color> damage."),
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
				"FoodAnimalHerbivore",
			},
			'DailyEatingAmount', 2000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 20000,
					'max_amount', 30000,
				}),
			},
			'AnimalPerks', {
				"DraftableAnimal",
			},
			'attack_weapon', "TecatliWeapon",
			'anim_idle', {
				"idle",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'Tameable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 5,
			'TamingChance', 60,
			'TamingAggressiveChance', 30,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Tecatli",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4320000,
			'GrowDuration', 4320000,
			'NewbornClass', "Heat_Reinforced_Tecatli",
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Desert",
			'Id', "Tecatli",
			'object_class', "TecatliBase",
			'SpeciesGroup', "hoofed",
			'RoamIntervalMin', 2000,
			'RoamIntervalMax', 3000,
			'pfclass', 3,
			'composite_part_groups', {
				"Tecatli",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 8,
			'EventProgressValue', 40,
			'CombatGroup', "Tecatli",
			'EnrageChance', 5,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'max_skinned_decals_low', -2,
			'FieldResearchTech', "FieldTecatli",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'Icon', "UI/Icons/Resources/res_tecatli",
			'DisplayName', T(517233761524, --[[ModItemUnitAnimalCompositeDef Tecatli DisplayName]] "Tecatli"),
			'DisplayNamePl', T(683043160191, --[[ModItemUnitAnimalCompositeDef Tecatli DisplayNamePl]] "Tecatlies"),
			'Description', T(627214810685, --[[ModItemUnitAnimalCompositeDef Tecatli Description]] "Hunts during the night. Small chance to retaliate when attacked."),
			'BaseMaxHealth', 50000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
				"FoodAnimalHerbivore",
			},
			'DailyEatingAmount', 1000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 20000,
					'max_amount', 30000,
				}),
			},
			'SelectionRadius', 2000,
			'ChanceToBeMale', 33,
			'BodySize', "medium",
			'AnimalPerks', {
				"DraftableAnimal",
			},
			'radius', 1000,
			'collision_radius_mod', 1500,
			'pfclass_tamed', 10,
			'pfclass_tamed_lead', 13,
			'attack_weapon', "TecatliWeapon",
			'anim_idle', {
				"idle",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'Tameable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 20000,
			'TamingMinimumSkill', 5,
			'TamingChance', 70,
			'TamingAggressiveChance', 50,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 92160000,
			'TamedLifetimeMax', 138240000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Tecatli",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4800000,
			'GrowDuration', 4800000,
			'NewbornClass', "Entombed_Tecatli",
			'MinNewbornScale', 35,
			'MaxNewbornScale', 35,
			'MinGrownScale', 65,
			'MaxGrownScale', 75,
			'RoamRadiusStarving', 50000,
			'SightRangeStarving', 40000,
			'MovementSpeedStarving', 1250,
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Temperate",
			'Id', "VenomousRaptors",
			'object_class', "TecatliBase",
			'SpeciesGroup', "hoofed",
			'RoamIntervalMin', 2000,
			'RoamIntervalMax', 3000,
			'BypassTrapsChance', 50,
			'pfclass', 3,
			'composite_part_target', "VenomousRaptorPX",
			'composite_part_groups', {
				"Tecatli",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 8,
			'EventProgressValue', 80,
			'SpawnDefWeight', 60,
			'SightRange', 60000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 10,
				energy = 10,
				gas = 100,
				pacify = 20,
				piercing = 10,
			},
			'EnrageChance', 50,
			'EnrageChanceCooldown', 30000,
			'DistressEnrageChance', 70,
			'DistressEnrageCount', 5,
			'DistressCallRange', 25000,
			'DistressCallRangeFirst', 25000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'ButcherDuration', 80000,
			'FieldResearchTech', "FieldTecatli",
			'ObservationDistanceMin', 17000,
			'ObservationDistanceMax', 21000,
			'Icon', "UI/Icons/Resources/res_tecatli",
			'DisplayName', T(634903365979, --[[ModItemUnitAnimalCompositeDef VenomousRaptors DisplayName]] "Venomous Raptor"),
			'DisplayNamePl', T(355114956419, --[[ModItemUnitAnimalCompositeDef VenomousRaptors DisplayNamePl]] "Venomous Raptors"),
			'DisplayNameUnknown', T(633557471551, --[[ModItemUnitAnimalCompositeDef VenomousRaptors DisplayNameUnknown]] "Unknown Tecatli Evolution"),
			'DisplayNameUnknownPL', T(416990062940, --[[ModItemUnitAnimalCompositeDef VenomousRaptors DisplayNameUnknownPL]] "Unknown Tecatli Evolution"),
			'Description', T(207143499342, --[[ModItemUnitAnimalCompositeDef VenomousRaptors Description]] "Hunts during the night. Is an aggressive sub-species of the Tecatli. Has venomous glands and good awareness, appears to be quite intelligent. Has good defense to poison and gas chemicals, however is weak against piercing, blunt, energy and pacify attacks. If tamed can bring meat from hunting wildlife.  Deals <color TextNegative>Energy</color> and <color TextPositive>Gas</color> damage."),
			'BaseMaxHealth', 250000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
				"FoodAnimalHerbivore",
			},
			'DailyEatingAmount', 1000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeat",
					'min_amount', 30000,
					'max_amount', 40000,
				}),
			},
			'SelectionRadius', 2000,
			'ChanceToBeMale', 40,
			'BodySize', "medium",
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "RawMeatPoultry",
					'amount', 35000,
				}),
			},
			'ProduceResInterval', 960000,
			'AnimalPerks', {
				"DraftableAnimal",
				"BloodFrenzy",
				"SmartPredator",
			},
			'radius', 1000,
			'pfclass_tamed', 10,
			'pfclass_tamed_lead', 13,
			'attack_weapon', "VenomousRaptor",
			'IntimidationRange', 20000,
			'anim_idle', {
				"idle",
			},
			'anim_idle_playful', {
				"idle_Playfull",
				"idle_Playfull2",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'Tameable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 40000,
			'TamingMinimumSkill', 5,
			'TamingChance', 70,
			'TamingAggressiveChance', 30,
			'TamingDistance', 15000,
			'TamedLifetimeMin', 96000000,
			'TamedLifetimeMax', 3840000000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4800000,
			'GrowDuration', 4800000,
			'NewbornClass', "Tecatli",
			'MinNewbornScale', 35,
			'MaxNewbornScale', 35,
			'MinGrownScale', 65,
			'MaxGrownScale', 75,
			'RoamRadiusStarving', 50000,
			'SightRangeStarving', 40000,
			'MovementSpeedStarving', 1250,
			'NestDestroyedRange', 50000,
			'FrenzyHealthPct', 80,
			'FrenzyEffects', {},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Rage_Focused_Scissorhands",
			'object_class', "Scissorhands",
			'EventProgressValue', 1755,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 70,
				energy = 75,
				gas = 35,
				pacify = 80,
				piercing = 35,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Scissorhands_T4",
			'lead_priority', 12,
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Rage_Focused_Scissorhands DisplayName]] "Rage Focused Scissorhands"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Rage_Focused_Scissorhands DisplayNamePl]] "Rage Focused Scissorhands"),
			'DisplayNameUnknown', T(880517562689, --[[ModItemUnitAnimalCompositeDef Rage_Focused_Scissorhands DisplayNameUnknown]] "Scissorhands Final Form?"),
			'DisplayNameUnknownPL', T(561720327903, --[[ModItemUnitAnimalCompositeDef Rage_Focused_Scissorhands DisplayNameUnknownPL]] "Scissorhands Final Form?"),
			'Description', T(992494208410, --[[ModItemUnitAnimalCompositeDef Rage_Focused_Scissorhands Description]] "The blades have been honed to near perfection. If our armour does not block the attack; it will surely cut through our body like a hot knife through butter. Able to deftly dodge blunt force, and dissapates any energy attacks with ease. Deals <color TextSubtitleBlue>Piercing</color> damage."),
			'BaseMaxHealth', 1300000,
			'DailyEatingAmount', 5000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 40000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 45000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"StoneDigger",
				"DraftableAnimal",
				"AP_Frenzy",
			},
			'attack_weapon', "Scissorhands_duelist",
			'TamingMinimumSkill', 8,
			'TamingChance', 25,
			'DailyPregnancyChance', 50,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'NewbornClass', "Rage_Focused_Scissorhands",
			'MinNewbornScale', 60,
			'MaxNewbornScale', 60,
			'MinGrownScale', 115,
			'MaxGrownScale', 120,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_4",
				"Frenzy_Conscious_Perfect",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Brutal_Duelist_Scissorhands",
			'object_class', "Scissorhands",
			'EventProgressValue', 350,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'HitNegationChance', {
				blunt = 30,
				energy = 30,
				gas = 15,
				pacify = 40,
				piercing = 15,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Scissorhands_T2",
			'lead_priority', 12,
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayName]] "Brutal Scissorhand Duelist"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayNamePl]] "Brutal Scissorhand Duelist"),
			'DisplayNameUnknown', T(568883049640, --[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayNameUnknown]] "Unknown Scissorhands Evolution"),
			'DisplayNameUnknownPL', T(183266165907, --[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands DisplayNameUnknownPL]] "Unknown Scissorhands Evolution"),
			'Description', T(810154241954, --[[ModItemUnitAnimalCompositeDef Brutal_Duelist_Scissorhands Description]] "Blades that are honed by attacking or defending from other Scissorhands. If this blade touches us, it will be more likely to deal critical wounds. Able to deftly dodge blunt force, and dissapates any energy attacks with ease. Deals <color TextSubtitleBlue>Piercing</color> damage."),
			'BaseMaxHealth', 400000,
			'DailyEatingAmount', 3000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 40000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 45000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"StoneDigger",
				"DraftableAnimal",
			},
			'attack_weapon', "ScissorhandsMelee_Brute",
			'TamingChance', 60,
			'DailyPregnancyChance', 55,
			'PregnancyDuration', 3840000,
			'GrowDuration', 3840000,
			'NewbornClass', "Rage_Fueled_Scissorhand_Duelist",
			'MinNewbornScale', 60,
			'MaxNewbornScale', 60,
			'MinGrownScale', 115,
			'MaxGrownScale', 120,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_2",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Rage_Fueled_Scissorhand_Duelist",
			'object_class', "Scissorhands",
			'EventProgressValue', 700,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 50,
				energy = 50,
				gas = 25,
				pacify = 60,
				piercing = 25,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Scissorhands_T2",
			'lead_priority', 12,
			'DisplayName', T(531860184462, --[[ModItemUnitAnimalCompositeDef Rage_Fueled_Scissorhand_Duelist DisplayName]] "Rage Fueled Scissorhand Duelist"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Rage_Fueled_Scissorhand_Duelist DisplayNamePl]] "Scissorhands demolishers"),
			'DisplayNameUnknown', T(119769262102, --[[ModItemUnitAnimalCompositeDef Rage_Fueled_Scissorhand_Duelist DisplayNameUnknown]] "Unknown Scissorhands Evolution"),
			'DisplayNameUnknownPL', T(657436726773, --[[ModItemUnitAnimalCompositeDef Rage_Fueled_Scissorhand_Duelist DisplayNameUnknownPL]] "Unknown Scissorhands Evolution"),
			'Description', T(156199244050, --[[ModItemUnitAnimalCompositeDef Rage_Fueled_Scissorhand_Duelist Description]] "This species is much more focused on killing than others. Able to deftly dodge blunt force, and dissapates any energy attacks with ease. Deals <color TextSubtitleBlue>Piercing</color> damage."),
			'BaseMaxHealth', 800000,
			'DailyEatingAmount', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 40000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 45000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"StoneDigger",
				"DraftableAnimal",
			},
			'attack_weapon', "Scissorhands_duelist_rage",
			'DailyPregnancyChance', 65,
			'PregnancyDuration', 2880000,
			'GrowDuration', 2880000,
			'NewbornClass', "Rage_Focused_Scissorhands",
			'MinNewbornScale', 60,
			'MaxNewbornScale', 60,
			'MinGrownScale', 115,
			'MaxGrownScale', 120,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_Perfect",
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Juno",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "insects",
			'RoamRadius', 10000,
			'BypassTrapsChance', 90,
			'pfclass', 5,
			'composite_part_groups', {
				"Juno",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 9,
			'EventProgressValue', 250,
			'SpawnDefWeight', 5,
			'SpawnTags', set( "Boss" ),
			'CombatGroup', "Insects",
			'CombatHostile', true,
			'AttackMemory', 45000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'aim_spot', "Aim",
			'ButcherDuration', 20000,
			'BloodColor', RGBA(4, 60, 70, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldJuno",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'lead_priority', 5,
			'Icon', "UI/Icons/Resources/res_juno",
			'DisplayName', T(462402603600, --[[ModItemUnitAnimalCompositeDef Juno DisplayName]] "Juno"),
			'DisplayNamePl', T(886155905930, --[[ModItemUnitAnimalCompositeDef Juno DisplayNamePl]] "Junos"),
			'Description', T(403495234672, --[[ModItemUnitAnimalCompositeDef Juno Description]] "Large highly-intelligent insect that moves incredibly quick, avoids traps and deals immense damage to structures."),
			'BaseMaxHealth', 150000,
			'FoodResources', {
				"RawMeatHuman",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 1000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'FoodSourceClasses', {
				"ResourcePile",
				"UnitCorpse",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 50000,
				}),
			},
			'SelectionRadius', 2000,
			'ChanceToBeMale', 75,
			'BodySize', "large",
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 50000,
				}),
			},
			'ProduceResInterval', 1920000,
			'CmdProduceResources', function (animal)
				if not animal:IsTamed() then return animal:UpdateProductionTime() end
				return animal:DoProduceResources()
			end,
			'AnimalPerks', {
				"StoneDigger",
				"SmartPredator",
				"DraftableAnimal",
			},
			'radius', 1200,
			'collision_radius_mod', 1250,
			'movement_adjust', 750,
			'pfclass_tamed', 11,
			'pfclass_tamed_lead', 14,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon', "JunoMelee",
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
				"idle_Active2",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'TamingFood', "RawMeatHuman",
			'TamingFoodAmount', 10000,
			'TamingMinimumSkill', 5,
			'TamingChance', 70,
			'TamingAggressiveChance', 20,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 184320000,
			'TamedLifetimeMax', 322560000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Junos",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4800000,
			'GrowDuration', 4800000,
			'NewbornClass', "Juno_Brute",
			'MinGrownScale', 70,
			'MaxGrownScale', 90,
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Juno_Brute",
			'object_class', "Juno",
			'EventProgressValue', 500,
			'lead_priority', 6,
			'DisplayName', T(700763245375, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayName]] "Juno demolisher"),
			'DisplayNamePl', T(195660478051, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayNamePl]] "Juno demolishers"),
			'DisplayNameUnknown', T(159439380678, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayNameUnknown]] "Large horned insect"),
			'DisplayNameUnknownPL', T(362184721654, --[[ModItemUnitAnimalCompositeDef Juno_Brute DisplayNameUnknownPL]] "Large horned insect"),
			'BaseMaxHealth', 300000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 75000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 75000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"BloodFrenzy",
				"SmartPredator",
				"StoneDigger",
				"DraftableAnimal",
			},
			'attack_weapon', "JunoMelee_Brute",
			'TamingChance', 60,
			'NewbornClass', "Angry_Juno",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 70,
			'FrenzyChance', 50,
			'FrenzyDuration', 80000,
			'FrenzyCooldown', 40000,
			'FrenzyEffects', {
				"JunoFrenzy",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Angry_Juno",
			'object_class', "Juno",
			'EventProgressValue', 900,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'HitNegationChance', {
				blunt = 15,
				energy = 15,
				gas = 15,
				pacify = 20,
				piercing = 15,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Juno_T2",
			'ForcedApproachPlanning', true,
			'lead_priority', 6,
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayName]] "Angry Juno"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayNamePl]] "Angry Juno"),
			'DisplayNameUnknown', T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayNameUnknown]] "Unknown Juno Evolution"),
			'DisplayNameUnknownPL', T(--[[ModItemUnitAnimalCompositeDef Angry_Juno DisplayNameUnknownPL]] "Unknown Juno Evolution"),
			'Description', T(191163878118, --[[ModItemUnitAnimalCompositeDef Angry_Juno Description]] "This Juno's species has focused it's biology on killing, and identifying what needs to be killed next. Low defenses, high damage. Deals <color TextButton>Blunt</color> damage."),
			'BaseMaxHealth', 500000,
			'DailyEatingAmount', 2000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 75000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 75000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"BloodFrenzy",
				"SmartPredator",
				"StoneDigger",
				"DraftableAnimal",
			},
			'attack_weapon', "JunoMelee_Brute",
			'DailyPregnancyChance', 75,
			'PregnancyDuration', 3840000,
			'GrowDuration', 3840000,
			'NewbornClass', "Hulk_Juno",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"JunoFrenzy",
				"Frenzy_Conscious_2",
				"Frenzy_Fast",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Hulk_Juno",
			'object_class', "Juno",
			'EventProgressValue', 1100,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'HitNegationChance', {
				blunt = 30,
				energy = 30,
				gas = 30,
				pacify = 40,
				piercing = 30,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Juno_T2",
			'ForcedApproachPlanning', true,
			'lead_priority', 6,
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayName]] "Hulk Juno"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayNamePl]] "Hulk Juno"),
			'DisplayNameUnknown', T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayNameUnknown]] "Unknown Juno Evolution"),
			'DisplayNameUnknownPL', T(--[[ModItemUnitAnimalCompositeDef Hulk_Juno DisplayNameUnknownPL]] "Unknown Juno Evolution"),
			'Description', T(453181849768, --[[ModItemUnitAnimalCompositeDef Hulk_Juno Description]] "Somehow, this creature is even more aggressive than the last. Thankfully evolution has not deemed defenses to be a high priority. Low defenses, high damage. Deals <color TextButton>Blunt</color> damage."),
			'BaseMaxHealth', 1200000,
			'DailyEatingAmount', 3000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 75000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 75000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"BloodFrenzy",
				"SmartPredator",
				"StoneDigger",
				"DraftableAnimal",
				"AP_Regen",
				"AP_Frenzy",
			},
			'attack_weapon', "Juno_Hulk",
			'TamingChance', 40,
			'DailyPregnancyChance', 65,
			'PregnancyDuration', 2880000,
			'GrowDuration', 2880000,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyChance', 200,
			'FrenzyEffects', {
				"JunoFrenzy",
				"Frenzy_Regen",
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Too_Angry_Too_Die_Juno",
			'object_class', "Juno",
			'EventProgressValue', 1500,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'HitNegationChance', {
				blunt = 35,
				energy = 35,
				gas = 35,
				pacify = 60,
				piercing = 35,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Juno_T4",
			'ForcedApproachPlanning', true,
			'lead_priority', 6,
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayName]] "Too-Angry-Too-Die Juno"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayNamePl]] "Too-Angry-Too-Die Juno"),
			'DisplayNameUnknown', T(434314719262, --[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayNameUnknown]] "Unknown Juno Evolution"),
			'DisplayNameUnknownPL', T(397893098380, --[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno DisplayNameUnknownPL]] "Unknown Juno Evolution"),
			'Description', T(967813562361, --[[ModItemUnitAnimalCompositeDef Too_Angry_Too_Die_Juno Description]] "Impossible to be knocked unconscious or pacified, our only option is to cause enough damage to render their bodies impossible to move. Deals <color TextButton>Blunt</color> damage."),
			'BaseMaxHealth', 1800000,
			'DailyEatingAmount', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 75000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 75000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"BloodFrenzy",
				"SmartPredator",
				"StoneDigger",
				"DraftableAnimal",
				"AP_Fast",
				"AP_Frenzy",
				"AP_Regen",
			},
			'attack_weapon', "Juno_Hulk",
			'TamingChance', 40,
			'DailyPregnancyChance', 75,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'NewbornClass', "Junoskar",
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"JunoFrenzy",
				"Frenzy_Conscious_4",
				"Frenzy_Conscious_Perfect",
				"Frenzy_Regen",
				"Frenzy_Fast",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Junoskar",
			'object_class', "UnitAnimal",
			'SpeciesGroup', "insects",
			'RoamRadius', 10000,
			'BypassTrapsChance', 80,
			'pfclass', 5,
			'composite_part_groups', {
				"Junoskar",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 9,
			'EventProgressValue', 3000,
			'SpawnDefWeight', 30,
			'SightRange', 50000,
			'CombatGroup', "Insects",
			'HitNegationChance', {
				blunt = 60,
				energy = 60,
				gas = 60,
				pacify = 80,
				piercing = 60,
			},
			'HumanThreat', true,
			'AttackMemory', 45000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'aim_spot', "Aim",
			'ButcherDuration', 160000,
			'BloodColor', RGBA(9, 179, 12, 255),
			'FieldResearchTech', "Field_Juno_T4",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'Icon', "UI/Icons/Resources/res_juno",
			'DisplayName', T(165312950418, --[[ModItemUnitAnimalCompositeDef Junoskar DisplayName]] "Junoskar"),
			'DisplayNamePl', T(228230442862, --[[ModItemUnitAnimalCompositeDef Junoskar DisplayNamePl]] "Junoskar's"),
			'DisplayNameUnknown', T(644425790231, --[[ModItemUnitAnimalCompositeDef Junoskar DisplayNameUnknown]] "Juno's Final Form?"),
			'DisplayNameUnknownPL', T(285674502291, --[[ModItemUnitAnimalCompositeDef Junoskar DisplayNameUnknownPL]] "Juno's Final Form?"),
			'Description', T(651746830861, --[[ModItemUnitAnimalCompositeDef Junoskar Description]] "It appears to be a Juno, however is much larger in size, different in color and definitely scarier. Upon closer examination these things have the most deadliest strike that can inflict a deadly poison, capable of killing a Human in seconds. Deals <color TextButton>Blunt</color> damage."),
			'BaseMaxHealth', 3000000,
			'FoodResources', {
				"RawMeatHuman",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 5000,
			'Diet', "Carnivore",
			'EatingDuration', 4000,
			'FoodSourceClasses', {
				"ResourcePile",
				"UnitCorpse",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 280000,
				}),
			},
			'SelectionRadius', 2000,
			'ChanceToBeMale', 75,
			'BodySize', "large",
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Ore",
					'amount', 100000,
				}),
			},
			'ProduceResInterval', 1920000,
			'CmdProduceResources', function (animal)
				if not animal:IsTamed() then return animal:UpdateProductionTime() end
				return animal:DoProduceResources()
			end,
			'AnimalPerks', {
				"StoneDigger",
				"BloodFrenzy",
				"DraftableAnimal",
				"AP_Frenzy",
				"AP_Regen",
				"AP_Conc_Immune",
			},
			'radius', 1200,
			'movement_adjust', 750,
			'pfclass_tamed', 11,
			'pfclass_tamed_lead', 14,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon', "Junoskar",
			'CombatSkill', 10,
			'IntimidationRange', 25000,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
				"idle_Active2",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'TamingFood', "RawMeatHuman",
			'TamingFoodAmount', 10000,
			'TamingMinimumSkill', 8,
			'TamingChance', 25,
			'TamingAggressiveChance', 30,
			'TamingDistance', 20000,
			'TamedLifetimeMin', 1876800000,
			'TamedLifetimeMax', 4795200000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Junoskar",
			'DailyPregnancyChance', 50,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'NewbornClass', "Junoskar",
			'MinGrownScale', 70,
			'MaxGrownScale', 90,
			'UnitPerkFrenzy', true,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"JunoFrenzy",
				"Frenzy_Regen",
				"Frenzy_Conscious_Perfect",
				"Frenzy_Fast",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Shrieker_Manhunting",
			'object_class', "ShriekerBase",
			'SpeciesGroup', "insects",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'RoamRadius', 10000,
			'composite_part_groups', {
				"Shrieker_Manhunting",
			},
			'PainMask', "PainMask",
			'EventProgressValue', 45,
			'SpawnDefWeight', 20,
			'SpawnTags', set( "Boss" ),
			'CombatGroup', "Insects",
			'CombatHostile', true,
			'HitNegationChance', {
				piercing = 20,
			},
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'BloodColor', RGBA(4, 60, 70, 255),
			'max_skinned_decals', 3,
			'FieldResearchTech', "FieldShrieker",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'lead_priority', 15,
			'Icon', "UI/Icons/Resources/res_shrieker",
			'DisplayName', T(329148512487, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting DisplayName]] "Shrieker"),
			'DisplayNamePl', T(259457015709, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting DisplayNamePl]] "Shriekers"),
			'Description', T(873438453556, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting Description]] "This semi-intelligent nesting insect shoots spikes from its tail from wide distance."),
			'fx_actor_base_class', "Shrieker",
			'BaseMaxHealth', 50000,
			'FoodResources', {
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 1000,
			'Diet', "Carnivore",
			'EatingDuration', 10000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 15000,
				}),
			},
			'SelectionRadius', 1100,
			'ChanceToBeMale', 100,
			'BodySize', "medium",
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 20000,
				}),
			},
			'ProduceResInterval', 1920000,
			'CmdProduceResources', function (animal)
				if not animal:IsTamed() then return animal:UpdateProductionTime() end
				return animal:DoProduceResources()
			end,
			'AnimalPerks', {
				"StoneDigger",
				"DraftableAnimal",
			},
			'collision_radius_mod', 1400,
			'movement_adjust', 500,
			'pfclass_tamed', 11,
			'pfclass_tamed_lead', 14,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon_alt', "ShriekerMelee",
			'CombatSkill', 3,
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interupted",
			'Tameable', true,
			'TamingFood', "RawMeatPoultry",
			'TamingFoodAmount', 10000,
			'TamingMinimumSkill', 5,
			'TamingChance', 70,
			'TamingAggressiveChance', 20,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 138240000,
			'TamedLifetimeMax', 230400000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Shriekers",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4800000,
			'GrowDuration', 4800000,
			'NewbornClass', "Entropic_Shrieker",
			'MinGrownScale', 90,
			'MaxGrownScale', 110,
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Shrieker_Manhunting_Mother",
			'object_class', "Shrieker_Manhunting",
			'UnitTags', set( "Animal" ),
			'pfclass', 3,
			'EventProgressValue', 250,
			'SpawnDefWeight', 5,
			'HitNegationChance', {
				piercing = 33,
			},
			'DistressCallRange', 25000,
			'DistressCallRangeFirst', 25000,
			'max_skinned_decals', 5,
			'max_skinned_decals_low', -1,
			'lead_priority', 20,
			'DisplayName', T(819462614663, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayName]] "Shrieker broodmother"),
			'DisplayNamePl', T(984740461354, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayNamePl]] "Shrieker broodmothers"),
			'DisplayNameUnknown', T(295145608180, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayNameUnknown]] "Huge spike-tailed insect"),
			'DisplayNameUnknownPL', T(298716553110, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother DisplayNameUnknownPL]] "Huge spike-tailed insects"),
			'Description', T(715853256017, --[[ModItemUnitAnimalCompositeDef Shrieker_Manhunting_Mother Description]] "The queen of the Shrieker swarm spreads pheromones that agitate most insects and make them move quicker."),
			'BaseMaxHealth', 200000,
			'FoodSourceClasses', {
				"UnitCorpse",
				"ResourcePile",
				"Plant",
				"AnimalFeeder",
			},
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 50000,
				}),
			},
			'SelectionRadius', 600,
			'ChanceToBeMale', 0,
			'BodySize', "large",
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "CarbonNanotubes",
					'amount', 20000,
				}),
			},
			'ProduceResInterval', 2880000,
			'AnimalPerks', {
				"CarbonNanoGlands",
				"AgitatingPheromones",
				"DraftableAnimal",
			},
			'movement_adjust', 400,
			'can_run', false,
			'pfclass_tamed', 10,
			'CombatSkill', 5,
			'IntimidationRange', 25000,
			'TamedLifetimeMin', 184320000,
			'TamedLifetimeMax', 322560000,
			'MinGrownScale', 140,
			'MaxGrownScale', 150,
			'UnitAreaEffect', true,
			'AffectRadius', 25000,
			'AffectClass', "UnitAnimal",
			'Effects', {
				PlaceObj('AreaEffectHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "BroodMotherNearby",
					HealthCondType = "Buff",
				}),
			},
			'Disabled', function (self)
				return self:IsDead() or self:IsUnconscious()
			end,
			'AffectFilter', function (self, target)
				return target.CombatGroup == self.CombatGroup
					and target:HasUnitTag("AgitatedByPheromones")
					and not target:IsDead()
					and not target:IsUnconscious()
			end,
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Entropic_Shrieker",
			'object_class', "Shrieker_Manhunting",
			'EventProgressValue', 750,
			'SpawnDefWeight', 30,
			'SpawnTags', set(),
			'CombatHostile', false,
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 10,
				energy = 10,
				gas = 10,
				pacify = 40,
				piercing = 50,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Shrieker_T2",
			'lead_priority', 6,
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayName]] "Entropic Shrieker"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayNamePl]] "Entropic Shrieker"),
			'DisplayNameUnknown', T(507956053632, --[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayNameUnknown]] "Unknown Shrieker Evolution"),
			'DisplayNameUnknownPL', T(458576588964, --[[ModItemUnitAnimalCompositeDef Entropic_Shrieker DisplayNameUnknownPL]] "Unknown Shrieker Evolution"),
			'Description', T(322528609672, --[[ModItemUnitAnimalCompositeDef Entropic_Shrieker Description]] "Shrieker's who have evolved long barbed spikes. Resistant to piercing attacks, the barbs fully pierce and lodge in nearby terrain, lowering movement speed. Deals <color TextButton>Blunt</color> and <color TextSubtitleBlue>Piercing</color> damage."),
			'BaseMaxHealth', 400000,
			'DailyEatingAmount', 2000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 75000,
				}),
			},
			'ChanceToBeMale', 50,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 75000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"BloodFrenzy",
				"SmartPredator",
				"StoneDigger",
				"DraftableAnimal",
			},
			'attack_weapon', "shriker_range_move",
			'TamingChance', 60,
			'DailyPregnancyChance', 55,
			'PregnancyDuration', 3840000,
			'GrowDuration', 3840000,
			'NewbornClass', "Plague_Sniper_Shrieker",
			'UnitAreaEffect', true,
			'UnitPerkFrenzy', true,
			'AffectRadius', 25000,
			'AffectClass', "UnitAnimal",
			'Effects', {
				PlaceObj('AreaEffectHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "BroodMotherNearby",
					HealthCondType = "Buff",
				}),
			},
			'Disabled', function (self)
				return self:IsDead() or self:IsUnconscious()
			end,
			'AffectFilter', function (self, target)
				return target.CombatGroup == self.CombatGroup
					and target:HasUnitTag("AgitatedByPheromones")
					and not target:IsDead()
					and not target:IsUnconscious()
			end,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_2",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Plague_Sniper_Shrieker",
			'object_class', "Shrieker_Manhunting",
			'EventProgressValue', 1100,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 25,
				energy = 15,
				gas = 15,
				pacify = 60,
				piercing = 55,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Shrieker_T2",
			'lead_priority', 6,
			'DisplayName', T(--[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayName]] "Plague Sniper Shrieker"),
			'DisplayNamePl', T(--[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayNamePl]] "Plague Sniper Shrieker"),
			'DisplayNameUnknown', T(632905210618, --[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayNameUnknown]] "Unknown Shrieker Evolution"),
			'DisplayNameUnknownPL', T(256115533630, --[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker DisplayNameUnknownPL]] "Unknown Shrieker Evolution"),
			'Description', T(197605412242, --[[ModItemUnitAnimalCompositeDef Plague_Sniper_Shrieker Description]] "Attacks that slow, and longer range than even our upgraded railguns. All while their durability has increased.... Thankfully still weak to energy and gas weapons. Deals <color TextButton>Blunt</color> and <color TextSubtitleBlue>Piercing</color> damage."),
			'BaseMaxHealth', 600000,
			'DailyEatingAmount', 3000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 75000,
				}),
			},
			'ChanceToBeMale', 50,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 75000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"SmartPredator",
				"StoneDigger",
				"DraftableAnimal",
			},
			'attack_weapon', "shriker_range_long",
			'TamingChance', 50,
			'DailyPregnancyChance', 65,
			'PregnancyDuration', 2880000,
			'GrowDuration', 2880000,
			'NewbornClass', "Sniping_Entropy_Shielded_Shrieker",
			'UnitAreaEffect', true,
			'UnitPerkFrenzy', true,
			'AffectRadius', 25000,
			'AffectClass', "UnitAnimal",
			'Effects', {
				PlaceObj('AreaEffectHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "BroodMotherNearby",
					HealthCondType = "Buff",
				}),
			},
			'Disabled', function (self)
				return self:IsDead() or self:IsUnconscious()
			end,
			'AffectFilter', function (self, target)
				return target.CombatGroup == self.CombatGroup
					and target:HasUnitTag("AgitatedByPheromones")
					and not target:IsDead()
					and not target:IsUnconscious()
			end,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Conscious_3",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Sniping_Entropy_Shielded_Shrieker",
			'object_class', "Shrieker_Manhunting",
			'EventProgressValue', 2000,
			'SpawnDefWeight', 30,
			'CombatHostile', false,
			'CombatUseCover', true,
			'HitNegationChance', {
				blunt = 75,
				energy = 25,
				gas = 50,
				pacify = 80,
				piercing = 90,
			},
			'HumanThreat', true,
			'RobotThreat', true,
			'FieldResearchTech', "Field_Shrieker_T4",
			'lead_priority', 6,
			'DisplayName', T(219852402884, --[[ModItemUnitAnimalCompositeDef Sniping_Entropy_Shielded_Shrieker DisplayName]] "Sniping Entropic Shielded Shrieker"),
			'DisplayNamePl', T(394183373238, --[[ModItemUnitAnimalCompositeDef Sniping_Entropy_Shielded_Shrieker DisplayNamePl]] "Sniping Entropic Shielded Shrieker"),
			'DisplayNameUnknown', T(358521198402, --[[ModItemUnitAnimalCompositeDef Sniping_Entropy_Shielded_Shrieker DisplayNameUnknown]] "Unknown Shrieker Evolution"),
			'DisplayNameUnknownPL', T(224838244446, --[[ModItemUnitAnimalCompositeDef Sniping_Entropy_Shielded_Shrieker DisplayNameUnknownPL]] "Unknown Shrieker Evolution"),
			'Description', T(919946988433, --[[ModItemUnitAnimalCompositeDef Sniping_Entropy_Shielded_Shrieker Description]] "A regenerating, long range, durable Shrieker. The only thing that can reliably hit them are energy weapons, filling their sealed exoskeleton with energy. Deals <color TextButton>Blunt</color> and <color TextSubtitleBlue>Piercing</color> damage."),
			'BaseMaxHealth', 1000000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 75000,
				}),
			},
			'ChanceToBeMale', 50,
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 75000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"SmartPredator",
				"StoneDigger",
				"DraftableAnimal",
				"AP_Fortified",
				"AP_Regen",
			},
			'TamingMinimumSkill', 8,
			'TamingChance', 25,
			'DailyPregnancyChance', 50,
			'PregnancyDuration', 1920000,
			'GrowDuration', 1920000,
			'NewbornClass', "Sniping_Entropy_Shielded_Shrieker",
			'UnitAreaEffect', true,
			'UnitPerkFrenzy', true,
			'AffectRadius', 25000,
			'AffectClass', "UnitAnimal",
			'Effects', {
				PlaceObj('AreaEffectHealthCondition', {
					BodyPartGroup = "WholeBody",
					HealthCond = "BroodMotherNearby",
					HealthCondType = "Buff",
				}),
			},
			'Disabled', function (self)
				return self:IsDead() or self:IsUnconscious()
			end,
			'AffectFilter', function (self, target)
				return target.CombatGroup == self.CombatGroup
					and target:HasUnitTag("AgitatedByPheromones")
					and not target:IsDead()
					and not target:IsUnconscious()
			end,
			'FrenzyHealthPct', 99,
			'FrenzyEffects', {
				"Frenzy_Regen",
				"Frenzy_Conscious_4",
			},
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Scissorhands",
			'object_class', "GroundAnimal",
			'SpeciesGroup', "insects",
			'UnitTags', set( "AgitatedByPheromones", "Animal" ),
			'RoamRadius', 10000,
			'pfclass', 5,
			'composite_part_groups', {
				"Scissorhands",
			},
			'PainMask', "PainMask",
			'SpecialOrientation', 2,
			'EventProgressValue', 90,
			'SpawnDefWeight', 10,
			'SpawnTags', set( "Boss" ),
			'SightRange', 25000,
			'HearingRange', 2500,
			'CombatGroup', "Insects",
			'CombatHostile', true,
			'CombatRestrictPFBonus', 50000,
			'CombatGiveUpNoHit', 30000,
			'CombatFleeAccuracy', 0,
			'aim_spot', "Aim",
			'BloodColor', RGBA(4, 60, 70, 255),
			'max_skinned_decals_low', -1,
			'FieldResearchTech', "FieldScissorhands",
			'ObservationDistanceMin', 500,
			'ObservationDistanceMax', 1500,
			'lead_priority', 11,
			'Icon', "UI/Icons/Resources/res_scissorhands",
			'DisplayName', T(549254988897, --[[ModItemUnitAnimalCompositeDef Scissorhands DisplayName]] "Scissorhands"),
			'DisplayNamePl', T(460750445860, --[[ModItemUnitAnimalCompositeDef Scissorhands DisplayNamePl]] "Scissorhands"),
			'Description', T(279773210327, --[[ModItemUnitAnimalCompositeDef Scissorhands Description]] "Large highly-intelligent insect."),
			'fx_actor_base_class', "Scissorhands",
			'FoodResources', {
				"FoodAnimalHerbivore",
				"FoodAnimalCarnivore",
				"Slop",
			},
			'DailyEatingAmount', 1000,
			'Diet', "Omnivore",
			'EatingDuration', 4000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 25000,
				}),
			},
			'SelectionRadius', 1500,
			'ChanceToBeMale', 50,
			'BodySize', "large",
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 30000,
				}),
			},
			'ProduceResInterval', 1920000,
			'CmdProduceResources', function (animal)
				if not animal:IsTamed() then return animal:UpdateProductionTime() end
				return animal:DoProduceResources()
			end,
			'AnimalPerks', {
				"StoneDigger",
				"DraftableAnimal",
			},
			'radius', 1000,
			'collision_radius_mod', 1200,
			'pfclass_tamed', 11,
			'pfclass_tamed_lead', 14,
			'EnrageChanceOtherAnimals', 100,
			'attack_weapon', "ScissorhandsMelee",
			'EatStartAnim', "eat_Start",
			'EatIdleAnim', {
				"eat_Idle",
			},
			'EatEndAnim', "eat_End",
			'anim_idle', {
				"idle",
				"idle_Active",
				"idle_Active2",
			},
			'anim_idle_nervous', {
				"idle_Nervous",
			},
			'SleepStartAnim', "sleep_Start",
			'SleepIdleAnim', "sleep_Idle",
			'SleepEndAnim', "sleep_End",
			'SleepInterruptedAnim', "sleep_Interrupted",
			'Tameable', true,
			'TamingFood', "RawMeat",
			'TamingFoodAmount', 10000,
			'TamingMinimumSkill', 5,
			'TamingChance', 70,
			'TamingAggressiveChance', 20,
			'TamingDistance', 10000,
			'TamedLifetimeMin', 184320000,
			'TamedLifetimeMax', 322560000,
			'CombatSkillInitial', range(5, 6),
			'BondingChance', 5,
			'ReproductionType', "two sexes",
			'ReproductionGroup', "Scissorhands",
			'DailyPregnancyChance', 45,
			'PregnancyDuration', 4800000,
			'GrowDuration', 4800000,
			'NewbornClass', "Scissorhands_Brute",
			'MinGrownScale', 100,
			'MaxGrownScale', 110,
		}),
		PlaceObj('ModItemUnitAnimalCompositeDef', {
			'Group', "Insects",
			'Id', "Scissorhands_Brute",
			'object_class', "Scissorhands",
			'EventProgressValue', 180,
			'lead_priority', 12,
			'DisplayName', T(803640083458, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayName]] "Scissorhands demolisher"),
			'DisplayNamePl', T(381190689622, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayNamePl]] "Scissorhands demolishers"),
			'DisplayNameUnknown', T(587799246476, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayNameUnknown]] "Huge purple mantis"),
			'DisplayNameUnknownPL', T(531570130410, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute DisplayNameUnknownPL]] "Huge purple mantises"),
			'BaseMaxHealth', 200000,
			'ButcherResources', {
				PlaceObj('ButcherResAmount', {
					'resource', "RawMeatInsect",
					'min_amount', 40000,
				}),
			},
			'ProduceResources', {
				PlaceObj('ResAmount', {
					'resource', "Stone",
					'amount', 45000,
				}),
			},
			'ProduceResInterval', 2400000,
			'AnimalPerks', {
				"StrongAnimal",
				"StoneDigger",
				"DraftableAnimal",
			},
			'attack_weapon', "ScissorhandsMelee_Brute",
			'NewbornClass', "Brutal_Duelist_Scissorhands",
			'MinNewbornScale', 60,
			'MaxNewbornScale', 60,
			'MinGrownScale', 115,
			'MaxGrownScale', 120,
		}),
		}),
	PlaceObj('ModItemUnitAnimalCompositeDef', {
		'Group', "Insects",
		'Id', "Shrieker_Mother",
		'object_class', "Shrieker_Manhunting_Mother",
		'RoamIntervalMin', 40000,
		'RoamIntervalMax', 80000,
		'composite_part_target', "Shrieker_Manhunting_Mother",
		'DisplayName', T(592887288483, --[[ModItemUnitAnimalCompositeDef Shrieker_Mother DisplayName]] "Nesting shrieker broodmother"),
		'DisplayNamePl', T(150549696800, --[[ModItemUnitAnimalCompositeDef Shrieker_Mother DisplayNamePl]] "Nesting shrieker broodmothers"),
		'UnitNesting', true,
		'CanBeNestGuardian', "always",
	}),
	PlaceObj('ModItemUnitAnimalCompositeDef', {
		'Group', "Insects",
		'Id', "Scissorhands_Nesting_1",
		'object_class', "GroundAnimal",
		'SpeciesGroup', "insects",
		'UnitTags', set( "AgitatedByPheromones", "Animal" ),
		'RoamRadius', 10000,
		'pfclass', 5,
		'composite_part_target', "Scissorhands",
		'composite_part_groups', {
			"Scissorhands",
		},
		'PainMask', "PainMask",
		'SpecialOrientation', 2,
		'EventProgressValue', 90,
		'SpawnDefWeight', 10,
		'SpawnTags', set( "Boss" ),
		'SightRange', 25000,
		'HearingRange', 2500,
		'CombatGroup', "Insects",
		'CombatHostile', true,
		'CombatRestrictPFBonus', 50000,
		'CombatGiveUpNoHit', 30000,
		'CombatFleeAccuracy', 0,
		'aim_spot', "Aim",
		'BloodColor', RGBA(4, 60, 70, 255),
		'max_skinned_decals_low', -1,
		'FieldResearchTech', "FieldScissorhands",
		'ObservationDistanceMin', 500,
		'ObservationDistanceMax', 1500,
		'lead_priority', 11,
		'Icon', "UI/Icons/Resources/res_scissorhands",
		'DisplayName', T(282850352588, --[[ModItemUnitAnimalCompositeDef Scissorhands_Nesting_1 DisplayName]] "Scissorhands"),
		'DisplayNamePl', T(855408200427, --[[ModItemUnitAnimalCompositeDef Scissorhands_Nesting_1 DisplayNamePl]] "Scissorhands"),
		'Description', T(641150827518, --[[ModItemUnitAnimalCompositeDef Scissorhands_Nesting_1 Description]] "Large highly-intelligent insect."),
		'fx_actor_base_class', "Scissorhands",
		'FoodResources', {
			"FoodAnimalHerbivore",
			"FoodAnimalCarnivore",
			"Slop",
		},
		'DailyEatingAmount', 10000,
		'Diet', "Omnivore",
		'EatingDuration', 4000,
		'ButcherResources', {
			PlaceObj('ButcherResAmount', {
				'resource', "RawMeatInsect",
				'min_amount', 25000,
			}),
		},
		'SelectionRadius', 1500,
		'ChanceToBeMale', 50,
		'BodySize', "large",
		'ProduceResources', {
			PlaceObj('ResAmount', {
				'resource', "Stone",
				'amount', 30000,
			}),
		},
		'ProduceResInterval', 1920000,
		'CmdProduceResources', function (animal)
			if not animal:IsTamed() then return animal:UpdateProductionTime() end
			return animal:DoProduceResources()
		end,
		'AnimalPerks', {
			"StoneDigger",
			"DraftableAnimal",
		},
		'radius', 1000,
		'collision_radius_mod', 1200,
		'pfclass_tamed', 11,
		'pfclass_tamed_lead', 14,
		'EnrageChanceOtherAnimals', 100,
		'attack_weapon', "ScissorhandsMelee",
		'EatStartAnim', "eat_Start",
		'EatIdleAnim', {
			"eat_Idle",
		},
		'EatEndAnim', "eat_End",
		'anim_idle', {
			"idle",
			"idle_Active",
			"idle_Active2",
		},
		'anim_idle_nervous', {
			"idle_Nervous",
		},
		'SleepStartAnim', "sleep_Start",
		'SleepIdleAnim', "sleep_Idle",
		'SleepEndAnim', "sleep_End",
		'SleepInterruptedAnim', "sleep_Interrupted",
		'Tameable', true,
		'TamingFood', "RawMeat",
		'TamingFoodAmount', 10000,
		'TamingMinimumSkill', 5,
		'TamingChance', 50,
		'TamingAggressiveChance', 20,
		'TamingDistance', 10000,
		'TamedLifetimeMin', 184320000,
		'TamedLifetimeMax', 322560000,
		'CombatSkillInitial', range(1, 3),
		'BondingChance', 5,
		'ReproductionType', "two sexes",
		'ReproductionGroup', "Scissorhands",
		'NewbornClass', "Scissorhands_Brute",
		'MinGrownScale', 100,
		'MaxGrownScale', 110,
		'UnitNesting', true,
		'CanBeNestGuardian', true,
	}),
	PlaceObj('ModItemUnitAnimalCompositeDef', {
		'Group', "Insects",
		'Id', "Scissorhands_Brute_Nesting_1",
		'object_class', "Scissorhands",
		'composite_part_target', "Scissorhands_Brute",
		'EventProgressValue', 180,
		'lead_priority', 12,
		'DisplayName', T(862409597776, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayName]] "Scissorhands demolisher"),
		'DisplayNamePl', T(225616689551, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayNamePl]] "Scissorhands demolishers"),
		'DisplayNameUnknown', T(284618171634, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayNameUnknown]] "Huge purple mantis"),
		'DisplayNameUnknownPL', T(789645003181, --[[ModItemUnitAnimalCompositeDef Scissorhands_Brute_Nesting_1 DisplayNameUnknownPL]] "Huge purple mantises"),
		'BaseMaxHealth', 200000,
		'ButcherResources', {
			PlaceObj('ButcherResAmount', {
				'resource', "RawMeatInsect",
				'min_amount', 40000,
			}),
		},
		'ProduceResources', {
			PlaceObj('ResAmount', {
				'resource', "Stone",
				'amount', 45000,
			}),
		},
		'ProduceResInterval', 2400000,
		'AnimalPerks', {
			"StrongAnimal",
			"StoneDigger",
			"DraftableAnimal",
		},
		'attack_weapon', "ScissorhandsMelee_Brute",
		'MinNewbornScale', 60,
		'MaxNewbornScale', 60,
		'MinGrownScale', 115,
		'MaxGrownScale', 120,
		'UnitNesting', true,
		'CanBeNestGuardian', "always",
	}),
	}),
PlaceObj('ModItemFolder', {
	'name', "Weapons",
	'NameColor', RGBA(129, 100, 100, 255),
}, {
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Shrieker_01",
		AttackAngleTolerance = 420,
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackRange = 30000,
		AttackType = "ranged",
		CritChance = 10,
		CritChanceMaxSkill = 20,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_DeepPuncture",
			}),
		},
		DamageToBuildings = 5000,
		DamageTypes = {
			blunt = true,
			piercing = true,
		},
		HitChance = 50,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_SpikePuncture_move",
			}),
		},
		MinAttackRange = 5000,
		ProjectileEntity = "Shrieker_Projectile",
		ProjectileGravity = true,
		ProjectileSpeed = 20000,
		ProjectileSpeedRand = 10000,
		ProjectileSpot = "Muzzle",
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(236505776839, --[[ModItemWeaponResource shriker_range_move display_name]] "Shrieker Ranged"),
		group = "Weapons_Animal",
		id = "shriker_range_move",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Shrieker_01",
		AttackAngleTolerance = 420,
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackRange = 60000,
		AttackType = "ranged",
		CritChance = 10,
		CritChanceMaxSkill = 20,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_DeepPuncture",
			}),
		},
		DamageToBuildings = 5000,
		DamageTypes = {
			blunt = true,
			piercing = true,
		},
		HitChance = 50,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_SpikePuncture_move",
			}),
		},
		MinAttackRange = 5000,
		ProjectileEntity = "Shrieker_Projectile",
		ProjectileGravity = true,
		ProjectileSpeed = 20000,
		ProjectileSpeedRand = 10000,
		ProjectileSpot = "Muzzle",
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(684715343423, --[[ModItemWeaponResource shriker_range_long display_name]] "Shrieker Ranged"),
		group = "Weapons_Animal",
		id = "shriker_range_long",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Tecatli",
		AttackAngleTolerance = 1200,
		AttackAnim = "attack_Bite",
		AttackAnimAlt = "attack_Tail",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 2400,
		CritChanceMaxSkill = 30,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Bite_Critical",
				weight = 20,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "ShatteredBone_Critical",
				weight = 5,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "BrokenRib_Critical",
				weight = 3,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "CrackedSkull_Critical",
				weight = 1,
			}),
		},
		DamageToBuildings = 10000,
		DamageTypes = {
			energy = true,
			gas = true,
		},
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Bite_Common",
				weight = 20,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "ShatteredBone_Common",
				weight = 5,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "BrokenRib_Common",
				weight = 3,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "CrackedSkull_Common",
				weight = 1,
			}),
		},
		MinAttackRange = 1500,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(206586649871, --[[ModItemWeaponResource TecatliWeapon display_name]] "Tecatli Weapon"),
		group = "Weapons_Animal",
		id = "TecatliWeapon",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "attack_Idle",
		AnimTestEntity = "Juno",
		AttackAngleTolerance = 1200,
		AttackAnimAlt = "attack2",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 4000,
		CritChance = 25,
		CritChanceMaxSkill = 40,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Juno_ShatteredBones",
				weight = 30,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "JunoskarPoison",
				weight = 50,
			}),
		},
		DamageCone = 2400,
		DamageToBuildings = 120000,
		DamageTypes = {
			blunt = true,
		},
		FriendlyFire = false,
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Juno_Slash",
				weight = 20,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "JunoskarPoison",
				weight = 5,
			}),
		},
		MinAttackRange = 2500,
		SortKey = 99990,
		carry_amount = 0,
		color = 4286036179,
		display_name = T(371791208057, --[[ModItemWeaponResource Junoskar display_name]] "Juno Melee"),
		food_entity_color = 4286036179,
		group = "Weapons_Animal",
		id = "Junoskar",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "attack_Idle",
		AnimTestEntity = "Juno",
		AttackAngleTolerance = 1200,
		AttackAnimAlt = "attack2",
		AttackCooldown = 2000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 4000,
		CritChanceMaxSkill = 30,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Juno_ShatteredBones",
			}),
		},
		DamageCone = 2400,
		DamageToBuildings = 40000,
		DamageTypes = {
			blunt = true,
		},
		FriendlyFire = false,
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Juno_Slash",
			}),
		},
		MinAttackRange = 2500,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(234564808169, --[[ModItemWeaponResource Juno_Hulk display_name]] "Juno Melee"),
		group = "Weapons_Animal",
		id = "Juno_Hulk",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "attack_Idle",
		AnimTestEntity = "Sprayer",
		AttackAngleTolerance = 1500,
		AttackAnimAlt = "attack2",
		AttackCooldown = 1500,
		AttackCooldownRand = 10,
		AttackRange = 2000,
		CritChance = 50,
		CritChanceMaxSkill = 80,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_duelist_crit",
			}),
		},
		DamageCone = 2700,
		DamageToBuildings = 20000,
		DamageTypes = {
			piercing = true,
		},
		FriendlyFire = false,
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_duelist",
			}),
		},
		MinAttackRange = 1000,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(718263177291, --[[ModItemWeaponResource Scissorhands_duelist display_name]] "Scissorhands Melee"),
		group = "Weapons_Animal",
		id = "Scissorhands_duelist",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "attack_Idle",
		AnimTestEntity = "Sprayer",
		AttackAngleTolerance = 1500,
		AttackAnimAlt = "attack2",
		AttackCooldown = 1500,
		AttackCooldownRand = 10,
		AttackRange = 2000,
		CritChance = 80,
		CritChanceMaxSkill = 100,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_duelist_crit",
			}),
		},
		DamageCone = 2700,
		DamageToBuildings = 20000,
		DamageTypes = {
			piercing = true,
		},
		FriendlyFire = false,
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_duelist",
			}),
		},
		MinAttackRange = 1000,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(422075041658, --[[ModItemWeaponResource Scissorhands_duelist_rage display_name]] "Scissorhands Melee"),
		group = "Weapons_Animal",
		id = "Scissorhands_duelist_rage",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Tecatli",
		AttackAngleTolerance = 1200,
		AttackAnim = "attack_Bite",
		AttackAnimAlt = "attack_Tail",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 2400,
		CritChance = 25,
		CritChanceMaxSkill = 35,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Bite_Critical",
				weight = 20,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "ShatteredBone_Critical",
				weight = 5,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "BrokenRib_Critical",
				weight = 3,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "CrackedSkull_Critical",
				weight = 1,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Poisoning_2_Moderate",
			}),
		},
		DamageToBuildings = 20000,
		DamageTypes = {
			energy = true,
			gas = true,
		},
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Bite_Common",
				weight = 20,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "ShatteredBone_Common",
				weight = 5,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "BrokenRib_Common",
				weight = 3,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "CrackedSkull_Common",
				weight = 1,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Poisoning_1_Mild",
			}),
		},
		MinAttackRange = 1500,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(242430634126, --[[ModItemWeaponResource VenomousRaptor display_name]] "Venomous Raptor Weapon"),
		group = "Weapons_Animal",
		id = "VenomousRaptor",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Tecatli",
		AttackAngleTolerance = 1200,
		AttackAnim = "attack_Bite",
		AttackAnimAlt = "attack_Tail",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 2400,
		CritChanceMaxSkill = 30,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Tecatli_special_bite_crit",
			}),
		},
		DamageToBuildings = 30000,
		DamageTypes = {
			energy = true,
			gas = true,
		},
		DefaultCritHitEffect = {
			PlaceObj('UnitTagHealthConditionId', {
				'health_condition', "Burn_2",
			}),
		},
		DefaultHitEffect = {
			PlaceObj('UnitTagHealthConditionId', {
				'health_condition', "Burn",
			}),
		},
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Tecatli_special_bite",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Burn_2",
			}),
		},
		MinAttackRange = 1500,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(620828773687, --[[ModItemWeaponResource tecatli_spellsword display_name]] "Tecatli Weapon"),
		group = "Weapons_Animal",
		id = "tecatli_spellsword",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Dragonfly",
		AreaOfEffect = 3000,
		AttackAngleTolerance = 420,
		AttackAnimAlt = "attack2",
		AttackCooldown = 2000,
		AttackCooldownMaxSkill = 2000,
		AttackRange = 10000,
		AttackType = "ranged",
		CritChance = 1,
		CritChanceMaxSkill = 5,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Dragonfly_AcidBurn",
			}),
		},
		DamageToBuildings = 5000,
		DamageTypes = {
			energy = true,
		},
		HitChance = 50,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Dragonfly_AcidSpit",
			}),
		},
		MinAttackRange = 5000,
		ProjectileEntity = "Dragonfly_Projectile",
		ProjectileGravity = true,
		ProjectileSpeed = 20000,
		ProjectileSpeedRand = 10000,
		ProjectileSpot = "Mouth",
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(281590768957, --[[ModItemWeaponResource Dragonfly_faster_attack display_name]] "Dragonfly Ranged"),
		group = "Weapons_Animal",
		id = "Dragonfly_faster_attack",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Dragonfly",
		AreaOfEffect = 2000,
		AttackAngleTolerance = 420,
		AttackAnimAlt = "attack2",
		AttackCooldown = 2000,
		AttackCooldownMaxSkill = 2000,
		AttackRange = 10000,
		AttackType = "ranged",
		CritChance = 1,
		CritChanceMaxSkill = 5,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Dragonfly_AcidBurn",
			}),
		},
		DamageToBuildings = 15000,
		DamageTypes = {
			energy = true,
		},
		HitChance = 50,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Dragonfly_AcidSpit",
			}),
		},
		MinAttackRange = 5000,
		ProjectileEntity = "Dragonfly_Projectile",
		ProjectileGravity = true,
		ProjectileSpeed = 20000,
		ProjectileSpeedRand = 10000,
		ProjectileSpot = "Mouth",
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(183209530462, --[[ModItemWeaponResource Dragonfly_bomb display_name]] "Dragonfly Ranged"),
		group = "Weapons_Animal",
		id = "Dragonfly_bomb",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Dragonfly",
		AttackAngleTolerance = 420,
		AttackAnimAlt = "attack2",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 3000,
		AttackRange = 10000,
		AttackType = "ranged",
		CritChance = 10,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Dragonfly_AcidBurn",
			}),
		},
		DamageToBuildings = 2000,
		DamageTypes = {
			energy = true,
		},
		HitChance = 50,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Dragonfly_AcidSpit",
			}),
		},
		MinAttackRange = 5000,
		ProjectileEntity = "Dragonfly_Projectile",
		ProjectileGravity = true,
		ProjectileSpeed = 20000,
		ProjectileSpeedRand = 10000,
		ProjectileSpot = "Mouth",
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(389222292916, --[[ModItemWeaponResource DragonflyRanged display_name]] "Dragonfly Ranged"),
		group = "Weapons_Animal",
		id = "DragonflyRanged",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AffectedByCover = false,
		AffectedByDarkness = false,
		AlwaysFace = false,
		AnimTestEntity = "Glutch",
		AttackAngleTolerance = 10800,
		AttackCooldown = 5000,
		AttackCooldownMaxSkill = 5000,
		AttackCooldownRand = 20,
		AttackRange = 3000,
		AttackType = "ranged",
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Glutch_LungDamage",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Tecatli_special_bite_crit",
			}),
		},
		DamageCone = 21600,
		DamageToBuildings = 5000,
		DamageTypes = {
			gas = true,
		},
		FriendlyFire = false,
		HitChance = 100,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Glutch_Bad_Trip",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "",
			}),
		},
		MinAttackRange = 1500,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(567073543804, --[[ModItemWeaponResource Glutch_Bad_Trip display_name]] "Glutch Weapon"),
		group = "Weapons_Animal",
		id = "Glutch_Bad_Trip",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "attack_Idle",
		AnimTestEntity = "Dog_Boxer",
		AttackAngleTolerance = 1200,
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 1300,
		CritChanceMaxSkill = 30,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Bite_Critical",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "ShatteredBone_Critical",
				weight = 5,
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Pneumonia_1_Mild",
			}),
		},
		DamageToBuildings = 5000,
		DamageTypes = {
			energy = true,
			piercing = true,
		},
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "a_frost_bite",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Scratch_Common",
				weight = 5,
			}),
		},
		MinAttackRange = 800,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(990486184391, --[[ModItemWeaponResource DogWeapon display_name]] "Dog Weapon"),
		id = "DogWeapon",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "StagBeetle",
		AttackAngleTolerance = 420,
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 3000,
		AttackRange = 400,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Skarabei_BittenOffFlesh",
			}),
		},
		DamageToBuildings = 4000,
		DamageTypes = {
			blunt = true,
		},
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Skarabei_Bite",
			}),
		},
		MinAttackRange = 200,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(852732458439, --[[ModItemWeaponResource SkarabeiWeapon display_name]] "Skarabei Weapon"),
		group = "Weapons_Animal",
		id = "SkarabeiWeapon",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "StagBeetle",
		AreaOfEffect = 2000,
		AttackAngleTolerance = 420,
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 3000,
		AttackRange = 400,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Skarabei_BittenOffFlesh",
			}),
		},
		DamageToBuildings = 4000,
		DamageTypes = {
			blunt = true,
			gas = true,
		},
		FriendlyFire = false,
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Skarabei_Bite",
			}),
		},
		MinAttackRange = 200,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(808998553251, --[[ModItemWeaponResource SkarabeiWeapon_PEx display_name]] "Skarabei Weapon"),
		group = "Weapons_Animal",
		id = "SkarabeiWeapon_PEx",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AffectedByCover = false,
		AffectedByDarkness = false,
		AnimTestEntity = "StagBeetle",
		AreaOfEffect = 4000,
		AttackType = "ranged",
		CritChance = 25,
		CritChanceMaxSkill = 25,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Skarabei_Explosion",
			}),
		},
		DamageToBuildings = 20000,
		DamageTypes = {
			gas = true,
		},
		HitChance = 100,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Skarabei_Explosion",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "ToxicAir_ShortnessOfBreath",
			}),
		},
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(646504484441, --[[ModItemWeaponResource SkarabeiDeathExplosion display_name]] "Skarabei Weapon"),
		group = "Weapons_Animal",
		id = "SkarabeiDeathExplosion",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Shrieker_01",
		AttackAngleTolerance = 420,
		AttackAnim = "attack2",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 2000,
		CritChanceMaxSkill = 30,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_SpikePuncture",
			}),
		},
		DamageToBuildings = 25000,
		DamageTypes = {
			blunt = true,
			piercing = true,
		},
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_TailStab",
			}),
		},
		MinAttackRange = 900,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(880430966697, --[[ModItemWeaponResource ShriekerMelee display_name]] "Shrieker Melee"),
		group = "Weapons_Animal",
		id = "ShriekerMelee",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Shrieker_01",
		AttackAngleTolerance = 420,
		AttackAnim = "attack2",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 2200,
		CritChance = 30,
		CritChanceMaxSkill = 45,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_DeepPuncture_Move",
			}),
		},
		DamageToBuildings = 100000,
		DamageTypes = {
			blunt = true,
			piercing = true,
		},
		HitChance = 70,
		HitChanceMaxSkill = 90,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_SpikePuncture",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_DeepPuncture",
			}),
		},
		MinAttackRange = 900,
		SortKey = 99991,
		carry_amount = 0,
		display_name = T(838722108649, --[[ModItemWeaponResource ShriekerBruteMelee display_name]] "Shrieker Brute Melee"),
		group = "Weapons_Animal",
		id = "ShriekerBruteMelee",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Shrieker_01",
		AttackAngleTolerance = 420,
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackRange = 24000,
		AttackType = "ranged",
		CritChance = 10,
		CritChanceMaxSkill = 20,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_DeepPuncture",
			}),
		},
		DamageToBuildings = 15000,
		DamageTypes = {
			blunt = true,
			piercing = true,
		},
		HitChance = 50,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_SpikePuncture",
			}),
		},
		MinAttackRange = 6000,
		ProjectileEntity = "Shrieker_Projectile",
		ProjectileGravity = true,
		ProjectileSpeed = 20000,
		ProjectileSpeedRand = 10000,
		ProjectileSpot = "Muzzle",
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(364571407087, --[[ModItemWeaponResource ShriekerRanged display_name]] "Shrieker Ranged"),
		group = "Weapons_Animal",
		id = "ShriekerRanged",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AnimTestEntity = "Shrieker_01",
		AttackAngleTolerance = 420,
		AttackAnim = "attack2",
		AttackCooldown = 3000,
		AttackCooldownMaxSkill = 2000,
		AttackCooldownRand = 20,
		AttackRange = 30000,
		AttackType = "ranged",
		CritChance = 20,
		CritChanceMaxSkill = 30,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_DeepPuncture",
			}),
		},
		DamageToBuildings = 25000,
		DamageTypes = {
			blunt = true,
			piercing = true,
		},
		HitChance = 50,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_SpikePuncture",
			}),
			PlaceObj('HealthConditionOption', {
				effect = "Shrieker_DeepPuncture",
			}),
		},
		MinAttackRange = 5000,
		ProjectileEntity = "Shrieker_Projectile",
		ProjectileGravity = true,
		ProjectileSpeed = 20000,
		ProjectileSpeedRand = 10000,
		ProjectileSpot = "Muzzle",
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(657314098205, --[[ModItemWeaponResource ShriekerBruteRanged display_name]] "Brute Shrieker Ranged"),
		group = "Weapons_Animal",
		id = "ShriekerBruteRanged",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "attack_Idle",
		AnimTestEntity = "Sprayer",
		AttackAngleTolerance = 1500,
		AttackAnimAlt = "attack2",
		AttackCooldown = 1500,
		AttackCooldownRand = 20,
		AttackRange = 2000,
		CritChanceMaxSkill = 30,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_SlashedOffFlesh",
			}),
		},
		DamageCone = 2700,
		DamageToBuildings = 15000,
		DamageTypes = {
			piercing = true,
		},
		FriendlyFire = false,
		HitChance = 70,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_Slash",
			}),
		},
		MinAttackRange = 1000,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(209364954298, --[[ModItemWeaponResource ScissorhandsMelee display_name]] "Scissorhands Melee"),
		group = "Weapons_Animal",
		id = "ScissorhandsMelee",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "attack_Idle",
		AnimTestEntity = "Sprayer",
		AttackAngleTolerance = 1500,
		AttackAnimAlt = "attack2",
		AttackCooldown = 1500,
		AttackCooldownRand = 20,
		AttackRange = 2000,
		CritChance = 35,
		CritChanceMaxSkill = 40,
		CritHitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_SlashedOffFlesh",
			}),
		},
		DamageCone = 2700,
		DamageToBuildings = 35000,
		DamageTypes = {
			piercing = true,
		},
		FriendlyFire = false,
		HitChanceMaxSkill = 100,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "Scissorhands_Slash",
			}),
		},
		MinAttackRange = 1000,
		SortKey = 99990,
		carry_amount = 0,
		display_name = T(881302784932, --[[ModItemWeaponResource ScissorhandsMelee_Brute display_name]] "Scissorhands Melee"),
		group = "Weapons_Animal",
		id = "ScissorhandsMelee_Brute",
		progress = 0,
		stack_size = 0,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "",
		AlwaysFace = false,
		AnimTestEntity = "Turret_Gun",
		AnimateWeapon = true,
		AreaOfEffect = 1000,
		AttackAngleTolerance = 120,
		AttackCooldown = 10000,
		AttackCooldownMaxSkill = 8000,
		AttackMoments = {
			"hit",
			"hit2",
		},
		AttackRange = 70000,
		AttackType = "ranged",
		CanAttackBelowMinRange = false,
		CritChance = 0,
		CritChanceMaxSkill = 0,
		DamageToBuildings = 75000,
		DamageTypes = {
			blunt = true,
		},
		HitChance = 70,
		HitChanceMaxSkill = 90,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "HitCannon",
				weight = 50,
			}),
		},
		MinAttackRange = 40000,
		ProjectileEntity = "InvisibleObject",
		ProjectileFXClass = "Machine_Gun_Projectile",
		ProjectileScaleWithWeapon = true,
		ProjectileSpeed = 20000,
		ProjectileSpot = "Weaponsight",
		RangeTerrainDistortion = "always",
		ScaleDamageWithUnit = false,
		ScaleRangeWithUnit = false,
		SortKey = 99990,
		TriggerResponse = false,
		carry_amount = 1000,
		display_name = T(219147003080, --[[ModItemWeaponResource Crawler_cannon display_name]] "3 Inch Bore Cannons"),
		group = "Weapons_Robots",
		id = "Crawler_cannon",
		progress = 0,
		stack_size = 1000,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "",
		AlwaysFace = false,
		AnimTestEntity = "Turret_Gun",
		AnimateWeapon = true,
		AreaOfEffect = 4000,
		AttackAngleTolerance = 120,
		AttackCooldown = 12000,
		AttackCooldownMaxSkill = 10000,
		AttackMoments = {
			"hit",
			"hit2",
		},
		AttackRange = 90000,
		AttackType = "ranged",
		CanAttackBelowMinRange = false,
		CritChance = 0,
		CritChanceMaxSkill = 0,
		DamageToBuildings = 75000,
		DamageTypes = {
			blunt = true,
		},
		HitChance = 70,
		HitChanceMaxSkill = 90,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "HitCannon",
				weight = 50,
			}),
		},
		LaunchUnits = true,
		MinAttackRange = 50000,
		ProjectileEntity = "InvisibleObject",
		ProjectileFXClass = "Machine_Gun_Projectile",
		ProjectileScaleWithWeapon = true,
		ProjectileSpeed = 15000,
		ProjectileSpot = "Weaponsight",
		RangeTerrainDistortion = "always",
		ScaleDamageWithUnit = false,
		ScaleRangeWithUnit = false,
		SortKey = 99990,
		TriggerResponse = false,
		carry_amount = 1000,
		display_name = T(440852696652, --[[ModItemWeaponResource Crawler_cannonT2 display_name]] "3 Inch Bore Cannons"),
		group = "Weapons_Robots",
		id = "Crawler_cannonT2",
		progress = 0,
		stack_size = 1000,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "",
		AlwaysFace = false,
		AnimTestEntity = "Turret_Gun",
		AnimateWeapon = true,
		AreaOfEffect = 5000,
		AttackAngleTolerance = 120,
		AttackCooldown = 15000,
		AttackCooldownMaxSkill = 15000,
		AttackMoments = {
			"hit",
			"hit2",
		},
		AttackRange = 120000,
		AttackType = "ranged",
		CanAttackBelowMinRange = false,
		CritChance = 0,
		CritChanceMaxSkill = 0,
		DamageToBuildings = 150000,
		DamageTypes = {
			blunt = true,
		},
		HitChance = 50,
		HitChanceMaxSkill = 90,
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "HitCannon",
				weight = 50,
			}),
		},
		IlluminateTime = 20000,
		LaunchUnits = true,
		MinAttackRange = 40000,
		ProjectileEntity = "InvisibleObject",
		ProjectileFXClass = "Machine_Gun_Projectile",
		ProjectileScaleWithWeapon = true,
		ProjectileSpeed = 10000,
		ProjectileSpot = "Weaponsight",
		RangeTerrainDistortion = "always",
		ScaleDamageWithUnit = false,
		ScaleRangeWithUnit = false,
		SortKey = 99990,
		TriggerResponse = false,
		carry_amount = 1000,
		display_name = T(342927117956, --[[ModItemWeaponResource Crawler_cannonT3 display_name]] "3 Inch Bore Cannons"),
		group = "Weapons_Robots",
		id = "Crawler_cannonT3",
		progress = 0,
		stack_size = 1000,
		transportable = false,
		visible = false,
	}),
	PlaceObj('ModItemWeaponResource', {
		AimAnimIdle = "",
		AlwaysFace = false,
		AnimTestEntity = "Turret_Gun",
		AnimateWeapon = true,
		AttackCooldown = 500,
		AttackCooldownMaxSkill = 500,
		AttackMoments = {
			"hit",
			"hit2",
		},
		AttackRange = 10000,
		AttackType = "ranged",
		CritChance = 0,
		CritChanceMaxSkill = 0,
		DamageToBuildings = 15000,
		DamageTypes = {
			piercing = true,
		},
		HitEffect = {
			PlaceObj('HealthConditionOption', {
				effect = "APC_Shot",
				weight = 50,
			}),
		},
		MinAttackRange = 1000,
		ProjectileEntity = "InvisibleObject",
		ProjectileFXClass = "Machine_Gun_Projectile",
		ProjectileSpeed = 40000,
		ProjectileSpot = "Weaponsight",
		RangeTerrainDistortion = "always",
		ScaleDamageWithUnit = false,
		ScaleRangeWithUnit = false,
		SortKey = 99990,
		carry_amount = 1000,
		display_name = T(166949358574, --[[ModItemWeaponResource APC_Gun display_name]] "Dual machine gun"),
		group = "Weapons_Robots",
		id = "APC_Gun",
		progress = 0,
		stack_size = 1000,
		transportable = false,
		visible = false,
	}),
	}),
}
