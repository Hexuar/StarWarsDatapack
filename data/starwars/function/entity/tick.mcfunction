# Ship
execute if entity @s[tag=starwars.ship] run function starwars:entity/ship/tick with entity @s data.starwars.ship

# Vehicle
execute if entity @s[tag=starwars.vehicle] run function starwars:entity/vehicle/tick

# Mob
execute if entity @s[tag=starwars.mob] run function starwars:entity/mob/tick

# Hologram
execute if entity @s[tag=starwars.hologram] run function starwars:entity/hologram/tick