function starwarspack:entity/get_id

execute as @n[type=area_effect_cloud,tag=starwarspack.current] run function starwarspack:entity/vehicle/speeder/update_model_position
data modify entity @n[type=armor_stand,tag=starwarspack.current] Rotation set from entity @s Rotation

tag @e[tag=starwarspack.current] remove starwarspack.current