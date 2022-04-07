execute as @e[distance=..1.5,tag=!this,tag=slowcast,tag=level1] run kill @s
execute as @e[distance=..1.5,tag=!this,tag=slowcast,tag=level1] run kill @s
execute if entity @s[type=area_effect_cloud] run function hp:spells/d/defensive_charm/private/end