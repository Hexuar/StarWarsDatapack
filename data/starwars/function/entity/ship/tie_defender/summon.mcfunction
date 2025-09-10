summon item_display ~ ~ ~ {CustomName:{"translate":"entity.starwars.tie_defender"},data:{starwars:{ship:"tie_defender"}},Tags:["starwars.entity","starwars.entity_root","starwars.new","starwars.ship","starwars.ship.tie_defender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.0f,0f],scale:[2.1f,2.1f,2.1f]},interpolation_duration:20,teleport_duration:1,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/ship/tie_defender"}}}

execute as @n[type=item_display,tag=starwars.new,distance=..16] run data modify entity @s item.components."minecraft:custom_data".starwars.ship set from storage starwars:ships tie_defender

function starwars:entity/ship/summon