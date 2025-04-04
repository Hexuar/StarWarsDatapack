loot insert ~ ~ ~ loot starwars:item/lightsaber

item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.3
item replace block ~ ~ ~ container.3 with air

# Set hilt
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data" set value {floats:[-1,-1,-1,-1]}
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[0] set from block ~ ~ ~ Items[{Slot:14b}].components."minecraft:custom_model_data".floats[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[1] set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_model_data".floats[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[2] set from block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_model_data".floats[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[3] set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_model_data".floats[0]

# Set color
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:dyed_color" set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:dyed_color"