effect give @s invisibility 2 1 true
effect give @s slowness 2 0 true

title @s times 0 25 20
title @s[tag=!cloakOfInvisibilityA] times 20 25 20
title @s title {"text":"\uE005","color":"#FF6666"}
tag @s add cloakOfInvisibilityA
execute if entity @s[scores={sneakTest=1..},x_rotation=-90] run function hp:items/clothes/chest/cloak_of_invisibility
execute if entity @s[scores={sneakTest=1..},x_rotation=-90] run tag @s remove cloakOfInvisibility
execute if entity @s[scores={sneakTest=1..},x_rotation=-90] run tag @s remove cloakOfInvisibilityA