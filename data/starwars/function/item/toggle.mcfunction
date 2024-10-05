# Spam Protection
tag @s add starwars.just_toggled
execute if entity @s[tag=starwars.recently_toggled] run return fail
tag @s add starwars.recently_toggled

execute if predicate starwars:holding/lightsaber run function starwars:item/lightsaber/toggle