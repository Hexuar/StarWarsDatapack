$summon marker ~ ~ ~ {Tags:["starwars.entity","starwars.entity_root","starwars.hologram","starwars.new"],data:{ship:"$(ship)"}}

$execute positioned ~ ~$(height) ~ run function starwars:entity/ship/$(ship)/summon_blueprint