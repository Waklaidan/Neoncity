/obj/structure/prop/industrial
	name = "machinery"
	desc = "A piece of machinery that performs an unknown function."
	icon = 'icons/obj/props/industrial.dmi'
	icon_state = "machine1"
	interaction_message = "<span class='notice'>It's probably best you don't interfere with its operation.</span>"

/obj/structure/prop/industrial/machine1
	icon = 'icons/obj/props/64x64.dmi'
	icon_state = "switchboard"

/obj/structure/prop/industrial/machine2
	name = "switch"
	desc = "A switch stuck in the on position."
	icon = 'icons/obj/props/misc.dmi'
	icon_state = "switch1"

/obj/structure/prop/industrial/machine3
	name = "switch"
	desc = "A switch stuck in the off position."
	icon = 'icons/obj/props/misc.dmi'
	icon_state = "switch2"

/obj/structure/prop/industrial/machine4
	icon = 'icons/obj/props/misc.dmi'
	icon_state = "switchboard1"

/obj/structure/prop/industrial/machine4/right
	icon = 'icons/obj/props/misc.dmi'
	icon_state = "switchboard2"

/obj/structure/prop/industrial/machine5
	icon = 'icons/obj/props/64x64.dmi'
	icon_state = "machine1"

/obj/structure/prop/industrial/machine6
	icon = 'icons/obj/props/32x64.dmi'
	icon_state = "switchboard"

/obj/structure/prop/industrial/machine7
	icon = 'icons/obj/props/64x96.dmi'
	icon_state = "machine"

/obj/structure/prop/industrial/machine8
	icon = 'icons/obj/props/64x64.dmi'
	icon_state = "machine2"

/obj/structure/prop/industrial/conveyor
	icon = 'icons/obj/props/industrial.dmi'
	icon_state = "conveyor"
	desc = "A conveyor belt for transporting items."
	interaction_message = span_notice("It's covered in oil and water displacement fluid.")

/obj/structure/prop/industrial/conveyor/cap
	icon_state = "conveyor_cap"

