# Scoreboards
scoreboard objectives add starwars.value dummy
scoreboard objectives add starwars.const dummy
scoreboard objectives add starwars.id dummy
scoreboard objectives add starwars.shoot_time dummy
scoreboard objectives add starwars.fuse dummy
scoreboard objectives add starwars.ship_speed dummy


# Ship Data
function starwars:load_ship_data
scoreboard players set #nether_enabled starwars.value 0
scoreboard players set #end_enabled starwars.value 0


# Worldgen
execute unless score #planets_generated starwars.value matches 1 run function starwars:worldgen/generate_planets
scoreboard players set #planets_generated starwars.value 1


# Constants
scoreboard players set #-1 starwars.const -1
scoreboard players set #0 starwars.const 0
scoreboard players set #1 starwars.const 1
scoreboard players set #10 starwars.const 10
scoreboard players set #100 starwars.const 100
scoreboard players set #1000 starwars.const 1000
scoreboard players set #10000 starwars.const 10000
scoreboard players set #100000 starwars.const 100000
scoreboard players set #1000000 starwars.const 1000000
scoreboard players set #10000000 starwars.const 10000000

scoreboard players set #360 starwars.const 360
scoreboard players set #-46496 starwars.const -46496
scoreboard players set #57295 starwars.const 57295