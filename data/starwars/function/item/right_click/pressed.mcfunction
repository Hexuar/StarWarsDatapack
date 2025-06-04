advancement revoke @s only starwars:right_click/pressed

# Scroll using
execute if score @s starwars.force_stamina matches 1.. if predicate starwars:holding/scroll/force_heal run function starwars:force_power/force_heal

# Return item
execute if entity @s[gamemode=!creative] run summon item ~ ~ ~ {Tags:["starwars.new"],Item:{id:"minecraft:stone"}}
data modify entity @n[type=item,tag=starwars.new,distance=..1] Item set from entity @s SelectedItem
data modify entity @n[type=item,tag=starwars.new,distance=..1] Item.count set value 1