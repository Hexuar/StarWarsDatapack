loot insert ~ ~ ~ loot starwars:item/lightsaber

item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.1
item replace block ~ ~ ~ container.1 with air

# Set hilt
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data" set value {strings:["","","",""]}
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".strings[0] set from block ~ ~ ~ Items[{Slot:14b}].components."minecraft:custom_model_data".strings[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".strings[1] set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_model_data".strings[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".strings[2] set from block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_model_data".strings[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".strings[3] set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_model_data".strings[0]

# Set color
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:dyed_color" set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:dyed_color"