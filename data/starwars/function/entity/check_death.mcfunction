function starwars:entity/get_id

execute unless entity @e[tag=starwars.entity_root,sort=nearest,limit=1,distance=..16] run kill @s

tag @e[tag=starwars.current] remove starwars.current