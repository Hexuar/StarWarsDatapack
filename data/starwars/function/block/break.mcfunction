$loot spawn ~ ~ ~ loot $(loot_table)

kill @e[type=item,sort=furthest,limit=1,distance=..0.5,nbt={Item:{components:{"minecraft:custom_data":{starwars:{gui:true}}}}}]
kill @s