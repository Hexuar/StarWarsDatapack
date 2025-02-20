execute if score #index starwars.value >= #length starwars.value run return 0

 # Calculate count
  execute store result score #random starwars.value run random value 0..100
  execute store result score #chance starwars.value run data get storage starwars:trades temp[0].chance
  execute unless score #chance starwars.value >= #random starwars.value run data remove storage starwars:trades temp[0]

 # Shift array
  data modify storage starwars:trades temp append from storage starwars:trades temp[0]
  data remove storage starwars:trades temp[0]

scoreboard players add #index starwars.value 1
function starwars:entity/mob/trader/parse_trades/randomize