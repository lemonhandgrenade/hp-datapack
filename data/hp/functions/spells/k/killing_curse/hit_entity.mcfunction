execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run effect give @s[type=!#hp:undead] minecraft:instant_damage 1 200 true
execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run effect give @s[type=#hp:undead] minecraft:instant_health 1 200 true
execute if entity @s[type=area_effect_cloud] run function hp:spells/k/killing_curse/private/end