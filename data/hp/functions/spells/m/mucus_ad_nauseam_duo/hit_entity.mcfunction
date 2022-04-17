execute as @a[dx=0,tag=!this,tag=!hasCold] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add hasColdBad
execute as @a[dx=0,tag=!this,tag=!hasCold] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add hasCold
execute if entity @s[type=area_effect_cloud] run function hp:spells/m/mucus_ad_nauseam_duo/private/end