# Root Entity
summon husk ~ ~ ~ {CustomNameVisible:0b,Tags:["starwars.new","starwars.entity","starwars.entity_root","starwars.mob","starwars.wampa"],CustomName:'{"translate":"entity.starwars.wampa"}',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],DeathLootTable:"starwars:entity/wampa",Health:50,attributes:[{id:"max_health",base:50}]}

# Model
summon item_display ~ ~ ~ {Tags:["starwars.new","starwars.entity"],item:{id:"minecraft:command_block",components:{"minecraft:item_model":"starwars:entity/mob/wampa"}},teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,1.0f,0.0f]}}

function starwars:entity/mob/summon