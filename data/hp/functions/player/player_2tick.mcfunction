execute as @s[tag=lumosMaxima] at @s run function hp:spells/l/lumos_maxima/particle
execute as @s[tag=wandLightingCharm] at @s run function hp:spells/w/wand-lighting_charm/particle

execute as @s[tag=flyingBroom] at @s run function hp:broom/player_rotation

execute if score @s spell matches 21 if predicate hp:wand/wand_mainhand anchored eyes positioned ~ ~1.45 ~ run function hp:spells/a/apparition/location_trace
execute if score @s spell matches 21 if predicate hp:wand/wand_mainhand run scoreboard players reset @s slowcast