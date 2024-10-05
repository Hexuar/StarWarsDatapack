# Blaster Shoot Time
scoreboard players add @a[scores={starwars.shoot_time=0..200}] starwars.shoot_time 1

# Sniper check
execute as @a if predicate starwars:holding/blaster_scope if predicate starwars:sneaking run function starwars:item/blaster/apply_zoom
execute as @a if predicate starwars:holding/blaster_scope unless predicate starwars:sneaking run function starwars:item/blaster/remove_zoom

# Grenade
execute as @e[type=item,tag=!starwars.initiated,nbt={Item:{count:1,components:{"minecraft:custom_data":{starwars:{grenade:1b}}}}}] run function starwars:item/grenade/init with entity @s Item.components."minecraft:custom_data".starwars
execute as @e[type=item,tag=starwars.initiated,scores={starwars.fuse=..0}] at @s run function starwars:item/grenade/explode with entity @s Item.components."minecraft:custom_data".starwars
execute as @e[type=item,tag=starwars.initiated] run scoreboard players remove @s starwars.fuse 1

# Rclick toggle
tag @a[tag=starwars.recently_toggled,tag=!starwars.just_toggled] remove starwars.recently_toggled
tag @a[tag=starwars.just_toggled] remove starwars.just_toggled