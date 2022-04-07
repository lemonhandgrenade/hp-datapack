tp @s 0 ~ ~
execute if score #x values matches ..-1 at @s run function hp:player/duel/tp/tpx_neg
execute if score #x values matches 1.. at @s run function hp:player/duel/tp/tpx_pos