execute as @e[dx=0,tag=!this,tag=cut] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run particle minecraft:heart ~ ~.3 ~ 0 0 0 0 1
execute as @e[dx=0,tag=!this,tag=cut] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run effect give @s minecraft:regeneration 1 2 true
execute as @e[dx=0,tag=!this,tag=cut] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove cut
execute if entity @s[type=area_effect_cloud] run function hp:spells/e/episkey/private/end