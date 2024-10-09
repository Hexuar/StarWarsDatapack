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

# Model Rotation
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=!starwars:input/left,predicate=!starwars:input/right] run data modify entity @s transformation.left_rotation[2] set value 0.0f
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/left] run data modify entity @s transformation.left_rotation[2] set value -0.4f
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/right] run data modify entity @s transformation.left_rotation[2] set value 0.4f

# Interpolation
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/left] run data modify entity @s start_interpolation set value 0
execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/right] run data modify entity @s start_interpolation set value 0

# Movement
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/jump] if score @s starwars.ship_speed matches ..$(max_speed) run scoreboard players add @s starwars.ship_speed $(acceleration)
$execute if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/sprint] if score @s starwars.ship_speed matches $(acceleration).. run scoreboard players remove @s starwars.ship_speed $(acceleration)
execute store result storage starwars:input speed float 0.01 run scoreboard players get @s starwars.ship_speed
function starwars:entity/ship/move with storage starwars:input

# Update AEC
execute as @n[type=area_effect_cloud,tag=starwars.current,distance=..16] run function starwars:entity/update_aec

tag @e[tag=starwars.current] remove starwars.current