$execute store result score #value starwars.value run data get storage $(storage) $(nbt) 100
$scoreboard players $(operation) #value starwars.value $(value)

$execute store result storage $(storage) $(nbt) $(type) 0.01 run scoreboard players get #value starwars.value

$function $(callback)