execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:resistance 1 2 true
execute as @e[type=!#hp:undead,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:instant_damage 1 1 true
execute as @e[type=#hp:undead,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:instant_health 1 1 true

execute if entity @s[type=area_effect_cloud] run function hp:spells/b/blue_fire_spell/private/end