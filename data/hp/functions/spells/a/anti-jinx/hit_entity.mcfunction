execute as @e[type=!#hp:alive,tag=spellHit] run particle dust_color_transition 1 0 0 2 0 0 1 ~ ~ ~ 0 0 0 0 10
execute as @e[type=!#hp:alive,tag=spellHit] run tag @s add unjinxable
execute as @e[type=item,tag=spellHit] run data modify entity @s Item.tag.Unjinxable set value 1
execute if entity @s[type=area_effect_cloud] run function hp:spells/_base/private/end