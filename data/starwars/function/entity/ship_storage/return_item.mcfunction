$execute if items entity @s container.$(slot) command_block[custom_data={starwars:{gui:true}}] run return fail
$execute unless items entity @s container.$(slot) * run return fail

summon item ~ ~ ~ {Item:{id:"minecraft:command_block"},Tags:["starwars.temp"]}
$data modify entity @n[type=item,tag=starwars.temp] Item set from entity @s Items[{Slot:$(slot)b}]