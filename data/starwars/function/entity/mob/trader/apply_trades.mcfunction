$data modify storage starwars:trades temp set from storage starwars:trades $(entity) 
$function starwars:entity/mob/trader/parse_trades {entity:"$(entity)"}
data modify entity @s Offers.Recipes set from storage starwars:trades temp