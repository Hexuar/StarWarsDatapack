## Remez Algorithm
#a := min (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation #temp starwarspack.value = #in starwarspack.value
scoreboard players operation #temp1 starwarspack.value = #in1 starwarspack.value
execute if score #temp starwarspack.value matches ..-1 run scoreboard players operation #temp starwarspack.value *= #-1 starwarspack.const
execute if score #temp1 starwarspack.value matches ..-1 run scoreboard players operation #temp1 starwarspack.value *= #-1 starwarspack.const
scoreboard players operation #temp2 starwarspack.value = #temp starwarspack.value
scoreboard players operation #temp2 starwarspack.value < #temp1 starwarspack.value
scoreboard players operation #temp3 starwarspack.value = #temp starwarspack.value
scoreboard players operation #temp3 starwarspack.value > #temp1 starwarspack.value
scoreboard players operation #temp2 starwarspack.value *= #1000 starwarspack.const
scoreboard players operation #temp2 starwarspack.value /= #temp3 starwarspack.value
## s
scoreboard players operation #temp3 starwarspack.value = #temp2 starwarspack.value
scoreboard players operation #temp3 starwarspack.value *= #temp3 starwarspack.value
scoreboard players operation #temp3 starwarspack.value /= #1000 starwarspack.const
## r
scoreboard players operation #out starwarspack.value = #temp3 starwarspack.value
scoreboard players operation #out starwarspack.value *= #-46496 starwarspack.const
scoreboard players operation #out starwarspack.value /= #100000 starwarspack.const
scoreboard players add #out starwarspack.value 1593
scoreboard players operation #out starwarspack.value *= #temp3 starwarspack.value
scoreboard players operation #out starwarspack.value /= #1000 starwarspack.const
scoreboard players remove #out starwarspack.value 3276
scoreboard players operation #out starwarspack.value *= #temp3 starwarspack.value
scoreboard players operation #out starwarspack.value /= #1000 starwarspack.const
scoreboard players operation #out starwarspack.value *= #temp2 starwarspack.value
scoreboard players operation #out starwarspack.value /= #10000 starwarspack.const
scoreboard players operation #out starwarspack.value += #temp2 starwarspack.value
execute if score #temp1 starwarspack.value > #temp starwarspack.value run scoreboard players remove #out starwarspack.value 1570
execute if score #temp1 starwarspack.value > #temp starwarspack.value run scoreboard players operation #out starwarspack.value *= #-1 starwarspack.const
execute if score #in starwarspack.value matches ..-1 run scoreboard players remove #out starwarspack.value 3141
execute if score #in starwarspack.value matches ..-1 run scoreboard players operation #out starwarspack.value *= #-1 starwarspack.const
execute if score #in1 starwarspack.value matches ..-1 run scoreboard players operation #out starwarspack.value *= #-1 starwarspack.const
## rad 2 deg
scoreboard players operation #out starwarspack.value *= #57295 starwarspack.const
scoreboard players operation #out starwarspack.value /= #1000000 starwarspack.const