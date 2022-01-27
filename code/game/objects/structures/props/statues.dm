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

/obj/structure/prop/statue/dino1
	name = "dinosaur fossil"
	desc = "The bones of a terrible lizard."
	icon = 'icons/obj/props/96x64.dmi'
	icon_state = "fossil1"
	interaction_message = span_warning("It probably wouldn't be wise to mess with such an expensive item.")

/obj/structure/prop/statue/dino2
	icon = 'icons/obj/props/96x64.dmi'
	icon_state = "fossil2"

/obj/structure/prop/statue/dino3
	icon = 'icons/obj/props/96x64.dmi'
	icon_state = "fossil3"

/obj/structure/prop/statue/dino4
	icon = 'icons/obj/props/96x64.dmi'
	icon_state = "fossil4"
