$damage @s $(damage) arrow by @e[type=player,nbt={UUID:$(owner)},limit=1]
kill @e[type=item_display,tag=starwars.blaster_bolt,tag=starwars.this,sort=nearest,limit=1]