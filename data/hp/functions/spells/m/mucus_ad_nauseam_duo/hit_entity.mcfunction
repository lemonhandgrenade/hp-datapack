execute as @a[dx=0,tag=!this,tag=!hasCold] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s add injured
execute as @a[dx=0,tag=!this,tag=!hasCold] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s add hasColdBad
execute as @a[dx=0,tag=!this,tag=!hasCold] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s add hasCold
execute if entity @s[type=area_effect_cloud] run function hp:spells/m/mucus_ad_nauseam_duo/private/end