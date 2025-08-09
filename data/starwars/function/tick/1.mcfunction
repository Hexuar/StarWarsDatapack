# Player ID
execute as @a unless score @s starwars.id matches 1.. run tag @s add starwars.new
execute as @a unless score @s starwars.id matches 1.. at @s run function starwars:entity/set_id

# Item
function starwars:item/tick

# Entity
execute as @e[tag=starwars.entity] at @s run function starwars:entity/tick

# Block
execute at @a as @e[type=item_frame,tag=starwars.place_block,distance=..16] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function starwars:block/place with entity @s Item.components."minecraft:custom_data"
execute at @a as @e[type=item_display,tag=starwars.block,distance=..16] at @s run function starwars:block/tick with entity @s item.components."minecraft:custom_data"

# Custom entity spawners
execute as @e[type=#starwars:custom_entity_spawners,tag=!starwars.no_custom_entity_spawner] at @s unless dimension minecraft:overworld run function starwars:entity/spawn_custom
tag @e[type=#starwars:custom_entity_spawners] add starwars.no_custom_entity_spawner

# Blaster Bolt
execute as @e[type=item_display,tag=starwars.blaster_bolt] at @s run function starwars:entity/blaster_bolt/tick

# Dimension Blocking
execute if score #nether_enabled starwars.value matches 0 at @a run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:nether_portal
execute if score #end_enabled starwars.value matches 0 at @a run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:end_portal

# Planet
execute at @a as @e[type=marker,tag=starwars.planet,distance=..64] at @s run function starwars:worldgen/planet/tick with entity @s data

# Display force stamina
execute as @a[tag=!starwars.restoring_stamina,scores={starwars.force_stamina_cooldown=..0}] if score @s starwars.force_stamina < @s starwars.max_force_stamina run tag @s add starwars.restoring_stamina
execute as @a[tag=!starwars.restoring_stamina,scores={starwars.force_stamina_cooldown=1..}] run scoreboard players remove @s starwars.force_stamina_cooldown 1
execute as @a[tag=starwars.restoring_stamina] run function starwars:force_power/stamina/display
execute as @a[tag=starwars.remove_restoring_stamina] run tag @s remove starwars.restoring_stamina
execute as @a[tag=starwars.remove_restoring_stamina] run tag @s remove starwars.remove_restoring_stamina

# Force Jump
execute as @a if score @s starwars.force_stamina matches 5.. if predicate starwars:input/sneak run attribute @s minecraft:jump_strength modifier add starwars:force_jump 2 add_multiplied_base
execute as @a if score @s starwars.force_stamina matches 5.. if predicate starwars:input/sneak if predicate starwars:is_on_ground run tag @s add starwars.grounded
execute as @a[tag=starwars.grounded] if score @s starwars.force_stamina matches 5.. if predicate starwars:input/sneak if predicate starwars:input/jump run function starwars:force_power/force_jump
execute as @a unless predicate starwars:input/sneak run attribute @s minecraft:jump_strength modifier remove starwars:force_jump
