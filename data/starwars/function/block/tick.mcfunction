$execute unless block ~ ~ ~ $(block) run function starwars:block/break with entity @s item.components."minecraft:custom_data"

execute if entity @s[tag=starwars.lightsaber_forge] run function starwars:block/lightsaber_forge/tick