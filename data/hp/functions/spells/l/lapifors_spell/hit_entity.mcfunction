execute as @a[tag=spellHit,tag=!morphed,tag=!transfigured] at @s run function hp:spells/l/lapifors_spell/transfigure
execute if entity @s[type=area_effect_cloud] run function hp:spells/_base/private/end