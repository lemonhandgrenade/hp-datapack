execute as @e[dx=0,tag=!this,tag=transfigured] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:transfigure/untransfigure
execute if entity @s[type=area_effect_cloud] run function hp:spells/r/reparifarge/private/end