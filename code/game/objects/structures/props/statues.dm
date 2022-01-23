/obj/structure/prop/statue //For statues you don't want behaving like ../structure/statue
	name = "statue"
	desc = "A statue."
	icon = 'icons/obj/statuelarge.dmi'
	layer = BELOW_OBJ_LAYER

/obj/structure/prop/statue/phoron
	name = "phoronic cascade"
	desc = "A sculpture made of pure phoron. It is covered in a lacquer that prevents erosion and renders it fireproof. It's safe. Probably."
	icon_state = "phoron"

/obj/structure/prop/statue/phoron/New()
	set_light(2, 3, "#cc66ff")
	..()
