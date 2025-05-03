$loot spawn ~ ~ ~ loot $(loot_table)

execute if entity @s[tag=starwars.holoprojector] positioned ~ ~1 ~ run function starwars:block/holoprojector/kill_blueprint

kill @e[type=item,sort=furthest,limit=1,distance=..0.5,nbt={Item:{components:{"minecraft:custom_data":{starwars:{gui:true}}}}}]
kill @s