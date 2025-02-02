summon mule ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,Tame:1b,ChestedHorse:1b,Tags:["starwars.entity","starwars.new"],CustomName:'{"translate":"entity.starwars.speeder"}',active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:movement_speed",base:0.5}],SaddleItem:{id:"minecraft:saddle",count:1}}

summon item_display ~ ~ ~ {teleport_duration:1,Tags:["starwars.entity","starwars.new","starwars.vehicle","starwars.vehicle.speeder"],item:{id:"minecraft:wooden_hoe",count:1,components:{"minecraft:item_model":"starwars:entity/vehicle/speeder"}},item_display:"head"}

function starwars:entity/set_id