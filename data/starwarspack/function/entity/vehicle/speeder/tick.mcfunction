function starwarspack:entity/get_id

# Teleport model
execute at @n[type=mule,tag=starwarspack.current] run tp @s ~ ~ ~ ~ 0

# When killed
execute unless entity @n[type=mule,tag=starwarspack.current] run function starwarspack:entity/vehicle/speeder/kill

tag @e[tag=starwarspack.current] remove starwarspack.current