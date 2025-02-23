execute as @e[type=!marker,dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] run function starwars:entity/blaster_bolt/hit_entity with entity @e[type=marker,tag=starwars.blaster_bolt,sort=nearest,limit=1] data

execute unless block ~ ~ ~ #starwars:transparent run function starwars:entity/blaster_bolt/hit with entity @e[type=marker,tag=starwars.blaster_bolt,sort=nearest,limit=1] data

$particle dust{color:$(color),scale:$(scale)} ~ ~ ~ 0 0 0 0 1 force