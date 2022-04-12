execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:slowness 10 0 true
execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:nausea 12 1 true
execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 anchored eyes run particle sneeze ^ ^ ^.3 0 0 0 0 2
execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run say Achoo
execute if entity @s[type=area_effect_cloud] run function hp:spells/s/sternius/private/end