data modify entity @s DeathLootTable set value ""
execute if dimension starwars:tatooine run function starwars:entity/mob/jawa/summon
kill @s