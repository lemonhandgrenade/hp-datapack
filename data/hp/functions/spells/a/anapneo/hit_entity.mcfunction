execute as @e[tag=spellHit] at @s anchored eyes positioned ^ ^-0.1 ^0.3 run particle minecraft:dust_color_transition 0 0 0.5 1 0.5 0 0.5 ~ ~ ~ 0 0 0 0 10
tag @e[tag=spellHit,tag=choking] remove choking
execute if entity @s[type=area_effect_cloud] run function hp:spells/_base/private/end