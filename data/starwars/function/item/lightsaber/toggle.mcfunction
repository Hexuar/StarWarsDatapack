# Get Data
execute store result score #lit starwars.value run data get entity @s SelectedItem.components.minecraft:custom_data.starwars.lit
execute store result score #color starwars.value run data get entity @s SelectedItem.components.minecraft:custom_data.starwars.color
execute store result score #CustomModelData starwars.value run data get entity @s SelectedItem.components.minecraft:custom_model_data

# Toggle Lit
scoreboard players remove #lit starwars.value 1
scoreboard players operation #lit starwars.value *= #-1 starwars.const

# Set CustomModelData
execute if score #lit starwars.value matches 1 run scoreboard players operation #CustomModelData starwars.value += #color starwars.value
execute if score #lit starwars.value matches 0 run scoreboard players operation #CustomModelData starwars.value -= #color starwars.value

# Sound
execute if score #lit starwars.value matches 1 run playsound starwars:lightsaber_on player @a ~ ~ ~
execute if score #lit starwars.value matches 0 run playsound starwars:lightsaber_off player @a ~ ~ ~

# Store in storage
execute store result storage starwars:input lit byte 1 run scoreboard players get #lit starwars.value
execute store result storage starwars:input CustomModelData int 1 run scoreboard players get #CustomModelData starwars.value

# Modify Item
function starwars:item/lightsaber/apply_data with storage starwars:input