summon item_display ~ ~ ~ {CustomName:'{"translate":"entity.starwars.tie_fighter"}',Tags:["starwars.entity","starwars.new","starwars.ship","starwars.ship.tie_fighter"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[2.1f,2.1f,2.1f]},interpolation_duration:20,teleport_duration:2,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/ship/tie_fighter"}}}

function starwars:entity/seat/summon {tags:'"starwars.ship.main_seat","starwars.wasd"'}

execute as @n[type=item_display,tag=starwars.new] run data modify entity @s item.components."minecraft:custom_data".starwars.ship set from storage starwars:ships tie_fighter

function starwars:entity/ship/summon