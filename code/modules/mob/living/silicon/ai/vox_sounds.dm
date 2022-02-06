// List is required to compile the resources into the game when it loads.
// Dynamically loading it has bad results with sounds overtaking each other, even with the wait variable.
#ifdef AI_VOX

// Regex for collecting a list of ogg files
// (([a-zA-Z,.]+)\.ogg)

// For vim
// :%s/\(\(.*\)\.ogg\)/"\2" = 'sound\/vox_fem\/\1',/g
GLOBAL_LIST_INIT(vox_sounds, list("abduction" = 'sound/vox_fem/abduction.ogg',
"abortions" = 'sound/vox_fem/abortions.ogg',
"above" = 'sound/vox_fem/above.ogg',
"abstain" = 'sound/vox_fem/abstain.ogg',
"accelerating" = 'sound/vox_fem/accelerating.ogg',
"accelerator" = 'sound/vox_fem/accelerator.ogg',
"accepted" = 'sound/vox_fem/accepted.ogg',
"access" = 'sound/vox_fem/access.ogg',
"acknowledged" = 'sound/vox_fem/acknowledged.ogg',
"acknowledge" = 'sound/vox_fem/acknowledge.ogg',
"acquired" = 'sound/vox_fem/acquired.ogg',
"acquisition" = 'sound/vox_fem/acquisition.ogg',
"across" = 'sound/vox_fem/across.ogg',
"activated" = 'sound/vox_fem/activated.ogg',
"activate" = 'sound/vox_fem/activate.ogg',
"activity" = 'sound/vox_fem/activity.ogg',
"adios" = 'sound/vox_fem/adios.ogg',
"administration" = 'sound/vox_fem/administration.ogg',
"advanced" = 'sound/vox_fem/advanced.ogg',
"advised" = 'sound/vox_fem/advised.ogg',
"after" = 'sound/vox_fem/after.ogg',
"aft" = 'sound/vox_fem/aft.ogg',
"agent" = 'sound/vox_fem/agent.ogg',
"ai" = 'sound/vox_fem/ai.ogg',
"airlock" = 'sound/vox_fem/airlock.ogg',
"air" = 'sound/vox_fem/air.ogg',
"alarm" = 'sound/vox_fem/alarm.ogg',
"alert" = 'sound/vox_fem/alert.ogg',
"alien" = 'sound/vox_fem/alien.ogg',
"aligned" = 'sound/vox_fem/aligned.ogg',
"all" = 'sound/vox_fem/all.ogg',
"alpha" = 'sound/vox_fem/alpha.ogg',
"also" = 'sound/vox_fem/also.ogg',
"amigo" = 'sound/vox_fem/amigo.ogg',
"ammunition" = 'sound/vox_fem/ammunition.ogg',
"am" = 'sound/vox_fem/am.ogg',
"and" = 'sound/vox_fem/and.ogg',
"animal" = 'sound/vox_fem/animal.ogg',
"announcement" = 'sound/vox_fem/announcement.ogg',
"an" = 'sound/vox_fem/an.ogg',
"anomalous" = 'sound/vox_fem/anomalous.ogg',
"answer" = 'sound/vox_fem/answer.ogg',
"antenna" = 'sound/vox_fem/antenna.ogg',
"any" = 'sound/vox_fem/any.ogg',
"a" = 'sound/vox_fem/a.ogg',
"apc" = 'sound/vox_fem/apc.ogg',
"apprehend" = 'sound/vox_fem/apprehend.ogg',
"approach" = 'sound/vox_fem/approach.ogg',
"area" = 'sound/vox_fem/area.ogg',
"are" = 'sound/vox_fem/are.ogg',
"armed" = 'sound/vox_fem/armed.ogg',
"arm" = 'sound/vox_fem/arm.ogg',
"armor" = 'sound/vox_fem/armor.ogg',
"armory" = 'sound/vox_fem/armory.ogg',
"array" = 'sound/vox_fem/array.ogg',
"arrest" = 'sound/vox_fem/arrest.ogg',
"asimov" = 'sound/vox_fem/asimov.ogg',
"asshole" = 'sound/vox_fem/asshole.ogg',
"assholes" = 'sound/vox_fem/assholes.ogg',
"assistance" = 'sound/vox_fem/assistance.ogg',
"civilian" = 'sound/vox_fem/assistant.ogg',
"ass" = 'sound/vox_fem/ass.ogg',
"atmosphere" = 'sound/vox_fem/atmosphere.ogg',
"atmospheric" = 'sound/vox_fem/atmospheric.ogg',
"atmospherics" = 'sound/vox_fem/atmospherics.ogg',
"at" = 'sound/vox_fem/at.ogg',
"atomic" = 'sound/vox_fem/atomic.ogg',
"attention" = 'sound/vox_fem/attention.ogg',
"authentication" = 'sound/vox_fem/authentication.ogg',
"authorized" = 'sound/vox_fem/authorized.ogg',
"authorize" = 'sound/vox_fem/authorize.ogg',
"automatic" = 'sound/vox_fem/automatic.ogg',
"away" = 'sound/vox_fem/away.ogg',
"awful" = 'sound/vox_fem/awful.ogg',
"backman" = 'sound/vox_fem/backman.ogg',
"back" = 'sound/vox_fem/back.ogg',
"bad" = 'sound/vox_fem/bad.ogg',
"bag" = 'sound/vox_fem/bag.ogg',
"bailey" = 'sound/vox_fem/bailey.ogg',
"bar" = 'sound/vox_fem/bar.ogg',
"barracks" = 'sound/vox_fem/barracks.ogg',
"bartender" = 'sound/vox_fem/bartender.ogg',
"base" = 'sound/vox_fem/base.ogg',
"bay" = 'sound/vox_fem/bay.ogg',
"beam" = 'sound/vox_fem/beam.ogg',
"been" = 'sound/vox_fem/been.ogg',
"beep" = 'sound/vox_fem/beep.ogg',
"before" = 'sound/vox_fem/before.ogg',
"below" = 'sound/vox_fem/below.ogg',
"be" = 'sound/vox_fem/be.ogg',
"beside" = 'sound/vox_fem/beside.ogg',
"beware" = 'sound/vox_fem/beware.ogg',
"beyond" = 'sound/vox_fem/beyond.ogg',
"biohazard" = 'sound/vox_fem/biohazard.ogg',
"biological" = 'sound/vox_fem/biological.ogg',
"birdwell" = 'sound/vox_fem/birdwell.ogg',
"bitches" = 'sound/vox_fem/bitches.ogg',
"bitch" = 'sound/vox_fem/bitch.ogg',
"bitcoin" = 'sound/vox_fem/bitcoin.ogg',
"black" = 'sound/vox_fem/black.ogg',
"blast" = 'sound/vox_fem/blast.ogg',
"bleed" = 'sound/vox_fem/bleed.ogg',
"blob" = 'sound/vox_fem/blob.ogg',
"blocked" = 'sound/vox_fem/blocked.ogg',
"blood" = 'sound/vox_fem/blood.ogg',
"bloop" = 'sound/vox_fem/bloop.ogg',
"blue" = 'sound/vox_fem/blue.ogg',
"b" = 'sound/vox_fem/b.ogg',
"bomb" = 'sound/vox_fem/bomb.ogg',
"bone" = 'sound/vox_fem/bone.ogg',
"botanist" = 'sound/vox_fem/botanist.ogg',
"botany" = 'sound/vox_fem/botany.ogg',
"bottom" = 'sound/vox_fem/bottom.ogg',
"bravo" = 'sound/vox_fem/bravo.ogg',
"breached" = 'sound/vox_fem/breached.ogg',
"breach" = 'sound/vox_fem/breach.ogg',
"break" = 'sound/vox_fem/break.ogg',
"bridge" = 'sound/vox_fem/bridge.ogg',
"brig" = 'sound/vox_fem/brig.ogg',
"bust" = 'sound/vox_fem/bust.ogg',
"but" = 'sound/vox_fem/but.ogg',
"button" = 'sound/vox_fem/button.ogg',
"bypass" = 'sound/vox_fem/bypass.ogg',
"cable" = 'sound/vox_fem/cable.ogg',
"called" = 'sound/vox_fem/called.ogg',
"call" = 'sound/vox_fem/call.ogg',
"canal" = 'sound/vox_fem/canal.ogg',
"canister" = 'sound/vox_fem/canister.ogg',
"cap" = 'sound/vox_fem/cap.ogg',
"mayor" = 'sound/vox_fem/captain.ogg',
"capture" = 'sound/vox_fem/capture.ogg',
"carbon" = 'sound/vox_fem/carbon.ogg',
"cargo" = 'sound/vox_fem/cargo.ogg',
"cat" = 'sound/vox_fem/cat.ogg',
"cease" = 'sound/vox_fem/cease.ogg',
"ceiling" = 'sound/vox_fem/ceiling.ogg',
"celsius" = 'sound/vox_fem/celsius.ogg',
"centcom" = 'sound/vox_fem/centcom.ogg',
"center" = 'sound/vox_fem/center.ogg',
"centi" = 'sound/vox_fem/centi.ogg',
"central" = 'sound/vox_fem/central.ogg',
"ce" = 'sound/vox_fem/ce.ogg',
"challenge" = 'sound/vox_fem/challenge.ogg',
"chamber" = 'sound/vox_fem/chamber.ogg',
"changed" = 'sound/vox_fem/changed.ogg',
"changeling" = 'sound/vox_fem/changeling.ogg',
"change" = 'sound/vox_fem/change.ogg',
"chapel" = 'sound/vox_fem/chapel.ogg',
"chaplain" = 'sound/vox_fem/chaplain.ogg',
"charlie" = 'sound/vox_fem/charlie.ogg',
"check" = 'sound/vox_fem/check.ogg',
"checkpoint" = 'sound/vox_fem/checkpoint.ogg',
"chemical" = 'sound/vox_fem/chemical.ogg',
"chemist" = 'sound/vox_fem/chemist.ogg',
"chief" = 'sound/vox_fem/chief.ogg',
"christ" = 'sound/vox_fem/christ.ogg',
"chuckle" = 'sound/vox_fem/chuckle.ogg',
"circuit" = 'sound/vox_fem/circuit.ogg',
"cleanup" = 'sound/vox_fem/cleanup.ogg',
"clearance" = 'sound/vox_fem/clearance.ogg',
"clear" = 'sound/vox_fem/clear.ogg',
"clockwork" = 'sound/vox_fem/clockwork.ogg',
"close" = 'sound/vox_fem/close.ogg',
"clowning" = 'sound/vox_fem/clowning.ogg',
"clown" = 'sound/vox_fem/clown.ogg',
"md" = 'sound/vox_fem/cmo.ogg',
"coded" = 'sound/vox_fem/coded.ogg',
"code" = 'sound/vox_fem/code.ogg',
"c" = 'sound/vox_fem/c.ogg',
"cold" = 'sound/vox_fem/cold.ogg',
"collider" = 'sound/vox_fem/collider.ogg',
"come" = 'sound/vox_fem/come.ogg',
"command" = 'sound/vox_fem/command.ogg',
"communication" = 'sound/vox_fem/communication.ogg',
"complex" = 'sound/vox_fem/complex.ogg',
"comply" = 'sound/vox_fem/comply.ogg',
"computer" = 'sound/vox_fem/computer.ogg',
"condition" = 'sound/vox_fem/condition.ogg',
"condom" = 'sound/vox_fem/condom.ogg',
"confirmed" = 'sound/vox_fem/confirmed.ogg',
"connor" = 'sound/vox_fem/connor.ogg',
"console2" = 'sound/vox_fem/console2.ogg',
"console" = 'sound/vox_fem/console.ogg',
"construct" = 'sound/vox_fem/construct.ogg',
"containment" = 'sound/vox_fem/containment.ogg',
"contamination" = 'sound/vox_fem/contamination.ogg',
"contraband" = 'sound/vox_fem/contraband.ogg',
"control" = 'sound/vox_fem/control.ogg',
"cook" = 'sound/vox_fem/cook.ogg',
"coolant" = 'sound/vox_fem/coolant.ogg',
"coomer" = 'sound/vox_fem/coomer.ogg',
"core" = 'sound/vox_fem/core.ogg',
"corgi" = 'sound/vox_fem/corgi.ogg',
"corporation" = 'sound/vox_fem/corporation.ogg',
"correct" = 'sound/vox_fem/correct.ogg',
"corridor" = 'sound/vox_fem/corridor.ogg',
"corridors" = 'sound/vox_fem/corridors.ogg',
"coward" = 'sound/vox_fem/coward.ogg',
"cowards" = 'sound/vox_fem/cowards.ogg',
"crate" = 'sound/vox_fem/crate.ogg',
"created" = 'sound/vox_fem/created.ogg',
"creature" = 'sound/vox_fem/creature.ogg',
"crew" = 'sound/vox_fem/crew.ogg',
"critical" = 'sound/vox_fem/critical.ogg',
"cross" = 'sound/vox_fem/cross.ogg',
"cryogenic" = 'sound/vox_fem/cryogenic.ogg',
"crystal" = 'sound/vox_fem/crystal.ogg',
"cultist" = 'sound/vox_fem/cultist.ogg',
"cult" = 'sound/vox_fem/cult.ogg',
"cunt" = 'sound/vox_fem/cunt.ogg',
"curator" = 'sound/vox_fem/curator.ogg',
"cyborg" = 'sound/vox_fem/cyborg.ogg',
"cyborgs" = 'sound/vox_fem/cyborgs.ogg',
"damaged" = 'sound/vox_fem/damaged.ogg',
"damage" = 'sound/vox_fem/damage.ogg',
"danger" = 'sound/vox_fem/danger.ogg',
"dangerous" = 'sound/vox_fem/dangerous.ogg',
"day" = 'sound/vox_fem/day.ogg',
"deactivated" = 'sound/vox_fem/deactivated.ogg',
"dead" = 'sound/vox_fem/dead.ogg',
"death" = 'sound/vox_fem/death.ogg',
"decompression" = 'sound/vox_fem/decompression.ogg',
"decontamination" = 'sound/vox_fem/decontamination.ogg',
"deeoo" = 'sound/vox_fem/deeoo.ogg',
"defense" = 'sound/vox_fem/defense.ogg',
"degrees" = 'sound/vox_fem/degrees.ogg',
"delta" = 'sound/vox_fem/delta.ogg',
"demon" = 'sound/vox_fem/demon.ogg',
"denied" = 'sound/vox_fem/denied.ogg',
"departures" = 'sound/vox_fem/departures.ogg',
"deployed" = 'sound/vox_fem/deployed.ogg',
"deploy" = 'sound/vox_fem/deploy.ogg',
"desire" = 'sound/vox_fem/desire.ogg',
"desist" = 'sound/vox_fem/desist.ogg',
"destroyed" = 'sound/vox_fem/destroyed.ogg',
"destroy" = 'sound/vox_fem/destroy.ogg',
"destruction" = 'sound/vox_fem/destruction.ogg',
"detain" = 'sound/vox_fem/detain.ogg',
"detected" = 'sound/vox_fem/detected.ogg',
"detective" = 'sound/vox_fem/detective.ogg',
"detonation" = 'sound/vox_fem/detonation.ogg',
"device" = 'sound/vox_fem/device.ogg',
"devil" = 'sound/vox_fem/devil.ogg',
"did" = 'sound/vox_fem/did.ogg',
"die" = 'sound/vox_fem/die.ogg',
"dimensional" = 'sound/vox_fem/dimensional.ogg',
"dioxide" = 'sound/vox_fem/dioxide.ogg',
"director" = 'sound/vox_fem/director.ogg',
"dirt" = 'sound/vox_fem/dirt.ogg',
"disabled" = 'sound/vox_fem/disabled.ogg',
"disease" = 'sound/vox_fem/disease.ogg',
"disengaged" = 'sound/vox_fem/disengaged.ogg',
"dish" = 'sound/vox_fem/dish.ogg',
"disk" = 'sound/vox_fem/disk.ogg',
"disposal" = 'sound/vox_fem/disposal.ogg',
"distance" = 'sound/vox_fem/distance.ogg',
"distortion" = 'sound/vox_fem/distortion.ogg',
"doctor" = 'sound/vox_fem/doctor.ogg',
"d" = 'sound/vox_fem/d.ogg',
"dog" = 'sound/vox_fem/dog.ogg',
"do" = 'sound/vox_fem/do.ogg',
"doomsday" = 'sound/vox_fem/doomsday.ogg',
"doop" = 'sound/vox_fem/doop.ogg',
"door" = 'sound/vox_fem/door.ogg',
"dormitory" = 'sound/vox_fem/dormitory.ogg',
"dot" = 'sound/vox_fem/dot.ogg',
"down" = 'sound/vox_fem/down.ogg',
"drone" = 'sound/vox_fem/drone.ogg',
"dual" = 'sound/vox_fem/dual.ogg',
"duct" = 'sound/vox_fem/duct.ogg',
"east" = 'sound/vox_fem/east.ogg',
"echo" = 'sound/vox_fem/echo.ogg',
"ed" = 'sound/vox_fem/ed.ogg',
"effect" = 'sound/vox_fem/effect.ogg',
"egress" = 'sound/vox_fem/egress.ogg',
"eighteen" = 'sound/vox_fem/eighteen.ogg',
"eight" = 'sound/vox_fem/eight.ogg',
"eighty" = 'sound/vox_fem/eighty.ogg',
"electric" = 'sound/vox_fem/electric.ogg',
"electromagnetic" = 'sound/vox_fem/electromagnetic.ogg',
"elevator" = 'sound/vox_fem/elevator.ogg',
"eleven" = 'sound/vox_fem/eleven.ogg',
"eliminate" = 'sound/vox_fem/eliminate.ogg',
"emergency" = 'sound/vox_fem/emergency.ogg',
"enabled" = 'sound/vox_fem/enabled.ogg',
"energy" = 'sound/vox_fem/energy.ogg',
"engaged" = 'sound/vox_fem/engaged.ogg',
"engage" = 'sound/vox_fem/engage.ogg',
"engineering" = 'sound/vox_fem/engineering.ogg',
"engineer" = 'sound/vox_fem/engineer.ogg',
"engine" = 'sound/vox_fem/engine.ogg',
"enter" = 'sound/vox_fem/enter.ogg',
"entity" = 'sound/vox_fem/entity.ogg',
"entry" = 'sound/vox_fem/entry.ogg',
"environment" = 'sound/vox_fem/environment.ogg',
"e" = 'sound/vox_fem/e.ogg',
"epic" = 'sound/vox_fem/epic.ogg',
"equipment" = 'sound/vox_fem/equipment.ogg',
"error" = 'sound/vox_fem/error.ogg',
"escape" = 'sound/vox_fem/escape.ogg',
"evacuate" = 'sound/vox_fem/evacuate.ogg',
"eva" = 'sound/vox_fem/eva.ogg',
"exchange" = 'sound/vox_fem/exchange.ogg',
"exit" = 'sound/vox_fem/exit.ogg',
"expect" = 'sound/vox_fem/expect.ogg',
"experimental" = 'sound/vox_fem/experimental.ogg',
"experiment" = 'sound/vox_fem/experiment.ogg',
"explode" = 'sound/vox_fem/explode.ogg',
"explosion" = 'sound/vox_fem/explosion.ogg',
"explosive" = 'sound/vox_fem/explosive.ogg',
"exposure" = 'sound/vox_fem/exposure.ogg',
"exterminate" = 'sound/vox_fem/exterminate.ogg',
"extinguisher" = 'sound/vox_fem/extinguisher.ogg',
"extinguish" = 'sound/vox_fem/extinguish.ogg',
"extreme" = 'sound/vox_fem/extreme.ogg',
"facility" = 'sound/vox_fem/facility.ogg',
"factory" = 'sound/vox_fem/factory.ogg',
"fahrenheit" = 'sound/vox_fem/fahrenheit.ogg',
"failed" = 'sound/vox_fem/failed.ogg',
"failure" = 'sound/vox_fem/failure.ogg',
"false" = 'sound/vox_fem/false.ogg',
"farthest" = 'sound/vox_fem/farthest.ogg',
"fast" = 'sound/vox_fem/fast.ogg',
"fauna" = 'sound/vox_fem/fauna.ogg',
"feet" = 'sound/vox_fem/feet.ogg',
"field" = 'sound/vox_fem/field.ogg',
"fifteen" = 'sound/vox_fem/fifteen.ogg',
"fifth" = 'sound/vox_fem/fifth.ogg',
"fifty" = 'sound/vox_fem/fifty.ogg',
"final" = 'sound/vox_fem/final.ogg',
"fine" = 'sound/vox_fem/fine.ogg',
"fire" = 'sound/vox_fem/fire.ogg',
"first" = 'sound/vox_fem/first.ogg',
"five" = 'sound/vox_fem/five.ogg',
"fix" = 'sound/vox_fem/fix.ogg',
"flooding" = 'sound/vox_fem/flooding.ogg',
"floor" = 'sound/vox_fem/floor.ogg',
"flyman" = 'sound/vox_fem/flyman.ogg',
"f" = 'sound/vox_fem/f.ogg',
"fool" = 'sound/vox_fem/fool.ogg',
"forbidden" = 'sound/vox_fem/forbidden.ogg',
"force" = 'sound/vox_fem/force.ogg',
"fore" = 'sound/vox_fem/fore.ogg',
"formed" = 'sound/vox_fem/formed.ogg',
"form" = 'sound/vox_fem/form.ogg',
"forms" = 'sound/vox_fem/forms.ogg',
"for" = 'sound/vox_fem/for.ogg',
"found" = 'sound/vox_fem/found.ogg',
"four" = 'sound/vox_fem/four.ogg',
"fourteen" = 'sound/vox_fem/fourteen.ogg',
"fourth" = 'sound/vox_fem/fourth.ogg',
"fourty" = 'sound/vox_fem/fourty.ogg',
"foxtrot" = 'sound/vox_fem/foxtrot.ogg',
"freeman" = 'sound/vox_fem/freeman.ogg',
"free" = 'sound/vox_fem/free.ogg',
"freezer" = 'sound/vox_fem/freezer.ogg',
"freezing" = 'sound/vox_fem/freezing.ogg',
"from" = 'sound/vox_fem/from.ogg',
"front" = 'sound/vox_fem/front.ogg',
"fucking" = 'sound/vox_fem/fucking.ogg',
"fuck" = 'sound/vox_fem/fuck.ogg',
"fucks" = 'sound/vox_fem/fucks.ogg',
"fuel" = 'sound/vox_fem/fuel.ogg',
"gas" = 'sound/vox_fem/gas.ogg',
"generator" = 'sound/vox_fem/generator.ogg',
"geneticist" = 'sound/vox_fem/geneticist.ogg',
"get" = 'sound/vox_fem/get.ogg',
"glory" = 'sound/vox_fem/glory.ogg',
"god" = 'sound/vox_fem/god.ogg',
"g" = 'sound/vox_fem/g.ogg',
"going" = 'sound/vox_fem/going.ogg',
"golem" = 'sound/vox_fem/golem.ogg',
"goodbye" = 'sound/vox_fem/goodbye.ogg',
"good" = 'sound/vox_fem/good.ogg',
"go" = 'sound/vox_fem/go.ogg',
"gordon" = 'sound/vox_fem/gordon.ogg',
"got" = 'sound/vox_fem/got.ogg',
"government" = 'sound/vox_fem/government.ogg',
"granted" = 'sound/vox_fem/granted.ogg',
"gravity" = 'sound/vox_fem/gravity.ogg',
"gray" = 'sound/vox_fem/gray.ogg',
"great" = 'sound/vox_fem/great.ogg',
"green" = 'sound/vox_fem/green.ogg',
"grenade" = 'sound/vox_fem/grenade.ogg',
"guard" = 'sound/vox_fem/guard.ogg',
"gulf" = 'sound/vox_fem/gulf.ogg',
"gun" = 'sound/vox_fem/gun.ogg',
"guthrie" = 'sound/vox_fem/guthrie.ogg',
"hacker" = 'sound/vox_fem/hacker.ogg',
"hackers" = 'sound/vox_fem/hackers.ogg',
"hall" = 'sound/vox_fem/hall.ogg',
"hallway" = 'sound/vox_fem/hallway.ogg',
"handling" = 'sound/vox_fem/handling.ogg',
"hangar" = 'sound/vox_fem/hangar.ogg',
"harmful" = 'sound/vox_fem/harmful.ogg',
"harm" = 'sound/vox_fem/harm.ogg',
"has" = 'sound/vox_fem/has.ogg',
"have" = 'sound/vox_fem/have.ogg',
"hazard" = 'sound/vox_fem/hazard.ogg',
"head" = 'sound/vox_fem/head.ogg',
"health" = 'sound/vox_fem/health.ogg',
"heat" = 'sound/vox_fem/heat.ogg',
"helicopter" = 'sound/vox_fem/helicopter.ogg',
"helium" = 'sound/vox_fem/helium.ogg',
"hello" = 'sound/vox_fem/hello.ogg',
"help" = 'sound/vox_fem/help.ogg',
"he" = 'sound/vox_fem/he.ogg',
"here" = 'sound/vox_fem/here.ogg',
"hide" = 'sound/vox_fem/hide.ogg',
"highest" = 'sound/vox_fem/highest.ogg',
"high" = 'sound/vox_fem/high.ogg',
"hit" = 'sound/vox_fem/hit.ogg',
"h" = 'sound/vox_fem/h.ogg',
"hole" = 'sound/vox_fem/hole.ogg',
"honk" = 'sound/vox_fem/honk.ogg',
"hop" = 'sound/vox_fem/hop.ogg',
"hos" = 'sound/vox_fem/hos.ogg',
"hostile" = 'sound/vox_fem/hostile.ogg',
"hotel" = 'sound/vox_fem/hotel.ogg',
"hot" = 'sound/vox_fem/hot.ogg',
"hour" = 'sound/vox_fem/hour.ogg',
"hours" = 'sound/vox_fem/hours.ogg',
"how" = 'sound/vox_fem/how.ogg',
"human" = 'sound/vox_fem/human.ogg',
"humanoid" = 'sound/vox_fem/humanoid.ogg',
"humans" = 'sound/vox_fem/humans.ogg',
"hundred" = 'sound/vox_fem/hundred.ogg',
"hunger" = 'sound/vox_fem/hunger.ogg',
"hurt" = 'sound/vox_fem/hurt.ogg',
"hydro" = 'sound/vox_fem/hydro.ogg',
"hydroponics" = 'sound/vox_fem/hydroponics.ogg',
"ian" = 'sound/vox_fem/ian.ogg',
"idiot" = 'sound/vox_fem/idiot.ogg',
"if2" = 'sound/vox_fem/if2.ogg',
"if" = 'sound/vox_fem/if.ogg',
"illegal" = 'sound/vox_fem/illegal.ogg',
"immediately" = 'sound/vox_fem/immediately.ogg',
"immediate" = 'sound/vox_fem/immediate.ogg',
"immortal" = 'sound/vox_fem/immortal.ogg',
"impossible" = 'sound/vox_fem/impossible.ogg',
"inches" = 'sound/vox_fem/inches.ogg',
"india" = 'sound/vox_fem/india.ogg',
"ing" = 'sound/vox_fem/ing.ogg',
"in" = 'sound/vox_fem/in.ogg',
"inoperative" = 'sound/vox_fem/inoperative.ogg',
"inside" = 'sound/vox_fem/inside.ogg',
"inspection" = 'sound/vox_fem/inspection.ogg',
"inspector" = 'sound/vox_fem/inspector.ogg',
"interchange" = 'sound/vox_fem/interchange.ogg',
"internals" = 'sound/vox_fem/internals.ogg',
"intruder" = 'sound/vox_fem/intruder.ogg',
"invalid" = 'sound/vox_fem/invalid.ogg',
"invasion" = 'sound/vox_fem/invasion.ogg',
"i" = 'sound/vox_fem/i.ogg',
"is" = 'sound/vox_fem/is.ogg',
"it" = 'sound/vox_fem/it.ogg',
"janitor" = 'sound/vox_fem/janitor.ogg',
"jesus" = 'sound/vox_fem/jesus.ogg',
"j" = 'sound/vox_fem/j.ogg',
"johnson" = 'sound/vox_fem/johnson.ogg',
"juliet" = 'sound/vox_fem/juliet.ogg',
"key" = 'sound/vox_fem/key.ogg',
"kidnapped" = 'sound/vox_fem/kidnapped.ogg',
"kidnapping" = 'sound/vox_fem/kidnapping.ogg',
"killed" = 'sound/vox_fem/killed.ogg',
"kill" = 'sound/vox_fem/kill.ogg',
"kilo" = 'sound/vox_fem/kilo.ogg',
"kitchen" = 'sound/vox_fem/kitchen.ogg',
"kit" = 'sound/vox_fem/kit.ogg',
"k" = 'sound/vox_fem/k.ogg',
"lab" = 'sound/vox_fem/lab.ogg',
"lambda" = 'sound/vox_fem/lambda.ogg',
"laser" = 'sound/vox_fem/laser.ogg',
"last" = 'sound/vox_fem/last.ogg',
"launch" = 'sound/vox_fem/launch.ogg',
"lavaland" = 'sound/vox_fem/lavaland.ogg',
"law" = 'sound/vox_fem/law.ogg',
"laws" = 'sound/vox_fem/laws.ogg',
"lawyer" = 'sound/vox_fem/lawyer.ogg',
"leak" = 'sound/vox_fem/leak.ogg',
"leave" = 'sound/vox_fem/leave.ogg',
"left" = 'sound/vox_fem/left.ogg',
"legal" = 'sound/vox_fem/legal.ogg',
"level" = 'sound/vox_fem/level.ogg',
"lever" = 'sound/vox_fem/lever.ogg',
"library" = 'sound/vox_fem/library.ogg',
"lie" = 'sound/vox_fem/lie.ogg',
"lieutenant" = 'sound/vox_fem/lieutenant.ogg',
"lifeform" = 'sound/vox_fem/lifeform.ogg',
"life" = 'sound/vox_fem/life.ogg',
"light" = 'sound/vox_fem/light.ogg',
"lima" = 'sound/vox_fem/lima.ogg',
"liquid" = 'sound/vox_fem/liquid.ogg',
"live2" = 'sound/vox_fem/live2.ogg',
"live" = 'sound/vox_fem/live.ogg',
"lizard" = 'sound/vox_fem/lizard.ogg',
"loading" = 'sound/vox_fem/loading.ogg',
"located" = 'sound/vox_fem/located.ogg',
"locate" = 'sound/vox_fem/locate.ogg',
"location" = 'sound/vox_fem/location.ogg',
"locked" = 'sound/vox_fem/locked.ogg',
"locker" = 'sound/vox_fem/locker.ogg',
"lock" = 'sound/vox_fem/lock.ogg',
"lockout" = 'sound/vox_fem/lockout.ogg',
"l" = 'sound/vox_fem/l.ogg',
"long" = 'sound/vox_fem/long.ogg',
"look" = 'sound/vox_fem/look.ogg',
"loop" = 'sound/vox_fem/loop.ogg',
"loose" = 'sound/vox_fem/loose.ogg',
"lot" = 'sound/vox_fem/lot.ogg',
"lower" = 'sound/vox_fem/lower.ogg',
"lowest" = 'sound/vox_fem/lowest.ogg',
"lusty" = 'sound/vox_fem/lusty.ogg',
"machine" = 'sound/vox_fem/machine.ogg',
"magic" = 'sound/vox_fem/magic.ogg',
"magnetic" = 'sound/vox_fem/magnetic.ogg',
"main" = 'sound/vox_fem/main.ogg',
"maintenance" = 'sound/vox_fem/maintenance.ogg',
"malfunction" = 'sound/vox_fem/malfunction.ogg',
"man" = 'sound/vox_fem/man.ogg',
"many" = 'sound/vox_fem/many.ogg',
"mass" = 'sound/vox_fem/mass.ogg',
"materials" = 'sound/vox_fem/materials.ogg',
"maximum" = 'sound/vox_fem/maximum.ogg',
"may" = 'sound/vox_fem/may.ogg',
"meat" = 'sound/vox_fem/meat.ogg',
"medbay" = 'sound/vox_fem/medbay.ogg',
"medical" = 'sound/vox_fem/medical.ogg',
"megafauna" = 'sound/vox_fem/megafauna.ogg',
"men" = 'sound/vox_fem/men.ogg',
"me" = 'sound/vox_fem/me.ogg',
"mercy" = 'sound/vox_fem/mercy.ogg',
"mesa" = 'sound/vox_fem/mesa.ogg',
"message" = 'sound/vox_fem/message.ogg',
"meter" = 'sound/vox_fem/meter.ogg',
"micro" = 'sound/vox_fem/micro.ogg',
"middle" = 'sound/vox_fem/middle.ogg',
"mike" = 'sound/vox_fem/mike.ogg',
"miles" = 'sound/vox_fem/miles.ogg',
"military" = 'sound/vox_fem/military.ogg',
"milli" = 'sound/vox_fem/milli.ogg',
"million" = 'sound/vox_fem/million.ogg',
"mime" = 'sound/vox_fem/mime.ogg',
"minefield" = 'sound/vox_fem/minefield.ogg',
"miner" = 'sound/vox_fem/miner.ogg',
"minimum" = 'sound/vox_fem/minimum.ogg',
"minutes" = 'sound/vox_fem/minutes.ogg',
"mister" = 'sound/vox_fem/mister.ogg',
"mode" = 'sound/vox_fem/mode.ogg',
"modification" = 'sound/vox_fem/modification.ogg',
"m" = 'sound/vox_fem/m.ogg',
"money" = 'sound/vox_fem/money.ogg',
"monkey" = 'sound/vox_fem/monkey.ogg',
"moth" = 'sound/vox_fem/moth.ogg',
"motor" = 'sound/vox_fem/motor.ogg',
"motorpool" = 'sound/vox_fem/motorpool.ogg',
"move" = 'sound/vox_fem/move.ogg',
"multitude" = 'sound/vox_fem/multitude.ogg',
"murder" = 'sound/vox_fem/murder.ogg',
"must" = 'sound/vox_fem/must.ogg',
"my" = 'sound/vox_fem/my.ogg',
"mythic" = 'sound/vox_fem/mythic.ogg',
"nanotrasen" = 'sound/vox_fem/nanotrasen.ogg',
"nearest" = 'sound/vox_fem/nearest.ogg',
"need" = 'sound/vox_fem/need.ogg',
"nice" = 'sound/vox_fem/nice.ogg',
"nine" = 'sound/vox_fem/nine.ogg',
"nineteen" = 'sound/vox_fem/nineteen.ogg',
"ninety" = 'sound/vox_fem/ninety.ogg',
"nitrogen" = 'sound/vox_fem/nitrogen.ogg',
"n" = 'sound/vox_fem/n.ogg',
"nominal" = 'sound/vox_fem/nominal.ogg',
"no" = 'sound/vox_fem/no.ogg',
"north" = 'sound/vox_fem/north.ogg',
"not" = 'sound/vox_fem/not.ogg',
"november" = 'sound/vox_fem/november.ogg',
"now" = 'sound/vox_fem/now.ogg',
"nuclear" = 'sound/vox_fem/nuclear.ogg',
"nuke" = 'sound/vox_fem/nuke.ogg',
"number" = 'sound/vox_fem/number.ogg',
"objective" = 'sound/vox_fem/objective.ogg',
"observation" = 'sound/vox_fem/observation.ogg',
"obtain" = 'sound/vox_fem/obtain.ogg',
"office" = 'sound/vox_fem/office.ogg',
"officer" = 'sound/vox_fem/officer.ogg',
"off" = 'sound/vox_fem/off.ogg',
"of" = 'sound/vox_fem/of.ogg',
"," = 'sound/vox_fem/,.ogg',
"." = 'sound/vox_fem/..ogg',
"oh" = 'sound/vox_fem/oh.ogg',
"ok" = 'sound/vox_fem/ok.ogg',
"one" = 'sound/vox_fem/one.ogg',
"on" = 'sound/vox_fem/on.ogg',
"oof" = 'sound/vox_fem/oof.ogg',
"o" = 'sound/vox_fem/o.ogg',
"open" = 'sound/vox_fem/open.ogg',
"operating" = 'sound/vox_fem/operating.ogg',
"operations" = 'sound/vox_fem/operations.ogg',
"operative" = 'sound/vox_fem/operative.ogg',
"option" = 'sound/vox_fem/option.ogg',
"order" = 'sound/vox_fem/order.ogg',
"organic" = 'sound/vox_fem/organic.ogg',
"or" = 'sound/vox_fem/or.ogg',
"oscar" = 'sound/vox_fem/oscar.ogg',
"out" = 'sound/vox_fem/out.ogg',
"outside" = 'sound/vox_fem/outside.ogg',
"overload" = 'sound/vox_fem/overload.ogg',
"over" = 'sound/vox_fem/over.ogg',
"override" = 'sound/vox_fem/override.ogg',
"oxygen" = 'sound/vox_fem/oxygen.ogg',
"pacification" = 'sound/vox_fem/pacification.ogg',
"pacify" = 'sound/vox_fem/pacify.ogg',
"pain" = 'sound/vox_fem/pain.ogg',
"pal" = 'sound/vox_fem/pal.ogg',
"panel" = 'sound/vox_fem/panel.ogg',
"panting" = 'sound/vox_fem/panting.ogg',
"pathetic" = 'sound/vox_fem/pathetic.ogg',
"percent" = 'sound/vox_fem/percent.ogg',
"perfect" = 'sound/vox_fem/perfect.ogg',
"perimeter" = 'sound/vox_fem/perimeter.ogg',
"permitted" = 'sound/vox_fem/permitted.ogg',
"personal" = 'sound/vox_fem/personal.ogg',
"personnel" = 'sound/vox_fem/personnel.ogg',
"pipe" = 'sound/vox_fem/pipe.ogg',
"piping" = 'sound/vox_fem/piping.ogg',
"piss" = 'sound/vox_fem/piss.ogg',
"plant" = 'sound/vox_fem/plant.ogg',
"plasmaman" = 'sound/vox_fem/plasmaman.ogg',
"plasma" = 'sound/vox_fem/plasma.ogg',
"platform" = 'sound/vox_fem/platform.ogg',
"plausible" = 'sound/vox_fem/plausible.ogg',
"please" = 'sound/vox_fem/please.ogg',
"p" = 'sound/vox_fem/p.ogg',
"point" = 'sound/vox_fem/point.ogg',
"portal" = 'sound/vox_fem/portal.ogg',
"port" = 'sound/vox_fem/port.ogg',
"possible" = 'sound/vox_fem/possible.ogg',
"power" = 'sound/vox_fem/power.ogg',
"presence" = 'sound/vox_fem/presence.ogg',
"press" = 'sound/vox_fem/press.ogg',
"pressure" = 'sound/vox_fem/pressure.ogg',
"primary" = 'sound/vox_fem/primary.ogg',
"prisoner" = 'sound/vox_fem/prisoner.ogg',
"prison" = 'sound/vox_fem/prison.ogg',
"proceed" = 'sound/vox_fem/proceed.ogg',
"processing" = 'sound/vox_fem/processing.ogg',
"progress" = 'sound/vox_fem/progress.ogg',
"proper" = 'sound/vox_fem/proper.ogg',
"propulsion" = 'sound/vox_fem/propulsion.ogg',
"prosecute" = 'sound/vox_fem/prosecute.ogg',
"protective" = 'sound/vox_fem/protective.ogg',
"push" = 'sound/vox_fem/push.ogg',
"put" = 'sound/vox_fem/put.ogg',
"q" = 'sound/vox_fem/q.ogg',
"quantum" = 'sound/vox_fem/quantum.ogg',
"quarantine" = 'sound/vox_fem/quarantine.ogg',
"quartermaster" = 'sound/vox_fem/quartermaster.ogg',
"quebec" = 'sound/vox_fem/quebec.ogg',
"queen" = 'sound/vox_fem/queen.ogg',
"questionable" = 'sound/vox_fem/questionable.ogg',
"questioning" = 'sound/vox_fem/questioning.ogg',
"question" = 'sound/vox_fem/question.ogg',
"quick" = 'sound/vox_fem/quick.ogg',
"quit" = 'sound/vox_fem/quit.ogg',
"radiation" = 'sound/vox_fem/radiation.ogg',
"radioactive" = 'sound/vox_fem/radioactive.ogg',
"rads" = 'sound/vox_fem/rads.ogg',
"raider" = 'sound/vox_fem/raider.ogg',
"raiders" = 'sound/vox_fem/raiders.ogg',
"rapid" = 'sound/vox_fem/rapid.ogg',
"reached" = 'sound/vox_fem/reached.ogg',
"reach" = 'sound/vox_fem/reach.ogg',
"reactor" = 'sound/vox_fem/reactor.ogg',
"red" = 'sound/vox_fem/red.ogg',
"relay" = 'sound/vox_fem/relay.ogg',
"released" = 'sound/vox_fem/released.ogg',
"remaining" = 'sound/vox_fem/remaining.ogg',
"removal" = 'sound/vox_fem/removal.ogg',
"renegade" = 'sound/vox_fem/renegade.ogg',
"repair" = 'sound/vox_fem/repair.ogg',
"report" = 'sound/vox_fem/report.ogg',
"reports" = 'sound/vox_fem/reports.ogg',
"required" = 'sound/vox_fem/required.ogg',
"require" = 'sound/vox_fem/require.ogg',
"research" = 'sound/vox_fem/research.ogg',
"resevoir" = 'sound/vox_fem/resevoir.ogg',
"resistance" = 'sound/vox_fem/resistance.ogg',
"rest" = 'sound/vox_fem/rest.ogg',
"restoration" = 'sound/vox_fem/restoration.ogg',
"revolutionary" = 'sound/vox_fem/revolutionary.ogg',
"revolution" = 'sound/vox_fem/revolution.ogg',
"right" = 'sound/vox_fem/right.ogg',
"riot" = 'sound/vox_fem/riot.ogg',
"roboticist" = 'sound/vox_fem/roboticist.ogg',
"rocket" = 'sound/vox_fem/rocket.ogg',
"roger" = 'sound/vox_fem/roger.ogg',
"r" = 'sound/vox_fem/r.ogg',
"rogue" = 'sound/vox_fem/rogue.ogg',
"romeo" = 'sound/vox_fem/romeo.ogg',
"room" = 'sound/vox_fem/room.ogg',
"round" = 'sound/vox_fem/round.ogg',
"rune" = 'sound/vox_fem/rune.ogg',
"run" = 'sound/vox_fem/run.ogg',
"runtime" = 'sound/vox_fem/runtime.ogg',
"sabotage" = 'sound/vox_fem/sabotage.ogg',
"safe" = 'sound/vox_fem/safe.ogg',
"safety" = 'sound/vox_fem/safety.ogg',
"sairhorn" = 'sound/vox_fem/sairhorn.ogg',
"sarah" = 'sound/vox_fem/sarah.ogg',
"sargeant" = 'sound/vox_fem/sargeant.ogg',
"satellite" = 'sound/vox_fem/satellite.ogg',
"save" = 'sound/vox_fem/save.ogg',
"scensor" = 'sound/vox_fem/scensor.ogg',
"science" = 'sound/vox_fem/science.ogg',
"scientist" = 'sound/vox_fem/scientist.ogg',
"scream" = 'sound/vox_fem/scream.ogg',
"screen" = 'sound/vox_fem/screen.ogg',
"search" = 'sound/vox_fem/search.ogg',
"secondary" = 'sound/vox_fem/secondary.ogg',
"second" = 'sound/vox_fem/second.ogg',
"seconds" = 'sound/vox_fem/seconds.ogg',
"section" = 'sound/vox_fem/section.ogg',
"sector" = 'sound/vox_fem/sector.ogg',
"secured" = 'sound/vox_fem/secured.ogg',
"secure" = 'sound/vox_fem/secure.ogg',
"security" = 'sound/vox_fem/security.ogg',
"selected" = 'sound/vox_fem/selected.ogg',
"select" = 'sound/vox_fem/select.ogg',
"self" = 'sound/vox_fem/self.ogg',
"sensors" = 'sound/vox_fem/sensors.ogg',
"server" = 'sound/vox_fem/server.ogg',
"service" = 'sound/vox_fem/service.ogg',
"seven" = 'sound/vox_fem/seven.ogg',
"seventeen" = 'sound/vox_fem/seventeen.ogg',
"seventy" = 'sound/vox_fem/seventy.ogg',
"severe" = 'sound/vox_fem/severe.ogg',
"sewage" = 'sound/vox_fem/sewage.ogg',
"sewer" = 'sound/vox_fem/sewer.ogg',
"shaft" = 'sound/vox_fem/shaft.ogg',
"she" = 'sound/vox_fem/she.ogg',
"shield" = 'sound/vox_fem/shield.ogg',
"shipment" = 'sound/vox_fem/shipment.ogg',
"shirt" = 'sound/vox_fem/shirt.ogg',
"shitlord" = 'sound/vox_fem/shitlord.ogg',
"shit" = 'sound/vox_fem/shit.ogg',
"shits" = 'sound/vox_fem/shits.ogg',
"shitting" = 'sound/vox_fem/shitting.ogg',
"shock" = 'sound/vox_fem/shock.ogg',
"shonk" = 'sound/vox_fem/shonk.ogg',
"shoot" = 'sound/vox_fem/shoot.ogg',
"shower" = 'sound/vox_fem/shower.ogg',
"shut" = 'sound/vox_fem/shut.ogg',
"shuttle" = 'sound/vox_fem/shuttle.ogg',
"sick" = 'sound/vox_fem/sick.ogg',
"side" = 'sound/vox_fem/side.ogg',
"sierra" = 'sound/vox_fem/sierra.ogg',
"sight" = 'sound/vox_fem/sight.ogg',
"silicon" = 'sound/vox_fem/silicon.ogg',
"silo" = 'sound/vox_fem/silo.ogg',
"singularity" = 'sound/vox_fem/singularity.ogg',
"six" = 'sound/vox_fem/six.ogg',
"sixteen" = 'sound/vox_fem/sixteen.ogg',
"sixty" = 'sound/vox_fem/sixty.ogg',
"skeleton" = 'sound/vox_fem/skeleton.ogg',
"slaughter" = 'sound/vox_fem/slaughter.ogg',
"slime" = 'sound/vox_fem/slime.ogg',
"slip" = 'sound/vox_fem/slip.ogg',
"slippery" = 'sound/vox_fem/slippery.ogg',
"slow" = 'sound/vox_fem/slow.ogg',
"sm" = 'sound/vox_fem/sm.ogg',
"s" = 'sound/vox_fem/s.ogg',
"solar" = 'sound/vox_fem/solar.ogg',
"solars" = 'sound/vox_fem/solars.ogg',
"soldier" = 'sound/vox_fem/soldier.ogg',
"some" = 'sound/vox_fem/some.ogg',
"someone" = 'sound/vox_fem/someone.ogg',
"something" = 'sound/vox_fem/something.ogg',
"son" = 'sound/vox_fem/son.ogg',
"sorry" = 'sound/vox_fem/sorry.ogg',
"south" = 'sound/vox_fem/south.ogg',
"space" = 'sound/vox_fem/space.ogg',
"squad" = 'sound/vox_fem/squad.ogg',
"square" = 'sound/vox_fem/square.ogg',
"ss13" = 'sound/vox_fem/ss13.ogg',
"stairway" = 'sound/vox_fem/stairway.ogg',
"starboard" = 'sound/vox_fem/starboard.ogg',
"station" = 'sound/vox_fem/station.ogg',
"status" = 'sound/vox_fem/status.ogg',
"stay" = 'sound/vox_fem/stay.ogg',
"sterile" = 'sound/vox_fem/sterile.ogg',
"sterilization" = 'sound/vox_fem/sterilization.ogg',
"stop" = 'sound/vox_fem/stop.ogg',
"storage" = 'sound/vox_fem/storage.ogg',
"strong" = 'sound/vox_fem/strong.ogg',
"stuck" = 'sound/vox_fem/stuck.ogg',
"sub" = 'sound/vox_fem/sub.ogg',
"subsurface" = 'sound/vox_fem/subsurface.ogg',
"sudden" = 'sound/vox_fem/sudden.ogg',
"suffer" = 'sound/vox_fem/suffer.ogg',
"suit" = 'sound/vox_fem/suit.ogg',
"superconducting" = 'sound/vox_fem/superconducting.ogg',
"supercooled" = 'sound/vox_fem/supercooled.ogg',
"supermatter" = 'sound/vox_fem/supermatter.ogg',
"supply" = 'sound/vox_fem/supply.ogg',
"surface" = 'sound/vox_fem/surface.ogg',
"surrender" = 'sound/vox_fem/surrender.ogg',
"surrounded" = 'sound/vox_fem/surrounded.ogg',
"surround" = 'sound/vox_fem/surround.ogg',
"sweating" = 'sound/vox_fem/sweating.ogg',
"swhitenoise" = 'sound/vox_fem/swhitenoise.ogg',
"switch" = 'sound/vox_fem/switch.ogg',
"syndicate" = 'sound/vox_fem/syndicate.ogg',
"system" = 'sound/vox_fem/system.ogg',
"systems" = 'sound/vox_fem/systems.ogg',
"table" = 'sound/vox_fem/table.ogg',
"tactical" = 'sound/vox_fem/tactical.ogg',
"take" = 'sound/vox_fem/take.ogg',
"talk" = 'sound/vox_fem/talk.ogg',
"tampered" = 'sound/vox_fem/tampered.ogg',
"tango" = 'sound/vox_fem/tango.ogg',
"tank" = 'sound/vox_fem/tank.ogg',
"target" = 'sound/vox_fem/target.ogg',
"team" = 'sound/vox_fem/team.ogg',
"technician" = 'sound/vox_fem/technician.ogg',
"technology" = 'sound/vox_fem/technology.ogg',
"tech" = 'sound/vox_fem/tech.ogg',
"temperature" = 'sound/vox_fem/temperature.ogg',
"temporal" = 'sound/vox_fem/temporal.ogg',
"ten" = 'sound/vox_fem/ten.ogg',
"terminal" = 'sound/vox_fem/terminal.ogg',
"terminated" = 'sound/vox_fem/terminated.ogg',
"termination" = 'sound/vox_fem/termination.ogg',
"test" = 'sound/vox_fem/test.ogg',
"text" = 'sound/vox_fem/text.ogg',
"that" = 'sound/vox_fem/that.ogg',
"theater" = 'sound/vox_fem/theater.ogg',
"them" = 'sound/vox_fem/them.ogg',
"then" = 'sound/vox_fem/then.ogg',
"the" = 'sound/vox_fem/the.ogg',
"there" = 'sound/vox_fem/there.ogg',
"they" = 'sound/vox_fem/they.ogg',
"third" = 'sound/vox_fem/third.ogg',
"thirteen" = 'sound/vox_fem/thirteen.ogg',
"thirty" = 'sound/vox_fem/thirty.ogg',
"this" = 'sound/vox_fem/this.ogg',
"those" = 'sound/vox_fem/those.ogg',
"thousand" = 'sound/vox_fem/thousand.ogg',
"threat" = 'sound/vox_fem/threat.ogg',
"three" = 'sound/vox_fem/three.ogg',
"through" = 'sound/vox_fem/through.ogg',
"tide" = 'sound/vox_fem/tide.ogg',
"time" = 'sound/vox_fem/time.ogg',
"t" = 'sound/vox_fem/t.ogg',
"to" = 'sound/vox_fem/to.ogg',
"top" = 'sound/vox_fem/top.ogg',
"topside" = 'sound/vox_fem/topside.ogg',
"touch" = 'sound/vox_fem/touch.ogg',
"towards" = 'sound/vox_fem/towards.ogg',
"toxins" = 'sound/vox_fem/toxins.ogg',
"track" = 'sound/vox_fem/track.ogg',
"train" = 'sound/vox_fem/train.ogg',
"traitor" = 'sound/vox_fem/traitor.ogg',
"transportation" = 'sound/vox_fem/transportation.ogg',
"truck" = 'sound/vox_fem/truck.ogg',
"true" = 'sound/vox_fem/true.ogg',
"tunnel" = 'sound/vox_fem/tunnel.ogg',
"turn" = 'sound/vox_fem/turn.ogg',
"turret" = 'sound/vox_fem/turret.ogg',
"twelve" = 'sound/vox_fem/twelve.ogg',
"twenty" = 'sound/vox_fem/twenty.ogg',
"two" = 'sound/vox_fem/two.ogg',
"ughh" = 'sound/vox_fem/ughh.ogg',
"ugh" = 'sound/vox_fem/ugh.ogg',
"unable" = 'sound/vox_fem/unable.ogg',
"unauthorized" = 'sound/vox_fem/unauthorized.ogg',
"under" = 'sound/vox_fem/under.ogg',
"uniform" = 'sound/vox_fem/uniform.ogg',
"unknown" = 'sound/vox_fem/unknown.ogg',
"unlocked" = 'sound/vox_fem/unlocked.ogg',
"unsafe" = 'sound/vox_fem/unsafe.ogg',
"until" = 'sound/vox_fem/until.ogg',
"u" = 'sound/vox_fem/u.ogg',
"updated" = 'sound/vox_fem/updated.ogg',
"update" = 'sound/vox_fem/update.ogg',
"updating" = 'sound/vox_fem/updating.ogg',
"upload" = 'sound/vox_fem/upload.ogg',
"up" = 'sound/vox_fem/up.ogg',
"upper" = 'sound/vox_fem/upper.ogg',
"uranium" = 'sound/vox_fem/uranium.ogg',
"usa" = 'sound/vox_fem/usa.ogg',
"used" = 'sound/vox_fem/used.ogg',
"use" = 'sound/vox_fem/use.ogg',
"user" = 'sound/vox_fem/user.ogg',
"us" = 'sound/vox_fem/us.ogg',
"vacate" = 'sound/vox_fem/vacate.ogg',
"vacuum" = 'sound/vox_fem/vacuum.ogg',
"valid" = 'sound/vox_fem/valid.ogg',
"vapor" = 'sound/vox_fem/vapor.ogg',
"vendor" = 'sound/vox_fem/vendor.ogg',
"ventilation" = 'sound/vox_fem/ventilation.ogg',
"vent" = 'sound/vox_fem/vent.ogg',
"very" = 'sound/vox_fem/very.ogg',
"victor" = 'sound/vox_fem/victor.ogg',
"violated" = 'sound/vox_fem/violated.ogg',
"violation" = 'sound/vox_fem/violation.ogg',
"virologist" = 'sound/vox_fem/virologist.ogg',
"virology" = 'sound/vox_fem/virology.ogg',
"virus" = 'sound/vox_fem/virus.ogg',
"vitals" = 'sound/vox_fem/vitals.ogg',
"v" = 'sound/vox_fem/v.ogg',
"voltage" = 'sound/vox_fem/voltage.ogg',
"vox_login" = 'sound/vox_fem/vox_login.ogg',
"vox" = 'sound/vox_fem/vox.ogg',
"voxtest" = 'sound/vox_fem/voxtest.ogg',
"walk" = 'sound/vox_fem/walk.ogg',
"wall" = 'sound/vox_fem/wall.ogg',
"wanker" = 'sound/vox_fem/wanker.ogg',
"wanted" = 'sound/vox_fem/wanted.ogg',
"want" = 'sound/vox_fem/want.ogg',
"warden" = 'sound/vox_fem/warden.ogg',
"warm" = 'sound/vox_fem/warm.ogg',
"warning" = 'sound/vox_fem/warning.ogg',
"warn" = 'sound/vox_fem/warn.ogg',
"waste" = 'sound/vox_fem/waste.ogg',
"water" = 'sound/vox_fem/water.ogg',
"weak" = 'sound/vox_fem/weak.ogg',
"weapon" = 'sound/vox_fem/weapon.ogg',
"welcome" = 'sound/vox_fem/welcome.ogg',
"we" = 'sound/vox_fem/we.ogg',
"west" = 'sound/vox_fem/west.ogg',
"wew" = 'sound/vox_fem/wew.ogg',
"what" = 'sound/vox_fem/what.ogg',
"when" = 'sound/vox_fem/when.ogg',
"where" = 'sound/vox_fem/where.ogg',
"whiskey" = 'sound/vox_fem/whiskey.ogg',
"white" = 'sound/vox_fem/white.ogg',
"why" = 'sound/vox_fem/why.ogg',
"wilco" = 'sound/vox_fem/wilco.ogg',
"will" = 'sound/vox_fem/will.ogg',
"wing" = 'sound/vox_fem/wing.ogg',
"wire" = 'sound/vox_fem/wire.ogg',
"with" = 'sound/vox_fem/with.ogg',
"without" = 'sound/vox_fem/without.ogg',
"wizard" = 'sound/vox_fem/wizard.ogg',
"w" = 'sound/vox_fem/w.ogg',
"wood" = 'sound/vox_fem/wood.ogg',
"woody" = 'sound/vox_fem/woody.ogg',
"woop" = 'sound/vox_fem/woop.ogg',
"wow" = 'sound/vox_fem/wow.ogg',
"xenobiology" = 'sound/vox_fem/xenobiology.ogg',
"xenomorph" = 'sound/vox_fem/xenomorph.ogg',
"xenomorphs" = 'sound/vox_fem/xenomorphs.ogg',
"xeno" = 'sound/vox_fem/xeno.ogg',
"x" = 'sound/vox_fem/x.ogg',
"yankee" = 'sound/vox_fem/yankee.ogg',
"yards" = 'sound/vox_fem/yards.ogg',
"year" = 'sound/vox_fem/year.ogg',
"yellow" = 'sound/vox_fem/yellow.ogg',
"yes" = 'sound/vox_fem/yes.ogg',
"y" = 'sound/vox_fem/y.ogg',
"you" = 'sound/vox_fem/you.ogg',
"your" = 'sound/vox_fem/your.ogg',
"yourself" = 'sound/vox_fem/yourself.ogg',
"zero" = 'sound/vox_fem/zero.ogg',
"z" = 'sound/vox_fem/z.ogg',
"zombie" = 'sound/vox_fem/zombie.ogg',
"zone" = 'sound/vox_fem/zone.ogg',
"zulu" = 'sound/vox_fem/zulu.ogg'))
#endif
