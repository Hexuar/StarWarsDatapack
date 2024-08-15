# Item
function starwarspack:item/tick

# Entity
execute at @a as @e[tag=starwarspack.entity,distance=..16] at @s run function starwarspack:entity/tick

# WASD
execute as @a if predicate starwarspack:is_driving run function starwarspack:wasd/get_input