data modify entity @s Item set from entity @s Item.tag.PastPotionItem
tag @s add refilled
execute if entity @s[type=area_effect_cloud] run function hp:spells/r/refilling_charm/private/end