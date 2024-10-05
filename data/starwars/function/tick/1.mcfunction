# Item
function starwars:item/tick

# Blaster Bolt
execute as @e[type=marker,tag=starwars.blaster_bolt] at @s run function starwars:entity/blaster_bolt/tick

# Entity
execute at @a as @e[tag=starwars.entity,distance=..16] at @s run function starwars:entity/tick

# Block
execute as @e[type=item_frame,tag=starwars.place_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function starwars:block/place with entity @s Item.components."minecraft:custom_data"
execute at @a as @e[type=item_display,tag=starwars.block,distance=..16] at @s run function starwars:block/tick with entity @s item.components."minecraft:custom_data"

# Dimension Block
execute if score #nether_enabled starwars.value matches 0 at @a run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:nether_portal
execute if score #end_enabled starwars.value matches 0 at @a run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:end_portal

# WASD
execute as @a if predicate starwars:is_driving run function starwars:wasd/get_input