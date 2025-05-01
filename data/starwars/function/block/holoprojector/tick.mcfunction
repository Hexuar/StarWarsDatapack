# Returns inserted items
function starwars:block/return_item {slot:0}
function starwars:block/return_item {slot:1}
function starwars:block/return_item {slot:2}
function starwars:block/return_item {slot:3}
function starwars:block/return_item {slot:5}
function starwars:block/return_item {slot:6}
function starwars:block/return_item {slot:7}
function starwars:block/return_item {slot:8}


# Spawns ui item
item replace block ~ ~ ~ container.0 with command_block[item_name='',item_model="starwars:gui/holoprojector",custom_data={starwars:{gui:true}}]


# Spawns empty item slots
item replace block ~ ~ ~ container.1 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.2 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.3 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.5 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.6 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.7 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.8 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]


# Spawns blueprint
execute if items block ~ ~ ~ container.4 *[custom_data~{starwars:{blueprint:true}}] positioned ~ ~1 ~ unless entity @n[type=marker,tag=starwars.hologram,distance=..1] run function starwars:block/holoprojector/summon_blueprint with block ~ ~-1 ~ Items[{Slot:4b}].components."minecraft:custom_data".starwars

execute unless items block ~ ~ ~ container.4 *[custom_data~{starwars:{blueprint:true}}] positioned ~ ~1 ~ if entity @n[type=marker,tag=starwars.hologram,distance=..1] run function starwars:block/holoprojector/kill_blueprint