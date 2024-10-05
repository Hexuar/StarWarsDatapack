## added functionality for those not utilizing perfect organization
tag @s remove wasd.w
tag @s remove wasd.a
tag @s remove wasd.s
tag @s remove wasd.d
execute if score .w starwars.value matches 1 run tag @s add wasd.w
execute if score .a starwars.value matches 1 run tag @s add wasd.a
execute if score .s starwars.value matches 1 run tag @s add wasd.s
execute if score .d starwars.value matches 1 run tag @s add wasd.d