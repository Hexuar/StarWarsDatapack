scoreboard players add @s starwars.shoot_time 1
execute if score @s starwars.shoot_time >= #MAX_SHOOT_TIME starwars.const run function starwars:entity/blaster_bolt/kill

scoreboard players set #index starwars.value 0
function starwars:entity/blaster_bolt/move_ray

execute if entity @s[tag=starwars.lightning_bolt] run function starwars:entity/blaster_bolt/change_direction {r:15}