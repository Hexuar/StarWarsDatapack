execute store result score #lit starwarspack.value run data get entity @s SelectedItem.tag.starwarspack.lit
execute store result score #color starwarspack.value run data get entity @s SelectedItem.tag.starwarspack.color
execute store result score #CustomModelData starwarspack.value run data get entity @s SelectedItem.tag.CustomModelData

# Toggle Lit
scoreboard players remove #lit starwarspack.value 1
scoreboard players operation #lit starwarspack.value *= #-1 starwarspack.value

# Set CustomModelData
execute if score #lit starwarspack.value matches 1 run scoreboard players operation #CustomModelData starwarspack.value += #color starwarspack.value
execute if score #lit starwarspack.value matches 0 run scoreboard players operation #CustomModelData starwarspack.value -= #color starwarspack.value

# Sound
execute if score #lit starwarspack.value matches 1 run playsound starwarspack:lightsaber_on player @a ~ ~ ~
execute if score #lit starwarspack.value matches 0 run playsound starwarspack:lightsaber_off player @a ~ ~ ~

# Store in storage
execute store result storage starwarspack:input lit byte 1 run scoreboard players get #lit starwarspack.value
execute store result storage starwarspack:input CustomModelData int 1 run scoreboard players get #CustomModelData starwarspack.value

# Modify Item
item modify entity @s weapon.mainhand starwarspack:toggle_lightsaber