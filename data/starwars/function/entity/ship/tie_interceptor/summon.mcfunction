summon item_display ~ ~ ~ {CustomName:{"translate":"entity.starwars.tie_interceptor"},data:{starwars:{id:"tie_interceptor"}},Tags:["starwars.entity","starwars.entity_root","starwars.new","starwars.ship","starwars.ship.tie_interceptor"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.7f,0f],scale:[2f,2f,2f]},interpolation_duration:20,teleport_duration:1,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/ship/tie_interceptor"}}}

execute as @n[type=item_display,tag=starwars.new,distance=..16] run data modify entity @s data.starwars.ship set from storage starwars:ships tie_interceptor

function starwars:entity/ship/summon