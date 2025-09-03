# Ship Data
data modify storage starwars:ships x_wing set value {max_speed:100, acceleration:7, rotational_speed:2, height:1}
data modify storage starwars:ships tie_fighter set value {max_speed:50, acceleration:5, rotational_speed:1.5, height: 2.5}
data modify storage starwars:ships aethersprite set value {max_speed:100, acceleration:1, rotational_speed:1.5, height: 1}
data modify storage starwars:ships jedi_interceptor set value {max_speed:100, acceleration:10, rotational_speed:3, height: 1}
 
# Dimensions
scoreboard players set #nether_enabled starwars.value 0
scoreboard players set #end_enabled starwars.value 0

# Generate Planets
function starwars:worldgen/generate_planets