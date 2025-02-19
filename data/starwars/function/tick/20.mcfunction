scoreboard players reset #tick20

# Leaving planets
execute as @a[nbt={RootVehicle:{}}] at @s run function starwars:worldgen/planet/leave with entity @s

# Entity death
execute as @e[tag=starwars.entity] at @s if entity @s[tag=!starwars.entity_root] run function starwars:entity/check_death