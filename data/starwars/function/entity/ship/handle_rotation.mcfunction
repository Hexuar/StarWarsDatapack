scoreboard players set #rx starwars.value 0
scoreboard players set #ry starwars.value 0

$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/forward] run scoreboard players remove #ry starwars.value $(rotational_speed)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/left] run scoreboard players remove #rx starwars.value $(rotational_speed)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/backward] run scoreboard players add #ry starwars.value $(rotational_speed)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/right] run scoreboard players add #rx starwars.value $(rotational_speed)
execute unless entity @p[distance=..16,predicate=starwars:is_driving] if block ~ ~-3 ~ #air unless score @s starwars.ship_speed matches 0 run scoreboard players add #ry starwars.value 1

execute store result storage starwars:input rx int 1 run scoreboard players get #rx starwars.value
execute store result storage starwars:input ry int 1 run scoreboard players get #ry starwars.value
function starwars:macros/rotate with storage starwars:input

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