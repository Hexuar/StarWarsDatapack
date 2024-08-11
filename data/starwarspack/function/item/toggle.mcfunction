# Spam Protection
tag @s add starwarspack.just_toggled
execute if entity @s[tag=starwarspack.recently_toggled] run return fail
tag @s add starwarspack.recently_toggled

execute if predicate starwarspack:holding/lightsaber run function starwarspack:item/lightsaber/toggle