# Tag
execute on vehicle run tag @s add starwars.to_be_mounted

# Teleport
$execute on vehicle on vehicle positioned $(x) $(y) $(z) run function starwars:entity/ship/teleport
$tp $(x) $(y) $(z)

# Reseat
schedule function starwars:worldgen/planet/reseat 3t