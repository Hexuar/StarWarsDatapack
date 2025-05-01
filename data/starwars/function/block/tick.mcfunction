$execute unless block ~ ~ ~ $(block) run function starwars:block/break with entity @s item.components."minecraft:custom_data"

execute if entity @s[tag=starwars.lightsaber_forge] run function starwars:block/lightsaber_forge/tick
execute if entity @s[tag=starwars.holoprojector] run function starwars:block/holoprojector/tick

# Removes ui items
clear @a[distance=..16] *[custom_data={starwars:{gui:true}}]
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{starwars:{gui:true}}}}}]