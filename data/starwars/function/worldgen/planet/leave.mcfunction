# Check Elevation
execute store result score #y starwars.value run data get entity @s Pos[1]
execute if score #y starwars.value matches ..400 run return fail

# Teleport
execute if dimension minecraft:overworld in starwars:overworld_space run function starwars:worldgen/planet/travel {y:100}
$execute unless dimension minecraft:overworld in $(Dimension)_space run function starwars:worldgen/planet/travel {y:100}