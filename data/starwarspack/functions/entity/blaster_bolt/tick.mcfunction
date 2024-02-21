scoreboard players add @s starwarspack.shoot_time 1
execute if score @s starwarspack.shoot_time matches 50 run kill @s

scoreboard players set #index starwarspack.value 0
function starwarspack:entity/blaster_bolt/move_ray

tp ^ ^ ^2

execute if entity @s[tag=starwarspack.reflect] run function starwarspack:entity/blaster_bolt/reflect