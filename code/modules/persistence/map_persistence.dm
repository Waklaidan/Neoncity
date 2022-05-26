/datum/persistent_datum/map
	name = "Map Persistence"
	id = PERSISTENCE_MAP
	path = PERSISTENT_MAP_DIRECTORY
	prefix = "MAP_"
	extension = ".json"

	var/list/provided_turfs = list()
	var/area/provided_area

// returns the image id in case you need it to refer to somewhere else.
/datum/persistent_datum/map/save_persistent_data(forced_id, list/turfs_list)
	. = ..()
	if(LAZYLEN(provided_turfs))
		turfs_list += provided_turfs
	if(provided_area)
		for(var/turf/T in provided_area)
			turfs_list += T

	var/map_id = forced_id ? forced_id : generate_unique_code()
	return save_map_turfs(turfs_list, path_to_use = get_full_path(map_id))

/datum/persistent_datum/load_persistent_data(map_id, turf/force_start_turf)
	. = ..()

	return load_map_turfs(get_full_path(map_id), force_start_turf)

/proc/save_map_turfs(list/turfs_list, path_to_use)
	to_chat(world, span_warning("DEBUG: Turfs list has [turfs_list.len] to save at [path_to_use]")) // REMOVE

	if(!islist(turfs_list))
		CRASH("No turfs to save.")
		to_chat(world, span_warning("FAILED: no turfs to save.")) // REMOVE

	var/list/first_turf_coordinates = list() //doesn't need to be saved, but just in case
	var/turf/first_turf = null

	var/list/all_objs = list()

	var/atom_id = 0
	var/list/full_turf_data = list()


	// Saving all turfs starts here.
	for(var/atom/A in turfs_list)
		if(!A.can_save())
			to_chat(world, span_warning("FAILED: [A] can't save.")) // REMOVE
			continue
		to_chat(world, span_warning("DEBUG: Atom id is now [atom_id].")) // REMOVE

		atom_id++
		var/list/turf_data = list()
		var/turf_id = unique_code()
		to_chat(world, span_warning("DEBUG: Turf id is now [turf_id].")) // REMOVE
		turf_data = A.get_full_persistent_object_data(turf_id)

		if(1 == atom_id)
			first_turf = A
			turf_data["location"] = list(0,0,0)
			first_turf_coordinates = list(A.x, A.y, A.z)
		else
			// get difference from this turf to the other turf
			var/new_x = first_turf.x - A.x
			var/new_y = first_turf.y - A.y
			var/new_z = first_turf.z - A.z
			turf_data["location"] = list(new_x,new_y,new_z)


		full_turf_data["[turf_id]"] = turf_data

		var/list/internal_objs = A.get_saveable_contents()
		all_objs |= internal_objs

	// Saving all turfs ends here.


	var/list/complete_map_data = list()
	var/list/map_metadata = list() // just some useful map details, for debugging and stats.

	map_metadata["turf_count"] = turfs_list.len
	map_metadata["objs_count"] = all_objs.len
	complete_map_data["map_metadata"] = map_metadata
	complete_map_data["map_data"] = full_turf_data
	complete_map_data["first_turf_coordinates"] = first_turf_coordinates

	var/payload = json_encode(complete_map_data)

	WRITE_FILE(file(path_to_use), payload)


	return path_to_use

/proc/load_map_turfs(path_to_use, turf/force_start_turf)
	if(!fexists(path_to_use))
		CRASH("map_id or file does not exist.")

	var/json_file = path_to_use
	var/list/map_json = json_decode(file2text(json_file))

	if(!map_json)
		CRASH("Unable to decode json file.")

	var/start_turf_coordinates = map_json["first_turf_coordinates"]

	var/turf/start_turf

	if(isturf(force_start_turf))
		start_turf = force_start_turf
	else
		start_turf = locate(start_turf_coordinates[1], start_turf_coordinates[2], start_turf_coordinates[3])

	if(!start_turf)
		CRASH("Unable to find starting turf.")

	var/list/atom_list = map_json["map_data"]


	var/list/all_spawned_atoms = list()

	for(var/obj_data in atom_list)
		var/json_obj = atom_list[obj_data]

		var/location = json_obj["location"]
		var/turf_x = start_turf.x - location[1]
		var/turf_y = start_turf.y - location[2]
		var/turf_z = start_turf.z - location[3]
		var/turf/specific_turf = locate(turf_x, turf_y, turf_z)
		if(!specific_turf)
			continue

		var/atom/spawned_atom = unpack_full_persistent_object_data(json_obj, specific_turf)

		if(!spawned_atom)
			continue

		all_spawned_atoms["[spawned_atom.persistent_atom_id]"] = spawned_atom

	return TRUE

/datum/persistent_datum/map/buildmode
	name = "Buildmode Map Persistence"
	id = PERSISTENCE_MAP_BUILDMODE
	path = PERSISTENT_MAP_BUILDMODE_DIRECTORY
	prefix = "MAP_BUILDMODE_"