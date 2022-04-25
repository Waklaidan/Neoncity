///////////////////////
// PHOTO PERSISTENCE //
///////////////////////

/datum/persistent_datum/object
	name = "Object Persistence"
	id = PERSISTENCE_OBJECT
	path = PERSISTENT_OBJECT_DIRECTORY
	prefix = "OBJ_"

/datum/persistent_datum/object/save_persistent_data(obj/O, force_id)

	var/list/json_data = O.get_full_persistent_object_data(force_id)


	var/output_id = generate_unique_code(O.persistent_atom_id)

	if(!json_data)
		return

	var/json_to_save = json_encode(json_data)


	var/full_path_to_use = get_full_path(output_id)

	WRITE_FILE(file(full_path_to_use), json_to_save)

	return output_id

/datum/persistent_datum/object/load_persistent_data(thing_id, atom/location_to_spawn)
	if(!thing_id || !check_file_exists(thing_id))
		return FALSE

	var/full_path_to_use = get_full_path(thing_id)

	var/list/full_json = json_decode(file2text(full_path_to_use))

	if(!full_json)
		CRASH("[name]: Unable to decode json file.")


	var/obj/main_obj = unpack_full_persistent_object_data(full_json, location_to_spawn)

	return main_obj

