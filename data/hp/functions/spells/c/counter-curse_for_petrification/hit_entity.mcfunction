execute as @e[dx=0,tag=!this,tag=petrified] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s remove petrified
execute if entity @s[type=area_effect_cloud] run function hp:spells/c/counter-curse_for_petrification/private/end