particle dust_color_transition 1 1 1 2 0.87 0 .5 ~ ~.3 ~ 0.1 0.1 0.1 0 20
data modify entity @s Item set from entity @s Item.tag.PastPotionItem
tag @s add refilled
execute if entity @s[type=area_effect_cloud] run function hp:spells/r/refilling_charm/private/end