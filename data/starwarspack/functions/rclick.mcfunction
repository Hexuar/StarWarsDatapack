scoreboard players reset @s starwarspack.rclick

execute if predicate starwarspack:holding/lightsaber run function starwarspack:item/lightsaber/toggle
execute if predicate starwarspack:holding/blaster run function starwarspack:item/blaster/fire with entity @s SelectedItem.tag.starwarspack