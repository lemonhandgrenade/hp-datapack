particle minecraft:explosion ~ ~ ~ .5 .5 .5 0.35 10
particle minecraft:poof ~ ~ ~ .5 .5 .5 0.2 100

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 1 1

tag @e[distance=..3.5] add hurt

execute as @e[distance=..3.5] run effect give @s minecraft:resistance 1 2 true
execute as @e[type=!#hp:undead,distance=..3.5] run effect give @s minecraft:instant_damage 1 2 true
execute as @e[type=#hp:undead,distance=..3.5] run effect give @s minecraft:instant_health 1 2 true

tag @e[distance=..3.5,tag=hurt] remove hurt
execute if entity @s[type=area_effect_cloud] run function hp:spells/b/bombarda_maxima/private/end