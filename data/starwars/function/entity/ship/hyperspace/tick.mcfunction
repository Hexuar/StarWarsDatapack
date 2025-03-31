execute if score @s starwars.hyperspace_cooldown matches ..-1 run scoreboard players add @s starwars.hyperspace_cooldown 1
execute if score @s starwars.hyperspace_cooldown matches 0 run function starwars:entity/ship/hyperspace/teleport {dimension:"starwars:mustafar_space"}

scoreboard players add @s starwars.ship_speed 10