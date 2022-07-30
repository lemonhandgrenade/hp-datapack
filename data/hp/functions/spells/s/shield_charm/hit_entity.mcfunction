execute as @e[tag=!this,distance=..1.3] run tag @s add protego
execute at @s rotated as @s run function hp:spells/s/shield_charm/particle
execute as @e[type=area_effect_cloud,tag=!this,tag=level1,tag=protego] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level2,tag=protego] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level3,tag=protego] run kill @s


execute if entity @s[type=area_effect_cloud] run function hp:spells/s/shield_charm/private/end