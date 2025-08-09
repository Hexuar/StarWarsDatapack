execute store result storage starwars:input id int 1 run scoreboard players get @s starwars.id
execute store result storage starwars:input max int 1 run scoreboard players get @s starwars.max_force_stamina
execute store result storage starwars:input value int 1 run scoreboard players get @s starwars.force_stamina

data modify storage starwars:input visible set value "true"
execute unless score @s starwars.force_stamina < @s starwars.max_force_stamina run data modify storage starwars:input visible set value "false"

data modify storage starwars:input color set value "blue"
execute if entity @s[tag=starwars.sith] run data modify storage starwars:input color set value "red"

data modify storage starwars:input text_color set value "aqua"
execute if entity @s[tag=starwars.sith] run data modify storage starwars:input text_color set value "red"

function starwars:macros/bossbar with storage starwars:input