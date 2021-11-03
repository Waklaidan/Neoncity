/proc/bank_exists_in_db(var/unique_id)
	var/datum/db_query/bank_query = SSdbcore.NewQuery({"SELECT bank_balance FROM [format_table_name("banks")] WHERE unique_id = :unique_id"}, list(
			"unique_id" = unique_id
		))

	if(!bank_query.Execute())
		qdel(bank_query)
//		stack_trace("Can't execute (find bank).")
		return FALSE

	if(!bank_query.NextRow())
		qdel(bank_query)
//		stack_trace("Unique Bank ID does not exist (find bank).")
		return FALSE

	qdel(bank_query)

	return TRUE

/datum/preferences/proc/current_bank_exists_in_db()
	var/unique_id = value_cache[/datum/preference/id/unique_id]

	if(bank_exists_in_db(unique_id))
		return TRUE


/datum/preferences/proc/add_character_bank_to_db()

	var/unique_id = value_cache[/datum/preference/id/unique_id]
	var/bank_balance = value_cache[/datum/preference/numeric/bank_balance]
	var/account_holder = value_cache[/datum/preference/name/real_name]

	if(current_bank_exists_in_db())
		return FALSE

	if(add_new_bank_to_db(unique_id, account_holder, bank_balance, parent.ckey))
		return TRUE


/proc/add_new_bank_to_db(unique_id, account_holder, bank_balance, ckey)
	var/datum/db_query/bank_query = SSdbcore.NewQuery(
		"INSERT INTO [format_table_name("banks")] (ckey, unique_id, account_holder, bank_balance) VALUES (:ckey, :unique_id, :account_holder, :bank_balance)",
		list("ckey" = ckey, "unique_id" = unique_id, "account_holder" = account_holder, "bank_balance" = bank_balance)
	)

	if(!bank_query.Execute())
		qdel(bank_query)
//		stack_trace("Can't add (update bank).")
		return FALSE

	qdel(bank_query)

	return TRUE


/proc/get_bank_db_balance(unique_id)
// for when a player has connected anew - to ensure offline transactions are updated to their save file.

	var/balance = null

	var/datum/db_query/bank_query = SSdbcore.NewQuery({"SELECT bank_balance FROM [format_table_name("banks")] WHERE unique_id = :unique_id"}, list(
			"unique_id" = unique_id
		))

	if(!bank_query.Execute())
		qdel(bank_query)
//		stack_trace("Can't execute (update bank).")
		return FALSE

	if(bank_query.NextRow())
		balance = text2num(bank_query.item[1])

	qdel(bank_query)

	return balance

/datum/preferences/proc/update_bank_from_db()
// for when a player has connected anew - to ensure offline transactions are updated to their save file.
	var/unique_id = value_cache[/datum/preference/id/unique_id]
	var/new_balance = get_bank_db_balance(unique_id)

	if(isnull(new_balance))
		return FALSE

	var/datum/preference/bank_pref = GLOB.preference_entries[/datum/preference/numeric/bank_balance]
	write_preference(bank_pref, new_balance)

//	message_admins("BANK TO SAV SUCCESSFUL.")

	return TRUE

/proc/bank_update_to_db(unique_id, bank_balance, account_holder, ckey)
	var/datum/db_query/bank_query = SSdbcore.NewQuery("UPDATE [format_table_name("banks")] SET bank_balance = :bank_balance, account_holder = :account_holder, ckey = :ckey WHERE unique_id = :unique_id", list(
		"unique_id" = unique_id, "bank_balance" = bank_balance, "account_holder" = account_holder, "ckey" = ckey
		))

	if(!bank_query.Execute())
		qdel(bank_query)
//		stack_trace("Can't execute (update bank).")
		return FALSE

	qdel(bank_query)

//	message_admins("PREFS TO BANK SUCCESSFUL.")

	return TRUE

/datum/preferences/proc/bank_prefs_to_db()
// at the end of the round/midround when the character's saved earnings are to be stored to DB.
	var/unique_id = value_cache[/datum/preference/id/unique_id]
	var/bank_balance = value_cache[/datum/preference/numeric/bank_balance]
	var/account_holder = value_cache[/datum/preference/name/real_name]

	if(bank_update_to_db(unique_id, bank_balance, account_holder, parent.ckey))
		return TRUE

/proc/delete_bank_from_db(var/unique_id)

	var/datum/db_query/query_delete_bank = SSdbcore.NewQuery(
		"DELETE FROM [format_table_name("banks")] WHERE unique_id = :unique_id",
		list("unique_id" = unique_id)
	)

	if(!query_delete_bank.warn_execute())
//		stack_trace("Can't execute (delete bank).")
		qdel(query_delete_bank)
		return FALSE

	qdel(query_delete_bank)

//	message_admins("DELETED BANK SUCCESS.")

	return TRUE

/datum/preferences/proc/delete_character_bank_from_db()
	var/unique_id = value_cache[/datum/preference/id/unique_id]

	if(delete_bank_from_db(unique_id))
		return TRUE


