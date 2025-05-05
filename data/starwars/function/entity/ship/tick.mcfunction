## Collide
execute unless block ~ ~ ~ #air run function starwars:entity/ship/crash



## Hyperspace
execute if score @s starwars.hyperspace_cooldown matches ..-1 run function starwars:entity/ship/hyperspace/tick
execute if score @s starwars.hyperspace_cooldown matches 1.. run scoreboard players remove @s starwars.hyperspace_cooldown 1



## Assemble
function starwars:entity/get_id


# Rotation
$execute unless score @s starwars.hyperspace_cooldown matches ..-1 run function starwars:entity/ship/handle_rotation {rotational_speed:$(rotational_speed)}


# Movement
execute unless entity @p[distance=..16,predicate=starwars:is_driving] if score @s starwars.ship_speed matches 0.. run scoreboard players remove @s starwars.ship_speed 1
$execute unless score @s starwars.hyperspace_cooldown matches ..-1 if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/jump] if score @s starwars.ship_speed matches ..$(max_speed) run scoreboard players add @s starwars.ship_speed $(acceleration)
$execute unless score @s starwars.hyperspace_cooldown matches ..-1 if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/sprint] if score @s starwars.ship_speed matches $(acceleration).. run scoreboard players remove @s starwars.ship_speed $(acceleration)
execute unless score @s starwars.ship_speed matches 0.. run scoreboard players set @s starwars.ship_speed 0

scoreboard players set #gravity starwars.value 0
execute if block ~ ~-3 ~ #air if score @s starwars.ship_speed matches 0 run scoreboard players set #gravity starwars.value 40
execute if block ~ ~-3 ~ #air unless score @s starwars.ship_speed matches 0 unless entity @p[distance=..16,predicate=starwars:is_driving] run scoreboard players set #gravity starwars.value 40

execute store result storage starwars:input speed float 0.01 run scoreboard players get @s starwars.ship_speed
execute store result storage starwars:input gravity float 0.01 run scoreboard players get #gravity starwars.value
execute unless score @s starwars.ship_speed matches 0 run function starwars:entity/ship/move with storage starwars:input


# Update AEC
execute as @n[type=area_effect_cloud,tag=starwars.current,distance=..16] run function starwars:entity/update_aec

tag @e[tag=starwars.current] remove starwars.current