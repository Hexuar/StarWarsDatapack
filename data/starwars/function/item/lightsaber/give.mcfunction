loot spawn ~ ~ ~ loot starwars:item/lightsaber

# Set hilt
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_model_data.floats set value [$(hilt)]

# Set color
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:dyed_color set value $(color)
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_data.starwars.color set value $(color)