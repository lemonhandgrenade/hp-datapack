execute as @e[type=area_effect_cloud,tag=mendingCharm,tag=!this,distance=..0.8,sort=nearest,limit=1] run function hp:spells/m/mending_charm/repair_entity
tag @s add done
execute if entity @s[type=area_effect_cloud] run function hp:spells/m/mending_charm/private/end