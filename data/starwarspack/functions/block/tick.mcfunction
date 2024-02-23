execute if entity @s[tag=!starwarspack.block.quad.up] positioned ^ ^0.501 ^ if block ~ ~ ~ #starwarspack:transparent summon item_display run function starwarspack:block/quad/add {dir:"up","scale":[1.002f,0.0f,1.002f]}
execute if entity @s[tag=!starwarspack.block.quad.down] positioned ^ ^-0.501 ^ if block ~ ~ ~ #starwarspack:transparent summon item_display run function starwarspack:block/quad/add {dir:"down","scale":[1.002f,0.0f,1.002f]}
execute if entity @s[tag=!starwarspack.block.quad.north] positioned ^ ^ ^0.501 if block ~ ~ ~ #starwarspack:transparent summon item_display run function starwarspack:block/quad/add {dir:"north","scale":[1.002f,1.002f,0.0f]}
execute if entity @s[tag=!starwarspack.block.quad.south] positioned ^ ^ ^-0.501 if block ~ ~ ~ #starwarspack:transparent summon item_display run function starwarspack:block/quad/add {dir:"south","scale":[1.002f,1.002f,0.0f]}
execute if entity @s[tag=!starwarspack.block.quad.east] positioned ^0.501 ^ ^ if block ~ ~ ~ #starwarspack:transparent summon item_display run function starwarspack:block/quad/add {dir:"east","scale":[0.0f,1.002f,1.002f]}
execute if entity @s[tag=!starwarspack.block.quad.west] positioned ^-0.501 ^ ^ if block ~ ~ ~ #starwarspack:transparent summon item_display run function starwarspack:block/quad/add {dir:"west","scale":[0.0f,1.002f,1.002f]}

execute if entity @s[tag=starwarspack.block.quad.up] positioned ^ ^0.501 ^ unless block ~ ~ ~ #starwarspack:transparent run function starwarspack:block/quad/remove {dir:"up"}
execute if entity @s[tag=starwarspack.block.quad.down] positioned ^ ^-0.501 ^ unless block ~ ~ ~ #starwarspack:transparent run function starwarspack:block/quad/remove {dir:"down"}
execute if entity @s[tag=starwarspack.block.quad.north] positioned ^ ^ ^0.501 unless block ~ ~ ~ #starwarspack:transparent run function starwarspack:block/quad/remove {dir:"north"}
execute if entity @s[tag=starwarspack.block.quad.south] positioned ^ ^ ^-0.501 unless block ~ ~ ~ #starwarspack:transparent run function starwarspack:block/quad/remove {dir:"south"}
execute if entity @s[tag=starwarspack.block.quad.east] positioned ^0.501 ^ ^ unless block ~ ~ ~ #starwarspack:transparent run function starwarspack:block/quad/remove {dir:"east"}
execute if entity @s[tag=starwarspack.block.quad.west] positioned ^-0.501 ^ ^ unless block ~ ~ ~ #starwarspack:transparent run function starwarspack:block/quad/remove {dir:"west"}

$execute unless block ~ ~ ~ $(block) run function starwarspack:block/break with entity @s item.tag.starwarspack