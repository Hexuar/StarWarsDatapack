summon mule ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,Tame:1b,ChestedHorse:1b,Tags:["starwarspack.entity","starwarspack.new","starwarspack.vehicle","starwarspack.vehicle.speeder"],CustomName:'"Speeder"',active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:0.3}],SaddleItem:{id:"minecraft:saddle",count:1}}

summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["starwarspack.entity","starwarspack.new"],Passengers:[{id:"minecraft:armor_stand",Tags:["starwarspack.entity","starwarspack.new"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",count:1,components:{"minecraft:custom_model_data":2220200}}]}]}


function starwarspack:entity/set_id
tag @e[tag=pcraft.new] remove pcraft.new