$execute store result score #skin starwars.value run data get block ~ ~ ~ Items[{"Slot":$(index)b}].components."minecraft:custom_model_data".floats[0]
$execute if score #0 starwars.const matches $(operation) run scoreboard players add #skin starwars.value 1
$execute if score #1 starwars.const matches $(operation) run scoreboard players remove #skin starwars.value 1

execute if score #skin starwars.value matches ..-1 run return fail
execute if score #skin starwars.value >= #LIGHTSABER_PARTS starwars.const run return fail

$data modify storage starwars:input index set value $(index)
execute store result storage starwars:input skin int 1 run scoreboard players get #skin starwars.value

function starwars:block/lightsaber_forge/modify_item with storage starwars:input