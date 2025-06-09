advancement revoke @s only starwars:ship/fire

execute at @n[type=item_display,tag=starwars.ship] positioned ^5.5 ^0.9 ^1 run function starwars:entity/blaster_bolt/summon {explode_on_impact:false,bloom:2,sound:"starwars:blaster",bolt:{particle:"minecraft:dust","texture": "red",color:[1.0f,0.0f,0.0f],damage:1,scale:0.5,fire:false}}

execute at @n[type=item_display,tag=starwars.ship] positioned ^5.5 ^0.0 ^1 run function starwars:entity/blaster_bolt/summon {explode_on_impact:false,bloom:2,sound:"starwars:blaster",bolt:{particle:"minecraft:dust","texture": "red",color:[1.0f,0.0f,0.0f],damage:1,scale:0.5,fire:false}}

execute at @n[type=item_display,tag=starwars.ship] positioned ^-5.5 ^0.9 ^1 run function starwars:entity/blaster_bolt/summon {explode_on_impact:false,bloom:2,sound:"starwars:blaster",bolt:{particle:"minecraft:dust","texture": "red",color:[1.0f,0.0f,0.0f],damage:1,scale:0.5,fire:false}}

execute at @n[type=item_display,tag=starwars.ship] positioned ^-5.5 ^0.0 ^1 run function starwars:entity/blaster_bolt/summon {explode_on_impact:false,bloom:2,sound:"starwars:blaster",bolt:{particle:"minecraft:dust","texture": "red",color:[1.0f,0.0f,0.0f],damage:1,scale:0.5,fire:false}}
