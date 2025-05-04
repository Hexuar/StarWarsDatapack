execute as @e[type=item_display,tag=starwars.hologram_block,tag=starwars.current,distance=..16] at @s run function starwars:entity/hologram/block/remove
$function starwars:entity/ship/$(ship)/summon
kill @s