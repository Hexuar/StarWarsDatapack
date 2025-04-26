# Root Entity
summon villager ~ ~ ~ {CustomNameVisible:0b,Tags:["starwars.new","starwars.entity","starwars.entity_root","starwars.mob","starwars.jawa"],CustomName:{"translate":"entity.starwars.jawa"},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],VillagerData:{"profession":"armorer",level:99},DeathLootTable:"starwars:entity/jawa"}

# Model
summon item_display ~ ~ ~ {Tags:["starwars.new","starwars.entity"],item:{id:"minecraft:command_block",components:{"minecraft:item_model":"starwars:entity/mob/jawa"}},teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}

# Trades
execute as @e[type=villager,tag=starwars.new] run function starwars:entity/mob/trader/apply_trades {entity:"jawa"}

function starwars:entity/mob/summon