execute unless block ~ ~ ~ #air run function starwars:entity/ship/kill


function starwars:entity/get_id

# Rotation
scoreboard players set #rx starwars.value 0
scoreboard players set #ry starwars.value 0
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/forward] run scoreboard players remove #ry starwars.value $(rotational_speed)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/left] run scoreboard players remove #rx starwars.value $(rotational_speed)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/backward] run scoreboard players add #ry starwars.value $(rotational_speed)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/right] run scoreboard players add #rx starwars.value $(rotational_speed)
execute store result storage starwars:input rx int 1 run scoreboard players get #rx starwars.value
execute store result storage starwars:input ry int 1 run scoreboard players get #ry starwars.value
function starwars:entity/ship/rotate with storage starwars:input

# Model Rotation Amount (calculated from pitch)
execute store result score #pitch starwars.value run data get entity @s Rotation[1] 10000
execute unless score #pitch starwars.value matches 0.. run scoreboard players operation #pitch starwars.value *= #-1 starwars.const
scoreboard players remove #pitch starwars.value 900000
scoreboard players operation #pitch starwars.value /= #90 starwars.const
scoreboard players operation #pitch starwars.value *= #4 starwars.const

# Model Rotation
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=!starwars:input/left,predicate=!starwars:input/right] run data modify entity @s transformation.left_rotation[2] set value 0.0f
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/left] store result entity @s transformation.left_rotation[2] float 0.00001 run scoreboard players get #pitch starwars.value
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/right] store result entity @s transformation.left_rotation[2] float -0.00001 run scoreboard players get #pitch starwars.value

# Interpolation
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/left] run data modify entity @s start_interpolation set value 0
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/right] run data modify entity @s start_interpolation set value 0

# Movement
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/jump] if score @s starwars.ship_speed matches ..$(max_speed) run scoreboard players add @s starwars.ship_speed $(acceleration)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/sprint] if score @s starwars.ship_speed matches $(acceleration).. run scoreboard players remove @s starwars.ship_speed $(acceleration)
execute store result storage starwars:input speed float 0.01 run scoreboard players get @s starwars.ship_speed
execute if entity @p[distance=..16,predicate=starwars:is_driving] run function starwars:entity/ship/move with storage starwars:input

# Update AEC
execute as @n[type=area_effect_cloud,tag=starwars.current,distance=..16] run function starwars:entity/update_aec

tag @e[tag=starwars.current] remove starwars.current