# Spawns ui item
item replace block ~ ~ ~ container.0 with command_block[item_name='""',item_model="starwars:gui/lightsaber_forge",custom_data={starwars:{gui:true}}]

execute if score #has_ingredients starwars.value matches 1 unless items block ~ ~ ~ container.16 * run function starwars:block/lightsaber_forge/clear

# Checks if correct ingredients are in place
scoreboard players set #has_ingredients starwars.value 0
execute if items block ~ ~ ~ container.10 *[custom_data={starwars:{pommel_cap:true}},count=1] if items block ~ ~ ~ container.11 *[custom_data={starwars:{lower_sleeve:true}},count=1] if items block ~ ~ ~ container.12 *[custom_data={starwars:{kyber_crystal:true}},count=1] if items block ~ ~ ~ container.13 *[custom_data={starwars:{upper_sleeve:true}},count=1] if items block ~ ~ ~ container.14 *[custom_data={starwars:{emitter:true}},count=1] run scoreboard players set #has_ingredients starwars.value 1

item replace block ~ ~ ~ container.16 with air
execute if score #has_ingredients starwars.value matches 1 run function starwars:block/lightsaber_forge/craft

# Removes ui item
clear @a[distance=..16] *[custom_data={starwars:{gui:true}}]
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{starwars:{gui:true}}}}}]