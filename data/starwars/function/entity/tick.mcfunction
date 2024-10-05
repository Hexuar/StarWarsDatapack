# Ship
execute if entity @p[distance=..1] if entity @s[tag=starwars.ship] run function starwars:entity/ship/tick with entity @s item.components."minecraft:custom_data".starwars.ship

# Vehicle
execute if entity @s[tag=starwars.vehicle] run function starwars:entity/vehicle/tick