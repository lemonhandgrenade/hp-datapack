particle sweep_attack ~ ~ ~ 0.2 0.2 0.2 0 5 normal @p[tag=this]
execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] as @s[type=!#hp:undead] run effect give @s minecraft:instant_damage 1 0 true
execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] as @s[type=#hp:undead] run effect give @s minecraft:instant_health 1 0 true
execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run tag @s add cut
execute if entity @s[type=area_effect_cloud] run function hp:spells/s/severing_charm/private/end