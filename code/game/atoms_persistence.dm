/atom
	var/image_id = null // Used for icon persistence.
	var/tmp/persistent_host_id	= null // temp var used for saving.
	var/tmp/persistent_atom_id	= null // temp var used for saving

	var/dont_save = FALSE
	var/save_image = FALSE
	var/save_contents = TRUE
	var/save_reagents = TRUE
	var/save_in_lots = TRUE
	var/save_in_p_lots = FALSE
	var/save_during_noncanon = FALSE // set to true to allow this to save regardless if round is canon or not

/atom/proc/path_to_save() // for overwriting
	return type

/atom/proc/get_variable_value(variable_name)
	if(!variable_name)
		return
	return listgetindex(vars, variable_name)

/atom/proc/get_initial_variable_value(variable_name)
	if(!variable_name)
		return
	return initial(vars[variable_name])

/atom/proc/base_vars_to_save() // these are the base vars for obj types. Don't directly use.
	return list("name", "dir", "color", "pixel_x", "pixel_y", "pixel_z", "image_id")

/atom/proc/unique_vars_to_save() // used to specify what uniquely saves for this. Do not directly use for saving.
	return

/atom/proc/get_image_for_saving() // used for image saving, can be overwritten for conditional cases
	return getCompoundIcon(src)

/atom/proc/has_been_saved() // to ensure the game knows upon initialization that this is not a fresh obj
	return persistent_atom_id


/atom/proc/save_persistent_image(overwrite_image_id = null)
	var/used_image_id = overwrite_image_id ? overwrite_image_id : image_id
	if(!used_image_id)
		return
	if(SSpersistent_universe)
		SSpersistent_universe.save_persistent_data(PERSISTENCE_IMAGE, src, used_image_id)

/atom/proc/restore_persistent_image(overwrite_image_id = null)
	var/used_image_id = overwrite_image_id ? overwrite_image_id : image_id
	if(!used_image_id)
		return
	if(SSpersistent_universe && used_image_id)
		var/icon/I = SSpersistent_universe.load_persistent_file(PERSISTENCE_IMAGE, used_image_id)
		if(!I)
			return FALSE
		icon = I
		return I

/atom/proc/serialize(save_images = TRUE, persistence_id = null)
	var/list/serialized_result = list()

	serialized_result["type"] = path_to_save()

	if(save_image)
		save_persistent_image()

	var/all_vars = modified_var_list()
	var/all_reagents = list()

	if(save_reagents && reagents && LAZYLEN(reagents.reagent_list))
		for(var/datum/reagent/R in reagents.reagent_list)
			all_reagents["[R.type]"] = R.volume

	if(persistence_id)
		persistent_atom_id = persistence_id
	if(!persistent_atom_id)
		persistent_atom_id = unique_code()

	var/atom/A = loc
	if(isatom(A))
		if(!A.persistent_atom_id)
			A.persistent_atom_id = unique_code()
		persistent_host_id = A.persistent_atom_id

	serialized_result["atom_id"] = persistent_atom_id
	serialized_result["host_id"] = persistent_host_id

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

/atom/proc/deserialize(list/saved_list, load_images = TRUE)
	if(!saved_list)
		return

	var/all_vars = saved_list["vars"]
	var/all_reagents = saved_list["reagents"]
	var/all_decals = saved_list["decals"]
	var/the_atom_id = saved_list["atom_id"]
	var/the_host_id = saved_list["host_id"]

	if(the_atom_id)
		persistent_atom_id = the_atom_id

	if(the_host_id)
		persistent_host_id = the_host_id

	if(LAZYLEN(all_vars))
		for(var/V in all_vars)
			vars[V] = listgetindex(all_vars,V)

	if(LAZYLEN(all_reagents))
		if(reagents && reagents.reagent_list)
			reagents.clear_reagents()

			for(var/R in all_reagents)
				var/reagent_path = text2path(R)
				var/reagent_amount = all_reagents[R]
				if(!reagent_path)
					continue
				reagents.add_reagent(reagent_path, reagent_amount)

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

	if(save_image)
		restore_persistent_image()

	return TRUE

/proc/deserialize_to_atom(list/saved_list, atom/loc_to_spawn)
	if(!saved_list)
		return
	if(!loc_to_spawn)
		return
	var/type_to_spawn = text2path(saved_list["type"])
	var/spawn_atom_id = text2path(saved_list["atom_id"])
	if(!ispath(type_to_spawn))
		return

	var/atom/spawned_atom

	if(ispath(type_to_spawn, /turf))
		var/turf/new_turf = locate(loc_to_spawn.x, loc_to_spawn.y, loc_to_spawn.z)
		new_turf.ChangeTurf(type_to_spawn)
		spawned_atom = new_turf

	else
		spawned_atom = new type_to_spawn(loc_to_spawn, persistence_id = spawn_atom_id)

	if(!spawned_atom)
		return

	spawned_atom.deserialize(saved_list)

	if(isobj(spawned_atom))
		var/obj/spawned_obj = spawned_atom
		spawned_obj.forceMove(loc_to_spawn)

	return spawned_atom



//serialises but also saves contents.
/atom/proc/get_full_persistent_object_data(id_to_use)
	var/json_data = list()

	var/force_id = id_to_use ? id_to_use : unique_code("OBJ_")

	json_data["main"] = serialize(persistence_id = force_id)

	var/list/all_saveable_contents = get_saveable_contents()
	var/list/content_list = list()

	for(var/obj/I in all_saveable_contents)

		var/item_id = id_to_use ? id_to_use : unique_code()

		content_list["[item_id]"] = I.serialize(item_id)

	json_data["contents"] = content_list

	return json_data

/proc/unpack_full_persistent_object_data(list/full_json, location_to_spawn)
	var/obj/main_obj = deserialize_to_atom(full_json["main"], location_to_spawn)

	if(!main_obj)
		CRASH("Unpack persistent object: No object spawned.")

	var/content_atoms = full_json["contents"]
	var/list/associated_atoms = list()

	for(var/V in content_atoms)
		var/obj/spawn_obj = deserialize_to_atom(content_atoms[V], location_to_spawn)
		associated_atoms[spawn_obj.persistent_atom_id] = spawn_obj

	for(var/P in associated_atoms)
		var/obj/O = listgetindex(associated_atoms, P)
		if(!O)
			continue
		var/atom/host = associated_atoms["[O.persistent_host_id]"]
		if(!host)
			continue
		O.forceMove(host)

	return main_obj


/atom/proc/vars_to_save(modified_vars_only = FALSE) // this adds both together. only use /this/ when using it to save.
	var/list/total_vars = base_vars_to_save() + unique_vars_to_save()
	var/list/variables_to_save = list()

	for(var/V in total_vars)
		var/var_content = get_variable_value(V)
		// will reject anything that isn't a string, number, path, or list.
		if(!istext(var_content) && !isnum(var_content) && !ispath(var_content) && !islist(var_content))
			continue

		// if it's a list, we'll check the contents of it
		if(islist(var_content))
			var/list/M = var_content
			var/save_var = TRUE
			for(var/P in M)
				// check inside the list
				if(!istext(P) && !isnum(P) && !ispath(P) && !islist(P))
					save_var = FALSE
					continue
				if(listgetindex(M,P))
					var/asso_var = listgetindex(M,P)
					if(asso_var && (!istext(asso_var) && !isnum(asso_var) && !ispath(asso_var)) && !islist(var_content))
						// in case there's a list in a list, won't go further than this
						save_var = FALSE
						continue
						if(islist(var_content))
							var/list/asso_var_list = var_content
							for(var/L in asso_var_list)
								if(!istext(L) && !isnum(L) && !ispath(L))
									save_var = FALSE
									continue

								if(listgetindex(asso_var_list,L))
									var/int_var = listgetindex(asso_var_list,L)
									if(!istext(int_var) && !isnum(int_var) && !ispath(int_var))
										save_var = FALSE
										continue


			if(!save_var)
				continue

		if(modified_vars_only)
			if(var_content == get_initial_variable_value(V))
				continue

		variables_to_save |= V

	return variables_to_save

/atom/proc/modified_var_list()
	var/list/output_list = list()
	for(var/V in vars_to_save(modified_vars_only = TRUE))
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
		if(O == src)
			continue
		var/obj/location = loc
		if(isobj(loc) && !location.can_save() && !location.save_contents)
			continue

		saveable_items |= O

	return saveable_items