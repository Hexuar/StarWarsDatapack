function starwars:entity/get_id

# Tag
tag @e[type=pig,tag=starwars.current,distance=..32] add starwars.to_be_mounted

# Teleport
$execute positioned $(x) $(y) $(z) run function starwars:entity/ship/teleport
$execute as @e[type=pig,tag=starwars.current,distance=..32] on passengers run tp $(x) $(y) $(z)

# Reseat
execute as @a at @s run ride @s mount @n[tag=starwars.to_be_mounted,distance=..16]
execute as @a at @s run tag @n[tag=starwars.to_be_mounte,distance=..16] remove starwars.to_be_mounted