# Blaster Shoot Time
execute as @a[scores={starwars.shoot_time=0..}] if score @s starwars.shoot_time < #MAX_SHOOT_TIME starwars.const run scoreboard players add @s starwars.shoot_time 1

# Sniper check
execute as @a if predicate starwars:holding/blaster_scope if predicate starwars:sneaking run function starwars:item/blaster/apply_zoom
execute as @a if predicate starwars:holding/blaster_scope unless predicate starwars:sneaking run function starwars:item/blaster/remove_zoom

# Grenade
execute at @a as @e[type=item,tag=!starwars.grenade,nbt={Item:{count:1,components:{"minecraft:custom_data":{starwars:{grenade:1b}}}}},distance=..16] run function starwars:item/grenade/init with entity @s Item.components."minecraft:custom_data".starwars
execute as @e[type=item,tag=starwars.grenade,scores={starwars.fuse=..0}] at @s run function starwars:item/grenade/explode with entity @s Item.components."minecraft:custom_data".starwars
execute as @e[type=item,tag=starwars.grenade] run scoreboard players remove @s starwars.fuse 1

# Rclick toggle
tag @a[tag=starwars.recently_toggled,tag=!starwars.just_toggled] remove starwars.recently_toggled
tag @a[tag=starwars.just_toggled] remove starwars.just_toggled