## debouncing rotation
scoreboard players operation .ry starwars.value = @s starwars.value
execute store result score @s starwars.value run data get entity @s Rotation[0] 1.0

## dir = atan2(Motion[0],Motion[2]) + Rotation[0]
scoreboard players operation #in starwars.value = .z starwars.value
scoreboard players operation #in1 starwars.value = .x starwars.value
function starwars:wasd/zprivate/atan2
scoreboard players operation .dir starwars.value = #out starwars.value
scoreboard players operation .dir starwars.value += .ry starwars.value

## Map angle to the range 0..360
scoreboard players operation .dir starwars.value %= #360 starwars.const

## starwars.value based on dir angle ranges
execute if score .dir starwars.value matches 23..157 run scoreboard players set .a starwars.value 1
execute if score .dir starwars.value matches 112..248 run scoreboard players set .s starwars.value 1
execute if score .dir starwars.value matches 203..337 run scoreboard players set .d starwars.value 1
execute if score .dir starwars.value matches 293..360 run scoreboard players set .w starwars.value 1
execute if score .dir starwars.value matches 0..67 run scoreboard players set .w starwars.value 1
