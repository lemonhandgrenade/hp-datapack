execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add blinded
execute if entity @s[type=area_effect_cloud] run function hp:spells/o/obscuro/private/end