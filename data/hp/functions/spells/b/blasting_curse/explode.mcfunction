particle minecraft:lava ~ ~ ~ 0.05 0.05 0.05 0.05 10
particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.05 20
particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.05 50

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 1 1


execute as @e[distance=..3.5] run effect give @s minecraft:resistance 1 2 true
execute as @e[type=!#hp:undead,distance=..3.5] run effect give @s minecraft:instant_damage 1 2 true
execute as @e[type=#hp:undead,distance=..3.5] run effect give @s minecraft:instant_health 1 2 true

execute if entity @s[type=area_effect_cloud] run function hp:spells/b/blasting_curse/private/end