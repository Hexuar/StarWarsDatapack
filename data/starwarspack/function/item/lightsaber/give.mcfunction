loot spawn ~ ~ ~ loot starwarspack:item/lightsaber

# Calculate custom model data
execute store result score #CustomModelData starwarspack.value run data get entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_model_data
$scoreboard players add #CustomModelData starwarspack.value $(hilt)0

# Set custom model data
execute store result entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_model_data int 1 run scoreboard players get #CustomModelData starwarspack.value

# Set color
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_data.starwarspack.color set value $(color)