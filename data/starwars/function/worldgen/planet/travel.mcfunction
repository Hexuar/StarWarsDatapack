forceload add 0 0

# Tag
execute on vehicle run tag @s add starwars.to_be_mounted

# Teleport
$execute on vehicle on vehicle positioned 0.0 $(y) 0.0 run function starwars:entity/ship/teleport
$tp 0.0 $(y) 0.0

# Reseat
ride @s mount @n[tag=starwars.to_be_mounted]
tag @n[tag=starwars.to_be_mounted] remove starwars.to_be_mounted

forceload remove 0 0