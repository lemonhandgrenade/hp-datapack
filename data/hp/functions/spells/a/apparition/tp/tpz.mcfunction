tp @s ~ ~ 0
execute if score #z values matches ..-1 at @s run function hp:spells/_entities/portkey/tp/tpz_neg
execute if score #z values matches 1.. at @s run function hp:spells/_entities/portkey/tp/tpz_pos