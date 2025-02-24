$summon item_display ~ ~ ~ {CustomName:'{"translate":"entity.starwars.blaster_bolt"}',Tags:["starwars.entity","starwars.entity_root","starwars.blaster_bolt","starwars.new"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"starwars:entity/blaster_bolt","minecraft:custom_model_data":{},"minecraft:custom_data":$(bolt)}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f]}}

# Owner
data modify entity @e[type=item_display,tag=starwars.new,sort=nearest,limit=1,distance=..4] item.components."minecraft:custom_data".owner set from entity @s UUID

# Rotation
$execute store result storage starwars:input rx int 0.1 run random value -$(bloom)..$(bloom)
$execute store result storage starwars:input ry int 0.1 run random value -$(bloom)..$(bloom)
function starwars:entity/blaster_bolt/set_rotation with storage starwars:input

# Set Explosive
$execute if score #1 starwars.const matches $(explode_on_impact) run tag @e[type=item_display,tag=starwars.new,sort=nearest,limit=1,distance=..4] add starwars.explode_on_impact

# Texture
execute as @e[type=item_display,tag=starwars.new,sort=nearest,limit=1,distance=..4] run function starwars:entity/blaster_bolt/set_texture with entity @s item.components."minecraft:custom_data"

# Sound
$playsound $(sound) player @a ~ ~ ~

# Tags
tag @e[type=item_display,tag=starwars.new] remove starwars.new