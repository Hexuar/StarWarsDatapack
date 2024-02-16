execute store result score #lit starwarspack.value run data get entity @s SelectedItem.tag.starwarspack.lit
execute store result score #CustomModelData starwarspack.value run data get entity @s SelectedItem.tag.CustomModelData

# Toggle Lit
scoreboard players remove #lit starwarspack.value 1
scoreboard players operation #lit starwarspack.value *= #-1 starwarspack.value


# Set CustomModelData
execute if score #lit starwarspack.value matches 1 run scoreboard players add #CustomModelData starwarspack.value 1
execute if score #lit starwarspack.value matches 0 run scoreboard players remove #CustomModelData starwarspack.value 1


# Store in storage
execute store result storage starwarspack:input lit byte 1 run scoreboard players get #lit starwarspack.value
execute store result storage starwarspack:input CustomModelData int 1 run scoreboard players get #CustomModelData starwarspack.value

# Modify Item
item modify entity @s weapon.mainhand starwarspack:toggle_lightsaber