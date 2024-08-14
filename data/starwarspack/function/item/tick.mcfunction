# Blaster Shoot Time
scoreboard players add @a[scores={starwarspack.shoot_time=0..200}] starwarspack.shoot_time 1

# Sniper check
execute as @a if predicate starwarspack:holding/blaster_scope if predicate starwarspack:sneaking run function starwarspack:item/blaster/apply_zoom
execute as @a if predicate starwarspack:holding/blaster_scope unless predicate starwarspack:sneaking run function starwarspack:item/blaster/remove_zoom

# Grenade
execute as @e[type=item,tag=!starwarspack.initiated,nbt={Item:{count:1,components:{"minecraft:custom_data":{starwarspack:{grenade:1b}}}}}] run function starwarspack:item/grenade/init with entity @s Item.components."minecraft:custom_data".starwarspack
execute as @e[type=item,tag=starwarspack.initiated,scores={starwarspack.fuse=..0}] at @s run function starwarspack:item/grenade/explode with entity @s Item.components."minecraft:custom_data".starwarspack
execute as @e[type=item,tag=starwarspack.initiated] run scoreboard players remove @s starwarspack.fuse 1

# Rclick toggle
tag @a[tag=starwarspack.recently_toggled,tag=!starwarspack.just_toggled] remove starwarspack.recently_toggled
tag @a[tag=starwarspack.just_toggled] remove starwarspack.just_toggled