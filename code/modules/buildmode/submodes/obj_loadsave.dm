/datum/buildmode_mode/objload
	key = "objload"
	var/obj_id

/datum/buildmode_mode/objload/Destroy()
	obj_id = null
	return ..()

/datum/buildmode_mode/objload/show_help(client/c)
	to_chat(c, "<span class='notice'>***********************************************************\n\
		Right Mouse Button on buildmode button = Select obj id to load/save as.\n\
		Left Mouse Button on atom = save atom as file id.\n\
		Right Mouse Button on atom = load atom from file id.\n\
		Tip: Select the bottom left turf of the area that you are trying to load the map from.\n\
		***********************************************************</span>")

/datum/buildmode_mode/objload/Reset()
	. = ..()
	obj_id = null

/datum/buildmode_mode/objload/change_settings(client/c)
	var/new_obj_id = input(c, "Enter object ID name:", "Obj ID", obj_id)
	if(!new_obj_id || !length(new_obj_id))
		return

	obj_id = new_obj_id

/datum/buildmode_mode/objload/handle_click(client/c, params, object)
	var/list/modifiers = params2list(params)

	if(!isatom(object) )
		return

	var/atom/A = object
	var/turf/T = get_turf(A)

	if(!A || !T)
		return


	if(LAZYACCESS(modifiers, RIGHT_CLICK))
		if(!SSpersistent_universe.check_persistent_file(PERSISTENCE_OBJECT_BUILDMODE, obj_id))
			to_chat(usr, "No object found with this ID.")
			return

		var/confirm = tgui_alert(usr,"Are you sure you want to load '[obj_id]' here?", "Load Obj", list("Yes", "No"))
		if(confirm == "Yes")
			if(SSpersistent_universe.load_persistent_data(PERSISTENCE_OBJECT_BUILDMODE, obj_id, T))
				log_admin("Build Mode: [key_name(c)] loaded '[obj_id]' at [AREACOORD(T)].")

	if(LAZYACCESS(modifiers, LEFT_CLICK))
		if(!obj_id)
			to_chat(usr, "Please select an object id first (right click buildmode button).")
			return
		var/confirm = tgui_alert(usr,"Are you sure you want to save [A] to [obj_id]?", "Save Obj", list("Yes", "No"))
		if(confirm == "Yes")
			SSpersistent_universe.save_persistent_data(PERSISTENCE_OBJECT_BUILDMODE, A, obj_id)
			log_admin("Build Mode: [key_name(c)] saved [A] as '[obj_id]' [AREACOORD(T)].")





