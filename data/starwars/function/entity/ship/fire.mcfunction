advancement revoke @s only starwars:ship/right_click

execute on vehicle on vehicle run function starwars:entity/get_id

execute as @n[type=minecraft:item_display,tag=starwars.current,tag=starwars.ship,tag=starwars.entity_root] at @s run function starwars:entity/ship/fire_ship with entity @s data.starwars