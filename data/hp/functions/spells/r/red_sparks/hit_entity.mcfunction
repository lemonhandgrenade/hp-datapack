execute as @a[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run effect give @s minecraft:instant_damage 1 30 true
execute if entity @s[type=area_effect_cloud] run function hp:spells/r/red_sparks/private/end