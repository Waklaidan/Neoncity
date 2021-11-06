/// Gender preference
/datum/preference/choiced/gender
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "gender"
	priority = PREFERENCE_PRIORITY_GENDER
	persistent = TRUE

/datum/preference/choiced/gender/init_possible_values()
	return list(MALE, FEMALE, PLURAL)

/datum/preference/choiced/gender/apply_to_human(mob/living/carbon/human/target, value)
	if(!target.dna.species.sexes)
		value = PLURAL //disregard gender preferences on this species
	target.gender = value

/datum/preference/choiced/gender/on_persistent_human_save(mob/living/carbon/human/target, datum/preferences/preferences)
	preferences.write_preference(src, target.gender)
	return TRUE
