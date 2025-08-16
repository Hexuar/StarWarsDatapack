execute on vehicle run function starwars:entity/get_id
$execute as @n[tag=starwars.ship,tag=starwars.current] run function starwars:entity/ship/hyperspace/travel {dimension:"$(dimension)"}
tag @e remove starwars.current

scoreboard players reset @a starwars.travel_dagobah
scoreboard players reset @a starwars.travel_endor
scoreboard players reset @a starwars.travel_geonosis
scoreboard players reset @a starwars.travel_hoth
scoreboard players reset @a starwars.travel_ilum
scoreboard players reset @a starwars.travel_mustafar
scoreboard players reset @a starwars.travel_overworld
scoreboard players reset @a starwars.travel_tatooine