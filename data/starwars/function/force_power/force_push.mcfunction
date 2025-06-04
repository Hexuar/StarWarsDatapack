execute if predicate starwars:input/sneak run function starwars:force_power/force_push/tp {sign:"",force:1,range:10}
execute unless predicate starwars:input/sneak run function starwars:force_power/force_push/tp {sign:"-",force:1,range:10}

scoreboard players remove @s starwars.force_stamina 1