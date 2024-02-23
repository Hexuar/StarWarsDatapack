summon item_display ~ ~ ~ {Tags:["starwarspack.block","starwarspack.new"],item:{id:"minecraft:item_frame",Count:1b},brightness:{sky:15,block:0}}

# Data
data modify entity @e[type=item_display,tag=starwarspack.new,distance=..1,sort=nearest,limit=1] transformation.scale set value [0f,0f,0f]
data modify entity @e[type=item_display,tag=starwarspack.new,distance=..1,sort=nearest,limit=1] item.tag set from entity @s Item.tag

# Sound
$playsound $(sound) block @a ~ ~ ~ 1 0.8

# Block
$setblock ~ ~ ~ $(block)$(nbt)

tag @e[type=item_display,tag=starwarspack.new,sort=nearest,limit=1] remove starwarspack.new
kill @s
kill @e[type=item,sort=nearest,limit=1]