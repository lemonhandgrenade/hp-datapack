execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s anchored eyes positioned ^ ^-0.1 ^0.3 run particle minecraft:dust_color_transition 0 0 0.5 1 0.5 0 0.5 ~ ~ ~ 0 0 0 0 10
execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove injured
execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove choking
execute if entity @s[type=area_effect_cloud] run function hp:spells/a/anapneo/private/end