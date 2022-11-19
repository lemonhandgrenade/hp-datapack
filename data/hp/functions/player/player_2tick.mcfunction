execute if entity @s[tag=lumosMaxima] at @s run function hp:spells/l/lumos_maxima/particle
execute if entity @s[tag=wandLightingCharm] at @s run function hp:spells/w/wand-lighting_charm/particle

execute if entity @s[tag=flyingBroom] at @s run function hp:broom/player_rotation

execute if score @s spell matches 2 if score @s sneakTest matches 1 if predicate hp:wand/wand_mainhand run function hp:spells/a/age_line/select_age

execute if score @s spell matches 21 if predicate hp:wand/wand_mainhand anchored eyes positioned ~ ~1.45 ~ run function hp:spells/a/apparition/location_trace
execute if score @s spell matches 21 if predicate hp:wand/wand_mainhand run scoreboard players reset @s slowcast

execute if score @s spell matches 103 if score @s sneakTest matches 1 if predicate hp:wand/wand_mainhand run function hp:spells/c/colour_changing_charm/select_colour