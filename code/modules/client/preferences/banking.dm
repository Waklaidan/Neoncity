/datum/preference/numeric/bank_balance
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL
	savefile_key = "bank_balance"
	savefile_identifier = PREFERENCE_CHARACTER

	minimum = MIN_BANK
	maximum = MAX_BANK

	can_randomize = FALSE

	persistent = TRUE

/datum/preference/numeric/bank_balance/apply_to_human(mob/living/carbon/human/target, value)
	return

/datum/preference/numeric/bank_balance/create_default_value()
	return 0


/datum/preference/numeric/bank_balance/compile_ui_data()
	. = ..()

/datum/preference/numeric/bank_balance/apply_to_bank(datum/bank_account/target, value)
	target.account_balance = value

/datum/preference/numeric/bank_balance/on_persistent_bank_save(datum/bank_account/target, datum/preferences/preferences)
	preferences.write_preference(src, target.account_balance)

	if(SSdbcore.Connect()) // save to the DB.
		bank_update_to_db(target.account_id, target.account_balance, target.account_holder, preferences.parent.ckey)

	return TRUE
