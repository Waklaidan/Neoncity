/datum/buildmode_mode/mapload
	key = "mapload"
	var/map_id

/datum/buildmode_mode/mapload/Destroy()
	map_id = null
	return ..()

/datum/buildmode_mode/mapload/show_help(client/c)
	to_chat(c, "<span class='notice'>***********************************************************\n\
		Right Mouse Button on buildmode button = Select map id to load.\n\
		Right Mouse Button on turf = starting position to load map.\n\
		Tip: Select the bottom left turf of the area that you are trying to load the map from.\n\
		***********************************************************</span>")

/datum/buildmode_mode/mapload/Reset()
	. = ..()
	map_id = null

/datum/buildmode_mode/mapload/change_settings(client/c)
	var/new_map_id = input(c, "Enter map ID name:", "Map ID", map_id)
	if(!new_map_id || !length(new_map_id))
		return

	if(!SSpersistent_universe.check_persistent_file(PERSISTENCE_MAP_BUILDMODE, new_map_id))
		to_chat(usr, "No map id found for the provided id, create one first.")
		return
	map_id = new_map_id

/datum/buildmode_mode/mapload/handle_click(client/c, params, object)
	var/list/modifiers = params2list(params)

	if(!isturf(object))
		return

	var/turf/T = object

	if(LAZYACCESS(modifiers, LEFT_CLICK))
		var/confirm = tgui_alert(usr,"Are you sure you want to load [map_id] here?", "Save Map", list("Yes", "No"))
		if(confirm == "Yes")
			SSpersistent_universe.load_persistent_data(PERSISTENCE_MAP_BUILDMODE, map_id, T)
			log_admin("Build Mode: [key_name(c)] loaded the map with ID '[map_id]' loaded at [T] at [AREACOORD(T)].")


