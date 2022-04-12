particle dust 1 1 1 4 ~ ~ ~ 0 0 0 0 10
execute as @e[type=area_effect_cloud,distance=..1.3,tag=!this] positioned ~-0.01 ~-0.01 ~-0.01 if entity @s[distance=..1.3] positioned ~0.01 ~0.01 ~0.01 run tag @s add flameFrozen
execute if entity @s[type=area_effect_cloud] run function hp:spells/f/flame-freezing_charm/private/end