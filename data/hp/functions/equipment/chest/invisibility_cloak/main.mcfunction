effect give @s invisibility 2 1 true
effect give @s slowness 2 0 true

title @s times 0 25 20
title @s[tag=!invisibilityCloakA] times 20 25 20
title @s title {"text":"\uE005","color":"#AA66FF"}
tag @s add invisibilityCloakA
execute if entity @s[tag=!invisibilityCloakA] run tag @s add invisibilityCloakA
execute if entity @s[scores={sneakTest=1..},x_rotation=-90] run function hp:equipment/chest/invisibility_cloak/take_off