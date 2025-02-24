execute store result score #rotation starwars.value run data get entity @s Rotation[0]
scoreboard players operation #rotation starwars.value += #180 starwars.const
scoreboard players operation #rotation starwars.value *= #-1 starwars.const
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation starwars.value