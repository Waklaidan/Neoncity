/datum/persistent_datum/character
	name = "Character Persistence"
	id = PERSISTENCE_CHARACTER

/datum/persistent_datum/character/save_persistent_data(character_unique_id)
	. = ..()
	var/mob/living/carbon/human/H = get_human_by_ckey(character_unique_id)
	if(!H)
		return

	return H.save_persistent_prefs()

/datum/persistent_datum/character/on_world_save()
	. = ..()
	for(var/mob/living/carbon/human/human_to_save in GLOB.player_list)
		human_to_save.save_persistent_prefs()
	return TRUE


