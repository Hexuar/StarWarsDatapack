function starwars:entity/get_id

execute as @e[type=area_effect_cloud,tag=starwars.seat,tag=starwars.current] at @s run function starwars:entity/seat/kill
execute as @e[type=area_effect_cloud,tag=starwars.ship_storage,tag=starwars.current] at @s run function starwars:entity/ship_storage/kill
kill @e[tag=starwars.current]