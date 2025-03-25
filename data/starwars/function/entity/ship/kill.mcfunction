function starwars:entity/get_id

execute as @e[type=area_effect_cloud,tag=starwars.seat,tag=starwars.current] run function starwars:entity/seat/kill
kill @e[tag=starwars.current]

summon tnt