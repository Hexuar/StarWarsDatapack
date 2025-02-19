summon wandering_trader ~ ~ ~ {Tags:["starwars.new","starwars.entity","starwars.entity_root","starwars.mob","starwars.jawa"],Silent:1b,CustomNameVisible:0b,CustomName:'"Jawa"',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:stick",count:1}}]}}

summon item_display ~ ~ ~ {Tags:["starwars.new","starwars.entity"],item:{id:"minecraft:command_block",components:{"minecraft:item_model":"starwars:entity/mob/jawa"}},teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}

function starwars:entity/mob/summon