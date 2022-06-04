/datum/buildmode_mode/mapsave
	key = "mapsave"

	use_corner_selection = TRUE
	var/map_id

/datum/buildmode_mode/mapsave/show_help(client/c)
	to_chat(c, span_notice("***********************************************************"))
	to_chat(c, span_notice("Left Mouse Button on turf                 = Select corner "))
	to_chat(c, span_notice("Right Mouse Button on buildmode button = Select map ID name"))
	to_chat(c, span_notice("***********************************************************"))

/datum/buildmode_mode/mapsave/Destroy()
	map_id = null
	return ..()

/datum/buildmode_mode/mapsave/change_settings(client/c)
	var/new_map_id = input(c, "Enter map ID name:", "Map ID", map_id)
	if(!new_map_id || !length(new_map_id))
		return
	map_id = new_map_id
	deselect_region()

/datum/buildmode_mode/mapsave/handle_click(client/c, params, obj/object)
	if(isnull(map_id))
		to_chat(c, span_warning("Name the map ID name first."))
		deselect_region()
		return
	..()

/datum/buildmode_mode/mapsave/handle_selected_area(client/c, params)
	var/list/modifiers = params2list(params)

	if(LAZYACCESS(modifiers, LEFT_CLICK))
		var/list/save_turfs = block(get_turf(cornerA),get_turf(cornerB))
		var/confirm = tgui_alert(usr,"Are you sure you want to save this area?", "Save Map", list("Yes", "No"))
		var/full_map_path
		if(confirm == "Yes")
			to_chat(c, span_warning("Saving [save_turfs.len] saveable turfs."))
			full_map_path = SSpersistent_universe.save_persistent_data(PERSISTENCE_MAP_BUILDMODE, map_id, save_turfs)
		log_admin("Build Mode: [key_name(c)] saved the map with ID '[map_id]' in the region from [AREACOORD(cornerA)] to [AREACOORD(cornerB)]. File path and ID: [full_map_path]")
