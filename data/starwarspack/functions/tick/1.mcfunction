# Right Click
execute as @a[scores={starwarspack.rclick=1..}] at @s run function starwarspack:rclick

# Blaster Bolt
execute as @e[type=marker,tag=starwarspack.blaster_bolt] at @s run function starwarspack:entity/blaster_bolt/tick

# Blaster Shoot Time
scoreboard players add @a[scores={starwarspack.shoot_time=0..200}] starwarspack.shoot_time 1

# Grenade
execute as @e[type=item,nbt={Item:{Count:1b,tag:{starwarspack:{grenade:1b}}}},tag=!starwarspack.grenade] run function starwarspack:item/grenade/init with entity @s Item.tag.starwarspack
execute as @e[type=item,tag=starwarspack.grenade,nbt={PickupDelay:1s}] at @s run function starwarspack:item/grenade/effect with entity @s Item.tag.starwarspack