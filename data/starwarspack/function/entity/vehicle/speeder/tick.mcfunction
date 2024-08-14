function starwarspack:entity/get_id

tp @n[type=item_display,tag=starwarspack.current] ~ ~ ~
data modify entity @n[type=item_display,tag=starwarspack.current] Rotation[0] set from entity @s Rotation[0]

tag @e[tag=starwarspack.current] remove starwarspack.current