advancement revoke @s only starwars:ship/fire

execute on vehicle on vehicle run function starwars:entity/get_id

execute at @n[type=minecraft:item_display,tag=starwars.current,tag=starwars.ship.aethersprite,tag=starwars.entity_root] run function starwars:entity/ship/aethersprite/fire
execute at @n[type=minecraft:item_display,tag=starwars.current,tag=starwars.ship.tie_fighter,tag=starwars.entity_root] run function starwars:entity/ship/tie_fighter/fire
execute at @n[type=minecraft:item_display,tag=starwars.current,tag=starwars.ship.x_wing,tag=starwars.entity_root] run function starwars:entity/ship/x_wing/fire