execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s remove deepCut
execute if entity @s[type=area_effect_cloud] run function hp:spells/v/vulnera_sanentur/private/end