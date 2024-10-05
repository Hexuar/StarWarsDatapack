execute if score #xp starwarspack.value matches ..0 run return 1

    # XP Value
    execute store result score #value starwarspack.value run function starwarspack:block/xp/get_value
    scoreboard players operation #xp starwarspack.value -= #value starwarspack.value
    execute store result storage starwarspack:input xp.value int 1 run scoreboard players get #value starwarspack.value

    # Motion
    execute store result storage starwarspack:input xp.x float 0.01 run random value -20..20
    execute store result storage starwarspack:input xp.y float 0.01 run random value 0..30
    execute store result storage starwarspack:input xp.z float 0.01 run random value -20..20

    # Summon Orb
    function starwarspack:block/xp/summon_orb with storage starwarspack:input xp

execute positioned ~ ~ ~ run function starwarspack:block/xp/loop