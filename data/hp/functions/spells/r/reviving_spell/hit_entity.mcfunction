execute as @e[dx=0,tag=!this,tag=sleeping] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove injured
execute as @e[dx=0,tag=!this,tag=sleeping] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove sleeping
execute if entity @s[type=area_effect_cloud] run function hp:spells/r/reviving_spell/private/end