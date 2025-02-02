forceload add -3 -3 2 2

# Load planet structure
function starwars:worldgen/planet/load_structure {planet:"sphere"}

# Summon planet marker
$function starwars:worldgen/planet/summon_core {dimension:"$(dimension)"}

forceload remove -3 -3 2 2
