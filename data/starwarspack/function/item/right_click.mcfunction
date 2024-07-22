advancement revoke @s only starwarspack:right_click

#execute if predicate starwarspack:holding/lightsaber run function starwarspack:item/lightsaber/toggle
execute if predicate starwarspack:holding/blaster run function starwarspack:item/blaster/fire with entity @s SelectedItem.components.minecraft:custom_data.starwarspack
execute if predicate starwarspack:holding/flamethrower anchored eyes run function starwarspack:item/flamethrower/fire