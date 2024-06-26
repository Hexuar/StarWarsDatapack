$summon marker ~ ~ ~ {Tags:["starwarspack.entity","starwarspack.blaster_bolt","starwarspack.new"],data:$(bolt)}

# Owner
data modify entity @e[type=marker,tag=starwarspack.new,sort=nearest,limit=1] data.owner set from entity @s UUID

# Rotation
$execute store result storage starwarspack:input rx int 0.1 run random value -$(bloom)..$(bloom)
$execute store result storage starwarspack:input ry int 0.1 run random value -$(bloom)..$(bloom)
function starwarspack:entity/blaster_bolt/set_rotation with storage starwarspack:input

# Tags
tag @e[type=marker,tag=starwarspack.new] remove starwarspack.new