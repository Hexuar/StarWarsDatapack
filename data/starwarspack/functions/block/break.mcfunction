# Loot
$loot spawn ~ ~ ~ loot $(loot_table)

# Kill Item
kill @e[type=item,sort=furthest,limit=1,distance=..0.5]

# Experience
$data modify storage starwarspack:input xp set value $(xp)
execute if entity @e[type=item,distance=..0.5] run function starwarspack:block/xp/spawn with storage starwarspack:input xp


kill @s