# Set rotation and make visible (spawns in rotated 0,0)
$execute as @e[type=item_display,tag=starwars.new] run tp @s ~ ~ ~ ~$(rx) ~$(ry)
execute as @e[type=item_display,tag=starwars.new] run data modify entity @s transformation.scale set value [1.0f,1.0f,2.0f]