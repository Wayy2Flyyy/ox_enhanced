return {
	--- 24/7 convenience: drinks, snacks, caffeine, NA “brew”.
	General = {
		name = 'Shop',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'water',            price = 10 },
			{ name = 'cola',             price = 10 },
			{ name = 'sprunk',           price = 10 },
			{ name = 'sandwich',         price = 15 },
			{ name = 'frost_bite_energy', price = 12 },
			{ name = 'double_decker_dawg', price = 12 },
			{ name = 'big_creme',        price = 12 },
			{ name = 'buttered_bagel',   price = 12 },
			{ name = 'zero_alcohol',     price = 12 },
			{ name = 'coffee',           price = 18 },
			{ name = 'riptide_pineapple_coconut', price = 15 },
			{ name = 'hydr8_blue_raspberry', price = 22 },
			{ name = 'wildflower_watermelon_mint', price = 16 },
			{ name = 'apple_juice',          price = 12 },
			{ name = 'classic_cola',         price = 10 },
			{ name = 'mint_pouches',         price = 8 },
			{ name = 'strawberry_cheesecake', price = 15 },
		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
		}
	},

	--- Liquor: alcohol, mixers, and bar snacks (no duplicate 24/7 clone stock).
	Liquor = {
		name = 'Liquor Store',
		blip = {
			id = 93, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'water',            price = 12 },
			{ name = 'cola',             price = 10 },
			{ name = 'sprunk',           price = 10 },
			{ name = 'grapejuice',       price = 14 },
			{ name = 'sandwich',         price = 16 },
			{ name = 'buttered_bagel',   price = 14 },
			{ name = 'big_creme',        price = 14 },
			{ name = 'frost_bite_energy', price = 14 },
			{ name = 'zero_alcohol',     price = 12 },
			{ name = 'beer',             price = 35 },
			{ name = 'wine',             price = 85 },
			{ name = 'whiskey',          price = 120 },
			{ name = 'vodka',            price = 95 },
			{ name = 'riptide_pineapple_coconut', price = 18 },
			{ name = 'hydr8_blue_raspberry', price = 28 },
			{ name = 'wildflower_watermelon_mint', price = 20 },
			{ name = 'strawberry_cheesecake', price = 18 },
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 },
			{ loc = vec3(-1393.02, -607.15, 30.32), length = 0.7, width = 0.55, heading = 305.0, minZ = 30.2, maxZ = 30.7, distance = 1.5 },
		}
	},

	YouTool = {
		name = 'YouTool',
		blip = {
			id = 402, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'lockpick',             price = 75 },
			{ name = 'WEAPON_FLASHLIGHT',    price = 150 },
			{ name = 'repairkit',              price = 350 },
			{ name = 'screwdriverset',       price = 225 },
			{ name = 'small_backpack',       price = 5000 },
			{ name = 'medium_backpack',      price = 12000 },
			{ name = 'large_backpack',       price = 30000 },
			{ name = 'duffle_bag',           price = 40000 },
			{ name = 'shovel',               price = 700 },
			{ name = 'toolbox',              price = 450 },
			{ name = 'power_drill',           price = 1200 },
			{ name = 'pliers',                price = 85 },
			{ name = 'adjustable_wrench',     price = 120 },
			{ name = 'screwdriver',           price = 40 },
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		}, targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 },
			{ loc = vec3(342.45, -1298.9, 32.52), length = 0.65, width = 0.55, heading = 320.0, minZ = 32.35, maxZ = 32.95, distance = 2.0 },
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'ammo-9', price = 5, },
			{ name = 'WEAPON_KNIFE', price = 200 },
			{ name = 'WEAPON_BAT', price = 100 },
			{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' }
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		}, targets = {
			{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			{ loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			{ loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
			{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
		}
	},

	PoliceArmoury = {
		name = 'Police Armoury',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.8
		}, inventory = {
			{ name = 'ammo-9', price = 5, },
			{ name = 'ammo-rifle', price = 5, },
			{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			{ name = 'WEAPON_NIGHTSTICK', price = 100 },
			{ name = 'WEAPON_PISTOL', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} },
			{ name = 'lspd_badge', price = 0 },
			{ name = 'sast_badge', price = 0 },
			{ name = 'bcso_badge', price = 0 },
			{ name = 'sapr_badge', price = 0 },
			{ name = 'traffic_citation_book', price = 0 },
			{ name = 'police_medkit', price = 25 },
			{ name = 'bandage_roll', price = 5 },
			{ name = 'armor_vest', price = 350 },
			{ name = 'police_tablet', price = 750 },
			{ name = 'police_radio', price = 250 },
		}, locations = {
			vec3(451.51, -979.44, 30.68)
		}, targets = {
			{ loc = vec3(453.21, -980.03, 30.68), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},

	Medicine = {
		name = 'Medicine Cabinet',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'medikit',  price = 26 },
			{ name = 'bandage',  price = 5 },
			{ name = 'ifaks',    price = 120 },
			{ name = 'painkillers', price = 15 },
		},
		locations = {
			vec3(306.3687, -601.5139, 43.28406)
		},
		targets = {
			{ loc = vec3(306.75, -601.45, 43.28), length = 0.45, width = 0.55, heading = 340.0, minZ = 43.0, maxZ = 43.9, distance = 1.5 },
		}
	},

	BlackMarketArms = {
		name = 'Black Market (Arms)',
		inventory = {
			{ name = 'WEAPON_DAGGER', price = 5000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'WEAPON_CERAMICPISTOL', price = 50000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'at_suppressor_light', price = 50000, currency = 'black_money' },
			{ name = 'ammo-9', price = 2500, currency = 'black_money' },
			{ name = 'ammo-rifle', price = 1000, currency = 'black_money' },
			{ name = 'ammo-rifle2', price = 1000, currency = 'black_money' }
		}, locations = {
			vec3(309.09, -913.75, 56.46)
		}, targets = {
			{ loc = vec3(309.09, -913.75, 56.46), length = 0.85, width = 0.85, heading = 250.0, minZ = 56.25, maxZ = 56.95, distance = 2.0 },
		}
	},

	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
			{ name = 'sprunk', price = 10 },
			{ name = 'frost_bite_energy', price = 12 },
			{ name = 'hydr8_blue_raspberry', price = 24 },
			{ name = 'classic_cola',       price = 10 },
			{ name = 'apple_juice',        price = 12 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	},

	--- Pizza This — pizzas and Italian mains (Del Perro).
	Pizzeria = {
		name = 'Pizzeria',
		blip = {
			id = 267, colour = 1, scale = 0.75,
		},
		inventory = {
			{ name = 'margherita_pizza',     price = 22 },
			{ name = 'pepperoni_pizza',      price = 24 },
			{ name = 'veggie_pizza',         price = 23 },
			{ name = 'bbq_chicken_pizza',    price = 26 },
			{ name = 'meat_lovers_pizza',    price = 28 },
			{ name = 'pesto_gnocchi',        price = 20 },
			{ name = 'spaghetti_carbonara',  price = 21 },
			{ name = 'mushroom_risotto',     price = 20 },
			{ name = 'chicken_parmesan',     price = 24 },
			{ name = 'lasagna',              price = 25 },
			{ name = 'katsu_curry',          price = 26 },
			{ name = 'classic_cola',         price = 8 },
			{ name = 'apple_juice',          price = 10 },
		},
		locations = {
			vec3(-1185.32, -893.15, 13.75),
		},
		targets = {
			{ loc = vec3(-1185.32, -893.15, 13.75), length = 0.65, width = 0.55, heading = 34.0, minZ = 13.55, maxZ = 14.15, distance = 2.0 },
		},
	},

	--- Burger Shot — burgers, sides, chicken, and shakes.
	BurgerShot = {
		name = 'Burger Shot',
		blip = {
			id = 106, colour = 1, scale = 0.75,
		},
		inventory = {
			{ name = 'burger',               price = 14 },
			{ name = 'classic_cheeseburger', price = 16 },
			{ name = 'jalapeno_burger',      price = 18 },
			{ name = 'mushroom_swiss_burger', price = 19 },
			{ name = 'double_bacon_burger',  price = 22 },
			{ name = 'fries',                price = 8 },
			{ name = 'chicken_nuggets',      price = 12 },
			{ name = 'chicken_selects',      price = 14 },
			{ name = 'strawberry_milkshake', price = 14 },
			{ name = 'chocolate_milkshake',  price = 14 },
			{ name = 'classic_cola',         price = 8 },
			{ name = 'sprunk',               price = 8 },
		},
		locations = {
			vec3(-1196.49, -901.15, 13.75),
			vec3(89.73, 286.79, 110.21),
		},
		targets = {
			{ loc = vec3(-1196.49, -901.15, 13.75), length = 0.65, width = 0.55, heading = 34.0, minZ = 13.55, maxZ = 14.15, distance = 2.0 },
			{ loc = vec3(89.73, 286.79, 110.21), length = 0.65, width = 0.55, heading = 160.0, minZ = 110.0, maxZ = 110.6, distance = 2.0 },
		},
	},

	--- Butcher — raw ingredients.
	Butcher = {
		name = 'Butcher',
		blip = {
			id = 478, colour = 59, scale = 0.75,
		},
		inventory = {
			{ name = 'raw_steak', price = 45 },
		},
		locations = {
			vec3(46.67, -1749.63, 29.63),
		},
		targets = {
			{ loc = vec3(46.67, -1749.63, 29.63), length = 0.65, width = 0.55, heading = 50.0, minZ = 29.43, maxZ = 30.03, distance = 2.0 },
		},
	},

	--- Vespucci — joints + blunt cannons (w2f-weed items).
	SmokeOnTheWater = {
		name = 'Smoke on the Water',
		blip = {
			id = 59, colour = 2, scale = 0.75,
		},
		inventory = {
			{ name = 'rolling_papers',                     price = 12 },
			{ name = 'rolling_tray',                       price = 78 },
			{ name = 'blunt_leafs',                        price = 18 },
			{ name = 'soil_bag',                           price = 2000 },
			{ name = 'watering_can',                       price = 200 },
			{ name = 'fertilizer_basic',                   price = 250 },
			{ name = 'fertilizer_premium',                 price = 500 },
			{ name = 'empty_baggies',                      price = 50 },
			{ name = 'digital_scale',                      price = 300 },
			{ name = 'trimming_scissors',                  price = 100 },
			-- Joint / blunt tiers match status stress relief (weaker → stronger).
			{ name = 'joint_hybrid',                        price = 28 },
			{ name = 'joint_exotic_weed',                   price = 32 },
			{ name = 'joint_skunk',                         price = 36 },
			{ name = 'joint_purple_palm_tree_delight',      price = 42 },
			{ name = 'joint_purple_runtz',                  price = 48 },
			{ name = 'blunt_hybrid',                        price = 65 },
			{ name = 'blunt_skunk',                         price = 72 },
			{ name = 'blunt_exotic_weed',                   price = 78 },
			{ name = 'blunt_purple_palm_tree_delight',      price = 88 },
			{ name = 'blunt_purple_runtz',                  price = 95 },
		},
		locations = {
			vec3(-1172.18, -1571.77, 3.66),
		},
		targets = {
			{ loc = vec3(-1172.18, -1571.77, 3.66), length = 0.65, width = 0.55, heading = 305.0, minZ = 3.48, maxZ = 4.18, distance = 1.85 },
		},
	},

	--[[
	   AdminItems (type = AdminItems): not listed here — `w2f_adminspawner` registers it at runtime
	   from exports.ox_inventory:Items() (items with a matching web/images/*.png @ price 0). Open via /adminitems (admin).
	   Rebuilt when inventory or w2f_adminspawner starts.
	]]

	--- Scripted pharmacy (doctor ped): `w2f-prescription` target opens this shop — keep `name` synced with Config.Pharmacy.hookShopLabel.
	W2FPharmacy = {
		name = 'Medical Pharmacy',
		icon = 'fa-solid fa-pills',
		inventory = {
			{ name = 'haveitol',    price = 45 },
			{ name = 'dead_tired',  price = 45 },
			{ name = 'wakey_wakey', price = 50 },
			{ name = 'oxycodone',   price = 125 },
			{ name = 'fentanyl',    price = 175 },
		},
	},

	--- Requires w2f-weed contact loyalty ≥ Config.Loyalty.ContractorSuppliesMinLoyalty.
	-- Align coords with `w2f-weed` Config.Loyalty.ContractorSupplies.Coords (blip + gate).
	SmokeOnTheWaterContractor = {
		name = 'Contractor supplies',
		icon = 'fa-solid fa-toolbox',
		inventory = {
			{ name = 'empty_planter_box', price = 4200 },
			{ name = 'weed_bench',         price = 6200 },
		},
		locations = {
			vec3(-1227.56, -1406.1, 3.18),
		},
		targets = {
			-- `ped`: inventory spawns NPC + target on entity (shop open still gated by w2f-weed loyalty hooks).
			{
				ped = `s_m_y_construct_01`,
				loc = vec3(-1227.56, -1406.1, 3.18),
				heading = 305.0,
				scenario = 'WORLD_HUMAN_CLIPBOARD',
				distance = 2.0,
			},
		},
	},
}
