execute as @e[type=item,dx=0,tag=!this,nbt=!{Item:{tag:{Geminio:1b}}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/f/flintifors/transfigure

execute if entity @s[type=area_effect_cloud] run function hp:spells/f/flintifors/private/end