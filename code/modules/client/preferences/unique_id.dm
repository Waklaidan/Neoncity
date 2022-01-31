/datum/preference/id
	category = "id"
	savefile_identifier = PREFERENCE_CHARACTER
	abstract_type = /datum/preference/id
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL
	var/prefix = ""
	can_randomize = FALSE


/datum/preference/id/is_valid(value)
	return istext(value) && !isnull(value)

/datum/preference/id/create_default_value()
	return unique_code(prefix)

/*
/datum/preference/id/should_show_on_page(preference_tab)
	return FALSE
*/

/datum/preference/id/apply_to_human(mob/living/carbon/human/target, value)
	return

/datum/preference/id/deserialize(input, datum/preferences/preferences)
	return input

/datum/preference/id/serialize(input)
	return input

/datum/preference/id/unique_id
	savefile_key = "unique_id"
	prefix = "ID"

/datum/preference/id/unique_id/apply_to_human(mob/living/carbon/human/target, value)
	target.unique_id = value






