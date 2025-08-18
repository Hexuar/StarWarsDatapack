## Collide
execute unless block ~ ~ ~ #air run function starwars:entity/ship/crash



## Hyperspace
execute if score @s starwars.hyperspace_cooldown matches ..-1 run function starwars:entity/ship/hyperspace/tick
execute if score @s starwars.hyperspace_cooldown matches 1.. run scoreboard players remove @s starwars.hyperspace_cooldown 1



## Assemble
function starwars:entity/get_id

# Model state
execute unless entity @s[tag=starwars.state.active] if entity @p[distance=..16,predicate=starwars:is_driving] if score @s starwars.ship_speed matches 1.. run function starwars:entity/ship/activate
execute if entity @s[tag=starwars.state.active] unless entity @p[distance=..16,predicate=starwars:is_driving] run function starwars:entity/ship/deactivate
execute if entity @s[tag=starwars.state.active] unless score @s starwars.ship_speed matches 1.. run function starwars:entity/ship/deactivate


# Rotation
$execute unless score @s starwars.hyperspace_cooldown matches ..-1 run function starwars:entity/ship/handle_rotation {rotational_speed:$(rotational_speed)}


# Grounded
$execute store result score #grounded starwars.value unless block ~ ~-$(height) ~ #air


# Movement
execute unless entity @p[distance=..16,predicate=starwars:is_driving] if score @s starwars.ship_speed matches 0.. run scoreboard players remove @s starwars.ship_speed 1
$execute unless score @s starwars.hyperspace_cooldown matches ..-1 if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/jump] if score @s starwars.ship_speed matches ..$(max_speed) run scoreboard players add @s starwars.ship_speed $(acceleration)
$execute unless score @s starwars.hyperspace_cooldown matches ..-1 if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/sprint] if score @s starwars.ship_speed matches $(acceleration).. run scoreboard players remove @s starwars.ship_speed $(acceleration)
$execute unless score @s starwars.hyperspace_cooldown matches ..-1 if entity @p[distance=..16,predicate=starwars:is_driving,predicate=starwars:input/sprint] unless score @s starwars.ship_speed matches $(acceleration).. run scoreboard players set @s starwars.ship_speed 0
execute unless score @s starwars.ship_speed matches 0.. run scoreboard players set @s starwars.ship_speed 0

# Gravity
scoreboard players set #gravity starwars.value 0
execute unless entity @e[type=marker,tag=starwars.planet,distance=0..] if score #grounded starwars.value matches 0 if score @s starwars.ship_speed matches 0 run scoreboard players set #gravity starwars.value 30
execute unless entity @e[type=marker,tag=starwars.planet,distance=0..] if score #grounded starwars.value matches 0 unless score @s starwars.ship_speed matches 0 unless entity @p[distance=..16,predicate=starwars:is_driving] run scoreboard players set #gravity starwars.value 30

# Calculate speed depending on engine
scoreboard players operation #speed starwars.value = @s starwars.ship_speed
execute unless items entity @n[type=minecraft:chest_minecart,tag=starwars.ship_storage,tag=starwars.current] container.11 *[custom_data~{starwars:{engine:1b}}] run scoreboard players set #speed starwars.value 0
execute store result score #multiplier starwars.value run data get entity @n[type=minecraft:chest_minecart,tag=starwars.ship_storage,tag=starwars.current] Items[{Slot:11b}].components."minecraft:custom_data".starwars.tier 1
scoreboard players operation #speed starwars.value *= #multiplier starwars.value

execute if items entity @n[type=minecraft:chest_minecart,tag=starwars.ship_storage,tag=starwars.current] container.11 *[custom_data~{starwars:{engine:1b}}] run advancement grant @p[distance=..16,advancements={starwars:story/engine = false}] only starwars:story/engine

# Apply movement
execute store result storage starwars:input speed float 0.01 run scoreboard players get #speed starwars.value
execute store result storage starwars:input gravity float 0.01 run scoreboard players get #gravity starwars.value
function starwars:entity/ship/move with storage starwars:input


# Update AEC
execute as @e[type=area_effect_cloud,tag=starwars.current,distance=..16] run function starwars:entity/update_aec


# Ship storage
execute as @e[type=minecraft:chest_minecart,tag=starwars.ship_storage] run function starwars:entity/ship_storage/tick

tag @e[tag=starwars.current] remove starwars.current