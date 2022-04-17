
execute as @e[type=item,dx=0,tag=!set,tag=!this,tag=!unjinxable,nbt=!{Item:{tag:{Scribblifors:1}}},nbt=!{Item:{tag:{Unjinxable:1}}}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/s/scribblifors/convert
execute if entity @s[type=area_effect_cloud] run function hp:spells/s/scribblifors/private/end