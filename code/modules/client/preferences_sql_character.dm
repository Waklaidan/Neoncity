/proc/character_exists_in_db(var/unique_id)
	var/datum/db_query/character_query = SSdbcore.NewQuery({"SELECT real_name FROM [format_table_name("characters")] WHERE unique_id = :unique_id"}, list(
			"unique_id" = unique_id
		))

	if(!character_query.Execute())
		qdel(character_query)
//		stack_trace("Can't execute (find character).")
		return FALSE

	if(!character_query.NextRow())
		qdel(character_query)
//		stack_trace("Unique char ID does not exist (find bank).")
		return FALSE

	qdel(character_query)

	return TRUE

/datum/preferences/proc/current_character_exists_in_db()
	var/unique_id = value_cache[/datum/preference/id/unique_id]

	if(character_exists_in_db(unique_id))
		return TRUE


/datum/preferences/proc/add_character_to_db()

	var/unique_id = value_cache[/datum/preference/id/unique_id]
	var/real_name = value_cache[/datum/preference/name/real_name]

	// only adds this character to the database if it does not already exist.

	if(character_exists_in_db(unique_id))
		return FALSE

	if(add_new_character_to_db(unique_id, real_name, parent.ckey, default_slot))
		return TRUE


/proc/add_new_character_to_db(unique_id, real_name, ckey, slot)

	var/datum/db_query/character_query = SSdbcore.NewQuery("INSERT INTO [format_table_name("characters")] (unique_id, real_name, ckey, slot) VALUES (:unique_id, :real_name, :ckey, :slot)", list(
			"unique_id" = unique_id, "real_name" = real_name, "ckey" = ckey, "slot" = slot
		))

	if(!character_query.Execute())
		qdel(character_query)
//		stack_trace("Can't add (update character).")
		return FALSE

	qdel(character_query)

	return TRUE


/proc/update_character_to_db(unique_id, real_name, ckey, slot)
	var/datum/db_query/character_query = SSdbcore.NewQuery("UPDATE [format_table_name("characters")] SET real_name = :real_name, ckey = :ckey, slot = :slot WHERE unique_id = :unique_id", list(
		"unique_id" = unique_id, "real_name" = real_name, "ckey" = ckey, "slot" = slot
		))

	if(!character_query.Execute())
		qdel(character_query)
//		stack_trace("Can't execute (update character).")
		return FALSE

	qdel(character_query)

//	message_admins("PREFS TO character db SUCCESSFUL.")

	return TRUE

/datum/preferences/proc/update_character_prefs_to_db()
// at the end of the round/midround when the character's saved earnings are to be stored to DB.
	var/unique_id = value_cache[/datum/preference/id/unique_id]
	var/real_name = value_cache[/datum/preference/name/real_name]

	if(update_character_to_db(unique_id, real_name, parent.ckey, default_slot))
		return TRUE

/proc/delete_character_from_db(var/unique_id)

	var/datum/db_query/query_delete_character = SSdbcore.NewQuery(
		"DELETE FROM [format_table_name("characters")] WHERE unique_id = :unique_id",
		list("unique_id" = unique_id)
	)

	if(!query_delete_character.warn_execute())
//		stack_trace("Can't execute (delete character).")
		qdel(query_delete_character)
		return FALSE

	qdel(query_delete_character)

//	message_admins("DELETED character SUCCESS.")

	return TRUE

/datum/preferences/proc/delete_character_entry_from_db()
	var/unique_id = value_cache[/datum/preference/id/unique_id]

	if(delete_character_from_db(unique_id))
		return TRUE


