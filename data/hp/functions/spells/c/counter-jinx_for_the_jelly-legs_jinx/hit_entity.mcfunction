execute as @e[dx=0,tag=!this,tag=jellyLegs] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove jellyLegs
execute if entity @s[type=area_effect_cloud] run function hp:spells/c/counter-jinx_for_the_jelly-legs_jinx/private/end