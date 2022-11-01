tellraw @s ["",{"text":"wip"}]
particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.125 0.25 0.125 1 10 normal @s
function hp:spells/a/apparition/tp/start_tp
effect give @s minecraft:blindness 1 100
effect give @s minecraft:darkness 1 100
particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.125 0.25 0.125 1 10 normal @s