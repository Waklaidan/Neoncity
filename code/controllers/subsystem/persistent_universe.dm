SUBSYSTEM_DEF(persistent_universe) // Similar to persistence subsystem but does not use json.
	name = "Persistent Universe"
	init_order = INIT_ORDER_PERSISTENT_UNIVERSE
	flags = SS_NO_FIRE
	var/list/persistent_datums = list()

/datum/controller/subsystem/persistent_universe/Initialize(start_timeofday)
	for(var/PE in subtypesof(/datum/persistent_datum))
		var/datum/persistent_datum/D = new PE()
		if(!D.id)
			qdel(D)
			continue
		persistent_datums["[D.id]"] = D
		D.on_world_load()

	return ..()

/datum/controller/subsystem/persistent_universe/proc/save_universe()
	for(var/datum/persistent_datum/D in persistent_datums)
		D.on_world_save()

/datum/controller/subsystem/persistent_universe/proc/get_persistence_system_by_id(id)
	return persistent_datums["[id]"]

// common use procs

/datum/controller/subsystem/persistent_universe/proc/load_persistent_file(persistence_type, file_id, meta1, meta2)
	var/datum/persistent_datum/D = get_persistence_system_by_id(persistence_type)
	if(!D)
		return FALSE

	return D.load_persistent_data(file_id, meta1, meta2)

/datum/controller/subsystem/persistent_universe/proc/check_persistent_file(persistence_type, file_id)
	var/datum/persistent_datum/D = get_persistence_system_by_id(persistence_type)
	if(!D)
		return FALSE

	return D.check_file_exists(file_id)

/datum/controller/subsystem/persistent_universe/proc/delete_persistent_data(persistence_type, file_id)
	var/datum/persistent_datum/D = get_persistence_system_by_id(persistence_type)
	if(!D)
		return FALSE

	return D.delete_persistent_data(file_id)

/datum/controller/subsystem/persistent_universe/proc/save_persistent_data(persistence_type, file_id, input, meta1, meta2)
	var/datum/persistent_datum/D = get_persistence_system_by_id(persistence_type)
	if(!D)
		return FALSE

	return D.save_persistent_data(file_id, meta1, meta2)