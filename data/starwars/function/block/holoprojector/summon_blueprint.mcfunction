$data modify storage starwars:input ship set value $(ship)
$data modify storage starwars:input height set from storage starwars:ships $(ship).height

function starwars:entity/hologram/summon with storage starwars:input
advancement grant @a[distance=..16] only starwars:story/holoprojector