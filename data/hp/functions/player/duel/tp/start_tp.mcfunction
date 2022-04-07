scoreboard players operation #x values = @s X
scoreboard players operation #y values = @s Y
scoreboard players operation #z values = @s Z

execute in minecraft:overworld run tp @s 0 0 0

execute as @s at @s run function hp:player/duel/tp/tpx
execute as @s at @s run function hp:player/duel/tp/tpy
execute as @s at @s run function hp:player/duel/tp/tpz

scoreboard players reset @s duelLeave