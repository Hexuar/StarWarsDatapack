# Randomize trades
scoreboard players set #index starwars.value 0
execute store result score #length starwars.value run data get storage starwars:trades temp

function starwars:entity/mob/trader/parse_trades/randomize

# Parse remaining trades
scoreboard players set #index starwars.value 0
execute store result score #length starwars.value run data get storage starwars:trades temp

summon item_display ~ ~ ~ {Tags:[starwars.temp]}
function starwars:entity/mob/trader/parse_trades/loop
kill @e[tag=starwars.temp]