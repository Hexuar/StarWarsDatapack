summon item_display ~ ~ ~ {Tags:["starwars.block","starwars.new"],brightness:{sky:15,block:0}}

# Data
data modify entity @e[type=item_display,tag=starwars.new,distance=..1,sort=nearest,limit=1] transformation.scale set value [1.01f,1.01f,1.01f]
data modify entity @e[type=item_display,tag=starwars.new,distance=..1,sort=nearest,limit=1] item set from entity @s Item

# Sound
$playsound $(sound) block @a ~ ~ ~

# Block
$setblock ~ ~ ~ $(block){CustomName:'$(name)'}

tag @e[type=item_display,tag=starwars.new,distance=..1,sort=nearest,limit=1] remove starwars.new
kill @s
kill @e[type=item,distance=..1,sort=nearest,limit=1]
