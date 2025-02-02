$setblock -48 -48 -48 structure_block[mode=load]{name:"starwars:planets/$(planet)/000",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock -48 -47 -48 redstone_block

$setblock 0 -48 -48 structure_block[mode=load]{name:"starwars:planets/$(planet)/100",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock 0 -47 -48 redstone_block

$setblock -48 -48 0 structure_block[mode=load]{name:"starwars:planets/$(planet)/001",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock -48 -47 0 redstone_block

$setblock 0 -48 0 structure_block[mode=load]{name:"starwars:planets/$(planet)/101",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock 0 -47 0 redstone_block

$setblock -48 0 -48 structure_block[mode=load]{name:"starwars:planets/$(planet)/010",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock -48 1 -48 redstone_block

$setblock 0 0 -48 structure_block[mode=load]{name:"starwars:planets/$(planet)/110",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock 0 1 -48 redstone_block

$setblock -48 0 0 structure_block[mode=load]{name:"starwars:planets/$(planet)/011",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock -48 1 0 redstone_block

$setblock 0 0 0 structure_block[mode=load]{name:"starwars:planets/$(planet)/111",rotation:"NONE",mirror:"NONE",mode:"LOAD"}
setblock 0 1 0 redstone_block