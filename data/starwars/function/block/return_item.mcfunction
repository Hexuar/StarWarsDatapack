$execute if items block ~ ~ ~ container.$(slot) command_block[custom_data={starwars:{gui:true}}] run return fail
$execute unless items block ~ ~ ~ container.$(slot) * run return fail

summon item ~ ~ ~ {Item:{id:"minecraft:command_block"},Tags:["starwars.temp"]}
$data modify entity @n[type=item,tag=starwars.temp] Item set from block ~ ~ ~ Items[{Slot:$(slot)b}]