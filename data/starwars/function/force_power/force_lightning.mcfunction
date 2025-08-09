# Summon bolt
function starwars:entity/blaster_bolt/summon {explode_on_impact:false,bloom:200,sound:"minecraft:entity.bee.pollinate",bolt:{particle:"minecraft:electric_spark",color:[],damage:1,scale:0.5,fire:true}}

# Add lightning bolt tag
tag @n[type=item_display,tag=starwars.blaster_bolt] add starwars.lightning_bolt

# Set lifetime
execute store result score #lifetime starwars.value run random value 3..8
scoreboard players operation @n[type=item_display,tag=starwars.lightning_bolt] starwars.shoot_time += #MAX_SHOOT_TIME starwars.const
scoreboard players operation @n[type=item_display,tag=starwars.lightning_bolt] starwars.shoot_time -= #lifetime starwars.value

# Play use sound
playsound entity.bee.hurt player @a ~ ~ ~ 0.5 1

function starwars:force_power/stamina/remove {stamina:1, cooldown:0}