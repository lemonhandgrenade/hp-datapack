execute if entity @s[tag=voiceLines] run function hp:player/voice_lines/select

execute if entity @s[tag=lumosMaxima] at @s run function hp:spells/l/lumos_maxima/light
execute if entity @s[tag=wandLightingCharm] at @s run function hp:spells/w/wand-lighting_charm/light

tag @s[tag=!flyingBroom,predicate=!hp:no_broom] add flyingBroom
tag @s[tag=flyingBroom,predicate=hp:no_broom] remove flyingBroom

execute if entity @s[tag=sortingHat] run function hp:sorting_hat/main