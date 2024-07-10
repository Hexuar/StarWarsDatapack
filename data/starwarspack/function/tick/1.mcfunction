# Blaster Bolt
execute as @e[type=marker,tag=starwarspack.blaster_bolt] at @s run function starwarspack:entity/blaster_bolt/tick

# Blaster Shoot Time
scoreboard players add @a[scores={starwarspack.shoot_time=0..200}] starwarspack.shoot_time 1

# Grenade
execute as @e[type=item,tag=!starwarspack.initiated,nbt={Item:{count:1,components:{"minecraft:custom_data":{starwarspack:{grenade:1b}}}}}] run function starwarspack:item/grenade/init with entity @s Item.components."minecraft:custom_data".starwarspack
execute as @e[type=item,tag=starwarspack.initiated,scores={starwarspack.fuse=..0}] at @s run function starwarspack:item/grenade/explode with entity @s Item.components."minecraft:custom_data".starwarspack
execute as @e[type=item,tag=starwarspack.initiated] run scoreboard players remove @s starwarspack.fuse 1