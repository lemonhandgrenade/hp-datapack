execute as @e[type=item,dx=0,tag=!this,tag=!unjinxable,nbt=!{Item:{tag:{Duro:1}}},nbt=!{Item:{tag:{Unjinxable:1}}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/h/hardening_charm/convert
execute if entity @s[type=area_effect_cloud] run function hp:spells/h/hardening_charm/private/end