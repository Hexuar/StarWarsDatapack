function starwars:entity/get_id

scoreboard players set #success starwars.value 1
execute as @e[type=item_display,tag=starwars.hologram_block,tag=starwars.current,distance=..16] at @s run function starwars:entity/hologram/block/tick with entity @s item.components."minecraft:custom_data".starwars

execute if score #success starwars.value matches 1 run function starwars:entity/hologram/construct with entity @s data

tag @e[tag=starwars.current] remove starwars.current