effect give @s slowness 1 20 true

execute store result score #customModelData starwarspack.value run data get entity @s SelectedItem.components.minecraft:custom_data.starwarspack.custom_model_data
scoreboard players add #customModelData starwarspack.value 1

execute store result storage starwarspack:input custom_model_data int 1 run scoreboard players get #customModelData starwarspack.value

function starwarspack:macros/set_mainhand_cmd with storage starwarspack:input