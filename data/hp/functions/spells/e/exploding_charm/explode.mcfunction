particle minecraft:explosion ~ ~ ~ .5 .5 .5 0.35 10
particle minecraft:poof ~ ~ ~ .5 .5 .5 0.2 100

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.6 1 1


execute as @e[distance=..3.5] run effect give @s minecraft:resistance 1 2 true
execute as @e[type=!#hp:undead,distance=..3.5] run effect give @s minecraft:instant_damage 1 1 true
execute as @e[type=#hp:undead,distance=..3.5] run effect give @s minecraft:instant_health 1 1 true

execute if entity @s[type=area_effect_cloud] run function hp:spells/e/exploding_charm/private/end