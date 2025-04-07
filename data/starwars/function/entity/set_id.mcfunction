scoreboard players add #counter starwars.id 1
scoreboard players operation @e[tag=starwars.new,distance=..16] starwars.id = #counter starwars.id
tag @e[tag=starwars.new] remove starwars.new