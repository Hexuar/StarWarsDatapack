data modify storage starwarspack:wasd Motion set from entity @s Motion
execute store result score .x starwarspack.value run data get storage starwarspack:wasd Motion[0] 1000.0
execute store result score .z starwarspack.value run data get storage starwarspack:wasd Motion[2] 1000.0
function starwarspack:wasd/zprivate/input