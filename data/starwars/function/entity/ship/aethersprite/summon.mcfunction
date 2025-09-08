summon item_display ~ ~ ~ {CustomName:{"translate":"entity.starwars.aethersprite"},data:{starwars:{ship:"aethersprite"}},Tags:["starwars.entity","starwars.entity_root","starwars.new","starwars.ship","starwars.ship.aethersprite"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,2.9f],scale:[4f,4f,4f]},interpolation_duration:20,teleport_duration:1,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/ship/aethersprite"}}}

execute as @n[type=item_display,tag=starwars.new,distance=..16] run data modify entity @s item.components."minecraft:custom_data".starwars.ship set from storage starwars:ships aethersprite

function starwars:entity/ship/summon