## Remez Algorithm
#a := min (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation #temp starwars.value = #in starwars.value
scoreboard players operation #temp1 starwars.value = #in1 starwars.value
execute if score #temp starwars.value matches ..-1 run scoreboard players operation #temp starwars.value *= #-1 starwars.const
execute if score #temp1 starwars.value matches ..-1 run scoreboard players operation #temp1 starwars.value *= #-1 starwars.const
scoreboard players operation #temp2 starwars.value = #temp starwars.value
scoreboard players operation #temp2 starwars.value < #temp1 starwars.value
scoreboard players operation #temp3 starwars.value = #temp starwars.value
scoreboard players operation #temp3 starwars.value > #temp1 starwars.value
scoreboard players operation #temp2 starwars.value *= #1000 starwars.const
scoreboard players operation #temp2 starwars.value /= #temp3 starwars.value
## s
scoreboard players operation #temp3 starwars.value = #temp2 starwars.value
scoreboard players operation #temp3 starwars.value *= #temp3 starwars.value
scoreboard players operation #temp3 starwars.value /= #1000 starwars.const
## r
scoreboard players operation #out starwars.value = #temp3 starwars.value
scoreboard players operation #out starwars.value *= #-46496 starwars.const
scoreboard players operation #out starwars.value /= #100000 starwars.const
scoreboard players add #out starwars.value 1593
scoreboard players operation #out starwars.value *= #temp3 starwars.value
scoreboard players operation #out starwars.value /= #1000 starwars.const
scoreboard players remove #out starwars.value 3276
scoreboard players operation #out starwars.value *= #temp3 starwars.value
scoreboard players operation #out starwars.value /= #1000 starwars.const
scoreboard players operation #out starwars.value *= #temp2 starwars.value
scoreboard players operation #out starwars.value /= #10000 starwars.const
scoreboard players operation #out starwars.value += #temp2 starwars.value
execute if score #temp1 starwars.value > #temp starwars.value run scoreboard players remove #out starwars.value 1570
execute if score #temp1 starwars.value > #temp starwars.value run scoreboard players operation #out starwars.value *= #-1 starwars.const
execute if score #in starwars.value matches ..-1 run scoreboard players remove #out starwars.value 3141
execute if score #in starwars.value matches ..-1 run scoreboard players operation #out starwars.value *= #-1 starwars.const
execute if score #in1 starwars.value matches ..-1 run scoreboard players operation #out starwars.value *= #-1 starwars.const
## rad 2 deg
scoreboard players operation #out starwars.value *= #57295 starwars.const
scoreboard players operation #out starwars.value /= #1000000 starwars.const