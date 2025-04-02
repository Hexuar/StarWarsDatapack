# Root Entity
summon husk ~ ~ ~ {CustomNameVisible:0b,Tags:["starwars.new","starwars.entity","starwars.entity_root","starwars.mob","starwars.darth_jar_jar"],CustomName:'{"translate":"entity.starwars.darth_jar_jar"}',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],DeathLootTable:"starwars:entity/darth_jar_jar",Health:50,attributes:[{id:"max_health",base:50}]}

# Model
summon item_display ~ ~ ~ {Tags:["starwars.new","starwars.entity"],item:{id:"minecraft:command_block",components:{"minecraft:item_model":"starwars:entity/mob/darth_jar_jar"}},teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.7f,0.0f]}}

function starwars:entity/mob/summon