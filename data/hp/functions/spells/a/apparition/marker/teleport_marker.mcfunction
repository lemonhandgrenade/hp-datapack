tag @s add isApparatingUp
execute at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
scoreboard players set @s apparitionTimer 0
execute at @s positioned ~ ~1 ~ run particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~ ~ 0.25 0.75 0.25 0 100 normal