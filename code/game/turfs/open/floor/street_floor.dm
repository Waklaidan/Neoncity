//Pavements, roads, etc.

/turf/open/floor/pavement
	name = "pavement"
	desc = "Ah, how it clicks under your heels."
	icon = 'icons/turf/floors/pavement.dmi'
	icon_state = "pavement-255"
	base_icon_state = "pavement"
	floor_tile = /obj/item/stack/tile/pavement
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_PAVEMENT)
	canSmoothWith = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_PAVEMENT, SMOOTH_GROUP_CLOSED_TURFS)
	flags_1 = NONE
	bullet_bounce_sound = null
	tiled_dirt = FALSE

/turf/open/floor/pavement/setup_broken_states()
	return list("damaged")

/turf/open/floor/pavement/Initialize()
	. = ..()
	update_icon()

/turf/open/floor/pavement/update_icon()
	. = ..()
	if(!.)
		return
	if(!broken && !burnt)
		if(smoothing_flags & (SMOOTH_CORNERS|SMOOTH_BITMASK))
			QUEUE_SMOOTH(src)
	else
		make_plating()
		if(smoothing_flags & (SMOOTH_CORNERS|SMOOTH_BITMASK))
			QUEUE_SMOOTH_NEIGHBORS(src)


/turf/open/floor/road
	name = "road"
	desc = "Dark asphalt laid down for a vehicle pathway."
	icon = 'icons/turf/floors/street.dmi'
	icon_state = "road"
	floor_tile = /obj/item/stack/tile/road
	tiled_dirt = FALSE
	smoothing_groups = list()

/turf/open/floor/brick_paving
	name = "brick paving"
	icon = 'icons/turf/floors/street.dmi'
	icon_state = "brick_paving"
	floor_tile = /obj/item/stack/tile/brick_paving
	tiled_dirt = FALSE
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_PAVEMENT)

/turf/open/floor/brick_slabs
	name = "brick slabs"
	icon = 'icons/turf/floors/street.dmi'
	icon_state = "brick_slabs"
	floor_tile = /obj/item/stack/tile/brick_slabs
	tiled_dirt = FALSE
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_PAVEMENT)
