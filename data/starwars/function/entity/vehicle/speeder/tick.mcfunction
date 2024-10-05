function starwars:entity/get_id

# Teleport model
execute at @n[type=mule,tag=starwars.current] run tp @s ~ ~ ~ ~ 0

# When killed
execute unless entity @n[type=mule,tag=starwars.current] run function starwars:entity/vehicle/speeder/kill

tag @e[tag=starwars.current] remove starwars.current