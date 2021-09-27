
/datum/map_generator/tartarus
	var/start_z
	var/min_x = 0
	var/min_y = 0
	var/max_x = 0
	var/max_y = 0
	modules = list(/datum/map_generator_module/river)
	buildmode_name = "Pattern: Molten Phoron Rivers"

/datum/map_generator/tartarus/defineRegion(turf/Start, turf/End, replace = 0)
	start_z = Start.z
	min_x = min(Start.x,End.x)
	min_y = min(Start.y,End.y)
	max_x = max(Start.x,End.x)
	max_y = max(Start.y,End.y)
	..()

/datum/map_generator_module/river/phoron
	river_type = /turf/open/lava/smooth/phoron

/datum/map_generator_module/bottom_layer/tartarus_default
	spawnableTurfs = list(/turf/open/floor/plating/asteroid/basalt/tartarus_surface = 100)

/datum/map_generator_module/bottom_layer/tartarus_mineral
	spawnableTurfs = list(/turf/closed/mineral/random/volcanic = 100)

/datum/map_generator_module/bottom_layer/tartarus_mineral/dense
	spawnableTurfs = list(/turf/closed/mineral/random/high_chance/volcanic = 100)

/datum/map_generator_module/splatter_layer/tartarus_monsters
	spawnableTurfs = list()
	spawnableAtoms = list(/mob/living/simple_animal/hostile/asteroid/goliath/beast = 10,
	/mob/living/simple_animal/hostile/asteroid/hivelord/legion = 10,
	/mob/living/simple_animal/hostile/asteroid/basilisk/watcher = 10)

/datum/map_generator_module/splatter_layer/tartarus_tendrils
	spawnableTurfs = list()
	spawnableAtoms = list(/obj/structure/spawner/lavaland = 5,
	/obj/structure/spawner/lavaland/legion = 5,
	/obj/structure/spawner/lavaland/goliath = 5)

/datum/map_generator/tartarus/ground_only
	modules = list(/datum/map_generator_module/bottom_layer/tartarus_default)
	buildmode_name = "Block: Tartarus Floor"

/datum/map_generator/tartarus/dense_ores
	modules = list(/datum/map_generator_module/bottom_layer/tartarus_mineral/dense)
	buildmode_name = "Block: Tartarus Ores: Dense"

/datum/map_generator/tartarus/normal_ores
	modules = list(/datum/map_generator_module/bottom_layer/tartarus_mineral)
	buildmode_name = "Block: Tartarus Ores"
