execute if score @s starwars.hyperspace_cooldown matches 1.. run return fail
execute unless entity @e[type=marker,tag=starwars.planet,distance=0..] run return fail

scoreboard players set @s starwars.hyperspace_cooldown -80

$data modify entity @s item.components."minecraft:custom_data".starwars.dimension set value "$(dimension)"