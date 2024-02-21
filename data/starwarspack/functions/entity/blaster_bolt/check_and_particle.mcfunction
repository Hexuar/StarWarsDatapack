execute as @e[type=!marker,dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 as @s[dx=0,dy=0,dz=0] run function starwarspack:entity/blaster_bolt/hit with entity @e[type=marker,tag=starwarspack.blaster_bolt,sort=nearest,limit=1] data

execute unless block ~ ~ ~ #starwarspack:transparent run kill @s

$particle dust $(color) $(size) ~ ~ ~ 0 0 0 0 1 force