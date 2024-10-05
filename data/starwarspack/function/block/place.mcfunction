summon item_display ~ ~ ~ {Tags:["starwarspack.block","starwarspack.new"],brightness:{sky:15,block:0}}

# Data
data modify entity @e[type=item_display,tag=starwarspack.new,distance=..1,sort=nearest,limit=1] transformation.scale set value [1.01f,1.01f,1.01f]
data modify entity @e[type=item_display,tag=starwarspack.new,distance=..1,sort=nearest,limit=1] item set from entity @s Item

# Sound
$playsound $(sound) block @a ~ ~ ~

# Block
$setblock ~ ~ ~ $(block)

tag @e[type=item_display,tag=starwarspack.new,distance=..1,sort=nearest,limit=1] remove starwarspack.new
kill @s
kill @e[type=item,distance=..1,sort=nearest,limit=1]
