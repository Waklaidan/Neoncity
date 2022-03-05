/obj/structure/chair/sofa
	name = "old ratty sofa"
	icon_state = "sofamiddle"
	icon = 'icons/obj/sofa.dmi'
	buildstackamount = 1
	item_chair = null
	var/mutable_appearance/armrest
	color = "#CB2A2A"

/obj/structure/chair/sofa/Initialize(mapload)
	armrest = mutable_appearance(icon, "[icon_state]_armrest", ABOVE_MOB_LAYER)
	armrest.plane = GAME_PLANE_UPPER
	return ..()

/obj/structure/chair/sofa/electrify_self(obj/item/assembly/shock_kit/input_shock_kit, mob/user, list/overlays_from_child_procs)
	if(!overlays_from_child_procs)
		overlays_from_child_procs = list(image('icons/obj/chairs.dmi', loc, "echair_over", pixel_x = -1))
	. = ..()

/obj/structure/chair/sofa/post_buckle_mob(mob/living/M)
	. = ..()
	update_armrest()

/obj/structure/chair/sofa/proc/update_armrest()
	if(has_buckled_mobs())
		add_overlay(armrest)
	else
		cut_overlay(armrest)

/obj/structure/chair/sofa/post_unbuckle_mob()
	. = ..()
	update_armrest()

/obj/structure/chair/sofa/corner/handle_layer() //only the armrest/back of this chair should cover the mob.
	return

/obj/structure/chair/sofa/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/corner
	icon_state = "sofacorner"


// color variation:

/obj/structure/chair/sofa/brown
	color = "#8B5921"

/obj/structure/chair/sofa/brown/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/brown/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/brown/corner
	icon_state = "sofacorner"

/obj/structure/chair/sofa/beige
	color = "#fffdc3"

/obj/structure/chair/sofa/beige/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/beige/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/beige/corner
	icon_state = "sofacorner"

/obj/structure/chair/sofa/teal
	color = "#00ffff"

/obj/structure/chair/sofa/teal/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/teal/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/teal/corner
	icon_state = "sofacorner"

/obj/structure/chair/sofa/black
	color = "#494949"

/obj/structure/chair/sofa/black/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/black/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/black/corner
	icon_state = "sofacorner"

/obj/structure/chair/sofa/lime
	color = "#fffb00"

/obj/structure/chair/sofa/lime/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/lime/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/lime/corner
	icon_state = "sofacorner"

/obj/structure/chair/sofa/red
	color = "#CB2A2A"

/obj/structure/chair/sofa/red/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/red/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/red/corner
	icon_state = "sofacorner"

// Original icon ported from Eris(?) and updated to work here.
/obj/structure/chair/sofa/corp
	name = "sofa"
	desc = "Soft and cushy."
	icon_state = "corp_sofamiddle"
	color = null

/obj/structure/chair/sofa/corp/left
	icon_state = "corp_sofaend_left"

/obj/structure/chair/sofa/corp/right
	icon_state = "corp_sofaend_right"

/obj/structure/chair/sofa/corp/corner
	icon_state = "corp_sofacorner"

// Ported from Skyrat
/obj/structure/chair/sofa/bench
	name = "bench"
	desc = "Perfectly designed to be comfortable to sit on, and hellish to sleep on."
	icon_state = "bench_middle"
	greyscale_config = /datum/greyscale_config/bench_middle
	greyscale_colors = "#af7d28"

/obj/structure/chair/sofa/bench/left
	icon_state = "bench_left"
	greyscale_config = /datum/greyscale_config/bench_left
	greyscale_colors = "#af7d28"

/obj/structure/chair/sofa/bench/right
	icon_state = "bench_right"
	greyscale_config = /datum/greyscale_config/bench_right
	greyscale_colors = "#af7d28"

/obj/structure/chair/sofa/bench/corner
	icon_state = "bench_corner"
	greyscale_config = /datum/greyscale_config/bench_corner
	greyscale_colors = "#af7d28"

// Bamboo benches
/obj/structure/chair/sofa/bamboo
	name = "bamboo bench"
	desc = "A makeshift bench with a rustic aesthetic."
	icon_state = "bamboo_sofamiddle"
	resistance_flags = FLAMMABLE
	max_integrity = 60
	buildstacktype = /obj/item/stack/sheet/mineral/bamboo
	buildstackamount = 3

/obj/structure/chair/sofa/bamboo/left
	icon_state = "bamboo_sofaend_left"

/obj/structure/chair/sofa/bamboo/right
	icon_state = "bamboo_sofaend_right"
