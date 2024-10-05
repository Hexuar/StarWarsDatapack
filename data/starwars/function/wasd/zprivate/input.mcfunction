scoreboard players set .w starwars.value 0
scoreboard players set .a starwars.value 0
scoreboard players set .s starwars.value 0
scoreboard players set .d starwars.value 0
scoreboard players set .dir starwars.value 0
execute if score .z starwars.value matches 0 if score .x starwars.value matches 0 run scoreboard players set .dir starwars.value -999
execute unless score .dir starwars.value matches -999 run function starwars:wasd/zprivate/calc_range
#execute if score #in starwars.value matches 1 run function starwars:wasd/zprivate/apply_tags
execute as @n[type=area_effect_cloud,tag=starwars.seat] run function starwars:wasd/zprivate/apply_tags