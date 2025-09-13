# Scoreboards
scoreboard objectives add starwars.value dummy
scoreboard objectives add starwars.const dummy
scoreboard objectives add starwars.id dummy
scoreboard objectives add starwars.shoot_time dummy
scoreboard objectives add starwars.fuse dummy
scoreboard objectives add starwars.ship_speed dummy
scoreboard objectives add starwars.hyperspace_cooldown dummy
scoreboard objectives add starwars.force_stamina dummy
scoreboard objectives add starwars.max_force_stamina dummy
scoreboard objectives add starwars.force_stamina_gain dummy
scoreboard objectives add starwars.force_stamina_cooldown dummy

# Triggers
scoreboard objectives add starwars.travel_dagobah trigger
scoreboard objectives add starwars.travel_endor trigger
scoreboard objectives add starwars.travel_geonosis trigger
scoreboard objectives add starwars.travel_hoth trigger
scoreboard objectives add starwars.travel_ilum trigger
scoreboard objectives add starwars.travel_mustafar trigger
scoreboard objectives add starwars.travel_overworld trigger
scoreboard objectives add starwars.travel_tatooine trigger

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
scoreboard players set #16 starwars.const 16
scoreboard players set #20 starwars.const 20
scoreboard players set #90 starwars.const 90
scoreboard players set #180 starwars.const 180
scoreboard players set #360 starwars.const 360
scoreboard players set #-46496 starwars.const -46496
scoreboard players set #57295 starwars.const 57295

# Constants
scoreboard players set #MAX_SHOOT_TIME starwars.const 200
scoreboard players set #BLASTER_BOLT_SPEED starwars.const 10

scoreboard players set #LIGHTSABER_PARTS starwars.const 3

# Ship Data
data modify storage starwars:ships aethersprite set value {max_speed:126, acceleration:5.0, rotational_speed:1.8, height: 1}
data modify storage starwars:ships jedi_interceptor set value {max_speed:150, acceleration:5.2, rotational_speed:2, height: 1}
data modify storage starwars:ships tie_advanced_v1 set value {max_speed:160, acceleration:4.15, rotational_speed:2, height: 2.5}
data modify storage starwars:ships tie_advanced_x1 set value {max_speed:120, acceleration:4.15, rotational_speed:1.8, height: 2}
data modify storage starwars:ships tie_bomber set value {max_speed:85, acceleration:2.38, rotational_speed:1.72, height: 2.1}
data modify storage starwars:ships tie_defender set value {max_speed:168, acceleration:4.22, rotational_speed:2.2, height: 2.1}
data modify storage starwars:ships tie_fighter set value {max_speed:120, acceleration:4.1, rotational_speed:2, height: 2.5}
data modify storage starwars:ships tie_interceptor set value {max_speed:125, acceleration:4.24, rotational_speed:2.08, height: 2.1}
data modify storage starwars:ships tie_striker set value {max_speed:150, acceleration:4.2, rotational_speed:2, height: 0.7}
data modify storage starwars:ships x_wing set value {max_speed:105, acceleration:3.7, rotational_speed:1.5, height:1}

# Trades
function starwars:entity/mob/trader/load_trades

# First Load
execute unless score #loaded starwars.value matches 1 run function starwars:first_load
scoreboard players set #loaded starwars.value 1