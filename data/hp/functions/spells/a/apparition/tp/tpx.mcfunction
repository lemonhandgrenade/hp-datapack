tp @s 0 ~ ~
execute if score #x values matches ..-1 at @s run function hp:spells/a/apparition/tp/tpx_neg
execute if score #x values matches 1.. at @s run function hp:spells/a/apparition/tp/tpx_pos