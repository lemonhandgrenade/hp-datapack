execute if entity @s[tag=whitePiece] run particle minecraft:dust 1 1 1 1 ~ ~0.1 ~ 0 0 0 0.1 10
execute if entity @s[tag=blackPiece] run particle minecraft:dust .2 .2 .2 1 ~ ~0.1 ~ 0 0 0 0.1 10
execute if entity @s[tag=redPiece] run particle minecraft:dust .5 .1 .05 1 ~ ~0.1 ~ 0 0 0 0.1 10
playsound minecraft:block.copper.place block @a ~ ~ ~ 1 2