$tag @e[type=item_display,tag=starwarspack.block,sort=nearest,limit=1] add starwarspack.block.quad.$(dir)

$data merge entity @s {Tags:["starwarspack.quad","starwarspack.quad.$(dir)"],view_range:2.0f,item:{id:"minecraft:item_frame",Count:1b}}
data modify entity @s item.tag set from entity @e[type=item_display,tag=starwarspack.block,distance=..1,sort=nearest,limit=1] item.tag

$data modify entity @s transformation.scale set value $(scale)