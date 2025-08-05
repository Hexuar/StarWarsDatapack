execute store result storage starwars:input nether_enabled byte 1.0 run scoreboard players get #nether_enabled starwars.value
execute store result storage starwars:input end_enabled byte 1.0 run scoreboard players get #end_enabled starwars.value
data modify storage starwars:input data set value "{nether_enabled:$(nether_enabled), end_enabled:$(end_enabled)}"

function starwars:config/dimension_dialog with storage starwars:input