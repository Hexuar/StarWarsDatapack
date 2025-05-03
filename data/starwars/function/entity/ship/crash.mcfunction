function starwars:entity/ship/kill

summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[0.1d,0.5d,0.0d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[-0.1d,0.5d,0.0d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[0.0d,0.5d,0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[0.0d,0.5d,-0.1d]}

summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[0.1d,0.5d,0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[0.1d,0.5d,-0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[-0.1d,0.5d,0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_block"},Motion:[-0.1d,0.5d,-0.1d]}

summon tnt ~ ~ ~ {fuse:0}