$execute if score @s starwars.shoot_time matches ..$(shoot_time) run return 0

execute anchored eyes positioned ^ ^ ^0.5 run function starwars:entity/blaster_bolt/summon with entity @s SelectedItem.components.minecraft:custom_data.starwars
scoreboard players set @s starwars.shoot_time 0