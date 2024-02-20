$execute if score @s starwarspack.shoot_time matches ..$(shoot_time) run return 0

execute anchored eyes positioned ^ ^ ^0.5 run function starwarspack:entity/blaster_bolt/summon with entity @s SelectedItem.tag.starwarspack

playsound starwarspack:blaster player @a ~ ~ ~

scoreboard players set @s starwarspack.shoot_time 0