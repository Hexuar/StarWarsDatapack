# Item
function starwarspack:item/tick

# Entity
execute at @a as @e[tag=starwarspack.entity,distance=..16] at @s run function starwarspack:entity/tick

# Block
execute as @e[type=item_frame,tag=starwarspack.place_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function starwarspack:block/place with entity @s Item.components."minecraft:custom_data"
execute as @e[type=item_display,tag=starwarspack.block] at @s run function starwarspack:block/tick with entity @s item.components."minecraft:custom_data"

# WASD
execute as @a if predicate starwarspack:is_driving run function starwarspack:wasd/get_input