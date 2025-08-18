execute unless entity @s[tag=starwars.current] run function starwars:entity/get_id

tp @e[tag=starwars.current,type=!pig,type=!chest_minecart] ~ ~ ~

tag @e[tag=starwars.current] remove starwars.current