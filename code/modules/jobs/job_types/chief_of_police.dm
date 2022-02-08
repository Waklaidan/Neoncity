/datum/job/chief_of_police
	title = JOB_CHIEF_OF_POLICE
	description = "Coordinate security personnel, ensure they are not corrupt, \
		make sure every department is protected."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list(JOB_MAYOR)
	head_announce = list(RADIO_CHANNEL_SECURITY)
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mayor"
	selection_color = "#ffdddd"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 300
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_SECURITY
	exp_granted_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/cop
	plasmaman_outfit = /datum/outfit/plasmaman/chief_of_police
	departments_list = list(
		/datum/job_department/security,
		/datum/job_department/command,
		)

	mind_traits = list(TRAIT_DONUT_LOVER)
	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM, TRAIT_ROYAL_METABOLISM)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	display_order = JOB_DISPLAY_ORDER_CHIEF_OF_POLICE
	bounty_types = CIV_JOB_SEC

	family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law)
	rpg_title = "Guard Leader"
	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS

	voice_of_god_power = 1.4 //Command staff has authority


/datum/job/chief_of_police/get_mayordom_announcement(mob/living/mayor)
	return "Due to staffing shortages, newly promoted Acting Mayor [mayor.real_name] on deck!"


/datum/outfit/job/cop
	name = "Chief of Police"
	jobtype = /datum/job/chief_of_police

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/chief_of_police
	uniform = /obj/item/clothing/under/rank/security/chief_of_police
	suit = /obj/item/clothing/suit/armor/cop/trenchcoat
	suit_store = /obj/item/gun/energy/e_gun
	backpack_contents = list(
		/obj/item/evidencebag = 1,
		/obj/item/modular_computer/tablet/preset/advanced/command = 1,
		)
	belt = /obj/item/pda/heads/cop
	ears = /obj/item/radio/headset/heads/cop/alt
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/cop/beret
	shoes = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec

	box = /obj/item/storage/box/survival/security
	chameleon_extras = list(
		/obj/item/gun/energy/e_gun/cop,
		/obj/item/stamp/cop,
		)
	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/cop/mod
	name = "Chief of Police (MODsuit)"

	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/mod/control/pre_equipped/safeguard
	suit = null
	head = null
	mask = /obj/item/clothing/mask/gas/sechailer
