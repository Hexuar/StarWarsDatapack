advancement revoke @s only starwars:right_click

function starwars:item/toggle

execute if predicate starwars:holding/blaster run function starwars:item/blaster/fire with entity @s SelectedItem.components.minecraft:custom_data.starwars
execute if predicate starwars:holding/flamethrower anchored eyes run function starwars:item/flamethrower/fire