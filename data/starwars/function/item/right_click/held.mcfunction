advancement revoke @s only starwars:right_click/held

# Lightsaber toggling
execute if predicate starwars:holding/lightsaber run function starwars:item/toggle

# Blaster firing
execute if predicate starwars:holding/blaster run function starwars:item/blaster/fire with entity @s SelectedItem.components.minecraft:custom_data.starwars
execute if predicate starwars:holding/flamethrower anchored eyes run function starwars:item/flamethrower/fire

# Scrolls
execute if predicate starwars:holding/scroll/force_push run function starwars:item/scroll/use/force_push