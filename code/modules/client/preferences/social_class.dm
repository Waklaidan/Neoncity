/// Social Classes
/datum/preference/choiced/social_class
	savefile_key = "social_class"
	savefile_identifier = PREFERENCE_CHARACTER
	can_randomize = FALSE
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL

	persistent = TRUE

/datum/preference/choiced/social_class/init_possible_values()
	return SOCIAL_CLASSES

/datum/preference/choiced/social_class/create_default_value()
	return MIDDLE_CLASS

/datum/preference/choiced/social_class/apply_to_human(mob/living/carbon/human/target, value)
	target.social_class = value

/datum/preference/choiced/social_class/on_persistent_human_save(mob/living/carbon/human/target, datum/preferences/preferences)
	preferences.value_cache[type] = target.social_class

