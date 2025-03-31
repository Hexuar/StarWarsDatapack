scoreboard players set @s starwars.ship_speed 0
scoreboard players set @s starwars.hyperspace_cooldown 1000

execute store result storage starwars:input phi int 1 run random value 0..360
execute store result storage starwars:input theta int 1 run random value -90..90
execute store result storage starwars:input r int 1 run random value 100..200

function starwars:macros/radial_to_cartesian with storage starwars:input

$execute in $(dimension) run function starwars:worldgen/planet/travel with storage starwars:input