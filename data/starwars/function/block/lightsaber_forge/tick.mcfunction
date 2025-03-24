item replace block ~ ~ ~ container.0 with command_block[item_name='""',item_model="starwars:gui/lightsaber_forge",custom_data={starwars:{gui:true}}]
item replace block ~ ~ ~ container.16 with air

execute if items block ~ ~ ~ container.10 *[custom_data={starwars:{pommel_cap:true}}] if items block ~ ~ ~ container.11 *[custom_data={starwars:{lower_sleeve:true}}] if items block ~ ~ ~ container.12 *[custom_data={starwars:{kyber_crystal:true}}] if items block ~ ~ ~ container.13 *[custom_data={starwars:{upper_sleeve:true}}] if items block ~ ~ ~ container.14 *[custom_data={starwars:{emitter:true}}] run function starwars:block/lightsaber_forge/craft

clear @a[distance=..16] *[custom_data={starwars:{gui:true}}]
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{starwars:{gui:true}}}}}]