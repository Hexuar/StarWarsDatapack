# Loot
$execute store result score #silk_touch starwarspack.value if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{id:"$(block)"}}]
$execute if score #silk_touch starwarspack.value matches 0 run loot spawn ~ ~ ~ loot $(loot_table)
$execute if score #silk_touch starwarspack.value matches 1 run loot spawn ~ ~ ~ loot $(silk_loot_table)

# Kill Item
kill @e[type=item,sort=furthest,limit=1,distance=..0.5]

# Experience
$data modify storage starwarspack:input xp set value $(xp)
execute if score #silk_touch starwarspack.value matches 0 if entity @e[type=item,distance=..0.5] run function starwarspack:block/xp/spawn with storage starwarspack:input xp

kill @e[type=item_display,tag=starwarspack.quad,distance=..0.51,sort=nearest]
kill @s