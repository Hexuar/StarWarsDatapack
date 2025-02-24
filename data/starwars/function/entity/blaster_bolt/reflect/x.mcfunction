execute store result score #rotation starwars.value run data get entity @s Rotation[0] 1000
scoreboard players operation #rotation starwars.value *= #-1 starwars.const
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #rotation starwars.value