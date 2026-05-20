return {
	--- Generic consume animations (items.lua references these by string key).
	anim = {
		['eating'] = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
		-- All bottle / can drinks share the same drinking loop; props differentiate visuals.
		['drinking'] = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		-- Snack foods that are not a burger still use the burger hand pose (safe fallback).
		['eating_snack'] = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
		-- Light medical: self-apply without a long scenario
		['medical_quick'] = { dict = 'missmic4', clip = 'michael_tux_fidget' },
	},

	prop = {
		['burger'] = { model = `prop_cs_burger_01`, pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
		['snack'] = { model = `prop_cs_burger_01`, pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },

		['water_bottle'] = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
		['soda_can'] = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		['ecola_can'] = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		['coffee_cup'] = { model = `p_amb_coffeecup_01`, pos = vec3(0.08, -0.10, 0.10), rot = vec3(-105.0, -10.0, -24.0) },
		['beer_bottle'] = { model = `prop_amb_beer_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
		['wine_bottle'] = { model = `prop_wine_bot_01`, pos = vec3(0.02, -0.02, -0.07), rot = vec3(0.0, 0.0, 0.0) },
		['spirit_bottle'] = { model = `prop_cs_whiskey_bottle`, pos = vec3(0.02, 0.02, -0.08), rot = vec3(0.0, 0.0, 0.0) },
        ['vodka_bottle'] = { model = `prop_vodka_bottle`, pos = vec3(0.02, 0.02, -0.08), rot = vec3(0.0, 0.0, 0.0) },
    },
}
