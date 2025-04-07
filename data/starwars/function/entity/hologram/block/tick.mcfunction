$execute unless block ~ ~ ~ $(block) run scoreboard players set #success starwars.value 0
$execute unless block ~ ~ ~ $(block) run data modify entity @s transformation.scale set value [1f,1f,1f]
$execute unless block ~ ~ ~ $(block) run return fail

data modify entity @s transformation.scale set value [0f,0f,0f]