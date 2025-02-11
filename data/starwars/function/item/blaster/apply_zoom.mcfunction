# Effect
effect give @s slowness 1 20 true

# Model
execute store result score #customModelData starwars.value run data get entity @s SelectedItem.components.minecraft:custom_data.starwars.custom_model_data
scoreboard players add #customModelData starwars.value 1

execute store result storage starwars:input custom_model_data int 1 run scoreboard players get #customModelData starwars.value
function starwars:macros/set_mainhand_cmd with storage starwars:input