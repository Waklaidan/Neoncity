/obj/item/storage/bag/garment
	name = "garment bag"
	icon = 'icons/obj/storage.dmi'
	icon_state = "garment_bag"
	desc = "A bag for storing extra clothes and shoes."
	slot_flags = NONE
	resistance_flags = FLAMMABLE

/obj/item/storage/bag/garment/mayor
	name = "mayor's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the mayor."

/obj/item/storage/bag/garment/cop
	name = "chief of police's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the chief of police."

/obj/item/storage/bag/garment/cc
	name = "city clerk's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the city clerk."

/obj/item/storage/bag/garment/research_director
	name = "research director's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the research director."

/obj/item/storage/bag/garment/chief_medical
	name = "chief medical officer's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the chief medical officer."

/obj/item/storage/bag/garment/engineering_chief
	name = "chief engineer's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the chief engineer."

/obj/item/storage/bag/garment/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.display_numerical_stacking = FALSE
	STR.max_combined_w_class = 200
	STR.max_items = 15
	STR.insert_preposition = "in"
	STR.set_holdable(list(
		/obj/item/clothing,
	))

/obj/item/storage/bag/garment/mayor/PopulateContents()
	new /obj/item/clothing/under/rank/mayor(src)
	new /obj/item/clothing/under/rank/mayor/skirt(src)
	new /obj/item/clothing/under/rank/mayor/parade(src)
	new /obj/item/clothing/suit/armor/vest/capcarapace(src)
	new /obj/item/clothing/suit/armor/vest/capcarapace/mayors_formal(src)
	new /obj/item/clothing/suit/capjacket(src)
	new /obj/item/clothing/glasses/sunglasses/gar/giga(src)
	new /obj/item/clothing/gloves/color/mayor(src)
	new /obj/item/clothing/head/caphat(src)
	new /obj/item/clothing/head/caphat/parade(src)
	new /obj/item/clothing/head/crown/fancy(src)
	new /obj/item/clothing/neck/cloak/cap(src)
	new /obj/item/clothing/shoes/sneakers/brown(src)
	new /obj/item/clothing/suit/hooded/wintercoat/mayor(src)


/obj/item/storage/bag/garment/cc/PopulateContents()
	new /obj/item/clothing/under/rank/civilian/city_clerk(src)
	new /obj/item/clothing/under/rank/civilian/city_clerk/skirt(src)
	new /obj/item/clothing/suit/armor/vest/alt(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/clothing/head/cccap(src)
	new /obj/item/clothing/neck/cloak/cc(src)
	new /obj/item/clothing/shoes/sneakers/brown(src)
	new /obj/item/clothing/suit/hooded/wintercoat/cc(src)

/obj/item/storage/bag/garment/cop/PopulateContents()
	new /obj/item/clothing/under/rank/security/chief_of_police/grey(src)
	new /obj/item/clothing/under/rank/security/chief_of_police/skirt(src)
	new /obj/item/clothing/under/rank/security/chief_of_police/alt(src)
	new /obj/item/clothing/under/rank/security/chief_of_police/alt/skirt(src)
	new /obj/item/clothing/under/rank/security/chief_of_police/parade/female(src)
	new /obj/item/clothing/under/rank/security/chief_of_police/parade(src)
	new /obj/item/clothing/suit/armor/cop(src)
	new /obj/item/clothing/suit/armor/cop/hos_formal(src)
	new /obj/item/clothing/suit/armor/vest/leather(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses/eyepatch(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses/gars/giga(src)
	new /obj/item/clothing/head/cop(src)
	new /obj/item/clothing/mask/gas/sechailer/swat(src)
	new /obj/item/clothing/neck/cloak/cop(src)
	new /obj/item/clothing/suit/hooded/wintercoat/security/cop(src)

/obj/item/storage/bag/garment/research_director/PopulateContents()
	new /obj/item/clothing/under/rank/rnd/research_director(src)
	new /obj/item/clothing/under/rank/rnd/research_director/skirt(src)
	new /obj/item/clothing/under/rank/rnd/research_director/alt(src)
	new /obj/item/clothing/under/rank/rnd/research_director/alt/skirt(src)
	new /obj/item/clothing/under/rank/rnd/research_director/turtleneck(src)
	new /obj/item/clothing/under/rank/rnd/research_director/turtleneck/skirt(src)
	new /obj/item/clothing/suit/toggle/labcoat(src)
	new /obj/item/clothing/head/beret/science(src)
	new /obj/item/clothing/neck/cloak/rd(src)
	new /obj/item/clothing/shoes/sneakers/brown(src)
	new /obj/item/clothing/suit/hooded/wintercoat/science/rd(src)

/obj/item/storage/bag/garment/chief_medical/PopulateContents()
	new /obj/item/clothing/under/rank/medical/medical_director(src)
	new /obj/item/clothing/under/rank/medical/medical_director/skirt(src)
	new /obj/item/clothing/suit/toggle/labcoat/md(src)
	new /obj/item/clothing/gloves/color/latex/nitrile(src)
	new /obj/item/clothing/neck/cloak/md(src)
	new /obj/item/clothing/shoes/sneakers/blue (src)
	new /obj/item/clothing/suit/hooded/wintercoat/medical/md(src)

/obj/item/storage/bag/garment/engineering_chief/PopulateContents()
	new /obj/item/clothing/under/rank/engineering/chief_engineer(src)
	new /obj/item/clothing/under/rank/engineering/chief_engineer/skirt(src)
	new /obj/item/clothing/glasses/meson/engine(src)
	new /obj/item/clothing/gloves/color/chief_engineer(src)
	new /obj/item/clothing/head/hardhat/white(src)
	new /obj/item/clothing/head/hardhat/weldhat/white(src)
	new /obj/item/clothing/neck/cloak/ce(src)
	new /obj/item/clothing/shoes/sneakers/brown(src)
	new /obj/item/clothing/suit/hooded/wintercoat/engineering/ce(src)

