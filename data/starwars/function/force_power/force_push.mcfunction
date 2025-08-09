execute if predicate starwars:input/sneak run function starwars:force_power/force_push/tp {sign:"",force:1,range:10}
execute unless predicate starwars:input/sneak run function starwars:force_power/force_push/tp {sign:"-",force:1,range:10}

function starwars:force_power/stamina/remove {stamina:1, cooldown:0}