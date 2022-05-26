
///////////////////////
// LIST  PERSISTENCE //
///////////////////////

// Useful for various persistent applications, intended to be used as a subtype.

/datum/persistent_datum
	name = "List Datum"
	id = PERSISTENCE_LIST
	path = PERSISTENT_LIST_DIRECTORY

	var/provided_list = list()

/datum/persistent_datum/list/save_persistent_data(force_id, list/input)
	if(LAZYLEN(provided_list))
		input = provided_list
	if(!islist(input))
		return
	var/list_id = force_id ? force_id : generate_unique_code()

	var/json_data = json_encode(input)

	if(!json_data)
		return

	var/full_path_to_use = get_full_path(list_id)

	WRITE_FILE(file(full_path_to_use), json_data)

	return

/datum/persistent_datum/list/load_persistent_data(thing_id)
	if(!thing_id || !check_file_exists(thing_id))
		return FALSE

	var/full_path_to_use = get_full_path(thing_id)

	var/list/unpacked_list = json_decode(file2text(full_path_to_use))

	if(!islist(unpacked_list))
		return FALSE

	return unpacked_list
