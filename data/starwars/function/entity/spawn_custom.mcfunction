data modify entity @s DeathLootTable set value ""

execute if dimension starwars:hoth if entity @s[type=minecraft:rabbit] run function starwars:entity/mob/tauntaun/summon
execute if dimension starwars:hoth if entity @s[type=minecraft:stray] run function starwars:entity/mob/wampa/summon

execute if dimension starwars:tatooine if entity @s[type=minecraft:rabbit] run function starwars:entity/mob/jawa/summon
execute if dimension starwars:tatooine if entity @s[type=minecraft:camel] run function starwars:entity/mob/bantha/summon

kill @s