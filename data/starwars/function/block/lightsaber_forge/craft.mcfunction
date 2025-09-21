loot insert ~ ~ ~ loot starwars:items/lightsaber


# Set hilt
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data" set value {floats:[-1,-1,-1,-1]}
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[0] set from block ~ ~ ~ Items[{Slot:14b}].components."minecraft:custom_model_data".floats[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[1] set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_model_data".floats[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[2] set from block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_model_data".floats[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[3] set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_model_data".floats[0]

data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".flags set value [0b, 0b]
execute if score #has_ingredients starwars.value matches 2 run data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".flags[1] set value 1b

# Set color
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:dyed_color" set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:dyed_color"