schedule function hp:5tick 5t

execute as @e[type=marker,tag=lightBlock] at @s run function hp:spells/_blocks/delete_light
execute as @e[type=area_effect_cloud,tag=slowcast,tag=patronusCharm] at @s if block ~ ~ ~ air run function hp:spells/p/patronus_charm/light
execute as @a[tag=lumosMaxima] at @s run function hp:spells/l/lumos_maxima/light
execute as @a[tag=wandLightingCharm] at @s run function hp:spells/w/wand-lighting_charm/light

execute as @a[tag=flyingBroom] at @s run function hp:broom/player_rotation