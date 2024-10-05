function starwars:entity/get_id

# Rotation
$execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.w,distance=..16] run tp @s ~ ~ ~ ~ ~-$(rotational_speed)
$execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.a,distance=..16] run tp @s ~ ~ ~ ~-$(rotational_speed) ~
$execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.s,distance=..16] run tp @s ~ ~ ~ ~ ~$(rotational_speed)
$execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.d,distance=..16] run tp @s ~ ~ ~ ~$(rotational_speed) ~

# Model Rotation
execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=!wasd.a,tag=!wasd.d,distance=..16] run data modify entity @s transformation.left_rotation[2] set value 0.0f
execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.a,distance=..16] run data modify entity @s transformation.left_rotation[2] set value -0.4f
execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.d,distance=..16] run data modify entity @s transformation.left_rotation[2] set value 0.4f

# Interpolation
execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.a,distance=..16] run data modify entity @s start_interpolation set value 0
execute if entity @n[type=area_effect_cloud,tag=starwars.current,tag=starwars.ship.main_seat,tag=wasd.d,distance=..16] run data modify entity @s start_interpolation set value 0


$tp @e[tag=starwars.current,distance=..16] ^ ^ ^$(max_speed)
execute as @n[type=area_effect_cloud,tag=starwars.current,distance=..16] run function starwars:entity/update_aec

tag @e[tag=starwars.current] remove starwars.current