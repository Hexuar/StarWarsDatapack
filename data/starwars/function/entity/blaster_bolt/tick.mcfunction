scoreboard players add @s starwars.shoot_time 1
execute if score @s starwars.shoot_time matches 50 run kill @s

scoreboard players set #index starwars.value 0
function starwars:entity/blaster_bolt/move_ray

tp ^ ^ ^2

#execute if entity @s[tag=starwars.reflect] run function starwars:entity/blaster_bolt/reflect