execute as @e[type=item,dx=0,tag=!this,nbt=!{Item:{tag:{Flintifors:1b}}},tag=!set] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 at @s run function hp:spells/f/flintifors/transfigure
particle dust 0.5 0 0 2 ~ ~ ~ 0 0 0 0 10
execute if entity @s[type=area_effect_cloud] run function hp:spells/f/flintifors/private/end