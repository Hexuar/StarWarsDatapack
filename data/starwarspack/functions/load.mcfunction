# Scoreboard Objectives
scoreboard objectives add starwarspack.value dummy
scoreboard objectives add starwarspack.id dummy
scoreboard objectives add starwarspack.rclick minecraft.used:minecraft.warped_fungus_on_a_stick


# Constants
scoreboard players set #-1 starwarspack.value -1


# ID
scoreboard players add #latest starwarspack.id 0

tellraw Hexuar {"text":"Reloaded!"}