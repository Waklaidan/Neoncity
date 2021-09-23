
/*| Neon Signs
   ----------------------------------------------*/

   //| Note: for a more varied range of colors, I chose not to use the
   //pre- #defined colors and instead individually converted the RGB
   //values from each sprite into hex code - Mal

/obj/structure/sign/neon/Destroy()
	set_light(0)
	return ..()

/obj/structure/sign/neon
	desc = "A glowing sign."
	icon = 'icons/obj/signs.dmi'
	layer = FLY_LAYER
	light_range = 4
	light_power = 2

/obj/structure/sign/neon/item
	name = "item store"
	icon_state = "item"
	light_color = "#B79F41" //copper

/obj/structure/sign/neon/motel
	name = "motel"
	icon_state = "motel"
	light_color = "#59FF9B" //teal

/obj/structure/sign/neon/hotel
	name = "hotel"
	icon_state = "hotel"
	light_color = "#59FF9B" //teal

/obj/structure/sign/neon/flashhotel
	name = "hotel"
	icon_state = "flashhotel"
	light_color = "#FF8FF8" //hot pink

/obj/structure/sign/neon/lovehotel
	name = "hotel"
	icon_state = "lovehotel"
	light_color = "#59FF9B" //teal

/obj/structure/sign/neon/sushi
	name = "sushi"
	icon_state = "sushi"
	light_color = "#7DD3FF"  //sky blue

/obj/structure/sign/neon/bakery
	name = "bakery"
	icon_state = "bakery"
	light_color = "#FF8FEE" //hot pink

/obj/structure/sign/neon/beer
	name = "pub"
	icon_state = "beer"
	light_color = "#CBDC54" //yellow

/obj/structure/sign/neon/inn
	name = "inn"
	icon_state = "inn"
	light_color = "#F070FF"  //deeper hot pink

/obj/structure/sign/neon/cafe
	name = "cafe"
	icon_state = "cafe"
	light_color = "#FF8FEE" //hot pink

/obj/structure/sign/neon/diner
	name = "diner"
	icon_state = "diner"
	light_color = "#39FFA4" //teal

/obj/structure/sign/neon/bar_alt
	name = "bar"
	icon_state = "bar_alt"
	light_color = "#39FFA4" //teal

/obj/structure/sign/neon/casino
	name = "casino"
	icon_state = "casino"
	light_color = "#6CE08A" //teal

/obj/structure/sign/neon/peace
	name = "peace"
	icon_state = "peace"
	light_color = "#8559FF" //a cross between the blue and purple

/obj/structure/sign/neon/sale
	name = "neon sale sign"
	icon_state = "neon_sale"
	light_color = "#6EB6FF" //sky blue

/obj/structure/sign/neon/exit
	name = "exit"
	icon_state = "exit"
	light_color = "#7FEA6A" //lime green

/obj/structure/sign/neon/close
	name = "close"
	icon_state = "close"
	light_color = "#7FEA6A" //lime green

/obj/structure/sign/neon/open
	name = "open"
	icon_state = "open"
	light_color = "#FFFFFF" //white

/obj/structure/sign/neon/disco
	name = "disco"
	icon_state = "disco"

/obj/structure/sign/neon/armory
	name = "armory"
	icon_state = "armory"
	light_color = "#7FEA6A" //lime green

/obj/structure/sign/neon/barber
	name = "\improper barber shop sign"
	desc = "A spinning sign indicating a barbershop is near."
	icon_state = "barber"
	light_color = "#6EB6FF" //sky blue

/obj/structure/sign/neon/cocktails
	name = "cocktails sign"
	desc = "The sign has has a cocktail symbol on it."
	icon_state = "cocktails"
	light_color = "#63C4D6" //light blue

/obj/structure/sign/neon/bathrooms
	name = "bathroom sign"
	desc = "A sign that indicates a unisex bathroom is here."
	icon_state = "bathroom_unisex"
	light_color = "#63C4D6" //light blue

/obj/structure/sign/neon/cryo
	name = "cryo area sign"
	desc = "A sign that indicates a cryogenic storage area is nearby."
	icon_state = "cryo"
	light_color = "#6CE08A" //teal

/obj/structure/sign/neon/heath
	name = "hospital sign"
	desc = "A neon hospital sign"
	icon_state = "medical_on"
	light_color = "#7FEA6A" //lime green

/obj/structure/sign/neon/heath/red
	icon_state = "medicalred_on"
	light_color = "#da0205" //red

/obj/structure/sign/neon/airbus
	name = "airbus sign"
	desc = "A neon yellow airbus sign that indicates this is an airbus area."
	icon_state = "bus"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/cubed
	name = "cubed"
	desc = "That's the official emblem of the science labs run by NT."
	icon_state = "cubed"
	light_color = "#AA2799"

/obj/structure/sign/neon/vip
	name = "vip sign"
	desc = "A sign showing this is the way to the VIP room."
	icon_state = "vip"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/mayoroffice
	name = "mayor office sign"
	desc = "A sign for the city hall."
	icon_state = "mayoroffice"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/cityhall
	name = "city hall sign"
	desc = "A sign for the city hall."
	icon_state = "cityhall"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/courts
	name = "courts"
	desc = "A sign for the courts."
	icon_state = "courts"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/meetingroom
	name = "meetingroom"
	desc = "A sign for the meeting room."
	icon_state = "meetingroom"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/carpark
	name = "meetingroom"
	desc = "A sign for the car park."
	icon_state = "carpark"
	light_color = COLOR_YELLOW

/*|	                                             */
/*| Big Neon Signs
   ----------------------------------------------*/

/obj/structure/sign/neon/big
	icon = 'icons/obj/signs_large.dmi'
	light_range = 6
	light_power = 8

/obj/structure/sign/neon/big/casino
	name = "casino sign"
	desc = "A neon yellow airbus sign that says CASINO in big letters."
	icon_state = "casino"
	light_color = "#ffff99"

/obj/structure/sign/neon/big/aeoiu
	name = "large blue sign"
	desc = "A neon blue sign in cryptic letters."
	icon_state = "aeoiu"
	light_color = "#006fff"
	light_power = 20
	light_range = 2

/obj/structure/sign/neon/big/luckystar
	name = "luckystar sign"
	desc = "A luckystar sign in cryptic letters."
	icon_state = "luckystar"
	light_color = "#de0000"
	light_power = 8
	light_range = 3

/obj/structure/sign/neon/big/ianhi
	name = "cryptic wall sign"
	desc = "A luckystar sign in cryptic letters that is pinned to a wall."
	icon_state = "ianhi"
	light_color = "#ab00ff"
	light_power = 11
	light_range = 2


/obj/structure/sign/neon/big/inn
	name = "inn sign"
	desc = "A neon yellow airbus sign that says INN in big letters."
	icon_state = "inn"
	light_color = COLOR_YELLOW


/obj/structure/sign/neon/big/labs
	name = "laboratory sign"
	desc = "A neony purple sign with the word laboratory on it."
	icon_state = "labs"
	light_color = "#F070FF"  //deeper hot pink

/obj/structure/sign/neon/big/gym
	name = "yeka gym sign"
	desc = "A sign that represents the yekarina institute of wellness first erected by president Katya Petrovna."
	icon_state = "gym"
	light_color = "#63C4D6" //light blue

/obj/structure/sign/neon/big/police_dept
	name = "police department sign"
	desc = "A sign for the police department of Geminus City. It glows blue."
	icon_state = "police_dept"
	light_color = "#63C4D6" //light blue


/obj/structure/sign/neon/big/mall
	name = "shopping mallsign"
	desc = "A sign for the local city shopping mall."
	icon_state = "mall"
	light_color = COLOR_YELLOW

/obj/structure/sign/neon/big/court
	name = "court sign"
	desc = "A sign for the courtroom."
	icon_state = "court"
	light_color = "#63C4D6" //light blue

/obj/structure/sign/neon/big/city_hall
	name = "city hall sign"
	desc = "A sign for the city hall."
	icon_state = "city_hall"
	light_color = "#63C4D6" //light blue

/obj/structure/sign/neon/big/medtech
	name = "clinic sign"
	desc = "A sign for a clinic for those with cyberware and fleshy bits alike."
	icon_state = "med-left"
	light_color = "#25FF2B"

/obj/structure/sign/neon/big/medtech/right
	icon_state = "med-right"

/obj/structure/sign/neon/big/clinic
	name = "clinic sign"
	desc = "A green holo-sign for a clinic."
	icon_state = "clinic"
	light_color = "#25FF2B"

/obj/structure/sign/neon/big/transit
	name = "transit station sign"
	desc = "A sign for the transit station."
	icon_state = "transit"
	light_color = "#FF7300"

/obj/structure/sign/neon/big/directions
	name = "directions display"
	desc = "This sign points the way to where you need to go."
	icon_state = "directions"
	light_color = "#32FFF1"

/obj/structure/sign/neon/big/directions/large
	icon_state = "directions-large"

/obj/structure/sign/neon/big/pawn
	name = "pawn shop sign"
	desc = "A sign for a pawn shop."
	icon_state = "pawn"
	light_color = "#32FFF1"

/obj/structure/sign/neon/big/hotel
	name = "hotel sign"
	desc = "A sign for a hotel."
	icon = 'icons/obj/props/64x96.dmi'
	icon_state = "hotel-left"
	light_color = "#32FFF1"

/obj/structure/sign/neon/big/hotel/right
	icon_state = "hotel-right"

/obj/structure/sign/neon/big/bar
	name = "bar sign"
	desc = "A sign pointing to a bar."
	icon_state = "bar-left"
	light_color = "#E300FF"

/obj/structure/sign/neon/big/bar/right
	icon_state = "bar-right"

/obj/structure/sign/neon/big/shop
	name = "shop sign"
	desc = "A sign for a shop."
	icon = 'icons/obj/props/64x96.dmi'
	icon_state = "shop-left"
	light_color = "#32FFF1"

/obj/structure/sign/neon/big/shop/right
	icon_state = "shop-right"

/obj/structure/sign/neon/big/cryo
	name = "rent-a-capsule sign"
	desc = "A sign for a cryogenics capsule location."
	icon_state = "cryo"
	light_color = "#32FFF1"

/obj/structure/sign/neon/big/vshop
	name = "vehicle shop sign"
	desc = "A sign for a vehicle shop."
	icon_state = "vshop"
	light_color = "#E300FF"

/obj/structure/sign/neon/big/train_schedule
	name = "train schedule sign"
	desc = "A sign displaying the next arriving hypertrain."
	icon_state = "options"
	light_color = "#32FFF1"

/obj/structure/sign/neon/big/train
	name = "hypertrain advertisement"
	desc = "Best speed - Arrive at your destination in an hour or less."
	icon_state = "train"
	light_color = "#32FFF1"
	light_range = 0
	light_power = 0

/*|	                                             */
/*| Large Signs
   ----------------------------------------------*/

/obj/structure/sign/neon/large
	icon = 'icons/obj/signs_large.dmi'

/obj/structure/sign/neon/large/takeaway
	name = "takeaway sign"
	desc = "A sign for a takeaway shop."
	icon_state = "takeaway-left"
	light_color = "#E300FF"

/obj/structure/sign/neon/large/takeaway/right
	icon_state = "takeaway-right"
	light_color = "#E300FF"

/obj/structure/sign/neon/large/drivethru
	name = "food-2-go sign"
	desc = "A sign for a drive-thru."
	icon_state = "drivethru-left"
	light_color = "#E300FF"

/obj/structure/sign/neon/large/drivethru/right
	icon_state = "drivethru-right"
	light_color = "#E300FF"







/*|	                                             */
/*| Normal Signs
   ----------------------------------------------*/

/obj/structure/sign/city/
	desc = "A sign."
	icon = 'icons/obj/signs.dmi'

/obj/structure/sign/city/rent
	name = "Rent sign"
	icon_state = "rent"
	desc = "A sign that says 'For Rent' on it. This house might be vacant."

/obj/structure/sign/city/techshop
	name = "\improper techshop"
	desc = "A sign which reads 'tech shop'."
	icon_state = "techshop"

/obj/structure/sign/city/vote
	name = "VOTE HERE"
	desc = "A sign imploring you to do your civic duty and vote!"
	icon_state = "vote2"

/obj/structure/sign/city/vote/holo
	icon_state = "vote-holo"
	light_color = "#6EB6FF" //sky blue