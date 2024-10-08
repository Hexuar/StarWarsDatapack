loot spawn ~ ~ ~ loot starwars:item/lightsaber

# Calculate custom model data
execute store result score #CustomModelData starwars.value run data get entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_model_data
$scoreboard players add #CustomModelData starwars.value $(hilt)0

# Set custom model data
execute store result entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_model_data int 1 run scoreboard players get #CustomModelData starwars.value

# Set color
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_data.starwars.color set value $(color)