execute as @e[tag=!this,distance=..1.3] run tag @s add protegoD
execute at @s rotated as @s run function hp:spells/p/protego_duo/particle
execute as @e[type=area_effect_cloud,tag=!this,tag=level1,tag=protegoD] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level1,tag=protegoD] run scoreboard players operation @s sloDst = @s slowcast
execute as @e[type=area_effect_cloud,tag=!this,tag=level2,tag=protegoD] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level3,tag=protegoD] run tag @s add reflected
execute as @e[type=arrow,tag=!this,tag=protegoD] run kill @s

execute if entity @s[type=area_effect_cloud] run function hp:spells/p/protego_duo/private/end