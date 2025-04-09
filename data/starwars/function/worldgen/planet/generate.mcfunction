forceload add -64 -64 64 64

# Load planet structure
$execute positioned -48 -48 -48 run place template starwars:planets/$(planet)

# Summon planet marker
$function starwars:worldgen/planet/summon_core {dimension:"$(dimension)"}

#forceload remove -64 -64 64 64