execute unless score @s starwars.force_stamina < @s starwars.max_force_stamina run tag @s remove starwars.restoring_stamina

execute store result storage starwars:input id int 1 run scoreboard players get @s starwars.id
execute store result storage starwars:input max int 1 run scoreboard players get @s starwars.max_force_stamina
execute store result storage starwars:input value int 1 run scoreboard players get @s starwars.force_stamina

data modify storage starwars:input visible set value "true"
execute unless score @s starwars.force_stamina < @s starwars.max_force_stamina run data modify storage starwars:input visible set value "false"

function starwars:macros/bossbar with storage starwars:input