return {

    -- ──────────────────────────────────────────────────────────────────
    -- CURRENCY
    -- ──────────────────────────────────────────────────────────────────

    ['money'] = {
        label = 'Money',
    },

    ['black_money'] = {
        label = 'Dirty Money',
    },

    -- ──────────────────────────────────────────────────────────────────
    -- DOCUMENTS & LICENSES
    -- ──────────────────────────────────────────────────────────────────

    ['id_card'] = {
        label = 'Identification Card',
    },

    ['driver_license'] = {
        label = 'Drivers License',
    },

    ['weaponlicense'] = {
        label = 'Weapon License',
    },

    ['lawyerpass'] = {
        label = 'Lawyer Pass',
    },

    -- ──────────────────────────────────────────────────────────────────
    -- FOOD
    -- ──────────────────────────────────────────────────────────────────

    ['burger'] = {
        label = 'Burger',
        weight = 220,
        description = 'A classic burger. Restores hunger.',
        client = {
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
        },
    },

    ['sandwich'] = {
        label = 'Sandwich',
        weight = 200,
        description = 'A simple deli sandwich.',
        client = {
            status = { hunger = 200000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2500,
        },
    },

    ['double_decker_dawg'] = {
        label = 'Double Decker Dawg',
        weight = 300,
        description = 'Two dogs, one bun. Extra filling.',
        client = {
            status = { hunger = 250000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
        },
    },

    ['big_creme'] = {
        label = 'Big Creme',
        weight = 250,
        description = 'A sweet creme-filled pastry.',
        client = {
            status = { hunger = 200000, thirst = 50000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2500,
        },
    },

    ['buttered_bagel'] = {
        label = 'Buttered Bagel',
        weight = 200,
        description = 'A fresh buttered bagel.',
        client = {
            status = { hunger = 150000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2500,
        },
    },

    -- Pizza / Italian

    ['bbq_chicken_pizza'] = {
        label = 'BBQ Chicken Pizza',
        weight = 500,
        stack = true,
        close = true,
        description = 'A BBQ chicken pizza topped with red onion and smoky sauce.',
        client = {
            status = { hunger = 280000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['veggie_pizza'] = {
        label = 'Veggie Pizza',
        weight = 500,
        stack = true,
        close = true,
        description = 'A colourful vegetable pizza with peppers, mushrooms, olives and onions.',
        client = {
            status = { hunger = 260000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['pepperoni_pizza'] = {
        label = 'Pepperoni Pizza',
        weight = 500,
        stack = true,
        close = true,
        description = 'A classic pepperoni pizza with melted cheese and tomato sauce.',
        client = {
            status = { hunger = 280000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['meat_lovers_pizza'] = {
        label = 'Meat Lovers Pizza',
        weight = 500,
        stack = true,
        close = true,
        description = 'A meat-loaded pizza with rich cheese and crispy crust.',
        client = {
            status = { hunger = 300000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['margherita_pizza'] = {
        label = 'Margherita Pizza',
        weight = 500,
        stack = true,
        close = true,
        description = 'A fresh margherita pizza with mozzarella, tomato and basil.',
        client = {
            status = { hunger = 260000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['pesto_gnocchi'] = {
        label = 'Pesto Gnocchi',
        weight = 350,
        stack = true,
        close = true,
        description = 'Soft gnocchi coated in green pesto and parmesan.',
        client = {
            status = { hunger = 250000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 3000,
        },
    },

    ['chicken_parmesan'] = {
        label = 'Chicken Parmesan',
        weight = 450,
        stack = true,
        close = true,
        description = 'Breaded chicken topped with tomato sauce, melted cheese and basil.',
        client = {
            status = { hunger = 280000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['mushroom_risotto'] = {
        label = 'Mushroom Risotto',
        weight = 350,
        stack = true,
        close = true,
        description = 'Creamy mushroom risotto with herbs and parmesan.',
        client = {
            status = { hunger = 250000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 3000,
        },
    },

    ['spaghetti_carbonara'] = {
        label = 'Spaghetti Carbonara',
        weight = 350,
        stack = true,
        close = true,
        description = 'Creamy spaghetti carbonara with cheese, pepper and bacon.',
        client = {
            status = { hunger = 260000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 3000,
        },
    },

    ['lasagna'] = {
        label = 'Lasagna',
        weight = 400,
        stack = true,
        close = true,
        description = 'Layered pasta with meat sauce, cheese and baked golden topping.',
        client = {
            status = { hunger = 290000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['katsu_curry'] = {
        label = 'Katsu Curry',
        weight = 450,
        stack = true,
        close = true,
        description = 'Crispy chicken katsu served with curry sauce and rice.',
        client = {
            status = { hunger = 300000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['strawberry_cheesecake'] = {
        label = 'Strawberry Cheesecake',
        weight = 200,
        stack = true,
        close = true,
        description = 'Creamy cheesecake topped with strawberry sauce and cream.',
        client = {
            status = { hunger = 180000, thirst = 50000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2500,
        },
    },

    ['raw_steak'] = {
        label = 'Raw Steak',
        weight = 500,
        stack = true,
        close = true,
        description = 'A fresh raw steak ready to be cooked.',
    },

    -- Burgers / Fast Food

    ['jalapeno_burger'] = {
        label = 'Jalapeno Burger',
        weight = 350,
        stack = true,
        close = true,
        description = 'A spicy burger topped with jalapenos, cheese, lettuce and tomato.',
        client = {
            status = { hunger = 260000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3000,
        },
    },

    ['double_bacon_burger'] = {
        label = 'Double Bacon Burger',
        weight = 450,
        stack = true,
        close = true,
        description = 'A double beef burger stacked with bacon, cheese and sauce.',
        client = {
            status = { hunger = 300000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3500,
        },
    },

    ['classic_cheeseburger'] = {
        label = 'Classic Cheeseburger',
        weight = 350,
        stack = true,
        close = true,
        description = 'A classic cheeseburger with lettuce, tomato, onion and melted cheese.',
        client = {
            status = { hunger = 240000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3000,
        },
    },

    ['mushroom_swiss_burger'] = {
        label = 'Mushroom Swiss Burger',
        weight = 400,
        stack = true,
        close = true,
        description = 'A beef burger topped with mushrooms, Swiss cheese and caramelised onions.',
        client = {
            status = { hunger = 270000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 3000,
        },
    },

    ['chicken_selects'] = {
        label = 'Chicken Selects',
        weight = 250,
        stack = true,
        close = true,
        description = 'Crispy breaded chicken selects.',
        client = {
            status = { hunger = 200000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2500,
        },
    },

    ['chicken_nuggets'] = {
        label = 'Chicken Nuggets',
        weight = 250,
        stack = true,
        close = true,
        description = 'Golden crispy chicken nuggets.',
        client = {
            status = { hunger = 180000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2500,
        },
    },

    ['fries'] = {
        label = 'Fries',
        weight = 200,
        stack = true,
        close = true,
        description = 'Fresh golden fries served hot.',
        client = {
            status = { hunger = 150000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2500,
        },
    },

    ['mint_pouches'] = {
        label = 'Mint Pouches',
        weight = 50,
        stack = true,
        close = true,
        description = 'Cool mint pouches with a refreshing flavour.',
        client = {
            status = { thirst = 80000, stress = -15000 },
            anim = 'eating_snack',
            prop = 'snack',
            usetime = 2000,
        },
    },

    -- ──────────────────────────────────────────────────────────────────
    -- DRINKS
    -- ──────────────────────────────────────────────────────────────────

    ['water'] = {
        label = 'Water',
        weight = 500,
        description = 'Bottled water.',
        client = {
            status = { thirst = 200000 },
            anim = 'drinking',
            prop = 'water_bottle',
            usetime = 2500,
            cancel = true,
        },
    },

    ['sprunk'] = {
        label = 'Sprunk',
        weight = 350,
        description = 'A citrus soda can.',
        client = {
            status = { thirst = 200000 },
            anim = 'drinking',
            prop = 'soda_can',
            usetime = 2500,
        },
    },

    ['cola'] = {
        label = 'Cola',
        weight = 350,
        description = 'A sweet cola.',
        client = {
            status = { thirst = 200000 },
            anim = 'drinking',
            prop = 'ecola_can',
            usetime = 2500,
        },
    },

    ['classic_cola'] = {
        label = 'Classic Cola',
        weight = 330,
        stack = true,
        close = true,
        description = 'A cold refreshing can of classic cola.',
        client = {
            status = { thirst = 200000 },
            anim = 'drinking',
            prop = 'ecola_can',
            usetime = 2500,
        },
    },

    ['apple_juice'] = {
        label = 'Apple Juice',
        weight = 250,
        stack = true,
        close = true,
        description = 'Fresh apple juice in a small carton.',
        client = {
            status = { thirst = 180000 },
            anim = 'drinking',
            prop = 'soda_can',
            usetime = 2500,
        },
    },

    ['strawberry_milkshake'] = {
        label = 'Strawberry Milkshake',
        weight = 300,
        stack = true,
        close = true,
        description = 'A sweet strawberry milkshake topped with whipped cream and syrup.',
        client = {
            status = { thirst = 220000, hunger = 80000 },
            anim = 'drinking',
            prop = 'coffee_cup',
            usetime = 3000,
        },
    },

    ['chocolate_milkshake'] = {
        label = 'Chocolate Milkshake',
        weight = 300,
        stack = true,
        close = true,
        description = 'A rich chocolate milkshake topped with whipped cream and chocolate syrup.',
        client = {
            status = { thirst = 220000, hunger = 80000 },
            anim = 'drinking',
            prop = 'coffee_cup',
            usetime = 3000,
        },
    },

    ['frost_bite_energy'] = {
        label = 'Frost Bite Energy',
        weight = 350,
        description = 'An energy drink.',
        client = {
            status = { thirst = 300000 },
            anim = 'drinking',
            prop = 'soda_can',
            usetime = 2500,
        },
    },

    ['zero_alcohol'] = {
        label = 'Zero Alcohol Brew',
        weight = 350,
        description = 'Non-alcoholic beer-style drink.',
        client = {
            status = { thirst = 200000 },
            anim = 'drinking',
            prop = 'beer_bottle',
            usetime = 2500,
        },
    },

    ['coffee'] = {
        label = 'Coffee',
        weight = 200,
        description = 'Hot coffee. Wakes you up a little.',
        client = {
            status = { thirst = 120000, stress = -25000 },
            anim = 'drinking',
            prop = 'coffee_cup',
            usetime = 2500,
        },
    },

    ['grapejuice'] = {
        label = 'Grape Juice',
        weight = 200,
        description = 'Sweet grape juice.',
        client = {
            status = { thirst = 180000 },
            anim = 'drinking',
            prop = 'water_bottle',
            usetime = 2500,
        },
    },

    ['riptide_pineapple_coconut'] = {
        label = 'Riptide Pineapple Coconut',
        weight = 355,
        stack = true,
        close = true,
        description = 'A pineapple coconut sparkling water.',
        client = {
            status = { thirst = 180000 },
            anim = 'drinking',
            prop = 'water_bottle',
            usetime = 2500,
        },
    },

    ['hydr8_blue_raspberry'] = {
        label = 'HYDR8 Blue Raspberry',
        weight = 591,
        stack = true,
        close = true,
        description = 'An electrolyte sports drink.',
        client = {
            status = { thirst = 250000 },
            anim = 'drinking',
            prop = 'water_bottle',
            usetime = 3000,
        },
    },

    ['wildflower_watermelon_mint'] = {
        label = 'Wildflower Watermelon Mint',
        weight = 330,
        stack = true,
        close = true,
        description = 'A premium watermelon and mint sparkling drink.',
        client = {
            status = { thirst = 180000 },
            anim = 'drinking',
            prop = 'water_bottle',
            usetime = 2500,
        },
    },

    ['beer'] = {
        label = 'Beer',
        weight = 200,
        description = 'A cold beer.',
        client = {
            status = { thirst = 150000, stress = -120000 },
            anim = 'drinking',
            prop = 'beer_bottle',
            usetime = 2500,
        },
    },

    ['wine'] = {
        label = 'Wine',
        weight = 500,
        description = 'A bottle of wine.',
        client = {
            status = { thirst = 120000, stress = -85000 },
            anim = 'drinking',
            prop = 'wine_bottle',
            usetime = 3000,
        },
    },

    ['whiskey'] = {
        label = 'Whiskey',
        weight = 200,
        description = 'A shot of whiskey.',
        client = {
            status = { thirst = 80000, stress = -95000 },
            anim = 'drinking',
            prop = 'spirit_bottle',
            usetime = 2500,
        },
    },

    ['vodka'] = {
        label = 'Vodka',
        weight = 500,
        description = 'A bottle of vodka.',
        client = {
            status = { thirst = 60000, stress = -100000 },
            anim = 'drinking',
            prop = 'vodka_bottle',
            usetime = 2500,
        },
    },

    -- ──────────────────────────────────────────────────────────────────
    -- MEDICAL
    -- ──────────────────────────────────────────────────────────────────

    ['bandage'] = {
        label = 'Bandage',
        weight = 115,
        client = {
            anim = 'medical_quick',
            usetime = 2500,
            cancel = true,
        },
    },

    ['medikit'] = {
        label = 'Medikit',
        weight = 500,
        client = {
            anim = 'medical_quick',
            usetime = 4500,
            cancel = true,
        },
    },

    ['firstaid'] = {
        label = 'First Aid Kit',
        weight = 2500,
    },

    ['ifaks'] = {
        label = 'Individual First Aid Kit',
        weight = 2500,
    },

    ['painkillers'] = {
        label = 'Painkillers',
        weight = 400,
    },

    -- ──────────────────────────────────────────────────────────────────
    -- CLOTHING & GEAR
    -- ──────────────────────────────────────────────────────────────────

    ['clothing'] = {
        label = 'Clothing',
        consume = 0,
    },

    ['armour'] = {
        label = 'Bulletproof Vest',
        weight = 3000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500,
        },
    },

    ['parachute'] = {
        label = 'Parachute',
        weight = 8000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500,
        },
    },

    ['harness'] = {
        label = 'Harness',
        weight = 200,
    },

    ['diving_gear'] = {
        label = 'Diving Gear',
        weight = 30000,
    },

    ['diving_fill'] = {
        label = 'Diving Tube',
        weight = 3000,
    },

    ['walking_stick'] = {
        label = 'Walking Stick',
        weight = 1000,
    },

    -- ──────────────────────────────────────────────────────────────────
    -- TOOLS
    -- ──────────────────────────────────────────────────────────────────

    ['lockpick'] = {
        label = 'Lockpick',
        weight = 160,
    },

    ['advancedlockpick'] = {
        label = 'Advanced Lockpick',
        weight = 500,
    },

    ['screwdriverset'] = {
        label = 'Screwdriver Set',
        weight = 500,
    },

    ['electronickit'] = {
        label = 'Electronic Kit',
        weight = 500,
    },

    ['cleaningkit'] = {
        label = 'Cleaning Kit',
        weight = 500,
    },

    ['repairkit'] = {
        label = 'Repair Kit',
        weight = 2500,
    },

    ['toolbox'] = {
        label = 'Toolbox',
        weight = 3500,
        stack = false,
        close = true,
        description = 'A toolbox containing basic repair equipment.',
    },

    ['power_drill'] = {
        label = 'Power Drill',
        weight = 1800,
        stack = false,
        close = true,
        description = 'A cordless power drill.',
    },

    ['pliers'] = {
        label = 'Pliers',
        weight = 300,
        stack = false,
        close = true,
        description = 'A pair of heavy-duty pliers.',
    },

    ['adjustable_wrench'] = {
        label = 'Adjustable Wrench',
        weight = 500,
        stack = false,
        close = true,
        description = 'An adjustable metal wrench.',
    },

    ['screwdriver'] = {
        label = 'Screwdriver',
        weight = 250,
        stack = false,
        close = true,
        description = 'A standard screwdriver.',
    },

    ['advancedrepairkit'] = {
        label = 'Advanced Repair Kit',
        weight = 4000,
    },

    ['jerry_can'] = {
        label = 'Jerrycan',
        weight = 3000,
    },

    ['drill'] = {
        label = 'Drill',
        weight = 5000,
    },

    ['thermite'] = {
        label = 'Thermite',
        weight = 1000,
    },

    ['gatecrack'] = {
        label = 'Gatecrack',
        weight = 1000,
    },

    ['lighter'] = {
        label = 'Lighter',
        weight = 200,
    },

    ['binoculars'] = {
        label = 'Binoculars',
        weight = 800,
    },

    ['shovel'] = {
        label = 'Shovel',
        weight = 3000,
        stack = false,
    },

    -- ──────────────────────────────────────────────────────────────────
    -- ELECTRONICS & TECH
    -- ──────────────────────────────────────────────────────────────────

    ['phone'] = {
        label = 'Phone',
        weight = 350,
        stack = false,
        close = true,
        description = 'A personal smartphone.',
        client = {
            event = 'w2f-phone:client:usePhone',
        },
    },

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        allowArmed = true,
        consume = 0,
        client = {
            event = 'mm_radio:client:use',
        },
    },

    ['jammer'] = {
        label = 'Radio Jammer',
        weight = 10000,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:usejammer',
        },
    },

    ['radiocell'] = {
        label = 'AAA Cells',
        weight = 1000,
        stack = true,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:recharge',
        },
    },

    ['cryptostick'] = {
        label = 'Crypto Stick',
        weight = 100,
    },

    ['trojan_usb'] = {
        label = 'Trojan USB',
        weight = 100,
    },

    ['security_card_01'] = {
        label = 'Security Card A',
        weight = 100,
    },

    ['security_card_02'] = {
        label = 'Security Card B',
        weight = 100,
    },

    ['toaster'] = {
        label = 'Toaster',
        weight = 5000,
    },

    ['small_tv'] = {
        label = 'Small TV',
        weight = 100,
    },

    -- ──────────────────────────────────────────────────────────────────
    -- VALUABLES
    -- ──────────────────────────────────────────────────────────────────

    -- Grave robbery loot
    ['bone'] = {
        label  = 'Bone',
        weight = 100,
    },

    ['dirt'] = {
        label  = 'Dirt',
        weight = 200,
    },

    ['old_ring'] = {
        label  = 'Old Ring',
        weight = 50,
    },

    ['silver_coin'] = {
        label  = 'Silver Coin',
        weight = 20,
    },

    ['ruby'] = {
        label  = 'Ruby',
        weight = 50,
    },

    ['emerald'] = {
        label  = 'Emerald',
        weight = 50,
    },

    ['diamond'] = {
        label  = 'Diamond',
        weight = 50,
    },

    ['old_weapon'] = {
        label  = 'Old Weapon',
        weight = 2000,
    },

    ['gold_necklace'] = {
        label  = 'Gold Necklace',
        weight = 100,
    },

    ['ancient_artifact'] = {
        label  = 'Ancient Artifact',
        weight = 500,
    },

    ['cursed_skull'] = {
        label  = 'Cursed Skull',
        weight = 800,
    },

    ['treasure_map'] = {
        label  = 'Treasure Map',
        weight = 10,
    },

    ['diamond_ring'] = {
        label = 'Diamond Ring',
        weight = 1500,
    },

    ['rolex'] = {
        label = 'Golden Watch',
        weight = 1500,
    },

    ['goldbar'] = {
        label = 'Gold Bar',
        weight = 1500,
    },

    ['goldchain'] = {
        label = 'Golden Chain',
        weight = 1500,
    },

    ['antipatharia_coral'] = {
        label = 'Antipatharia Coral',
        weight = 1000,
    },

    ['dendrogyra_coral'] = {
        label = 'Dendrogyra Coral',
        weight = 1000,
    },

    -- ──────────────────────────────────────────────────────────────────
    -- CRAFTING MATERIALS
    -- ──────────────────────────────────────────────────────────────────

    ['steel'] = {
        label = 'Steel',
        weight = 100,
    },

    ['rubber'] = {
        label = 'Rubber',
        weight = 100,
    },

    ['metalscrap'] = {
        label = 'Metal Scrap',
        weight = 100,
    },

    ['iron'] = {
        label = 'Iron',
        weight = 100,
    },

    ['copper'] = {
        label = 'Copper',
        weight = 100,
    },

    ['aluminum'] = {
        label = 'Aluminium',
        weight = 100,
    },

    ['plastic'] = {
        label = 'Plastic',
        weight = 100,
    },

    ['glass'] = {
        label = 'Glass',
        weight = 100,
    },

    ['nitrous'] = {
        label = 'Nitrous',
        weight = 1000,
    },

    -- ──────────────────────────────────────────────────────────────────
    -- DRUGS
    -- ──────────────────────────────────────────────────────────────────

    ['crack_baggy'] = {
        label = 'Crack Baggy',
        weight = 100,
    },

    ['cokebaggy'] = {
        label = 'Bag of Coke',
        weight = 100,
    },

    ['coke_brick'] = {
        label = 'Coke Brick',
        weight = 2000,
    },

    ['coke_small_brick'] = {
        label = 'Coke Package',
        weight = 1000,
    },

    ['xtcbaggy'] = {
        label = 'Bag of Ecstasy',
        weight = 100,
    },

    ['meth'] = {
        label = 'Methamphetamine',
        weight = 100,
    },

    ['oxy'] = {
        label = 'Oxycodone',
        weight = 100,
    },

    ['joint'] = {
        label = 'Joint',
        weight = 3,
        stack = true,
        close = true,
        description = 'A basic hand-rolled joint.',
        client = {
            status = { stress = -90000 },
            anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
            prop = {
                model = `p_cs_joint_02`,
                pos = vec3(0.015, 0.015, 0.0),
                rot = vec3(0.0, 0.0, 0.0),
            },
            usetime = 4500,
        },
    },

    ['rolling_papers'] = {
        label = 'Rolling Papers',
        weight = 5,
        stack = true,
        close = true,
        description = 'A pack of papers for rolling joints. Use with a rolling tray and bud.',
    },

    ['rolling_tray'] = {
        label = 'Rolling Tray',
        weight = 800,
        stack = false,
        close = true,
        consume = 0,
        description = 'A tray for breaking down bud and rolling. USE to open the rolling station.',
        client = {
            event = 'w2f-weed:client:startRollingMinigameFromTray',
        },
    },

    ['blunt_leafs'] = {
        label = 'Blunt Wraps',
        weight = 8,
        stack = true,
        close = true,
        description = 'Outer wraps for rolling blunt cannons.',
    },

    -- ──────────────────────────────────────────────────────────────────
    -- LAW ENFORCEMENT
    -- ──────────────────────────────────────────────────────────────────

    ['handcuffs'] = {
        label = 'Handcuffs',
        weight = 350,
        stack = false,
        close = true,
        description = 'Standard police handcuffs.',
    },

    ['lspd_badge'] = {
        label = 'LSPD Badge',
        weight = 120,
        stack = false,
        close = true,
        description = 'Official Los Santos Police Department badge.',
    },

    ['sast_badge'] = {
        label = 'SAST Badge',
        weight = 120,
        stack = false,
        close = true,
        description = 'Official San Andreas State Troopers badge.',
    },

    ['bcso_badge'] = {
        label = 'BCSO Badge',
        weight = 120,
        stack = false,
        close = true,
        description = 'Official Blaine County Sheriff Office badge.',
    },

    ['sapr_badge'] = {
        label = 'SAPR Badge',
        weight = 120,
        stack = false,
        close = true,
        description = 'Official San Andreas Park Rangers badge.',
    },

    ['traffic_citation_book'] = {
        label = 'Traffic Citation Book',
        weight = 300,
        stack = false,
        close = true,
        description = 'A booklet used for issuing traffic citations.',
    },

    ['police_medkit'] = {
        label = 'Police Med Kit',
        weight = 1200,
        stack = false,
        close = true,
        description = 'A tactical medical kit for emergency field treatment.',
        client = {
            anim = 'medical_quick',
            usetime = 5000,
            cancel = true,
        },
    },

    ['bandage_roll'] = {
        label = 'Bandage Roll',
        weight = 150,
        stack = true,
        close = true,
        description = 'A medical bandage roll.',
        client = {
            anim = 'medical_quick',
            usetime = 3500,
            cancel = true,
        },
    },

    ['police_radio'] = {
        label = 'Police Radio',
        weight = 400,
        stack = false,
        close = true,
        description = 'A handheld police radio.',
        allowArmed = true,
        consume = 0,
        client = {
            event = 'mm_radio:client:use',
        },
    },

    ['police_tablet'] = {
        label = 'Police Tablet',
        weight = 850,
        stack = false,
        close = true,
        description = 'A rugged police tablet used for MDT access.',
    },

    ['armor_vest'] = {
        label = 'Tactical Vest',
        weight = 3500,
        stack = false,
        close = true,
        description = 'A black tactical vest for law enforcement use.',
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500,
        },
    },

    ['empty_evidence_bag'] = {
        label = 'Empty Evidence Bag',
        weight = 200,
    },

    ['filled_evidence_bag'] = {
        label = 'Filled Evidence Bag',
        weight = 200,
    },

    -- w2f-police equipment items. Keys must match the IDs referenced by
    -- config/equipment.lua inside resources/[w2f]/w2f-police.
    ['bodycam'] = {
        label = 'Body Camera',
        weight = 50,
        stack = false,
        close = true,
        description = 'Standard-issue body-worn camera.',
    },

    ['dashcam'] = {
        label = 'Dash Camera',
        weight = 50,
        stack = false,
        close = true,
        description = 'In-vehicle dash camera.',
    },

    ['spikestrip'] = {
        label = 'Spike Strip',
        weight = 600,
        stack = true,
        close = true,
        description = 'Deployable tyre-deflation strip.',
    },

    ['police_barrier'] = {
        label = 'Police Barrier',
        weight = 800,
        stack = true,
        close = true,
        description = 'Wooden police barrier for scene control.',
    },

    ['evidence_bag'] = {
        label = 'Evidence Bag',
        weight = 5,
        stack = true,
        close = false,
        description = 'Tamper-evident evidence collection bag.',
    },

    ['fingerprint_kit'] = {
        label = 'Fingerprint Kit',
        weight = 100,
        stack = false,
        close = true,
        description = 'Lift latent prints from surfaces and suspects.',
    },

    ['breathalyzer'] = {
        label = 'Breathalyzer',
        weight = 200,
        stack = false,
        close = true,
        description = 'Roadside blood-alcohol screening device.',
    },

    ['speed_gun'] = {
        label = 'Speed Gun',
        weight = 200,
        stack = false,
        close = true,
        description = 'Handheld vehicle speed radar.',
    },

    ['megaphone'] = {
        label = 'Megaphone',
        weight = 600,
        stack = false,
        close = true,
        description = 'Broadcast voice commands to a crowd.',
    },

    ['heavyarmor'] = {
        label = 'Heavy Armor',
        weight = 1000,
        stack = false,
        close = true,
        description = 'Tactical heavy ballistic plate carrier.',
    },

    ['command_tablet'] = {
        label = 'Command Tablet',
        weight = 200,
        stack = false,
        close = true,
        description = 'High-command admin tablet for w2f-police.',
    },

    -- ──────────────────────────────────────────────────────────────────
    -- MISCELLANEOUS
    -- ──────────────────────────────────────────────────────────────────

    ['garbage'] = {
        label = 'Garbage',
    },

    ['paperbag'] = {
        label = 'Paper Bag',
        weight = 1,
        stack = false,
        close = false,
        consume = 0,
    },

    ['stickynote'] = {
        label = 'Sticky Note',
        weight = 0,
    },

    ['panties'] = {
        label = 'Knickers',
        weight = 10,
        consume = 0,
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        },
    },

    ['firework1'] = {
        label = '2Brothers',
        weight = 1000,
    },

    ['firework2'] = {
        label = 'Poppelers',
        weight = 1000,
    },

    ['firework3'] = {
        label = 'WipeOut',
        weight = 1000,
    },

    ['firework4'] = {
        label = 'Weeping Willow',
        weight = 1000,
    },

    -- ──────────────────────────────────────────────────────────────────
    -- BACKPACKS  (w2f-backpack)
    -- ──────────────────────────────────────────────────────────────────

    ['small_backpack'] = {
        label = 'Small Backpack',
        weight = 750,
        stack = false,
        close = false,
        consume = 0,
        description = 'A compact backpack for extra storage.',
        server = {
            export = 'w2f-backpack.useBackpack',
        },
    },

    ['medium_backpack'] = {
        label = 'Medium Backpack',
        weight = 1200,
        stack = false,
        close = false,
        consume = 0,
        description = 'A reliable backpack with extra space.',
        server = {
            export = 'w2f-backpack.useBackpack',
        },
    },

    ['large_backpack'] = {
        label = 'Large Backpack',
        weight = 1800,
        stack = false,
        close = false,
        consume = 0,
        description = 'A large backpack with heavy capacity.',
        server = {
            export = 'w2f-backpack.useBackpack',
        },
    },

    ['duffle_bag'] = {
        label = 'Duffle Bag',
        weight = 2200,
        stack = false,
        close = false,
        consume = 0,
        description = 'A heavy duffle bag for carrying gear.',
        server = {
            export = 'w2f-backpack.useBackpack',
        },
    },

    -- ──────────────────────────────────────────────────────────────────
    -- WEED OPERATION — Seeds  (w2f-weed)
    -- ──────────────────────────────────────────────────────────────────

    ['purple_runtz_seed'] = {
        label = 'Purple Runtz Seed',
        weight = 10,
        stack = true,
        description = 'A common seed variety. Reliable but modest yields.',
    },

    ['skunk_seed'] = {
        label = 'Skunk Seed',
        weight = 10,
        stack = true,
        description = 'A pungent seed strain. Moderate quality.',
    },

    ['hybrid_seed'] = {
        label = 'Hybrid Seed',
        weight = 10,
        stack = true,
        description = 'A crossbred seed. Balanced traits.',
    },

    ['purple_palm_tree_delight_seed'] = {
        label = 'Purple Palm Tree Delight Seed',
        weight = 10,
        stack = true,
        description = 'A high-grade seed. Superior quality.',
    },

    ['exotic_seed'] = {
        label = 'Exotic Seed',
        weight = 10,
        stack = true,
        description = 'A rare seed variety. Exceptional traits.',
    },

    -- ──────────────────────────────────────────────────────────────────
    -- WEED OPERATION — Buds — Joints (w2f-weed)
    -- ──────────────────────────────────────────────────────────────────

    ['purple_runtz_bud'] = {
        label = 'Purple Runtz Bud',
        weight = 50,
        stack = true,
        description = 'Purple Runtz processed bud.',
    },

    ['skunk_bud'] = {
        label = 'Skunk Bud',
        weight = 50,
        stack = true,
        description = 'Skunk processed bud.',
    },

    ['hybrid_bud'] = {
        label = 'Hybrid Bud',
        weight = 50,
        stack = true,
        description = 'Hybrid processed bud.',
    },

    ['purple_palm_tree_delight_bud'] = {
        label = 'Purple Palm Tree Delight Bud',
        weight = 50,
        stack = true,
        description = 'Purple Palm Tree Delight processed bud.',
    },

    ['exotic_bud'] = {
        label = 'Exotic Bud',
        weight = 50,
        stack = true,
        description = 'Exotic processed bud.',
    },

    ['batch_purple_runtz_bud'] = {
        label = 'Batch of Purple Runtz Buds',
        weight = 1000,
        stack = true,
        description = 'A batch of purple runtz processed buds.',
    },

    ['batch_skunk_bud'] = {
        label = 'Batch of Skunk Buds',
        weight = 1000,
        stack = true,
        description = 'A batch of skunk processed buds.',
    },

    ['batch_hybrid_bud'] = {
        label = 'Batch of Hybrid Buds',
        weight = 1000,
        stack = true,
        description = 'A batch of hybrid processed buds.',
    },

    ['batch_exotic_bud'] = {
        label = 'Batch of Exotic Buds',
        weight = 1000,
        stack = true,
        description = 'A batch of exotic processed buds.',
    },

-- Weed Joints

['joint_exotic_weed'] = {
    label = 'Exotic Weed Joint',
    weight = 3,
    stack = true,
    close = true,
    description = 'A hand-rolled joint packed with exotic-grade weed.',
    client = {
        status = { stress = -120000 },
        anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0)
        },
        usetime = 4500,
    }
},

['joint_purple_palm_tree_delight'] = {
    label = 'Purple Palm Tree Delight Joint',
    weight = 3,
    stack = true,
    close = true,
    description = 'A smooth purple strain joint with a rich palm-tree sweetness.',
    client = {
        status = { stress = -140000 },
        anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0)
        },
        usetime = 4500,
    }
},

['joint_hybrid'] = {
    label = 'Hybrid Joint',
    weight = 3,
    stack = true,
    close = true,
    description = 'A balanced hybrid joint with a clean, steady smoke.',
    client = {
        status = { stress = -100000 },
        anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0)
        },
        usetime = 4500,
    }
},

['joint_skunk'] = {
    label = 'Skunk Joint',
    weight = 3,
    stack = true,
    close = true,
    description = 'A strong-smelling skunk joint with a heavy street-grade kick.',
    client = {
        status = { stress = -130000 },
        anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0)
        },
        usetime = 4500,
    }
},

['joint_purple_runtz'] = {
    label = 'Purple Runtz Joint',
    weight = 3,
    stack = true,
    close = true,
    description = 'A colourful Purple Runtz joint with a sweet candy-like aroma.',
    client = {
        status = { stress = -150000 },
        anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0)
        },
        usetime = 4500,
    }
},

    -- Crest Leaf Blunt Cannon Joints

['blunt_exotic_weed'] = {
    label = 'Exotic Weed Blunt Cannon',
    weight = 8,
    stack = true,
    close = true,
    description = 'A premium crest-leaf blunt cannon packed with exotic weed.',
    client = {
        status = {
            stress = -150000,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_c',
        },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0),
        },
        usetime = 5500,
    }
},

['blunt_purple_palm_tree_delight'] = {
    label = 'Purple Palm Tree Delight Blunt Cannon',
    weight = 8,
    stack = true,
    close = true,
    description = 'A luxury crest-leaf blunt cannon with a smooth purple palm finish.',
    client = {
        status = {
            stress = -165000,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_c',
        },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0),
        },
        usetime = 5500,
    }
},

['blunt_hybrid'] = {
    label = 'Hybrid Blunt Cannon',
    weight = 8,
    stack = true,
    close = true,
    description = 'A balanced crest-leaf blunt cannon rolled with premium hybrid flower.',
    client = {
        status = {
            stress = -135000,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_c',
        },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0),
        },
        usetime = 5500,
    }
},

['blunt_skunk'] = {
    label = 'Skunk Blunt Cannon',
    weight = 8,
    stack = true,
    close = true,
    description = 'A loud crest-leaf blunt cannon rolled with heavy skunk flower.',
    client = {
        status = {
            stress = -145000,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_c',
        },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0),
        },
        usetime = 5500,
    }
},

['blunt_purple_runtz'] = {
    label = 'Purple Runtz Blunt Cannon',
    weight = 8,
    stack = true,
    close = true,
    description = 'A sweet purple crest-leaf blunt cannon with premium Purple Runtz flower.',
    client = {
        status = {
            stress = -175000,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_c',
        },
        prop = {
            model = `p_cs_joint_02`,
            pos = vec3(0.015, 0.015, 0.0),
            rot = vec3(0.0, 0.0, 0.0),
        },
        usetime = 5500,
    }
},

    -- ──────────────────────────────────────────────────────────────────
    -- WEED OPERATION — Equipment  (w2f-weed)
    -- ──────────────────────────────────────────────────────────────────

    ['empty_planter_box'] = {
        label = 'Empty Planter Box',
        weight = 8000,
        stack = false,
        consume = 0,
        description = 'A wooden planter box. USE to deploy.',
        client = {
            event = 'w2f-weed:client:startPlanterPlacement',
        },
    },

    ['plant_pot'] = {
        label = 'Plant Pot',
        weight = 500,
        stack = true,
        description = 'A wooden plant pot. USE to deploy as a planter.',
        client = {
            event = 'w2f-weed:client:startPlanterPlacement',
        },
    },

    ['soil_bag'] = {
        label = 'Soil Bag',
        weight = 1000,
        stack = true,
        description = 'A bag of soil. Use the "Add Soil" interaction on an empty planter.',
    },

    ['watering_can'] = {
        label = 'Watering Can',
        weight = 750,
        stack = true,
        description = 'A watering can for plant care.',
        client = {
            event = 'w2f-weed:client:startPlaceablePlacement',
        },
    },

    ['fertilizer_basic'] = {
        label = 'Basic Fertilizer',
        weight = 2000,
        stack = true,
        description = 'Standard plant nutrients.',
        client = {
            event = 'w2f-weed:client:startPlaceablePlacement',
        },
    },

    ['fertilizer_premium'] = {
        label = 'Premium Fertilizer',
        weight = 2000,
        stack = true,
        description = 'Enhanced plant nutrients for faster growth.',
    },

    ['grow_light'] = {
        label = 'Grow Light',
        weight = 4000,
        stack = true,
        description = 'Artificial lighting for indoor growing.',
        client = {
            event = 'w2f-weed:client:startPlaceablePlacement',
        },
    },

    ['drying_rack'] = {
        label = 'Drying Rack',
        weight = 5000,
        stack = false,
        description = 'Used to dry harvested plants.',
        client = {
            event = 'w2f-weed:client:startPlaceablePlacement',
        },
    },

    ['weed_bench'] = {
        label = 'Weed Work Bench',
        weight = 12000,
        stack = false,
        description = 'A sturdy bench for trimming and processing. USE to place.',
        client = {
            event = 'w2f-weed:client:startPlaceablePlacement',
        },
    },

    ['trimming_scissors'] = {
        label = 'Trimming Scissors',
        weight = 300,
        stack = false,
        description = 'Required to harvest mature plants from planters. Also used to trim dried plants.',
    },

    ['empty_baggies'] = {
        label = 'Empty Baggies',
        weight = 10,
        stack = true,
        description = 'Packaging for processed product.',
    },

    ['digital_scale'] = {
        label = 'Digital Scale',
        weight = 500,
        stack = false,
        description = 'Used to weigh product.',
    },

    -- ──────────────────────────────────────────────────────────────────────
    -- w2f-prescription — scripted meds (consumable FX + OD in resource)
    -- ──────────────────────────────────────────────────────────────────────
    medical_prescription = {
        label = 'Medical Prescription',
        weight = 1,
        stack = false,
        description = 'A medical prescription for a specific drug.',
    },

    ['haveitol'] = {
        label = 'Haveitol',
        weight = 5,
        stack = true,
        close = true,
        consume = 1,
        description = 'Keeps progression feeling lighter for a window.',
        client = {
            export = 'w2f-prescription.useHaveitol',
        },
    },

    ['dead_tired'] = {
        label = 'Dead Tired',
        weight = 5,
        stack = true,
        close = true,
        consume = 1,
        description = 'Keeps sights steadier — at a cost.',
        client = {
            export = 'w2f-prescription.useDeadTired',
        },
    },

    ['fentanyl'] = {
        label = 'Fentanyl',
        weight = 2,
        stack = true,
        close = true,
        consume = 1,
        description = 'Dangerous sedation. Extremely habit-forming.',
        client = {
            export = 'w2f-prescription.useFentanyl',
        },
    },

    ['oxycodone'] = {
        label = 'Oxycodone',
        weight = 2,
        stack = true,
        close = true,
        consume = 1,
        description = 'Pharma-grade painkiller. Illegal without a prescription.',
        client = {
            export = 'w2f-prescription.useOxycodone',
        },
    },

    ['wakey_wakey'] = {
        label = 'Wakey Wakey',
        weight = 4,
        stack = true,
        close = true,
        consume = 1,
        description = 'Keeps exhaustion at bay temporarily.',
        client = {
            export = 'w2f-prescription.useWakeyWakey',
        },
    },

}
