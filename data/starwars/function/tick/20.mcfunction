scoreboard players reset #tick20

# Leaving planets
execute as @a[nbt={RootVehicle:{}}] at @s run function starwars:worldgen/planet/leave with entity @s

# Entity death
execute as @e[tag=starwars.entity] at @s if entity @s[tag=!starwars.entity_root] run function starwars:entity/check_death

# Apply gravity
execute as @a run attribute @s minecraft:gravity base reset
execute at @e[type=marker,tag=starwars.planet] as @a[distance=0..] run attribute @s minecraft:gravity base set 0

# Space freezing
execute at @e[type=marker,tag=starwars.planet] as @a[distance=0..] unless predicate starwars:fully_clothed run damage @s 1 minecraft:freeze