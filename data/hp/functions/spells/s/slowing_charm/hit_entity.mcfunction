execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run effect give @s minecraft:levitation 1 254 true
execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run effect give @s minecraft:slow_falling 3 255 true
execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run effect give @s minecraft:jump_boost 4 255 true
execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 at @s run tp @s ~ ~ ~
execute as @e[dx=0,tag=!this,nbt={OnGround:0b}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add slowedFall
execute if entity @s[type=area_effect_cloud] run function hp:spells/s/slowing_charm/private/end