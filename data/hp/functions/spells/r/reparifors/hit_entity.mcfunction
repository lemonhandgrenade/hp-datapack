particle minecraft:wax_off ~ ~1 ~ 0 .5 0 0 20
execute as @e[dx=0,tag=!this,tag=poisoned] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s remove poisoned
execute as @e[dx=0,tag=!this,tag=hasCold] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s remove hasCold
execute if entity @s[type=area_effect_cloud] run function hp:spells/r/reparifors/private/end