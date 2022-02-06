/obj/item/clothing/under/rank/mayor
	desc = "It's a blue jumpsuit with some gold markings denoting the rank of \"Mayor\"."
	name = "mayor's jumpsuit"
	icon_state = "mayor"
	inhand_icon_state = "b_suit"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	icon = 'icons/obj/clothing/under/mayor.dmi'
	worn_icon = 'icons/mob/clothing/under/mayor.dmi'
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0, WOUND = 15)

/obj/item/clothing/under/rank/mayor/skirt
	name = "mayor's jumpskirt"
	desc = "It's a blue jumpskirt with some gold markings denoting the rank of \"Mayor\"."
	icon_state = "mayor_skirt"
	inhand_icon_state = "b_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	fitted = FEMALE_UNIFORM_TOP

/obj/item/clothing/under/rank/mayor/suit
	name = "mayor's suit"
	desc = "A green suit and yellow necktie. Exemplifies authority."
	icon_state = "green_suit"
	inhand_icon_state = "dg_suit"
	can_adjust = FALSE

/obj/item/clothing/under/rank/mayor/suit/skirt
	name = "green suitskirt"
	desc = "A green suitskirt and yellow necktie. Exemplifies authority."
	icon_state = "green_suit_skirt"
	inhand_icon_state = "dg_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	fitted = FEMALE_UNIFORM_TOP

/obj/item/clothing/under/rank/mayor/parade
	name = "mayor's parade uniform"
	desc = "A mayor's luxury-wear, for special occasions."
	icon_state = "mayor_parade"
	inhand_icon_state = "by_suit"
	can_adjust = FALSE
