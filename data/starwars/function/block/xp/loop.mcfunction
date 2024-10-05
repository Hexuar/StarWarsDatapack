execute if score #xp starwars.value matches ..0 run return 1

    # XP Value
    execute store result score #value starwars.value run function starwars:block/xp/get_value
    scoreboard players operation #xp starwars.value -= #value starwars.value
    execute store result storage starwars:input xp.value int 1 run scoreboard players get #value starwars.value

    # Motion
    execute store result storage starwars:input xp.x float 0.01 run random value -20..20
    execute store result storage starwars:input xp.y float 0.01 run random value 0..30
    execute store result storage starwars:input xp.z float 0.01 run random value -20..20

    # Summon Orb
    function starwars:block/xp/summon_orb with storage starwars:input xp

execute positioned ~ ~ ~ run function starwars:block/xp/loop