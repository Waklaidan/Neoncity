SUBSYSTEM_DEF(persistent_universe) // Similar to persistence subsystem but does not use json.
	name = "Persistent Universe"
	init_order = INIT_ORDER_PERSISTENT_UNIVERSE
	flags = SS_NO_FIRE

/datum/controller/subsystem/persistent_universe/Initialize(start_timeofday)
	return ..()

/datum/controller/subsystem/persistent_universe/proc/save_universe()
	save_all_humans()
	save_all_banks()
	save_all_lots()


/datum/controller/subsystem/persistent_universe/proc/save_all_humans()
	for(var/mob/living/carbon/human/human_to_save in GLOB.player_list)
		human_to_save.save_persistent_prefs()


/datum/controller/subsystem/persistent_universe/proc/save_all_banks()
	return // to be implemented

/datum/controller/subsystem/persistent_universe/proc/save_all_lots()
	return // to be implemented
