/mob/living/carbon/human/proc/save_persistent_prefs()
	if(!unique_id || !mind || !mind.client || !mind.client.prefs)
		return FALSE

	// Read everything into cache
	var/datum/preferences/preferences = mind.client.prefs
	var/datum/bank_account/starting_bank = SSeconomy.bank_accounts_by_id["[unique_id]"]
	var/preferences_unique_id = preferences.value_cache[/datum/preference/id/unique_id]

	if(preferences_unique_id != unique_id)
		message_admins("[src]'s unique ID ([unique_id]) was not the same as the one in their preferences, and thus will not be saved.")
		return FALSE

	if(!starting_bank)
		message_admins("WARNING: [src]'s bank ([unique_id]) does not exist in-game, it won't be saved to their file.")

	for (var/datum/preference/preference as anything in get_preferences_in_priority_order())
		if (preference.savefile_identifier != PREFERENCE_CHARACTER)
			continue

		if(!preference.persistent)
			continue

		preference.on_persistent_human_save(src, preferences)

		if(starting_bank)
			preference.on_persistent_bank_save(starting_bank, preferences)

	preferences.full_character_save()
	return TRUE
