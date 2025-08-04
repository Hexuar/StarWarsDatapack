$data modify storage starwars:ships $(ship).max_speed set value $(max_speed)
$data modify storage starwars:ships $(ship).acceleration set value $(acceleration)
$data modify storage starwars:ships $(ship).rotational_speed set value $(rotational_speed)
dialog show @s starwars:config/ships