# Loot
$execute store result score #silk_touch starwars.value if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{id:"$(block)"}}]
$execute if score #silk_touch starwars.value matches 0 run loot spawn ~ ~ ~ loot $(loot_table)
$execute if score #silk_touch starwars.value matches 1 run loot spawn ~ ~ ~ loot $(silk_loot_table)

kill @e[type=item,sort=furthest,limit=1,distance=..0.5]

# Experience
$data modify storage starwars:input xp set value $(xp)
execute if score #silk_touch starwars.value matches 0 if entity @e[type=item,distance=..0.5] run function starwars:block/xp/spawn with storage starwars:input xp

kill @s