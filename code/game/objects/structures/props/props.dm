
//	Props are handy tools for exposition. For use in away missions, event areas, yada yada. The sky's the limit with what you want
//	to do with these. Anything can be a prop! Even you!

/obj/structure/prop
	name = "Mapping Prop"
	desc = "Hey! You shouldn't be seeing this!"
	var/interaction_message = "<span class = 'notice>You lay a hand on the object and nothing happens.</span>" // Used by the attack_hand prop for messages
	density = TRUE
	anchored = TRUE

/obj/structure/prop/attack_hand(mob/living/user) // Used to tell the player that this isn't useful for anything.
	if(!istype(user))
		return FALSE
	if(!interaction_message)
		return ..()
	else
		to_chat(user, interaction_message)
		return
