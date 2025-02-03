tellraw @a {"text":"[Star Wars] Generating planets...","color":"gray"}

kill @e[type=marker,tag=starwars.planet]

execute in starwars:overworld_space run function starwars:worldgen/planet/generate {dimension:"minecraft:overworld"}
execute in starwars:dagobah_space run function starwars:worldgen/planet/generate {dimension:"starwars:dagobah"}
execute in starwars:endor_space run function starwars:worldgen/planet/generate {dimension:"starwars:endor"}
execute in starwars:geonosis_space run function starwars:worldgen/planet/generate {dimension:"starwars:geonosis"}
execute in starwars:hoth_space run function starwars:worldgen/planet/generate {dimension:"starwars:hoth"}
execute in starwars:ilum_space run function starwars:worldgen/planet/generate {dimension:"starwars:ilum"}
execute in starwars:mustafar_space run function starwars:worldgen/planet/generate {dimension:"starwars:mustafar"}
execute in starwars:tatooine_space run function starwars:worldgen/planet/generate {dimension:"starwars:tatooine"}

tellraw @a {"text":"[Star Wars] Planet generation finished!","color":"gray"}