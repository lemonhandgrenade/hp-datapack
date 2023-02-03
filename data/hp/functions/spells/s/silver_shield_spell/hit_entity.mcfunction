#execute as @e[tag=!this,distance=..1.3] run tag @s add finite
#
#execute as @e[type=area_effect_cloud,tag=!this,tag=level1,tag=finite] run kill @s
#execute as @e[type=area_effect_cloud,tag=!this,tag=level2,tag=finite] run kill @s
#
#execute as @e[type=arrow,tag=!this,tag=level1,tag=finite] run particle minecraft:smoke ~ ~ ~ 0.25 0.25 0.25 0 100
#execute as @e[type=arrow,tag=!this,tag=level2,tag=finite] run particle minecraft:smoke ~ ~ ~ 0.25 0.25 0.25 0 100
#execute as @e[type=arrow,tag=!this,tag=level1,tag=finite] run kill @s
#execute as @e[type=arrow,tag=!this,tag=level2,tag=finite] run kill @s
#
#execute as @e[type=snowball,tag=!this,tag=level1,tag=finite] run particle item snowball ~ ~ ~ 0.15 0.15 0.15 0 50
#execute as @e[type=snowball,tag=!this,tag=level2,tag=finite] run particle item snowball ~ ~ ~ 0.15 0.15 0.15 0 50
#execute as @e[type=snowball,tag=!this,tag=level1,tag=finite] run kill @s
#execute as @e[type=snowball,tag=!this,tag=level2,tag=finite] run kill @s
#
#execute as @e[type=item,tag=!this,nbt={Item:{tag:{Flagrante:1b}}},tag=finite] at @s run particle dust_color_transition 0 1 1 2 1 1 1 ~ ~ ~ 0 0 0 0 10
#execute as @e[type=item,tag=!this,nbt={Item:{tag:{Flagrante:1b}}},tag=finite] run data merge entity @s {Item:{tag:{Flagrante:0b}}}

execute as @e[tag=!this,distance=..1.3] run tag @s add silverShield
execute at @s rotated as @s run function hp:spells/s/silver_shield_spell/particle_hit
execute as @e[type=area_effect_cloud,tag=!this,tag=level1,tag=silverShield] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level2,tag=silverShield] run tag @s add reflected
execute as @e[type=area_effect_cloud,tag=!this,tag=level3,tag=silverShield] run tag @s add reflected
execute as @e[type=arrow,tag=!this,tag=silverShield] run kill @s

playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.1
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 1.5
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 0.5

execute if entity @s[type=area_effect_cloud] run function hp:spells/s/silver_shield_spell/private/end