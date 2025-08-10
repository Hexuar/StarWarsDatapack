loot spawn ~ ~ ~ loot starwars:items/lightsaber

# Set hilt
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_model_data.strings set value $(components)

# Set color
$data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:dyed_color set value $(color)