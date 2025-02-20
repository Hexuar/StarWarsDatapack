execute if score #index starwars.value >= #length starwars.value run return 0

  # Replace loot table with item data

  # Buy
  execute if data storage starwars:trades temp[0].buy unless data storage starwars:trades temp[0].buy.id if data storage starwars:trades temp[0].buy.count.min store result storage starwars:trades temp[0].buy.count int 1 run function starwars:entity/mob/trader/parse_trades/get_count with storage starwars:trades temp[0].buy.count
  execute if data storage starwars:trades temp[0].buy unless data storage starwars:trades temp[0].buy.id run function starwars:entity/mob/trader/parse_trades/get_loot with storage starwars:trades temp[0].buy
  execute if data storage starwars:trades temp[0].buy unless data storage starwars:trades temp[0].buy.id run data modify storage starwars:trades temp[0].buy set from entity @n[type=item_display,tag=starwars.temp] item

  # BuyB
  execute if data storage starwars:trades temp[0].buyB unless data storage starwars:trades temp[0].buyB.id if data storage starwars:trades temp[0].buyB.count.min store result storage starwars:trades temp[0].buyB.count int 1 run function starwars:entity/mob/trader/parse_trades/get_count with storage starwars:trades temp[0].buyB.count
  execute if data storage starwars:trades temp[0].buyB unless data storage starwars:trades temp[0].buyB.id run function starwars:entity/mob/trader/parse_trades/get_loot with storage starwars:trades temp[0].buyB
  execute if data storage starwars:trades temp[0].buyB unless data storage starwars:trades temp[0].buyB.id run data modify storage starwars:trades temp[0].buyB set from entity @n[type=item_display,tag=starwars.temp] item

  # Sell
  execute if data storage starwars:trades temp[0].sell unless data storage starwars:trades temp[0].sell.id if data storage starwars:trades temp[0].sell.count.min store result storage starwars:trades temp[0].sell.count int 1 run function starwars:entity/mob/trader/parse_trades/get_count with storage starwars:trades temp[0].sell.count
  execute if data storage starwars:trades temp[0].sell unless data storage starwars:trades temp[0].sell.id run function starwars:entity/mob/trader/parse_trades/get_loot with storage starwars:trades temp[0].sell
  execute if data storage starwars:trades temp[0].sell unless data storage starwars:trades temp[0].sell.id run data modify storage starwars:trades temp[0].sell set from entity @n[type=item_display,tag=starwars.temp] item

  # Shift array
  data modify storage starwars:trades temp append from storage starwars:trades temp[0]
  data remove storage starwars:trades temp[0]

scoreboard players add #index starwars.value 1
function starwars:entity/mob/trader/parse_trades/loop