summon mule ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,Tame:1b,ChestedHorse:1b,Tags:["starwarspack.entity","starwarspack.new","starwarspack.vehicle","starwarspack.vehicle.speeder"],CustomName:'"Speeder"',active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:0.3}],SaddleItem:{id:"minecraft:saddle",count:1}}

summon item_display ~ ~ ~ {teleport_duration:1,Tags:["starwarspack.entity","starwarspack.new"],item:{id:"minecraft:wooden_hoe",count:1,components:{"minecraft:custom_model_data":2220200}},item_display:"head"}

function starwarspack:entity/set_id
tag @e[tag=pcraft.new] remove pcraft.new