# Returns inserted items
function starwars:block/return_item {slot:0}
function starwars:block/return_item {slot:1}
function starwars:block/return_item {slot:2}
function starwars:block/return_item {slot:3}
function starwars:block/return_item {slot:4}
function starwars:block/return_item {slot:5}
function starwars:block/return_item {slot:6}
function starwars:block/return_item {slot:7}
function starwars:block/return_item {slot:8}
function starwars:block/return_item {slot:9}
function starwars:block/return_item {slot:15}
function starwars:block/return_item {slot:17}
function starwars:block/return_item {slot:18}
function starwars:block/return_item {slot:19}
function starwars:block/return_item {slot:20}
function starwars:block/return_item {slot:21}
function starwars:block/return_item {slot:22}
function starwars:block/return_item {slot:23}
function starwars:block/return_item {slot:24}
function starwars:block/return_item {slot:25}
function starwars:block/return_item {slot:26}


# Spawns ui item
item replace block ~ ~ ~ container.0 with command_block[item_name='',item_model="starwars:gui/lightsaber_forge",custom_data={starwars:{gui:true}}]


# Spawns empty item slots
item replace block ~ ~ ~ container.3 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.6 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.7 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.8 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.9 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.15 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.17 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.18 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.21 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.24 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.25 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.26 with command_block[item_name='',item_model="minecraft:air",custom_data={starwars:{gui:true}}]


# Checks if buttons have been pressed
execute unless items block ~ ~ ~ container.1 * run function starwars:block/lightsaber_forge/button_pressed {index:10, operation:0}
execute unless items block ~ ~ ~ container.2 * run function starwars:block/lightsaber_forge/button_pressed {index:11, operation:0}
execute unless items block ~ ~ ~ container.4 * run function starwars:block/lightsaber_forge/button_pressed {index:13, operation:0}
execute unless items block ~ ~ ~ container.5 * run function starwars:block/lightsaber_forge/button_pressed {index:14, operation:0}
execute unless items block ~ ~ ~ container.19 * run function starwars:block/lightsaber_forge/button_pressed {index:10, operation:1}
execute unless items block ~ ~ ~ container.20 * run function starwars:block/lightsaber_forge/button_pressed {index:11, operation:1}
execute unless items block ~ ~ ~ container.22 * run function starwars:block/lightsaber_forge/button_pressed {index:13, operation:1}
execute unless items block ~ ~ ~ container.23 * run function starwars:block/lightsaber_forge/button_pressed {index:14, operation:1}


# Spawns buttons
item replace block ~ ~ ~ container.1 with command_block[item_name={"translate": "gui.starwars.button.next"},item_model="starwars:gui/button_up",rarity="common",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.2 with command_block[item_name={"translate": "gui.starwars.button.next"},item_model="starwars:gui/button_up",rarity="common",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.4 with command_block[item_name={"translate": "gui.starwars.button.next"},item_model="starwars:gui/button_up",rarity="common",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.5 with command_block[item_name={"translate": "gui.starwars.button.next"},item_model="starwars:gui/button_up",rarity="common",custom_data={starwars:{gui:true}}]

item replace block ~ ~ ~ container.19 with command_block[item_name={"translate": "gui.starwars.button.previous"},item_model="starwars:gui/button_down",rarity="common",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.20 with command_block[item_name={"translate": "gui.starwars.button.previous"},item_model="starwars:gui/button_down",rarity="common",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.22 with command_block[item_name={"translate": "gui.starwars.button.previous"},item_model="starwars:gui/button_down",rarity="common",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.23 with command_block[item_name={"translate": "gui.starwars.button.previous"},item_model="starwars:gui/button_down",rarity="common",custom_data={starwars:{gui:true}}]


# Clears ingredients if item has been taken
execute if score #has_ingredients starwars.value matches 1 unless items block ~ ~ ~ container.16 *[custom_data~{starwars:{lightsaber:true}}] run function starwars:block/lightsaber_forge/clear


# Checks if correct ingredients are in place
scoreboard players set #has_ingredients starwars.value 0
execute if items block ~ ~ ~ container.10 *[custom_data~{starwars:{pommel_cap:true}},count=1] if items block ~ ~ ~ container.11 *[custom_data~{starwars:{lower_sleeve:true}},count=1] if items block ~ ~ ~ container.12 *[custom_data~{starwars:{kyber_crystal:true}},count=1] if items block ~ ~ ~ container.13 *[custom_data~{starwars:{upper_sleeve:true}},count=1] if items block ~ ~ ~ container.14 *[custom_data~{starwars:{emitter:true}},count=1] run scoreboard players set #has_ingredients starwars.value 1

execute unless items block ~ ~ ~ container.16 *[custom_data~{starwars:{lightsaber:true}}] run function starwars:block/return_item {slot:16}
item replace block ~ ~ ~ container.16 with air
execute if score #has_ingredients starwars.value matches 1 run function starwars:block/lightsaber_forge/craft