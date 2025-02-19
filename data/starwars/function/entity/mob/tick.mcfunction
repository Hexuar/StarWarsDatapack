function starwars:entity/get_id

tp @e[type=item_display,tag=starwars.current,sort=nearest,limit=1,distance=..16] ~ ~ ~ ~ 0

tag @e[tag=starwars.current] remove starwars.current