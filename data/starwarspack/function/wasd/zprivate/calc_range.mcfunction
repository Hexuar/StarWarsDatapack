## debouncing rotation
scoreboard players operation .ry starwarspack.value = @s starwarspack.value
execute store result score @s starwarspack.value run data get entity @s Rotation[0] 1.0

## dir = atan2(Motion[0],Motion[2]) + Rotation[0]
scoreboard players operation #in starwarspack.value = .z starwarspack.value
scoreboard players operation #in1 starwarspack.value = .x starwarspack.value
function starwarspack:wasd/zprivate/atan2
scoreboard players operation .dir starwarspack.value = #out starwarspack.value
scoreboard players operation .dir starwarspack.value += .ry starwarspack.value

## Map angle to the range 0..360
scoreboard players operation .dir starwarspack.value %= #360 starwarspack.const

## starwarspack.value based on dir angle ranges
execute if score .dir starwarspack.value matches 23..157 run scoreboard players set .a starwarspack.value 1
execute if score .dir starwarspack.value matches 112..248 run scoreboard players set .s starwarspack.value 1
execute if score .dir starwarspack.value matches 203..337 run scoreboard players set .d starwarspack.value 1
execute if score .dir starwarspack.value matches 293..360 run scoreboard players set .w starwarspack.value 1
execute if score .dir starwarspack.value matches 0..67 run scoreboard players set .w starwarspack.value 1
