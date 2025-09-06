summon item_display ~ ~ ~ {CustomName:{"translate":"entity.starwars.tie_advanced_x1"},data:{starwars:{ship:"tie_advanced_x1"}},Tags:["starwars.entity","starwars.entity_root","starwars.new","starwars.ship","starwars.ship.tie_advanced_x1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.725f,-1.0f],scale:[2.0f,2.0f,2.0f]},interpolation_duration:20,teleport_duration:1,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/ship/tie_advanced_x1"}}}

execute as @n[type=item_display,tag=starwars.new] run data modify entity @s item.components."minecraft:custom_data".starwars.ship set from storage starwars:ships tie_advanced_x1

function starwars:entity/ship/summon