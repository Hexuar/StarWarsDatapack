function starwars:entity/get_id

# Teleport model
execute at @n[type=mule,tag=starwars.current] run tp @s ~ ~ ~ ~ 0

# When killed
execute unless entity @n[type=mule,tag=starwars.current] run function starwars:entity/vehicle/speeder/kill

# Remove NoAI when ridden
scoreboard players set #hasPassenger starwars.value 0
execute store result score #NoAI starwars.value run data get entity @n[type=mule,tag=starwars.current] NoAI
execute as @n[type=mule,tag=starwars.current] on passengers run scoreboard players set #hasPassenger starwars.value 1

execute if score #hasPassenger starwars.value matches 0 unless score #NoAI starwars.value matches 1 run data modify entity @n[type=mule,tag=starwars.current] NoAI set value 1b
execute if score #hasPassenger starwars.value matches 1 if score #NoAI starwars.value matches 1 run data modify entity @n[type=mule,tag=starwars.current] NoAI set value 0b

tag @e[tag=starwars.current] remove starwars.current