summon interaction ~ ~ ~ {Tags:["starwars.entity","starwars.new","starwars.ship.interaction"]}

function starwars:entity/seat/summon {tags:'"starwars.ship.main_seat","starwars.wasd"'}

scoreboard players set @n[tag=starwars.new,tag=starwars.ship,distance=..2] starwars.ship_speed 0
function starwars:entity/set_id