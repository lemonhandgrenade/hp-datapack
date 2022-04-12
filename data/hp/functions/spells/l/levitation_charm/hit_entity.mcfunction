execute as @e[type=#hp:levitation,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/l/levitation_charm/toggle
scoreboard players operation @e[type=#hp:levitation,tag=wingardium,tag=specialEntity,limit=1,sort=nearest] UID = @s UID
execute if entity @s[type=area_effect_cloud] run function hp:spells/l/levitation_charm/private/end
tag @s add done