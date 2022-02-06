/datum/job/mayor
	title = JOB_MAYOR
	description = "Be responsible for the station, manage your Heads of Staff, \
		keep the crew alive, be prepared to do anything and everything or die \
		horribly trying."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list("CentCom")
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "Nanotrasen officials and Space law"
	selection_color = "#ccccff"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/mayor
	plasmaman_outfit = /datum/outfit/plasmaman/mayor

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_MAYOR
	department_for_prefs = /datum/job_department/mayor
	departments_list = list(
		/datum/job_department/command,
	)

	family_heirlooms = list(/obj/item/reagent_containers/food/drinks/flask/gold, /obj/item/toy/mayorsaid/collector)

	mail_goodies = list(
		/obj/item/clothing/mask/cigarette/cigar/havana = 20,
		/obj/item/storage/fancy/cigarettes/cigars/havana = 15,
		/obj/item/reagent_containers/food/drinks/bottle/champagne = 10,
		/obj/item/toy/mayorsaid/collector = 20
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS
	rpg_title = "Star Duke"

	voice_of_god_power = 1.4 //Command staff has authority


/datum/job/mayor/get_mayordom_announcement(mob/living/mayor)
	return "Mayor [mayor.real_name] on deck!"


/datum/outfit/job/mayor
	name = "Mayor"
	jobtype = /datum/job/mayor

	id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/job/mayor
	uniform = /obj/item/clothing/under/rank/mayor
	suit = /obj/item/clothing/suit/armor/vest/capcarapace
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/station_charter = 1,
		)
	belt = /obj/item/pda/mayor
	ears = /obj/item/radio/headset/heads/mayor/alt
	glasses = /obj/item/clothing/glasses/sunglasses
	gloves = /obj/item/clothing/gloves/color/mayor
	head = /obj/item/clothing/head/caphat
	shoes = /obj/item/clothing/shoes/sneakers/brown


	backpack = /obj/item/storage/backpack/mayor
	satchel = /obj/item/storage/backpack/satchel/mayor
	duffelbag = /obj/item/storage/backpack/duffelbag/mayor

	accessory = /obj/item/clothing/accessory/medal/gold/mayor
	chameleon_extras = list(
		/obj/item/gun/energy/e_gun,
		/obj/item/stamp/mayor,
		)
	implants = list(/obj/item/implant/mindshield)
	skillchips = list(/obj/item/skillchip/disk_verifier)

	var/special_charter

/datum/outfit/job/mayor/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	var/list/job_changes = SSmapping.config.job_changes
	if(!length(job_changes))
		return
	var/list/mayor_changes = job_changes["mayor"]
	if(!length(mayor_changes))
		return
	special_charter = mayor_changes["special_charter"]
	if(!special_charter)
		return
	backpack_contents.Remove(/obj/item/station_charter)
	l_hand = /obj/item/station_charter/banner

/datum/outfit/job/mayor/post_equip(mob/living/carbon/human/equipped, visualsOnly)
	. = ..()
	var/obj/item/station_charter/banner/celestial_charter = equipped.held_items[LEFT_HANDS]
	if(!celestial_charter)
		return
	celestial_charter.name_type = special_charter

/datum/outfit/job/mayor/mod
	name = "Mayor (MODsuit)"

	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/mod/control/pre_equipped/magnate
	suit = null
	head = null
	mask = /obj/item/clothing/mask/gas/atmos/mayor
