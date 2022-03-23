/datum/persistent_datum/map
	name = "Map Persistence"
	id = PERSISTENCE_MAP
	path = PERSISTENT_MAP_DIRECTORY
	prefix = "MAP_"
	extension = ".json"

	var/list/provided_turfs = list()
	var/area/provided_area

// returns the image id in case you need it to refer to somewhere else.
/datum/persistent_datum/map/save_persistent_data(list/turfs_list, force_id)
	. = ..()
	turfs_list += provided_turfs
	if(provided_area)
		for(var/turf/T in provided_area)
			turfs_list += T

	if(!islist(turfs_list))
		CRASH("[name]: No turfs to save.")
	var/map_id = force_id ? force_id : generate_unique_code()

	var/atom_id = 0
	var/list/first_turf_coordinates = list() //doesn't need to be saved, but just in case
	var/turf/first_turf = null
	var/list/map_metadata = list() // just some useful map details, for debugging and stats.

	var/list/complete_map_data = list()
	var/list/map_atoms = list()
	var/list/all_objs = list()


	for(var/atom/A in turfs_list)
		if(!A.can_save())
			continue
		var/list/turf_data = list()
		if(!A.persistent_atom_id)
			atom_id++
			turf_data["atom_id"] = atom_id
			A.persistent_atom_id = atom_id


		turf_data["path"] = A.type
		var/data_to_save = A.serialize()
		if(LAZYLEN(data_to_save))
			turf_data["data"] = data_to_save

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

		map_atoms["[atom_id]"] = turf_data

		var/list/internal_objs = A.get_saveable_contents()
		all_objs |= internal_objs

		// save objs within the turfs.
		for(var/obj/O in internal_objs)
			var/list/obj_data = list()
			if(!O.persistent_atom_id)
				atom_id++
				obj_data["atom_id"] = atom_id
				O.persistent_atom_id = atom_id



			obj_data["path"] = O.type
			obj_data["data"] = O.serialize()
			var/new_x = first_turf.x - O.x
			var/new_y = first_turf.y - O.y
			var/new_z = first_turf.z - O.z
			obj_data["location"] = list(new_x,new_y,new_z)


			var/atom/B = O.loc
			if(isarea(B))
				continue
			if(isatom(B) && B.can_save())
				if(!B.persistent_atom_id)
					atom_id++
					B.persistent_atom_id = atom_id
				O.persistent_host_id = B.persistent_atom_id
				obj_data["host_id"] = O.persistent_host_id

			map_atoms["[atom_id]"] = obj_data


	map_metadata["atom_count"] = atom_id
	map_metadata["turf_count"] = turfs_list.len
	map_metadata["objs_count"] = all_objs.len
	complete_map_data["map_metadata"] = map_metadata
	complete_map_data["map_data"] = map_atoms
	complete_map_data["first_turf_coordinates"] = first_turf_coordinates

	var/payload = json_encode(complete_map_data)

	WRITE_FILE(file(get_full_path(map_id)), payload)


	return get_full_path(map_id)

/datum/persistent_datum/load_persistent_data(map_id, turf/force_start_turf)
	. = ..()
	if(!map_id || !check_file_exists(map_id))
		CRASH("[name]: map_id or file does not exist.")

	var/json_file = get_full_path(map_id)
	var/list/map_json = json_decode(file2text(json_file))

	if(!map_json)
		CRASH("[name]: Unable to decode json file.")

	var/start_turf_coordinates = map_json["first_turf_coordinates"]

	var/turf/start_turf = locate(start_turf_coordinates[1], start_turf_coordinates[2], start_turf_coordinates[3])
	if(isturf(force_start_turf))
		start_turf = force_start_turf
		to_chat(world, "Setting start_turf to force_start_turf with ccords: [start_turf_coordinates[1]], [start_turf_coordinates[2]], [start_turf_coordinates[3]]") //REMOVE
	if(!start_turf)
		to_chat(world, "Unable to find starting turf") //REMOVE
		CRASH("[name]: Unable to find starting turf.")

	var/list/atom_list = map_json["map_data"]

	to_chat(world, "atom_list has [atom_list.len] entries") //REMOVE

	var/list/all_spawned_atoms = list()

	for(var/obj_data in atom_list)
		var/json_obj = atom_list[obj_data]
		var/atom_path = text2path(json_obj["path"])
		to_chat(world, "atom_path for [json_obj] is [atom_path]") //REMOVE

		if(!atom_path)
			continue

		var/location = json_obj["location"]
		to_chat(world, "location for [json_obj["name"]] is [location[1]], [location[2]], [location[3]].") //REMOVE
		var/turf_x = start_turf.x - location[1]
		var/turf_y = start_turf.y - location[2]
		var/turf_z = start_turf.z - location[3]
		var/turf/specific_turf = locate(turf_x, turf_y, turf_z)
		to_chat(world, "location for [json_obj["name"]] is [turf_x], [turf_y], [turf_z]") //REMOVE
		if(!specific_turf)
			to_chat(world, "specific turf not found for [json_obj]") //REMOVE
			continue

		var/atom/spawned_atom

		if(ispath(atom_path, /turf))
			//update the turf

			var/turf/new_turf = specific_turf.ChangeTurf(atom_path)
			spawned_atom = new_turf
		else

			spawned_atom = new atom_path(get_turf(specific_turf))

		spawned_atom.persistent_atom_id = json_obj["atom_id"]
		spawned_atom.persistent_host_id = json_obj["host_id"]

		var/list/saved_data = json_obj["data"]
		if(LAZYLEN(saved_data))
			spawned_atom.deserialize(saved_data)

		all_spawned_atoms["[spawned_atom.persistent_atom_id]"] = spawned_atom
		to_chat(world, "put [spawned_atom] as spawned atom") //REMOVE

	for(var/thing in all_spawned_atoms)
		var/obj/O = all_spawned_atoms["[thing]"]
		var/atom/host = all_spawned_atoms["[O.persistent_host_id]"]
		if(!O || !host)
			continue
		to_chat(world, "[O] is O and [host] is host") //REMOVE
		O.forceMove(host)



	return TRUE
