particle dust_color_transition 1 .7 0 1 0.8 0.6 0 ~ ~ ~ 0.2 0.2 0.2 0 10
damage @e[tag=!flameFrozen,tag=spellHit,limit=1] 5 in_fire by @p[tag=spellCaster]
execute if entity @s[type=area_effect_cloud] run function hp:spells/_base/private/end