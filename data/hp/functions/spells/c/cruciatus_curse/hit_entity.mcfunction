execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add crucio
execute as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run scoreboard players set @s cruciatusCurse 5
execute if entity @s[type=area_effect_cloud] run function hp:spells/c/cruciatus_curse/private/end