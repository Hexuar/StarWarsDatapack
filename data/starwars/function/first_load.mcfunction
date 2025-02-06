# Ship Data
function starwars:config/command/reset_ship_data

# Dimensions
scoreboard players set #nether_enabled starwars.value 0
scoreboard players set #end_enabled starwars.value 0

# Generate Planets
function starwars:worldgen/generate_planets
