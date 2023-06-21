execute as @e[type=item,tag=spellHit] run particle dust_color_transition 1 0 0 2 0 0 0 ~ ~ ~ 0 0 0 0 10
execute as @e[type=item,tag=spellHit] run data merge entity @s {Item:{tag:{Flagrante:1b}}}
execute if entity @s[type=area_effect_cloud] run function hp:spells/_base/private/end