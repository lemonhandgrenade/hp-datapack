effect give @s invisibility 2 1 true
effect give @s slowness 2 0 true

title @s times 0 25 20
title @s[tag=!cloakOfInvisibilityA] times 20 25 20
title @s title {"text":"\uE005","color":"#FF6666"}
execute if entity @s[tag=!cloakOfInvisibilityA] run tag @s add cloakOfInvisibilityA
execute if entity @s[scores={sneakTest=1..},x_rotation=-90] run function hp:equipment/chest/cloak_of_invisibility/take_off