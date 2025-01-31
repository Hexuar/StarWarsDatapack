loot spawn ~ ~ ~ loot starwars:item/lightsaber

# Set hilt
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_model_data.floats set value [0,$(hilt)]

# Set color
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:dyed_color set value $(color)