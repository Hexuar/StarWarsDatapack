# Root Entity
summon horse ~ ~ ~ {CustomNameVisible:0b,Tags:["starwars.new","starwars.entity","starwars.entity_root","starwars.mob","starwars.tauntaun"],CustomName:{"translate":"entity.starwars.tauntaun"},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],DeathLootTable:"starwars:entities/tauntaun"}

# Model
summon item_display ~ ~ ~ {Tags:["starwars.new","starwars.entity"],item:{id:"minecraft:command_block",components:{"minecraft:item_model":"starwars:entity/mob/tauntaun"}},teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,1.47f,0.5f]}}

function starwars:entity/mob/summon