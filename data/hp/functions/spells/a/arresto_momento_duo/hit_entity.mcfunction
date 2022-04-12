execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:levitation 1 255 true
execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:slow_falling 5 255 true
execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s minecraft:jump_boost 5 255 true
execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s add slowedFall
execute if entity @s[type=area_effect_cloud] run function hp:spells/a/arresto_momento_duo/private/end