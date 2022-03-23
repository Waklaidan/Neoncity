/atom
	var/dont_save = FALSE // If FALSE, this will save when called for saving mechanics, if TRUE, it won't.
	var/image_id = null // Used for icon persistence.
	var/tmp/persistent_host_id	= null // temp var used for saving.
	var/tmp/persistent_atom_id	= null // temp var used for saving.

/atom/proc/get_variable_value(variable_name)
	if(!variable_name)
		return
	return vars[variable_name]

/atom/proc/get_initial_variable_value(variable_name)
	if(!variable_name)
		return
	return initial(vars[variable_name])

/atom/proc/base_vars_to_save() // these are the base vars for obj types. Don't directly use.
	return list("name", "dir", "color", "x", "y", "z", "pixel_x", "pixel_y", "pixel_z")

/atom/proc/unique_vars_to_save() // used to specify what uniquely saves for this. Do not directly use for saving.
	return


/atom/proc/serialize()
	var/list/serialized_result = list()
	var/all_vars = modified_var_list()
	var/all_reagents = list()

	if(reagents && LAZYLEN(reagents.reagent_list))
		for(var/datum/reagent/R in reagents.reagent_list)
			all_reagents["[R.type]"] = R.volume

	if(LAZYLEN(all_vars))
		serialized_result["vars"] = all_vars
	if(LAZYLEN(all_reagents))
		serialized_result["reagents"] = all_reagents
	if(isturf(src) && comp_lookup)
		var/list/decal_data = list()
		if(length(comp_lookup[COMSIG_ATOM_UPDATE_OVERLAYS]))
			for(var/datum/element/decal/D in comp_lookup[COMSIG_ATOM_UPDATE_OVERLAYS])
				var/decal_id = 0
				decal_id++
				decal_data["[decal_id]"] = D.persistence_key

			if(LAZYLEN(decal_data))
				serialized_result["decals"] = decal_data

	return serialized_result

/atom/proc/deserialize(list/saved_list)
	if(!saved_list)
		return

	var/all_vars = saved_list["vars"]
	var/all_reagents = saved_list["reagents"]
	var/all_decals = saved_list["decals"]

	if(LAZYLEN(all_vars))
		for(var/V in all_vars)
			vars[V] = all_vars[V]

	if(LAZYLEN(all_reagents))
		if(reagents && reagents.reagent_list)
			reagents.clear_reagents()

			for(var/R in all_reagents)
				if(!R || all_reagents[R])
					continue
				reagents.add_reagent(R, all_reagents[R])

	if(LAZYLEN(all_decals))
		for(var/D in all_decals)
			var/decal_entry = all_decals["[D]"]
			var/decal_path = decal_entry["decal_type"]
			if(!decal_path)
				continue
			var/decal_dir = decal_entry["dir"]
			var/decal_color = decal_entry["color"]
			var/obj/effect/turf_decal/new_decal = new decal_path(src)
			new_decal.dir = decal_dir
			new_decal.color = decal_color

	return TRUE


/atom/proc/vars_to_save() // this adds both together. only use /this/ when using it to save.
	var/list/total_vars = base_vars_to_save() + unique_vars_to_save()
	var/list/variables_to_save = list()

	for(var/V in total_vars)
		if(get_variable_value(V) == get_initial_variable_value(V))
			continue
		variables_to_save |= V

	return variables_to_save

/atom/proc/modified_var_list()
	var/list/output_list = list()
	for(var/V in vars_to_save())
		output_list[V] = get_variable_value(V)
	return output_list

/atom/proc/can_save() // conditionals if this thing can save or not
	if(dont_save)
		return FALSE
	return TRUE

/atom/proc/on_save() // calls just before saving to prepare
	return TRUE

/atom/proc/on_load() // calls just after saving to adjust if needed
	return TRUE

/atom/proc/get_saveable_contents()
	var/list/saveable_items = list()
	for(var/obj/O in get_all_contents())
		if(!O.can_save())
			continue

		saveable_items |= O

	return saveable_items