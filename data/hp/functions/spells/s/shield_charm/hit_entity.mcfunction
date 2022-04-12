execute as @e[tag=!this,distance=..1.3] run tag @s add finite
execute at @s rotated as @s run function hp:spells/s/shield_charm/particle
execute as @e[type=area_effect_cloud,tag=!this,tag=level1,tag=finite] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level2,tag=finite] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level3,tag=finite] run kill @s


execute if entity @s[type=area_effect_cloud] run function hp:spells/s/shield_charm/private/end