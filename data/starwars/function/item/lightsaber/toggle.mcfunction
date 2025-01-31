# Get Data
execute store result score #lit starwars.value run data get entity @s SelectedItem.components.minecraft:custom_data.starwars.lit

# Toggle Lit
scoreboard players remove #lit starwars.value 1
scoreboard players operation #lit starwars.value *= #-1 starwars.const

# Sound
execute if score #lit starwars.value matches 1 run playsound starwars:lightsaber_on player @a ~ ~ ~
execute if score #lit starwars.value matches 0 run playsound starwars:lightsaber_off player @a ~ ~ ~

# Store in storage
execute store result storage starwars:input lit byte 1 run scoreboard players get #lit starwars.value

# Modify Item
function starwars:item/lightsaber/apply_data with storage starwars:input