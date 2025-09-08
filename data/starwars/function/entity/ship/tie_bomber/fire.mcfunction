execute as @n[type=minecraft:chest_minecart,tag=starwars.current,distance=..16] unless items entity @s container.12 tnt run return fail

summon tnt ^1.8 ^-1.8 ^ {fuse:60s}
item modify entity @n[type=minecraft:chest_minecart,tag=starwars.current,distance=..16] container.12 {function:"minecraft:set_count",count:-1,add:1b}