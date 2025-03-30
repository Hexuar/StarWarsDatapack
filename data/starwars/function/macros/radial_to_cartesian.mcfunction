$execute positioned 0.0 0.0 0.0 rotated $(phi) $(theta) run summon marker ^ ^ ^$(r) {Tags:["starwars.temp"]}

execute store result storage starwars:input x int 1 run data get entity @n[type=marker,tag=starwars.temp] Pos[0]
execute store result storage starwars:input y int 1 run data get entity @n[type=marker,tag=starwars.temp] Pos[1]
execute store result storage starwars:input z int 1 run data get entity @n[type=marker,tag=starwars.temp] Pos[2]

kill @n[type=marker,tag=starwars.temp]