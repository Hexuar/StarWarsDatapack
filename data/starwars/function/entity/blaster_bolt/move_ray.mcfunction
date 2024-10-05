execute if score #index starwars.value matches 10.. run return 0
scoreboard players add #index starwars.value 1

execute positioned ^ ^ ^0.2 run function starwars:entity/blaster_bolt/check_and_particle with entity @s data

execute positioned ^ ^ ^0.2 run function starwars:entity/blaster_bolt/move_ray