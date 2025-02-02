# Get Data
execute store result score #lit starwars.value run data get entity @s SelectedItem.components.minecraft:custom_data.starwars.lit

# Toggle Lit
scoreboard players remove #lit starwars.value 1
scoreboard players operation #lit starwars.value *= #-1 starwars.const

# Sound
execute if score #lit starwars.value matches 1 run playsound starwars:lightsaber_on player @a ~ ~ ~
execute if score #lit starwars.value matches 0 run playsound starwars:lightsaber_off player @a ~ ~ ~

# Attack damage
execute store result score #attack_damage starwars.value run data get entity @s SelectedItem.components.minecraft:custom_data.starwars.attack_damage
scoreboard players operation #attack_damage starwars.value *= #lit starwars.value

# Store in storage
execute store result storage starwars:input lit byte 1 run scoreboard players get #lit starwars.value
execute store result storage starwars:input attack_damage byte 1 run scoreboard players get #attack_damage starwars.value
execute store result storage starwars:input attack_speed byte 1 run data get entity @s SelectedItem.components.minecraft:custom_data.starwars.attack_speed

# Modify Item
function starwars:item/lightsaber/apply_data with storage starwars:input