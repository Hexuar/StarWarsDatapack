
# Returns inserted items
function starwars:entity/ship_storage/return_item {slot:0}
function starwars:entity/ship_storage/return_item {slot:1}
function starwars:entity/ship_storage/return_item {slot:2}
function starwars:entity/ship_storage/return_item {slot:3}
function starwars:entity/ship_storage/return_item {slot:9}
execute unless entity @s[tag=starwars.bomber_ship_storage] run function starwars:entity/ship_storage/return_item {slot:12}
function starwars:entity/ship_storage/return_item {slot:18}
function starwars:entity/ship_storage/return_item {slot:19}
function starwars:entity/ship_storage/return_item {slot:20}
function starwars:entity/ship_storage/return_item {slot:21}
execute if entity @s[tag=starwars.bomber_ship_storage] run function starwars:entity/ship_storage/return_item {slot:4}
execute if entity @s[tag=starwars.bomber_ship_storage] run function starwars:entity/ship_storage/return_item {slot:13}
execute if entity @s[tag=starwars.bomber_ship_storage] run function starwars:entity/ship_storage/return_item {slot:22}


# Spawns ui item
execute unless entity @s[tag=starwars.bomber_ship_storage] run item replace entity @s container.0 with command_block[item_name='',item_model="starwars:gui/ship_storage",custom_data={starwars:{gui:true}}]
execute if entity @s[tag=starwars.bomber_ship_storage] run item replace entity @s container.0 with command_block[item_name='',item_model="starwars:gui/bomber_ship_storage",custom_data={starwars:{gui:true}}]


# Spawns empty item slots
item replace entity @s container.1 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace entity @s container.2 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace entity @s container.3 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace entity @s container.9 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
execute unless entity @s[tag=starwars.bomber_ship_storage] run item replace entity @s container.12 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace entity @s container.18 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace entity @s container.19 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace entity @s container.20 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace entity @s container.21 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
execute if entity @s[tag=starwars.bomber_ship_storage] run item replace entity @s container.4 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
execute if entity @s[tag=starwars.bomber_ship_storage] run item replace entity @s container.13 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
execute if entity @s[tag=starwars.bomber_ship_storage] run item replace entity @s container.22 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]

# Removes ui items
clear @a[distance=..16] *[custom_data={starwars:{gui:true}}]
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{starwars:{gui:true}}}}}]