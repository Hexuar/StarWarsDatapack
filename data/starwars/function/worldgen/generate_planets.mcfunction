tellraw @a {"text":"[Star Wars] Generating planets...","color":"gray"}

kill @e[type=marker,tag=starwars.planet]

execute in starwars:overworld_space run function starwars:worldgen/planet/generate {planet:"overworld", dimension:"minecraft:overworld"}
execute in starwars:dagobah_space run function starwars:worldgen/planet/generate {planet:"dagobah", dimension:"starwars:dagobah"}
execute in starwars:endor_space run function starwars:worldgen/planet/generate {planet:"endor", dimension:"starwars:endor"}
execute in starwars:geonosis_space run function starwars:worldgen/planet/generate {planet:"geonosis", dimension:"starwars:geonosis"}
execute in starwars:hoth_space run function starwars:worldgen/planet/generate {planet:"hoth", dimension:"starwars:hoth"}
execute in starwars:ilum_space run function starwars:worldgen/planet/generate {planet:"ilum", dimension:"starwars:ilum"}
execute in starwars:mustafar_space run function starwars:worldgen/planet/generate {planet:"mustafar", dimension:"starwars:mustafar"}
execute in starwars:tatooine_space run function starwars:worldgen/planet/generate {planet:"tatooine", dimension:"starwars:tatooine"}

tellraw @a {"text":"[Star Wars] Planet generation finished!","color":"gray"}