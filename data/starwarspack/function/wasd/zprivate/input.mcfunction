scoreboard players set .w starwarspack.value 0
scoreboard players set .a starwarspack.value 0
scoreboard players set .s starwarspack.value 0
scoreboard players set .d starwarspack.value 0
scoreboard players set .dir starwarspack.value 0
execute if score .z starwarspack.value matches 0 if score .x starwarspack.value matches 0 run scoreboard players set .dir starwarspack.value -999
execute unless score .dir starwarspack.value matches -999 run function starwarspack:wasd/zprivate/calc_range
#execute if score #in starwarspack.value matches 1 run function starwarspack:wasd/zprivate/apply_tags
execute as @n[type=area_effect_cloud,tag=starwarspack.seat] run function starwarspack:wasd/zprivate/apply_tags