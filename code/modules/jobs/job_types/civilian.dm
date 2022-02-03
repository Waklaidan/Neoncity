GLOBAL_DATUM(colored_civilian, /datum/colored_civilian)

/*
Civilian
*/
/datum/job/civilian
	title = JOB_CIVILIAN
	description = "Get your space legs, assist people, ask the HoP to give you a job."
	faction = FACTION_STATION
	total_positions = 5
	spawn_positions = 5
	supervisors = "absolutely everyone"
	selection_color = "#dddddd"
	exp_granted_type = EXP_TYPE_CREW
	outfit = /datum/outfit/job/civilian
	plasmaman_outfit = /datum/outfit/plasmaman
	paycheck = PAYCHECK_CIVILIAN // Get a job. Job reassignment changes your paycheck now. Get over it.

	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_CIVILIAN

	department_for_prefs = /datum/job_department/civilian

	family_heirlooms = list(/obj/item/storage/toolbox/mechanical/old/heirloom, /obj/item/clothing/gloves/cut/heirloom)

	mail_goodies = list(
		/obj/effect/spawner/random/food_or_drink/donkpockets = 10,
		/obj/item/clothing/mask/gas = 10,
		/obj/item/clothing/gloves/color/fyellow = 7,
		/obj/item/choice_beacon/music = 5,
		/obj/item/toy/sprayoncan = 3,
		/obj/item/crowbar/large = 1
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS
	rpg_title = "Lout"

/datum/outfit/job/civilian
	name = JOB_CIVILIAN
	jobtype = /datum/job/civilian
	id_trim = /datum/id_trim/job/civilian

/datum/outfit/job/civilian/pre_equip(mob/living/carbon/human/target)
	..()
	give_jumpsuit(target)

/datum/outfit/job/civilian/proc/give_jumpsuit(mob/living/carbon/human/target)
	var/static/jumpsuit_number = 0
	jumpsuit_number += 1

	if (isnull(GLOB.colored_civilian))
		var/configured_type = get_configured_colored_civilian_type()
		GLOB.colored_civilian = new configured_type

	var/index = (jumpsuit_number % GLOB.colored_civilian.jumpsuits.len) + 1

	//We don't cache these, because they can delete on init
	//Too fragile, better to just eat the cost
	if (target.jumpsuit_style == PREF_SUIT)
		uniform = GLOB.colored_civilian.jumpsuits[index]
	else
		uniform = GLOB.colored_civilian.jumpskirts[index]

/datum/outfit/job/civilian/consistent
	name = "Civilian - Consistent"

/datum/outfit/job/civilian/consistent/give_jumpsuit(mob/living/carbon/human/target)
	uniform = /obj/item/clothing/under/color/grey

/datum/outfit/job/civilian/consistent/post_equip(mob/living/carbon/human/H, visualsOnly)
	..()

	// This outfit is used by the assets SS, which is ran before the atoms SS
	if (SSatoms.initialized == INITIALIZATION_INSSATOMS)
		H.w_uniform?.update_greyscale()
		H.update_inv_w_uniform()

/proc/get_configured_colored_civilian_type()
	return CONFIG_GET(flag/grey_civilians) ? /datum/colored_civilian/grey : /datum/colored_civilian/random

/// Defines a style of jumpsuit/jumpskirt for civilians.
/// Jumpsuit and jumpskirt lists should match in colors, as they are used interchangably.
/datum/colored_civilian
	var/list/jumpsuits
	var/list/jumpskirts

/datum/colored_civilian/grey
	jumpsuits = list(/obj/item/clothing/under/color/grey)
	jumpskirts = list(/obj/item/clothing/under/color/jumpskirt/grey)

/datum/colored_civilian/random
	jumpsuits = list(/obj/item/clothing/under/color/random)
	jumpskirts = list(/obj/item/clothing/under/color/jumpskirt/random)

/datum/colored_civilian/christmas
	jumpsuits = list(
		/obj/item/clothing/under/color/green,
		/obj/item/clothing/under/color/red,
	)

	jumpskirts = list(
		/obj/item/clothing/under/color/jumpskirt/green,
		/obj/item/clothing/under/color/jumpskirt/red,
	)

/datum/colored_civilian/mcdonalds
	jumpsuits = list(
		/obj/item/clothing/under/color/yellow,
		/obj/item/clothing/under/color/red,
	)

	jumpskirts = list(
		/obj/item/clothing/under/color/jumpskirt/yellow,
		/obj/item/clothing/under/color/jumpskirt/red,
	)

/datum/colored_civilian/halloween
	jumpsuits = list(
		/obj/item/clothing/under/color/orange,
		/obj/item/clothing/under/color/black,
	)

	jumpskirts = list(
		/obj/item/clothing/under/color/jumpskirt/orange,
		/obj/item/clothing/under/color/jumpskirt/black,
	)

/datum/colored_civilian/ikea
	jumpsuits = list(
		/obj/item/clothing/under/color/yellow,
		/obj/item/clothing/under/color/blue,
	)

	jumpskirts = list(
		/obj/item/clothing/under/color/jumpskirt/yellow,
		/obj/item/clothing/under/color/jumpskirt/blue,
	)

/datum/colored_civilian/mud
	jumpsuits = list(
		/obj/item/clothing/under/color/brown,
		/obj/item/clothing/under/color/lightbrown,
	)

	jumpskirts = list(
		/obj/item/clothing/under/color/jumpskirt/brown,
		/obj/item/clothing/under/color/jumpskirt/lightbrown,
	)

/datum/colored_civilian/warm
	jumpsuits = list(
		/obj/item/clothing/under/color/red,
		/obj/item/clothing/under/color/pink,
		/obj/item/clothing/under/color/orange,
		/obj/item/clothing/under/color/yellow,
	)

	jumpskirts = list(
		/obj/item/clothing/under/color/jumpskirt/red,
		/obj/item/clothing/under/color/jumpskirt/pink,
		/obj/item/clothing/under/color/jumpskirt/orange,
		/obj/item/clothing/under/color/jumpskirt/yellow,
	)

/datum/colored_civilian/cold
	jumpsuits = list(
		/obj/item/clothing/under/color/blue,
		/obj/item/clothing/under/color/darkblue,
		/obj/item/clothing/under/color/darkgreen,
		/obj/item/clothing/under/color/green,
		/obj/item/clothing/under/color/lightpurple,
		/obj/item/clothing/under/color/teal,
	)

	jumpskirts = list(
		/obj/item/clothing/under/color/jumpskirt/blue,
		/obj/item/clothing/under/color/jumpskirt/darkblue,
		/obj/item/clothing/under/color/jumpskirt/darkgreen,
		/obj/item/clothing/under/color/jumpskirt/green,
		/obj/item/clothing/under/color/jumpskirt/lightpurple,
		/obj/item/clothing/under/color/jumpskirt/teal,
	)

/// Will pick one color, and stick with it
/datum/colored_civilian/solid

/datum/colored_civilian/solid/New()
	var/obj/item/clothing/under/color/random_jumpsuit_type = get_random_jumpsuit()
	jumpsuits = list(random_jumpsuit_type)

	for (var/obj/item/clothing/under/color/jumpskirt/jumpskirt_type as anything in subtypesof(/obj/item/clothing/under/color/jumpskirt))
		if (initial(jumpskirt_type.greyscale_colors) == initial(random_jumpsuit_type.greyscale_colors))
			jumpskirts = list(jumpskirt_type)
			return

	// Couldn't find a matching jumpskirt, oh well
	jumpskirts = list(get_random_jumpskirt())
