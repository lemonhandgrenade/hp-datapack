execute as @e[type=#hp:flying,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:levitation 3 1 true
execute as @e[type=#hp:flying,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:slow_falling 6 1 true
execute if entity @s[type=area_effect_cloud] run function hp:spells/a/aviatus/private/end