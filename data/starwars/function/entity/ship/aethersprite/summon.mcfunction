summon item_display ~ ~ ~ {CustomName:'{"text":"Delta-7 Aethersprite"}',Tags:["starwars.entity","starwars.new","starwars.ship","starwars.ship.x_wing"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,2.5f],scale:[4f,4f,4f]},interpolation_duration:20,teleport_duration:2,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":2220200}}}

function starwars:entity/seat/summon {tags:'"starwars.ship.main_seat","starwars.wasd"'}

execute as @n[type=item_display,tag=starwars.new] run data modify entity @s item.components."minecraft:custom_data".starwars.ship set from storage starwars:ships aethersprite

function starwars:entity/ship/summon