particle minecraft:smoke ~ ~ ~ .1 .1 .1 0.05 100

tag @e[distance=..1] add hurt

execute as @e[distance=..3.5] run effect give @s minecraft:resistance 1 2 true
execute as @e[type=!#hp:undead,distance=..3.5] run effect give @s minecraft:instant_damage 1 1 true
execute as @e[type=#hp:undead,distance=..3.5] run effect give @s minecraft:instant_health 1 1 true

tag @e[distance=..1,tag=hurt] remove hurt
execute if entity @s[type=area_effect_cloud] run function hp:spells/s/shooting_spell/private/end