# Blaster Bolt
execute if entity @s[type=marker,tag=starwarspack.blaster_bolt] run function starwarspack:entity/blaster_bolt/tick

# Ship
execute if entity @p[distance=..1] if entity @s[tag=starwarspack.ship] run function starwarspack:entity/ship/tick with entity @s item.components."minecraft:custom_data".starwarspack.ship

# Vehicle
execute if entity @s[tag=starwarspack.vehicle] run function starwarspack:entity/vehicle/tick