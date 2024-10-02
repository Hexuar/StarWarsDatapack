summon item_display ~ ~ ~ {CustomName:'{"text":"Tie Fighter"}',Tags:["starwarspack.entity","starwarspack.new","starwarspack.ship","starwarspack.ship.tie_fighter"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0.5f],scale:[2.1f,2.1f,2.1f]},interpolation_duration:20,teleport_duration:2,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":2220207}}}

function starwarspack:entity/seat/summon {tags:'"starwarspack.ship.main_seat","starwarspack.wasd"'}

execute as @n[type=item_display,tag=starwarspack.new] run data modify entity @s item.components."minecraft:custom_data".starwarspack.ship set from storage starwarspack:ships tie_fighter

function starwarspack:entity/ship/summon