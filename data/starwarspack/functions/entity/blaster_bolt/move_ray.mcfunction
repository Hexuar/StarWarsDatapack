execute if score #index starwarspack.value matches 10.. run return 0
scoreboard players add #index starwarspack.value 1

execute positioned ^ ^ ^0.2 run function starwarspack:entity/blaster_bolt/check_and_particle with entity @s data

execute positioned ^ ^ ^0.2 run function starwarspack:entity/blaster_bolt/move_ray