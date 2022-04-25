///////////////////////
// IMAGE PERSISTENCE //
///////////////////////

/datum/persistent_datum/image
	name = "Image Persistence"
	id = PERSISTENCE_IMAGE
	path = PERSISTENT_OBJ_IMAGE_DIRECTORY
	prefix = "IMG_"
	extension = ".png"

/datum/persistent_datum/image/proc/get_image_id(input)
	if(!input)
		return

	var/image_id = generate_unique_code()

	if(isatom(input))
		var/obj/O = input
		if(!O.image_id)
			O.image_id = image_id
		return O.image_id

	return image_id

/datum/persistent_datum/image/proc/get_image(input)
	if(isicon(input))
		return input

	if(isatom(input))
		var/obj/O = input
		return O.get_image_for_saving()

// returns the image id in case you need it to refer to somewhere else.
/datum/persistent_datum/image/save_persistent_data(input, force_id, overwrite_obj_id)
	. = ..()
	if(!input)
		return FALSE
	var/image_id = force_id ? force_id : get_image_id(input)
	var/image = get_image(input)

	var/full_path = get_full_path(image_id)
	fcopy(image, full_path)

	if(overwrite_obj_id && isobj(input))
		var/obj/O = input
		O.image_id = image_id

	return image_id

/datum/persistent_datum/image/load_persistent_data(image_id) // returns the file icon stored by this unique id
	. = ..()
	if(!image_id || !check_file_exists(image_id))
		return FALSE

	return icon(file(get_full_path(image_id)))

