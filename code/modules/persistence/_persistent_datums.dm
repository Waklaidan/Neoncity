
///////////////////////
// DATUM PERSISTENCE //
///////////////////////

// Define subtypes of persistent data here, to avoid repeating code and keep things standardized.

/datum/persistent_datum
	var/name = "Persistent Datum"
	var/id = null
	var/path = PERSISTENT_DIRECTORY

	var/prefix = null
	var/extension = ".json"

/datum/persistent_datum/proc/save_persistent_data(input, force_id)
	return

/datum/persistent_datum/proc/load_persistent_data(out)
	return

// Checks if the full path actually exists.
/datum/persistent_datum/proc/check_file_exists(id)
	var/full_path = get_full_path(id)
	return fexists(full_path)

/datum/persistent_datum/proc/get_full_path(id)
	return "[path][id][extension]"

/datum/persistent_datum/proc/delete_persistent_data(id)
	var/full_path = get_full_path(id)
	if(check_file_exists(id))
		fdel(full_path)
		return TRUE
	CRASH("Asked to delete a nonexistent file '[full_path]'. ID: [id].")

/datum/persistent_datum/proc/generate_unique_code()
	return unique_code(prefix)


