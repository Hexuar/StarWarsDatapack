advancement revoke @s only starwars:ship/left_click

scoreboard players operation #cooldown starwars.value = @n[tag=starwars.ship] starwars.hyperspace_cooldown
scoreboard players operation #cooldown starwars.value /= #20 starwars.const

execute if score @n[tag=starwars.ship] starwars.hyperspace_cooldown matches 1.. run title @a[distance=..16] actionbar {"translate": "gui.starwars.hyperspace_cooldown", "with": [{"score": {"name": "#cooldown","objective": "starwars.value"}}]}

execute unless entity @e[type=marker,tag=starwars.planet,distance=0..] run title @a[distance=..16] actionbar {"translate": "gui.starwars.hyperspace_on_planet"}

execute at @e[type=marker,tag=starwars.planet] as @a[distance=0..] if score @n[tag=starwars.ship] starwars.hyperspace_cooldown matches ..0 run dialog show @s starwars:hyperspace_travel