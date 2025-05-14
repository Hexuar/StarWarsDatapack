execute if entity @s[tag=!starwars.explode_on_impact,tag=!starwars.lightning_bolt] if block ~ ~ ~ #starwars:reflective run function starwars:entity/blaster_bolt/reflect/check
execute if entity @s[tag=!starwars.explode_on_impact,tag=!starwars.lightning_bolt] if block ~ ~ ~ #starwars:reflective run return 0
execute if entity @s[tag=starwars.lightning_bolt] run function starwars:entity/blaster_bolt/reflect/check
execute if entity @s[tag=starwars.lightning_bolt] run return 0

execute if entity @s[tag=starwars.explode_on_impact] run summon tnt
kill @e[type=item_display,tag=starwars.blaster_bolt,tag=starwars.this,sort=nearest,limit=1]