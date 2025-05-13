$damage @s $(damage) arrow by @e[type=player,nbt={UUID:$(owner)},limit=1]
$execute at @s if score #1 starwars.const matches $(fire) run summon small_fireball ~ ~2.1 ~ {Motion:[0.0,-1.0,0.0]}
kill @e[type=item_display,tag=starwars.blaster_bolt,tag=starwars.this,sort=nearest,limit=1]