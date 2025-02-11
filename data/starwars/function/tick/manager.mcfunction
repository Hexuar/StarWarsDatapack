# Manages tick functions of different rates

# Tick 1
function starwars:tick/1

# Tick 20
execute if score #tick20 starwars.value matches 20.. run function starwars:tick/20
scoreboard players add #tick20 starwars.value 1