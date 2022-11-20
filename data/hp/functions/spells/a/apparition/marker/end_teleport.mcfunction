effect clear @s minecraft:levitation
effect clear @s minecraft:invisibility

scoreboard players operation #x values = @s apparitionMarkerX
scoreboard players operation #y values = @s apparitionMarkerY
scoreboard players operation #z values = @s apparitionMarkerZ
execute at @s run function hp:player/tp/start_tp

tag @s remove isApparatingUp

execute at @s positioned ~ ~1 ~ run particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~ ~ 0.25 0.75 0.25 0 100 force