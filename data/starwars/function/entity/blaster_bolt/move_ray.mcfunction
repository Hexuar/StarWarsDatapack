execute if score #index starwars.value >= #BLASTER_BOLT_SPEED starwars.const run return 0
scoreboard players add #index starwars.value 1

tp @s ^ ^ ^0.2

execute at @s run function starwars:entity/blaster_bolt/check_and_particle with entity @s item.components."minecraft:custom_data"

execute at @s run function starwars:entity/blaster_bolt/move_ray