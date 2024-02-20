# Right Click
execute as @a[scores={starwarspack.rclick=1..}] at @s run function starwarspack:rclick

# Blaster Bolt
execute as @e[type=marker,tag=starwarspack.blaster_bolt] at @s run function starwarspack:entity/blaster_bolt/tick

# Blaster Shoot Time
scoreboard players add @a[scores={starwarspack.shoot_time=0..200}] starwarspack.shoot_time 1