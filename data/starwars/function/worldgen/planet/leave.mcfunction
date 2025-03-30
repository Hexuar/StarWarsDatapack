# Check Elevation
execute store result score #y starwars.value run data get entity @s Pos[1]
execute if score #y starwars.value matches ..400 run return fail

# Teleport
execute if dimension minecraft:overworld in starwars:overworld_space run function starwars:worldgen/planet/travel {x:0.0, y:100.0, z:0.0}
$execute unless dimension minecraft:overworld in $(Dimension)_space run function starwars:worldgen/planet/travel {x:0.0, y:100.0, z:0.0}