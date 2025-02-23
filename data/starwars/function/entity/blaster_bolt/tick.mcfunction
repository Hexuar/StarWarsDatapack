scoreboard players add @s starwars.shoot_time 1
execute if score @s starwars.shoot_time >= #MAX_SHOOT_TIME starwars.value run function starwars:entity/blaster_bolt/kill

scoreboard players set #index starwars.value 0
function starwars:entity/blaster_bolt/move_ray

#tp ^ ^ ^2.0