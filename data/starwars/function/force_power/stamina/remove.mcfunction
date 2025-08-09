$scoreboard players remove @s starwars.force_stamina $(stamina)
$scoreboard players add @s starwars.force_stamina_cooldown $(cooldown)
function starwars:force_power/stamina/display
tag @s remove starwars.restoring_stamina