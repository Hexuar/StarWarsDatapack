summon item_display ~ ~ ~ {CustomName:{"translate":"entity.starwars.tie_bomber"},data:{starwars:{ship:"tie_bomber"}},Tags:["starwars.entity","starwars.entity_root","starwars.new","starwars.ship","starwars.ship.tie_bomber"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.4f,1.4f,-1.0f],scale:[3.0f,3.0f,3.0f]},interpolation_duration:20,teleport_duration:1,item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/ship/tie_bomber"}}}

execute as @n[type=item_display,tag=starwars.new,distance=..16] run data modify entity @s item.components."minecraft:custom_data".starwars.ship set from storage starwars:ships tie_bomber

function starwars:entity/ship/summon

execute as @n[type=minecraft:chest_minecart,tag=starwars.ship_storage] if score @s starwars.id = #counter starwars.id run tag @s add starwars.bomber_ship_storage