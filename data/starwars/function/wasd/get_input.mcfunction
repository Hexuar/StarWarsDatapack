data modify storage starwars:wasd Motion set from entity @s Motion
execute store result score .x starwars.value run data get storage starwars:wasd Motion[0] 1000.0
execute store result score .z starwars.value run data get storage starwars:wasd Motion[2] 1000.0
function starwars:wasd/zprivate/input