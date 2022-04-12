execute as @e[dx=0,tag=!this,tag=bound] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove boundLight
execute as @e[dx=0,tag=!this,tag=bound] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove bound
execute if entity @s[type=area_effect_cloud] run function hp:spells/e/emancipare/private/end