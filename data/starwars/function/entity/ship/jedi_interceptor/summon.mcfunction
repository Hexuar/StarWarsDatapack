summon item_display ~ ~ ~ {CustomName:{"translate":"entity.starwars.jedi_interceptor"},data:{starwars:{ship:"jedi_interceptor"}},Tags:["starwars.entity","starwars.entity_root","starwars.new","starwars.ship","starwars.ship.jedi_interceptor"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,1.3f],scale:[2.25f,2.25f,2.25f]},interpolation_duration:20,teleport_duration:1,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/ship/jedi_interceptor"}}}

execute as @n[type=item_display,tag=starwars.new,distance=..16] run data modify entity @s item.components."minecraft:custom_data".starwars.ship set from storage starwars:ships jedi_interceptor

function starwars:entity/ship/summon