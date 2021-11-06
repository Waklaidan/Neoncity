/datum/preference/numeric/age
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL
	savefile_key = "age"
	savefile_identifier = PREFERENCE_CHARACTER

	minimum = AGE_MIN
	maximum = AGE_MAX

	persistent = TRUE

/datum/preference/numeric/age/apply_to_human(mob/living/carbon/human/target, value)
	target.age = value

/datum/preference/numeric/age/on_persistent_human_save(mob/living/carbon/human/target, datum/preferences/preferences)
	preferences.write_preference(src, target.age)
	return TRUE
