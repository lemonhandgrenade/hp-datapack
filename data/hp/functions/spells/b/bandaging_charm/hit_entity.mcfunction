execute as @a[dx=0,tag=!this,tag=brokenLeg] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run particle minecraft:happy_villager ~ ~0.3 ~ 0.2 0.125 0.2 0 10
execute as @a[dx=0,tag=!this,tag=brokenLeg] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run particle minecraft:heart ~ ~0.3 ~ 0.2 0.125 0.2 0 10
execute as @a[dx=0,tag=!this,tag=brokenLeg] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove injured
execute as @a[dx=0,tag=!this,tag=brokenLeg] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove brokenLeg
execute if entity @s[type=area_effect_cloud] run function hp:spells/a/alarte_ascendare/private/end