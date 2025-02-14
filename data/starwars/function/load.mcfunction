# Scoreboards
scoreboard objectives add starwars.value dummy
scoreboard objectives add starwars.const dummy
scoreboard objectives add starwars.id dummy
scoreboard objectives add starwars.shoot_time dummy
scoreboard objectives add starwars.fuse dummy
scoreboard objectives add starwars.ship_speed dummy

# Numbers
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

scoreboard players set #4 starwars.const 4
scoreboard players set #90 starwars.const 90
scoreboard players set #360 starwars.const 360
scoreboard players set #-46496 starwars.const -46496
scoreboard players set #57295 starwars.const 57295

# Constants
scoreboard players set #MAX_SHOOT_TIME starwars.const 200

# First Load
execute unless score #loaded starwars.value matches 1 run function starwars:first_load
scoreboard players set #loaded starwars.value 1