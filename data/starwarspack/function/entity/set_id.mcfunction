scoreboard players add #counter starwarspack.id 1
scoreboard players operation @e[tag=starwarspack.new,distance=..2] starwarspack.id = #counter starwarspack.id
tag @e[tag=starwarspack.new] remove starwarspack.new