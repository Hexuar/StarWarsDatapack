summon item_display ~ ~ ~ {CustomName:'{"text":"Delta-7 Aethersprite"}',Tags:["starwarspack.entity","starwarspack.new","starwarspack.ship","starwarspack.ship.x_wing"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0.5f],scale:[4f,4f,4f]},interpolation_duration:20,teleport_duration:2,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":2220200}}}

function starwarspack:entity/seat/summon {tags:'"starwarspack.ship.main_seat","starwarspack.wasd"'}

execute as @n[type=item_display,tag=starwarspack.new] run data modify entity @s item.components."minecraft:custom_data".starwarspack.ship set from storage starwarspack:ships aethersprite

function starwarspack:entity/ship/summon