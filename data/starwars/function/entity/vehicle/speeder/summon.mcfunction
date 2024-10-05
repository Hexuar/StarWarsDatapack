summon mule ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,Tame:1b,ChestedHorse:1b,Tags:["starwars.entity","starwars.new"],CustomName:'{"text":"Speeder"}',active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:0.5}],SaddleItem:{id:"minecraft:saddle",count:1}}

summon item_display ~ ~ ~ {teleport_duration:1,Tags:["starwars.entity","starwars.new","starwars.vehicle","starwars.vehicle.speeder"],item:{id:"minecraft:wooden_hoe",count:1,components:{"minecraft:custom_model_data":2220200}},item_display:"head"}

function starwars:entity/set_id