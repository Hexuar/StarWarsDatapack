scoreboard players reset #tick20

# Leaving planets
execute as @e[tag=starwars.ship] at @s run function starwars:worldgen/planet/leave with entity @p[distance=..32]

# Entity death
execute as @e[tag=starwars.entity] at @s if entity @s[tag=!starwars.entity_root] run function starwars:entity/check_death

# Apply gravity
execute as @a run attribute @s minecraft:gravity base reset
execute at @e[type=marker,tag=starwars.planet] as @a[distance=0..] run attribute @s minecraft:gravity base set 0.0035

# Space freezing
execute at @e[type=marker,tag=starwars.planet] as @a[distance=0..] unless predicate starwars:fully_clothed run damage @s 1 minecraft:freeze

# Restore force stamina
execute as @a[tag=starwars.restoring_stamina] run scoreboard players operation @s starwars.force_stamina += @s starwars.force_stamina_gain
execute as @a[tag=starwars.restoring_stamina] unless score @s starwars.force_stamina < @s starwars.max_force_stamina run scoreboard players operation @s starwars.force_stamina = @s starwars.max_force_stamina
execute as @a[tag=starwars.restoring_stamina] unless score @s starwars.force_stamina < @s starwars.max_force_stamina run tag @s add starwars.remove_restoring_stamina