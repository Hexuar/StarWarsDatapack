# Scoreboard Objectives
scoreboard objectives add starwarspack.value dummy
scoreboard objectives add starwarspack.rclick dummy
scoreboard objectives add starwarspack.id dummy


# Constants
scoreboard players set #-1 starwarspack.value -1


# ID
scoreboard players add #latest starwarspack.id 0

tellraw Hexuar {"text":"Reloaded!"}