$data modify storage starwars:input max_speed set from storage starwars:ships $(ship).max_speed
$data modify storage starwars:input acceleration set from storage starwars:ships $(ship).acceleration
$data modify storage starwars:input rotational_speed set from storage starwars:ships $(ship).rotational_speed
$data modify storage starwars:input ship set value "$(ship)"
data modify storage starwars:input data set value "max_speed:$(max_speed), acceleration:$(acceleration), rotational_speed:$(rotational_speed)"
$data modify storage starwars:input name set value {"translate": "entity.starwars.$(ship)"}
$data modify storage starwars:input desc set value {"translate": "entity.starwars.$(ship)_desc"}

function starwars:config/ship_dialog with storage starwars:input