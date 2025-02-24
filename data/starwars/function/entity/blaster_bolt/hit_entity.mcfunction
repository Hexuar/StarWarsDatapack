$damage @s $(damage) arrow by @e[type=player,nbt={UUID:$(owner)},limit=1]
kill @e[type=item_display,tag=starwars.blaster_bolt,sort=nearest,limit=1,distance=..1.8]