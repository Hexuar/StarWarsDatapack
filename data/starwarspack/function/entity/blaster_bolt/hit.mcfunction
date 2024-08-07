execute if entity @s[tag=starwarspack.explode_on_impact] run summon tnt
$damage @s $(damage) arrow by @e[type=player,nbt={UUID:$(owner)},limit=1]
kill @e[type=marker,tag=starwarspack.blaster_bolt,sort=nearest,limit=1]