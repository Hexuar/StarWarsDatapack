execute store result score #y starwars.value run data get entity @s Pos[1]
execute if score #y starwars.value matches ..400 run return fail

execute if dimension minecraft:overworld in starwars:overworld_space run tp 0 100 0
execute if dimension minecraft:overworld run return 1

function starwars:worldgen/planet/travel with entity @s