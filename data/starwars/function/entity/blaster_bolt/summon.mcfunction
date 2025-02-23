$summon marker ~ ~ ~ {CustomName:'{"translate":"entity.starwars.blaster_bolt"}',Tags:["starwars.entity","starwars.entity_root","starwars.blaster_bolt","starwars.new"],data:$(bolt)}

# Owner
data modify entity @e[type=marker,tag=starwars.new,sort=nearest,limit=1,distance=..4] data.owner set from entity @s UUID

# Rotation
$execute store result storage starwars:input rx int 0.1 run random value -$(bloom)..$(bloom)
$execute store result storage starwars:input ry int 0.1 run random value -$(bloom)..$(bloom)
function starwars:entity/blaster_bolt/set_rotation with storage starwars:input

$execute if score #1 starwars.const matches $(explode_on_impact) run tag @e[type=marker,tag=starwars.new,sort=nearest,limit=1,distance=..4] add starwars.explode_on_impact

# Sound
$playsound $(sound) player @a ~ ~ ~

# Tags
tag @e[type=marker,tag=starwars.new] remove starwars.new