function starwars:entity/get_id

# Tag
tag @e[type=pig,tag=starwars.current,distance=..32] add starwars.to_be_mounted

# Teleport
$execute positioned $(x) $(y) $(z) run function starwars:entity/ship/teleport
$execute as @e[type=pig,tag=starwars.current,distance=..32] on passengers run tp $(x) $(y) $(z)

# Reseat
schedule function starwars:worldgen/planet/reseat 3t