loot spawn ~ ~ ~ loot starwarspack:items/lightsaber

execute store result score #CustomModelData starwarspack.value run data get entity @e[type=item,sort=nearest,limit=1] Item.tag.CustomModelData
$scoreboard players add #CustomModelData starwarspack.value $(hilt)0
execute store result entity @e[type=item,sort=nearest,limit=1] Item.tag.CustomModelData int 1 run scoreboard players get #CustomModelData starwarspack.value

$data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.starwarspack.color set value $(color)