/datum/map_generator/cave_generator/tartarus
	open_turf_types = list(/turf/open/floor/plating/asteroid/basalt/tartarus_surface = 1)
	closed_turf_types =  list(/turf/closed/mineral/random/volcanic = 1)

	flora_spawn_list = list(/obj/structure/flora/ash/leaf_shroom = 2 , /obj/structure/flora/ash/cap_shroom = 2 , /obj/structure/flora/ash/stem_shroom = 2 , /obj/structure/flora/ash/tall_shroom = 2, /obj/structure/flora/ash/seraka = 2)
	///Note that this spawn list is also in the icemoon generator
	feature_spawn_list = list(/obj/structure/geyser/wittel = 6, /obj/structure/geyser/random = 2, /obj/structure/geyser/plasma_oxide = 10, /obj/structure/geyser/protozine = 10, /obj/structure/geyser/hollowwater = 10)

	initial_closed_chance = 45
	smoothing_iterations = 50
	birth_limit = 4
	death_limit = 3
